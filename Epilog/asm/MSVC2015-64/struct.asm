; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23506.0 

include listing.inc

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
$SG5154	DB	'%d %d %d', 00H
	ORG $+7
$SG5164	DB	'%s %d %d %d', 0aH, 00H
_DATA	ENDS
PUBLIC	__local_stdio_printf_options
PUBLIC	__local_stdio_scanf_options
PUBLIC	_vfprintf_l
PUBLIC	printf
PUBLIC	_vfscanf_l
PUBLIC	scanf
PUBLIC	fill
PUBLIC	func
PUBLIC	main
EXTRN	__imp___acrt_iob_func:PROC
EXTRN	__imp___stdio_common_vfprintf:PROC
EXTRN	__imp___stdio_common_vfscanf:PROC
EXTRN	gets:PROC
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
COMM	?_OptionsStorage@?1??__local_stdio_scanf_options@@9@9:QWORD							; `__local_stdio_scanf_options'::`2'::_OptionsStorage
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
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vfscanf_l DD imagerel $LN3
	DD	imagerel $LN3+68
	DD	imagerel $unwind$_vfscanf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$scanf DD	imagerel $LN3
	DD	imagerel $LN3+85
	DD	imagerel $unwind$scanf
pdata	ENDS
pdata	SEGMENT
$pdata$fill DD	imagerel $LN3
	DD	imagerel $LN3+82
	DD	imagerel $unwind$fill
$pdata$func DD	imagerel $LN3
	DD	imagerel $LN3+64
	DD	imagerel $unwind$func
$pdata$main DD	imagerel $LN3
	DD	imagerel $LN3+16
	DD	imagerel $unwind$main
pdata	ENDS
xdata	SEGMENT
$unwind$fill DD	010901H
	DD	06209H
$unwind$func DD	010401H
	DD	0a204H
$unwind$main DD	010401H
	DD	04204H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$scanf DD 011801H
	DD	06218H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vfscanf_l DD 011801H
	DD	06218H
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
; File d:\projects\taintanalysis\antitaint\epilog\src\struct.c
_TEXT	SEGMENT
main	PROC

; 32   : {

$LN3:
	sub	rsp, 40					; 00000028H

; 33   :   func();

	call	func

; 34   :   return 0;

	xor	eax, eax

; 35   : }

	add	rsp, 40					; 00000028H
	ret	0
main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\projects\taintanalysis\antitaint\epilog\src\struct.c
_TEXT	SEGMENT
buf$ = 48
s$ = 56
func	PROC

; 23   : {

$LN3:
	sub	rsp, 88					; 00000058H

; 24   :   struct S s;
; 25   :   char buf[8];
; 26   :   gets(buf);

	lea	rcx, QWORD PTR buf$[rsp]
	call	gets

; 27   :   fill(&s);

	lea	rcx, QWORD PTR s$[rsp]
	call	fill

; 28   :   printf("%s %d %d %d\n", buf, (int)s.a, (int)s.b, (int)s.c);

	mov	eax, DWORD PTR s$[rsp+16]
	mov	DWORD PTR [rsp+32], eax
	mov	r9d, DWORD PTR s$[rsp+8]
	mov	r8d, DWORD PTR s$[rsp]
	lea	rdx, QWORD PTR buf$[rsp]
	lea	rcx, OFFSET FLAT:$SG5164
	call	printf

; 29   : }

	add	rsp, 88					; 00000058H
	ret	0
func	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\projects\taintanalysis\antitaint\epilog\src\struct.c
_TEXT	SEGMENT
a$ = 32
b$ = 36
c$ = 40
s$ = 64
fill	PROC

; 14   : {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 15   :   int a, b, c;
; 16   :   scanf("%d %d %d", &a, &b, &c);

	lea	r9, QWORD PTR c$[rsp]
	lea	r8, QWORD PTR b$[rsp]
	lea	rdx, QWORD PTR a$[rsp]
	lea	rcx, OFFSET FLAT:$SG5154
	call	scanf

; 17   :   s->a = a;

	movsxd	rax, DWORD PTR a$[rsp]
	mov	rcx, QWORD PTR s$[rsp]
	mov	QWORD PTR [rcx], rax

; 18   :   s->b = b;

	movsxd	rax, DWORD PTR b$[rsp]
	mov	rcx, QWORD PTR s$[rsp]
	mov	QWORD PTR [rcx+8], rax

; 19   :   s->c = c;

	movsxd	rax, DWORD PTR c$[rsp]
	mov	rcx, QWORD PTR s$[rsp]
	mov	QWORD PTR [rcx+16], rax

; 20   : }

	add	rsp, 56					; 00000038H
	ret	0
fill	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT scanf
_TEXT	SEGMENT
_Result$ = 32
_ArgList$ = 40
_Format$ = 64
scanf	PROC						; COMDAT

; 1276 : {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	sub	rsp, 56					; 00000038H

; 1277 :     int _Result;
; 1278 :     va_list _ArgList;
; 1279 :     __crt_va_start(_ArgList, _Format);

	lea	rax, QWORD PTR _Format$[rsp+8]
	mov	QWORD PTR _ArgList$[rsp], rax

; 1280 :     _Result = _vfscanf_l(stdin, _Format, NULL, _ArgList);

	xor	ecx, ecx
	call	QWORD PTR __imp___acrt_iob_func
	mov	r9, QWORD PTR _ArgList$[rsp]
	xor	r8d, r8d
	mov	rdx, QWORD PTR _Format$[rsp]
	mov	rcx, rax
	call	_vfscanf_l
	mov	DWORD PTR _Result$[rsp], eax

; 1281 :     __crt_va_end(_ArgList);

	mov	QWORD PTR _ArgList$[rsp], 0

; 1282 :     return _Result;

	mov	eax, DWORD PTR _Result$[rsp]

; 1283 : }

	add	rsp, 56					; 00000038H
	ret	0
scanf	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT _vfscanf_l
_TEXT	SEGMENT
_Stream$ = 64
_Format$ = 72
_Locale$ = 80
_ArgList$ = 88
_vfscanf_l PROC						; COMDAT

; 1058 : {

$LN3:
	mov	QWORD PTR [rsp+32], r9
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 1059 :     return __stdio_common_vfscanf(

	call	__local_stdio_scanf_options
	mov	rcx, QWORD PTR _ArgList$[rsp]
	mov	QWORD PTR [rsp+32], rcx
	mov	r9, QWORD PTR _Locale$[rsp]
	mov	r8, QWORD PTR _Format$[rsp]
	mov	rdx, QWORD PTR _Stream$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	QWORD PTR __imp___stdio_common_vfscanf

; 1060 :         _CRT_INTERNAL_LOCAL_SCANF_OPTIONS,
; 1061 :         _Stream, _Format, _Locale, _ArgList);
; 1062 : }

	add	rsp, 56					; 00000038H
	ret	0
_vfscanf_l ENDP
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
;	COMDAT __local_stdio_scanf_options
_TEXT	SEGMENT
__local_stdio_scanf_options PROC			; COMDAT

; 83   :     static unsigned __int64 _OptionsStorage;
; 84   :     return &_OptionsStorage;

	lea	rax, OFFSET FLAT:?_OptionsStorage@?1??__local_stdio_scanf_options@@9@9 ; `__local_stdio_scanf_options'::`2'::_OptionsStorage

; 85   : }

	ret	0
__local_stdio_scanf_options ENDP
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
