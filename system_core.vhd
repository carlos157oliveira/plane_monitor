library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity system_core is
    Port (
        sel        : in std_logic_vector(1 downto 0);   			  -- seletor de prioridade
        in_timer   : in std_logic_vector(15 downto 0) := ( others => '0' ); 			  -- cronômetro
        in_temp    : in std_logic_vector(7 downto 0);   			  -- temperatura
        in_humid   : in std_logic_vector(7 downto 0);   			  -- umidade
        in_alt     : in std_logic_vector(7 downto 0);   			  -- altitude
        ctrl       : in std_logic_vector(1 downto 0) := "00";    -- vetor de controle 4 bits
		  timer_neg  : in std_logic;					  		  			  -- sinal +/- timer (sempre '0')
		  temp_neg   : in std_logic;					  		  			  -- sinal +/- temperatura
		  humid_neg  : in std_logic;					  		  			  -- sinal +/- umidade (sempre '0')
		  alt_neg    : in std_logic;					  		  			  -- sinal +/- altitude (sempre '0')
        out_data   : out std_logic_vector(15 downto 0); 		 	  -- saída para o display
		  out_neg    : out std_logic;							  			  -- saída de valor de sinal +/-
		  led_display: out std_logic_vector(3 downto 0) 			  -- LED de identifição
    );
end system_core;

architecture Behavioral of system_core is
    -- Definição dos estados
    type state_type is (S_TIMER, S_TEMP, S_HUMID, S_ALT);
    signal state : state_type := S_TIMER; -- Estado inicial definido como cronômetro
    signal selected_input : std_logic_vector(15 downto 0) := (others => '0');
	 signal selected_neg : std_logic := '0';
	 signal selected_led : std_logic_vector(3 downto 0) := "0001";
	 constant const_zero : std_logic_vector(7 downto 0) := (others => '0');

begin

    -- Processo da máquina de estados, reagindo às mudanças de `ctrl`
    process (ctrl, sel, in_timer, in_temp, in_humid, in_alt)
    begin
        -- Verifica e prioriza os estados com alarme
        case (sel) is
            when "01" =>
                state <= S_TEMP;
            when "11" =>
                state <= S_HUMID;
            when "10" =>
                state <= S_ALT;
					 
				-- Caso não haja alarmes, altera para os estados dos botões
            when others =>
					 case (ctrl) is
						when "00" =>
							state <= S_TIMER;
						when "01" =>
							state <= S_TEMP;
						when "10" =>
							state <= S_HUMID;
						when "11" =>
							state <= S_ALT;
						when others =>
							state <= S_TIMER;
						end case;
        end case;
		  
		  -- Altera os outputs de acordo com os estados
		  case (state) is
				when S_TIMER =>
					 out_data <= in_timer;
					 out_neg <= timer_neg;
					 led_display <= "0001";
				when S_TEMP =>
					 out_data <= const_zero & in_temp;
					 out_neg <= temp_neg;
					 led_display <= "0010";
				when S_HUMID =>
					 out_data <= const_zero & in_humid;
					 out_neg <= humid_neg;
					 led_display <= "0100";
				when S_ALT =>
					 out_data <= const_zero & in_alt;
					 out_neg <= alt_neg;
					 led_display <= "1000";
			end case;

    end process;
	 
end Behavioral;
