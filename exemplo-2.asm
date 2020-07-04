org 0x7c00
jmp 0x0000:_start

_start:
    xor ax, ax
  

    mov ah, 0 ;escolhe modo video
    mov al, 12h ;modo VGA
    int 10h

    mov ah, 0xb ;scolhe cor da tela
    mov bh, 0
    mov bl, 2 ;cor da tela
    int 10h
    


times 510 - ($ - $$) db 0
dw 0xaa55 ; assinatura de boot