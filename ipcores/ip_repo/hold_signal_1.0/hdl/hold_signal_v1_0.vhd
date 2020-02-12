library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hold_signal_v1_0 is
	port (
		-- Users to add ports here
        signal_in : in std_logic;
        signal_out : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk	: in std_logic;
		m00_axis_aresetn	: in std_logic
	);
end hold_signal_v1_0;

architecture arch_imp of hold_signal_v1_0 is
begin

  process(m00_axis_aclk)
  begin
    if (rising_edge (m00_axis_aclk)) then
      if(m00_axis_aresetn = '0') then
        signal_out <= '0';
      else
        if (signal_in = '1') then
            signal_out <= '1';
        end if;
      end if;
    end if;
  end process;

end arch_imp;
