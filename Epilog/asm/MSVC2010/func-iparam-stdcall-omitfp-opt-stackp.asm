; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\Projects\TaintAnalysis\AntiTaint\Epilog\src\func-iparam-stdcall.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	??_C@_0BA@NNIFAFEJ@?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFs?6?$AA@ ; `string'
PUBLIC	__$ArrayPad$
PUBLIC	_func@16
EXTRN	__imp__printf:PROC
EXTRN	__imp__gets:PROC
EXTRN	___security_cookie:DWORD
EXTRN	@__security_check_cookie@4:PROC
;	COMDAT ??_C@_0BA@NNIFAFEJ@?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFs?6?$AA@
; File d:\projects\taintanalysis\antitaint\epilog\src\func-iparam-stdcall.c
CONST	SEGMENT
??_C@_0BA@NNIFAFEJ@?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFs?6?$AA@ DB '%d %d %d '
	DB	'%d %s', 0aH, 00H				; `string'
; Function compile flags: /Ogtpy
CONST	ENDS
;	COMDAT _func@16
_TEXT	SEGMENT
_buf$ = -12						; size = 8
__$ArrayPad$ = -4					; size = 4
_param1$ = 8						; size = 4
_param2$ = 12						; size = 4
_param3$ = 16						; size = 4
_param4$ = 20						; size = 4
_func@16 PROC						; COMDAT

; 16   : {

	sub	esp, 12					; 0000000cH
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+12], eax

; 17   :   char buf[8];
; 18   :   gets(buf);

	lea	eax, DWORD PTR _buf$[esp+12]
	push	eax
	call	DWORD PTR __imp__gets

; 19   :   printf("%d %d %d %d %s\n", param1, param2, param3, param4, buf);

	mov	edx, DWORD PTR _param4$[esp+12]
	mov	eax, DWORD PTR _param3$[esp+12]
	lea	ecx, DWORD PTR _buf$[esp+16]
	push	ecx
	mov	ecx, DWORD PTR _param2$[esp+16]
	push	edx
	mov	edx, DWORD PTR _param1$[esp+20]
	push	eax
	push	ecx
	push	edx
	push	OFFSET ??_C@_0BA@NNIFAFEJ@?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFs?6?$AA@
	call	DWORD PTR __imp__printf

; 20   : }

	mov	ecx, DWORD PTR __$ArrayPad$[esp+40]
	add	esp, 28					; 0000001cH
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 12					; 0000000cH
	ret	16					; 00000010H
_func@16 ENDP
_TEXT	ENDS
PUBLIC	_main
; Function compile flags: /Ogtpy
;	COMDAT _main
_TEXT	SEGMENT
_main	PROC						; COMDAT

; 24   :   func(1, 2, 3, 4);

	push	4
	push	3
	push	2
	push	1
	call	_func@16

; 25   :   return 0;

	xor	eax, eax

; 26   : }

	ret	0
_main	ENDP
_TEXT	ENDS
END
