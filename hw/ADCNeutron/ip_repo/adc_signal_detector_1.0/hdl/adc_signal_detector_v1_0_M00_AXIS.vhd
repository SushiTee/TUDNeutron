library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adc_signal_detector_v1_0_M00_AXIS is
  generic (
    -- Users to add parameters here

    -- User parameters ends
    -- Do not modify the parameters beyond this line

    -- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
    C_M_AXIS_TDATA_WIDTH : integer := 32;
    -- Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
    C_M_START_COUNT : integer := 32
  );
  port (
    -- Users to add ports here
    enabled      : in  std_logic; -- enable this ip core
    signal_input_a : in  std_logic; -- signal input
    signal_input_b : in  std_logic; -- signal input
    signal_state : out std_logic; -- shows the state (if enabled AND signal detected -> LOW; if enabled AND no signal detected -> HIGH; otherwise LOW )
    fifo_reset   : out std_logic; -- resets an connected fifo after being enabled
    number_words : in std_logic_vector(15 downto 0); -- number of words to be send as package
    trigger_input: in std_logic;
    data_clock   : in std_logic;
    frame_clock  : in std_logic;
    test_output  : out std_logic_vector(7 downto 0);
    -- User ports ends
    -- Do not modify the ports beyond this line

    -- Global ports
    M_AXIS_ACLK : in std_logic;
    --
    M_AXIS_ARESETN : in std_logic;
    -- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted.
    M_AXIS_TVALID : out std_logic;
    -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
    M_AXIS_TDATA : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    -- TKEEP is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
    M_AXIS_TKEEP : out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
    -- TLAST indicates the boundary of a packet.
    M_AXIS_TLAST : out std_logic;
    -- TREADY indicates that the slave can accept a transfer in the current cycle.
    M_AXIS_TREADY : in std_logic
  );
end adc_signal_detector_v1_0_M00_AXIS;

architecture implementation of adc_signal_detector_v1_0_M00_AXIS is

  -- function called clogb2 that returns an integer which has the
  -- value of the ceiling of the log base 2.
  function clogb2 (bit_depth : integer) return integer is
    variable depth : integer := bit_depth;
    variable count : integer := 1;
  begin
    for clogb2 in 1 to bit_depth loop -- Works for up to 32 bit integers
      if (bit_depth <= 2) then
        count := 1;
      else
        if(depth <= 1) then
          count := count;
        else
          depth := depth / 2;
          count := count + 1;
        end if;
      end if;
    end loop;
    return(count);
  end;

  -- Define the states of state machine
  type state is (STATE_IDLE, -- This is the initial/idle state
      STATE_INIT_COUNTER,    -- This state initializes the counter, once
                             -- the counter reaches C_M_START_COUNT count,
                             -- the state machine changes state to SEND_STREAM
      STATE_SEND_STREAM,     -- In this state the
      STATE_WAIT_FIFO);      -- FIFO needs a while before it's ready to receive data
                             -- stream data is output through M_AXIS_TDATA

  -- WAIT_COUNT_BITS is the width of the wait counter.
  constant WAIT_COUNT_BITS : integer := clogb2(C_M_START_COUNT-1);

  -- signals for state machine
  -- State variable
  signal mst_exec_state : state;
  -- init counter
  signal init_counter                    : std_logic_vector(WAIT_COUNT_BITS-1 downto 0)      := (others => '0');
  -- fifo reset
  signal fifo_reset_internal             : std_logic                                         := '0';

  -- signals for driving AXI
  signal axis_tvalid                     : std_logic                                         := '0';
  signal axis_tlast                      : std_logic                                         := '0';
  signal stream_data_out                 : std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
  signal stream_data_out_parts           : std_logic_vector(C_M_AXIS_TDATA_WIDTH-3 downto 0) := (others => '0');
  signal word_counter                    : unsigned(15 downto 0)                             := (others => '0');

  signal last_data_clock                 : std_logic                                         := '0';
  signal last_frame_clock                : std_logic                                         := '0';

  signal signal_input_a_copy             : std_logic                                         := '0';
  signal signal_input_b_copy             : std_logic                                         := '0';
  signal data_clock_copy                 : std_logic                                         := '0';
  signal frame_clock_copy                : std_logic                                         := '0';

  signal signal_counter                  : unsigned(31 downto 0)                             := (others => '0');
  signal signal_counter_2                : unsigned(31 downto 0)                             := (others => '0');
  signal signal_counter_3                : unsigned(31 downto 0)                             := (others => '0');
  signal just_a_signal                   : std_logic                                         := '0';
  signal just_a_signal_2                 : std_logic                                         := '0';
  signal data_test                       : std_logic_vector(13 downto 0)                     := (others => '0');

  signal data_clock_counter              : unsigned(2 downto 0)                              := (others => '0');

begin
  -- copy all input signal
  process(M_AXIS_ACLK)
  begin
    if rising_edge(M_AXIS_ACLK) then
      data_clock_copy <= data_clock;
      frame_clock_copy <= frame_clock;
      signal_input_a_copy <= signal_input_a;
      signal_input_b_copy <= signal_input_b;
    end if;
  end process;

  -- I/O Connections assignments
  M_AXIS_TKEEP  <= (others => '1'); -- this is always 1 for reasons!

  -- Control state machine implementation
  process(M_AXIS_ACLK)
  begin
    if (rising_edge (M_AXIS_ACLK)) then
      if(M_AXIS_ARESETN = '0' or enabled = '0') then
        -- Synchronous reset (active low)
        mst_exec_state <= STATE_IDLE;
        init_counter   <= (others => '0');
        fifo_reset_internal <= '0';
      else
        case (mst_exec_state) is
          when STATE_IDLE =>
            mst_exec_state <= STATE_INIT_COUNTER;
            fifo_reset_internal <= '0';
          when STATE_INIT_COUNTER =>
            -- This state is responsible to wait for user defined C_M_START_COUNT
            -- number of clock cycles.
            if (init_counter = std_logic_vector(to_unsigned((C_M_START_COUNT - 1), WAIT_COUNT_BITS))) then
              mst_exec_state   <= STATE_WAIT_FIFO;
            else
              init_counter   <= std_logic_vector(unsigned(init_counter) + 1);
              mst_exec_state <= STATE_INIT_COUNTER;
            end if;
            fifo_reset_internal <= '0';
          when STATE_WAIT_FIFO =>
            if (M_AXIS_TREADY = '1') then
              if (init_counter = std_logic_vector(to_unsigned((C_M_START_COUNT - 1), WAIT_COUNT_BITS))) then
                init_counter <= (others => '0');
                mst_exec_state   <= STATE_SEND_STREAM;
              else
                init_counter   <= std_logic_vector(unsigned(init_counter) + 1);
                mst_exec_state <= STATE_WAIT_FIFO;
              end if;
            else
              mst_exec_state <= STATE_WAIT_FIFO;
            end if;
            fifo_reset_internal <= '1';
          when STATE_SEND_STREAM =>
            mst_exec_state <= STATE_SEND_STREAM;
            fifo_reset_internal <= '1';
          when others =>
            mst_exec_state <= STATE_IDLE;
            fifo_reset_internal <= '1';
        end case;
      end if;
    end if;
  end process;

  fifo_reset    <= fifo_reset_internal;

  -- M_AXIS_TLAST M_AXIS_TVALIS M_AXIS_TDATA
  process(M_AXIS_ACLK)
    variable wait_frames : unsigned(1 downto 0) := (others => '0');
  begin
    if rising_edge(M_AXIS_ACLK) then
      if (mst_exec_state = STATE_SEND_STREAM and trigger_input = '1') then
        axis_tvalid <= '0';
        last_data_clock <= data_clock_copy;
        last_frame_clock <= frame_clock_copy;
        if (frame_clock_copy = '1' and last_frame_clock = '0') then
          data_clock_counter <= (others => '1');
          if (wait_frames < 2) then
            wait_frames := wait_frames + 1;
          end if;
        end if;
        if ((last_data_clock = '1' and data_clock_copy = '0') or (last_data_clock = '0' and data_clock_copy = '1')) then
          case data_clock_counter is
            when "111" =>
              stream_data_out_parts(11) <= signal_input_a_copy;
              stream_data_out_parts(10) <= signal_input_b_copy;
            when "110" =>
              stream_data_out_parts(9) <= signal_input_a_copy;
              stream_data_out_parts(8) <= signal_input_b_copy;
            when "101" =>
              stream_data_out_parts(7) <= signal_input_a_copy;
              stream_data_out_parts(6) <= signal_input_b_copy;
            when "100" =>
              stream_data_out_parts(5) <= signal_input_a_copy;
              stream_data_out_parts(4) <= signal_input_b_copy;
            when "011" =>
              stream_data_out_parts(3) <= signal_input_a_copy;
              stream_data_out_parts(2) <= signal_input_b_copy;
            when "010" =>
              stream_data_out_parts(1) <= signal_input_a_copy;
              stream_data_out_parts(0) <= signal_input_b_copy;
            when "001" =>
              if (wait_frames > 1) then
                stream_data_out <= stream_data_out_parts & signal_input_a_copy & signal_input_b_copy;
                axis_tvalid <= '1';
                if (signal_counter_3 > 5000000) then
                  signal_counter_3 <= signal_counter_3 - 1;
                elsif (signal_counter_3 > 1) then
                  signal_counter_3 <= signal_counter_3 - 1;
                  test_output <= "1" & data_test(6 downto 0);
                else
                  data_test <= stream_data_out_parts(11 downto 0) & signal_input_a_copy & signal_input_b_copy;
                  test_output <= "0" & stream_data_out_parts(11 downto 5);
                  signal_counter_3 <= to_unsigned(10000000, 32);
                end if;
                if (word_counter > 1) then
                  axis_tlast <= '0';
                  word_counter <= word_counter - 1;
                else
                  axis_tlast <= '1';
                  word_counter <= unsigned(number_words);
                end if;
              end if;
            when others =>
              axis_tlast <= '0';
          end case;
          if (data_clock_counter > 0) then
            data_clock_counter <= data_clock_counter - 1;
          end if;
        end if;
      else
        wait_frames := (others => '0');
        axis_tlast <= '0';
        axis_tvalid <= '0';
        word_counter <= unsigned(number_words);
        stream_data_out <= (others => '0');
        stream_data_out_parts <= (others => '0');
        last_data_clock <= '0';
        last_frame_clock <= '0';
      end if;
    end if;
  end process;

  M_AXIS_TLAST  <= axis_tlast;
  M_AXIS_TVALID <= axis_tvalid;
  M_AXIS_TDATA  <= stream_data_out;

  process(M_AXIS_ACLK)
  begin
    if rising_edge(M_AXIS_ACLK) then
      if (mst_exec_state = STATE_SEND_STREAM and trigger_input = '1') then
        if ((last_data_clock = '1' and data_clock_copy = '0') or (last_data_clock = '0' and data_clock_copy = '1')) then
          if (signal_counter > 1) then
            signal_counter <= signal_counter - 1;
          else
            if (just_a_signal = '1') then
              just_a_signal <= '0';
            else
              just_a_signal <= '1';
            end if;
            signal_counter <= to_unsigned(80000000, 32);
          end if;
        end if;
      end if;
    end if;
  end process;

  process(M_AXIS_ACLK)
  begin
    if rising_edge(M_AXIS_ACLK) then
      if (mst_exec_state = STATE_SEND_STREAM and trigger_input = '1') then
        if (frame_clock_copy = '1' and last_frame_clock = '0') then
          if (signal_counter_2 > 1) then
            signal_counter_2 <= signal_counter_2 - 1;
          else
            if (just_a_signal_2 = '1') then
              just_a_signal_2 <= '0';
            else
              just_a_signal_2 <= '1';
            end if;
            signal_counter_2 <= to_unsigned(10000000, 32);
          end if;
        end if;
      end if;
    end if;
  end process;

  -- signal state
  signal_state  <= '1' when (mst_exec_state = STATE_SEND_STREAM and trigger_input = '1') else '0';

end implementation;
