.586
.model flat, stdcall

includelib libucrt.lib
includelib kernel32.lib
includelib Lib.lib

ShowInt PROTO : DWORD, : DWORD, : DWORD
ShowChar PROTO : DWORD, : DWORD
CharToInt PROTO : DWORD
ShowString PROTO : DWORD, : DWORD, : DWORD
ShowBool PROTO : DWORD, : DWORD
inv PROTO : DWORD
StringToInt PROTO : DWORD, : DWORD
translate PROTO : DWORD, : DWORD, : DWORD
cmpstr PROTO : DWORD, : DWORD
cmpuint PROTO : DWORD, : DWORD
ExitProcess PROTO : DWORD
stop PROTO
funcfa PROTO :DWORD 

.stack 4096

.const
L1 DWORD 0
systemL1 DWORD 10
L2 DWORD 1
systemL2 DWORD 10
L3 DWORD 'n','u','m','b','e','r',' '
L4 DWORD 10
systemL4 DWORD 10
L5 DWORD 101
systemL5 DWORD 10
L6 DWORD 'q'
L7 DWORD '1','2','5'

.data
systemfaa DWORD 10
fab DWORD 0
fac DWORD 0
maina DWORD 0
systemmaina DWORD 10
mainc DWORD 0
mainb DWORD 0

.CODE
funcfa PROC faa :DWORD 
push faa
push L1
call cmpuint
push eax
pop eax
mov fab,eax
mov eax ,fab
cmp eax,0
je else0
push L2
pop eax
RET
call  go0
else0:
mov esi, offset L3
mov ecx, LENGTHOF L3
mov ebx,ecx
push 0
push ebx
push esi
call ShowString
push systemfaa
push 1
push faa
call ShowInt
push faa
pop eax
add eax,1
push eax
pop eax
mov faa,eax
push faa
call funcfa
push eax
pop eax
mov fac,eax
go0:
push L1
pop eax
RET
funcfa ENDP

MAIN:
push L4
pop eax
mov maina,eax
push L2
push L5
pop eax
pop ebx
and eax,ebx
push eax
pop eax
mov maina,eax
push systemmaina
push 1
push maina
call ShowInt
push L6
pop eax
mov mainc,eax
push 1
push mainc
call ShowChar
mov esi, offset L7
mov ecx, LENGTHOF L7
mov ebx,ecx
push ebx
push esi
call StringToInt
cmp eax, -1
je exit
mov maina,eax
push systemmaina
push 1
push maina
call ShowInt
push systemmaina
push 1
push maina
call ShowInt
push L1
pop eax
mov maina,eax
push maina
call funcfa
push eax
pop eax
mov mainb,eax
push 1
push mainb
call ShowBool
call stop
exit:
push 0
call ExitProcess
END MAIN