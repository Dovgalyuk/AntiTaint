; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23506.0 

include listing.inc

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

PUBLIC	__local_stdio_printf_options
PUBLIC	__local_stdio_scanf_options
PUBLIC	_vfprintf_l
PUBLIC	printf
PUBLIC	_vfscanf_l
PUBLIC	scanf
PUBLIC	func
PUBLIC	main
PUBLIC	??_C@_02DPKJAMEF@?$CFd?$AA@			; `string'
EXTRN	__imp___acrt_iob_func:PROC
EXTRN	__imp___stdio_common_vfprintf:PROC
EXTRN	__imp___stdio_common_vfscanf:PROC
EXTRN	gets:PROC
EXTRN	__GSHandlerCheck:PROC
EXTRN	__chkstk:PROC
EXTRN	__security_check_cookie:PROC
EXTRN	__security_cookie:QWORD
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
COMM	?_OptionsStorage@?1??__local_stdio_scanf_options@@9@9:QWORD							; `__local_stdio_scanf_options'::`2'::_OptionsStorage
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
$pdata$_vfscanf_l DD imagerel $LN4
	DD	imagerel $LN4+81
	DD	imagerel $unwind$_vfscanf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$scanf DD	imagerel $LN4
	DD	imagerel $LN4+63
	DD	imagerel $unwind$scanf
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$func DD	imagerel $LN5
	DD	imagerel $LN5+126
	DD	imagerel $unwind$func
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$main DD	imagerel $LN4
	DD	imagerel $LN4+16
	DD	imagerel $unwind$main
pdata	ENDS
;	COMDAT ??_C@_02DPKJAMEF@?$CFd?$AA@
CONST	SEGMENT
??_C@_02DPKJAMEF@?$CFd?$AA@ DB '%d', 00H		; `string'
CONST	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$main DD	010401H
	DD	04204H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$func DD	025051d19H
	DD	08340fH
	DD	05206230bH
	DD	05002H
	DD	imagerel __GSHandlerCheck
	DD	028H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$scanf DD 021901H
	DD	030153219H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vfscanf_l DD 081401H
	DD	0a6414H
	DD	095414H
	DD	083414H
	DD	070105214H
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
; Function compile flags: /Ogtp
; File d:\projects\taintanalysis\antitaint\epilog\src\func-alloca.c
;	COMDAT main
_TEXT	SEGMENT
main	PROC						; COMDAT

; 20   : {

$LN4:
	sub	rsp, 40					; 00000028H

; 21   :   func();

	call	func

; 22   :   return 0;

	xor	eax, eax

; 23   : }

	add	rsp, 40					; 00000028H
	ret	0
main	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File d:\projects\taintanalysis\antitaint\epilog\src\func-alloca.c
;	COMDAT func
_TEXT	SEGMENT
sz$ = 0
__$ArrayPad$ = 8
func	PROC						; COMDAT

; 10   : {

$LN5:
	push	rbp
	sub	rsp, 48					; 00000030H
	lea	rbp, QWORD PTR [rsp+32]
	mov	QWORD PTR [rbp+32], rbx
	mov	rax, QWORD PTR __security_cookie
	xor	rax, rbp
	mov	QWORD PTR __$ArrayPad$[rbp], rax

; 11   :   int sz;
; 12   :   char *buf;
; 13   :   scanf("%d", &sz);

	lea	rdx, QWORD PTR sz$[rbp]
	lea	rcx, OFFSET FLAT:??_C@_02DPKJAMEF@?$CFd?$AA@
	call	scanf

; 14   :   buf = (char*)alloca(sz);

	movsxd	rax, DWORD PTR sz$[rbp]
	lea	rcx, QWORD PTR [rax+15]
	cmp	rcx, rax
	ja	SHORT $LN3@func
	mov	rcx, 1152921504606846960		; 0ffffffffffffff0H
$LN3@func:
	and	rcx, -16
	mov	rax, rcx
	call	__chkstk
	sub	rsp, rcx
	lea	rbx, QWORD PTR [rsp+32]

; 15   :   gets(buf);

	mov	rcx, rbx
	call	gets

; 16   :   printf(buf);

	mov	rcx, rbx
	call	printf

; 17   : }

	mov	rcx, QWORD PTR __$ArrayPad$[rbp]
	xor	rcx, rbp
	call	__security_check_cookie
	mov	rbx, QWORD PTR [rbp+32]
	lea	rsp, QWORD PTR [rbp+16]
	pop	rbp
	ret	0
func	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT scanf
_TEXT	SEGMENT
_Format$ = 48
scanf	PROC						; COMDAT

; 1276 : {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	push	rbx
	sub	rsp, 32					; 00000020H

; 1277 :     int _Result;
; 1278 :     va_list _ArgList;
; 1279 :     __crt_va_start(_ArgList, _Format);
; 1280 :     _Result = _vfscanf_l(stdin, _Format, NULL, _ArgList);

	xor	ecx, ecx
	lea	rbx, QWORD PTR _Format$[rsp+8]
	call	QWORD PTR __imp___acrt_iob_func
	mov	rdx, QWORD PTR _Format$[rsp]
	mov	r9, rbx
	mov	rcx, rax
	xor	r8d, r8d
	call	_vfscanf_l

; 1281 :     __crt_va_end(_ArgList);
; 1282 :     return _Result;
; 1283 : }

	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
scanf	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\stdio.h
;	COMDAT _vfscanf_l
_TEXT	SEGMENT
_Stream$ = 64
_Format$ = 72
_Locale$ = 80
_ArgList$ = 88
_vfscanf_l PROC						; COMDAT

; 1058 : {

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

; 1059 :     return __stdio_common_vfscanf(

	call	__local_stdio_scanf_options
	mov	r9, rdi
	mov	QWORD PTR [rsp+32], rbx
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, QWORD PTR [rax]
	call	QWORD PTR __imp___stdio_common_vfscanf

; 1060 :         _CRT_INTERNAL_LOCAL_SCANF_OPTIONS,
; 1061 :         _Stream, _Format, _Locale, _ArgList);
; 1062 : }

	mov	rbx, QWORD PTR [rsp+64]
	mov	rbp, QWORD PTR [rsp+72]
	mov	rsi, QWORD PTR [rsp+80]
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
_vfscanf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
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
; Function compile flags: /Ogtp
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
; Function compile flags: /Ogtp
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
; Function compile flags: /Ogtp
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
