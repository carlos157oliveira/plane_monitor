library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity button_process is
    port (
        clk : in  std_logic;
        btn_crono : in std_logic;  -- cronômetro/zera
		  btn_pausa : in std_logic;  -- pausa
		  btn_zerar : in std_logic;  -- zerar
        btn_termo : in std_logic;  -- termômetro
        btn_psico : in std_logic;  -- psicômetro
        btn_altim : in std_logic;  -- altímetro
        ctrl : out std_logic_vector(1 downto 0)  -- saída que indica botão que foi pressionado
    );
end button_process;

architecture arch_button of button_process is
    -- registradores para armazenar o estado anterior de cada botão
    signal btn_crono_reg, btn_pausa_reg, btn_zerar_reg, btn_termo_reg, btn_psico_reg, btn_altim_reg : std_logic;
	 signal ctrl_reg : std_logic_vector(1 downto 0) := "00"; -- registrador pra manter o valor
begin
    -- armazenar o estado anterior dos botões
    process(clk)
    begin
        if rising_edge(clk) then
            btn_crono_reg <= btn_crono;
				btn_pausa_reg <= btn_pausa;
				btn_zerar_reg <= btn_zerar;
            btn_termo_reg <= btn_termo;
            btn_psico_reg <= btn_psico;
            btn_altim_reg <= btn_altim;
        end if;
    end process;

    -- detectar a borda de descida e define 'ctrl'
    process(clk)
    begin
	 if rising_edge(clk) then
        if (btn_crono_reg = '0' and btn_crono = '1') then
            ctrl_reg <= "00";  -- botão cronômetro
		  elsif (btn_pausa_reg = '0' and btn_pausa = '1') then
            ctrl_reg <= "00";  -- botão pausa
		  elsif (btn_zerar_reg = '0' and btn_zerar = '1') then
            ctrl_reg <= "00";  -- botão zerar
        elsif (btn_termo_reg = '0' and btn_termo = '1') then
            ctrl_reg <= "01";  -- botão termômetro
        elsif (btn_psico_reg = '0' and btn_psico = '1') then
            ctrl_reg <= "10";  -- botão psicômetro
        elsif (btn_altim_reg = '0' and btn_altim = '1') then
            ctrl_reg <= "11";  -- botão altímetro
        end if;
		  end if;
    end process;
	 
	 -- registra ctrl_reg ao ctrl
    ctrl <= ctrl_reg;

end arch_button;