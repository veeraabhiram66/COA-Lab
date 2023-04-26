.model small
.stack 100h
.data
     	msg db "The largest number is $"
    	num1 db '4'
    	num2 db '7'
     	num3 db '8'
	large db 0
.code
	mov ax, @data
	mov ds,ax
		mov cl,[num1]
		cmp cl,[num2]
		jg third
		mov cl,[num2]
		cmp cl,[num3]
		jg exit
		mov cl,[num3]
		jmp exit
third:
	cmp cl,[num3]
	jg exit
	mov cl,[num3]
exit:
		mov [large],cl
		mov ah, 09h
		lea dx, msg
		int 21h 
		mov dl,10
	mov ah, 02h
	int 21h
	mov dl,large
	mov ah, 02h
	int 21h
	mov ax, 4c00h
	int 21h
end