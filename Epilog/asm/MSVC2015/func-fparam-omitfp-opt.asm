; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23506.0 

	TITLE	D:\Projects\TaintAnalysis\AntiTaint\Epilog\src\func-fparam.c
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
PUBLIC	??_C@_0N@NJAPOBLP@?$CFf?5?$CFf?5?$CFf?5?$CFs?6?$AA@ ; `string'
PUBLIC	__real@3ff0000000000000
PUBLIC	__xmm@40080000000000004000000000000000
EXTRN	__imp____acrt_iob_func:PROC
EXTRN	__imp____stdio_common_vfprintf:PROC
EXTRN	_gets:PROC
EXTRN	__fltused:DWORD
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
;	COMDAT __xmm@40080000000000004000000000000000
CONST	SEGMENT
__xmm@40080000000000004000000000000000 DB 00H, 00H, 00H, 00H, 00H, 00H, 00H
	DB	'@', 00H, 00H, 00H, 00H, 00H, 00H, 08H, '@'
CONST	ENDS
;	COMDAT __real@3ff0000000000000
CONST	SEGMENT
__real@3ff0000000000000 DQ 03ff0000000000000r	; 1
CONST	ENDS
;	COMDAT ??_C@_0N@NJAPOBLP@?$CFf?5?$CFf?5?$CFf?5?$CFs?6?$AA@
CONST	SEGMENT
??_C@_0N@NJAPOBLP@?$CFf?5?$CFf?5?$CFf?5?$CFs?6?$AA@ DB '%f %f %f %s', 0aH
	DB	00H						; `string'
CONST	ENDS
; Function compile flags: /Ogtpy
; File d:\projects\taintanalysis\antitaint\epilog\src\func-fparam.c
;	COMDAT _main
_TEXT	SEGMENT
_main	PROC						; COMDAT

; 17   :   func(1, 2, 3);

	movaps	xmm0, XMMWORD PTR __xmm@40080000000000004000000000000000
	sub	esp, 24					; 00000018H
	movups	XMMWORD PTR [esp+8], xmm0
	movsd	xmm0, QWORD PTR __real@3ff0000000000000
	movsd	QWORD PTR [esp], xmm0
	call	_func
	add	esp, 24					; 00000018H

; 18   :   return 0;

	xor	eax, eax

; 19   : }

	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\projects\taintanalysis\antitaint\epilog\src\func-fparam.c
;	COMDAT _func
_TEXT	SEGMENT
_buf$ = -8						; size = 8
_param1$ = 8						; size = 8
_param2$ = 16						; size = 8
_param3$ = 24						; size = 8
_func	PROC						; COMDAT

; 9    : {

	sub	esp, 8

; 10   :   char buf[8];
; 11   :   gets(buf);

	lea	eax, DWORD PTR _buf$[esp+8]
	push	eax
	call	_gets

; 12   :   printf("%f %f %f %s\n", param1, param2, param3, buf);

	movsd	xmm0, QWORD PTR _param3$[esp+8]
	lea	eax, DWORD PTR _buf$[esp+12]
	add	esp, 4
	push	eax
	sub	esp, 24					; 00000018H
	movsd	QWORD PTR [esp+16], xmm0
	movsd	xmm0, QWORD PTR _param2$[esp+32]
	movsd	QWORD PTR [esp+8], xmm0
	movsd	xmm0, QWORD PTR _param1$[esp+32]
	movsd	QWORD PTR [esp], xmm0
	push	OFFSET ??_C@_0N@NJAPOBLP@?$CFf?5?$CFf?5?$CFf?5?$CFs?6?$AA@
	call	_printf

; 13   : }

	add	esp, 40					; 00000028H
	ret	0
_func	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT _printf
_TEXT	SEGMENT
__Format$ = 8						; size = 4
_printf	PROC						; COMDAT

; 951  :     int _Result;
; 952  :     va_list _ArgList;
; 953  :     __crt_va_start(_ArgList, _Format);
; 954  :     _Result = _vfprintf_l(stdout, _Format, NULL, _ArgList);

	lea	eax, DWORD PTR __Format$[esp]
	push	eax
	push	0
	push	DWORD PTR __Format$[esp+4]
	push	1
	call	DWORD PTR __imp____acrt_iob_func
	add	esp, 4
	push	eax
	call	__vfprintf_l
	add	esp, 16					; 00000010H

; 955  :     __crt_va_end(_ArgList);
; 956  :     return _Result;
; 957  : }

	ret	0
_printf	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT __vfprintf_l
_TEXT	SEGMENT
__Stream$ = 8						; size = 4
__Format$ = 12						; size = 4
__Locale$ = 16						; size = 4
__ArgList$ = 20						; size = 4
__vfprintf_l PROC					; COMDAT

; 639  :     return __stdio_common_vfprintf(_CRT_INTERNAL_LOCAL_PRINTF_OPTIONS, _Stream, _Format, _Locale, _ArgList);

	push	DWORD PTR __ArgList$[esp-4]
	push	DWORD PTR __Locale$[esp]
	push	DWORD PTR __Format$[esp+4]
	push	DWORD PTR __Stream$[esp+8]
	call	___local_stdio_printf_options
	push	DWORD PTR [eax+4]
	push	DWORD PTR [eax]
	call	DWORD PTR __imp____stdio_common_vfprintf
	add	esp, 24					; 00000018H

; 640  : }

	ret	0
__vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\corecrt_stdio_config.h
;	COMDAT ___local_stdio_printf_options
_TEXT	SEGMENT
___local_stdio_printf_options PROC			; COMDAT

; 74   :     static unsigned __int64 _OptionsStorage;
; 75   :     return &_OptionsStorage;

	mov	eax, OFFSET ?_OptionsStorage@?1??__local_stdio_printf_options@@9@9 ; `__local_stdio_printf_options'::`2'::_OptionsStorage

; 76   : }

	ret	0
___local_stdio_printf_options ENDP
_TEXT	ENDS
END
