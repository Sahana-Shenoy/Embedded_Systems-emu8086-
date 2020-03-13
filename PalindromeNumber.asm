;To check if number is palindrome
.model small
.stack
.data
yes db "palindrome$"
no db "not palindrome$"
str1 db 10,? 
.code
.startup
lea dx,str1
mov ah,0ah
int 21h
mov ax,0
mov al,str1[1]
add ax,1
mov si,ax
mov bh,2h
div bh
mov cx,0
mov cl,al
mov di,2
loop1:
mov bh,str1[si]
cmp bh,str1[di]
jnz exit1
dec si
inc di
loop loop1
lea dx,yes
mov ah,09h
int 21h
jmp end1
exit1:
lea dx,no
mov ah,09h
int 21h
end1:
end