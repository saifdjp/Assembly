
org 100h

; add your code here  

.stack 100h
.data  ;

ones db 0
i db 1
j db 1
.code

proc main        
    mov bx,@data  
    MOV DS,bx     
    
     
    
    MOV AX,500
    MOV DX,1000
    MUL DX
    
    
    ;MOV al,1
    ;MOV CX, 2
    ;L:
        ;add al,1
       ; loop L
        
    
    ;MOV i,1
    L:
      TEST AX,1
      JNZ one
        
      ROL AX,1
      
      
      
      add i,1
      CMP i,17
      JNE L
      JMP L2
            
      
        
    one:
     add ones,1
     
     ROL AX,1
     
     add i,1
     CMP i,17
     JNE L
     JMP L2
    
     
     
    L2:
      TEST DX,1
      JNZ one2
        
      ROL DX,1
      
      
      
      add j,1
      CMP j,17
      JNE L2
      JMP exit
            
      
        
    one2:
     add ones,1
     
     ROL DX,1
     
     add j,1
     CMP j,17
     JNE L2
     JMP exit
    
    
    
         
    exit:
     MOV bl,ones                             
     MOV AH, 4ch   
     INT 21h
endp main
                 
end main


ret