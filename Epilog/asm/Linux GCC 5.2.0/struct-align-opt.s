
/root/AntiTaint/Epilog/build/CMakeFiles/struct-align-opt.dir/src/struct-align.c.o:     file format elf32-i386


Disassembly of section .text:

00000000 <fill>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	8d 45 f4             	lea    -0xc(%ebp),%eax
   7:	83 ec 14             	sub    $0x14,%esp
   a:	8b 5d 08             	mov    0x8(%ebp),%ebx
   d:	50                   	push   %eax
   e:	8d 45 f0             	lea    -0x10(%ebp),%eax
  11:	50                   	push   %eax
  12:	8d 45 ec             	lea    -0x14(%ebp),%eax
  15:	50                   	push   %eax
  16:	68 00 00 00 00       	push   $0x0
  1b:	e8 fc ff ff ff       	call   1c <fill+0x1c>
  20:	8b 45 ec             	mov    -0x14(%ebp),%eax
  23:	83 c4 10             	add    $0x10,%esp
  26:	89 03                	mov    %eax,(%ebx)
  28:	c1 f8 1f             	sar    $0x1f,%eax
  2b:	89 43 04             	mov    %eax,0x4(%ebx)
  2e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  31:	89 43 08             	mov    %eax,0x8(%ebx)
  34:	c1 f8 1f             	sar    $0x1f,%eax
  37:	89 43 0c             	mov    %eax,0xc(%ebx)
  3a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  3d:	89 43 10             	mov    %eax,0x10(%ebx)
  40:	c1 f8 1f             	sar    $0x1f,%eax
  43:	89 43 14             	mov    %eax,0x14(%ebx)
  46:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  49:	c9                   	leave  
  4a:	c3                   	ret    
  4b:	90                   	nop
  4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000050 <func>:
  50:	55                   	push   %ebp
  51:	89 e5                	mov    %esp,%ebp
  53:	53                   	push   %ebx
  54:	8d 5d f0             	lea    -0x10(%ebp),%ebx
  57:	83 ec 30             	sub    $0x30,%esp
  5a:	53                   	push   %ebx
  5b:	e8 fc ff ff ff       	call   5c <func+0xc>
  60:	8d 45 ec             	lea    -0x14(%ebp),%eax
  63:	50                   	push   %eax
  64:	8d 45 e8             	lea    -0x18(%ebp),%eax
  67:	50                   	push   %eax
  68:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  6b:	50                   	push   %eax
  6c:	68 00 00 00 00       	push   $0x0
  71:	e8 fc ff ff ff       	call   72 <func+0x22>
  76:	83 c4 14             	add    $0x14,%esp
  79:	ff 75 ec             	pushl  -0x14(%ebp)
  7c:	ff 75 e8             	pushl  -0x18(%ebp)
  7f:	ff 75 e4             	pushl  -0x1c(%ebp)
  82:	53                   	push   %ebx
  83:	68 09 00 00 00       	push   $0x9
  88:	e8 fc ff ff ff       	call   89 <func+0x39>
  8d:	83 c4 20             	add    $0x20,%esp
  90:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  93:	c9                   	leave  
  94:	c3                   	ret    

Disassembly of section .text.startup:

00000000 <main>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 04             	sub    $0x4,%esp
  11:	e8 fc ff ff ff       	call   12 <main+0x12>
  16:	83 c4 04             	add    $0x4,%esp
  19:	31 c0                	xor    %eax,%eax
  1b:	59                   	pop    %ecx
  1c:	5d                   	pop    %ebp
  1d:	8d 61 fc             	lea    -0x4(%ecx),%esp
  20:	c3                   	ret    
