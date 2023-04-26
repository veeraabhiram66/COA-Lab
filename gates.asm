.model small
.stack 100h
.data
        msg1 db "The AND  is $"
        msg2 db "The OR is $"
        msg3 db "The XOR is $"
        msg4 db "The NOT is $"
        num1 equ 05h
        num2 equ 04h
	  num3 equ 01h
.code
        mov ax, @data
        mov ds, ax
;AND OPERATION
        mov al, num1
	  
        mov bl, num2
	  
        and al, bl
        add al, 30h
        mov cl, al
	mov ah, 09h
        lea dx, msg1
               int 21h
        mov dl, cl
        mov ah, 02h
        int 21h
        mov dl, 10
        mov ah, 02h
        int 21h
 ;OR OPERATION       
        mov al, num1

        mov bl, num2
	 
        or al, bl
        add al, 30h
        mov cl, al
mov ah, 09h
        lea dx, msg2
                int 21h
        mov dl, cl
        mov ah, 02h
        int 21h
        mov dl, 10
        mov ah, 02h
        int 21h
; XOR OPERATION
        mov al, num1
        mov bl, num2
        XOR al, bl
        add al, 30h
        mov cl, al
mov ah, 09h
        lea dx, msg3
                int 21h
        mov dl, cl
        mov ah, 02h
        int 21h
        mov dl, 10
        mov ah, 02h
        int 21h
; NOT OPERATION
        mov ax, num3
        NOT al
	  add al,30h
        mov cl, al
	  mov ah, 09h
        lea dx, msg4
        int 21h
        mov dl, cl
        mov ah, 02h
        int 21h
        mov dl, 10
        mov ah, 02h
        int 21h

        mov ax, 4c00h
        int 21h
end