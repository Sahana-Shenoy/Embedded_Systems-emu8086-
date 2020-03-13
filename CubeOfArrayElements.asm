;Cube of array elements.MODEL SMALL
.STACK
.DATA
ARRAY DB 20,dup(0) 
output dw 20,dup(0)
.CODE
.STARTUP 
mov dx,offset array
mov ah,0ah
int 21h
MOV CX,00H
MOV CL,ARRAY[1] 
mov si,2h 
mov ax,00h
mov al,array[1]
mov di,offset output 
add di,ax
dec di
CUBE:  
mov ax,00h
MOV AL, ARRAY[si]
SUB AL,30H
MOV Bl,Al
MUL Ax
MUL Bx  
MOV output[di],Ax
INC SI
inc di 
inc di
LOOP CUBE
END
