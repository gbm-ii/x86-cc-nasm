 ; x86-64 version
        section .text
        global  mystrrev
mystrrev:
        mov     rcx, rdi        ; head ptr
        mov     rdx, rcx        ; tail ptr

find_eos:       ; search for trailing NUL
        mov     al, [rdx]
        inc     rdx
        test    al, al
        jnz     find_eos

        sub     rdx, 2
swap:
        cmp     rdx, rcx
        jbe     fin
        mov     al, [rcx]
        xchg    al, [rdx]
        mov     [rcx], al
        inc     rcx
        dec     rdx
        jmp     swap

fin:
        mov     rax, rdi        ; return the original arg
        ret
