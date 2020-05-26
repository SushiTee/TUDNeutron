library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity enable_splitter_v1_0 is
  port (
    switch_input : in std_logic_vector(7 downto 0);
    gpio_input : in std_logic_vector(7 downto 0);

    out0 : out std_logic;
    out1 : out std_logic;
    out2 : out std_logic;
    out3 : out std_logic;
    out4 : out std_logic;
    out5 : out std_logic;
    out6 : out std_logic;
    out7 : out std_logic
  );
end enable_splitter_v1_0;

architecture arch_imp of enable_splitter_v1_0 is

begin

  out0 <= '1' when (switch_input(0) = '1' and gpio_input(0) = '1') else '0';
  out1 <= '1' when (switch_input(1) = '1' and gpio_input(1) = '1') else '0';
  out2 <= '1' when (switch_input(2) = '1' and gpio_input(2) = '1') else '0';
  out3 <= '1' when (switch_input(3) = '1' and gpio_input(3) = '1') else '0';
  out4 <= '1' when (switch_input(4) = '1' and gpio_input(4) = '1') else '0';
  out5 <= '1' when (switch_input(5) = '1' and gpio_input(5) = '1') else '0';
  out6 <= '1' when (switch_input(6) = '1' and gpio_input(6) = '1') else '0';
  out7 <= '1' when (switch_input(7) = '1' and gpio_input(7) = '1') else '0';

end arch_imp;
