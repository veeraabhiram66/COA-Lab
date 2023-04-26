.model small                                                                          ; name: P.Veera Abhiram 
.stack 100h                                                                           ;roll.no:CS21B2026
.data
	msg1 db "The sum is$" 
.code
	mov ax, @data 
	mov ds,ax
	mov ah,1 ; user input
	int 21h
	sub al, 30h ; binary conversion
	mov bl,al
	mov ah,1
	int 21h
	sub al, 30h ; binary conversion
	mov ah,0

	add al,bl
	aaa
	add al,30h  ; converting ASCII value
	add ah,30h

	mov bx,ax
	mov ah,09h  ;print the message
	lea dx,msg1
	int 21h
	mov dl,bh
	mov ah, 02h  ; print the character
	int 21h
	mov dl,bl
	mov ah, 02h
	int 21h
	mov ax, 4c00h
	int 21h
end