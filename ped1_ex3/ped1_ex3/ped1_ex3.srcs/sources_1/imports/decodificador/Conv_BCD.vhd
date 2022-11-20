library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity conv_bcd is

    port
    (
        -- Sinais de entrada
        en0, en1, en2, en3 : in STD_LOGIC;

        -- Sinais de saida
        A, B, C, D, E, F, G : out STD_LOGIC

    );
end conv_bcd;

architecture behavioral of conv_bcd is
    signal S : STD_LOGIC_VECTOR(6 DOWNTO 0); -- sinal aux das saidas.
    signal sEN : STD_LOGIC_VECTOR(3 DOWNTO 0); -- sinal aux das entradas.
begin 
    sEN <= en3 & en2 & en1 & en0; -- concatenacao das entradas.
    with sEN select
        S <= "0000001"  when "0000",-- '0'
		"1001111"  when "0001",	-- '1'
		"0010010"  when "0010",	-- '2'
		"0000110"  when "0011",	-- '3'
		"1001100"  when "0100",	-- '4'
		"0100100"  when "0101",	-- '5'
		"0100000"  when "0110",	-- '6'
		"0001111"  when "0111",	-- '7'
		"0000000"  when "1000",	-- '8'
		"0000100"  when "1001",	-- '9'
		"0001000"  when "1010",	-- 'A'
		"1100000"  when "1011",	-- 'B'
		"0110001"  when "1100",	-- 'C'
	  	"1000010"  when "1101",	-- 'D'	
		"0110000"  when "1110",	-- 'E'
		"0111000"  when "1111",	-- 'F'
     	"1111111"  when others; 
    A <= S(0);
    B <= S(1);
    C <= S(2);
    D <= S(3);
    E <= S(4);
    F <= S(5);
    G <= S(6);

end behavioral;

    