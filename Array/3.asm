;This adds the elements of the array called N

.MODEL SMALL
.STACK 100H
.DATA

nl db 0dh,0ah, '$'
masg1 db "Hello WOrld$" 
msg2 dw 'h','e', 108,'l','o',' ', 'W','o','r','l','d', '$'
n dw 1,2,3,4,5
x dw ?
;i db ?

sum dw 0
.CODE


MAIN PROC

    MOV AX, @DATA
	MOV DS , AX
    
    LEA SI,n ; Load the adress of a msg2 variable to Si reg
    
    mov cx,5
    
L1:    
    MOV ax,[si]  
    MOV x, AX
    
    MOV AX,x
    ADD sum,AX
    
    INC SI
    INC SI
    
    LOOP L1
done:
    MOV AX, sum
    
    
	


	
	
EXIT:
	
	    MOV AH,4CH
		INT 21H
		
MAIN ENDP


END MAIN
   
   
   
   
   
   