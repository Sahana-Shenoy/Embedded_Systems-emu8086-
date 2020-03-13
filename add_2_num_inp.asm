.model small
.stack
.data
str1 db 10,"Enter the num1: $"
str2 db 10,"Enter the num2: $" 
str3 db 10,"SUM :$"
.code
.startup
mov dx,offset str1
mov ah,09h
int 21h  

mov ah,01h
int 21h
mov bl,al
sub bl,30h

mov dl,0Ah
mov ah,02h
int 21h

mov dx,offset str1
add dx,1
mov ah,09h
int 21h
 
mov ah,01h
int 21h
mov bh,al

add bh,bl 

mov dl,0Ah
mov ah,02h
int 21h

mov dx,offset str3
add dx,1
mov ah,09h
int 21h
    
mov dl,bh
mov ah,02h
int 21h

.exit
end
