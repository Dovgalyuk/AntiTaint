; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23506.0 

	TITLE	D:\Projects\TaintAnalysis\AntiTaint\Epilog\src\func-va.c
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
PUBLIC	??_C@_03JDANDILB@?$CFd?5?$AA@			; `string'
PUBLIC	??_C@_03OFAPEBGM@?$CFs?6?$AA@			; `string'
EXTRN	__imp____acrt_iob_func:PROC
EXTRN	__imp____stdio_common_vfprintf:PROC
EXTRN	_gets:PROC
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
;	COMDAT ??_C@_03OFAPEBGM@?$CFs?6?$AA@
CONST	SEGMENT
??_C@_03OFAPEBGM@?$CFs?6?$AA@ DB '%s', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_03JDANDILB@?$CFd?5?$AA@
CONST	SEGMENT
??_C@_03JDANDILB@?$CFd?5?$AA@ DB '%d ', 00H		; `string'
CONST	ENDS
; Function compile flags: /Ogtp
; File d:\projects\taintanalysis\antitaint\epilog\src\func-va.c
;	COMDAT _main
_TEXT	SEGMENT
_main	PROC						; COMDAT

; 24   :   func(2, 3, 4);

	push	4
	push	3
	push	2
	call	_func
	add	esp, 12					; 0000000cH

; 25   :   return 0;

	xor	eax, eax

; 26   : }

	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File d:\projects\taintanalysis\antitaint\epilog\src\func-va.c
;	COMDAT _func
_TEXT	SEGMENT
_buf$ = -8						; size = 8
_num$ = 8						; size = 4
_func	PROC						; COMDAT

; 10   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 15   :   gets(buf);

	lea	eax, DWORD PTR _buf$[ebp]
	push	edi
	push	eax
	call	_gets

; 16   :   for (i = 0 ; i < num ; ++i)

	mov	edi, DWORD PTR _num$[ebp]
	add	esp, 4
	test	edi, edi
	jle	SHORT $LN3@func

; 11   :   va_list ap;
; 12   :   char buf[8];
; 13   :   int i;
; 14   :   va_start(ap, num);

	push	esi
	lea	esi, DWORD PTR _num$[ebp]
	npad	2
$LL4@func:

; 17   :     printf("%d ", va_arg(ap, int));

	push	DWORD PTR [esi+4]
	lea	esi, DWORD PTR [esi+4]
	push	OFFSET ??_C@_03JDANDILB@?$CFd?5?$AA@
	call	_printf
	add	esp, 8
	sub	edi, 1
	jne	SHORT $LL4@func
	pop	esi
$LN3@func:

; 18   :   printf("%s\n", buf);

	lea	eax, DWORD PTR _buf$[ebp]
	push	eax
	push	OFFSET ??_C@_03OFAPEBGM@?$CFs?6?$AA@
	call	_printf
	add	esp, 8
	pop	edi

; 19   :   va_end(ap);
; 20   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_func	ENDP
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
