
org 100h

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

matrix db 1,2,3
       db 4,5,6
       db 7,8,9
       
;matrixreloded 1,0,0,0,1,0,0,0,1


.CODE


MAIN PROC

    MOV AX, @DATA
	MOV DS , AX
    
    LEA SI,matrix   ; matrix [0][2]
                    ; matrix [i][j] =  (i * rowsize) + j
    add si,2
    MOV DL,[SI]
    ADD DL,'0'
    
    MOV AH,2
    INT 21h
	


	
	
EXIT:
	
	    MOV AH,4CH
		INT 21H
		
MAIN ENDP


END MAIN
   
   
   
   
   
   

ret




