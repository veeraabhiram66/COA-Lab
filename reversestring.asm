.model small
.stack 100h
.data
         name1 db "P.Veera Abhiram, CS21B2026$"
         string db "Computer Organization and Design Practice$"
         msg db "The Reverse String is : $"

.code
         mov ax, @data
         mov ds, ax
         lea dx, name1          ; Printing  name
         mov ah, 09h
         int 21h         
         mov dl, 10             ;ascii 10-new line
         mov ah, 02h
         int 21h       
         lea dx, string
         mov ah, 09h
         int 21h
         mov dl, 10            ;ascii 10-new line
         mov ah, 02h
         int 21h        
         lea dx, msg            ;printing msg
         mov ah, 09h
         int 21h
         mov si, 0
         mov cx, 0

countletters:
         cmp string[si], '$'
         je reversedisplay                   ;count till end of string
         inc si
         inc cx
         cmp string[si], '$'
         jne countletters
         
         mov bx, cx
         mov si, bx

reversedisplay:
         mov bl, string[si-1]                  ; for displaying reverse
         mov ah, 02h
         mov dl, bl                 
         int 21h
         dec si
         cmp si, 0
         jne reversedisplay

         mov ah, 4ch
         int 21h                               ;end of program

end