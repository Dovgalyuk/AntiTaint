; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23506.0 

	TITLE	D:\Projects\TaintAnalysis\AntiTaint\Epilog\src\func-rets.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	_func
PUBLIC	_main
EXTRN	__imp____acrt_iob_func:PROC
EXTRN	__imp____stdio_common_vfprintf:PROC
EXTRN	_gets:PROC
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
; Function compile flags: /Odtp
; File d:\projects\taintanalysis\antitaint\epilog\src\func-rets.c
_TEXT	SEGMENT
$T1 = -124						; size = 20
$T2 = -104						; size = 20
$T3 = -84						; size = 20
_b$ = -64						; size = 20
_c$ = -44						; size = 20
_a$ = -24						; size = 20
_z$ = -4						; size = 4
_main	PROC

; 25   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 124				; 0000007cH

; 26   :   struct S a,b,c;
; 27   :   int z = 0;

	mov	DWORD PTR _z$[ebp], 0

; 28   :   a = func();

	lea	eax, DWORD PTR $T3[ebp]
	push	eax
	call	_func
	add	esp, 4
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _a$[ebp], ecx
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR _a$[ebp+4], edx
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR _a$[ebp+8], ecx
	mov	edx, DWORD PTR [eax+12]
	mov	DWORD PTR _a$[ebp+12], edx
	mov	eax, DWORD PTR [eax+16]
	mov	DWORD PTR _a$[ebp+16], eax

; 29   :   z += a.a;

	mov	ecx, DWORD PTR _z$[ebp]
	add	ecx, DWORD PTR _a$[ebp]
	mov	DWORD PTR _z$[ebp], ecx

; 30   :   b = func();

	lea	edx, DWORD PTR $T2[ebp]
	push	edx
	call	_func
	add	esp, 4
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _b$[ebp], ecx
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR _b$[ebp+4], edx
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR _b$[ebp+8], ecx
	mov	edx, DWORD PTR [eax+12]
	mov	DWORD PTR _b$[ebp+12], edx
	mov	eax, DWORD PTR [eax+16]
	mov	DWORD PTR _b$[ebp+16], eax

; 31   :   c = func();

	lea	ecx, DWORD PTR $T1[ebp]
	push	ecx
	call	_func
	add	esp, 4
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR _c$[ebp], edx
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _c$[ebp+4], ecx
	mov	edx, DWORD PTR [eax+8]
	mov	DWORD PTR _c$[ebp+8], edx
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR _c$[ebp+12], ecx
	mov	edx, DWORD PTR [eax+16]
	mov	DWORD PTR _c$[ebp+16], edx

; 32   :   z += c.c + b.b;

	mov	eax, DWORD PTR _c$[ebp+8]
	add	eax, DWORD PTR _b$[ebp+4]
	add	eax, DWORD PTR _z$[ebp]
	mov	DWORD PTR _z$[ebp], eax

; 33   :   return z;

	mov	eax, DWORD PTR _z$[ebp]

; 34   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\projects\taintanalysis\antitaint\epilog\src\func-rets.c
_TEXT	SEGMENT
_s$ = -28						; size = 20
_buf$ = -8						; size = 8
$T1 = 8							; size = 4
_func	PROC

; 15   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 16   :   char buf[8];
; 17   :   struct S s;
; 18   :   s.a = (int)gets(buf) - (int)buf;

	lea	eax, DWORD PTR _buf$[ebp]
	push	eax
	call	_gets
	add	esp, 4
	lea	ecx, DWORD PTR _buf$[ebp]
	sub	eax, ecx
	mov	DWORD PTR _s$[ebp], eax

; 19   :   s.b = printf(buf);

	lea	edx, DWORD PTR _buf$[ebp]
	push	edx
	call	_printf
	add	esp, 4
	mov	DWORD PTR _s$[ebp+4], eax

; 20   :   s.c = s.a + s.b;

	mov	eax, DWORD PTR _s$[ebp]
	add	eax, DWORD PTR _s$[ebp+4]
	mov	DWORD PTR _s$[ebp+8], eax

; 21   :   return s;

	mov	ecx, DWORD PTR $T1[ebp]
	mov	edx, DWORD PTR _s$[ebp]
	mov	DWORD PTR [ecx], edx
	mov	eax, DWORD PTR _s$[ebp+4]
	mov	DWORD PTR [ecx+4], eax
	mov	edx, DWORD PTR _s$[ebp+8]
	mov	DWORD PTR [ecx+8], edx
	mov	eax, DWORD PTR _s$[ebp+12]
	mov	DWORD PTR [ecx+12], eax
	mov	edx, DWORD PTR _s$[ebp+16]
	mov	DWORD PTR [ecx+16], edx
	mov	eax, DWORD PTR $T1[ebp]

; 22   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_func	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT _printf
_TEXT	SEGMENT
__Result$ = -8						; size = 4
__ArgList$ = -4						; size = 4
__Format$ = 8						; size = 4
_printf	PROC						; COMDAT

; 950  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 951  :     int _Result;
; 952  :     va_list _ArgList;
; 953  :     __crt_va_start(_ArgList, _Format);

	lea	eax, DWORD PTR __Format$[ebp+4]
	mov	DWORD PTR __ArgList$[ebp], eax

; 954  :     _Result = _vfprintf_l(stdout, _Format, NULL, _ArgList);

	mov	ecx, DWORD PTR __ArgList$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR __Format$[ebp]
	push	edx
	push	1
	call	DWORD PTR __imp____acrt_iob_func
	add	esp, 4
	push	eax
	call	__vfprintf_l
	add	esp, 16					; 00000010H
	mov	DWORD PTR __Result$[ebp], eax

; 955  :     __crt_va_end(_ArgList);

	mov	DWORD PTR __ArgList$[ebp], 0

; 956  :     return _Result;

	mov	eax, DWORD PTR __Result$[ebp]

; 957  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_printf	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT __vfprintf_l
_TEXT	SEGMENT
__Stream$ = 8						; size = 4
__Format$ = 12						; size = 4
__Locale$ = 16						; size = 4
__ArgList$ = 20						; size = 4
__vfprintf_l PROC					; COMDAT

; 638  : {

	push	ebp
	mov	ebp, esp

; 639  :     return __stdio_common_vfprintf(_CRT_INTERNAL_LOCAL_PRINTF_OPTIONS, _Stream, _Format, _Locale, _ArgList);

	mov	eax, DWORD PTR __ArgList$[ebp]
	push	eax
	mov	ecx, DWORD PTR __Locale$[ebp]
	push	ecx
	mov	edx, DWORD PTR __Format$[ebp]
	push	edx
	mov	eax, DWORD PTR __Stream$[ebp]
	push	eax
	call	___local_stdio_printf_options
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	mov	edx, DWORD PTR [eax]
	push	edx
	call	DWORD PTR __imp____stdio_common_vfprintf
	add	esp, 24					; 00000018H

; 640  : }

	pop	ebp
	ret	0
__vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\corecrt_stdio_config.h
;	COMDAT ___local_stdio_printf_options
_TEXT	SEGMENT
___local_stdio_printf_options PROC			; COMDAT

; 73   : {

	push	ebp
	mov	ebp, esp

; 74   :     static unsigned __int64 _OptionsStorage;
; 75   :     return &_OptionsStorage;

	mov	eax, OFFSET ?_OptionsStorage@?1??__local_stdio_printf_options@@9@9 ; `__local_stdio_printf_options'::`2'::_OptionsStorage

; 76   : }

	pop	ebp
	ret	0
___local_stdio_printf_options ENDP
_TEXT	ENDS
END
