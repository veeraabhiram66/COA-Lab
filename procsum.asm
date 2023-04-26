.model small
.stack 100h
.data
	msg1 db "The sum is$"
		res dw '0'
.code
	mov ax, @data
	mov ds,ax
	mov cx,'3'
	sub cx,'0'
	mov BX,'5'
	sub bx,'0'
	clc
	call sum
	mov [res], ax
	mov ah, 09h
		lea dx, msg1
	int 21h 
	mov dl,10
	mov ah, 02h
	int 21h
	mov dx,res 
	mov ah, 02h
	int 21h
sum:
		mov ax,cx
		add ax, bx
		add ax,'0'
		ret
	mov ax, 4c00h
	int 21h
end