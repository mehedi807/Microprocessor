.STACK 100H
.DATA
A DB 'Enter first digit: $' 
B DB 'Enter second digit: $' 
C DB 'The sum is : $'    
.CODE

MAIN PROC 
    
MOV AX, @DATA
MOV DS,AX

MOV AH, 9   ; print A
LEA DX, A
INT 21H

MOV AH,1     ; input A
INT 21H
MOV BL,AL

MOV AH,2       ; new line
MOV DL,10
INT 21H
MOV DL,13
INT 21H

MOV AH,9
LEA DX, B  ;print B
INT 21H  

MOV AH,1       ;input B
INT 21H
MOV CL,AL  

MOV AH,2
MOV DL,10    ;new line
INT 21H
MOV DL,13
INT 21H  
           
MOV AH,9
LEA DX, C       ;print c
INT 21H
           
ADD BL,CL     ;sum value in BL
SUB BL,48      ; string to decimal
MOV DL,BL 
MOV AH,2         ;print DL
INT 21H


MAIN ENDP