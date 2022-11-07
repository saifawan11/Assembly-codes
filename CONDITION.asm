.model small
.stack 100h
.data

.code
main proc
    
      MOV AH,1
      INT 21H
    
      MOV DL,3
      ADD DL,48 
      
      CMP AL,DL               ;comparing 
     JE J
     JNE E
     
      
      J:                       ;LABEL 
      
      MOV DL,'H'
      MOV AH,2
      INT 21H
      
     
    E:
    MOV DL,'N'
    MOV AH,2
    INT 21H
       
    
      MAIN ENDP

END MAIN
