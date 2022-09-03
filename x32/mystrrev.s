; x32 version - 32-bit pointers
        section .text
        global  mystrrev
mystrrev:
        mov     ecx, edi
        mov     edx, ecx

find_eos:
        mov     al, [rdx]
        inc     edx
        test    al, al
        jnz     find_eos

        sub     edx, 2
swap:
        cmp     edx, ecx
        jbe     fin
        mov     al, [rcx]
        xchg    al, [rdx]
        mov     [rcx], al
        inc     ecx
        dec     edx
        jmp     swap

fin:
        mov     eax, edi
        ret
