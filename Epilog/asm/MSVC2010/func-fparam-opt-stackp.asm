; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\Projects\TaintAnalysis\AntiTaint\Epilog\src\func-fparam.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	??_C@_0N@NJAPOBLP@?$CFf?5?$CFf?5?$CFf?5?$CFs?6?$AA@ ; `string'
PUBLIC	__$ArrayPad$
PUBLIC	_func
EXTRN	__imp__printf:PROC
EXTRN	__imp__gets:PROC
EXTRN	___security_cookie:DWORD
EXTRN	__fltused:DWORD
EXTRN	@__security_check_cookie@4:PROC
;	COMDAT ??_C@_0N@NJAPOBLP@?$CFf?5?$CFf?5?$CFf?5?$CFs?6?$AA@
; File d:\projects\taintanalysis\antitaint\epilog\src\func-fparam.c
CONST	SEGMENT
??_C@_0N@NJAPOBLP@?$CFf?5?$CFf?5?$CFf?5?$CFs?6?$AA@ DB '%f %f %f %s', 0aH
	DB	00H						; `string'
; Function compile flags: /Ogtp
CONST	ENDS
;	COMDAT _func
_TEXT	SEGMENT
_buf$ = -12						; size = 8
__$ArrayPad$ = -4					; size = 4
_param1$ = 8						; size = 8
_param2$ = 16						; size = 8
_param3$ = 24						; size = 8
_func	PROC						; COMDAT

; 9    : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax

; 10   :   char buf[8];
; 11   :   gets(buf);

	lea	eax, DWORD PTR _buf$[ebp]
	push	eax
	call	DWORD PTR __imp__gets

; 12   :   printf("%f %f %f %s\n", param1, param2, param3, buf);

	fld	QWORD PTR _param3$[ebp]
	add	esp, 4
	lea	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	sub	esp, 24					; 00000018H
	fstp	QWORD PTR [esp+16]
	fld	QWORD PTR _param2$[ebp]
	fstp	QWORD PTR [esp+8]
	fld	QWORD PTR _param1$[ebp]
	fstp	QWORD PTR [esp]
	push	OFFSET ??_C@_0N@NJAPOBLP@?$CFf?5?$CFf?5?$CFf?5?$CFs?6?$AA@
	call	DWORD PTR __imp__printf

; 13   : }

	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	add	esp, 32					; 00000020H
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
_func	ENDP
_TEXT	ENDS
PUBLIC	__real@3ff0000000000000
PUBLIC	__real@4000000000000000
PUBLIC	__real@4008000000000000
PUBLIC	_main
;	COMDAT __real@3ff0000000000000
CONST	SEGMENT
__real@3ff0000000000000 DQ 03ff0000000000000r	; 1
CONST	ENDS
;	COMDAT __real@4000000000000000
CONST	SEGMENT
__real@4000000000000000 DQ 04000000000000000r	; 2
CONST	ENDS
;	COMDAT __real@4008000000000000
CONST	SEGMENT
__real@4008000000000000 DQ 04008000000000000r	; 3
; Function compile flags: /Ogtp
CONST	ENDS
;	COMDAT _main
_TEXT	SEGMENT
_main	PROC						; COMDAT

; 17   :   func(1, 2, 3);

	fld	QWORD PTR __real@4008000000000000
	sub	esp, 24					; 00000018H
	fstp	QWORD PTR [esp+16]
	fld	QWORD PTR __real@4000000000000000
	fstp	QWORD PTR [esp+8]
	fld1
	fstp	QWORD PTR [esp]
	call	_func
	add	esp, 24					; 00000018H

; 18   :   return 0;

	xor	eax, eax

; 19   : }

	ret	0
_main	ENDP
_TEXT	ENDS
END
