; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23506.0 

include listing.inc

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	__local_stdio_printf_options
PUBLIC	_vfprintf_l
PUBLIC	printf
PUBLIC	func
PUBLIC	main
PUBLIC	??_C@_0N@NJAPOBLP@?$CFf?5?$CFf?5?$CFf?5?$CFs?6?$AA@ ; `string'
PUBLIC	__real@3ff0000000000000
PUBLIC	__real@4000000000000000
PUBLIC	__real@4008000000000000
EXTRN	__imp___acrt_iob_func:PROC
EXTRN	__imp___stdio_common_vfprintf:PROC
EXTRN	gets:PROC
EXTRN	__GSHandlerCheck:PROC
EXTRN	__security_check_cookie:PROC
EXTRN	__security_cookie:QWORD
EXTRN	_fltused:DWORD
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
	DD	imagerel $LN4+136
	DD	imagerel $unwind$func
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$main DD	imagerel $LN4
	DD	imagerel $LN4+40
	DD	imagerel $unwind$main
pdata	ENDS
;	COMDAT __real@4008000000000000
CONST	SEGMENT
__real@4008000000000000 DQ 04008000000000000r	; 3
CONST	ENDS
;	COMDAT __real@4000000000000000
CONST	SEGMENT
__real@4000000000000000 DQ 04000000000000000r	; 2
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
;	COMDAT xdata
xdata	SEGMENT
$unwind$main DD	010401H
	DD	04204H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$func DD	072319H
	DD	048814H
	DD	05780eH
	DD	066809H
	DD	0e204H
	DD	imagerel __GSHandlerCheck
	DD	038H
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
; File d:\projects\taintanalysis\antitaint\epilog\src\func-fparam.c
;	COMDAT main
_TEXT	SEGMENT
main	PROC						; COMDAT

; 16   : {

$LN4:
	sub	rsp, 40					; 00000028H

; 17   :   func(1, 2, 3);

	movsd	xmm2, QWORD PTR __real@4008000000000000
	movsd	xmm1, QWORD PTR __real@4000000000000000
	movsd	xmm0, QWORD PTR __real@3ff0000000000000
	call	func

; 18   :   return 0;

	xor	eax, eax

; 19   : }

	add	rsp, 40					; 00000028H
	ret	0
main	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\projects\taintanalysis\antitaint\epilog\src\func-fparam.c
;	COMDAT func
_TEXT	SEGMENT
buf$ = 48
__$ArrayPad$ = 56
param1$ = 128
param2$ = 136
param3$ = 144
func	PROC						; COMDAT

; 9    : {

$LN4:
	sub	rsp, 120				; 00000078H
	movaps	XMMWORD PTR [rsp+96], xmm6
	movaps	XMMWORD PTR [rsp+80], xmm7
	movaps	XMMWORD PTR [rsp+64], xmm8
	mov	rax, QWORD PTR __security_cookie
	xor	rax, rsp
	mov	QWORD PTR __$ArrayPad$[rsp], rax

; 10   :   char buf[8];
; 11   :   gets(buf);

	lea	rcx, QWORD PTR buf$[rsp]
	movaps	xmm6, xmm2
	movaps	xmm7, xmm1
	movaps	xmm8, xmm0
	call	gets

; 12   :   printf("%f %f %f %s\n", param1, param2, param3, buf);

	movaps	xmm3, xmm6
	lea	rax, QWORD PTR buf$[rsp]
	movaps	xmm2, xmm7
	movd	r9, xmm3
	movaps	xmm1, xmm8
	movd	r8, xmm2
	movd	rdx, xmm1
	lea	rcx, OFFSET FLAT:??_C@_0N@NJAPOBLP@?$CFf?5?$CFf?5?$CFf?5?$CFs?6?$AA@
	mov	QWORD PTR [rsp+32], rax
	call	printf

; 13   : }

	mov	rcx, QWORD PTR __$ArrayPad$[rsp]
	xor	rcx, rsp
	call	__security_check_cookie
	movaps	xmm6, XMMWORD PTR [rsp+96]
	movaps	xmm7, XMMWORD PTR [rsp+80]
	movaps	xmm8, XMMWORD PTR [rsp+64]
	add	rsp, 120				; 00000078H
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
