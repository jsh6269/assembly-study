%include "io64.inc"

section .text
global main
main:
    mov eax, 0
    mov ecx, 100
    
L1:
    ; add from 1 to 100
    add eax, ecx
    dec ecx
    cmp ecx, 0
    jne L1

L1_end:
    PRINT_DEC 2, eax
    NEWLINE
    mov eax, 0
    mov ecx, 1

L2:
    ; add 1, 3, 5, ..., 39
    add eax, ecx
    cmp ecx, 39
    jnl L2_end    
    add ecx, 2
    jmp L2

L2_end:
    PRINT_DEC 2, eax
    xor rax, rax
    ret