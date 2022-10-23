.model small    
.STACK 100H
.CODE

MAIN PROC
    MOV CX,26
    MOV AH,2
    MOV DL,65
  
  
L1:
INT 21H
INC DL
LOOP L1
MOV DL, 10
MOV AH,2
INT 21H
MOV DL,13
MOV AH,2
INT 21H
MOV CX,26
MOV DL,97
MOV AH,2

L2:
int 21h
inc dl
loop L2
mov ah,4ch
INT 21h 

main endp
end main