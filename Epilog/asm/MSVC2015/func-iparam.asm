; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23506.0 

	TITLE	D:\Projects\TaintAnalysis\AntiTaint\Epilog\src\func-iparam.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
$SG5417	DB	'%d %d %d %s', 0aH, 00H
_DATA	ENDS
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
; File d:\projects\taintanalysis\antitaint\epilog\src\func-iparam.c
_TEXT	SEGMENT
_main	PROC

; 16   : {

	push	ebp
	mov	ebp, esp

; 17   :   func(1, 2, 3);

	push	3
	push	2
	push	1
	call	_func
	add	esp, 12					; 0000000cH

; 18   :   return 0;

	xor	eax, eax

; 19   : }

	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\projects\taintanalysis\antitaint\epilog\src\func-iparam.c
_TEXT	SEGMENT
_buf$ = -8						; size = 8
_param1$ = 8						; size = 4
_param2$ = 12						; size = 4
_param3$ = 16						; size = 4
_func	PROC

; 9    : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 10   :   char buf[8];
; 11   :   gets(buf);

	lea	eax, DWORD PTR _buf$[ebp]
	push	eax
	call	_gets
	add	esp, 4

; 12   :   printf("%d %d %d %s\n", param1, param2, param3, buf);

	lea	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	mov	edx, DWORD PTR _param3$[ebp]
	push	edx
	mov	eax, DWORD PTR _param2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _param1$[ebp]
	push	ecx
	push	OFFSET $SG5417
	call	_printf
	add	esp, 20					; 00000014H

; 13   : }

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
