
/root/AntiTaint/Epilog/build/CMakeFiles/func-iparam-opt.dir/src/func-iparam.c.o:     file format elf32-i386


Disassembly of section .text:

00000000 <func>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	8d 5d f0             	lea    -0x10(%ebp),%ebx
   7:	83 ec 20             	sub    $0x20,%esp
   a:	53                   	push   %ebx
   b:	e8 fc ff ff ff       	call   c <func+0xc>
  10:	89 1c 24             	mov    %ebx,(%esp)
  13:	ff 75 10             	pushl  0x10(%ebp)
  16:	ff 75 0c             	pushl  0xc(%ebp)
  19:	ff 75 08             	pushl  0x8(%ebp)
  1c:	68 00 00 00 00       	push   $0x0
  21:	e8 fc ff ff ff       	call   22 <func+0x22>
  26:	83 c4 20             	add    $0x20,%esp
  29:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  2c:	c9                   	leave  
  2d:	c3                   	ret    

Disassembly of section .text.startup:

00000000 <main>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 08             	sub    $0x8,%esp
  11:	6a 03                	push   $0x3
  13:	6a 02                	push   $0x2
  15:	6a 01                	push   $0x1
  17:	e8 fc ff ff ff       	call   18 <main+0x18>
  1c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1f:	31 c0                	xor    %eax,%eax
  21:	c9                   	leave  
  22:	8d 61 fc             	lea    -0x4(%ecx),%esp
  25:	c3                   	ret    
