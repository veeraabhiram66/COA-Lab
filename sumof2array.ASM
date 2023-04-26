.model small
.stack 100h

.data
      M db 01h, 02h, 03h, 04h
      N db 04h, 05h, 06h, 05h
      R db 01h, 02h, 03h, 04h
      output db "The Sum array is $"
      name1 db "P.Veera Abhiram, CS21B2026$"

.code
        mov ax, @data
        mov dx, ax

        mov si, offset R        ; Setting offset for R array
        mov di, offset N        ; Setting offset for N array
        mov cx, 4       ; Setting the array counter to 4

        lea dx, name1
        mov ah, 09h
        int 21h         ; Printing my name

        mov dl, 10
        mov ah, 02h
        int 21h         ; New line

        lea dx, output
        mov ah, 09h
        int 21h

ADDARRAYS:
        mov ax, [si]    ; Setting First Value in Accumilator
        add ax, [di]    ; Adding second value to first
        mov [si], ax    ; Sending the output back to Array R
        inc si          ; Incrementing offsets
        inc di
        dec cx          ; Decrementing counter
        cmp cx, 0
        jne ADDARRAYS  ; Looping Condition

        mov si, offset R        ; Setting offset to Array R again
        mov cx, 4       ; Setting counter to 4 again

PRINT:
        mov bx, [si]
        add bl, 48
        mov ah, 02h
        mov dl, bl
        int 21h
        sub bl, 48
        inc si
        dec cx
        cmp cx, 0
        jne PRINT

        mov ax, 4c00h
        int 21h

end



