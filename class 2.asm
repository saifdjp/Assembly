; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

.stack 100h
.data  ;

x db ?         ;Uninitialized
red db "RED$"
green db "GREEN$"
blue db "BLUE$"

valid db 0


.code

proc main         ;Procede main
    mov bx,@data  ; Necessary       ;Mapping datasegment to bx(DX,AX,CX is also good)   ;Below line will not work if you don't give this
    MOV DS,bx     ; Necessary
    
    ;Tke input as long as input is invalid
    L1:        
        ;Take a char to X        
        MOV AH,08
        INT 21h
        MOV x,al
        
        cmp x,'r'  ;Compair if x=='r'
        JE printred       ;JE is for JUMP if equal, (Conditional JUMP)     
        
        cmp x,'g'  ;Compair if x=='r'
        JE printgreen       ;JE is for JUMP if equal, (Conditional JUMP)     
        
        cmp x,'b'  ;Compair if x=='r'
        JE printblue       ;JE is for JUMP if equal, (Conditional JUMP)     
        
        JMP L1

    printred:
        lea dx,red
        MOV AH,9
        INT 21h
        JMP exit
            
    printgreen:            
        lea dx,green
        MOV AH,9
        INT 21h
        JMP exit 
        
    printblue:
        lea dx,blue
        MOV AH,9
        INT 21h    
    
    exit:            
        MOV AH, 4ch   ;4C ends the procedure with return
        INT 21h
endp main
                  ; End the main() procedure
end main


ret