LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity tb_conv_bcd is
end tb_conv_bcd;

architecture behavioral of tb_conv_bcd is

    component conv_bcd is -- importa o codigo conversor bcd
        port
        (
            -- Entradas
            en0, en1, en2, en3 : in STD_LOGIC;

            -- Saidas
            A, B, C, D, E, F, G : out STD_LOGIC

        );
    end component;
    
signal sen0, sen1, sen2, sen3 : STD_LOGIC; 
signal sbcd : std_logic_vector(6 downto 0); -- aux de visualizacao no tb
signal dec : std_logic_vector (3 downto 0); -- aux de visualizacao da entrada
begin 
    
    dec <= sen0 & sen1 & sen2 & sen3;
    
    UUT: conv_bcd port map
    (
        en0 => sen0,
        en1 => sen1,
        en2 => sen2,
        en3 => sen3,
        A => sbcd(0),
        B => sbcd(1),
        C => sbcd(2),
        D => sbcd(3),
        E => sbcd(4),
        F => sbcd(5),
        G => sbcd(6)
    );

    Teste: process begin 

    -- recebe 0
    sen0 <= '0';
    sen1 <= '0';
    sen2 <= '0';
    sen3 <= '0';
    wait for 100ns;

    -- recebe 1
    sen0 <= '1';
    sen1 <= '0';
    sen2 <= '0';
    sen3 <= '0';
    wait for 100ns;

    --recebe 2
    sen0 <= '0';
    sen1 <= '1';
    sen2 <= '0';
    sen3 <= '0';
    wait for 100ns;

    --recebe 3
    sen0 <= '1';
    sen1 <= '1';
    sen2 <= '0';
    sen3 <= '0';
    wait for 100ns;

    --recebe 4
    sen0 <= '0';
    sen1 <= '0';
    sen2 <= '1';
    sen3 <= '0';
    wait for 100ns;

    --recebe 5
    sen0 <= '1';
    sen1 <= '0';
    sen2 <= '1';
    sen3 <= '0';
    wait for 100ns;

    --recebe 6
    sen0 <= '0';
    sen1 <= '1';
    sen2 <= '1';
    sen3 <= '0';
    wait for 100ns;

    --recebe 7
    sen0 <= '1';
    sen1 <= '1';
    sen2 <= '1';
    sen3 <= '0';
    wait for 100ns;

    --recebe 8
    sen0 <= '0';
    sen1 <= '0';
    sen2 <= '0';
    sen3 <= '1';
    wait for 100ns;

    --recebe 9
    sen0 <= '1';
    sen1 <= '0';
    sen2 <= '0';
    sen3 <= '1';
    wait for 100ns;

    --recebe A
    sen0 <= '0';
    sen1 <= '1';
    sen2 <= '0';
    sen3 <= '1';
    wait for 100ns;

    --recebe B
    sen0 <= '1';
    sen1 <= '1';
    sen2 <= '0';
    sen3 <= '1';
    wait for 100ns;

    --recebe C
    sen0 <= '0';
    sen1 <= '0';
    sen2 <= '1';
    sen3 <= '1';
    wait for 100ns;

    --recebe D
    sen0 <= '1';
    sen1 <= '0';
    sen2 <= '1';
    sen3 <= '1';
    wait for 100ns;

    --recebe E
    sen0 <= '0';
    sen1 <= '1';
    sen2 <= '1';
    sen3 <= '1';
    wait for 100ns;

    --recebe F
    sen0 <= '1';
    sen1 <= '1';
    sen2 <= '1';
    sen3 <= '1';
    wait;

    end process;

end behavioral;