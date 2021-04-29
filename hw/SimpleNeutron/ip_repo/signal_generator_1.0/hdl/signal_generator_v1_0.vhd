library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signal_generator_v1_0 is
  generic (
    -- Users to add parameters here
    STOP_DELAY_TICKS : integer := 10000000;
    -- User parameters ends
    -- Do not modify the parameters beyond this line


    -- Parameters of Axi Master Bus Interface M00_AXIS
    C_M00_AXIS_TDATA_WIDTH : integer := 32;
    C_M00_AXIS_START_COUNT : integer := 32
  );
  port (
    -- Users to add ports here
    enabled      : in std_logic; -- enable this ip core
    signal_state : out std_logic; -- shows the state (HIGH if measurement is running)
    fifo_reset   : out std_logic; -- resets an connected fifo after being enabled
    number_words : in std_logic_vector(15 downto 0); -- number of words to be send as package
    measurement_time : in std_logic_vector(31 downto 0); -- measurement time in ms
    stopped      : out std_logic; -- measurement stopped
    signal_count : in std_logic_vector(31 downto 0);
    signal_frequency: in std_logic_vector(27 downto 0);
    signal_input : in std_logic;
    -- User ports ends
    -- Do not modify the ports beyond this line

    -- Ports of Axi Master Bus Interface M00_AXIS
    m00_axis_aclk    : in std_logic;
    m00_axis_aresetn : in std_logic;
    m00_axis_tvalid  : out std_logic;
    m00_axis_tdata   : out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
    m00_axis_tkeep   : out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
    m00_axis_tlast   : out std_logic;
    m00_axis_tready  : in std_logic
  );
end signal_generator_v1_0;

architecture arch_imp of signal_generator_v1_0 is

  -- component declaration
  component signal_generator_v1_0_M00_AXIS is
    generic (
    STOP_DELAY_TICKS     : integer := 10000000;
    C_M_AXIS_TDATA_WIDTH : integer := 32;
    C_M_START_COUNT      : integer := 32
    );
    port (
    enabled        : in std_logic;
    signal_state   : out std_logic;
    fifo_reset     : out std_logic;
    number_words   : in std_logic_vector(15 downto 0);
    measurement_time : in std_logic_vector(31 downto 0);
    stopped        : out std_logic;
    signal_count   : in std_logic_vector(31 downto 0);
    signal_frequency: in std_logic_vector(27 downto 0);
    signal_input   : in std_logic;
    M_AXIS_ACLK    : in std_logic;
    M_AXIS_ARESETN : in std_logic;
    M_AXIS_TVALID  : out std_logic;
    M_AXIS_TDATA   : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    M_AXIS_TKEEP   : out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
    M_AXIS_TLAST   : out std_logic;
    M_AXIS_TREADY  : in std_logic
    );
  end component signal_generator_v1_0_M00_AXIS;

begin

-- Instantiation of Axi Bus Interface M00_AXIS
signal_generator_v1_0_M00_AXIS_inst : signal_generator_v1_0_M00_AXIS
  generic map (
    C_M_AXIS_TDATA_WIDTH => C_M00_AXIS_TDATA_WIDTH,
    C_M_START_COUNT      => C_M00_AXIS_START_COUNT,
    STOP_DELAY_TICKS     => STOP_DELAY_TICKS
  )
  port map (
    enabled        => enabled,
    signal_state   => signal_state,
    fifo_reset     => fifo_reset,
    number_words   => number_words,
    measurement_time => measurement_time,
    stopped        => stopped,
    signal_count   => signal_count,
    signal_input   => signal_input,
    signal_frequency => signal_frequency,
    M_AXIS_ACLK    => m00_axis_aclk,
    M_AXIS_ARESETN => m00_axis_aresetn,
    M_AXIS_TVALID  => m00_axis_tvalid,
    M_AXIS_TDATA   => m00_axis_tdata,
    M_AXIS_TKEEP   => m00_axis_tkeep,
    M_AXIS_TLAST   => m00_axis_tlast,
    M_AXIS_TREADY  => m00_axis_tready
  );

  -- Add user logic here

  -- User logic ends

end arch_imp;
