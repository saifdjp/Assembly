

ORG 100H
.model small
.STACK 100H
.DATA 

x dw 100
y dw 100


.CODE


main proc
;mov ah,2
;mov dl,"*"
;INT 21h

    mov AH,0
    mov AL,12h
    int 10h
      

    
L1:    
    mov AH,0ch
    mov AL,4
    mov BH,0
    mov CX,x
    mov DX,y
    int 10h
    
    inc x 
    cmp x,150
    jl L1
ret

endp main

end main