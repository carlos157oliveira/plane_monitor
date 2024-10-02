# Projeto Monitoramento Avião

Projeto do Intel Quartus Prime.
Disciplina FPGA, VHDL.

## Observações

**main.bdf** é o arquivo final para o hardware do avião.

**main_instrumented.bdf** contém tratamento de switches para simular na placa Altera DE2 115.

**main_generated_source.vhd** é o código VHDL gerado automaticamente correspondente a **main.bdf**, com modificação somente para alterar a constante de frequência do clock (CLOCK_FREQUENCY) para rodar o teste de integração em **main_testbench.vhd**.
