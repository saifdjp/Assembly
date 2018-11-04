
org 100h

; add your code here  

.stack 100h
.data  ;

ones db 0

.code

proc main        
    mov bx,@data  
    MOV DS,bx     
    
    MOV bl,11    ;
    ;SHL bl,1    ;Left Shift BL by 1
    ;SHR bl,1
    
    MOV al,0
    L0:
        TEST bl,1
        JZ lastzero
        JMP lastone
        
    lastzero:
        
        SHR bl,1
        JMP check
    lastone:
        ADD al,1
        SHR bl,1
        JMP check    
    check:
        cmp bl,0
        JNE L0
         
    exit:                              
     MOV AH, 4ch   
     INT 21h
endp main
                 
end main


ret