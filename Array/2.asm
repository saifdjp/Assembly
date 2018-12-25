.MODEL SMALL
.STACK 100H
.DATA

nl db 0dh,0ah, '$'
masg1 db "Hello WOrld$" 
msg2 dw 'h','e', 108,'l','o',' ', 'W','o','r','l','d', '$'
n dw 10,20,30,40,50
x db ?

.CODE


MAIN PROC

    MOV AX, @DATA
	MOV DS , AX
    
    LEA SI,msg2 ; Load the adress of a msg2 variable to Si reg
    
L1:    
    MOV dl,[si]  
    MOV x, dl
    
    CMP DL,'$'
    je done
    
    MOV ah,2
    MOV dl,x
    int 21h
    
    
    INC SI   ; To next index
    INC SI   ;;YOu increment 2 if you are working with word
    jmp L1

done:
    
    
    
	


	
	
EXIT:
	
	    MOV AH,4CH
		INT 21H
		
MAIN ENDP


END MAIN
   
   
   
   
   
   