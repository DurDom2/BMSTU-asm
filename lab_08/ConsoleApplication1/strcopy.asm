.MODEL FLAT, C
.CODE
.STACK
.686

strcopy PROC C TO:DWORD, FROM:DWORD, LEN:DWORD
    mov esi, from ; esi = str2
    mov edi, to ; edi = str1
    mov ecx, len ; ecx = len
    ; ��������� ecx ���
    REP movsb ; ���������� �� esi(str2) � edi(str1)
    mov al, 0
    mov [edi], al
    ret
strcopy ENDP
END