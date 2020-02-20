library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity or_v1_0 is
	port (
        in0 : in std_logic;
        in1 : in std_logic;
        in2 : in std_logic;
        in3 : in std_logic;
        in4 : in std_logic;
        in5 : in std_logic;
        in6 : in std_logic;
        in7 : in std_logic;
        out0 : out std_logic
	);
end or_v1_0;

architecture arch_imp of or_v1_0 is
begin

out0 <= '1' when (in0 = '1' or in1 = '1' or in2 = '1' or in3 = '1' or in4 = '1' or in5 = '1' or in6 = '1' or in7 = '1') else '0';

end arch_imp;
