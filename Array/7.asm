
org 100h

;This adds the elements of the array called N

.MODEL SMALL
.STACK 100H
.DATA

nl db 10,13,'$'
masg1 db "Hello WOrld$" 
msg2 dw 'h','e', 108,'l','o',' ', 'W','o','r','l','d', '$'
;n dw 1,2,3,4,5
x db 0
;i db ?

sum dw 0

matrix db 1,2
       dw 4,5
       db 7,8
       
matrixreloded db 1,0,0,0,1,0,0,0,1

m db 3
n db 2 

i db 0
j db 0


ourdw db 1 

.CODE


MAIN PROC

    MOV AX, @DATA
	MOV DS , AX
    
    LEA SI,matrix   ; matrix [0][2]
                    ; matrix [i][j] =  (i * rowsize) + j
    MOV al,m
    MOV ah,n
    MUL ah
    
    MOV x,al
    MOV ah,0
    
    MOV cx,ax
    
    
    add n,-1
    add m,-1
    
    L1:       
        MOV al,ourdw
        MOV ah,i
        CMP i,al
        JE L2
            
        MOV DL,[SI]
        ADD DL,'0'
        
        MOV AH,2
        INT 21h
    	
    	INC SI
    	
    	MOV al,j
    	
    	INC j
    	
    	CMP cx,1
    	JE EXIT
    	
    	
    	CMP al,n
    	JE Magic
    	 
    	LOOP L1
        JMP Done


    Magic:
        ADD i,1
        
       
    
        lea dx,nl
        MOV ah,9
        INT 21h
        
        MOV j,0
        
        LOOP L1
        JMP L1
    
    
    L2:
          INC SI
          JMP L1
            
    Done:

	
	
EXIT:
	
	    MOV AH,4CH
		INT 21H
		
MAIN ENDP


END MAIN
   
   
   
   
   
   

ret




