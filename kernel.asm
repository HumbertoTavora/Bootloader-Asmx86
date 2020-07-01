org 0x7e00
jmp start
humberto db 'HUMBERTO COSTA - hcct', 0
edinaldo db 'EDINALDO FILHO - ebcf2', 0
bernardo db 'RAFAEL BERNARDO - rbnn', 0
showS db 'SHOW', 0
doMilhaoS db 'DO MILHAO!', 0
jogarS db 'JOGAR', 0
ajudaS db 'AJUDA', 0
integrantesS db 'INTEGRANTES', 0
voltarS db 'VOLTAR', 0
instrucoesC db 'UP      - sobe', 0
instrucoesD db 'DOWN    - desce', 0
instrucoesE db 'ENTER   - confirmar', 0


limpaTela:
;; Limpa a tela dos caracteres colocados pela BIOS
	; Set the cursor to top left-most corner of screen
	mov dx, 0 
    mov bh, 0      
    mov ah, 0x2
    int 0x10

    ; print 2000 blanck chars to clean  
    mov cx, 2000 
    mov bh, 0
    mov al, 0x20 ; blank char
    mov ah, 0x9
    int 0x10
    
    ;Reset cursor to ton left-most corner of screen
    mov dx, 0 
    mov bh, 0      
    mov ah, 0x2
    int 0x10
ret

fundoMenu:
    mov ah, 4  
	mov bh, 0 
	mov bl, 9
	int 10h 
ret

moveCursor1:
    mov bh, 0 
    mov dh, 4 ; Linhas  
    mov dl, 18  ; Colunas
    mov ah, 0x2
    int 0x10
ret
moveCursor2:
    mov bh, 0 
    mov dh, 6 ; Linhas  
    mov dl, 15  ; Colunas
    mov ah, 0x2
    int 0x10
ret
moveCursor3:
    mov bh, 0 
    mov dh, 12 ; Linhas  
    mov dl, 16  ; Colunas
    mov ah, 0x2
    int 0x10
ret
moveCursor4:
    mov bh, 0 
    mov dh, 13 ; Linhas  
    mov dl, 16  ; Colunas
    mov ah, 0x2
    int 0x10
ret
moveCursor5:
    mov bh, 0 
    mov dh, 12 ; Linhas  
    mov dl, 15  ; Colunas
    mov ah, 0x2
    int 0x10
ret
moveCursor6:
    mov bh, 0 
    mov dh, 6 ; Linhas  
    mov dl, 18  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursor7:
    mov bh, 0 
    mov dh, 8 ; Linhas  
    mov dl, 18 ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursor8:
    mov bh, 0 
    mov dh, 14 ; Linhas  
    mov dl, 22  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursor10:
    mov bh, 0 
    mov dh, 12 ; Linhas  
    mov dl, 10  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursor11:
    mov bh, 0 
    mov dh, 13 ; Linhas  
    mov dl, 10  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursor12:
    mov bh, 0 
    mov dh, 14 ; Linhas  
    mov dl, 10  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursor13:
    mov bh, 0 
    mov dh, 17 ; Linhas  
    mov dl, 17  ; Colunas
    mov ah, 0x2
    int 0x10
ret
moveCursor14:
    mov bh, 0 
    mov dh, 17 ; Linhas  
    mov dl, 16  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursor15:
    mov bh, 0 
    mov dh, 16 ; Linhas  
    mov dl, 10  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursor16:
    mov bh, 0 
    mov dh, 17 ; Linhas  
    mov dl, 10  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursor17:
    mov bh, 0 
    mov dh, 16 ; Linhas  
    mov dl, 9  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursor18:
    mov bh, 0 
    mov dh, 10 ; Linhas  
    mov dl, 12  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursor19:
    mov bh, 0 
    mov dh, 11 ; Linhas  
    mov dl, 12  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursor20:
    mov bh, 0 
    mov dh, 12 ; Linhas  
    mov dl, 12  ; Colunas
    mov ah, 0x2
    int 0x10
ret

start:
    xor ax, ax
    mov ds, ax
    mov es, ax


 call limpaTela
 call animacaoColorida    

    ; mudar fundo
    call fundoMenu
    ; mudar cor do curso
    mov bl, 4
    call limpaTela
    
    

    call printaQuadrado
       
    

    call moveCursor1
    mov si, showS
    call printString

    call moveCursor2
    mov si, doMilhaoS
    call printString

    call moveCursor3
    mov si, jogarS
    call printString

    call moveCursor4
    mov si, ajudaS
    call printString

    call moveCursor5
    call printaSeta
    call moveCursor5


    call mudancaSeta

     mov al, 'T' 
    mov ah, 0xe
    int 10h
done:
    jmp $

printaSeta:
        mov ah, 0xe
		mov al, '>'
		mov bh, 0
		mov bl, 0xf
		int 10h
ret

animacaoColorida:

	;Colorindo a tela de preto.
	mov ah, 0xb  
	mov bh, 0     
	mov bl, 0 
	int 10h	

	mov ah, 02h
	mov bh, 00h
	mov dh, 08h
	mov dl, 24h
	int 10h
    mov dx, 500
	call delay

	;Colorindo a tela de vermelho.
	mov ah, 0xb  
	mov bh, 0     
	mov bl, 4
	int 10h

	mov ah, 02h
	mov bh, 00h
	mov dh, 08h
	mov dl, 24h
	int 10h

    mov dx, 500
	call delay

	;Colorindo a tela de preto.
	mov ah, 0xb  
	mov bh, 0     
	mov bl, 0  
	int 10h

	mov ah, 02h
	mov bh, 00h
	mov dh, 08h
	mov dl, 24h
	int 10h
        inc dx
        inc cx
    mov dx, 500
	call delay

	;Colorindo a tela de vermelho (fim).
	mov ah, 0xb  
	mov bh, 0     
	mov bl, 4   
	int 10h

	mov ah, 02h
	mov bh, 00h
	mov dh, 08h
	mov dl, 24h
	int 10h

    mov dx, 500
    call delay

ret

delay: 
;; FunÃ§Ã£o que aplica um delay(improvisado) baseado no valor de dx
	mov bp, dx
	back:
	dec bp
	nop
	jnz back
	dec dx
	cmp dx,0    
	jnz back
ret

mudancaSeta:
	
	mov ah, 0
	int 16h

	cmp ah, 50h
	je Baixo

	cmp ah, 48h
	je Cima

    cmp al, 13
    je entrar

	cmp al, 0
	jne mudancaSeta

	ret

    entrar:

    cmp cx, 2
    jne jogar

    jmp ajuda





	Baixo:
		cmp cx, 2
		je Cima

		;Os 4 grupos de instruÃ§Ãµes abaixo deslocam a seta para baixo.

		mov ah, 02h
		mov bh, 00h
		mov dh, 12
		mov dl, 15
		int 10h

		mov ah, 0xe
		mov al, 0
		mov bh, 0
		mov bl, 0xf
		int 10h

		mov ah, 02h
		mov bh, 00h
		mov dh, 13
		mov dl, 15
		int 10h

		mov ah, 0xe
		mov al, '>'
		mov bh, 0
		mov bl, 0xf
		int 10h

        mov bh, 0 
        mov dh, 13 ; Linhas  
        mov dl, 15  ; Colunas
        mov ah, 0x2
        int 0x10

		mov cx, 2
		jmp mudancaSeta

	Cima:
		cmp cx, 1
		je Baixo

		;Os 4 grupos de instruÃ§Ãµes abaixo deslocam a seta para cima.

		mov ah, 02h
		mov bh, 00h
		mov dh, 12
		mov dl, 15
		int 10h

		mov ah, 0xe
		mov al, '>'
		mov bh, 0
		mov bl, 0xf
		int 10h

		mov ah, 02h
		mov bh, 00h
		mov dh, 13
		mov dl, 15
		int 10h

		mov ah, 0xe
		mov al, 0
		mov bh, 0
		mov bl, 0xf
		int 10h

        mov bh, 0 
        mov dh, 12 ; Linhas  
        mov dl, 15  ; Colunas
        mov ah, 0x2
        int 0x10
        
		mov cx, 1
		jmp mudancaSeta

    ajuda:
     xor ax, ax
    mov ds, ax
    mov es, ax

    
    ; mudar fundo
    call fundoMenu
    ; mudar cor do curso
    mov bl, 4
    call limpaTela
    ;move Cursor
    call printaQuadrado

    call moveCursor1
    mov si, ajudaS
    call printString
    
    call moveCursor15
    mov si, integrantesS
    call printString

    call moveCursor16
    mov si, voltarS
    call printString

    call moveCursor18
    mov si, instrucoesC
    call printString

    call moveCursor19
    mov si, instrucoesD
    call printString

    call moveCursor20
    mov si, instrucoesE
    call printString


    call moveCursor17
    call printaSeta


    call moveCursor5
    call mudancaSetaA

    jmp done

    mudancaSetaA:
	
	mov ah, 0
	int 16h

	cmp ah, 50h
	je BaixoA

	cmp ah, 48h
	je CimaA

    cmp al, 13
    je entrarA

	cmp al, 0
	jne mudancaSetaA

	ret

    entrarA:

    cmp cx, 2
    jne integrantes
    
    call start



	BaixoA:
		cmp cx, 2
		je CimaA

		;Os 4 grupos de instruÃ§Ãµes abaixo deslocam a seta para baixo.

		mov ah, 02h
		mov bh, 00h
		mov dh, 16
		mov dl, 9
		int 10h

		mov ah, 0xe
		mov al, 0
		mov bh, 0
		mov bl, 0xf
		int 10h

		mov ah, 02h
		mov bh, 00h
		mov dh, 17
		mov dl, 9
		int 10h

		mov ah, 0xe
		mov al, '>'
		mov bh, 0
		mov bl, 0xf
		int 10h

        mov bh, 0 
        mov dh, 17 ; Linhas  
        mov dl, 9  ; Colunas
        mov ah, 0x2
        int 0x10

		mov cx, 2
		jmp mudancaSetaA

	CimaA:
		cmp cx, 1
		je BaixoA

		;Os 4 grupos de instruÃ§Ãµes abaixo deslocam a seta para cima.

		mov ah, 02h
		mov bh, 00h
		mov dh, 16
		mov dl, 9
		int 10h

		mov ah, 0xe
		mov al, '>'
		mov bh, 0
		mov bl, 0xf
		int 10h

		mov ah, 02h
		mov bh, 00h
		mov dh, 17
		mov dl, 9
		int 10h

		mov ah, 0xe
		mov al, 0
		mov bh, 0
		mov bl, 0xf
		int 10h

        mov bh, 0 
        mov dh, 16 ; Linhas  
        mov dl, 9  ; Colunas
        mov ah, 0x2
        int 0x10
        
		mov cx, 1
		jmp mudancaSetaA

    integrantes:
    
    xor ax, ax
    mov ds, ax
    mov es, ax

    
    ; mudar fundo
    call fundoMenu
    ; mudar cor do curso
    mov bl, 4
    call limpaTela
    
    mov ah, 0
    mov al, 13h
    int 10h

    mov ax, 0
    push ax
    call printaQuadrado


    call moveCursor10
    mov si, humberto
    call printString
    
    call moveCursor11
    mov si, edinaldo
    call printString

    call moveCursor12
    mov si, bernardo
    call printString

    call moveCursor13
    mov si, voltarS
    call printString

    call moveCursor14
    call printaSeta
    call voltaIntegrantes

jmp done  

voltaIntegrantes:
	mov ah, 0
	int 16h

    	cmp al, 13
    	je ajuda

	cmp al, 0
	je voltaIntegrantes
	
	jmp voltaIntegrantes

jogar:

jmp kernel  

    printaQuadrado:
    
    ; Selecionando o modo de video
    mov ah, 0
    mov al, 13h
    int 10h

    mov ax, 0
    push ax
    mov dx, 25
    mov cx, 56

    .loop:
        pop ax    
        cmp ax, 200
        je trataAX
        inc ax
        inc cx     
        push ax
        push dx
        push cx
        mov dx, 6
        call delay
        pop cx
        pop dx
        call printaPixel
        
        jmp .loop
    
    loop2:
        pop ax    
        cmp ax, 140
        je trataAX2
        inc ax
        inc dx     
        push ax
         push dx
        push cx
        mov dx, 6
        call delay
        pop cx
        pop dx
        call printaPixel
        
        jmp loop2

    loop3:
        pop ax    
        cmp ax, 200
        je trataAX3
        inc ax
        dec cx     
        push ax
         push dx
        push cx
        mov dx, 6
        call delay
        pop cx
        pop dx
        call printaPixel
        
        jmp loop3


    loop4:
        pop ax    
        cmp ax, 140
        je endLoop
        inc ax
        dec dx     
        push ax
         push dx
        push cx
        mov dx, 6
        call delay
        pop cx
        pop dx
        call printaPixel
        
        jmp loop4


        

    trataAX:
        mov ax, 0
        push ax
        jmp loop2
    
    trataAX2:
        mov ax, 0
        push ax
        jmp loop3

    trataAX3:
        mov ax, 0
        push ax
        jmp loop4


    endLoop:
        ret



    printaPixel:

    mov ah, 0ch
    mov bh, 0
    mov al, 4
    int 10h

    ret

    printString: 
    ;; Printa a string que esta em si    
	
	lodsb
	cmp al, 0
	je exit

	mov ah, 0xe
	int 10h	

	
	jmp printString
exit:
    ret



    kernel:
        ;Setando a posição do disco onde kernel.asm foi armazenado(ES:BX = [0x500:0x0])
	mov ax,0x860		;0x50<<1 + 0 = 0x500
	mov es,ax
	xor bx,bx		;Zerando o offset

;Setando a posição da Ram onde o jogo será lido
	mov ah, 0x02	;comando de ler setor do disco
	mov al,8		;quantidade de blocos ocupados por jogo
	mov dl,0		;drive floppy

;Usaremos as seguintes posições na memoria:
	mov ch,0		;trilha 0
	mov cl,7		;setor 2
	mov dh,0		;cabeca 0
	int 13h
	jc kernel	;em caso de erro, tenta de novo

break:	
	jmp 0x8600 		;Pula para a posição carregada


