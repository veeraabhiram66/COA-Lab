.model small
.stack 100h
.data
        msg db "Sum of two numbers : $" ; print the message
.code
        mov ax,@data
        mov ds,ax
        mov al,09h               ;input taken
        mov bl,09h               ;input taken
        mov ah,0
        add al,bl
        aaa
        add al,30h                ; converting ASCII value
        add ah,30h
        mov bx,ax
        mov ah,09h                ; print the message
        lea dx,msg
        int 21h
        mov dl,bh
        mov ah,02h
        int 21h
        mov dl,bl
        mov ah,02h                ; print the character
        int 21h
        mov ax,4c00h
        int 21h
end

