library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library unisim;
use unisim.vcomponents.all;

entity clock_buffer_v1_0 is
	generic (
		IOSTANDARD : string := "LVDS_25"
	);
	port (
		signal_output : out std_logic;
		signal_in_p	: in std_logic;
		signal_in_n	: in std_logic
	);
end clock_buffer_v1_0;

architecture arch_imp of clock_buffer_v1_0 is

	-- component declaration
	component IBUFDS is
	generic (
      IOSTANDARD : string := "LVDS_25"
    );
    port (
     O : out std_ulogic;
     I : in std_ulogic;
     IB : in std_ulogic
    );
	end component IBUFDS;

begin

  i_buffer : IBUFDS
  generic map (
	IOSTANDARD	=> IOSTANDARD
  )
  port map (
	O => signal_output,
	I => signal_in_p,
	IB => signal_in_n
);

end arch_imp;
