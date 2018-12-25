
org 100h

; add your code here  

.stack 100h
.data  ;


;pushed db 0
.code


pushall macro
   push ax
   push bx
   push cx
   push dx
endm 

popall macro
   pop dx
   pop cx
   pop bx
   pop dx 
endm    



jmp main

main proc
            
    mov bx,@data  
    mov DS,bx     
    
    call scanax
        
    exit:        
        
                     
        MOV AH, 4ch   
        INT 21h
endp main ;writing main is not necesssary





scanax proc
   pushall
   
      value dw 0
      newvalue dw 0 
      
      mov bx,10
      
      inputloop:
        mov ah,1
        int 21h
        cmp al,13
        je exitinput
        
        
        mov ah,0      ; it may have something else
        sub ax,48     ;dx:ax = value*10
        mov newvalue,ax  ; newval = ax
        mov ax,value     ;ax = val
        
        
        mul bx           ; ax = ax*10
        add ax,newvalue  ; ax = ax + newdigit
        mov value, ax    ; value = ax
        
        jmp inputloop
        
       
      
      exitinput:
          popall
          mov AX,value  ; Get the value in AX
      
   
   ret
endp   
   
    


                 
end main  ;writing main is not necesssary


ret