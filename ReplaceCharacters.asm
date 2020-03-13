;To replace 'a' with 'z'
.MODEL SMALL
.STACK
.DATA
STR DB "Madam$"
STRLEN DB 0H
.code
.startup
mov cx,0
mov ax,0
mov si, offset str
check1:
cmp [si],'$'
jz replace
inc si
inc strlen
jmp check1

replace:
mov cl,strlen
mov si,offset str
loop1: cmp [si],'a'
jnz repeat       
mov [si], 'z'

repeat:
inc si
loop loop1
end