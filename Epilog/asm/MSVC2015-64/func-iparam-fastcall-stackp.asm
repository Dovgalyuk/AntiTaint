; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23506.0 

include listing.inc

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
$SG5155	DB	'%d %d %d %d %s', 0aH, 00H
_DATA	ENDS
PUBLIC	__local_stdio_printf_options
PUBLIC	_vfprintf_l
PUBLIC	printf
PUBLIC	func
PUBLIC	main
EXTRN	__imp___acrt_iob_func:PROC
EXTRN	__imp___stdio_common_vfprintf:PROC
EXTRN	gets:PROC
EXTRN	__GSHandlerCheck:PROC
EXTRN	__security_check_cookie:PROC
EXTRN	__security_cookie:QWORD
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vfprintf_l DD imagerel $LN3
	DD	imagerel $LN3+68
	DD	imagerel $unwind$_vfprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$printf DD imagerel $LN3
	DD	imagerel $LN3+88
	DD	imagerel $unwind$printf
pdata	ENDS
pdata	SEGMENT
$pdata$func DD	imagerel $LN3
	DD	imagerel $LN3+109
	DD	imagerel $unwind$func
$pdata$main DD	imagerel $LN3
	DD	imagerel $LN3+38
	DD	imagerel $unwind$main
pdata	ENDS
xdata	SEGMENT
$unwind$func DD	012519H
	DD	08216H
	DD	imagerel __GSHandlerCheck
	DD	038H
$unwind$main DD	010401H
	DD	04204H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$printf DD 011801H
	DD	06218H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vfprintf_l DD 011801H
	DD	06218H
xdata	ENDS
; Function compile flags: /Odtp
; File d:\projects\taintanalysis\antitaint\epilog\src\func-iparam-fastcall.c
_TEXT	SEGMENT
main	PROC

; 23   : {

$LN3:
	sub	rsp, 40					; 00000028H

; 24   :   func(1, 2, 3, 4);

	mov	r9d, 4
	mov	r8d, 3
	mov	edx, 2
	mov	ecx, 1
	call	func

; 25   :   return 0;

	xor	eax, eax

; 26   : }

	add	rsp, 40					; 00000028H
	ret	0
main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\projects\taintanalysis\antitaint\epilog\src\func-iparam-fastcall.c
_TEXT	SEGMENT
buf$ = 48
__$ArrayPad$ = 56
param1$ = 80
param2$ = 88
param3$ = 96
param4$ = 104
func	PROC

; 16   : {

$LN3:
	mov	DWORD PTR [rsp+32], r9d
	mov	DWORD PTR [rsp+24], r8d
	mov	DWORD PTR [rsp+16], edx
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 72					; 00000048H
	mov	rax, QWORD PTR __security_cookie
	xor	rax, rsp
	mov	QWORD PTR __$ArrayPad$[rsp], rax

; 17   :   char buf[8];
; 18   :   gets(buf);

	lea	rcx, QWORD PTR buf$[rsp]
	call	gets

; 19   :   printf("%d %d %d %d %s\n", param1, param2, param3, param4, buf);

	lea	rax, QWORD PTR buf$[rsp]
	mov	QWORD PTR [rsp+40], rax
	mov	eax, DWORD PTR param4$[rsp]
	mov	DWORD PTR [rsp+32], eax
	mov	r9d, DWORD PTR param3$[rsp]
	mov	r8d, DWORD PTR param2$[rsp]
	mov	edx, DWORD PTR param1$[rsp]
	lea	rcx, OFFSET FLAT:$SG5155
	call	printf

; 20   : }

	mov	rcx, QWORD PTR __$ArrayPad$[rsp]
	xor	rcx, rsp
	call	__security_check_cookie
	add	rsp, 72					; 00000048H
	ret	0
func	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT printf
_TEXT	SEGMENT
_Result$ = 32
_ArgList$ = 40
_Format$ = 64
printf	PROC						; COMDAT

; 950  : {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	sub	rsp, 56					; 00000038H

; 951  :     int _Result;
; 952  :     va_list _ArgList;
; 953  :     __crt_va_start(_ArgList, _Format);

	lea	rax, QWORD PTR _Format$[rsp+8]
	mov	QWORD PTR _ArgList$[rsp], rax

; 954  :     _Result = _vfprintf_l(stdout, _Format, NULL, _ArgList);

	mov	ecx, 1
	call	QWORD PTR __imp___acrt_iob_func
	mov	r9, QWORD PTR _ArgList$[rsp]
	xor	r8d, r8d
	mov	rdx, QWORD PTR _Format$[rsp]
	mov	rcx, rax
	call	_vfprintf_l
	mov	DWORD PTR _Result$[rsp], eax

; 955  :     __crt_va_end(_ArgList);

	mov	QWORD PTR _ArgList$[rsp], 0

; 956  :     return _Result;

	mov	eax, DWORD PTR _Result$[rsp]

; 957  : }

	add	rsp, 56					; 00000038H
	ret	0
printf	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT _vfprintf_l
_TEXT	SEGMENT
_Stream$ = 64
_Format$ = 72
_Locale$ = 80
_ArgList$ = 88
_vfprintf_l PROC					; COMDAT

; 638  : {

$LN3:
	mov	QWORD PTR [rsp+32], r9
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 639  :     return __stdio_common_vfprintf(_CRT_INTERNAL_LOCAL_PRINTF_OPTIONS, _Stream, _Format, _Locale, _ArgList);

	call	__local_stdio_printf_options
	mov	rcx, QWORD PTR _ArgList$[rsp]
	mov	QWORD PTR [rsp+32], rcx
	mov	r9, QWORD PTR _Locale$[rsp]
	mov	r8, QWORD PTR _Format$[rsp]
	mov	rdx, QWORD PTR _Stream$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	QWORD PTR __imp___stdio_common_vfprintf

; 640  : }

	add	rsp, 56					; 00000038H
	ret	0
_vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
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
