; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23506.0 

	TITLE	D:\Projects\TaintAnalysis\AntiTaint\Epilog\src\func-alloca.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	___local_stdio_printf_options
PUBLIC	___local_stdio_scanf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	__vfscanf_l
PUBLIC	_scanf
PUBLIC	_func
PUBLIC	_main
PUBLIC	??_C@_02DPKJAMEF@?$CFd?$AA@			; `string'
EXTRN	__imp____acrt_iob_func:PROC
EXTRN	__imp____stdio_common_vfprintf:PROC
EXTRN	__imp____stdio_common_vfscanf:PROC
EXTRN	_gets:PROC
EXTRN	__alloca_probe_16:PROC
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
COMM	?_OptionsStorage@?1??__local_stdio_scanf_options@@9@9:QWORD							; `__local_stdio_scanf_options'::`2'::_OptionsStorage
_DATA	ENDS
;	COMDAT ??_C@_02DPKJAMEF@?$CFd?$AA@
CONST	SEGMENT
??_C@_02DPKJAMEF@?$CFd?$AA@ DB '%d', 00H		; `string'
CONST	ENDS
; Function compile flags: /Ogtp
; File d:\projects\taintanalysis\antitaint\epilog\src\func-alloca.c
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
; Function compile flags: /Ogtp
; File d:\projects\taintanalysis\antitaint\epilog\src\func-alloca.c
;	COMDAT _func
_TEXT	SEGMENT
_sz$ = -4						; size = 4
_func	PROC						; COMDAT

; 10   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi

; 11   :   int sz;
; 12   :   char *buf;
; 13   :   scanf("%d", &sz);

	lea	eax, DWORD PTR _sz$[ebp]
	push	eax
	push	OFFSET ??_C@_02DPKJAMEF@?$CFd?$AA@
	call	_scanf

; 14   :   buf = (char*)alloca(sz);

	mov	eax, DWORD PTR _sz$[ebp]
	add	esp, 8
	call	__alloca_probe_16
	mov	esi, esp

; 15   :   gets(buf);

	push	esi
	call	_gets

; 16   :   printf(buf);

	push	esi
	call	_printf
	add	esp, 8

; 17   : }

	lea	esp, DWORD PTR [ebp-8]
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	0
_func	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT _scanf
_TEXT	SEGMENT
__Format$ = 8						; size = 4
_scanf	PROC						; COMDAT

; 1276 : {

	push	ebp
	mov	ebp, esp

; 1277 :     int _Result;
; 1278 :     va_list _ArgList;
; 1279 :     __crt_va_start(_ArgList, _Format);
; 1280 :     _Result = _vfscanf_l(stdin, _Format, NULL, _ArgList);

	lea	eax, DWORD PTR __Format$[ebp+4]
	push	eax
	push	0
	push	DWORD PTR __Format$[ebp]
	push	0
	call	DWORD PTR __imp____acrt_iob_func
	add	esp, 4
	push	eax
	call	__vfscanf_l
	add	esp, 16					; 00000010H

; 1281 :     __crt_va_end(_ArgList);
; 1282 :     return _Result;
; 1283 : }

	pop	ebp
	ret	0
_scanf	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT __vfscanf_l
_TEXT	SEGMENT
__Stream$ = 8						; size = 4
__Format$ = 12						; size = 4
__Locale$ = 16						; size = 4
__ArgList$ = 20						; size = 4
__vfscanf_l PROC					; COMDAT

; 1058 : {

	push	ebp
	mov	ebp, esp

; 1059 :     return __stdio_common_vfscanf(

	push	DWORD PTR __ArgList$[ebp]
	push	DWORD PTR __Locale$[ebp]
	push	DWORD PTR __Format$[ebp]
	push	DWORD PTR __Stream$[ebp]
	call	___local_stdio_scanf_options
	push	DWORD PTR [eax+4]
	push	DWORD PTR [eax]
	call	DWORD PTR __imp____stdio_common_vfscanf
	add	esp, 24					; 00000018H

; 1060 :         _CRT_INTERNAL_LOCAL_SCANF_OPTIONS,
; 1061 :         _Stream, _Format, _Locale, _ArgList);
; 1062 : }

	pop	ebp
	ret	0
__vfscanf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT _printf
_TEXT	SEGMENT
__Format$ = 8						; size = 4
_printf	PROC						; COMDAT

; 950  : {

	push	ebp
	mov	ebp, esp

; 951  :     int _Result;
; 952  :     va_list _ArgList;
; 953  :     __crt_va_start(_ArgList, _Format);
; 954  :     _Result = _vfprintf_l(stdout, _Format, NULL, _ArgList);

	lea	eax, DWORD PTR __Format$[ebp+4]
	push	eax
	push	0
	push	DWORD PTR __Format$[ebp]
	push	1
	call	DWORD PTR __imp____acrt_iob_func
	add	esp, 4
	push	eax
	call	__vfprintf_l
	add	esp, 16					; 00000010H

; 955  :     __crt_va_end(_ArgList);
; 956  :     return _Result;
; 957  : }

	pop	ebp
	ret	0
_printf	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
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

	push	DWORD PTR __ArgList$[ebp]
	push	DWORD PTR __Locale$[ebp]
	push	DWORD PTR __Format$[ebp]
	push	DWORD PTR __Stream$[ebp]
	call	___local_stdio_printf_options
	push	DWORD PTR [eax+4]
	push	DWORD PTR [eax]
	call	DWORD PTR __imp____stdio_common_vfprintf
	add	esp, 24					; 00000018H

; 640  : }

	pop	ebp
	ret	0
__vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\corecrt_stdio_config.h
;	COMDAT ___local_stdio_scanf_options
_TEXT	SEGMENT
___local_stdio_scanf_options PROC			; COMDAT

; 83   :     static unsigned __int64 _OptionsStorage;
; 84   :     return &_OptionsStorage;

	mov	eax, OFFSET ?_OptionsStorage@?1??__local_stdio_scanf_options@@9@9 ; `__local_stdio_scanf_options'::`2'::_OptionsStorage

; 85   : }

	ret	0
___local_stdio_scanf_options ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
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
