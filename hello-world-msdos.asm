org 100h
mov dx,msg
mov ah,9
int 21h
mov ah,4Ch
int 21h
msg db 'Hello, World!',0Dh,0Ah,'$'
;16 bit code will probably run in a MS-DOS emulator