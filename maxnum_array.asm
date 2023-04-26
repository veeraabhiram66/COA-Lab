.model small                                     ;name:P.Veera Abhiram
.stack 100h                                      ;roll.no:CS21B2026
.data
    msg db "The Maximum number in array is : $"
    array db 13h,20h,63h,58h,50h
    max db ? 
.code
    mov ax,@data
    mov ds,ax

    mov si,offset array        ;first element of array
    mov al,[si]                ;storing first value
    mov cl,0                   ; count=0

    large:
        inc si                 ;iteration

        cmp cl,4               ;count=4
        je exit  
        inc cl                 ;increase count 

        cmp al,[si]            ;comparision
        jg large               ;if present max is greater then loop continues

        cmp al,[si]            ;comparision
        jle iteration          ;if present array element is greater then update

    iteration:
        mov al,[si]            ;update max value
        jmp large              ; go to next iteration

    exit:
        aam ;display answer in 2 digits
        add ax,03030h ;conversion to ascii
        mov cx,ax ;

        mov ah,09h
        lea dx,msg
        int 21h

        mov dl,ch ;
        mov ah,02h
        int 21h

        mov dl,cl
        mov ah,02h
        int 21h
        
        mov ax,4c00h
        int 21h
end
    
