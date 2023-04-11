%include "io64.inc"

section .data
    ; dd = 32bit (the same as eax)
    grade dd 0

section .text
global main
main:
    GET_DEC 2, [grade]   
    mov eax, [grade]
    
    cmp eax, 90
    jnl gradeA
    cmp eax, 80
    jnl gradeB
    cmp eax, 70
    jnl gradeC
    jmp gradeF
    
gradeA:
    PRINT_STRING "You're grade is A"
    jmp end
gradeB:
    PRINT_STRING "You're grade is B"
    jmp end
gradeC:
    PRINT_STRING "You're grade is C"
    jmp end
gradeF:
    PRINT_STRING "You're grade is F"
    
end:
    NEWLINE
    PRINT_STRING "Process ended"
    
    xor rax, rax
    ret