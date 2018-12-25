
org 100h

; add your code here  

.stack 100h
.data  ;

;name dw xxxx   ;name db xxxx
;SHL A,B-> Left Shift A by B
;SHR ,B -> RIght Shift A by B

;DIV X   -> Div X by AX ,  DX:-Remainder , AX = Quisent


; RCR A,1 -> Rotate A THrough Carry by 1
;RCL

;ROR AX,1 -> Rotate A by 1

;STC -> CF=1 ; CLC -> CF=0



;pushed db 0
.code

proc main        
    MOV bx,@data  
    MOV DS,bx     
    
            
        
    exit:        
        
                     
        MOV AH, 4ch   
        INT 21h
endp main
                 
end main


ret