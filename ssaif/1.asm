; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

.stack 100h
.data  ;

x db ?         ;Uninitialized
starstring db '*$'
nl db 10,13
stars db ?
starcount db ?

.code

proc main         ;Procede main
    mov bx,@data  ; Necessary       ;Mapping datasegment to bx(DX,AX,CX is also good)   ;Below line will not work if you don't give this
    MOV DS,bx     ; Necessary
    
    MOV starcount, 10
    
    init:
         MOV stars,1
    condition:
        MOV dl,starcount  ; cl er jaygay onno kisu rakha jabe
        CMP stars,dl
        JLE iter
        JMP exit
        
    iter:
         lea DX, starstring
         mov ah,9
         int 21h
         
         JMP post
    post:
         ADD stars,1 ;;We can also write:   inc stars   
         JMP condition
    
    exit:            
        MOV AH, 4ch   ;4C ends the procedure with return
        INT 21h
endp main
                  ; End the main() procedure
end main


ret