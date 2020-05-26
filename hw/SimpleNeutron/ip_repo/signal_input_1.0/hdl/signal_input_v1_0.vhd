library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signal_input_v1_0 is
  port (
    signal_input : in std_logic_vector(7 downto 0);

    out0 : out std_logic;
    out1 : out std_logic;
    out2 : out std_logic;
    out3 : out std_logic;
    out4 : out std_logic;
    out5 : out std_logic;
    out6 : out std_logic;
    out7 : out std_logic
  );
end signal_input_v1_0;

architecture arch_imp of signal_input_v1_0 is

begin

  out0 <= signal_input(0);
  out1 <= signal_input(1);
  out2 <= signal_input(2);
  out3 <= signal_input(3);
  out4 <= signal_input(4);
  out5 <= signal_input(5);
  out6 <= signal_input(6);
  out7 <= signal_input(7);

end arch_imp;
