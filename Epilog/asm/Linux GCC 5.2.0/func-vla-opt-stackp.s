
/root/AntiTaint/Epilog/build/CMakeFiles/func-vla-opt-stackp.dir/src/func-vla.c.o:     file format elf32-i386


Disassembly of section .text:

00000000 <func>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 1c             	sub    $0x1c,%esp
   7:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
   d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10:	31 c0                	xor    %eax,%eax
  12:	8d 45 f0             	lea    -0x10(%ebp),%eax
  15:	50                   	push   %eax
  16:	68 00 00 00 00       	push   $0x0
  1b:	e8 fc ff ff ff       	call   1c <func+0x1c>
  20:	8b 45 f0             	mov    -0x10(%ebp),%eax
  23:	83 c4 10             	add    $0x10,%esp
  26:	83 c0 0f             	add    $0xf,%eax
  29:	83 e0 f0             	and    $0xfffffff0,%eax
  2c:	29 c4                	sub    %eax,%esp
  2e:	89 e3                	mov    %esp,%ebx
  30:	83 ec 0c             	sub    $0xc,%esp
  33:	53                   	push   %ebx
  34:	e8 fc ff ff ff       	call   35 <func+0x35>
  39:	89 1c 24             	mov    %ebx,(%esp)
  3c:	e8 fc ff ff ff       	call   3d <func+0x3d>
  41:	83 c4 10             	add    $0x10,%esp
  44:	8b 45 f4             	mov    -0xc(%ebp),%eax
  47:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
  4e:	75 05                	jne    55 <func+0x55>
  50:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  53:	c9                   	leave  
  54:	c3                   	ret    
  55:	e8 fc ff ff ff       	call   56 <func+0x56>

Disassembly of section .text.startup:

00000000 <main>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 14             	sub    $0x14,%esp
  11:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
  17:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1a:	31 c0                	xor    %eax,%eax
  1c:	e8 fc ff ff ff       	call   1d <main+0x1d>
  21:	8b 55 f4             	mov    -0xc(%ebp),%edx
  24:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
  2b:	75 0b                	jne    38 <main+0x38>
  2d:	83 c4 14             	add    $0x14,%esp
  30:	31 c0                	xor    %eax,%eax
  32:	59                   	pop    %ecx
  33:	5d                   	pop    %ebp
  34:	8d 61 fc             	lea    -0x4(%ecx),%esp
  37:	c3                   	ret    
  38:	e8 fc ff ff ff       	call   39 <main+0x39>
