        section .text
        global  mystrrev
mystrrev:
        mov     rcx, rdi
        mov     rdx, rcx

find_eos:
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
        mov     rax, rdi
        ret
