; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\Projects\TaintAnalysis\AntiTaint\Epilog\src\func-iparam-fastcall.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	??_C@_0BA@NNIFAFEJ@?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFs?6?$AA@ ; `string'
PUBLIC	@func@16
EXTRN	__imp__printf:PROC
EXTRN	__imp__gets:PROC
;	COMDAT ??_C@_0BA@NNIFAFEJ@?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFs?6?$AA@
; File d:\projects\taintanalysis\antitaint\epilog\src\func-iparam-fastcall.c
CONST	SEGMENT
??_C@_0BA@NNIFAFEJ@?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFs?6?$AA@ DB '%d %d %d '
	DB	'%d %s', 0aH, 00H				; `string'
; Function compile flags: /Ogtp
CONST	ENDS
;	COMDAT @func@16
_TEXT	SEGMENT
_buf$ = -8						; size = 8
_param3$ = 8						; size = 4
_param4$ = 12						; size = 4
@func@16 PROC						; COMDAT
; _param1$ = ecx
; _param2$ = edx

; 16   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	push	esi
	push	edi

; 17   :   char buf[8];
; 18   :   gets(buf);

	lea	eax, DWORD PTR _buf$[ebp]
	push	eax
	mov	esi, edx
	mov	edi, ecx
	call	DWORD PTR __imp__gets

; 19   :   printf("%d %d %d %d %s\n", param1, param2, param3, param4, buf);

	mov	edx, DWORD PTR _param4$[ebp]
	mov	eax, DWORD PTR _param3$[ebp]
	lea	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	push	edx
	push	eax
	push	esi
	push	edi
	push	OFFSET ??_C@_0BA@NNIFAFEJ@?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFs?6?$AA@
	call	DWORD PTR __imp__printf
	add	esp, 28					; 0000001cH
	pop	edi
	pop	esi

; 20   : }

	mov	esp, ebp
	pop	ebp
	ret	8
@func@16 ENDP
_TEXT	ENDS
PUBLIC	_main
; Function compile flags: /Ogtp
;	COMDAT _main
_TEXT	SEGMENT
_main	PROC						; COMDAT

; 24   :   func(1, 2, 3, 4);

	push	4
	mov	edx, 2
	push	3
	lea	ecx, DWORD PTR [edx-1]
	call	@func@16

; 25   :   return 0;

	xor	eax, eax

; 26   : }

	ret	0
_main	ENDP
_TEXT	ENDS
END
