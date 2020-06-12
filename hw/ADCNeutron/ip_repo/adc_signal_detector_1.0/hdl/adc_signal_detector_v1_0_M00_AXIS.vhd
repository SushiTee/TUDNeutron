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
    enabled      : in  std_logic_vector(7 downto 0); -- enable this ip core
    signal_input_a : in  std_logic_vector(7 downto 0); -- signal input
    signal_input_b : in  std_logic_vector(7 downto 0); -- signal input
    signal_state : out std_logic_vector(7 downto 0); -- shows the state (if enabled AND signal detected -> LOW; if enabled AND no signal detected -> HIGH; otherwise LOW )
    fifo_reset   : out std_logic; -- resets an connected fifo after being enabled
    number_words : in std_logic_vector(15 downto 0); -- number of words to be send as package
    trigger_input: in std_logic;
    trigger_output : out std_logic;
    data_clock   : in std_logic_vector(1 downto 0);
    frame_clock  : in std_logic_vector(1 downto 0);
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
  signal stream_data_out_parts_0         : std_logic_vector(25 downto 0)                     := (others => '0');
  signal stream_data_out_parts_1         : std_logic_vector(25 downto 0)                     := (others => '0');
  signal stream_data_out_parts_2         : std_logic_vector(25 downto 0)                     := (others => '0');
  signal stream_data_out_parts_3         : std_logic_vector(25 downto 0)                     := (others => '0');
  signal stream_data_out_parts_4         : std_logic_vector(25 downto 0)                     := (others => '0');
  signal stream_data_out_parts_5         : std_logic_vector(25 downto 0)                     := (others => '0');
  signal stream_data_out_parts_6         : std_logic_vector(25 downto 0)                     := (others => '0');
  signal stream_data_out_parts_7         : std_logic_vector(25 downto 0)                     := (others => '0');
  signal stream_data_out_complete_0      : std_logic_vector(27 downto 0)                     := (others => '0');
  signal stream_data_out_complete_1      : std_logic_vector(27 downto 0)                     := (others => '0');
  signal stream_data_out_complete_2      : std_logic_vector(27 downto 0)                     := (others => '0');
  signal stream_data_out_complete_3      : std_logic_vector(27 downto 0)                     := (others => '0');
  signal stream_data_out_complete_4      : std_logic_vector(27 downto 0)                     := (others => '0');
  signal stream_data_out_complete_5      : std_logic_vector(27 downto 0)                     := (others => '0');
  signal stream_data_out_complete_6      : std_logic_vector(27 downto 0)                     := (others => '0');
  signal stream_data_out_complete_7      : std_logic_vector(27 downto 0)                     := (others => '0');
  signal word_counter                    : unsigned(15 downto 0)                             := (others => '0');

  signal last_data_clock                 : std_logic_vector(1 downto 0)                      := (others => '0');
  signal last_frame_clock                : std_logic_vector(1 downto 0)                      := (others => '0');

  signal signal_input_a_copy             : std_logic_vector(7 downto 0)                      := (others => '0');
  signal signal_input_b_copy             : std_logic_vector(7 downto 0)                      := (others => '0');
  signal data_clock_copy                 : std_logic_vector(1 downto 0)                      := (others => '0');
  signal frame_clock_copy                : std_logic_vector(1 downto 0)                      := (others => '0');

  signal data_clock_counter_0            : unsigned(3 downto 0)                              := (others => '0');
  signal data_clock_counter_1            : unsigned(3 downto 0)                              := (others => '0');
  
  signal value_read_done                 : std_logic_vector(1 downto 0)                      := (others => '0');
  signal value_write_counter             : std_logic_vector(1 downto 0)                      := (others => '0');
  signal value_write_selector            : std_logic                                         := '0';

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
      if(M_AXIS_ARESETN = '0' or unsigned(enabled) = 0) then
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
    variable wait_frames_0 : unsigned(1 downto 0) := (others => '0');
    variable wait_frames_1 : unsigned(1 downto 0) := (others => '0');
  begin
    if rising_edge(M_AXIS_ACLK) then
      if (mst_exec_state = STATE_SEND_STREAM and trigger_input = '1') then
        axis_tvalid <= '0';
        last_data_clock <= data_clock_copy;
        last_frame_clock <= frame_clock_copy;
        if (frame_clock_copy(0) = '1' and last_frame_clock(0) = '0') then
          if (data_clock_counter_0 < 7) then -- use data clock counter for 2 frames
            data_clock_counter_0 <= (others => '1');
          end if;
          if (wait_frames_0 < 2) then
            wait_frames_0 := wait_frames_0 + 1;
          end if;
        end if;
        if (frame_clock_copy(1) = '1' and last_frame_clock(1) = '0') then
          if (data_clock_counter_1 < 7) then -- use data clock counter for 2 frames
            data_clock_counter_1 <= (others => '1');
          end if;
          if (wait_frames_1 < 2) then
            wait_frames_1 := wait_frames_1 + 1;
          end if;
        end if;
        if ((last_data_clock(0) = '1' and data_clock_copy(0) = '0') or (last_data_clock(0) = '0' and data_clock_copy(0) = '1')) then
          case data_clock_counter_0 is
            when "1111" =>
              stream_data_out_parts_0(25) <= signal_input_a_copy(0);
              stream_data_out_parts_0(24) <= signal_input_b_copy(0);
              stream_data_out_parts_3(25) <= signal_input_a_copy(3);
              stream_data_out_parts_3(24) <= signal_input_b_copy(3);
              stream_data_out_parts_4(25) <= signal_input_a_copy(4);
              stream_data_out_parts_4(24) <= signal_input_b_copy(4);
              stream_data_out_parts_7(25) <= signal_input_a_copy(7);
              stream_data_out_parts_7(24) <= signal_input_b_copy(7);
            when "1110" =>
              stream_data_out_parts_0(23) <= signal_input_a_copy(0);
              stream_data_out_parts_0(22) <= signal_input_b_copy(0);
              stream_data_out_parts_3(23) <= signal_input_a_copy(3);
              stream_data_out_parts_3(22) <= signal_input_b_copy(3);
              stream_data_out_parts_4(23) <= signal_input_a_copy(4);
              stream_data_out_parts_4(22) <= signal_input_b_copy(4);
              stream_data_out_parts_7(23) <= signal_input_a_copy(7);
              stream_data_out_parts_7(22) <= signal_input_b_copy(7);
            when "1101" =>
              stream_data_out_parts_0(21) <= signal_input_a_copy(0);
              stream_data_out_parts_0(20) <= signal_input_b_copy(0);
              stream_data_out_parts_3(21) <= signal_input_a_copy(3);
              stream_data_out_parts_3(20) <= signal_input_b_copy(3);
              stream_data_out_parts_4(21) <= signal_input_a_copy(4);
              stream_data_out_parts_4(20) <= signal_input_b_copy(4);
              stream_data_out_parts_7(21) <= signal_input_a_copy(7);
              stream_data_out_parts_7(20) <= signal_input_b_copy(7);
            when "1100" =>
              stream_data_out_parts_0(19) <= signal_input_a_copy(0);
              stream_data_out_parts_0(18) <= signal_input_b_copy(0);
              stream_data_out_parts_3(19) <= signal_input_a_copy(3);
              stream_data_out_parts_3(18) <= signal_input_b_copy(3);
              stream_data_out_parts_4(19) <= signal_input_a_copy(4);
              stream_data_out_parts_4(18) <= signal_input_b_copy(4);
              stream_data_out_parts_7(19) <= signal_input_a_copy(7);
              stream_data_out_parts_7(18) <= signal_input_b_copy(7);
            when "1011" =>
              stream_data_out_parts_0(17) <= signal_input_a_copy(0);
              stream_data_out_parts_0(16) <= signal_input_b_copy(0);
              stream_data_out_parts_3(17) <= signal_input_a_copy(3);
              stream_data_out_parts_3(16) <= signal_input_b_copy(3);
              stream_data_out_parts_4(17) <= signal_input_a_copy(4);
              stream_data_out_parts_4(16) <= signal_input_b_copy(4);
              stream_data_out_parts_7(17) <= signal_input_a_copy(7);
              stream_data_out_parts_7(16) <= signal_input_b_copy(7);
            when "1010" =>
              stream_data_out_parts_0(15) <= signal_input_a_copy(0);
              stream_data_out_parts_0(14) <= signal_input_b_copy(0);
              stream_data_out_parts_3(15) <= signal_input_a_copy(3);
              stream_data_out_parts_3(14) <= signal_input_b_copy(3);
              stream_data_out_parts_4(15) <= signal_input_a_copy(4);
              stream_data_out_parts_4(14) <= signal_input_b_copy(4);
              stream_data_out_parts_7(15) <= signal_input_a_copy(7);
              stream_data_out_parts_7(14) <= signal_input_b_copy(7);
            when "1001" =>
              stream_data_out_parts_0(13) <= signal_input_a_copy(0);
              stream_data_out_parts_0(12) <= signal_input_b_copy(0);
              stream_data_out_parts_3(13) <= signal_input_a_copy(3);
              stream_data_out_parts_3(12) <= signal_input_b_copy(3);
              stream_data_out_parts_4(13) <= signal_input_a_copy(4);
              stream_data_out_parts_4(12) <= signal_input_b_copy(4);
              stream_data_out_parts_7(13) <= signal_input_a_copy(7);
              stream_data_out_parts_7(12) <= signal_input_b_copy(7);
            when "0111" =>
              stream_data_out_parts_0(11) <= signal_input_a_copy(0);
              stream_data_out_parts_0(10) <= signal_input_b_copy(0);
              stream_data_out_parts_3(11) <= signal_input_a_copy(3);
              stream_data_out_parts_3(10) <= signal_input_b_copy(3);
              stream_data_out_parts_4(11) <= signal_input_a_copy(4);
              stream_data_out_parts_4(10) <= signal_input_b_copy(4);
              stream_data_out_parts_7(11) <= signal_input_a_copy(7);
              stream_data_out_parts_7(10) <= signal_input_b_copy(7);
            when "0110" =>
              stream_data_out_parts_0(9) <= signal_input_a_copy(0);
              stream_data_out_parts_0(8) <= signal_input_b_copy(0);
              stream_data_out_parts_3(9) <= signal_input_a_copy(3);
              stream_data_out_parts_3(8) <= signal_input_b_copy(3);
              stream_data_out_parts_4(9) <= signal_input_a_copy(4);
              stream_data_out_parts_4(8) <= signal_input_b_copy(4);
              stream_data_out_parts_7(9) <= signal_input_a_copy(7);
              stream_data_out_parts_7(8) <= signal_input_b_copy(7);
            when "0101" =>
              stream_data_out_parts_0(7) <= signal_input_a_copy(0);
              stream_data_out_parts_0(6) <= signal_input_b_copy(0);
              stream_data_out_parts_3(7) <= signal_input_a_copy(3);
              stream_data_out_parts_3(6) <= signal_input_b_copy(3);
              stream_data_out_parts_4(7) <= signal_input_a_copy(4);
              stream_data_out_parts_4(6) <= signal_input_b_copy(4);
              stream_data_out_parts_7(7) <= signal_input_a_copy(7);
              stream_data_out_parts_7(6) <= signal_input_b_copy(7);
            when "0100" =>
              stream_data_out_parts_0(5) <= signal_input_a_copy(0);
              stream_data_out_parts_0(4) <= signal_input_b_copy(0);
              stream_data_out_parts_3(5) <= signal_input_a_copy(3);
              stream_data_out_parts_3(4) <= signal_input_b_copy(3);
              stream_data_out_parts_4(5) <= signal_input_a_copy(4);
              stream_data_out_parts_4(4) <= signal_input_b_copy(4);
              stream_data_out_parts_7(5) <= signal_input_a_copy(7);
              stream_data_out_parts_7(4) <= signal_input_b_copy(7);
            when "0011" =>
              stream_data_out_parts_0(3) <= signal_input_a_copy(0);
              stream_data_out_parts_0(2) <= signal_input_b_copy(0);
              stream_data_out_parts_3(3) <= signal_input_a_copy(3);
              stream_data_out_parts_3(2) <= signal_input_b_copy(3);
              stream_data_out_parts_4(3) <= signal_input_a_copy(4);
              stream_data_out_parts_4(2) <= signal_input_b_copy(4);
              stream_data_out_parts_7(3) <= signal_input_a_copy(7);
              stream_data_out_parts_7(2) <= signal_input_b_copy(7);
            when "0010" =>
              stream_data_out_parts_0(1) <= signal_input_a_copy(0);
              stream_data_out_parts_0(0) <= signal_input_b_copy(0);
              stream_data_out_parts_3(1) <= signal_input_a_copy(3);
              stream_data_out_parts_3(0) <= signal_input_b_copy(3);
              stream_data_out_parts_4(1) <= signal_input_a_copy(4);
              stream_data_out_parts_4(0) <= signal_input_b_copy(4);
              stream_data_out_parts_7(1) <= signal_input_a_copy(7);
              stream_data_out_parts_7(0) <= signal_input_b_copy(7);
            when "0001" =>
              stream_data_out_complete_0 <= stream_data_out_parts_0 & signal_input_a_copy(0) & signal_input_b_copy(0);
              stream_data_out_complete_3 <= stream_data_out_parts_3 & signal_input_a_copy(3) & signal_input_b_copy(3);
              stream_data_out_complete_4 <= stream_data_out_parts_4 & signal_input_a_copy(4) & signal_input_b_copy(4);
              stream_data_out_complete_7 <= stream_data_out_parts_7 & signal_input_a_copy(7) & signal_input_b_copy(7);
              value_read_done(0) <= '1';
            when others =>
              value_read_done(0) <= value_read_done(0);
          end case;
          if (data_clock_counter_0 > 0) then
            data_clock_counter_0 <= data_clock_counter_0 - 1;
          end if;
        end if;
        if ((last_data_clock(1) = '1' and data_clock_copy(1) = '0') or (last_data_clock(1) = '0' and data_clock_copy(1) = '1')) then
          case data_clock_counter_1 is
            when "1111" =>
              stream_data_out_parts_1(25) <= signal_input_a_copy(1);
              stream_data_out_parts_1(24) <= signal_input_b_copy(1);
              stream_data_out_parts_2(25) <= signal_input_a_copy(2);
              stream_data_out_parts_2(24) <= signal_input_b_copy(2);
              stream_data_out_parts_5(25) <= signal_input_a_copy(5);
              stream_data_out_parts_5(24) <= signal_input_b_copy(5);
              stream_data_out_parts_6(25) <= signal_input_a_copy(6);
              stream_data_out_parts_6(24) <= signal_input_b_copy(6);
            when "1110" =>
              stream_data_out_parts_1(23) <= signal_input_a_copy(1);
              stream_data_out_parts_1(22) <= signal_input_b_copy(1);
              stream_data_out_parts_2(23) <= signal_input_a_copy(2);
              stream_data_out_parts_2(22) <= signal_input_b_copy(2);
              stream_data_out_parts_5(23) <= signal_input_a_copy(5);
              stream_data_out_parts_5(22) <= signal_input_b_copy(5);
              stream_data_out_parts_6(23) <= signal_input_a_copy(6);
              stream_data_out_parts_6(22) <= signal_input_b_copy(6);
            when "1101" =>
              stream_data_out_parts_1(21) <= signal_input_a_copy(1);
              stream_data_out_parts_1(20) <= signal_input_b_copy(1);
              stream_data_out_parts_2(21) <= signal_input_a_copy(2);
              stream_data_out_parts_2(20) <= signal_input_b_copy(2);
              stream_data_out_parts_5(21) <= signal_input_a_copy(5);
              stream_data_out_parts_5(20) <= signal_input_b_copy(5);
              stream_data_out_parts_6(21) <= signal_input_a_copy(6);
              stream_data_out_parts_6(20) <= signal_input_b_copy(6);
            when "1100" =>
              stream_data_out_parts_1(19) <= signal_input_a_copy(1);
              stream_data_out_parts_1(18) <= signal_input_b_copy(1);
              stream_data_out_parts_2(19) <= signal_input_a_copy(2);
              stream_data_out_parts_2(18) <= signal_input_b_copy(2);
              stream_data_out_parts_5(19) <= signal_input_a_copy(5);
              stream_data_out_parts_5(18) <= signal_input_b_copy(5);
              stream_data_out_parts_6(19) <= signal_input_a_copy(6);
              stream_data_out_parts_6(18) <= signal_input_b_copy(6);
            when "1011" =>
              stream_data_out_parts_1(17) <= signal_input_a_copy(1);
              stream_data_out_parts_1(16) <= signal_input_b_copy(1);
              stream_data_out_parts_2(17) <= signal_input_a_copy(2);
              stream_data_out_parts_2(16) <= signal_input_b_copy(2);
              stream_data_out_parts_5(17) <= signal_input_a_copy(5);
              stream_data_out_parts_5(16) <= signal_input_b_copy(5);
              stream_data_out_parts_6(17) <= signal_input_a_copy(6);
              stream_data_out_parts_6(16) <= signal_input_b_copy(6);
            when "1010" =>
              stream_data_out_parts_1(15) <= signal_input_a_copy(1);
              stream_data_out_parts_1(14) <= signal_input_b_copy(1);
              stream_data_out_parts_2(15) <= signal_input_a_copy(2);
              stream_data_out_parts_2(14) <= signal_input_b_copy(2);
              stream_data_out_parts_5(15) <= signal_input_a_copy(5);
              stream_data_out_parts_5(14) <= signal_input_b_copy(5);
              stream_data_out_parts_6(15) <= signal_input_a_copy(6);
              stream_data_out_parts_6(14) <= signal_input_b_copy(6);
            when "1001" =>
              stream_data_out_parts_1(13) <= signal_input_a_copy(1);
              stream_data_out_parts_1(12) <= signal_input_b_copy(1);
              stream_data_out_parts_2(13) <= signal_input_a_copy(2);
              stream_data_out_parts_2(12) <= signal_input_b_copy(2);
              stream_data_out_parts_5(13) <= signal_input_a_copy(5);
              stream_data_out_parts_5(12) <= signal_input_b_copy(5);
              stream_data_out_parts_6(13) <= signal_input_a_copy(6);
              stream_data_out_parts_6(12) <= signal_input_b_copy(6);
            when "0111" =>
              stream_data_out_parts_1(11) <= signal_input_a_copy(1);
              stream_data_out_parts_1(10) <= signal_input_b_copy(1);
              stream_data_out_parts_2(11) <= signal_input_a_copy(2);
              stream_data_out_parts_2(10) <= signal_input_b_copy(2);
              stream_data_out_parts_5(11) <= signal_input_a_copy(5);
              stream_data_out_parts_5(10) <= signal_input_b_copy(5);
              stream_data_out_parts_6(11) <= signal_input_a_copy(6);
              stream_data_out_parts_6(10) <= signal_input_b_copy(6);
            when "0110" =>
              stream_data_out_parts_1(9) <= signal_input_a_copy(1);
              stream_data_out_parts_1(8) <= signal_input_b_copy(1);
              stream_data_out_parts_2(9) <= signal_input_a_copy(2);
              stream_data_out_parts_2(8) <= signal_input_b_copy(2);
              stream_data_out_parts_5(9) <= signal_input_a_copy(5);
              stream_data_out_parts_5(8) <= signal_input_b_copy(5);
              stream_data_out_parts_6(9) <= signal_input_a_copy(6);
              stream_data_out_parts_6(8) <= signal_input_b_copy(6);
            when "0101" =>
              stream_data_out_parts_1(7) <= signal_input_a_copy(1);
              stream_data_out_parts_1(6) <= signal_input_b_copy(1);
              stream_data_out_parts_2(7) <= signal_input_a_copy(2);
              stream_data_out_parts_2(6) <= signal_input_b_copy(2);
              stream_data_out_parts_5(7) <= signal_input_a_copy(5);
              stream_data_out_parts_5(6) <= signal_input_b_copy(5);
              stream_data_out_parts_6(7) <= signal_input_a_copy(6);
              stream_data_out_parts_6(6) <= signal_input_b_copy(6);
            when "0100" =>
              stream_data_out_parts_1(5) <= signal_input_a_copy(1);
              stream_data_out_parts_1(4) <= signal_input_b_copy(1);
              stream_data_out_parts_2(5) <= signal_input_a_copy(2);
              stream_data_out_parts_2(4) <= signal_input_b_copy(2);
              stream_data_out_parts_5(5) <= signal_input_a_copy(5);
              stream_data_out_parts_5(4) <= signal_input_b_copy(5);
              stream_data_out_parts_6(5) <= signal_input_a_copy(6);
              stream_data_out_parts_6(4) <= signal_input_b_copy(6);
            when "0011" =>
              stream_data_out_parts_1(3) <= signal_input_a_copy(1);
              stream_data_out_parts_1(2) <= signal_input_b_copy(1);
              stream_data_out_parts_2(3) <= signal_input_a_copy(2);
              stream_data_out_parts_2(2) <= signal_input_b_copy(2);
              stream_data_out_parts_5(3) <= signal_input_a_copy(5);
              stream_data_out_parts_5(2) <= signal_input_b_copy(5);
              stream_data_out_parts_6(3) <= signal_input_a_copy(6);
              stream_data_out_parts_6(2) <= signal_input_b_copy(6);
            when "0010" =>
              stream_data_out_parts_1(1) <= signal_input_a_copy(1);
              stream_data_out_parts_1(0) <= signal_input_b_copy(1);
              stream_data_out_parts_2(1) <= signal_input_a_copy(2);
              stream_data_out_parts_2(0) <= signal_input_b_copy(2);
              stream_data_out_parts_5(1) <= signal_input_a_copy(5);
              stream_data_out_parts_5(0) <= signal_input_b_copy(5);
              stream_data_out_parts_6(1) <= signal_input_a_copy(6);
              stream_data_out_parts_6(0) <= signal_input_b_copy(6);
            when "0001" =>
              stream_data_out_complete_1 <= stream_data_out_parts_1 & signal_input_a_copy(1) & signal_input_b_copy(1);
              stream_data_out_complete_2 <= stream_data_out_parts_2 & signal_input_a_copy(2) & signal_input_b_copy(2);
              stream_data_out_complete_5 <= stream_data_out_parts_5 & signal_input_a_copy(5) & signal_input_b_copy(5);
              stream_data_out_complete_6 <= stream_data_out_parts_6 & signal_input_a_copy(6) & signal_input_b_copy(6);
              value_read_done(1) <= '1';
             when others =>
              value_read_done(1) <= value_read_done(1);
          end case;
          if (data_clock_counter_1 > 0) then
            data_clock_counter_1 <= data_clock_counter_1 - 1;
          end if;
        end if;
        axis_tvalid <= '0';
        axis_tlast <= '0';
        stream_data_out <= (others => '0');
        if (wait_frames_0 > 1 and wait_frames_1 > 1) then
          if (value_write_selector = '0' and value_read_done(0) = '1') then
            case value_write_counter is
              when "00" =>
                value_write_counter <= "01";
                if (enabled(0) = '1') then
                  stream_data_out <= "0000" & stream_data_out_complete_0;
                  axis_tvalid <= '1';
                  if (word_counter > 1) then
                    axis_tlast <= '0';
                    word_counter <= word_counter - 1;
                  else
                    axis_tlast <= '1';
                    word_counter <= unsigned(number_words);
                  end if;
                end if;
              when "01" =>
                value_write_counter <= "10";
                if (enabled(3) = '1') then
                  stream_data_out <= "0011" & stream_data_out_complete_3;
                  axis_tvalid <= '1';
                  if (word_counter > 1) then
                    axis_tlast <= '0';
                    word_counter <= word_counter - 1;
                  else
                    axis_tlast <= '1';
                    word_counter <= unsigned(number_words);
                  end if;
                end if;
              when "10" =>
                value_write_counter <= "11";
                if (enabled(4) = '1') then
                  stream_data_out <= "0100" & stream_data_out_complete_4;
                  axis_tvalid <= '1';
                  if (word_counter > 1) then
                    axis_tlast <= '0';
                    word_counter <= word_counter - 1;
                  else
                    axis_tlast <= '1';
                    word_counter <= unsigned(number_words);
                  end if;
                end if;
              when "11" =>
                value_write_counter <= "00";
                if (enabled(7) = '1') then
                  stream_data_out <= "0111" & stream_data_out_complete_7;
                  axis_tvalid <= '1';
                  if (word_counter > 1) then
                    axis_tlast <= '0';
                    word_counter <= word_counter - 1;
                  else
                    axis_tlast <= '1';
                    word_counter <= unsigned(number_words);
                  end if;
                end if;
                value_write_selector <= '1';
                value_read_done(0) <= '0';
            end case;
          end if;
          if (value_write_selector = '1' and value_read_done(1) = '1') then
            case value_write_counter is
              when "00" =>
                value_write_counter <= "01";
                if (enabled(1) = '1') then
                  stream_data_out <= "0001" & stream_data_out_complete_1;
                  axis_tvalid <= '1';
                  if (word_counter > 1) then
                    axis_tlast <= '0';
                    word_counter <= word_counter - 1;
                  else
                    axis_tlast <= '1';
                    word_counter <= unsigned(number_words);
                  end if;
                end if;
              when "01" =>
                value_write_counter <= "10";
                if (enabled(2) = '1') then
                  stream_data_out <= "0010" & stream_data_out_complete_2;
                  axis_tvalid <= '1';
                  if (word_counter > 1) then
                    axis_tlast <= '0';
                    word_counter <= word_counter - 1;
                  else
                    axis_tlast <= '1';
                    word_counter <= unsigned(number_words);
                  end if;
                end if;
              when "10" =>
                value_write_counter <= "11";
                if (enabled(5) = '1') then
                  stream_data_out <= "0101" & stream_data_out_complete_5;
                  axis_tvalid <= '1';
                  if (word_counter > 1) then
                    axis_tlast <= '0';
                    word_counter <= word_counter - 1;
                  else
                    axis_tlast <= '1';
                    word_counter <= unsigned(number_words);
                  end if;
                end if;
              when "11" =>
                value_write_counter <= "00";
                if (enabled(6) = '1') then
                  stream_data_out <= "0110" & stream_data_out_complete_6;
                  axis_tvalid <= '1';
                  if (word_counter > 1) then
                    axis_tlast <= '0';
                    word_counter <= word_counter - 1;
                  else
                    axis_tlast <= '1';
                    word_counter <= unsigned(number_words);
                  end if;
                end if;
                value_write_selector <= '0';
                value_read_done(1) <= '0';
            end case;
          end if;
        end if;
      else
        wait_frames_0 := (others => '0');
        wait_frames_1 := (others => '0');
        axis_tlast <= '0';
        axis_tvalid <= '0';
        word_counter <= unsigned(number_words);
        stream_data_out <= (others => '0');
        stream_data_out_parts_0 <= (others => '0');
        stream_data_out_parts_1 <= (others => '0');
        stream_data_out_parts_2 <= (others => '0');
        stream_data_out_parts_3 <= (others => '0');
        stream_data_out_parts_4 <= (others => '0');
        stream_data_out_parts_5 <= (others => '0');
        stream_data_out_parts_6 <= (others => '0');
        stream_data_out_parts_7 <= (others => '0');
        stream_data_out_complete_0 <= (others => '0');
        stream_data_out_complete_1 <= (others => '0');
        stream_data_out_complete_2 <= (others => '0');
        stream_data_out_complete_3 <= (others => '0');
        stream_data_out_complete_4 <= (others => '0');
        stream_data_out_complete_5 <= (others => '0');
        stream_data_out_complete_6 <= (others => '0');
        stream_data_out_complete_7 <= (others => '0');
        last_data_clock <= (others => '0');
        last_frame_clock <= (others => '0');
      end if;
    end if;
  end process;

  M_AXIS_TLAST  <= axis_tlast;
  M_AXIS_TVALID <= axis_tvalid;
  M_AXIS_TDATA  <= stream_data_out;

  -- signal state
  signal_state <= enabled when (mst_exec_state = STATE_SEND_STREAM and trigger_input = '1') else (others => '0');
  
  -- trigger out
  trigger_output <= '1' when (mst_exec_state = STATE_SEND_STREAM and trigger_input = '1') else '0';

end implementation;
