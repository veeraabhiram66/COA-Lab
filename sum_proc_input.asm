.model small                                                                       ; name: P.Veera Abhiram
.stack 100h                                                                        ;roll.no:CS21B2026
.data
        msg db "The sum is : $" ; print the message
        res dw '0'
.code
        mov ax, @data 
        mov ds,ax
        mov cl,'9'
        sub cl,'0'
        mov bl,'8'
        sub bl,'0'
        clc
        call sum
        mov bx,ax
        mov ah,09h
        lea dx,msg
        int 21h
        mov dl,10
        mov ah,02h
        int 21h 
        mov dl,bh
        mov ah, 02h
        int 21h
        mov dl,bl
        mov ah, 02h
        int 21h
sum:
        mov ah,0
        mov al,cl
        add al,bl
        aaa
        add al,30h
        add ah,30h
        ret
        mov ax, 4c00h
        int 21h
end
