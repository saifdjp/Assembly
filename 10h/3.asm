                                       
ORG 100H
.model small
.STACK 100H
.DATA 

x dw 100
y dw 100


.CODE



main proc
;mov ah,2
;mov dl,"*"
;INT 21h

mov dx, @data
mov ds, dx


    mov AH,0
    mov AL,12h
    int 10h
      

e db ?
s db ?

mov s    
L1:    
    mov AH,0ch
    mov AL,15
    mov BH,0
    mov CX,x
    mov DX,y
    int 10h
    
    inc x 
    cmp x,150
    jl L1
    
    
    mov x,100
    mov y,100
    jmp L2
    
    
L2:
   mov AH,0ch
   mov AL,15
   mov BH,0
   mov CX,x
   mov DX,y
   int 10h
   
   inc y
   cmp y,150
   jl L2
   
   
   jmp L3 

L3:    
    mov AH,0ch
    mov AL,15
    mov BH,0
    mov CX,x
    mov DX,y
    int 10h
    
    inc x 
    cmp x,150
    jl L3
    
    
    jmp L4
    
L4:
   mov AH,0ch
   mov AL,15
   mov BH,0
   mov CX,x
   mov DX,y
   int 10h
   
   inc y
   cmp y,200
   jl L4
   
   jmp L5
   
L5:
   mov AH,0ch
   mov AL,15
   mov BH,0
   mov CX,x
   mov DX,y
   int 10h
    
    dec x 
    cmp x,100
    jne L5
     
    
mov ah,4ch
int 21h

endp main

end mainss