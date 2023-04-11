%include "io64.inc"

section .text
global main

main:
    ; stack frame
    push rbp        ; push previous rbp (to return after process)
    mov rbp, rsp    ; rbp = rsp (current stack pointer val)
    ; our stack starts from rsp which is the end of the previously used stack
    
    sub rsp, 0x80   ; allocate 128byte size
    
    mov rax, 5
    push rax        ; push 5 (4byte)
    dec rax
    push rax        ; push 4
    dec rax
    push rax        ; push 3
    dec rax
    push rax        ; push 2
    
    mov rax, 1
    pop rdx
    imul rax, rdx   ; eax *= 2
    pop rdx
    imul rax, rdx   ; eax *= 3
    pop rdx
    imul rax, rdx   ; eax *= 4
    pop rdx
    imul rax, rdx   ; eax *= 5
    
    PRINT_DEC 2, rax    
    
    xor rax, rax
    
    ; -- leave means --
    ; mov rsp, rbp          => rbp means previous rsp (before calling main)
    ; pop rbp               => rbp = previous rbp
    
    leave
    ret