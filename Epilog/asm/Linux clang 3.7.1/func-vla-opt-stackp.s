
/root/AntiTaint/Epilog/buildClang/CMakeFiles/func-vla-opt-stackp.dir/src/func-vla.c.o:     file format elf32-i386


Disassembly of section .text:

00000000 <func>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	56                   	push   %esi
   4:	83 ec 14             	sub    $0x14,%esp
   7:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
   d:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10:	83 ec 08             	sub    $0x8,%esp
  13:	8d 45 f4             	lea    -0xc(%ebp),%eax
  16:	50                   	push   %eax
  17:	68 00 00 00 00       	push   $0x0
  1c:	e8 fc ff ff ff       	call   1d <func+0x1d>
  21:	83 c4 10             	add    $0x10,%esp
  24:	8b 45 f4             	mov    -0xc(%ebp),%eax
  27:	89 e6                	mov    %esp,%esi
  29:	83 c0 0f             	add    $0xf,%eax
  2c:	83 e0 f0             	and    $0xfffffff0,%eax
  2f:	29 c6                	sub    %eax,%esi
  31:	89 f4                	mov    %esi,%esp
  33:	83 ec 0c             	sub    $0xc,%esp
  36:	56                   	push   %esi
  37:	e8 fc ff ff ff       	call   38 <func+0x38>
  3c:	83 c4 10             	add    $0x10,%esp
  3f:	83 ec 0c             	sub    $0xc,%esp
  42:	56                   	push   %esi
  43:	e8 fc ff ff ff       	call   44 <func+0x44>
  48:	83 c4 10             	add    $0x10,%esp
  4b:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
  51:	3b 45 f8             	cmp    -0x8(%ebp),%eax
  54:	75 06                	jne    5c <func+0x5c>
  56:	8d 65 fc             	lea    -0x4(%ebp),%esp
  59:	5e                   	pop    %esi
  5a:	5d                   	pop    %ebp
  5b:	c3                   	ret    
  5c:	e8 fc ff ff ff       	call   5d <func+0x5d>
  61:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%eax,%eax,1)
  68:	0f 1f 84 00 00 00 00 
  6f:	00 

00000070 <main>:
  70:	55                   	push   %ebp
  71:	89 e5                	mov    %esp,%ebp
  73:	83 ec 08             	sub    $0x8,%esp
  76:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
  7c:	89 45 fc             	mov    %eax,-0x4(%ebp)
  7f:	e8 7c ff ff ff       	call   0 <func>
  84:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
  8a:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  8d:	75 07                	jne    96 <main+0x26>
  8f:	31 c0                	xor    %eax,%eax
  91:	83 c4 08             	add    $0x8,%esp
  94:	5d                   	pop    %ebp
  95:	c3                   	ret    
  96:	e8 fc ff ff ff       	call   97 <main+0x27>
