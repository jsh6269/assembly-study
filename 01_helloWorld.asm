%include "io64.inc"

section .data
    num1 dw 25
    num2 dw 10
    ; 0=null, indicates end of line
    msg1 db "Hi", 0 
    msg2 db "world", 0xa, 0     ; 0xa=\n

section .text
global main

main:
    PRINT_STRING "Hello, World!"
    NEWLINE
    PRINT_DEC 2, num1
    NEWLINE
    PRINT_DEC 2, num2
    NEWLINE
    PRINT_STRING msg1
    PRINT_STRING ", "
    PRINT_STRING msg2
    PRINT_STRING "Assembly study!"
        
    xor rax, rax
    ret