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

matrix db 1,0,0
       db 0,1,0
       db 0,0,1
       
;matrixreloded 1,0,0,0,1,0,0,0,1


.CODE


MAIN PROC

    MOV AX, @DATA
	MOV DS , AX
    
    LEA SI,matrix
    
    MOV DL,[SI]
    ADD DL,'0'
    
    MOV AH,2
    INT 21h
	


	
	
EXIT:
	
	    MOV AH,4CH
		INT 21H
		
MAIN ENDP


END MAIN
   
   
   
   
   
   