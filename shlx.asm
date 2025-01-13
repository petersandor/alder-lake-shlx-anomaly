bits 64

segment .text
global main

main:
    mov rdx, 10000      ; rdx = 10000
    xor rax, rax        ; rax = 0
.LOOP:
    mov rcx, 1          ; rcx = 1
    shlx rax, rax, rcx  ; rax = rax << rcx
                        ; (repeated 10,000 times)
.endr:
    dec rdx
    jnz .LOOP           ; (loop 10,000 times)
    xor eax, eax
    ret                 ; return 0