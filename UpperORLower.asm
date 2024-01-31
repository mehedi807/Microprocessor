.STACK 100H
.DATA
A DW 'Uppercase $'
B DW 'Lowercase $'

.CODE 
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV BH,AL   ; INPUT  
    
    MOV AH,2      
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H 
    
    CMP BH,'A'
    JGE NESTED
    
    NESTED:
    CMP BH,'Z'
    JLE OUT1
    
    CMP BH,'a'
    JGE NESTED1
    
    NESTED1:
    CMP BH,'z'
    JLE OUT2
    
    OUT1:
    MOV AH,9
    LEA DX,A
    INT 21H
    JMP EXIT
    
    OUT2:
    MOV AH,9
    LEA DX,B
    INT 21H  
    
    EXIT: 
    
    MAIN ENDP
