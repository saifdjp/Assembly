; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

.stack 100h
.data
msg1 db "Shofiqul Islam",10,13, "011161079",10,13,'$'
msg2 db "KAFCO School And College",10,13, "$"
nl db 10,13, '$'


letter db ? ; ? == UNdefined

.code

;Showing Hello World
MOV AH,9
MOV dx, offset msg1  ; == lea dx,msg
int 21h    

MOV AH,9
MOV dx, offset msg2  ; == lea dx,msg
int 21h   


;Take a char
MOV AH,08
INT 21h

ret