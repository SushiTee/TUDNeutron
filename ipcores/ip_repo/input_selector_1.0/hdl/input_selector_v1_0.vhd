library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity input_selector_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXIS
		AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
        selector        : in std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_tready	: out std_logic;
		s00_axis_tdata	: in std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
		s00_axis_tkeep	: in std_logic_vector((AXIS_TDATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast	: in std_logic;
		s00_axis_tvalid	: in std_logic;
		
		-- Ports of Axi Slave Bus Interface S00_AXIS
		s01_axis_tready	: out std_logic;
		s01_axis_tdata	: in std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
		s01_axis_tkeep	: in std_logic_vector((AXIS_TDATA_WIDTH/8)-1 downto 0);
		s01_axis_tlast	: in std_logic;
		s01_axis_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tkeep	: out std_logic_vector((AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic;
		
		signal_state_0 : in std_logic;
		signal_state_1 : in std_logic;
		signal_state : out std_logic;
		
		fifo_reset_0 : in std_logic;
		fifo_reset_1: in std_logic;
		fifo_reset : out std_logic
	);
end input_selector_v1_0;

architecture arch_imp of input_selector_v1_0 is
begin

-- slave to master
m00_axis_tvalid <= s00_axis_tvalid when selector = '1' else s01_axis_tvalid;
m00_axis_tdata <= s00_axis_tdata when selector = '1' else s01_axis_tdata;
m00_axis_tkeep <= s00_axis_tkeep when selector = '1' else s01_axis_tkeep;
m00_axis_tlast <= s00_axis_tlast when selector = '1' else s01_axis_tlast;

-- master to slave
s00_axis_tready <= m00_axis_tready when selector = '1' else '0';
s01_axis_tready <= m00_axis_tready when selector = '0' else '0';

-- other
signal_state <= signal_state_0 when selector = '1' else signal_state_1;
fifo_reset <= fifo_reset_0 when selector = '1' else fifo_reset_1;

end arch_imp;
