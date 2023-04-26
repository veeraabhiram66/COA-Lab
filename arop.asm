.model small
.stack 100h
.data
	msg1 db "The sum is $"
        msg2 db "The Difference is $"
        msg3 db "The Product is $"
        msg4 db "The Division is $"
.code
	mov ax, @data
	mov ds,ax
	mov al,04h
	mov bl,02h
	add al, bl
		add al,30h 
		mov cl, al
	mov ah, 09h
	lea dx, msg1
	int 21h
	mov dl,cl 
	mov ah, 02h
	int 21h
        mov dl,10 
	mov ah,02h
	int 21h

	mov dl,13
	mov ah,02h
	int 21h

	mov al,04h
	mov bl,02h
	sub al,bl
		add al,30h 
		mov cl, al
        mov ah, 09h 
	lea dx, msg2
	int 21h
	mov dl,cl 
	mov ah, 02h
	int 21h
        mov dl,10 
	mov ah,02h
	int 21h

	mov dl,13
	mov ah,02h
	int 21h

        mov al,04h
	mov bl,02h
	mul bl
	mov cl, al

        mov ah, 09h 
	lea dx, msg3
	int 21h

	mov dl,cl 
	add dl, 30h
	mov ah, 02h
	int 21h

        mov dl,10 
	mov ah,02h
	int 21h

	mov dl,13
	mov ah,02h
	int 21h

        mov ax,04h
	mov bl,02h
	div bl
	mov cl, al

        mov ah, 09h 
	lea dx, msg4
	int 21h

	mov dl,cl 
	add dl, 30h
	mov ah, 02h
	int 21h

        mov dl,10 
	mov ah,02h
	int 21h

	mov dl,13
	mov ah,02h
	int 21h
        
	mov ax, 4c00h
	int 21h

end
