; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\Projects\TaintAnalysis\AntiTaint\Epilog\src\func-rets.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	__$ArrayPad$
PUBLIC	_func
EXTRN	__imp__printf:PROC
EXTRN	__imp__gets:PROC
EXTRN	___security_cookie:DWORD
EXTRN	@__security_check_cookie@4:PROC
; Function compile flags: /Ogtpy
; File d:\projects\taintanalysis\antitaint\epilog\src\func-rets.c
;	COMDAT _func
_TEXT	SEGMENT
_buf$ = -12						; size = 8
__$ArrayPad$ = -4					; size = 4
$T3625 = 8						; size = 4
_func	PROC						; COMDAT

; 15   : {

	sub	esp, 12					; 0000000cH
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+12], eax

; 16   :   char buf[8];
; 17   :   struct S s;
; 18   :   s.a = (int)gets(buf) - (int)buf;

	lea	eax, DWORD PTR _buf$[esp+12]
	push	esi
	push	eax
	call	DWORD PTR __imp__gets
	mov	esi, DWORD PTR $T3625[esp+16]
	lea	ecx, DWORD PTR _buf$[esp+20]

; 19   :   s.b = printf(buf);

	mov	edx, ecx
	sub	eax, ecx
	push	edx
	mov	DWORD PTR [esi], eax
	call	DWORD PTR __imp__printf

; 20   :   s.c = s.a + s.b;

	mov	ecx, DWORD PTR [esi]
	add	ecx, eax
	add	esp, 8
	mov	DWORD PTR [esi+4], eax
	mov	DWORD PTR [esi+8], ecx

; 21   :   return s;
; 22   : }

	mov	ecx, DWORD PTR __$ArrayPad$[esp+16]
	mov	eax, esi
	pop	esi
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 12					; 0000000cH
	ret	0
_func	ENDP
_TEXT	ENDS
PUBLIC	_main
; Function compile flags: /Ogtpy
;	COMDAT _main
_TEXT	SEGMENT
_c$ = -40						; size = 20
_b$ = -40						; size = 20
_a$ = -40						; size = 20
$T3635 = -20						; size = 20
$T3634 = -20						; size = 20
$T3633 = -20						; size = 20
_main	PROC						; COMDAT

; 25   : {

	sub	esp, 40					; 00000028H
	push	esi

; 26   :   struct S a,b,c;
; 27   :   int z = 0;
; 28   :   a = func();

	lea	eax, DWORD PTR $T3633[esp+44]
	push	edi
	push	eax
	call	_func
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [eax+8]
	mov	esi, DWORD PTR [eax]
	mov	DWORD PTR _a$[esp+56], ecx
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR _a$[esp+60], edx
	mov	edx, DWORD PTR [eax+16]

; 29   :   z += a.a;
; 30   :   b = func();

	lea	eax, DWORD PTR $T3634[esp+52]
	push	eax
	mov	DWORD PTR _a$[esp+68], ecx
	mov	DWORD PTR _a$[esp+72], edx
	call	_func
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+8]
	mov	edi, DWORD PTR [eax+4]
	mov	DWORD PTR _b$[esp+56], ecx
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR _b$[esp+64], edx
	mov	edx, DWORD PTR [eax+16]

; 31   :   c = func();

	lea	eax, DWORD PTR $T3635[esp+56]
	push	eax
	mov	DWORD PTR _b$[esp+72], ecx
	mov	DWORD PTR _b$[esp+76], edx
	call	_func
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR _c$[esp+60], ecx
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR _c$[esp+64], edx
	mov	edx, DWORD PTR [eax+12]
	mov	eax, DWORD PTR [eax+16]
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _c$[esp+64], eax

; 32   :   z += c.c + b.b;

	lea	eax, DWORD PTR [edi+ecx]
	pop	edi
	add	eax, esi
	mov	DWORD PTR _c$[esp+56], edx
	pop	esi

; 33   :   return z;
; 34   : }

	add	esp, 40					; 00000028H
	ret	0
_main	ENDP
_TEXT	ENDS
END