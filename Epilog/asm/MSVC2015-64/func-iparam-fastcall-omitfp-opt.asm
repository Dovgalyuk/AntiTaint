; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23506.0 

include listing.inc

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	__local_stdio_printf_options
PUBLIC	_vfprintf_l
PUBLIC	printf
PUBLIC	func
PUBLIC	main
PUBLIC	??_C@_0BA@NNIFAFEJ@?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFs?6?$AA@ ; `string'
EXTRN	__imp___acrt_iob_func:PROC
EXTRN	__imp___stdio_common_vfprintf:PROC
EXTRN	gets:PROC
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vfprintf_l DD imagerel $LN4
	DD	imagerel $LN4+81
	DD	imagerel $unwind$_vfprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$printf DD imagerel $LN4
	DD	imagerel $LN4+66
	DD	imagerel $unwind$printf
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$func DD	imagerel $LN4
	DD	imagerel $LN4+95
	DD	imagerel $unwind$func
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$main DD	imagerel $LN4
	DD	imagerel $LN4+32
	DD	imagerel $unwind$main
pdata	ENDS
;	COMDAT ??_C@_0BA@NNIFAFEJ@?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFs?6?$AA@
CONST	SEGMENT
??_C@_0BA@NNIFAFEJ@?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFs?6?$AA@ DB '%d %d %d '
	DB	'%d %s', 0aH, 00H				; `string'
CONST	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$main DD	010401H
	DD	04204H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$func DD	081401H
	DD	0c6414H
	DD	0b5414H
	DD	0a3414H
	DD	070107214H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$printf DD 021901H
	DD	030153219H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vfprintf_l DD 081401H
	DD	0a6414H
	DD	095414H
	DD	083414H
	DD	070105214H
xdata	ENDS
; Function compile flags: /Ogtpy
; File d:\projects\taintanalysis\antitaint\epilog\src\func-iparam-fastcall.c
;	COMDAT main
_TEXT	SEGMENT
main	PROC						; COMDAT

; 23   : {

$LN4:
	sub	rsp, 40					; 00000028H

; 24   :   func(1, 2, 3, 4);

	mov	edx, 2
	lea	r9d, QWORD PTR [rdx+2]
	lea	r8d, QWORD PTR [rdx+1]
	lea	ecx, QWORD PTR [rdx-1]
	call	func

; 25   :   return 0;

	xor	eax, eax

; 26   : }

	add	rsp, 40					; 00000028H
	ret	0
main	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\projects\taintanalysis\antitaint\epilog\src\func-iparam-fastcall.c
;	COMDAT func
_TEXT	SEGMENT
buf$ = 48
param1$ = 80
param2$ = 88
param3$ = 96
param4$ = 104
func	PROC						; COMDAT

; 16   : {

$LN4:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rbp
	mov	QWORD PTR [rsp+24], rsi
	push	rdi
	sub	rsp, 64					; 00000040H
	mov	ebp, ecx
	mov	ebx, r9d

; 17   :   char buf[8];
; 18   :   gets(buf);

	lea	rcx, QWORD PTR buf$[rsp]
	mov	edi, r8d
	mov	esi, edx
	call	gets

; 19   :   printf("%d %d %d %d %s\n", param1, param2, param3, param4, buf);

	lea	rax, QWORD PTR buf$[rsp]
	mov	r9d, edi
	mov	QWORD PTR [rsp+40], rax
	lea	rcx, OFFSET FLAT:??_C@_0BA@NNIFAFEJ@?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFs?6?$AA@
	mov	r8d, esi
	mov	DWORD PTR [rsp+32], ebx
	mov	edx, ebp
	call	printf

; 20   : }

	mov	rbx, QWORD PTR [rsp+80]
	mov	rbp, QWORD PTR [rsp+88]
	mov	rsi, QWORD PTR [rsp+96]
	add	rsp, 64					; 00000040H
	pop	rdi
	ret	0
func	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT printf
_TEXT	SEGMENT
_Format$ = 48
printf	PROC						; COMDAT

; 950  : {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	push	rbx
	sub	rsp, 32					; 00000020H

; 951  :     int _Result;
; 952  :     va_list _ArgList;
; 953  :     __crt_va_start(_ArgList, _Format);
; 954  :     _Result = _vfprintf_l(stdout, _Format, NULL, _ArgList);

	mov	ecx, 1
	lea	rbx, QWORD PTR _Format$[rsp+8]
	call	QWORD PTR __imp___acrt_iob_func
	mov	rdx, QWORD PTR _Format$[rsp]
	mov	r9, rbx
	mov	rcx, rax
	xor	r8d, r8d
	call	_vfprintf_l

; 955  :     __crt_va_end(_ArgList);
; 956  :     return _Result;
; 957  : }

	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
printf	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT _vfprintf_l
_TEXT	SEGMENT
_Stream$ = 64
_Format$ = 72
_Locale$ = 80
_ArgList$ = 88
_vfprintf_l PROC					; COMDAT

; 638  : {

$LN4:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rbp
	mov	QWORD PTR [rsp+24], rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rbx, r9
	mov	rdi, r8
	mov	rsi, rdx
	mov	rbp, rcx

; 639  :     return __stdio_common_vfprintf(_CRT_INTERNAL_LOCAL_PRINTF_OPTIONS, _Stream, _Format, _Locale, _ArgList);

	call	__local_stdio_printf_options
	mov	r9, rdi
	mov	QWORD PTR [rsp+32], rbx
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, QWORD PTR [rax]
	call	QWORD PTR __imp___stdio_common_vfprintf

; 640  : }

	mov	rbx, QWORD PTR [rsp+64]
	mov	rbp, QWORD PTR [rsp+72]
	mov	rsi, QWORD PTR [rsp+80]
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
_vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\corecrt_stdio_config.h
;	COMDAT __local_stdio_printf_options
_TEXT	SEGMENT
__local_stdio_printf_options PROC			; COMDAT

; 74   :     static unsigned __int64 _OptionsStorage;
; 75   :     return &_OptionsStorage;

	lea	rax, OFFSET FLAT:?_OptionsStorage@?1??__local_stdio_printf_options@@9@9 ; `__local_stdio_printf_options'::`2'::_OptionsStorage

; 76   : }

	ret	0
__local_stdio_printf_options ENDP
_TEXT	ENDS
END
