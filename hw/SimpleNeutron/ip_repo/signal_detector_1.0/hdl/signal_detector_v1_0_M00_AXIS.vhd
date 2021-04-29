library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signal_detector_v1_0_M00_AXIS is
  generic (
    -- Users to add parameters here
    STOP_DELAY_TICKS : integer := 10000000;
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
    signal_input : in  std_logic; -- signal input
    signal_state : out std_logic; -- shows the state (HIGH if measurement is running)
    fifo_reset   : out std_logic; -- resets an connected fifo after being enabled
    number_words : in std_logic_vector(15 downto 0); -- number of words to be send as package
    trigger_input: in std_logic;
    measurement_time : in std_logic_vector(31 downto 0); -- measurement time in ms
    stopped      : out std_logic; -- measurement stopped
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
end signal_detector_v1_0_M00_AXIS;

architecture implementation of signal_detector_v1_0_M00_AXIS is

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

  -- measurment timer signals
  signal ms_timer                        : unsigned(16 downto 0)                             := (others => '0');
  signal duration                        : unsigned(31 downto 0)                             := (others => '0');
  signal stop_measurement                : std_logic                                         := '0';
  signal measurement_stopped             : std_logic                                         := '0';
  signal delay_counter                   : unsigned(31 downto 0)                             := (others => '0');

  -- signals for driving AXI
  signal signal_inut_internal            : std_logic;
  signal axis_tvalid                     : std_logic                                         := '0';
  signal axis_tlast                      : std_logic                                         := '0';
  signal stream_data_out                 : std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
  signal signal_state_internal           : std_logic                                         := '0';
  signal word_counter                    : unsigned(15 downto 0)                             := (others => '0');
  signal last_signal_input               : std_logic                                         := '0';
  signal clock_counter                   : unsigned(31 downto 0)                             := (others => '0');

begin
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

  -- clean signal input into a clock stable signal
  process(M_AXIS_ACLK)
  begin
    if rising_edge(M_AXIS_ACLK) then
      signal_inut_internal <= '0';
      if (mst_exec_state = STATE_SEND_STREAM) then
        if (signal_input = '1') then
          signal_inut_internal <= '1';
        end if;
      end if;
    end if;
  end process;

  -- store last input signal
  process(M_AXIS_ACLK)
  begin
    if rising_edge(M_AXIS_ACLK) then
      if (mst_exec_state = STATE_SEND_STREAM and trigger_input = '1') then
        last_signal_input <= signal_inut_internal;
      else
        last_signal_input <= '0';
      end if;
    end if;
  end process;

  -- M_AXIS_TDATA
  process(M_AXIS_ACLK)
  begin
    if rising_edge(M_AXIS_ACLK) then
      if (mst_exec_state = STATE_SEND_STREAM and trigger_input = '1' and measurement_stopped = '0') then
        if (signal_inut_internal = '1' and last_signal_input /= signal_inut_internal) then
          stream_data_out <= std_logic_vector(clock_counter);
          clock_counter <= (0 => '1', others => '0');
        else
          stream_data_out <= stream_data_out;
          clock_counter <= clock_counter + 1;
        end if;
      else
        clock_counter <= (others => '0');
        stream_data_out <= (others => '0');
      end if;
    end if;
  end process;

  M_AXIS_TDATA  <= stream_data_out;

  -- M_AXIS_TVALID
  process(M_AXIS_ACLK)
  begin
    if rising_edge(M_AXIS_ACLK) then
      if (mst_exec_state = STATE_SEND_STREAM and trigger_input = '1' and measurement_stopped = '0') then
        axis_tvalid <= '0';
        if (signal_inut_internal = '1' and last_signal_input /= signal_inut_internal) then
          axis_tvalid <= '1';
        end if;
      elsif (mst_exec_state = STATE_SEND_STREAM and stop_measurement = '0' and measurement_stopped = '1') then
        if (delay_counter < to_unsigned(STOP_DELAY_TICKS, 32)) then
          delay_counter <= delay_counter + 1;
          axis_tvalid <= '0';
        else
          axis_tvalid <= '1';
          stop_measurement <= '1';
        end if;
      elsif (mst_exec_state /= STATE_SEND_STREAM) then
        stop_measurement <= '0';
        delay_counter <= (others => '0');
        axis_tvalid <= '0';
      else
        delay_counter <= (others => '0');
        axis_tvalid <= '0';
      end if;
    end if;
  end process;

  M_AXIS_TVALID <= axis_tvalid;

  -- M_AXIS_TLAST
  process(M_AXIS_ACLK)
  begin
    if rising_edge(M_AXIS_ACLK) then
      if (mst_exec_state = STATE_SEND_STREAM and trigger_input = '1' and measurement_stopped = '0') then
        if (signal_inut_internal = '1' and last_signal_input /= signal_inut_internal) then
          if (word_counter > 1) then
            axis_tlast <= '0';
            word_counter <= word_counter - 1;
          else
            axis_tlast <= '1';
            word_counter <= unsigned(number_words);
          end if;
        else
          axis_tlast <= '0';
          word_counter <= word_counter;
        end if;
      elsif (mst_exec_state = STATE_SEND_STREAM and trigger_input = '0' and measurement_stopped = '0') then
        axis_tlast <= '0';
        word_counter <= word_counter;
      elsif (mst_exec_state = STATE_SEND_STREAM and measurement_stopped = '1') then
        word_counter <= unsigned(number_words);
        axis_tlast <= '1';
      else
        word_counter <= unsigned(number_words);
        axis_tlast <= '0';
      end if;
    end if;
  end process;

  M_AXIS_TLAST <= axis_tlast;

  -- measurment timer
  process(M_AXIS_ACLK)
  begin
    if rising_edge(M_AXIS_ACLK) then
      if (mst_exec_state = STATE_SEND_STREAM and trigger_input = '1' and measurement_stopped = '0') then
        if (ms_timer < 99999) then
          ms_timer <= ms_timer + 1;
        else
          ms_timer <= (others => '0');
          duration <= duration + 1;
        end if;
      elsif (mst_exec_state /= STATE_SEND_STREAM) then
        duration <= (others => '0');
        ms_timer <= (others => '0');
      end if;
    end if;
  end process;

  measurement_stopped <= '0' when (measurement_time = x"00000000" or duration < unsigned(measurement_time)) else '1';
  stopped <= measurement_stopped;

  -- signal state
  signal_state  <= '1' when (mst_exec_state = STATE_SEND_STREAM and trigger_input = '1') else '0';

end implementation;
