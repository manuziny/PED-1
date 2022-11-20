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
    
 signal sen0, sen1, sen2, sen3 : in STD_LOGIC; 

begin 

    UUT: conv_bcd port map
    (
        en0 => sen0,
        en1 => sen1,
        en2 => sen2,
        en3 => sen3
    );

    Teste: process begin 

    -- recebe 0
    sen0 <= '0';
    sen1 <= '0';
    sen2 <= '0';
    sen3 <= '0';
    wait for 100us;

    -- recebe 1
    sen0 <= '1';
    sen1 <= '0';
    sen2 <= '0';
    sen3 <= '0';
    wait for 100us;

    --recebe 2
    sen0 <= '0';
    sen1 <= '1';
    sen2 <= '0';
    sen3 <= '0';
    wait for 100us;

    --recebe 3
    sen0 <= '1';
    sen1 <= '1';
    sen2 <= '0';
    sen3 <= '0';
    wait for 100us;

    --recebe 4
    sen0 <= '0';
    sen1 <= '0';
    sen2 <= '1';
    sen3 <= '0';
    wait for 100us;

    --recebe 5
    sen0 <= '1';
    sen1 <= '0';
    sen2 <= '1';
    sen3 <= '0';
    wait for 100us;

    --recebe 6
    sen0 <= '0';
    sen1 <= '1';
    sen2 <= '1';
    sen3 <= '0';
    wait for 100us;

    --recebe 7
    sen0 <= '1';
    sen1 <= '1';
    sen2 <= '1';
    sen3 <= '0';
    wait for 100us;

    --recebe 8
    sen0 <= '0';
    sen1 <= '0';
    sen2 <= '0';
    sen3 <= '1';
    wait for 100us;

    --recebe 9
    sen0 <= '1';
    sen1 <= '0';
    sen2 <= '0';
    sen3 <= '1';
    wait for 100us;

    --recebe A
    sen0 <= '1';
    sen1 <= '0';
    sen2 <= '1';
    sen3 <= '0';
    wait for 100us;

    --recebe B
    sen0 <= '1';
    sen1 <= '1';
    sen2 <= '0';
    sen3 <= '1';
    wait for 100us;

    --recebe C
    sen0 <= '0';
    sen1 <= '0';
    sen2 <= '1';
    sen3 <= '1';
    wait for 100us;

    --recebe D
    sen0 <= '1';
    sen1 <= '0';
    sen2 <= '1';
    sen3 <= '1';
    wait for 100us;

    --recebe E
    sen0 <= '0';
    sen1 <= '1';
    sen2 <= '1';
    sen3 <= '1';
    wait for 100us;

    --recebe F
    sen0 <= '1';
    sen1 <= '1';
    sen2 <= '1';
    sen3 <= '1';
    wait;

    end process;

end behavioral;