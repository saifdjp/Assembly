
org 100h

; add your code here  

.stack 100h
.data  ;



.code

proc main        
    mov bx,@data  
    mov DS,bx     
    
    mov bl,5    ;
    shl bl,1    ;Left Shift BL by 1
    
    
    exit:                              
     mov AH, 4ch   
     int 21h
endp main
                 
end main


ret