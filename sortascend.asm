.model small
.stack 100h
.data
         name1 db "P.Veera Abhiram, CS21B2026$"
         array db 09h, 03h, 07h, 08h, 02h, 01h
         count db 06h

.code
         mov ax, @data
         mov ds, ax
         lea dx, name1          ; Printing  name
         mov ah, 09h
         int 21h         
         mov dl, 10               ;ascii 10-new line
         mov ah, 02h
         int 21h        
         mov cx, 05h
         mov si, 0
        
outloop:
         inc si
         mov di, si
         dec si
inloop:
         mov al, array[si]
         mov bl, array[di]       
         cmp al, bl
         jl nonexc
         mov array[si], bl
         mov array[di], al
nonexc:
         inc di
         cmp di, 6
         jne inloop
         inc si
         dec cx
         cmp cx, 0         
         jne outloop
         mov si, 0
         mov cx, 6

disparray:
         mov bl, array[si]                 ; for displaying the array
         add bl, 30h
         mov ah, 02h
         mov dl, bl
         int 21h
         inc si
         dec cx
         cmp cx, 0
         jne disparray

         mov ah, 4ch
         int 21h
end         