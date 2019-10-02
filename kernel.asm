org 0x8600
jmp 0x0000:start

entrada db ' ', 0
pergunta1 db 'Qual material foi usado na historia dos 3 porquinhos?', 0
opcao1.1 db 'A) Aco', 0
opcao1.2 db 'B) Aluminio', 0
opcao1.3 db 'C) Zinco', 0
opcao1.4 db 'D) Palha', 0
pergunta2 db 'Qual o nome do primeiro aviao de Santos Dumont?', 0
opcao2.1 db 'A) 13-Bis', 0
opcao2.2 db 'B) 14-Bis', 0
opcao2.3 db 'C) 15-Bis', 0
opcao2.4 db 'D) Dumont', 0
pergunta3 db 'Qual a melhor linguagem de Programacao?', 0
opcao3.1 db 'A) Assembly', 0
opcao3.2 db 'B) Assembly', 0
opcao3.3 db 'C) Assembly', 0
opcao3.4 db 'D) Assembly', 0
pergunta4 db 'A Capital da Australia eh...', 0
opcao4.1 db 'A) Sydney', 0
opcao4.2 db 'B) Camberra', 0
opcao4.3 db 'C) Darwin', 0
opcao4.4 db 'D) Melbourne', 0
pergunta5 db 'A Area que cuida da saude bucal eh...', 0
opcao5.1 db 'A) Ortopedia', 0
opcao5.2 db 'B) Cardiologia', 0
opcao5.3 db 'C) Odontologia', 0
opcao5.4 db 'D) Hematologia', 0
pergunta6 db 'Bob Marley foi um cantor de...', 0
opcao6.1 db 'A) Reggae', 0
opcao6.2 db 'B) Rock', 0
opcao6.3 db 'C) Brega Eletronico', 0
opcao6.4 db 'D) Funk de quebrada', 0
pergunta7 db 'Qual a coisa mais pesada do mundo?', 0
opcao7.1 db 'A) Uma pena', 0
opcao7.2 db 'B) Uma pedra', 0
opcao7.3 db 'C) Programa em java', 0
opcao7.4 db 'D) Uma palha', 0
pergunta8 db 'Quantos anos eh constituido um seculo?', 0
opcao8.1 db 'A) 50', 0
opcao8.2 db 'B) 100', 0
opcao8.3 db 'C) 1000', 0
opcao8.4 db 'D) 1500', 0
pergunta9 db 'Capitu traiu ou nao bentinho?', 0
opcao9.1 db 'A) Traiu', 0
opcao9.2 db 'B) Nao traiu', 0
opcao9.3 db 'C) Sla mano, me da o dinheiro logo', 0
opcao9.4 db 'D) Proxima pergunta', 0
pergunta10 db 'Quantas cores compoem o Arco-Iris?', 0
opcao10.1 db 'A) 3', 0
opcao10.2 db 'B) 7', 0
opcao10.3 db 'C) 12', 0
opcao10.4 db 'D) 22', 0
pergunta11 db 'Qual o coletivo de caes?', 0
opcao11.1 db 'A) Matilha', 0 
opcao11.2 db 'B) Rebanho', 0
opcao11.3 db 'C) Cardume', 0
opcao11.4 db 'D) Manada', 0
pergunta12 db 'Qual casal foi expulso do Paraiso?', 0
opcao12.1 db 'A) Sasao e Dalila', 0
opcao12.2 db 'B) Jose e Maria', 0
opcao12.3 db 'C) Sara e Abraao', 0
opcao12.4 db 'D) Adao e Eva', 0
pergunta13 db 'Qual eh o santo que so acreditou vendo?', 0
opcao13.1 db 'A) Santo Antonio', 0
opcao13.2 db 'B) Sao Judas Tadeu', 0
opcao13.3 db 'C) Sao Pedro', 0
opcao13.4 db 'D) Sao Tome', 0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;; D B T B C A C B T B A D D ;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

dinheiro0 db 'R$ = 0,00', 0
dinheiro1 db 'R$ = 1.000,00', 0
dinheiro2 db 'R$ = 2.000,00', 0
dinheiro3 db 'R$ = 4.000,00', 0
dinheiro4 db 'R$ = 10.000,00', 0
dinheiro5 db 'R$ = 20.000,00', 0
dinheiro6 db 'R$ = 30.000,00', 0
dinheiro7 db 'R$ = 40.000,00', 0
dinheiro8 db 'R$ = 50.000,00', 0
dinheiro9 db 'R$ = 100.000,00', 0
dinheiro10 db 'R$ = 200.000,00', 0
dinheiro11 db 'R$ = 300.000,00', 0
dinheiro12 db 'R$ = 500.000,00', 0
dinheiro13 db 'R$ = 1.000.000,00', 0

maoe db 'MAOEEE', 0
parabens db 'PARABENS ! VOCE EH UM MILIONARIO !', 0
errada db 'Resposta errada !', 0
acertou db 'Resposta exata !', 0
faturou db '             Voce faturou :',0
voltaS db ' Voltar', 0



start:
    xor ax, ax
	mov ds, ax

    ;Muda cor do fundo
	mov ah, 0xb
	mov bh, 0
	mov bl, 0
	int 10h

    mov bl, 4 ; Seta cor dos caracteres para vemelho
	call limpaTela

    call primeiraFase
    call limpaTela
    call mostraContinua
    call limpaTela
    call SegundaFase
    call limpaTela
    call mostraContinua
    call limpaTela
    call terceiraFase
    call limpaTela
    call mostraContinua
    call limpaTela
    call quartaFase
    call limpaTela
    call mostraContinua
    call limpaTela
    call quintaFase
    call limpaTela
    call mostraContinua
    call limpaTela
    call sextaFase
    call limpaTela
    call mostraContinua
    call limpaTela
    call setimaFase
    call limpaTela
    call mostraContinua
    call limpaTela
    call oitavaFase
    call limpaTela
    call mostraContinua
    call limpaTela
    call nonaFase
    call limpaTela
    call mostraContinua
    call limpaTela
    call decimaFase
    call limpaTela
    call mostraContinua
    call limpaTela
    call decimaumFase
    call limpaTela
    call mostraContinua
    call limpaTela
    call decimadoisFase
    call limpaTela
    call mostraContinua
    call limpaTela
    call decimatresFase
    call limpaTela
    call moveCursorMaoe
    mov si, maoe
    call printString

    call moveCursorParabens
    mov si, parabens
    call printString
    call moveCursorPremio
    mov si, dinheiro13
    call printString

    call moveCursorResposta
    call printaSeta
    mov si, voltaS
    call printString
    mov ah, 0
    int 16h

    cmp al, 13
    je voltaMenu
    jmp done

done:
    jmp $

putchar:
    mov ah, 0x0e
    int 10h

ret

printaSeta:
        mov ah, 0xe
		mov al, '>'
		mov bh, 0
		mov bl, 4
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
    
    ;Reset cursor to top left-most corner of screen
    mov dx, 0 
    mov bh, 0      
    mov ah, 0x2
    int 0x10
ret

printaPixel:

    mov ah, 0ch
    mov bh, 0
    mov al, 4
    int 10h

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



moveCursorPergunta:
    mov bh, 0 
    mov dh, 3 ; Linhas  
    mov dl, 0  ; Colunas
    mov ah, 0x2
    int 0x10
ret


moveCursorOpcao1:
    mov bh, 0 
    mov dh, 10 ; Linhas  
    mov dl, 0  ; Colunas
    mov ah, 0x2
    int 0x10
ret


moveCursorOpcao2:
    mov bh, 0 
    mov dh, 11 ; Linhas  
    mov dl, 0  ; Colunas
    mov ah, 0x2
    int 0x10
ret


moveCursorOpcao3:
    mov bh, 0 
    mov dh, 12 ; Linhas  
    mov dl, 0  ; Colunas
    mov ah, 0x2
    int 0x10
ret


moveCursorOpcao4:
    mov bh, 0 
    mov dh, 13 ; Linhas  
    mov dl, 0  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursorDinheiro:
    mov bh, 0 
    mov dh, 8 ; Linhas  
    mov dl, 25  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursorResposta:
    mov bh, 0 
    mov dh, 20 ; Linhas  
    mov dl, 0  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursorMaoe:
    mov bh, 0 
    mov dh, 10 ; Linhas  
    mov dl, 15  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursorParabens:
    mov bh, 0 
    mov dh, 12 ; Linhas  
    mov dl, 3  ; Colunas
    mov ah, 0x2
    int 0x10
ret

moveCursorPremio:
    mov bh, 0 
    mov dh, 14 ; Linhas  
    mov dl, 10  ; Colunas
    mov ah, 0x2
    int 0x10
ret


moveCursorFaturou:
    mov bh, 0 
    mov dh, 14 ; Linhas  
    mov dl, 15  ; Colunas
    mov ah, 0x2
    int 0x10
ret


primeiraFase:
    
    call moveCursorPergunta
    mov si, pergunta1
    call printString

    call moveCursorOpcao1
    mov si, opcao1.1
    call printString

    call moveCursorOpcao2
    mov si, opcao1.2
    call printString

    call moveCursorOpcao3
    mov si, opcao1.3
    call printString

    call moveCursorOpcao4
    mov si, opcao1.4
    call printString

    call moveCursorDinheiro
    mov si, dinheiro0
    call printString

    
    
    mov ah, 0
	int 16h

	cmp al, 'a'
	je mostraErro1

	cmp al, 'b'
	je mostraErro1

    cmp al, 'c'
    je mostraErro1

    cmp al, 'd'
    je volta
	
	cmp al, 'A'
	je mostraErro1

	cmp al, 'B'
	je mostraErro1

    cmp al, 'C'
    je mostraErro1

    cmp al, 'D'
    je volta


    jmp primeiraFase

SegundaFase:
    
    call moveCursorPergunta
    mov si, pergunta2
    call printString

    call moveCursorOpcao1
    mov si, opcao2.1
    call printString

    call moveCursorOpcao2
    mov si, opcao2.2
    call printString

    call moveCursorOpcao3
    mov si, opcao2.3
    call printString

    call moveCursorOpcao4
    mov si, opcao2.4
    call printString

    call moveCursorDinheiro
    mov si, dinheiro1
    call printString

    mov ah, 0
	int 16h

	cmp al, 'a'
	je mostraErro2

	cmp al, 'b'
	je volta

    cmp al, 'c'
    je mostraErro2

    cmp al, 'd'
    je mostraErro2

	cmp al, 'A'
	je mostraErro2

	cmp al, 'B'
	je volta

    cmp al, 'C'
    je mostraErro2

    cmp al, 'D'
    je mostraErro2


    jmp SegundaFase

terceiraFase:
    
    call moveCursorPergunta
    mov si, pergunta3
    call printString

    call moveCursorOpcao1
    mov si, opcao3.1
    call printString

    call moveCursorOpcao2
    mov si, opcao3.2
    call printString

    call moveCursorOpcao3
    mov si, opcao3.3
    call printString

    call moveCursorOpcao4
    mov si, opcao3.4
    call printString

    call moveCursorDinheiro
    mov si, dinheiro2
    call printString

     mov ah, 0
	int 16h

	cmp al, 'a'
	je volta

	cmp al, 'b'
	je volta

    cmp al, 'c'
    je volta

    cmp al, 'd'
    je volta
	
	cmp al, 'A'
	je volta

	cmp al, 'B'
	je volta

    cmp al, 'C'
    je volta

    cmp al, 'D'
    je volta

    jmp terceiraFase

quartaFase:
    
    call moveCursorPergunta
    mov si, pergunta4
    call printString

    call moveCursorOpcao1
    mov si, opcao4.1
    call printString

    call moveCursorOpcao2
    mov si, opcao4.2
    call printString

    call moveCursorOpcao3
    mov si, opcao4.3
    call printString

    call moveCursorOpcao4
    mov si, opcao4.4
    call printString

    call moveCursorDinheiro
    mov si, dinheiro3
    call printString

     mov ah, 0
	int 16h

	cmp al, 'a'
	je mostraErro4

	cmp al, 'b'
	je volta

    cmp al, 'c'
    je mostraErro4

    cmp al, 'd'
    je mostraErro4

	cmp al, 'A'
	je mostraErro4

	cmp al, 'B'
	je volta

    cmp al, 'C'
    je mostraErro4

    cmp al, 'D'
    je mostraErro4


    jmp quartaFase

quintaFase:
    
    call moveCursorPergunta
    mov si, pergunta5
    call printString

    call moveCursorOpcao1
    mov si, opcao5.1
    call printString

    call moveCursorOpcao2
    mov si, opcao5.2
    call printString

    call moveCursorOpcao3
    mov si, opcao5.3
    call printString

    call moveCursorOpcao4
    mov si, opcao5.4
    call printString

    call moveCursorDinheiro
    mov si, dinheiro4
    call printString


     mov ah, 0
	int 16h

	cmp al, 'a'
	je mostraErro5

	cmp al, 'b'
	je mostraErro5

    cmp al, 'c'
    je volta

    cmp al, 'd'
    je mostraErro5

	cmp al, 'A'
	je mostraErro5

	cmp al, 'B'
	je mostraErro5

    cmp al, 'C'
    je volta

    cmp al, 'D'
    je mostraErro5


    jmp quintaFase
sextaFase:
    
    call moveCursorPergunta
    mov si, pergunta6
    call printString

    call moveCursorOpcao1
    mov si, opcao6.1
    call printString

    call moveCursorOpcao2
    mov si, opcao6.2
    call printString

    call moveCursorOpcao3
    mov si, opcao6.3
    call printString

    call moveCursorOpcao4
    mov si, opcao6.4
    call printString

    call moveCursorDinheiro
    mov si, dinheiro5
    call printString

     mov ah, 0
	int 16h

	cmp al, 'a'
	je volta

	cmp al, 'b'
	je mostraErro6

    cmp al, 'c'
    je mostraErro6

    cmp al, 'd'
    je mostraErro6

	cmp al, 'A'
	je volta

	cmp al, 'B'
	je mostraErro6

    cmp al, 'C'
    je mostraErro6

    cmp al, 'D'
    je mostraErro6

    jmp sextaFase

setimaFase:
    
    call moveCursorPergunta
    mov si, pergunta7
    call printString

    call moveCursorOpcao1
    mov si, opcao7.1
    call printString

    call moveCursorOpcao2
    mov si, opcao7.2
    call printString

    call moveCursorOpcao3
    mov si, opcao7.3
    call printString

    call moveCursorOpcao4
    mov si, opcao7.4
    call printString

    call moveCursorDinheiro
    mov si, dinheiro6
    call printString


     mov ah, 0
	int 16h

	cmp al, 'a'
	je mostraErro7

	cmp al, 'b'
	je mostraErro7

    cmp al, 'c'
    je volta

    cmp al, 'd'
    je mostraErro7

	cmp al, 'A'
	je mostraErro7

	cmp al, 'B'
	je mostraErro7

    cmp al, 'C'
    je volta

    cmp al, 'D'
    je mostraErro7

    jmp setimaFase
oitavaFase:
    
    call moveCursorPergunta
    mov si, pergunta8
    call printString

    call moveCursorOpcao1
    mov si, opcao8.1
    call printString

    call moveCursorOpcao2
    mov si, opcao8.2
    call printString

    call moveCursorOpcao3
    mov si, opcao8.3
    call printString

    call moveCursorOpcao4
    mov si, opcao8.4
    call printString

    call moveCursorDinheiro
    mov si, dinheiro7
    call printString

    
     mov ah, 0
	int 16h

	cmp al, 'a'
	je mostraErro8

	cmp al, 'b'
	je volta

    cmp al, 'c'
    je mostraErro8

    cmp al, 'd'
    je mostraErro8
	
	cmp al, 'A'
	je mostraErro8

	cmp al, 'B'
	je volta

    cmp al, 'C'
    je mostraErro8

    cmp al, 'D'
    je mostraErro8

    
    jmp oitavaFase
nonaFase:
    
    call moveCursorPergunta
    mov si, pergunta9
    call printString

    call moveCursorOpcao1
    mov si, opcao9.1
    call printString

    call moveCursorOpcao2
    mov si, opcao9.2
    call printString

    call moveCursorOpcao3
    mov si, opcao9.3
    call printString

    call moveCursorOpcao4
    mov si, opcao9.4
    call printString

    call moveCursorDinheiro
    mov si, dinheiro8
    call printString


     mov ah, 0
	int 16h

	cmp al, 'a'
	je volta

	cmp al, 'b'
	je volta

    cmp al, 'c'
    je volta

    cmp al, 'd'
    je volta
	
	cmp al, 'A'
	je volta

	cmp al, 'B'
	je volta

    cmp al, 'C'
    je volta

    cmp al, 'D'
    je volta

    jmp nonaFase

decimaFase:
    
    call moveCursorPergunta
    mov si, pergunta10
    call printString

    call moveCursorOpcao1
    mov si, opcao10.1
    call printString

    call moveCursorOpcao2
    mov si, opcao10.2
    call printString

    call moveCursorOpcao3
    mov si, opcao10.3
    call printString

    call moveCursorOpcao4
    mov si, opcao10.4
    call printString

    call moveCursorDinheiro
    mov si, dinheiro9
    call printString
  

     mov ah, 0
	int 16h

	cmp al, 'a'
	je mostraErro9

	cmp al, 'b'
	je volta

    cmp al, 'c'
    je mostraErro9

    cmp al, 'd'
    je mostraErro9

	cmp al, 'A'
	je mostraErro9

	cmp al, 'B'
	je volta

    cmp al, 'C'
    je mostraErro9

    cmp al, 'D'
    je mostraErro9

    jmp decimaFase

decimaumFase:
    
    call moveCursorPergunta
    mov si, pergunta11
    call printString

    call moveCursorOpcao1
    mov si, opcao11.1
    call printString

    call moveCursorOpcao2
    mov si, opcao11.2
    call printString

    call moveCursorOpcao3
    mov si, opcao11.3
    call printString

    call moveCursorOpcao4
    mov si, opcao11.4
    call printString

    call moveCursorDinheiro
    mov si, dinheiro10
    call printString
  

     mov ah, 0
	int 16h

	cmp al, 'a'
	je volta

	cmp al, 'b'
	je mostraErro11

    cmp al, 'c'
    je mostraErro11

    cmp al, 'd'
    je mostraErro11

	cmp al, 'A'
	je volta

	cmp al, 'B'
	je mostraErro11

    cmp al, 'C'
    je mostraErro11

    cmp al, 'D'
    je mostraErro11

    jmp decimaumFase  

decimadoisFase:
    
    call moveCursorPergunta
    mov si, pergunta12
    call printString

    call moveCursorOpcao1
    mov si, opcao12.1
    call printString

    call moveCursorOpcao2
    mov si, opcao12.2
    call printString

    call moveCursorOpcao3
    mov si, opcao12.3
    call printString

    call moveCursorOpcao4
    mov si, opcao12.4
    call printString

    call moveCursorDinheiro
    mov si, dinheiro11
    call printString
  

     mov ah, 0
	int 16h

	cmp al, 'a'
	je mostraErro12

	cmp al, 'b'
	je mostraErro12

    cmp al, 'c'
    je mostraErro12

    cmp al, 'd'
    je volta

	cmp al, 'A'
	je mostraErro12

	cmp al, 'B'
	je mostraErro12

    cmp al, 'C'
    je mostraErro12

    cmp al, 'D'
    je volta

    jmp decimadoisFase 

decimatresFase:
    
    call moveCursorPergunta
    mov si, pergunta13
    call printString

    call moveCursorOpcao1
    mov si, opcao13.1
    call printString

    call moveCursorOpcao2
    mov si, opcao13.2
    call printString

    call moveCursorOpcao3
    mov si, opcao13.3
    call printString

    call moveCursorOpcao4
    mov si, opcao13.4
    call printString

    call moveCursorDinheiro
    mov si, dinheiro12
    call printString
  

     mov ah, 0
	int 16h

	cmp al, 'a'
	je mostraErro13

	cmp al, 'b'
	je mostraErro13

    cmp al, 'c'
    je mostraErro13

    cmp al, 'd'
    je volta

	cmp al, 'A'
	je mostraErro13

	cmp al, 'B'
	je mostraErro13

    cmp al, 'C'
    je mostraErro13

    cmp al, 'D'
    je volta

    jmp decimatresFase 
  

volta:
    ret

mostraErro1:
    call limpaTela

   call moveCursorMaoe
   mov si, errada
   call printString
   
   call moveCursorParabens
   mov si, faturou
   call printString

   call moveCursorFaturou
   mov si, dinheiro0
   call printString

   call moveCursorResposta
   call printaSeta
   mov si, voltaS
   call printString

    mov ah, 0
	int 16h

	cmp al, 13
	je voltaMenu

   jmp mostraErro1

mostraErro2:
call limpaTela
   call moveCursorMaoe
   mov si, errada
   call printString
   
   call moveCursorParabens
   mov si, faturou
   call printString

   call moveCursorFaturou
   mov si, dinheiro1
   call printString

    call moveCursorResposta
   call printaSeta
   mov si, voltaS
   call printString

    mov ah, 0
	int 16h

	cmp al, 13
	je voltaMenu

   jmp mostraErro2

mostraErro3:
call limpaTela
   call moveCursorMaoe
   mov si, errada
   call printString
   
   call moveCursorParabens
   mov si, faturou
   call printString

   call moveCursorFaturou
   mov si, dinheiro2
   call printString

   call moveCursorResposta
   call printaSeta
   mov si, voltaS
   call printString

    mov ah, 0
	int 16h

	cmp al, 13
	je voltaMenu

   jmp mostraErro3

mostraErro4:
call limpaTela
   call moveCursorMaoe
   mov si, errada
   call printString
   
   call moveCursorParabens
   mov si, faturou
   call printString

   call moveCursorFaturou
   mov si, dinheiro3
   call printString

   call moveCursorResposta
   call printaSeta
   mov si, voltaS
   call printString

    mov ah, 0
	int 16h

	cmp al, 13
	je voltaMenu

   jmp mostraErro4

mostraErro5:
call limpaTela
   call moveCursorMaoe
   mov si, errada
   call printString
   
   call moveCursorParabens
   mov si, faturou
   call printString

   call moveCursorFaturou
   mov si, dinheiro4
   call printString

   call moveCursorResposta
   call printaSeta
   mov si, voltaS
   call printString

    mov ah, 0
	int 16h

	cmp al, 13
	je voltaMenu

   jmp mostraErro5

mostraErro6:
call limpaTela
   call moveCursorMaoe
   mov si, errada
   call printString
   
   call moveCursorParabens
   mov si, faturou
   call printString

   call moveCursorFaturou
   mov si, dinheiro5
   call printString

   call moveCursorResposta
   call printaSeta
   mov si, voltaS
   call printString

    mov ah, 0
	int 16h

	cmp al, 13
	je voltaMenu

   jmp mostraErro6

mostraErro7:
call limpaTela
   call moveCursorMaoe
   mov si, errada
   call printString
   
   call moveCursorParabens
   mov si, faturou
   call printString

   call moveCursorFaturou
   mov si, dinheiro6
   call printString

   call moveCursorResposta
   call printaSeta
   mov si, voltaS
   call printString

    mov ah, 0
	int 16h

	cmp al, 13
	je voltaMenu

   jmp mostraErro7

mostraErro8:
call limpaTela
   call moveCursorMaoe
   mov si, errada
   call printString
   
   call moveCursorParabens
   mov si, faturou
   call printString

   call moveCursorFaturou
   mov si, dinheiro7
   call printString

   call moveCursorResposta
   call printaSeta
   mov si, voltaS
   call printString

    mov ah, 0
	int 16h

	cmp al, 13
	je voltaMenu

   jmp mostraErro8

mostraErro9:
call limpaTela
   call moveCursorMaoe
   mov si, errada
   call printString
   
   call moveCursorParabens
   mov si, faturou
   call printString

   call moveCursorFaturou
   mov si, dinheiro8
   call printString

   call moveCursorResposta
   call printaSeta
   mov si, voltaS
   call printString

    mov ah, 0
	int 16h

	cmp al, 13
	je voltaMenu

   jmp mostraErro9

mostraErro10:

   call moveCursorMaoe
   mov si, errada
   call printString
   
   call moveCursorParabens
   mov si, faturou
   call printString

   call moveCursorFaturou
   mov si, dinheiro9
   call printString

   call moveCursorResposta
   call printaSeta
   mov si, voltaS
   call printString

    mov ah, 0
	int 16h

	cmp al, 13
	je voltaMenu

   jmp mostraErro10

mostraErro11:
   call limpaTela
   call moveCursorMaoe
   mov si, errada
   call printString
   
   call moveCursorParabens
   mov si, faturou
   call printString

   call moveCursorFaturou
   mov si, dinheiro10
   call printString

   call moveCursorResposta
   call printaSeta
   mov si, voltaS
   call printString

    mov ah, 0
	int 16h

	cmp al, 13
	je voltaMenu

   jmp mostraErro11

mostraErro12:
   call limpaTela
   call moveCursorMaoe
   mov si, errada
   call printString
   
   call moveCursorParabens
   mov si, faturou
   call printString

   call moveCursorFaturou
   mov si, dinheiro11
   call printString

   call moveCursorResposta
   call printaSeta
   mov si, voltaS
   call printString

    mov ah, 0
	int 16h

	cmp al, 13
	je voltaMenu

   jmp mostraErro12

mostraErro13:
   call limpaTela
   call moveCursorMaoe
   mov si, errada
   call printString
   
   call moveCursorParabens
   mov si, faturou
   call printString

   call moveCursorFaturou
   mov si, dinheiro0
   call printString

   call moveCursorResposta
   call printaSeta
   mov si, voltaS
   call printString

    mov ah, 0
	int 16h

	cmp al, 13
	je voltaMenu

   jmp mostraErro13
 

mostraContinua:
    call moveCursorParabens
    mov si, acertou
    call printString

    mov dx, 3400
    call delay

    ret 

voltaMenu:
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov ax, 0x7e0 ;0x7e0<<1 = 0x7e00 (início de kernel.asm)
    mov es, ax
    xor bx, bx ;posição es<<1+bx
    jmp reset

    reset:
    mov ah, 00h ;reseta o controlador de disco
    mov dl, 0 ;floppy disk
    int 13h
    jc reset ;se o acesso falhar, tenta novamente
    jmp load

    load:
    mov ah, 02h ;lê um setor do disco
    mov al, 20 ;quantidade de setores ocupados pelo kernel
    mov ch, 0 ;track 0
    mov cl, 3 ;sector 3
    mov dh, 0 ;head 0
    mov dl, 0 ;drive 0
    int 13h
    jc load
    ;se o acesso falhar, tenta novamente
    jmp 0x7e00 ;pula para o setor de endereco 0x7e00 (start do boot2)
