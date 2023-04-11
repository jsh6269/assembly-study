%include "io64.inc"

section .text
global main

main:
    ; bubble suort
    ; 62, 91, 43, 14, 45, 36, 31, 22, 83
    push rbp
    mov rbp, rsp
    sub rsp, 72
    
    push 62  ; [rsp+64]
    push 91  ; [rsp+56]
    push 43  ; [rsp+48]
    push 14  ; [rsp+40]
    push 45  ; [rsp+32]
    push 36  ; [rsp+24]
    push 31  ; [rsp+16]
    push 22  ; [rsp+8]
    push 83  ; [rsp]
    
    mov rcx, 0
    .forLoop1:  ; rcx < 8
        mov rdx, 0
        mov rbx, 8
        sub rbx, rcx
        imul rbx, 8
        .forLoop2:  ; rdx < rbx = 8*(8-rcx)
            ; if arr[rsp+rdx] > array[rsp+rdx+8] then swap it
            mov rax, [rsp+rdx]
            cmp rax, [rsp+rdx+8]
            jl .noswap
            .swap:
            mov rax, [rsp+rdx]
            xchg rax, [rsp+rdx+8]
            xchg rax, [rsp+rdx]
            .noswap:
            add rdx, 8
            cmp rdx, rbx
            jne .forLoop2
        inc rcx
        cmp rcx, 8
        jne .forLoop1                      
    
    mov rcx, 0
    .printLoop:
        PRINT_DEC 8, [rsp+rcx]
        PRINT_STRING " "
        add rcx, 8
        cmp rcx, 72
        jne .printLoop
        
    xor rbx, rbx
    xor rax, rax
    leave
    ret