.STACK 100H
.CODE 
MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BH,AL   ; INPUT 1
    
    MOV AH,1
    INT 21H
    MOV CL,AL   ; INPUT 2
    
    MOV AH,1
    INT 21H
    MOV DH,AL   ; INPUT 3
    
    CMP BH,CL
    JG L
    
    CMP CL,DH
    JG OUT2 
    JMP OUT3
    
    L: CMP BH,DH
    JG OUT1
    JMP OUT3   
    
    OUT1: MOV DL,BH 
    MOV AH,2
    INT 21H
    JMP EXIT
    
    OUT2: MOV DL,CL 
    MOV AH,2
    INT 21H
    JMP EXIT
    
    OUT3: MOV DL,DH 
    MOV AH,2
    INT 21H
    JMP EXIT
      
    EXIT : 
    
MAIN ENDP
