.model small
.stack 100h
.data

v2 db 26
   db ?
   db 26 dup<0>


.code
 
 main proc
    
mov ax,@data
mov ds,ax
                
                
mov ah,0Ah
mov dx,offset v2
int 21h     


mov si,offset v2+1
mov cl,[si]
mov ch,0
inc cx
add si,cx
mov al,'$'
mov [si],al

                
mov ah,09h
mov dx,offset v2 +2
int 21h
            

main endp    