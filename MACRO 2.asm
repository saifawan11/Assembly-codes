INPUT MACRO P1,P2,P3

  
  
   MOV AH,1
   INT 21H
   MOV CL,AL
   CMP CL,1
   
   MOV AX,OFFSET MSG2
   MOV AH,9
   INT 21H
   
   
    MOV AH,1
    INT 21H
    MOV BL,AL
             
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    
    ENDM

ADDD MACRO P4
    ADD BH,BL
    MOV DL,BH
    SUB DL,48
    MOV AH,2
    INT 21H

  ENDM

SUBB MACRO P5
    SUB BL,BH
    MOV DL,BL
    ADD DL,48
    MOV AH,2
    INT 21H

  ENDM








.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "1:ADD OR 2:SUBB $"
MSG2 DB "ENTER TWO NO $"  
V1 DB ?
V2 DB ? 
V DB ?
.CODE 

MAIN PROC  
    
    MOV AX,@DATA
    MOV DS,AX
    
   MOV AX,OFFSET MSG1
   MOV AH,9
   INT 21H
   
    INPUT V,V1,V2
    
 
 CMP V,1
 JE A
 JNE B 
 
  A:
    
    ADDD P4
    JMP TER
    
 B:   
   SUBB P5
   JMP TER 
    
    
    
    TER:
    MOV AH,4CH
    INT 21H
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    MAIN ENDP






