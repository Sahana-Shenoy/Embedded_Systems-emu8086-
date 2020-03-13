;To count number of vowels in string
.model small
.stack
.data
input db 10 ?
count db ?
.code
.startup    
mov dx,offset input
mov ah,0Ah
int 21h
mov count,00h
add dx,02h
add si,2h
check: cmp [si],'a'
       jz exit1  

       cmp [si],'e'
       jz exit1  
       
       cmp [si],'i'
       jz exit1  
       
       cmp [si],'o'
       jz exit1  
       
       cmp [si],'u'
       jz exit1  
     
      cmp [si],'$'  
jz exit
inc si  

jmp check
exit1: inc count
inc si
cmp [si],'$'
jz exit
jmp check
exit:
end
