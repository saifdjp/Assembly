
org 100h

; add your code here  

.stack 100h
.data  ;


;pushed db 0
.code

jmp main

main proc
            
    mov bx,@data  
    mov DS,bx     
    
    ;push 123        
    
    ;call addition
    
    mov ax,123
    call printax
    
        
    exit:        
        
                     
        MOV AH, 4ch   
        INT 21h
endp main ;writing main is not necesssary


addition proc
    
  ;call addition  
  mov dx,10
  mov bx,20
  add bx,dx  
  ret 
endp


printax proc
   mov cx,0 
   L1:
     mov dx,0
     mov bx,10
     div bx
     push dx
     inc cx
     cmp ax,0
     jne L1
     
   L2:
      
      pop dx
      add dx,'0'
      mov ah,2
      int 21h
      loop L2
  
  ret
endp




                 
end main  ;writing main is not necesssary


ret