%include "io64.inc"

section .data
    a dw 0
    b dw 0

section .text
global main

main:
    GET_DEC 2, [a] ; 2byte decimal input a
    GET_DEC 2, [b] ; 2byte decimal input b
    mov eax, [a]
    mov edx, [b]
    imul eax, edx
    PRINT_DEC 2, eax
    
    xor rax, rax
    ret