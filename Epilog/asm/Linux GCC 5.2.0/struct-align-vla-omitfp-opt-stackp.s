
/root/AntiTaint/Epilog/build/CMakeFiles/struct-align-vla-omitfp-opt-stackp.dir/src/struct-align-vla.c.o:     file format elf32-i386


Disassembly of section .text:

00000000 <fill>:
   0:	53                   	push   %ebx
   1:	83 ec 18             	sub    $0x18,%esp
   4:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
   a:	89 44 24 0c          	mov    %eax,0xc(%esp)
   e:	31 c0                	xor    %eax,%eax
  10:	8d 44 24 08          	lea    0x8(%esp),%eax
  14:	8b 5c 24 20          	mov    0x20(%esp),%ebx
  18:	50                   	push   %eax
  19:	8d 44 24 08          	lea    0x8(%esp),%eax
  1d:	50                   	push   %eax
  1e:	8d 44 24 08          	lea    0x8(%esp),%eax
  22:	50                   	push   %eax
  23:	68 00 00 00 00       	push   $0x0
  28:	e8 fc ff ff ff       	call   29 <fill+0x29>
  2d:	8b 44 24 10          	mov    0x10(%esp),%eax
  31:	89 03                	mov    %eax,(%ebx)
  33:	c1 f8 1f             	sar    $0x1f,%eax
  36:	89 43 04             	mov    %eax,0x4(%ebx)
  39:	8b 44 24 14          	mov    0x14(%esp),%eax
  3d:	89 43 08             	mov    %eax,0x8(%ebx)
  40:	c1 f8 1f             	sar    $0x1f,%eax
  43:	89 43 0c             	mov    %eax,0xc(%ebx)
  46:	8b 44 24 18          	mov    0x18(%esp),%eax
  4a:	83 c4 10             	add    $0x10,%esp
  4d:	89 43 10             	mov    %eax,0x10(%ebx)
  50:	c1 f8 1f             	sar    $0x1f,%eax
  53:	89 43 14             	mov    %eax,0x14(%ebx)
  56:	8b 44 24 0c          	mov    0xc(%esp),%eax
  5a:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
  61:	75 05                	jne    68 <fill+0x68>
  63:	83 c4 18             	add    $0x18,%esp
  66:	5b                   	pop    %ebx
  67:	c3                   	ret    
  68:	e8 fc ff ff ff       	call   69 <fill+0x69>
  6d:	8d 76 00             	lea    0x0(%esi),%esi

00000070 <print>:
  70:	57                   	push   %edi
  71:	56                   	push   %esi
  72:	53                   	push   %ebx
  73:	83 ec 10             	sub    $0x10,%esp
  76:	8b 7c 24 24          	mov    0x24(%esp),%edi
  7a:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
  80:	89 44 24 0c          	mov    %eax,0xc(%esp)
  84:	31 c0                	xor    %eax,%eax
  86:	8b 44 24 20          	mov    0x20(%esp),%eax
  8a:	85 ff                	test   %edi,%edi
  8c:	7e 29                	jle    b7 <print+0x47>
  8e:	8d 58 10             	lea    0x10(%eax),%ebx
  91:	31 f6                	xor    %esi,%esi
  93:	90                   	nop
  94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  98:	ff 33                	pushl  (%ebx)
  9a:	ff 73 f8             	pushl  -0x8(%ebx)
  9d:	83 c6 01             	add    $0x1,%esi
  a0:	ff 73 f0             	pushl  -0x10(%ebx)
  a3:	68 09 00 00 00       	push   $0x9
  a8:	83 c3 20             	add    $0x20,%ebx
  ab:	e8 fc ff ff ff       	call   ac <print+0x3c>
  b0:	83 c4 10             	add    $0x10,%esp
  b3:	39 f7                	cmp    %esi,%edi
  b5:	75 e1                	jne    98 <print+0x28>
  b7:	8b 44 24 0c          	mov    0xc(%esp),%eax
  bb:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
  c2:	75 07                	jne    cb <print+0x5b>
  c4:	83 c4 10             	add    $0x10,%esp
  c7:	5b                   	pop    %ebx
  c8:	5e                   	pop    %esi
  c9:	5f                   	pop    %edi
  ca:	c3                   	ret    
  cb:	e8 fc ff ff ff       	call   cc <print+0x5c>

000000d0 <func>:
  d0:	55                   	push   %ebp
  d1:	89 e5                	mov    %esp,%ebp
  d3:	57                   	push   %edi
  d4:	56                   	push   %esi
  d5:	53                   	push   %ebx
  d6:	8d 7d dc             	lea    -0x24(%ebp),%edi
  d9:	31 db                	xor    %ebx,%ebx
  db:	83 ec 38             	sub    $0x38,%esp
  de:	57                   	push   %edi
  df:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
  e5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  e8:	31 c0                	xor    %eax,%eax
  ea:	e8 fc ff ff ff       	call   eb <func+0x1b>
  ef:	8d 45 d8             	lea    -0x28(%ebp),%eax
  f2:	83 c4 0c             	add    $0xc,%esp
  f5:	50                   	push   %eax
  f6:	68 13 00 00 00       	push   $0x13
  fb:	57                   	push   %edi
  fc:	e8 fc ff ff ff       	call   fd <func+0x2d>
 101:	8b 55 d8             	mov    -0x28(%ebp),%edx
 104:	83 c4 10             	add    $0x10,%esp
 107:	89 d0                	mov    %edx,%eax
 109:	c1 e0 05             	shl    $0x5,%eax
 10c:	83 c0 20             	add    $0x20,%eax
 10f:	29 c4                	sub    %eax,%esp
 111:	8d 74 24 1f          	lea    0x1f(%esp),%esi
 115:	83 e6 e0             	and    $0xffffffe0,%esi
 118:	85 d2                	test   %edx,%edx
 11a:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 11d:	7e 18                	jle    137 <func+0x67>
 11f:	90                   	nop
 120:	83 ec 0c             	sub    $0xc,%esp
 123:	83 c3 01             	add    $0x1,%ebx
 126:	56                   	push   %esi
 127:	83 c6 20             	add    $0x20,%esi
 12a:	e8 fc ff ff ff       	call   12b <func+0x5b>
 12f:	83 c4 10             	add    $0x10,%esp
 132:	39 5d d8             	cmp    %ebx,-0x28(%ebp)
 135:	7f e9                	jg     120 <func+0x50>
 137:	83 ec 0c             	sub    $0xc,%esp
 13a:	57                   	push   %edi
 13b:	e8 fc ff ff ff       	call   13c <func+0x6c>
 140:	58                   	pop    %eax
 141:	5a                   	pop    %edx
 142:	ff 75 d8             	pushl  -0x28(%ebp)
 145:	ff 75 d4             	pushl  -0x2c(%ebp)
 148:	e8 fc ff ff ff       	call   149 <func+0x79>
 14d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 150:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 157:	75 08                	jne    161 <func+0x91>
 159:	8d 65 f4             	lea    -0xc(%ebp),%esp
 15c:	5b                   	pop    %ebx
 15d:	5e                   	pop    %esi
 15e:	5f                   	pop    %edi
 15f:	5d                   	pop    %ebp
 160:	c3                   	ret    
 161:	e8 fc ff ff ff       	call   162 <func+0x92>

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
