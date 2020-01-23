--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
--Date        : Thu Jan 23 01:19:41 2020
--Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    clock : in STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    detector_running : out STD_LOGIC;
    detector_tlast : out STD_LOGIC;
    detector_tvalid : out STD_LOGIC;
    enabled : in STD_LOGIC;
    fifo_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    last : out STD_LOGIC;
    number_words : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rd_fifo_fill : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    signal_input : in STD_LOGIC_VECTOR ( 7 downto 0 );
    signal_state : out STD_LOGIC;
    strb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : out STD_LOGIC;
    wr_fifo_fill : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_axis_data_fifo_0_0;
  component design_1_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_vector_logic_0_0;
  component design_1_signal_input_0_0 is
  port (
    signal_input : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out0 : out STD_LOGIC;
    out1 : out STD_LOGIC;
    out2 : out STD_LOGIC;
    out3 : out STD_LOGIC;
    out4 : out STD_LOGIC;
    out5 : out STD_LOGIC;
    out6 : out STD_LOGIC;
    out7 : out STD_LOGIC
  );
  end component design_1_signal_input_0_0;
  component design_1_signal_detector_0_0 is
  port (
    enabled : in STD_LOGIC;
    signal_input : in STD_LOGIC;
    signal_state : out STD_LOGIC;
    fifo_reset : out STD_LOGIC;
    number_words : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  end component design_1_signal_detector_0_0;
  signal axis_data_fifo_0_axis_rd_data_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_0_axis_wr_data_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_0_m_axis_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_0_m_axis_tkeep : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_data_fifo_0_m_axis_tlast : STD_LOGIC;
  signal axis_data_fifo_0_m_axis_tvalid : STD_LOGIC;
  signal clock_1 : STD_LOGIC;
  signal enabled_1 : STD_LOGIC;
  signal number_words_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ready_1 : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal signal_detector_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal signal_detector_0_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal signal_detector_0_M00_AXIS_TREADY : STD_LOGIC;
  signal signal_detector_0_fifo_reset : STD_LOGIC;
  signal signal_detector_0_m00_axis_tlast : STD_LOGIC;
  signal signal_detector_0_m00_axis_tvalid : STD_LOGIC;
  signal signal_detector_0_signal_state : STD_LOGIC;
  signal signal_input_0_out0 : STD_LOGIC;
  signal signal_input_1_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_signal_input_0_out1_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_input_0_out2_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_input_0_out3_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_input_0_out4_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_input_0_out5_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_input_0_out6_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_input_0_out7_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clock : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clock : signal is "XIL_INTERFACENAME CLK.CLOCK, ASSOCIATED_RESET reset, CLK_DOMAIN design_1_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  clock_1 <= clock;
  data(31 downto 0) <= axis_data_fifo_0_m_axis_tdata(31 downto 0);
  detector_running <= signal_detector_0_fifo_reset;
  detector_tlast <= signal_detector_0_m00_axis_tlast;
  detector_tvalid <= signal_detector_0_m00_axis_tvalid;
  enabled_1 <= enabled;
  fifo_reset(0) <= util_vector_logic_0_Res(0);
  last <= axis_data_fifo_0_m_axis_tlast;
  number_words_1(15 downto 0) <= number_words(15 downto 0);
  rd_fifo_fill(31 downto 0) <= axis_data_fifo_0_axis_rd_data_count(31 downto 0);
  ready_1 <= ready;
  reset_1 <= reset;
  signal_input_1_1(7 downto 0) <= signal_input(7 downto 0);
  signal_state <= signal_detector_0_signal_state;
  strb(3 downto 0) <= axis_data_fifo_0_m_axis_tkeep(3 downto 0);
  valid <= axis_data_fifo_0_m_axis_tvalid;
  wr_fifo_fill(31 downto 0) <= axis_data_fifo_0_axis_wr_data_count(31 downto 0);
axis_data_fifo_0: component design_1_axis_data_fifo_0_0
     port map (
      axis_rd_data_count(31 downto 0) => axis_data_fifo_0_axis_rd_data_count(31 downto 0),
      axis_wr_data_count(31 downto 0) => axis_data_fifo_0_axis_wr_data_count(31 downto 0),
      m_axis_tdata(31 downto 0) => axis_data_fifo_0_m_axis_tdata(31 downto 0),
      m_axis_tkeep(3 downto 0) => axis_data_fifo_0_m_axis_tkeep(3 downto 0),
      m_axis_tlast => axis_data_fifo_0_m_axis_tlast,
      m_axis_tready => ready_1,
      m_axis_tvalid => axis_data_fifo_0_m_axis_tvalid,
      s_axis_aclk => clock_1,
      s_axis_aresetn => util_vector_logic_0_Res(0),
      s_axis_tdata(31 downto 0) => signal_detector_0_M00_AXIS_TDATA(31 downto 0),
      s_axis_tkeep(3 downto 0) => signal_detector_0_M00_AXIS_TKEEP(3 downto 0),
      s_axis_tlast => signal_detector_0_m00_axis_tlast,
      s_axis_tready => signal_detector_0_M00_AXIS_TREADY,
      s_axis_tvalid => signal_detector_0_m00_axis_tvalid
    );
signal_detector_0: component design_1_signal_detector_0_0
     port map (
      enabled => enabled_1,
      fifo_reset => signal_detector_0_fifo_reset,
      m00_axis_aclk => clock_1,
      m00_axis_aresetn => reset_1,
      m00_axis_tdata(31 downto 0) => signal_detector_0_M00_AXIS_TDATA(31 downto 0),
      m00_axis_tkeep(3 downto 0) => signal_detector_0_M00_AXIS_TKEEP(3 downto 0),
      m00_axis_tlast => signal_detector_0_m00_axis_tlast,
      m00_axis_tready => signal_detector_0_M00_AXIS_TREADY,
      m00_axis_tvalid => signal_detector_0_m00_axis_tvalid,
      number_words(15 downto 0) => number_words_1(15 downto 0),
      signal_input => signal_input_0_out0,
      signal_state => signal_detector_0_signal_state
    );
signal_input_0: component design_1_signal_input_0_0
     port map (
      out0 => signal_input_0_out0,
      out1 => NLW_signal_input_0_out1_UNCONNECTED,
      out2 => NLW_signal_input_0_out2_UNCONNECTED,
      out3 => NLW_signal_input_0_out3_UNCONNECTED,
      out4 => NLW_signal_input_0_out4_UNCONNECTED,
      out5 => NLW_signal_input_0_out5_UNCONNECTED,
      out6 => NLW_signal_input_0_out6_UNCONNECTED,
      out7 => NLW_signal_input_0_out7_UNCONNECTED,
      signal_input(7 downto 0) => signal_input_1_1(7 downto 0)
    );
util_vector_logic_0: component design_1_util_vector_logic_0_0
     port map (
      Op1(0) => reset_1,
      Op2(0) => signal_detector_0_fifo_reset,
      Res(0) => util_vector_logic_0_Res(0)
    );
end STRUCTURE;
