
INCLUDE 'EMU8086.INC'      ;include an assembly library
.MODEL SMALL
.STACK 100h
.DATA

V DB ?        
    ARR DB V DUP(?) ; declare array with null value initially 

.CODE
    main proc
        mov ax,@data
        mov ds,ax
        XOR BX,BX
        XOR CX,CX
        
        
       
        PRINT "How many number you want to store(1-9): "
        
        MOV AH,1
        INT 21H
        AND AL,0FH ;convert from ascii value to real value
        
        MOV CL,AL
        MOV BL,AL
        MOV SI,0
        
        PRINTN
        PRINT "Enter values(without press enter or space): "
        PRINTN
        INPUT:
           INT 21H
           MOV ARR[SI],AL
           INC SI
           LOOP INPUT
        PRINTN
        PRINT "OUTPUT: "
        PRINTN
        
        MOV CX,BX
        MOV SI,0
        MOV AH,2  
        OUTPUT:
            MOV DL,ARR[SI]
            INT 21h
            INC SI
           LOOP OUTPUT
      
  
           
           
    TERMINATE:
       ADD ARR[0],AL
       MOV AH,2 
       MOV DL,ARR[]
       SUB DL,30H        
       INT 21H
              
         TTERMINATE:
            DEC  AL
       SUB AL,ARR[1]
       MOV AH,2 
       MOV DL,AL  
       ADD DL,30H      
       INT 21H  
       
             
       
       VF:
       mov si,3
    ADD dl,30h
    mov dl,ARR[si]
   
    mov ah,2
    int 21h
        
  MAIN ENDP
END MAIN