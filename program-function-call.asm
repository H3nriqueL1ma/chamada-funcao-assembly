%include 'lib.inc'

section .text

global _start

_start:
    LEA         ESI, [BUFFER]; Load Effective Address
    ADD         ESI, TAB
    MOV         BYTE[ESI], LF

    DEC         ESI
    MOV         BYTE[ESI], 'C'

    DEC         ESI
    MOV         BYTE[ESI], 'B'

    DEC         ESI
    MOV         BYTE[ESI], 'A'
    
    CALL        resultOutput

    MOV         EAX, SYS_EXIT
    MOV         EBX, RET_EXIT
    INT         SYS_CALL