.model small
.stack 100h
.data
a db "Enter First Number: $" 
b db "Enter Second Number: $"
c db "The Answer is: $"
.code

main proc
    mov ax,@data
    mov ds,ax
    
    ;print a variable data
    mov ah,9
    lea dx,a
    int 21h
    
    ;First Number Input
    mov ah,1
    int 21h
    mov bh,al
    
    ;New line print
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;print b variable data
    mov ah,9
    lea dx,b
    int 21h
    
    ;Secon Number Input
    mov ah,1
    int 21h
    mov cl,al
    
    ;New line print
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;print c variable data
    mov ah,9
    lea dx,c
    int 21h
    
    ;Subtraction two numbers
    sub bh,cl   ;bh=bh-cl
    add bh,48
    
    ;Close windows
    exit:
    mov ah,4ch
    int 21h
    main endp
end main