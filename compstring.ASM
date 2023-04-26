.model small
.stack 100h

.data
        name1 db "P.Veera Abhiram, CS21B2026$"
        msg1 db "Computer Organisation Practical$"
        msg2 db "Computer Organisation Practical$"
        msg3 db "Computer Organisation Practical$"
        msg4 db "Computer Organisation and Practical$"
        output1 db "The statements are equal$"
        output2 db "The statements are not equal$"
	output3 db "The counts are $"
	count dw 4 dup(?)

.code
        mov ax, @data
        mov ds, ax

	mov si, 0
	mov di, 0
	mov cx, 0

COUNTSTR1:
	cmp msg1[si], '$'
	je COUNTSTR2
	inc si
	inc cx
	mov count[di], cx
	jmp COUNTSTR1

COUNTSTR2:
	mov si, 0
	mov cx, 0
	inc di
	STR2MINI:
		cmp msg2[si], '$'
		je COUNTSTR3
		inc si
		inc cx
		mov count[di], cx
		jmp STR2MINI
COUNTSTR3:
	mov si, 0
	mov cx, 0
	inc di
	STR3MINI:
		cmp msg3[si], '$'
		je COUNTSTR4
		inc si
		inc cx
		mov count[di], cx
		jmp STR3MINI

COUNTSTR4:
	mov si, 0
	mov cx, 0
	inc di
	STR4MINI:
		cmp msg4[si], '$'
		je PRINTCOUNT
		inc si
		inc cx
		mov count[di], cx
		jmp STR4MINI

PRINTCOUNT:
	lea dx, output3
	mov ah, 09h
	int 21h

	mov si, 0
	mov cx, 0
	
	PRINT:
        mov bx, count[si]
        add bl, 30h
        mov ah, 02h
        mov dl, bl
        int 21h
        inc si
        dec cx
        cmp cx, 0
        jne PRINT

	mov si, 0

COMPARET1:
        cmp msg1[si], '$'
        je STRING1END
        cmp msg2[si], '$'
        je STRING2END
        mov al, msg1[si]
        mov bl, msg2[si]
        cmp al, bl
        jne NOTEQUALSTR
        inc si
        jmp COMPARET1

STRING1END:
        cmp msg2[si], '$'
        jne NOTEQUALSTR
        jmp EQUALSTR

STRING2END:
        cmp msg1[si], '$'
        jne NOTEQUALSTR
        jmp EQUALSTR

NOTEQUALSTR:
        lea dx, output2
        mov ah, 09h
        int 21h
        jmp ENDING

EQUALSTR:
        lea dx, output1
        mov ah, 09h
        int 21h
        jmp ENDING

ENDING:
	mov ah, 4ch
	int 21h
end      
