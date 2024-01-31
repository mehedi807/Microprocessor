.STACK 100H
.DATA


.CODE 
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV BX,0
    MOV AX,1
    
    L1:
    ADD BX,AX
    ADD AX,2
    CMP AX,40
    JLE L1 
    
    
    
    EXIT: 
    
    MAIN ENDP
