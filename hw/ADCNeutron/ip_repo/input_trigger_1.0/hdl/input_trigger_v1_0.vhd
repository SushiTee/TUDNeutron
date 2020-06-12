library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity input_trigger_v1_0 is
	port (
		trigger_input : in std_logic;
		enabled: in std_logic;
		trigger_out : out std_logic
	);
end input_trigger_v1_0;

architecture arch_imp of input_trigger_v1_0 is
begin

trigger_out <= '1' when enabled = '0' else trigger_input;

end arch_imp;
