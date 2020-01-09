--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
--Date        : Sun Dec 29 20:33:57 2019
--Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
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
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    enabled : in STD_LOGIC;
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    signal_state : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    last : out STD_LOGIC;
    ready : in STD_LOGIC;
    valid : out STD_LOGIC;
    wr_fifo_fill : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd_fifo_fill : out STD_LOGIC_VECTOR ( 31 downto 0 );
    strb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fifo_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    signal_input : in STD_LOGIC_VECTOR ( 7 downto 0 );
    number_words : in STD_LOGIC_VECTOR ( 15 downto 0 );
    detector_tlast : out STD_LOGIC;
    detector_tvalid : out STD_LOGIC;
    detector_running : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      clock => clock,
      data(31 downto 0) => data(31 downto 0),
      detector_running => detector_running,
      detector_tlast => detector_tlast,
      detector_tvalid => detector_tvalid,
      enabled => enabled,
      fifo_reset(0) => fifo_reset(0),
      last => last,
      number_words(15 downto 0) => number_words(15 downto 0),
      rd_fifo_fill(31 downto 0) => rd_fifo_fill(31 downto 0),
      ready => ready,
      reset => reset,
      signal_input(7 downto 0) => signal_input(7 downto 0),
      signal_state => signal_state,
      strb(3 downto 0) => strb(3 downto 0),
      valid => valid,
      wr_fifo_fill(31 downto 0) => wr_fifo_fill(31 downto 0)
    );
end STRUCTURE;
