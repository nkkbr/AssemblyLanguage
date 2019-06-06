assume cs:codesg

codesg segment

start:mov cx,3
      mov ax,0B878H
      mov ds,ax
s:    mov bx,40H
      mov byte ptr [bx],77H
      add bx,2
      mov byte ptr [bx],65H
      add bx,2
      mov byte ptr [bx],6CH
      add bx,2
      mov byte ptr [bx],63H
      add bx,2
      mov byte ptr [bx],6FH
      add bx,2
      mov byte ptr [bx],6DH
      add bx,2
      mov byte ptr [bx],65H
      add bx,2
      mov byte ptr [bx],20H
      add bx,2
      mov byte ptr [bx],74H
      add bx,2
      mov byte ptr [bx],6fH
      add bx,2
      mov byte ptr [bx],20H
      add bx,2
      mov byte ptr [bx],6DH
      add bx,2
      mov byte ptr [bx],61H
      add bx,2
      mov byte ptr [bx],73H
      add bx,2
      mov byte ptr [bx],6DH
      add bx,2
      mov byte ptr [bx],21H

      mov ax,ds
      add ax,0AH
      mov ds,ax
      loop s

      mov ax,0B878H
      mov ds,ax
      mov cx,10H
      mov bx,41H
s1:   mov byte ptr [bx],2H
      add bx,2
      loop s1

      mov ax,0B882H
      mov ds,ax
      mov cx,10H
      mov bx,41H
s2:   mov byte ptr [bx],24H
      add bx,2
      loop s2

      mov ax,0B88CH
      mov ds,ax
      mov cx,10H
      mov bx,41H
s3:   mov byte ptr [bx],71H
      add bx,2
      loop s3

      mov ax,4c00h
      int 21H

codesg ends
end start
