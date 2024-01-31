.STACK 100H
.DATA
A DW 'ODD $'
B DW 'EVEN $'

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
    
    CMP BH,'0'
    JE L2
    
    CMP BH,'1'
    JE L1
    
    CMP BH,'2'
    JE L2
    
    CMP BH,'3'
    JE L1    
    
     CMP BH,'4'
    JE L2
    
    CMP BH,'5'
    JE L1
    
     CMP BH,'6'
    JE L2  
    
    CMP BH,'7'
    JE L1     
    
     CMP BH,'8'
    JE L2
    
    CMP BH,'9'
    JE L1   
    
    L1: 
    MOV AH,9
    LEA DX,A
    INT 21H 
    JMP EXIT
    
     L2: 
    MOV AH,9
    LEA DX,B
    INT 21H 
    
    EXIT: 
    
    MAIN ENDP
