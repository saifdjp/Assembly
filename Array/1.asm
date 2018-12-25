.MODEL SMALL
.STACK 100H
.DATA

nl db 0dh,0ah, '$'
masg db "Hello WOrld$" 
msg db 'h','e', 108,'lo',' ', 'World', '$'
n dw 10,20,30,40,50


.CODE


MAIN PROC

    MOV AX, @DATA
	MOV DS , AX
    
    MOV AH,0
    MOV Al,0DH
    INT 10H
    
    MOV CX, 10
	MOV AL, 0
	


	
	
EXIT:
	
	    MOV AH,4CH
		INT 21H
		
MAIN ENDP


END MAIN
   
   
   
   
   
   