INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

M1 DB 25
D DB ?
E DB ?
F DB ?
A DW '4 TO D,4 TO E,2 TO F $'
B DW '6 TO D,6 TO E,3 TO F $'
C DW '8 TO D,8 TO E,4 TO F $'
Z DW '10 TO D,10 TO E,5 TO F $'
.CODE 

MAIN PROC
    
MOV AX,@DATA
MOV DS,AX 


CMP M1,10
JE DD

CMP M1,15
JE DE

CMP M1,20
JE DF  
    
CMP M1,25
JE DZ        

DD:   

MOV BL,4
MOV D,BL 

MOV BL,4
MOV E,BL

MOV BL,2
MOV F,BL


LEA DX,A
MOV AH,9
INT 21H

JMP TERMINATE
           
DE:

MOV BL,6
MOV D,BL 

MOV BL,6
MOV E,BL

MOV BL,3
MOV F,BL 
LEA DX,B
MOV AH,9
INT 21H
JMP TERMINATE
DF:

MOV BL,8
MOV D,BL 

MOV BL,8
MOV E,BL

MOV BL,3
MOV F,BL
LEA DX,C
MOV AH,9
INT 21H
JMP TERMINATE
    

DZ:

MOV BL,10
MOV D,BL 

MOV BL,10
MOV E,BL

MOV BL,5
MOV F,BL

LEA DX,Z
MOV AH,9
INT 21H
JMP TERMINATE   
    
    
  TERMINATE:
  MOV AH,4CH
  INT 21H  
    
    
   