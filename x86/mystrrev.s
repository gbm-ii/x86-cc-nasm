; An equivalent of strrev() function from C standard library
; x86 32-bit version, Unix- and Windows-compatible
        section .text
        global  mystrrev
mystrrev:
        push    ebp
        mov     ebp, esp

        mov     ecx, [ebp+8]    ; head ptr
        mov     edx, ecx        ; tail ptr

find_eos:       ; search for trailing NUL
        mov     al, [edx]
        inc     edx
        test    al, al
        jnz     find_eos
                        ; edx points past the trailing NUL now
        sub     edx, 2  ; make edx point to the last char of the string
swap:
        cmp     edx, ecx
        jbe     fin
        mov     al, [ecx]
        xchg    al, [edx]
        mov     [ecx], al
        inc     ecx     ; move ptr forward
        dec     edx     ; move ptr backward
        jmp     swap

fin:
        mov     eax, [ebp+8]    ; return the original arg
        pop     ebp
        ret
