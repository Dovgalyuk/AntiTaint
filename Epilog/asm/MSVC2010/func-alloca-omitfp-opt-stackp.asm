; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\Projects\TaintAnalysis\AntiTaint\Epilog\src\func-alloca.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	??_C@_02DPKJAMEF@?$CFd?$AA@			; `string'
PUBLIC	__$ArrayPad$
PUBLIC	_func
EXTRN	__imp__printf:PROC
EXTRN	__imp__gets:PROC
EXTRN	__imp__scanf:PROC
EXTRN	___security_cookie:DWORD
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__alloca_probe_16:PROC
;	COMDAT ??_C@_02DPKJAMEF@?$CFd?$AA@
; File d:\projects\taintanalysis\antitaint\epilog\src\func-alloca.c
CONST	SEGMENT
??_C@_02DPKJAMEF@?$CFd?$AA@ DB '%d', 00H		; `string'
; Function compile flags: /Ogtpy
CONST	ENDS
;	COMDAT _func
_TEXT	SEGMENT
_sz$ = -8						; size = 4
__$ArrayPad$ = -4					; size = 4
_func	PROC						; COMDAT

; 10   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	push	esi

; 11   :   int sz;
; 12   :   char *buf;
; 13   :   scanf("%d", &sz);

	lea	eax, DWORD PTR _sz$[ebp]
	push	eax
	push	OFFSET ??_C@_02DPKJAMEF@?$CFd?$AA@
	call	DWORD PTR __imp__scanf

; 14   :   buf = (char*)alloca(sz);

	mov	eax, DWORD PTR _sz$[ebp]
	add	esp, 8
	call	__alloca_probe_16
	mov	esi, esp

; 15   :   gets(buf);

	push	esi
	call	DWORD PTR __imp__gets

; 16   :   printf(buf);

	push	esi
	call	DWORD PTR __imp__printf
	add	esp, 8

; 17   : }

	lea	esp, DWORD PTR [ebp-12]
	pop	esi
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
_func	ENDP
_TEXT	ENDS
PUBLIC	_main
; Function compile flags: /Ogtpy
;	COMDAT _main
_TEXT	SEGMENT
_main	PROC						; COMDAT

; 21   :   func();

	call	_func

; 22   :   return 0;

	xor	eax, eax

; 23   : }

	ret	0
_main	ENDP
_TEXT	ENDS
END