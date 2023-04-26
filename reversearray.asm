.model small                                                                       ;P.Veera Abhiram, CS21B2026
.stack 100h

.data
    arr db 01h,02h,05h,03h,04h
    msg db "The reverse of array is: $"
    count equ 05h
    msg1 db "P.Veera Abhiram, CS21B2026$"

.code

    mov ax, @data
    mov ds, ax

    mov si, offset arr                                                   ;starting index of an array
    mov di, offset arr  
    add di, count-1                                                      ;Last index in an array

    mov ax, count
    mov bl, 2
    div bl
    mov cl, bl                                                          ;to count till half of an array

swap:
    mov al, [si]
    mov bl, [di]
    mov [di], al
    mov [si], bl

    inc si
    dec di
    loop swap                                                            ;run until cl becomes 0

    mov si, offset arr
    mov cx, count

    lea dx, msg
    mov ah, 09h
    int 21h

display:                                                                       ;displaying whole array
    mov dl, [si]
    add dl, 30h
    mov ah, 02h
    int 21h

    add si, 1
    loop display                                                               ;run until cx = 0

    mov dl, 10
    mov ah, 02h
    int 21h

    lea dx, msg1
    mov ah, 09h
    int 21h

    mov ah, 4ch
    int 21h

end