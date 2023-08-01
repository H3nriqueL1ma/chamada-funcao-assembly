%include 'lib.inc'

section .text 

global _start 

_start:
    LEA         ESI, [BUFFER]  ; Carrega o endereço inicial do buffer 'BUFFER' no registrador ESI.

    ADD         ESI, TAB       ; Adiciona o valor da constante 'TAB' ao endereço em ESI para apontar para a próxima posição no buffer.
    MOV         BYTE[ESI], LF  ; Move o caractere de nova linha (LF) para a posição atual no buffer.

    DEC         ESI            ; Decrementa o endereço em ESI para apontar para a posição anterior no buffer.
    MOV         BYTE[ESI], 'C' ; Move o caractere 'C' para a posição atual no buffer.

    DEC         ESI            ; Decrementa o endereço em ESI para apontar para a posição anterior no buffer.
    MOV         BYTE[ESI], 'B' ; Move o caractere 'B' para a posição atual no buffer.

    DEC         ESI            ; Decrementa o endereço em ESI para apontar para a posição anterior no buffer.
    MOV         BYTE[ESI], 'A' ; Move o caractere 'A' para a posição atual no buffer.

    CALL        resultOutput   ; Chama a sub-rotina 'resultOutput' para exibir o conteúdo de 'BUFFER' na saída padrão.

    MOV         EAX, SYS_EXIT  ; Move o número da chamada de sistema para encerrar o programa (SYS_EXIT) para o registrador EAX.
    MOV         EBX, RET_EXIT  ; Move o código de retorno para a chamada de sistema SYS_EXIT (RET_EXIT) para o registrador EBX.
    INT         SYS_CALL       ; Chama o sistema operacional para encerrar o programa.
