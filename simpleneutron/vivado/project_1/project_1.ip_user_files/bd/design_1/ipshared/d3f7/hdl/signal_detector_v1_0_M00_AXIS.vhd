library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signal_detector_v1_0_M00_AXIS is
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
    signal_input : in  std_logic; -- enable this ip core
    signal_state : out std_logic; -- shows the state (if enabled AND signal detected -> LOW; if enabled AND no signal detected -> HIGH; otherwise LOW )
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
    -- TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
    M_AXIS_TSTRB : out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
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
      STATE_SEND_STREAM);    -- In this state the
                             -- stream data is output through M_AXIS_TDATA

  -- WAIT_COUNT_BITS is the width of the wait counter.
  constant WAIT_COUNT_BITS : integer := clogb2(C_M_START_COUNT-1);

  -- State variable
  signal mst_exec_state : state;
  --streaming data valid
  signal axis_tvalid            : std_logic := '0';
  signal axis_tvalid_calculated : std_logic := '0';
  --Last of the streaming data
  signal axis_tlast : std_logic := '0';
  --FIFO implementation signals
  signal stream_data_out : std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
  --The master has issued all the streaming data stored in FIFO
  signal signal_state_internal           : std_logic                                         := '0';
  signal clock_counter                   : std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
  signal init_counter                    : std_logic_vector(WAIT_COUNT_BITS-1 downto 0)      := (others => '0');
  signal signal_input_previous           : std_logic                                         := '0';
  signal axis_tvalid_calculated_previous : std_logic                                         := '0';
  signal signal_counter                  : std_logic_vector(1 downto 0)                      := (others => '0');

begin
  -- I/O Connections assignments
  M_AXIS_TVALID <= axis_tvalid;
  M_AXIS_TDATA  <= stream_data_out;
  M_AXIS_TLAST  <= axis_tlast;
  M_AXIS_TSTRB  <= (others => '1'); -- this is always 1 for reasons!
  signal_state  <= signal_state_internal;

  -- Control state machine implementation
  process(M_AXIS_ACLK)
  begin
    if (rising_edge (M_AXIS_ACLK)) then
      if(M_AXIS_ARESETN = '0' or enabled = '0') then
        -- Synchronous reset (active low)
        mst_exec_state <= STATE_IDLE;
        init_counter   <= (others => '0');
      else
        case (mst_exec_state) is
          when STATE_IDLE =>
            mst_exec_state <= STATE_INIT_COUNTER;

          when STATE_INIT_COUNTER =>
            -- This state is responsible to wait for user defined C_M_START_COUNT
            -- number of clock cycles.
            if (init_counter = std_logic_vector(to_unsigned((C_M_START_COUNT - 1), WAIT_COUNT_BITS))) then
              mst_exec_state   <= STATE_SEND_STREAM;
            else
              init_counter   <= std_logic_vector (unsigned(init_counter) + 1);
              mst_exec_state <= STATE_INIT_COUNTER;
            end if;

          when STATE_SEND_STREAM =>
            mst_exec_state <= STATE_SEND_STREAM;
          when others =>
            mst_exec_state <= STATE_IDLE;
        end case;
      end if;
    end if;
  end process;

  -- count clocks and set stream_data_out
  process(M_AXIS_ACLK)
  begin
    if (rising_edge (M_AXIS_ACLK)) then
      if (mst_exec_state = STATE_SEND_STREAM) then
        if (signal_input_previous /= signal_input and signal_input = '1') then
          axis_tvalid_calculated <= '1';
          if (signal_counter < std_logic_vector(to_unsigned(2, 2))) then
            signal_counter <= std_logic_vector (unsigned(signal_counter) + 1);
          end if;
        else
          axis_tvalid_calculated <= '0';
        end if;

        if (axis_tvalid_calculated_previous = '1') then
          clock_counter <= (1 => '1', others => '0'); -- because resettings takes clocks!
        else
          clock_counter <= std_logic_vector (unsigned(clock_counter) + 1);
        end if;
      else
        signal_counter <= (others => '0');
        clock_counter <= (others => '0');
        axis_tvalid_calculated <= '0';
      end if;

      -- store signals for next clock
      axis_tvalid_calculated_previous <= axis_tvalid_calculated;
      signal_input_previous <= signal_input;
    end if;
  end process;

  axis_tvalid           <= axis_tvalid_calculated when (mst_exec_state = STATE_SEND_STREAM) else '0';
  axis_tlast            <= axis_tvalid; -- as our packages are just one byte
  stream_data_out       <= clock_counter when (axis_tvalid = '1' and signal_counter = std_logic_vector(to_unsigned(2, 2))) else (others => '0');
  signal_state_internal <= '1' when (enabled = '1' and axis_tvalid_calculated = '0') else '0';

end implementation;
