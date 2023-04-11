%include "io64.inc"
section .text
global main

factorial:
    push rbp
    mov rbp, rsp
    
    ; 16byte space allocation
    sub rsp, 16
    
    ; top value of previous stack is considered as function parameter(rdx)
    mov rdx, [rbp+16]   
    
    ; if rdx==1 then rax=1; return;
    cmp rdx, 1
    je .is1

    ; if rdx!=1
    ; store n
    push rdx            ; store received parameter
    
    ; rax = factorial(n-1)
    dec rdx             ; rdx--
    push rdx            ; store rdx. it is passed to child function
    call factorial      ; call child function

    pop rbx             ; remove unnecessary value
    
    ; rax = factorial(n-1) * n
    pop rdx             ; get stored value
    imul rax, rdx       ; rax *= rdx (rax is considered as return value)
    
    mov rsp, rbp
    pop rbp
    ret
    
    .is1:
    ; if rdx==1 then rax=1; return;
    mov rax, 1
    mov rsp, rbp
    pop rbp
    ret

main:
    push 5
    call factorial
    PRINT_DEC 8, rax
    pop rdx
    xor rax, rax
    ret