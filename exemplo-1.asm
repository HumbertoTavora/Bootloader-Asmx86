org 0x7c00
jmp 0x0000:_start

_start:
    xor ax, ax
    xor bx, bx
    
    loop:
        inc bl
        cmp bl, 10
        je fim
        mov al, bl
        add al, 48
        call putchar
        call space
        jmp loop

putchar:
    mov ah, 0eh ;modo de imprmir na tela
    int 10h ;imprime o que tá em al
    ret
;função que coloca um único caracter na tela

space: 
    mov ah, 0eh ;modo de imprmir na tela
    mov al, 32
    int 10h ;imprime o que tá em al
    ret

fim:
    mov al, 0
    stosb
    call endl
    ret

endl:
    mov al, 10 ;10 = nova linha
    call putchar
    mov al, 13 ;13 = carriage return
    call putchar


times 510 - ($ - $$) db 0
dw 0xaa55 ; assinatura de boot