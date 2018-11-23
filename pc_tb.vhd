library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pc_tb is
end pc_tb;

architecture pc_test of pc_tb is

  component pc is
    port(clk,rst: in std_logic;
         s: out std_logic_vector(6 downto 0));
  end component;

  signal clk,rst: std_logic;
  signal s: std_logic_vector(6 downto 0);

begin
  clk1: entity work.clock(clock_architecture) port map(clk => clk);
  uut: entity work.pc(pc_beh) port map(clk => clk, rst => rst, s => s);
  process
  begin
    rst <= '1';
    wait for 10 ns;
    rst <= '0';
    wait for 100 ns;
    wait;
  end process;
end pc_test;
