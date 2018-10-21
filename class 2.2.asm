; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

.stack 100h
.data  ;

i db '0'


.code

proc main         ;Procede main
    mov bx,@data  ; Necessary       ;Mapping datasegment to bx(DX,AX,CX is also good)   ;Below line will not work if you don't give this
    MOV DS,bx     ; Necessary
    
    MOV cl,0
    
    
    
    L1:        
        mov dl,i
        add dl,1
        
        mov ah,2
        int 21h
        
        add cl,1
        
        cmp cl,5
        JE exit
        JMP L1
    
    exit:            
        MOV AH, 4ch   ;4C ends the procedure with return
        INT 21h
endp main
                  ; End the main() procedure
end main


ret


