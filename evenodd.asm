.model small                                                                                          ; name: P.Veera Abhiram
.stack 100h                                                                                           ;roll.no:CS21B2026
.data
	msg db "The Given Number is $"
	msg1 db "Even$"
	msg2 db "Odd$"
	num1 equ 07h
	num2 equ 04h
	divisor equ 02h
.code
	mov ax, @data
	mov ds, ax
	mov ax, num1
	mov bl, divisor
	div bl
	add ah, 30h
	mov ch, ah
	cmp ch, 00
	je eve
	cmp ch, 00
	jne od
eve:
	mov ah, 09h
	lea dx, msg
	int 21h
	mov ah, 09h
	lea dx, msg1
	int 21h
	mov dl, 10
od:
	mov ah, 09h
	lea dx, msg
	int 21h
	mov ah, 09h
	lea dx, msg2
	int 21h
	mov dl, 10
	
mov ax, 4c00h
int 21h	
end