.model small
.stack 100h
.data
	msg db "The counting from 0 to 9 is $"
.code
	mov ax, @data
	mov ds,ax
		mov ah, 09h
		lea dx, msg
		int 21h 
		mov cx,0ah
		mov dl,0h
loop1:
	add dl,30h 
		mov ah, 02h
	int 21h
	sub dl,30h 
		inc dl
		dec cx
	jnz loop1
	mov ax, 4c00h
	int 21h
end