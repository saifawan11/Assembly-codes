.model small
.stack 100h
.data
msg dW  "SZABIST $"   ;ASCII FOR NEW LINE

.code
 
 main proc
    


MOV AH,01H
INT 21H
MOV BX,AX
 
 



MOV AX,@DATA    
MOV DS,AX
MOV AH,9
  MOV DX,BX
MOV CX,DX 

  
 
 
               ; CX IS COUNTER REGISTER    LOOP


PRINT:   ;LABEL

      INT 21H
 
  LOOP PRINT  
  
  
       MOV AH,4CH     ; EXIT COMMAND
      INT 21H
             

main endp        
 
 
 
 ;          PRINT ALPHABETS USING LOOPS