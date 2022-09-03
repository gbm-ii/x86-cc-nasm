        section .text
        global  mystrrev
mystrrev:
        push    ebp
        mov     ebp, esp

        mov     ecx, [ebp+8]
        mov     edx, ecx

find_eos:
        mov     al, [edx]
        inc     edx
        test    al, al
        jnz     find_eos

        sub     edx, 2
swap:
        cmp     edx, ecx
        jbe     fin
        mov     al, [ecx]
        xchg    al, [edx]
        mov     [ecx], al
        inc     ecx
        dec     edx
        jmp     swap

fin:
        mov     eax, [ebp+8]
        pop     ebp
        ret
    