; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

.stack 100h
.data  ;

x db ?         ;Uninitialized
starstring db "*$"
nl db 10,13, "$"

stars db ?
starcount db 5

lines db ?
linecount db ?

.code

proc main         ;Procede main
    mov bx,@data  ; Necessary       ;Mapping datasegment to bx(DX,AX,CX is also good)   ;Below line will not work if you don't give this
    MOV DS,bx     ; Necessary
    
    
    mov ax,1
    mov bx,2
    mov cx,3
    
    push ax
    push bx
    push cx
    
    pop dx
    pop dx
    pop dx
      
    
    exit:            
        MOV AH, 4ch   ;4C ends the procedure with return
        INT 21h
endp main
                  ; End the main() procedure
end main


ret