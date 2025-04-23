.model small
.stack 100h
.code

main proc
    mov ah,1     ;Input function
    int 21h      ;Call function
    mov bl,al
    
    mov ah,2     ;New Line 
    mov dl,10
    int 21h 
    mov dl,13    ;carraig return
    int 21h
                  ;Outputn function
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main