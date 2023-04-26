.model small
.stack 100h
.data
	msg1 db "The sum is$"
		x db 2,2,3
	sum dw '0'
.code
	mov ax, @data
	mov ds,ax
		mov ax,3
		mov bx,0
		mov si,offset x
top:
		add bx, [si]
		add si,1
		dec ax
		jnz top
add bx,'0'
		mov [sum], bx
	mov ah, 09h
	lea dx, msg1
	int 21h
	mov dl,10
	mov ah, 02h
	int 21h
	mov dx,sum
	mov ah, 02h
	int 21h
	mov ax, 4c00h
	int 21h
end