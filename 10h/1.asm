

ORG 100H
.STACK 100H
.DATA 


.CODE


;mov ah,2
;mov dl,"*"
;INT 21h

    mov AH,0
    mov AL,12h
    int 10h
      
    
    
    mov AH,0ch
    mov AL,4
    mov BH,0
    mov CX,500
    mov DX,400
    int 10h


ret
