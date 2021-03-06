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
    
    outerinit:
            MOV lines,1
            MOV linecount, 12
    outercondition:
            MOV bl,linecount
            CMP lines,bl
            JLE outeriter
            JMP exit
            
            
    outeriter:
              innerinit:
                  MOV stars,1
                               
                  MOV BL,lines             
                  MOV starcount,BL
         
              innercondition:
                  MOV dl,starcount  ; cl er jaygay onno kisu rakha jabe
                  CMP stars,dl
                  JLE inneriter
                  JMP innerexit
                
                inneriter:
                     MOV Dl,48
                     ADD Dl,stars
                     mov ah,2
                     int 21h
                     
                     JMP innerpost
                innerpost:
                     ADD stars,1 ;;We can also write:   inc stars   
                     JMP innercondition 
    
              innerexit:
                MOV ah,9
                lea DX,nl
                int 21h
                JMP outerpost
                
    outerpost:
             ADD lines,1
             JMP outercondition
    
         
         
    
    exit:            
        MOV AH, 4ch   ;4C ends the procedure with return
        INT 21h
endp main
                  ; End the main() procedure
end main


ret