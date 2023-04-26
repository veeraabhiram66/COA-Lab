.model small
.stack 100h
.data
    name1 db "P.Veera Abhiram,CS21B2026$"
    msg db "Enter a number: $"
    msg1 db "The given number is prime. $"
    msg2 db "The  given number is not prime. $"
    cr   db 0dh, 0ah, '$'
.code
    mov ax, @data
    mov ds, ax
    mov ah, 09h
    lea dx, name1                ; printing the name
    int 21h
    mov dl,10 		               ;ascii 10-new line
    mov ah,02h
    int 21h
    mov ah, 09h
    lea dx, msg                     ; printing the msg
    int 21h
    mov ah, 01h
    int 21h
    sub al, 30h    
    mov bl, al      
    mov ah, 09h
    lea dx, cr
    int 21h
    mov cx, 2      
    mov dx, 0      
    mov ax, bx      
    test ax, 1      
    jz eve  

pri:
    cmp cx, ax      ; checking prime condition
    jae prime      
    div cx          
    cmp dx, 0                              
    je nonprime    
    add cx, 2      
    jmp pri

eve:
    cmp ax, 2      ; checking for even num
    je prime
    jmp nonprime                           

nonprime:
    mov ah, 09h                        ; non prime numbers
    lea dx, msg2			
    int 21h
    jmp exit

prime:
    mov ah, 09h
    lea dx, msg1
    int 21h
exit:
    mov ah, 09h                      
    lea dx, cr
    int 21h
    mov ah, 4ch
    int 21h
end
