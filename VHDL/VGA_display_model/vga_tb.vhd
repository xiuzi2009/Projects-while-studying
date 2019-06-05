library ieee;
USE ieee.std_logic_arith.all; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity vga_tb is
end vga_tb;
architecture behavior of vga_tb is
-- Component Declaration for the Unit Under Test (UUT)
component vga
PORT
 (
	clk  : IN STD_LOGIC; 
	rst  : IN STD_LOGIC;
	
	h_sync : OUT STD_LOGIC;
	v_sync : OUT STD_LOGIC;
	Vid: OUT  STD_LOGIC_VECTOR(23 DOWNTO 0) 
 );
end component;
--Inputs
signal vga_tb_clk : STD_LOGIC := '0';
signal vga_tb_rst : STD_LOGIC := '0';

--Outputs
signal vga_tb_h_sync : STD_LOGIC ;
signal vga_tb_v_sync : STD_LOGIC ;
signal vga_tb_vid 	: STD_LOGIC_VECTOR(23 DOWNTO 0);
-- Clock period definitions
constant vga_tb_clock_period : time := 38.125 ns;
begin
-- Instantiate the Unit Under Test (UUT)
uut : vga port map (                  -- set ports to test bench 
clk => vga_tb_clk,
rst => vga_tb_rst,
h_sync => vga_tb_h_sync,
v_sync => vga_tb_v_sync,
Vid => vga_tb_vid
);
-- Clock process definitions
vga_clock_process : process
begin
vga_tb_clk <= '0';							
wait for vga_tb_clock_period/2;			
vga_tb_clk <= '1';
wait for vga_tb_clock_period/2;
end process;
-- Stimulus process
stim_proc : process
begin
-- hold reset state for 100us.
vga_tb_rst <= '1';
wait for vga_tb_clock_period*3;
vga_tb_rst <= '0';
wait for vga_tb_clock_period*1;
wait;
end process;
end;