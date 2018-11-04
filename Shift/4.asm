
org 100h

; add your code here  

.stack 100h
.data  ;

ones db 0

.code

proc main        
    mov bx,@data  
    MOV DS,bx     
    
     
    
    MOV AX,99
    MOV DX,99
    MUL DX
    
    
    L0:
        TEST AX,1
        JZ lastzero0
        JMP lastone0
        
    lastzero0:
        
        SHR AX,1
        JMP check0
    lastone0:
        ADD ones,1
        SHR AX,1
        JMP check0    
    check0:
        cmp AX,0
        JNE L0
    
    
    
    L1:
        TEST DX,1
        JZ lastzero1
        JMP lastone1
        
    lastzero1:
        
        SHR DX,1
        JMP check1
    lastone1:
        ADD ones,1
        SHR DX,1
        JMP check1    
    check1:
        cmp DX,0
        JNE L1
         
    exit:
     MOV al,ones                             
     MOV AH, 4ch   
     INT 21h
endp main
                 
end main


ret