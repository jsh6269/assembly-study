%include "io64.inc"

section .text
global main

main:
    mov eax, 01101b     ; eax = 13
    mov edx, 10110b     ; edx = 22
    
    not eax
    PRINT_DEC 2, eax    ; eax = ~eax (-14)
    NEWLINE
    mov eax, 13
    
    and eax, edx        ; eax = eax & edx (= 00100b = 4)
    PRINT_DEC 2, eax
    NEWLINE
    mov eax, 13
    
    or eax, edx         ; eax = eax | edx (=11111b = 31)
    PRINT_DEC 2, eax
    NEWLINE
    mov eax, 13
    
    xor eax, edx        ; eax = eax ^ edx (=11011b = 27)
    PRINT_DEC 2, eax
    NEWLINE
    mov eax, 13
        
    xor rax, rax
    ret