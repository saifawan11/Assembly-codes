.model small
.stack 100h
.data
ARR DB ?,?,?,?,?  ;ARRAY DECLARATION
.code
main proc
    
    MOV AX,@DATA
    MOV DS,AX 
    
    
    MOV CX,5 ;LOOP
    MOV SI,0 ; SOURCE INDEX
   
    
    MOV AH,1
   
   
    MOV ARR[SI],AL 
    INPUT:
   INT 21H  
    INC SI  
    
    
    LOOP INPUT
       
       
    
   MOV DL,ARR[SI]
   ADD DL,30H; COVERT TO ASCII
     
   OUTPUT:
   INT 21H
   INC SI
    LOOP OUTPUT  
   
   
   
   TERMINATE:
   
MOV AH,4CH
INT 21H
    
 
    
    
    
    
    
    
    
    
    
    
    
    
    
      MAIN ENDP

END MAIN
