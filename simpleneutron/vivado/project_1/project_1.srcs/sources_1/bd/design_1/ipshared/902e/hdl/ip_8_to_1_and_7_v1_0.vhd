library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ip_8_to_1_and_7_v1_0 is
	port (
		in0  : in std_logic_vector(7 downto 0);
		out0 : out std_logic;
		out1 : out std_logic_vector(6 downto 0)
	);
end ip_8_to_1_and_7_v1_0;

architecture arch_imp of ip_8_to_1_and_7_v1_0 is
begin

out0 <= in0(0);
out1 <= in0(7 downto 1);

end arch_imp;
