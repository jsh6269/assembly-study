%include "io64.inc"

section .text
global main

main:
    mov eax, 7          ; eax = 7
    PRINT_DEC 2, eax
    NEWLINE
    
    mov edx, 13         ; edx = 13
    PRINT_DEC 2, edx
    NEWLINE
    
    mov edx, eax        ; edx = eax (=7)
    PRINT_DEC 2, edx
    NEWLINE
    
    inc eax             ; eax++
    dec edx             ; edx--
    PRINT_DEC 2, eax
    NEWLINE
    PRINT_DEC 2, edx    
    NEWLINE
        
    add eax, 5          ; eax = eax + 5
    sub eax, 2          ; eax = eax - 2
    PRINT_DEC 2, eax
    NEWLINE
    
    ; ax is consisted of ah and al (dx => dl, dh)
    mov eax, 0          ; init
    mov al, 11          ; al = 11
    mov dl, 6           ; dl = 6
    mul dl              ; al *= dl
    PRINT_DEC 2, al
    NEWLINE
    
    mov eax, 11         ; eax = 11
    mov dl, 6           ; dl = 6
    div dl              ; ax / dl = (al => quotient, ah => remainder)
    mov dl, ah          ; dl = ah (remainder)
    PRINT_STRING "Quotient: "
    PRINT_DEC 2, al
    NEWLINE
    PRINT_STRING "Remainder: "
    PRINT_DEC 2, dl
    NEWLINE
    
    mov eax, 3          ; eax = 3
    mov edx, 12         ; edx = 12
    imul eax, edx       ; eax *= edx
    PRINT_DEC 2, eax
    
    
    xor rax, rax
    ret