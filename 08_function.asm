%include "io64.inc"

section .text
global main

printHi:
    PRINT_STRING "Hi!"
    NEWLINE
    ret

main:
    mov ecx, 5
    .line12: call printHi
    dec ecx
    cmp ecx, 0
    jne .line12
    
    xor rax, rax
    ret