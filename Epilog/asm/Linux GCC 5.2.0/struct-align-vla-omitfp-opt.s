
/root/AntiTaint/Epilog/build/CMakeFiles/struct-align-vla-omitfp-opt.dir/src/struct-align-vla.c.o:     file format elf32-i386


Disassembly of section .text:

00000000 <fill>:
   0:	53                   	push   %ebx
   1:	83 ec 18             	sub    $0x18,%esp
   4:	8d 44 24 0c          	lea    0xc(%esp),%eax
   8:	8b 5c 24 20          	mov    0x20(%esp),%ebx
   c:	50                   	push   %eax
   d:	8d 44 24 0c          	lea    0xc(%esp),%eax
  11:	50                   	push   %eax
  12:	8d 44 24 0c          	lea    0xc(%esp),%eax
  16:	50                   	push   %eax
  17:	68 00 00 00 00       	push   $0x0
  1c:	e8 fc ff ff ff       	call   1d <fill+0x1d>
  21:	8b 44 24 14          	mov    0x14(%esp),%eax
  25:	89 03                	mov    %eax,(%ebx)
  27:	c1 f8 1f             	sar    $0x1f,%eax
  2a:	89 43 04             	mov    %eax,0x4(%ebx)
  2d:	8b 44 24 18          	mov    0x18(%esp),%eax
  31:	89 43 08             	mov    %eax,0x8(%ebx)
  34:	c1 f8 1f             	sar    $0x1f,%eax
  37:	89 43 0c             	mov    %eax,0xc(%ebx)
  3a:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  3e:	89 43 10             	mov    %eax,0x10(%ebx)
  41:	c1 f8 1f             	sar    $0x1f,%eax
  44:	89 43 14             	mov    %eax,0x14(%ebx)
  47:	83 c4 28             	add    $0x28,%esp
  4a:	5b                   	pop    %ebx
  4b:	c3                   	ret    
  4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000050 <print>:
  50:	57                   	push   %edi
  51:	56                   	push   %esi
  52:	53                   	push   %ebx
  53:	8b 7c 24 14          	mov    0x14(%esp),%edi
  57:	8b 44 24 10          	mov    0x10(%esp),%eax
  5b:	85 ff                	test   %edi,%edi
  5d:	7e 28                	jle    87 <print+0x37>
  5f:	8d 58 10             	lea    0x10(%eax),%ebx
  62:	31 f6                	xor    %esi,%esi
  64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  68:	ff 33                	pushl  (%ebx)
  6a:	ff 73 f8             	pushl  -0x8(%ebx)
  6d:	83 c6 01             	add    $0x1,%esi
  70:	ff 73 f0             	pushl  -0x10(%ebx)
  73:	68 09 00 00 00       	push   $0x9
  78:	83 c3 20             	add    $0x20,%ebx
  7b:	e8 fc ff ff ff       	call   7c <print+0x2c>
  80:	83 c4 10             	add    $0x10,%esp
  83:	39 f7                	cmp    %esi,%edi
  85:	75 e1                	jne    68 <print+0x18>
  87:	5b                   	pop    %ebx
  88:	5e                   	pop    %esi
  89:	5f                   	pop    %edi
  8a:	c3                   	ret    
  8b:	90                   	nop
  8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000090 <func>:
  90:	55                   	push   %ebp
  91:	89 e5                	mov    %esp,%ebp
  93:	57                   	push   %edi
  94:	56                   	push   %esi
  95:	53                   	push   %ebx
  96:	8d 7d e0             	lea    -0x20(%ebp),%edi
  99:	31 db                	xor    %ebx,%ebx
  9b:	83 ec 38             	sub    $0x38,%esp
  9e:	57                   	push   %edi
  9f:	e8 fc ff ff ff       	call   a0 <func+0x10>
  a4:	8d 45 dc             	lea    -0x24(%ebp),%eax
  a7:	83 c4 0c             	add    $0xc,%esp
  aa:	50                   	push   %eax
  ab:	68 13 00 00 00       	push   $0x13
  b0:	57                   	push   %edi
  b1:	e8 fc ff ff ff       	call   b2 <func+0x22>
  b6:	8b 55 dc             	mov    -0x24(%ebp),%edx
  b9:	83 c4 10             	add    $0x10,%esp
  bc:	89 d0                	mov    %edx,%eax
  be:	c1 e0 05             	shl    $0x5,%eax
  c1:	83 c0 20             	add    $0x20,%eax
  c4:	29 c4                	sub    %eax,%esp
  c6:	8d 74 24 1f          	lea    0x1f(%esp),%esi
  ca:	83 e6 e0             	and    $0xffffffe0,%esi
  cd:	85 d2                	test   %edx,%edx
  cf:	89 75 d4             	mov    %esi,-0x2c(%ebp)
  d2:	7e 1b                	jle    ef <func+0x5f>
  d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  d8:	83 ec 0c             	sub    $0xc,%esp
  db:	83 c3 01             	add    $0x1,%ebx
  de:	56                   	push   %esi
  df:	83 c6 20             	add    $0x20,%esi
  e2:	e8 fc ff ff ff       	call   e3 <func+0x53>
  e7:	83 c4 10             	add    $0x10,%esp
  ea:	39 5d dc             	cmp    %ebx,-0x24(%ebp)
  ed:	7f e9                	jg     d8 <func+0x48>
  ef:	83 ec 0c             	sub    $0xc,%esp
  f2:	57                   	push   %edi
  f3:	e8 fc ff ff ff       	call   f4 <func+0x64>
  f8:	58                   	pop    %eax
  f9:	5a                   	pop    %edx
  fa:	ff 75 dc             	pushl  -0x24(%ebp)
  fd:	ff 75 d4             	pushl  -0x2c(%ebp)
 100:	e8 fc ff ff ff       	call   101 <func+0x71>
 105:	8d 65 f4             	lea    -0xc(%ebp),%esp
 108:	5b                   	pop    %ebx
 109:	5e                   	pop    %esi
 10a:	5f                   	pop    %edi
 10b:	5d                   	pop    %ebp
 10c:	c3                   	ret    

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
