
/root/AntiTaint/Epilog/build/CMakeFiles/func-iparam-omitfp-opt-stackp.dir/src/func-iparam.c.o:     file format elf32-i386


Disassembly of section .text:

00000000 <func>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 28             	sub    $0x28,%esp
   7:	8d 5c 24 10          	lea    0x10(%esp),%ebx
   b:	8b 74 24 3c          	mov    0x3c(%esp),%esi
   f:	8b 7c 24 40          	mov    0x40(%esp),%edi
  13:	8b 6c 24 44          	mov    0x44(%esp),%ebp
  17:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
  1d:	89 44 24 18          	mov    %eax,0x18(%esp)
  21:	31 c0                	xor    %eax,%eax
  23:	53                   	push   %ebx
  24:	e8 fc ff ff ff       	call   25 <func+0x25>
  29:	89 1c 24             	mov    %ebx,(%esp)
  2c:	55                   	push   %ebp
  2d:	57                   	push   %edi
  2e:	56                   	push   %esi
  2f:	68 00 00 00 00       	push   $0x0
  34:	e8 fc ff ff ff       	call   35 <func+0x35>
  39:	83 c4 20             	add    $0x20,%esp
  3c:	8b 44 24 0c          	mov    0xc(%esp),%eax
  40:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
  47:	75 08                	jne    51 <func+0x51>
  49:	83 c4 1c             	add    $0x1c,%esp
  4c:	5b                   	pop    %ebx
  4d:	5e                   	pop    %esi
  4e:	5f                   	pop    %edi
  4f:	5d                   	pop    %ebp
  50:	c3                   	ret    
  51:	e8 fc ff ff ff       	call   52 <func+0x52>

Disassembly of section .text.startup:

00000000 <main>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 18             	sub    $0x18,%esp
  11:	6a 03                	push   $0x3
  13:	6a 02                	push   $0x2
  15:	6a 01                	push   $0x1
  17:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
  1d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  20:	31 c0                	xor    %eax,%eax
  22:	e8 fc ff ff ff       	call   23 <main+0x23>
  27:	83 c4 10             	add    $0x10,%esp
  2a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  2d:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
  34:	75 0a                	jne    40 <main+0x40>
  36:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  39:	31 c0                	xor    %eax,%eax
  3b:	c9                   	leave  
  3c:	8d 61 fc             	lea    -0x4(%ecx),%esp
  3f:	c3                   	ret    
  40:	e8 fc ff ff ff       	call   41 <main+0x41>
