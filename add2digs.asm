.model small
.data 
input1 db 10,?  
l1 db $-input1
input2 db 10,?  
l2 db $-input2
.stack
.code
.startup  

mov dx,offset input1
mov ah,0ah
int 21h
mov bl,al

mov dx,offset input2 
mov ah,0ah
int 21h 

;add bl,al

;sub bl,30h
add dx,2 
;mov dl,bl 
mov ah,09h
int 21h 

end                     