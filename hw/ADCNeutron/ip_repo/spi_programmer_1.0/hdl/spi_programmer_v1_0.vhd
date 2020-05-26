library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi_programmer_v1_0 is
  port (
    normal : in std_logic;
    random : in std_logic;
    pattern : in std_logic;
    csa : out std_logic;
    csb : out std_logic;
    sck : out std_logic;
    mosi : out std_logic;

    clock : in std_logic;
    reset : in std_logic
  );
end spi_programmer_v1_0;

architecture implementation of spi_programmer_v1_0 is

  -- Define the states of state machine
  type state is (STATE_IDLE, -- This is the initial/idle state
      STATE_INIT_COUNTER,    -- This state initializes the counter, once
                             -- the counter reaches C_M_START_COUNT count,
                             -- the state machine changes state to SEND_STREAM
      STATE_SEND_STREAM);    -- In this state the)

  -- WAIT_COUNT_BITS is the width of the wait counter.
  constant WAIT_COUNT_BITS : integer := 8;

  -- signals for state machine
  -- State variable
  signal mst_exec_state : state;
  -- init counter
  signal init_counter                    : std_logic_vector(WAIT_COUNT_BITS-1 downto 0)      := (others => '0');

  signal csa_i : std_logic := '1';
  signal csb_i : std_logic := '1';
  signal mosi_i : std_logic := '0';
  signal finished : std_logic := '0';
  signal sck_clock : std_logic := '0';
  signal sck_devide_counter : unsigned(31 downto 0) := (others => '0');
  signal sck_active : std_logic := '0';
  signal sck_rise : std_logic := '0';
  signal sck_fall : std_logic := '0';
  signal programming_active : std_logic := '0';
  signal programming_counter : unsigned(7 downto 0) := (others => '0');
  signal programming_part_counter : unsigned(2 downto 0) := (others => '0');
  signal current_mode : std_logic_vector(63 downto 0) := (others => '0');
  signal state_active : std_logic := '0';
  signal programming_delay_counter : unsigned(31 downto 0) := (others => '0');
  signal normal_internal : std_logic := '0';
  signal random_internal : std_logic := '0';
  signal pattern_internal : std_logic := '0';
  signal pattern_counter : unsigned(4 downto 0) := (others => '0');
begin

  -- Control state machine implementation
  process(clock)
  begin
    if (rising_edge (clock)) then
      if(reset = '0') then
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
            if (init_counter = std_logic_vector(to_unsigned(32, WAIT_COUNT_BITS))) then
              mst_exec_state   <= STATE_SEND_STREAM;
            else
              init_counter   <= std_logic_vector(unsigned(init_counter) + 1);
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

  -- clock process
  process(clock)
  begin
    if rising_edge(clock) then
      if (sck_devide_counter > 1) then
        sck_devide_counter <= sck_devide_counter - 1;
        sck_rise <= '0';
        sck_fall <= '0';
      else
        if (sck_clock = '0') then
          sck_clock <= '1';
          sck_rise <= '1';
        else
          sck_clock <= '0';
          sck_fall <= '1';
        end if;
        sck_devide_counter <= to_unsigned(10000, 32);
      end if;
    end if;
  end process;

  -- copy process
  process(clock)
  begin
    if rising_edge(clock) then
      normal_internal <= normal;
      random_internal <= random;
      pattern_internal <= pattern;
    end if;
  end process;

  -- send data process
  process(clock)
    variable normal_mode : std_logic_vector(63 downto 0) := "0000000100000000000000101111000000000011000000000000010000000000";
    variable random_mode : std_logic_vector(63 downto 0) := "0000000101000000000000101111000000000011000000000000010000000000";
    variable pattern_1_mode : std_logic_vector(63 downto 0)  := "0000000100000000000000101111000000000011100000000000010000000001";
    variable pattern_2_mode : std_logic_vector(63 downto 0)  := "0000000100000000000000101111000000000011100000000000010000000010";
    variable pattern_3_mode : std_logic_vector(63 downto 0)  := "0000000100000000000000101111000000000011100000000000010000000100";
    variable pattern_4_mode : std_logic_vector(63 downto 0)  := "0000000100000000000000101111000000000011100000000000010000001000";
    variable pattern_5_mode : std_logic_vector(63 downto 0)  := "0000000100000000000000101111000000000011100000000000010000010000";
    variable pattern_6_mode : std_logic_vector(63 downto 0)  := "0000000100000000000000101111000000000011100000000000010000100000";
    variable pattern_7_mode : std_logic_vector(63 downto 0)  := "0000000100000000000000101111000000000011100000000000010001000000";
    variable pattern_8_mode : std_logic_vector(63 downto 0)  := "0000000100000000000000101111000000000011100000000000010010000000";
    variable pattern_9_mode : std_logic_vector(63 downto 0)  := "0000000100000000000000101111000000000011100000010000010000000000";
    variable pattern_10_mode : std_logic_vector(63 downto 0) := "0000000100000000000000101111000000000011100000100000010000000000";
    variable pattern_11_mode : std_logic_vector(63 downto 0) := "0000000100000000000000101111000000000011100001000000010000000000";
    variable pattern_12_mode : std_logic_vector(63 downto 0) := "0000000100000000000000101111000000000011100010000000010000000000";
    variable pattern_13_mode : std_logic_vector(63 downto 0) := "0000000100000000000000101111000000000011100100000000010000000000";
    variable pattern_14_mode : std_logic_vector(63 downto 0) := "0000000100000000000000101111000000000011101000000000010000000000";
    variable pattern_15_mode : std_logic_vector(63 downto 0) := "0000000100000000000000101111000000000011101111110000010011111111";
    variable pattern_16_mode : std_logic_vector(63 downto 0) := "0000000100000000000000101111000000000011100000000000010000000000";
    variable pattern_17_mode : std_logic_vector(63 downto 0) := "0000000100000000000000101111000000000011101111000000010000111100";
    variable pattern_18_mode : std_logic_vector(63 downto 0) := "0000000100000000000000101111000000000011101110000000010011100010";
    variable pattern_19_mode : std_logic_vector(63 downto 0) := "0000000100000000000000101111000000000011101010100000010010101010";
  begin
    if rising_edge(clock) then
      if (mst_exec_state = STATE_SEND_STREAM) then
        if (programming_active = '0') then
          if (finished = '1') then
            if (programming_delay_counter > 0) then
              programming_delay_counter <= programming_delay_counter - 1;
            else
              finished <= '0';
            end if;
          else
            if (normal_internal = '1') then
              programming_active <= '1';
              current_mode <= normal_mode;
              pattern_counter <= (others => '0');
            end if;
            if (random_internal = '1') then
              programming_active <= '1';
              current_mode <= random_mode;
              pattern_counter <= (others => '0');
            end if;
            if (pattern_internal = '1') then
              programming_active <= '1';
              pattern_counter <= pattern_counter + 1;
              case pattern_counter is
                when "00000" =>
                  current_mode <= pattern_1_mode;
                when "00001" =>
                  current_mode <= pattern_2_mode;
                when "00010" =>
                  current_mode <= pattern_3_mode;
                when "00011" =>
                  current_mode <= pattern_4_mode;
                when "00100" =>
                  current_mode <= pattern_5_mode;
                when "00101" =>
                  current_mode <= pattern_6_mode;
                when "00110" =>
                  current_mode <= pattern_7_mode;
                when "00111" =>
                  current_mode <= pattern_8_mode;
                when "01000" =>
                  current_mode <= pattern_9_mode;
                when "01001" =>
                  current_mode <= pattern_10_mode;
                when "01010" =>
                  current_mode <= pattern_11_mode;
                when "01011" =>
                  current_mode <= pattern_12_mode;
                when "01100" =>
                  current_mode <= pattern_13_mode;
                when "01101" =>
                  current_mode <= pattern_14_mode;
                when "01110" =>
                  current_mode <= pattern_15_mode;
                when "01111" =>
                  current_mode <= pattern_16_mode;
                when "10000" =>
                  current_mode <= pattern_17_mode;
                when "10001" =>
                  current_mode <= pattern_18_mode;
                when others =>
                  current_mode <= pattern_19_mode;
                  pattern_counter <= (others => '0');
              end case;
            end if;
          end if;
        else
          if (finished = '0') then
            if (sck_active = '0') then
              if (sck_fall = '1') then
                sck_active <= '1';
                programming_counter <= to_unsigned(16, 8);
                programming_part_counter <= to_unsigned(4, 3);
              end if;
            else
              if (sck_fall = '1') then
                if (programming_counter > 0) then
                  if (csa_i = '1' or csb_i = '1') then
                    csa_i <= '0';
                    csb_i <= '0';
                  end if;
                  programming_counter <= programming_counter - 1;
                  mosi_i <= current_mode(63);
                  current_mode <= std_logic_vector(shift_left(unsigned(current_mode), 1));
                else
                  csa_i <= '1';
                  csb_i <= '1';
                  mosi_i <= '0';
                  if (programming_part_counter > 1) then
                    programming_part_counter <= programming_part_counter - 1;
                    programming_counter <= to_unsigned(16, 8);
                  else
                    programming_active <= '0';
                    finished <= '1';
                    sck_active <= '0';
                    programming_delay_counter <= to_unsigned(100000000, 32);
                  end if;
                end if;
              end if;
            end if;
          end if;
        end if;
      else
        csa_i <= '1';
        csb_i <= '1';
        mosi_i <= '0';
        finished <= '0';
        sck_active <= '0';
        programming_delay_counter <= (others => '0');
      end if;
    end if;
  end process;

  sck <= '1' when (sck_active = '1' and sck_clock = '1' and mst_exec_state = STATE_SEND_STREAM) else '0';
  mosi <= '1' when (mosi_i = '1' and mst_exec_state = STATE_SEND_STREAM) else '0';
  csa <= '0' when (csa_i = '0' and mst_exec_state = STATE_SEND_STREAM) else '1';
  csb <= '0' when (csb_i = '0' and mst_exec_state = STATE_SEND_STREAM) else '1';

end implementation;
