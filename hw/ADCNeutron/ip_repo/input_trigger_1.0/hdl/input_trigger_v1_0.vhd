library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity input_trigger_v1_0 is
	port (
		trigger_input : in std_logic;
		enabled: in std_logic;
		trigger_out0 : out std_logic;
		trigger_out1 : out std_logic;
		trigger_out2 : out std_logic;
		trigger_out3 : out std_logic;
		trigger_out4 : out std_logic;
		trigger_out5 : out std_logic;
		trigger_out6 : out std_logic;
		trigger_out7 : out std_logic
	);
end input_trigger_v1_0;

architecture arch_imp of input_trigger_v1_0 is
begin

trigger_out0 <= '1' when enabled = '0' else trigger_input;
trigger_out1 <= '1' when enabled = '0' else trigger_input;
trigger_out2 <= '1' when enabled = '0' else trigger_input;
trigger_out3 <= '1' when enabled = '0' else trigger_input;
trigger_out4 <= '1' when enabled = '0' else trigger_input;
trigger_out5 <= '1' when enabled = '0' else trigger_input;
trigger_out6 <= '1' when enabled = '0' else trigger_input;
trigger_out7 <= '1' when enabled = '0' else trigger_input;

end arch_imp;
