printFunc macro P1  
   
    MOV DX,OFFSET P1
    MOV AH,9
    INT 21H
ENDM

NEW MACRO P2
     
    MOV DL,13
    MOV AH,2
    INT 21H
    
    MOV DL,10
    MOV AH,2
    INT 21H
ENDM

ADDD MACRO P3,P4
    MOV BL,P3
    MOV BH,P4
    ADD BL,BH
    MOV AH,2
    MOV DL,BL
    SUB DL,48 
    
    INT 21H
    ENDM


    
.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "SAIF $"
MSG2 DB "SECOND MSG $"  
V1 DB '4'
V2 DB '5'
.CODE 

MAIN PROC  
    
    MOV AX,@DATA
    MOV DS,AX
    
    PRINTFUNC MSG1
    NEW
    PRINTFUNC MSG2
     ADDD V1,V2
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    MAIN ENDP






