; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	D:\Projects\TaintAnalysis\AntiTaint\Epilog\src\struct.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@	; `string'
PUBLIC	_fill
EXTRN	__imp__scanf:PROC
;	COMDAT ??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@
; File d:\projects\taintanalysis\antitaint\epilog\src\struct.c
CONST	SEGMENT
??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@ DB '%d %d %d', 00H ; `string'
; Function compile flags: /Ogtpy
CONST	ENDS
;	COMDAT _fill
_TEXT	SEGMENT
_a$ = -12						; size = 4
_b$ = -8						; size = 4
_c$ = -4						; size = 4
_s$ = 8							; size = 4
_fill	PROC						; COMDAT

; 14   : {

	sub	esp, 12					; 0000000cH

; 15   :   int a, b, c;
; 16   :   scanf("%d %d %d", &a, &b, &c);

	lea	eax, DWORD PTR _c$[esp+12]
	push	eax
	lea	ecx, DWORD PTR _b$[esp+16]
	push	ecx
	lea	edx, DWORD PTR _a$[esp+20]
	push	edx
	push	OFFSET ??_C@_08OOHKHLPO@?$CFd?5?$CFd?5?$CFd?$AA@
	call	DWORD PTR __imp__scanf

; 17   :   s->a = a;

	mov	ecx, DWORD PTR _s$[esp+24]
	mov	eax, DWORD PTR _a$[esp+28]
	cdq
	mov	DWORD PTR [ecx], eax

; 18   :   s->b = b;

	mov	eax, DWORD PTR _b$[esp+28]
	mov	DWORD PTR [ecx+4], edx
	cdq
	mov	DWORD PTR [ecx+8], eax

; 19   :   s->c = c;

	mov	eax, DWORD PTR _c$[esp+28]
	mov	DWORD PTR [ecx+12], edx
	cdq
	mov	DWORD PTR [ecx+16], eax
	mov	DWORD PTR [ecx+20], edx

; 20   : }

	add	esp, 28					; 0000001cH
	ret	0
_fill	ENDP
_TEXT	ENDS
PUBLIC	??_C@_0N@DHODEHCL@?$CFs?5?$CFd?5?$CFd?5?$CFd?6?$AA@ ; `string'
PUBLIC	_func
EXTRN	__imp__printf:PROC
EXTRN	__imp__gets:PROC
;	COMDAT ??_C@_0N@DHODEHCL@?$CFs?5?$CFd?5?$CFd?5?$CFd?6?$AA@
CONST	SEGMENT
??_C@_0N@DHODEHCL@?$CFs?5?$CFd?5?$CFd?5?$CFd?6?$AA@ DB '%s %d %d %d', 0aH
	DB	00H						; `string'
; Function compile flags: /Ogtpy
CONST	ENDS
;	COMDAT _func
_TEXT	SEGMENT
_buf$ = -32						; size = 8
_s$ = -24						; size = 24
_func	PROC						; COMDAT

; 23   : {

	sub	esp, 32					; 00000020H

; 24   :   struct S s;
; 25   :   char buf[8];
; 26   :   gets(buf);

	lea	eax, DWORD PTR _buf$[esp+32]
	push	eax
	call	DWORD PTR __imp__gets

; 27   :   fill(&s);

	lea	ecx, DWORD PTR _s$[esp+36]
	push	ecx
	call	_fill

; 28   :   printf("%s %d %d %d\n", buf, (int)s.a, (int)s.b, (int)s.c);

	mov	edx, DWORD PTR _s$[esp+56]
	mov	eax, DWORD PTR _s$[esp+48]
	mov	ecx, DWORD PTR _s$[esp+40]
	push	edx
	push	eax
	push	ecx
	lea	edx, DWORD PTR _buf$[esp+52]
	push	edx
	push	OFFSET ??_C@_0N@DHODEHCL@?$CFs?5?$CFd?5?$CFd?5?$CFd?6?$AA@
	call	DWORD PTR __imp__printf

; 29   : }

	add	esp, 60					; 0000003cH
	ret	0
_func	ENDP
_TEXT	ENDS
PUBLIC	_main
; Function compile flags: /Ogtpy
;	COMDAT _main
_TEXT	SEGMENT
_main	PROC						; COMDAT

; 33   :   func();

	call	_func

; 34   :   return 0;

	xor	eax, eax

; 35   : }

	ret	0
_main	ENDP
_TEXT	ENDS
END
