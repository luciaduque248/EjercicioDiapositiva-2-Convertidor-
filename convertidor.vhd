library ieee;
use ieee.std_logic_1164.all;

entity convertidor is
    port (
        entrada: in std_logic_vector(6 downto 0);        -- Entrada de 7 bits para los días de la semana
        orden_dia: out std_logic_vector(3 downto 0);     -- Salida en BCD de 4 bits para el orden del día
        es_laborable: out std_logic;                     -- Salida que indica si es laborable o festivo
		  
        an: in std_logic;                                -- Declaración de la señal an
        segmentos: buffer std_logic_vector(6 downto 0)   -- Declaración de la señal segmentos
    );
end entity convertidor;

architecture convertidor_arch of convertidor is
    signal seg: std_logic_vector(6 downto 0); -- Señal para los segmentos del display de 7 segmentos

begin
    -- Mux 4 a 1 para seleccionar los segmentos a mostrar
		-- Si an es '1', seg toma los valores de segmentos, si no, 'Z'
		seg <= segmentos when an = '1' else (others => 'Z');  
	 
    -- Codificador de 8 a 3 para determinar si es laborable o festivo
    process(entrada)
    begin
        case entrada is
            when "0000001" => orden_dia <= "0001"; -- Lunes
            when "0000010" => orden_dia <= "0010"; -- Martes
            when "0000100" => orden_dia <= "0011"; -- Miércoles
            when "0001000" => orden_dia <= "0100"; -- Jueves
            when "0010000" => orden_dia <= "0101"; -- Viernes
            when "0100000" => orden_dia <= "0110"; -- Sábado
            when "1000000" => orden_dia <= "0111"; -- Domingo
					when others => orden_dia <= "0000"; -- Valor por defecto
        end case;
        
        -- Determinar si es laborable o festivo (laborable si es lunes a viernes)
        if entrada(5 downto 1) = "00000" then
            es_laborable <= '1'; -- Laborable
        else
            es_laborable <= '0'; -- Festivo
        end if;
    end process;
	 
end architecture convertidor_arch;
