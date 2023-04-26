.model small                                                                                    ; name: P.Veera Abhiram
.stack 100h                                                                                     ;roll.no:CS21B2026
.data
	msg db "(a^b) : $"
	a equ 09h
	b equ 02h
.code
	mov ax, @data
	mov ds, ax
	mov ah, 09h
	lea dx, msg
	int 21h
	mov bl, a
	mov cl, b
	mov al, 01h
exp:
	mul bl
	aam
	dec cl
	jnz exp
	add al, 30h
	add ah, 30h
	mov bx, ax
	mov dl, bh
	mov ah, 02h
	int 21h
	mov dl, bl
	mov ah, 02h
	int 21h
	mov ax, 4c00h
	int 21h
end	