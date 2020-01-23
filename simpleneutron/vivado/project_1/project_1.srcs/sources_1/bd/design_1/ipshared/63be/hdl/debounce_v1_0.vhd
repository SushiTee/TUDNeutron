library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debounce_v1_0 is
    port (
        signal_in       : in std_logic;
        signal_out      : out std_logic;
        m00_axis_aclk   : in std_logic;
        m00_axis_aresetn    : in std_logic
    );
end debounce_v1_0;

architecture implementation of debounce_v1_0 is

--the below constants decide the working parameters.
--the higher this is, the more longer time the user has to press the button.
constant COUNT_MAX : integer := 50000;

signal count : integer := 0;
type state_type is (idle,wait_time); --state machine
signal state : state_type := idle;

begin

process(m00_axis_aclk)
begin
  if (rising_edge(m00_axis_aclk)) then
    if (m00_axis_aresetn = '0') then
      -- Synchronous reset (active low)
      state <= idle;
      signal_out <= '0';
    else
      case (state) is
        when idle =>
          if (signal_in = '1') then
            state <= wait_time;
          else
          state <= idle; --wait until button is pressed.
          end if;
          signal_out <= '0';
        when wait_time =>
          if (count = COUNT_MAX) then
            count <= count;
            if (signal_in = '1') then
              signal_out <= '1';
            else
              state <= idle;
              count <= 0;
            end if;
          else
            count <= count + 1;
          end if;
      end case;
    end if;
  end if;
end process;

end implementation;
