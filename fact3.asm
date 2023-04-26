.model small                                                                                          ; name: P.Veera Abhiram
.stack 100h                                                                                           ;roll.no:CS21B2026
.data
	msg db "The factorial for 3 is $"
	n1 db 03h
	n2 db 01h
.code
	mov ax, @data
	mov ds,ax
		mov ah, 09h
		lea dx, msg
		int 21h

		mov cl,n1
		mov al,n2
loop1:	
		mul cl
		dec cl
		jnz loop1
	add al,30h
		mov bl,al
		mov dl,bl
		mov ah,02h
	int 21h
	mov ax, 4c00h
	int 21h
end