; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\Projects\TaintAnalysis\AntiTaint\Epilog\src\struct-align.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
$SG3571	DB	'%d %d %d', 00H
	ORG $+3
$SG3580	DB	'%s %d %d %d', 0aH, 00H
_DATA	ENDS
PUBLIC	_fill
EXTRN	__imp__scanf:PROC
; Function compile flags: /Odtp
; File d:\projects\taintanalysis\antitaint\epilog\src\struct-align.c
_TEXT	SEGMENT
_c$ = -12						; size = 4
_b$ = -8						; size = 4
_a$ = -4						; size = 4
_s$ = 8							; size = 4
_fill	PROC

; 21   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 22   :   int a, b, c;
; 23   :   scanf("%d %d %d", &a, &b, &c);

	lea	eax, DWORD PTR _c$[ebp]
	push	eax
	lea	ecx, DWORD PTR _b$[ebp]
	push	ecx
	lea	edx, DWORD PTR _a$[ebp]
	push	edx
	push	OFFSET $SG3571
	call	DWORD PTR __imp__scanf
	add	esp, 16					; 00000010H

; 24   :   s->a = a;

	mov	eax, DWORD PTR _a$[ebp]
	cdq
	mov	ecx, DWORD PTR _s$[ebp]
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx

; 25   :   s->b = b;

	mov	eax, DWORD PTR _b$[ebp]
	cdq
	mov	ecx, DWORD PTR _s$[ebp]
	mov	DWORD PTR [ecx+8], eax
	mov	DWORD PTR [ecx+12], edx

; 26   :   s->c = c;

	mov	eax, DWORD PTR _c$[ebp]
	cdq
	mov	ecx, DWORD PTR _s$[ebp]
	mov	DWORD PTR [ecx+16], eax
	mov	DWORD PTR [ecx+20], edx

; 27   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_fill	ENDP
_TEXT	ENDS
PUBLIC	__$ArrayPad$
PUBLIC	_func
EXTRN	__imp__printf:PROC
EXTRN	__imp__gets:PROC
EXTRN	___security_cookie:DWORD
EXTRN	@__security_check_cookie@4:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_s$ = -64						; size = 32
_buf$ = -12						; size = 8
__$ArrayPad$ = -4					; size = 4
_func	PROC

; 30   : {

	push	ebx
	mov	ebx, esp
	sub	esp, 8
	and	esp, -32				; ffffffe0H
	add	esp, 4
	push	ebp
	mov	ebp, DWORD PTR [ebx+4]
	mov	DWORD PTR [esp+4], ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax

; 31   :   struct S s;
; 32   :   char buf[8];
; 33   :   gets(buf);

	lea	eax, DWORD PTR _buf$[ebp]
	push	eax
	call	DWORD PTR __imp__gets
	add	esp, 4

; 34   :   fill(&s);

	lea	ecx, DWORD PTR _s$[ebp]
	push	ecx
	call	_fill
	add	esp, 4

; 35   :   printf("%s %d %d %d\n", buf, (int)s.a, (int)s.b, (int)s.c);

	mov	edx, DWORD PTR _s$[ebp+16]
	push	edx
	mov	eax, DWORD PTR _s$[ebp+8]
	push	eax
	mov	ecx, DWORD PTR _s$[ebp]
	push	ecx
	lea	edx, DWORD PTR _buf$[ebp]
	push	edx
	push	OFFSET $SG3580
	call	DWORD PTR __imp__printf
	add	esp, 20					; 00000014H

; 36   : }

	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	mov	esp, ebx
	pop	ebx
	ret	0
_func	ENDP
_TEXT	ENDS
PUBLIC	_main
; Function compile flags: /Odtp
_TEXT	SEGMENT
_main	PROC

; 39   : {

	push	ebp
	mov	ebp, esp

; 40   :   func();

	call	_func

; 41   :   return 0;

	xor	eax, eax

; 42   : }

	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
END
