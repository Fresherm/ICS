
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ca 3e 00 00    	push   0x3eca(%rip)        # 4ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 cb 3e 00 00 	bnd jmp *0x3ecb(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11df:	90                   	nop

Disassembly of section .plt.got:

00000000000011e0 <__cxa_finalize@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 0d 3e 00 00 	bnd jmp *0x3e0d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011f0 <getenv@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 05 3d 00 00 	bnd jmp *0x3d05(%rip)        # 4f00 <getenv@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <__errno_location@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 fd 3c 00 00 	bnd jmp *0x3cfd(%rip)        # 4f08 <__errno_location@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <strcpy@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 f5 3c 00 00 	bnd jmp *0x3cf5(%rip)        # 4f10 <strcpy@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <puts@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 ed 3c 00 00 	bnd jmp *0x3ced(%rip)        # 4f18 <puts@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <write@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 e5 3c 00 00 	bnd jmp *0x3ce5(%rip)        # 4f20 <write@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <strlen@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 dd 3c 00 00 	bnd jmp *0x3cdd(%rip)        # 4f28 <strlen@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <__stack_chk_fail@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 d5 3c 00 00 	bnd jmp *0x3cd5(%rip)        # 4f30 <__stack_chk_fail@GLIBC_2.4>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <alarm@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 cd 3c 00 00 	bnd jmp *0x3ccd(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <close@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 c5 3c 00 00 	bnd jmp *0x3cc5(%rip)        # 4f40 <close@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <read@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 bd 3c 00 00 	bnd jmp *0x3cbd(%rip)        # 4f48 <read@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <fgets@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 b5 3c 00 00 	bnd jmp *0x3cb5(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <strcmp@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 ad 3c 00 00 	bnd jmp *0x3cad(%rip)        # 4f58 <strcmp@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <signal@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 a5 3c 00 00 	bnd jmp *0x3ca5(%rip)        # 4f60 <signal@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <gethostbyname@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 9d 3c 00 00 	bnd jmp *0x3c9d(%rip)        # 4f68 <gethostbyname@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <__memmove_chk@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 95 3c 00 00 	bnd jmp *0x3c95(%rip)        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <strtol@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 8d 3c 00 00 	bnd jmp *0x3c8d(%rip)        # 4f78 <strtol@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <fflush@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 85 3c 00 00 	bnd jmp *0x3c85(%rip)        # 4f80 <fflush@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__isoc99_sscanf@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 7d 3c 00 00 	bnd jmp *0x3c7d(%rip)        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <__printf_chk@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 75 3c 00 00 	bnd jmp *0x3c75(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <fopen@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 6d 3c 00 00 	bnd jmp *0x3c6d(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <exit@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 65 3c 00 00 	bnd jmp *0x3c65(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <connect@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 5d 3c 00 00 	bnd jmp *0x3c5d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fprintf_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 55 3c 00 00 	bnd jmp *0x3c55(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <sleep@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 4d 3c 00 00 	bnd jmp *0x3c4d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <__ctype_b_loc@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 45 3c 00 00 	bnd jmp *0x3c45(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <__sprintf_chk@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 3d 3c 00 00 	bnd jmp *0x3c3d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <socket@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 35 3c 00 00 	bnd jmp *0x3c35(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013a0 <_start>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	31 ed                	xor    %ebp,%ebp
    13a6:	49 89 d1             	mov    %rdx,%r9
    13a9:	5e                   	pop    %rsi
    13aa:	48 89 e2             	mov    %rsp,%rdx
    13ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13b1:	50                   	push   %rax
    13b2:	54                   	push   %rsp
    13b3:	45 31 c0             	xor    %r8d,%r8d
    13b6:	31 c9                	xor    %ecx,%ecx
    13b8:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1489 <main>
    13bf:	ff 15 13 3c 00 00    	call   *0x3c13(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    13c5:	f4                   	hlt    
    13c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13cd:	00 00 00 

00000000000013d0 <deregister_tm_clones>:
    13d0:	48 8d 3d 89 42 00 00 	lea    0x4289(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    13d7:	48 8d 05 82 42 00 00 	lea    0x4282(%rip),%rax        # 5660 <stdout@GLIBC_2.2.5>
    13de:	48 39 f8             	cmp    %rdi,%rax
    13e1:	74 15                	je     13f8 <deregister_tm_clones+0x28>
    13e3:	48 8b 05 f6 3b 00 00 	mov    0x3bf6(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    13ea:	48 85 c0             	test   %rax,%rax
    13ed:	74 09                	je     13f8 <deregister_tm_clones+0x28>
    13ef:	ff e0                	jmp    *%rax
    13f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13f8:	c3                   	ret    
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <register_tm_clones>:
    1400:	48 8d 3d 59 42 00 00 	lea    0x4259(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    1407:	48 8d 35 52 42 00 00 	lea    0x4252(%rip),%rsi        # 5660 <stdout@GLIBC_2.2.5>
    140e:	48 29 fe             	sub    %rdi,%rsi
    1411:	48 89 f0             	mov    %rsi,%rax
    1414:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1418:	48 c1 f8 03          	sar    $0x3,%rax
    141c:	48 01 c6             	add    %rax,%rsi
    141f:	48 d1 fe             	sar    %rsi
    1422:	74 14                	je     1438 <register_tm_clones+0x38>
    1424:	48 8b 05 c5 3b 00 00 	mov    0x3bc5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    142b:	48 85 c0             	test   %rax,%rax
    142e:	74 08                	je     1438 <register_tm_clones+0x38>
    1430:	ff e0                	jmp    *%rax
    1432:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1438:	c3                   	ret    
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <__do_global_dtors_aux>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	80 3d 3d 42 00 00 00 	cmpb   $0x0,0x423d(%rip)        # 5688 <completed.0>
    144b:	75 2b                	jne    1478 <__do_global_dtors_aux+0x38>
    144d:	55                   	push   %rbp
    144e:	48 83 3d a2 3b 00 00 	cmpq   $0x0,0x3ba2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1455:	00 
    1456:	48 89 e5             	mov    %rsp,%rbp
    1459:	74 0c                	je     1467 <__do_global_dtors_aux+0x27>
    145b:	48 8b 3d a6 3b 00 00 	mov    0x3ba6(%rip),%rdi        # 5008 <__dso_handle>
    1462:	e8 79 fd ff ff       	call   11e0 <__cxa_finalize@plt>
    1467:	e8 64 ff ff ff       	call   13d0 <deregister_tm_clones>
    146c:	c6 05 15 42 00 00 01 	movb   $0x1,0x4215(%rip)        # 5688 <completed.0>
    1473:	5d                   	pop    %rbp
    1474:	c3                   	ret    
    1475:	0f 1f 00             	nopl   (%rax)
    1478:	c3                   	ret    
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <frame_dummy>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	e9 77 ff ff ff       	jmp    1400 <register_tm_clones>

0000000000001489 <main>:
    1489:	f3 0f 1e fa          	endbr64 
    148d:	53                   	push   %rbx
    148e:	83 ff 01             	cmp    $0x1,%edi
    1491:	0f 84 bc 00 00 00    	je     1553 <main+0xca>
    1497:	48 89 f3             	mov    %rsi,%rbx
    149a:	83 ff 02             	cmp    $0x2,%edi
    149d:	0f 85 e5 00 00 00    	jne    1588 <main+0xff>
    14a3:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14a7:	48 8d 35 56 1b 00 00 	lea    0x1b56(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    14ae:	e8 6d fe ff ff       	call   1320 <fopen@plt>
    14b3:	48 89 05 d6 41 00 00 	mov    %rax,0x41d6(%rip)        # 5690 <infile>
    14ba:	48 85 c0             	test   %rax,%rax
    14bd:	0f 84 a3 00 00 00    	je     1566 <main+0xdd>
    14c3:	e8 37 06 00 00       	call   1aff <initialize_bomb>
    14c8:	48 8d 3d 71 1b 00 00 	lea    0x1b71(%rip),%rdi        # 3040 <_IO_stdin_used+0x40>
    14cf:	e8 4c fd ff ff       	call   1220 <puts@plt>
    14d4:	48 8d 3d a5 1b 00 00 	lea    0x1ba5(%rip),%rdi        # 3080 <_IO_stdin_used+0x80>
    14db:	e8 40 fd ff ff       	call   1220 <puts@plt>
    14e0:	e8 6b 07 00 00       	call   1c50 <read_line>
    14e5:	48 89 c7             	mov    %rax,%rdi
    14e8:	e8 be 00 00 00       	call   15ab <phase_1>
    14ed:	e8 b2 08 00 00       	call   1da4 <phase_defused>
    14f2:	e8 59 07 00 00       	call   1c50 <read_line>
    14f7:	48 89 c7             	mov    %rax,%rdi
    14fa:	e8 d0 00 00 00       	call   15cf <phase_2>
    14ff:	e8 a0 08 00 00       	call   1da4 <phase_defused>
    1504:	e8 47 07 00 00       	call   1c50 <read_line>
    1509:	48 89 c7             	mov    %rax,%rdi
    150c:	e8 30 01 00 00       	call   1641 <phase_3>
    1511:	e8 8e 08 00 00       	call   1da4 <phase_defused>
    1516:	e8 35 07 00 00       	call   1c50 <read_line>
    151b:	48 89 c7             	mov    %rax,%rdi
    151e:	e8 43 02 00 00       	call   1766 <phase_4>
    1523:	e8 7c 08 00 00       	call   1da4 <phase_defused>
    1528:	e8 23 07 00 00       	call   1c50 <read_line>
    152d:	48 89 c7             	mov    %rax,%rdi
    1530:	e8 aa 02 00 00       	call   17df <phase_5>
    1535:	e8 6a 08 00 00       	call   1da4 <phase_defused>
    153a:	e8 11 07 00 00       	call   1c50 <read_line>
    153f:	48 89 c7             	mov    %rax,%rdi
    1542:	e8 e4 02 00 00       	call   182b <phase_6>
    1547:	e8 58 08 00 00       	call   1da4 <phase_defused>
    154c:	b8 00 00 00 00       	mov    $0x0,%eax
    1551:	5b                   	pop    %rbx
    1552:	c3                   	ret    
    1553:	48 8b 05 16 41 00 00 	mov    0x4116(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    155a:	48 89 05 2f 41 00 00 	mov    %rax,0x412f(%rip)        # 5690 <infile>
    1561:	e9 5d ff ff ff       	jmp    14c3 <main+0x3a>
    1566:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    156a:	48 8b 13             	mov    (%rbx),%rdx
    156d:	48 8d 35 92 1a 00 00 	lea    0x1a92(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    1574:	bf 01 00 00 00       	mov    $0x1,%edi
    1579:	e8 92 fd ff ff       	call   1310 <__printf_chk@plt>
    157e:	bf 08 00 00 00       	mov    $0x8,%edi
    1583:	e8 a8 fd ff ff       	call   1330 <exit@plt>
    1588:	48 8b 16             	mov    (%rsi),%rdx
    158b:	48 8d 35 91 1a 00 00 	lea    0x1a91(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    1592:	bf 01 00 00 00       	mov    $0x1,%edi
    1597:	b8 00 00 00 00       	mov    $0x0,%eax
    159c:	e8 6f fd ff ff       	call   1310 <__printf_chk@plt>
    15a1:	bf 08 00 00 00       	mov    $0x8,%edi
    15a6:	e8 85 fd ff ff       	call   1330 <exit@plt>

00000000000015ab <phase_1>:
    15ab:	f3 0f 1e fa          	endbr64 
    15af:	48 83 ec 08          	sub    $0x8,%rsp
    15b3:	48 8d 35 f6 1a 00 00 	lea    0x1af6(%rip),%rsi        # 30b0 <_IO_stdin_used+0xb0>
    15ba:	e8 e0 04 00 00       	call   1a9f <strings_not_equal>
    15bf:	85 c0                	test   %eax,%eax
    15c1:	75 05                	jne    15c8 <phase_1+0x1d>
    15c3:	48 83 c4 08          	add    $0x8,%rsp
    15c7:	c3                   	ret    
    15c8:	e8 e6 05 00 00       	call   1bb3 <explode_bomb>
    15cd:	eb f4                	jmp    15c3 <phase_1+0x18>

00000000000015cf <phase_2>:
    15cf:	f3 0f 1e fa          	endbr64 
    15d3:	55                   	push   %rbp
    15d4:	53                   	push   %rbx
    15d5:	48 83 ec 28          	sub    $0x28,%rsp
    15d9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    15e0:	00 00 
    15e2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    15e7:	31 c0                	xor    %eax,%eax
    15e9:	48 89 e6             	mov    %rsp,%rsi
    15ec:	e8 1a 06 00 00       	call   1c0b <read_six_numbers>
    15f1:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    15f5:	78 0a                	js     1601 <phase_2+0x32>
    15f7:	48 89 e5             	mov    %rsp,%rbp
    15fa:	bb 01 00 00 00       	mov    $0x1,%ebx
    15ff:	eb 13                	jmp    1614 <phase_2+0x45>
    1601:	e8 ad 05 00 00       	call   1bb3 <explode_bomb>
    1606:	eb ef                	jmp    15f7 <phase_2+0x28>
    1608:	83 c3 01             	add    $0x1,%ebx
    160b:	48 83 c5 04          	add    $0x4,%rbp
    160f:	83 fb 06             	cmp    $0x6,%ebx
    1612:	74 11                	je     1625 <phase_2+0x56>
    1614:	89 d8                	mov    %ebx,%eax
    1616:	03 45 00             	add    0x0(%rbp),%eax
    1619:	39 45 04             	cmp    %eax,0x4(%rbp)
    161c:	74 ea                	je     1608 <phase_2+0x39>
    161e:	e8 90 05 00 00       	call   1bb3 <explode_bomb>
    1623:	eb e3                	jmp    1608 <phase_2+0x39>
    1625:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    162a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1631:	00 00 
    1633:	75 07                	jne    163c <phase_2+0x6d>
    1635:	48 83 c4 28          	add    $0x28,%rsp
    1639:	5b                   	pop    %rbx
    163a:	5d                   	pop    %rbp
    163b:	c3                   	ret    
    163c:	e8 0f fc ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001641 <phase_3>:
    1641:	f3 0f 1e fa          	endbr64 
    1645:	48 83 ec 18          	sub    $0x18,%rsp
    1649:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1650:	00 00 
    1652:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1657:	31 c0                	xor    %eax,%eax
    1659:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    165e:	48 89 e2             	mov    %rsp,%rdx
    1661:	48 8d 35 e8 1c 00 00 	lea    0x1ce8(%rip),%rsi        # 3350 <array.0+0x210>
    1668:	e8 93 fc ff ff       	call   1300 <__isoc99_sscanf@plt>
    166d:	83 f8 01             	cmp    $0x1,%eax
    1670:	7e 1e                	jle    1690 <phase_3+0x4f>
    1672:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    1676:	0f 87 98 00 00 00    	ja     1714 <phase_3+0xd3>
    167c:	8b 04 24             	mov    (%rsp),%eax
    167f:	48 8d 15 9a 1a 00 00 	lea    0x1a9a(%rip),%rdx        # 3120 <_IO_stdin_used+0x120>
    1686:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    168a:	48 01 d0             	add    %rdx,%rax
    168d:	3e ff e0             	notrack jmp *%rax
    1690:	e8 1e 05 00 00       	call   1bb3 <explode_bomb>
    1695:	eb db                	jmp    1672 <phase_3+0x31>
    1697:	b8 53 02 00 00       	mov    $0x253,%eax
    169c:	83 e8 7a             	sub    $0x7a,%eax
    169f:	05 87 00 00 00       	add    $0x87,%eax
    16a4:	2d 18 01 00 00       	sub    $0x118,%eax
    16a9:	05 18 01 00 00       	add    $0x118,%eax
    16ae:	2d 18 01 00 00       	sub    $0x118,%eax
    16b3:	05 18 01 00 00       	add    $0x118,%eax
    16b8:	2d 18 01 00 00       	sub    $0x118,%eax
    16bd:	83 3c 24 05          	cmpl   $0x5,(%rsp)
    16c1:	7f 06                	jg     16c9 <phase_3+0x88>
    16c3:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    16c7:	74 05                	je     16ce <phase_3+0x8d>
    16c9:	e8 e5 04 00 00       	call   1bb3 <explode_bomb>
    16ce:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    16d3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    16da:	00 00 
    16dc:	75 42                	jne    1720 <phase_3+0xdf>
    16de:	48 83 c4 18          	add    $0x18,%rsp
    16e2:	c3                   	ret    
    16e3:	b8 00 00 00 00       	mov    $0x0,%eax
    16e8:	eb b2                	jmp    169c <phase_3+0x5b>
    16ea:	b8 00 00 00 00       	mov    $0x0,%eax
    16ef:	eb ae                	jmp    169f <phase_3+0x5e>
    16f1:	b8 00 00 00 00       	mov    $0x0,%eax
    16f6:	eb ac                	jmp    16a4 <phase_3+0x63>
    16f8:	b8 00 00 00 00       	mov    $0x0,%eax
    16fd:	eb aa                	jmp    16a9 <phase_3+0x68>
    16ff:	b8 00 00 00 00       	mov    $0x0,%eax
    1704:	eb a8                	jmp    16ae <phase_3+0x6d>
    1706:	b8 00 00 00 00       	mov    $0x0,%eax
    170b:	eb a6                	jmp    16b3 <phase_3+0x72>
    170d:	b8 00 00 00 00       	mov    $0x0,%eax
    1712:	eb a4                	jmp    16b8 <phase_3+0x77>
    1714:	e8 9a 04 00 00       	call   1bb3 <explode_bomb>
    1719:	b8 00 00 00 00       	mov    $0x0,%eax
    171e:	eb 9d                	jmp    16bd <phase_3+0x7c>
    1720:	e8 2b fb ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001725 <func4>:
    1725:	f3 0f 1e fa          	endbr64 
    1729:	48 83 ec 08          	sub    $0x8,%rsp
    172d:	89 d0                	mov    %edx,%eax
    172f:	29 f0                	sub    %esi,%eax
    1731:	89 c1                	mov    %eax,%ecx
    1733:	c1 e9 1f             	shr    $0x1f,%ecx
    1736:	01 c1                	add    %eax,%ecx
    1738:	d1 f9                	sar    %ecx
    173a:	01 f1                	add    %esi,%ecx
    173c:	39 f9                	cmp    %edi,%ecx
    173e:	7f 0c                	jg     174c <func4+0x27>
    1740:	b8 00 00 00 00       	mov    $0x0,%eax
    1745:	7c 11                	jl     1758 <func4+0x33>
    1747:	48 83 c4 08          	add    $0x8,%rsp
    174b:	c3                   	ret    
    174c:	8d 51 ff             	lea    -0x1(%rcx),%edx
    174f:	e8 d1 ff ff ff       	call   1725 <func4>
    1754:	01 c0                	add    %eax,%eax
    1756:	eb ef                	jmp    1747 <func4+0x22>
    1758:	8d 71 01             	lea    0x1(%rcx),%esi
    175b:	e8 c5 ff ff ff       	call   1725 <func4>
    1760:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1764:	eb e1                	jmp    1747 <func4+0x22>

0000000000001766 <phase_4>:
    1766:	f3 0f 1e fa          	endbr64 
    176a:	48 83 ec 18          	sub    $0x18,%rsp
    176e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1775:	00 00 
    1777:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    177c:	31 c0                	xor    %eax,%eax
    177e:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1783:	48 89 e2             	mov    %rsp,%rdx
    1786:	48 8d 35 c3 1b 00 00 	lea    0x1bc3(%rip),%rsi        # 3350 <array.0+0x210>
    178d:	e8 6e fb ff ff       	call   1300 <__isoc99_sscanf@plt>
    1792:	83 f8 02             	cmp    $0x2,%eax
    1795:	75 06                	jne    179d <phase_4+0x37>
    1797:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    179b:	76 05                	jbe    17a2 <phase_4+0x3c>
    179d:	e8 11 04 00 00       	call   1bb3 <explode_bomb>
    17a2:	ba 0e 00 00 00       	mov    $0xe,%edx
    17a7:	be 00 00 00 00       	mov    $0x0,%esi
    17ac:	8b 3c 24             	mov    (%rsp),%edi
    17af:	e8 71 ff ff ff       	call   1725 <func4>
    17b4:	83 f8 07             	cmp    $0x7,%eax
    17b7:	75 07                	jne    17c0 <phase_4+0x5a>
    17b9:	83 7c 24 04 07       	cmpl   $0x7,0x4(%rsp)
    17be:	74 05                	je     17c5 <phase_4+0x5f>
    17c0:	e8 ee 03 00 00       	call   1bb3 <explode_bomb>
    17c5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    17ca:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    17d1:	00 00 
    17d3:	75 05                	jne    17da <phase_4+0x74>
    17d5:	48 83 c4 18          	add    $0x18,%rsp
    17d9:	c3                   	ret    
    17da:	e8 71 fa ff ff       	call   1250 <__stack_chk_fail@plt>

00000000000017df <phase_5>:
    17df:	f3 0f 1e fa          	endbr64 
    17e3:	53                   	push   %rbx
    17e4:	48 89 fb             	mov    %rdi,%rbx
    17e7:	e8 92 02 00 00       	call   1a7e <string_length>
    17ec:	83 f8 06             	cmp    $0x6,%eax
    17ef:	75 2c                	jne    181d <phase_5+0x3e>
    17f1:	48 89 d8             	mov    %rbx,%rax
    17f4:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    17f8:	b9 00 00 00 00       	mov    $0x0,%ecx
    17fd:	48 8d 35 3c 19 00 00 	lea    0x193c(%rip),%rsi        # 3140 <array.0>
    1804:	0f b6 10             	movzbl (%rax),%edx
    1807:	83 e2 0f             	and    $0xf,%edx
    180a:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    180d:	48 83 c0 01          	add    $0x1,%rax
    1811:	48 39 f8             	cmp    %rdi,%rax
    1814:	75 ee                	jne    1804 <phase_5+0x25>
    1816:	83 f9 2a             	cmp    $0x2a,%ecx
    1819:	75 09                	jne    1824 <phase_5+0x45>
    181b:	5b                   	pop    %rbx
    181c:	c3                   	ret    
    181d:	e8 91 03 00 00       	call   1bb3 <explode_bomb>
    1822:	eb cd                	jmp    17f1 <phase_5+0x12>
    1824:	e8 8a 03 00 00       	call   1bb3 <explode_bomb>
    1829:	eb f0                	jmp    181b <phase_5+0x3c>

000000000000182b <phase_6>:
    182b:	f3 0f 1e fa          	endbr64 
    182f:	41 56                	push   %r14
    1831:	41 55                	push   %r13
    1833:	41 54                	push   %r12
    1835:	55                   	push   %rbp
    1836:	53                   	push   %rbx
    1837:	48 83 ec 60          	sub    $0x60,%rsp
    183b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1842:	00 00 
    1844:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1849:	31 c0                	xor    %eax,%eax
    184b:	49 89 e5             	mov    %rsp,%r13
    184e:	4c 89 ee             	mov    %r13,%rsi
    1851:	e8 b5 03 00 00       	call   1c0b <read_six_numbers>
    1856:	41 be 01 00 00 00    	mov    $0x1,%r14d
    185c:	49 89 e4             	mov    %rsp,%r12
    185f:	eb 28                	jmp    1889 <phase_6+0x5e>
    1861:	e8 4d 03 00 00       	call   1bb3 <explode_bomb>
    1866:	eb 30                	jmp    1898 <phase_6+0x6d>
    1868:	48 83 c3 01          	add    $0x1,%rbx
    186c:	83 fb 05             	cmp    $0x5,%ebx
    186f:	7f 10                	jg     1881 <phase_6+0x56>
    1871:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    1875:	39 45 00             	cmp    %eax,0x0(%rbp)
    1878:	75 ee                	jne    1868 <phase_6+0x3d>
    187a:	e8 34 03 00 00       	call   1bb3 <explode_bomb>
    187f:	eb e7                	jmp    1868 <phase_6+0x3d>
    1881:	49 83 c6 01          	add    $0x1,%r14
    1885:	49 83 c5 04          	add    $0x4,%r13
    1889:	4c 89 ed             	mov    %r13,%rbp
    188c:	41 8b 45 00          	mov    0x0(%r13),%eax
    1890:	83 e8 01             	sub    $0x1,%eax
    1893:	83 f8 05             	cmp    $0x5,%eax
    1896:	77 c9                	ja     1861 <phase_6+0x36>
    1898:	41 83 fe 05          	cmp    $0x5,%r14d
    189c:	7f 05                	jg     18a3 <phase_6+0x78>
    189e:	4c 89 f3             	mov    %r14,%rbx
    18a1:	eb ce                	jmp    1871 <phase_6+0x46>
    18a3:	be 00 00 00 00       	mov    $0x0,%esi
    18a8:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    18ab:	b8 01 00 00 00       	mov    $0x1,%eax
    18b0:	48 8d 15 59 39 00 00 	lea    0x3959(%rip),%rdx        # 5210 <node1>
    18b7:	83 f9 01             	cmp    $0x1,%ecx
    18ba:	7e 0b                	jle    18c7 <phase_6+0x9c>
    18bc:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    18c0:	83 c0 01             	add    $0x1,%eax
    18c3:	39 c8                	cmp    %ecx,%eax
    18c5:	75 f5                	jne    18bc <phase_6+0x91>
    18c7:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    18cc:	48 83 c6 01          	add    $0x1,%rsi
    18d0:	48 83 fe 06          	cmp    $0x6,%rsi
    18d4:	75 d2                	jne    18a8 <phase_6+0x7d>
    18d6:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    18db:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    18e0:	48 89 43 08          	mov    %rax,0x8(%rbx)
    18e4:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    18e9:	48 89 50 08          	mov    %rdx,0x8(%rax)
    18ed:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    18f2:	48 89 42 08          	mov    %rax,0x8(%rdx)
    18f6:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    18fb:	48 89 50 08          	mov    %rdx,0x8(%rax)
    18ff:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1904:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1908:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    190f:	00 
    1910:	bd 05 00 00 00       	mov    $0x5,%ebp
    1915:	eb 09                	jmp    1920 <phase_6+0xf5>
    1917:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    191b:	83 ed 01             	sub    $0x1,%ebp
    191e:	74 11                	je     1931 <phase_6+0x106>
    1920:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1924:	8b 00                	mov    (%rax),%eax
    1926:	39 03                	cmp    %eax,(%rbx)
    1928:	7d ed                	jge    1917 <phase_6+0xec>
    192a:	e8 84 02 00 00       	call   1bb3 <explode_bomb>
    192f:	eb e6                	jmp    1917 <phase_6+0xec>
    1931:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1936:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    193d:	00 00 
    193f:	75 0d                	jne    194e <phase_6+0x123>
    1941:	48 83 c4 60          	add    $0x60,%rsp
    1945:	5b                   	pop    %rbx
    1946:	5d                   	pop    %rbp
    1947:	41 5c                	pop    %r12
    1949:	41 5d                	pop    %r13
    194b:	41 5e                	pop    %r14
    194d:	c3                   	ret    
    194e:	e8 fd f8 ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001953 <fun7>:
    1953:	f3 0f 1e fa          	endbr64 
    1957:	48 85 ff             	test   %rdi,%rdi
    195a:	74 32                	je     198e <fun7+0x3b>
    195c:	48 83 ec 08          	sub    $0x8,%rsp
    1960:	8b 17                	mov    (%rdi),%edx
    1962:	39 f2                	cmp    %esi,%edx
    1964:	7f 0c                	jg     1972 <fun7+0x1f>
    1966:	b8 00 00 00 00       	mov    $0x0,%eax
    196b:	75 12                	jne    197f <fun7+0x2c>
    196d:	48 83 c4 08          	add    $0x8,%rsp
    1971:	c3                   	ret    
    1972:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1976:	e8 d8 ff ff ff       	call   1953 <fun7>
    197b:	01 c0                	add    %eax,%eax
    197d:	eb ee                	jmp    196d <fun7+0x1a>
    197f:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1983:	e8 cb ff ff ff       	call   1953 <fun7>
    1988:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    198c:	eb df                	jmp    196d <fun7+0x1a>
    198e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1993:	c3                   	ret    

0000000000001994 <secret_phase>:
    1994:	f3 0f 1e fa          	endbr64 
    1998:	53                   	push   %rbx
    1999:	e8 b2 02 00 00       	call   1c50 <read_line>
    199e:	48 89 c7             	mov    %rax,%rdi
    19a1:	ba 0a 00 00 00       	mov    $0xa,%edx
    19a6:	be 00 00 00 00       	mov    $0x0,%esi
    19ab:	e8 30 f9 ff ff       	call   12e0 <strtol@plt>
    19b0:	89 c3                	mov    %eax,%ebx
    19b2:	83 e8 01             	sub    $0x1,%eax
    19b5:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    19ba:	77 25                	ja     19e1 <secret_phase+0x4d>
    19bc:	89 de                	mov    %ebx,%esi
    19be:	48 8d 3d 6b 37 00 00 	lea    0x376b(%rip),%rdi        # 5130 <n1>
    19c5:	e8 89 ff ff ff       	call   1953 <fun7>
    19ca:	85 c0                	test   %eax,%eax
    19cc:	75 1a                	jne    19e8 <secret_phase+0x54>
    19ce:	48 8d 3d 0b 17 00 00 	lea    0x170b(%rip),%rdi        # 30e0 <_IO_stdin_used+0xe0>
    19d5:	e8 46 f8 ff ff       	call   1220 <puts@plt>
    19da:	e8 c5 03 00 00       	call   1da4 <phase_defused>
    19df:	5b                   	pop    %rbx
    19e0:	c3                   	ret    
    19e1:	e8 cd 01 00 00       	call   1bb3 <explode_bomb>
    19e6:	eb d4                	jmp    19bc <secret_phase+0x28>
    19e8:	e8 c6 01 00 00       	call   1bb3 <explode_bomb>
    19ed:	eb df                	jmp    19ce <secret_phase+0x3a>

00000000000019ef <sig_handler>:
    19ef:	f3 0f 1e fa          	endbr64 
    19f3:	50                   	push   %rax
    19f4:	58                   	pop    %rax
    19f5:	48 83 ec 08          	sub    $0x8,%rsp
    19f9:	48 8d 3d 80 17 00 00 	lea    0x1780(%rip),%rdi        # 3180 <array.0+0x40>
    1a00:	e8 1b f8 ff ff       	call   1220 <puts@plt>
    1a05:	bf 03 00 00 00       	mov    $0x3,%edi
    1a0a:	e8 51 f9 ff ff       	call   1360 <sleep@plt>
    1a0f:	48 8d 35 04 19 00 00 	lea    0x1904(%rip),%rsi        # 331a <array.0+0x1da>
    1a16:	bf 01 00 00 00       	mov    $0x1,%edi
    1a1b:	b8 00 00 00 00       	mov    $0x0,%eax
    1a20:	e8 eb f8 ff ff       	call   1310 <__printf_chk@plt>
    1a25:	48 8b 3d 34 3c 00 00 	mov    0x3c34(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    1a2c:	e8 bf f8 ff ff       	call   12f0 <fflush@plt>
    1a31:	bf 01 00 00 00       	mov    $0x1,%edi
    1a36:	e8 25 f9 ff ff       	call   1360 <sleep@plt>
    1a3b:	48 8d 3d e0 18 00 00 	lea    0x18e0(%rip),%rdi        # 3322 <array.0+0x1e2>
    1a42:	e8 d9 f7 ff ff       	call   1220 <puts@plt>
    1a47:	bf 10 00 00 00       	mov    $0x10,%edi
    1a4c:	e8 df f8 ff ff       	call   1330 <exit@plt>

0000000000001a51 <invalid_phase>:
    1a51:	f3 0f 1e fa          	endbr64 
    1a55:	50                   	push   %rax
    1a56:	58                   	pop    %rax
    1a57:	48 83 ec 08          	sub    $0x8,%rsp
    1a5b:	48 89 fa             	mov    %rdi,%rdx
    1a5e:	48 8d 35 c5 18 00 00 	lea    0x18c5(%rip),%rsi        # 332a <array.0+0x1ea>
    1a65:	bf 01 00 00 00       	mov    $0x1,%edi
    1a6a:	b8 00 00 00 00       	mov    $0x0,%eax
    1a6f:	e8 9c f8 ff ff       	call   1310 <__printf_chk@plt>
    1a74:	bf 08 00 00 00       	mov    $0x8,%edi
    1a79:	e8 b2 f8 ff ff       	call   1330 <exit@plt>

0000000000001a7e <string_length>:
    1a7e:	f3 0f 1e fa          	endbr64 
    1a82:	80 3f 00             	cmpb   $0x0,(%rdi)
    1a85:	74 12                	je     1a99 <string_length+0x1b>
    1a87:	b8 00 00 00 00       	mov    $0x0,%eax
    1a8c:	48 83 c7 01          	add    $0x1,%rdi
    1a90:	83 c0 01             	add    $0x1,%eax
    1a93:	80 3f 00             	cmpb   $0x0,(%rdi)
    1a96:	75 f4                	jne    1a8c <string_length+0xe>
    1a98:	c3                   	ret    
    1a99:	b8 00 00 00 00       	mov    $0x0,%eax
    1a9e:	c3                   	ret    

0000000000001a9f <strings_not_equal>:
    1a9f:	f3 0f 1e fa          	endbr64 
    1aa3:	41 54                	push   %r12
    1aa5:	55                   	push   %rbp
    1aa6:	53                   	push   %rbx
    1aa7:	48 89 fb             	mov    %rdi,%rbx
    1aaa:	48 89 f5             	mov    %rsi,%rbp
    1aad:	e8 cc ff ff ff       	call   1a7e <string_length>
    1ab2:	41 89 c4             	mov    %eax,%r12d
    1ab5:	48 89 ef             	mov    %rbp,%rdi
    1ab8:	e8 c1 ff ff ff       	call   1a7e <string_length>
    1abd:	89 c2                	mov    %eax,%edx
    1abf:	b8 01 00 00 00       	mov    $0x1,%eax
    1ac4:	41 39 d4             	cmp    %edx,%r12d
    1ac7:	75 31                	jne    1afa <strings_not_equal+0x5b>
    1ac9:	0f b6 13             	movzbl (%rbx),%edx
    1acc:	84 d2                	test   %dl,%dl
    1ace:	74 1e                	je     1aee <strings_not_equal+0x4f>
    1ad0:	b8 00 00 00 00       	mov    $0x0,%eax
    1ad5:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1ad9:	75 1a                	jne    1af5 <strings_not_equal+0x56>
    1adb:	48 83 c0 01          	add    $0x1,%rax
    1adf:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1ae3:	84 d2                	test   %dl,%dl
    1ae5:	75 ee                	jne    1ad5 <strings_not_equal+0x36>
    1ae7:	b8 00 00 00 00       	mov    $0x0,%eax
    1aec:	eb 0c                	jmp    1afa <strings_not_equal+0x5b>
    1aee:	b8 00 00 00 00       	mov    $0x0,%eax
    1af3:	eb 05                	jmp    1afa <strings_not_equal+0x5b>
    1af5:	b8 01 00 00 00       	mov    $0x1,%eax
    1afa:	5b                   	pop    %rbx
    1afb:	5d                   	pop    %rbp
    1afc:	41 5c                	pop    %r12
    1afe:	c3                   	ret    

0000000000001aff <initialize_bomb>:
    1aff:	f3 0f 1e fa          	endbr64 
    1b03:	48 83 ec 08          	sub    $0x8,%rsp
    1b07:	48 8d 35 e1 fe ff ff 	lea    -0x11f(%rip),%rsi        # 19ef <sig_handler>
    1b0e:	bf 02 00 00 00       	mov    $0x2,%edi
    1b13:	e8 98 f7 ff ff       	call   12b0 <signal@plt>
    1b18:	48 83 c4 08          	add    $0x8,%rsp
    1b1c:	c3                   	ret    

0000000000001b1d <initialize_bomb_solve>:
    1b1d:	f3 0f 1e fa          	endbr64 
    1b21:	c3                   	ret    

0000000000001b22 <blank_line>:
    1b22:	f3 0f 1e fa          	endbr64 
    1b26:	55                   	push   %rbp
    1b27:	53                   	push   %rbx
    1b28:	48 83 ec 08          	sub    $0x8,%rsp
    1b2c:	48 89 fd             	mov    %rdi,%rbp
    1b2f:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1b33:	84 db                	test   %bl,%bl
    1b35:	74 1e                	je     1b55 <blank_line+0x33>
    1b37:	e8 34 f8 ff ff       	call   1370 <__ctype_b_loc@plt>
    1b3c:	48 83 c5 01          	add    $0x1,%rbp
    1b40:	48 0f be db          	movsbq %bl,%rbx
    1b44:	48 8b 00             	mov    (%rax),%rax
    1b47:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1b4c:	75 e1                	jne    1b2f <blank_line+0xd>
    1b4e:	b8 00 00 00 00       	mov    $0x0,%eax
    1b53:	eb 05                	jmp    1b5a <blank_line+0x38>
    1b55:	b8 01 00 00 00       	mov    $0x1,%eax
    1b5a:	48 83 c4 08          	add    $0x8,%rsp
    1b5e:	5b                   	pop    %rbx
    1b5f:	5d                   	pop    %rbp
    1b60:	c3                   	ret    

0000000000001b61 <skip>:
    1b61:	f3 0f 1e fa          	endbr64 
    1b65:	55                   	push   %rbp
    1b66:	53                   	push   %rbx
    1b67:	48 83 ec 08          	sub    $0x8,%rsp
    1b6b:	48 8d 2d 8e 3b 00 00 	lea    0x3b8e(%rip),%rbp        # 5700 <input_strings>
    1b72:	48 63 05 7b 3b 00 00 	movslq 0x3b7b(%rip),%rax        # 56f4 <num_input_strings>
    1b79:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1b7d:	48 c1 e7 04          	shl    $0x4,%rdi
    1b81:	48 01 ef             	add    %rbp,%rdi
    1b84:	48 8b 15 05 3b 00 00 	mov    0x3b05(%rip),%rdx        # 5690 <infile>
    1b8b:	be 50 00 00 00       	mov    $0x50,%esi
    1b90:	e8 fb f6 ff ff       	call   1290 <fgets@plt>
    1b95:	48 89 c3             	mov    %rax,%rbx
    1b98:	48 85 c0             	test   %rax,%rax
    1b9b:	74 0c                	je     1ba9 <skip+0x48>
    1b9d:	48 89 c7             	mov    %rax,%rdi
    1ba0:	e8 7d ff ff ff       	call   1b22 <blank_line>
    1ba5:	85 c0                	test   %eax,%eax
    1ba7:	75 c9                	jne    1b72 <skip+0x11>
    1ba9:	48 89 d8             	mov    %rbx,%rax
    1bac:	48 83 c4 08          	add    $0x8,%rsp
    1bb0:	5b                   	pop    %rbx
    1bb1:	5d                   	pop    %rbp
    1bb2:	c3                   	ret    

0000000000001bb3 <explode_bomb>:
    1bb3:	f3 0f 1e fa          	endbr64 
    1bb7:	50                   	push   %rax
    1bb8:	58                   	pop    %rax
    1bb9:	48 83 ec 08          	sub    $0x8,%rsp
    1bbd:	48 8d 3d 77 17 00 00 	lea    0x1777(%rip),%rdi        # 333b <array.0+0x1fb>
    1bc4:	e8 57 f6 ff ff       	call   1220 <puts@plt>
    1bc9:	8b 15 25 3b 00 00    	mov    0x3b25(%rip),%edx        # 56f4 <num_input_strings>
    1bcf:	48 8d 35 e2 15 00 00 	lea    0x15e2(%rip),%rsi        # 31b8 <array.0+0x78>
    1bd6:	bf 01 00 00 00       	mov    $0x1,%edi
    1bdb:	b8 00 00 00 00       	mov    $0x0,%eax
    1be0:	e8 2b f7 ff ff       	call   1310 <__printf_chk@plt>
    1be5:	8b 15 05 3b 00 00    	mov    0x3b05(%rip),%edx        # 56f0 <score>
    1beb:	48 8d 35 ee 15 00 00 	lea    0x15ee(%rip),%rsi        # 31e0 <array.0+0xa0>
    1bf2:	bf 01 00 00 00       	mov    $0x1,%edi
    1bf7:	b8 00 00 00 00       	mov    $0x0,%eax
    1bfc:	e8 0f f7 ff ff       	call   1310 <__printf_chk@plt>
    1c01:	bf 08 00 00 00       	mov    $0x8,%edi
    1c06:	e8 25 f7 ff ff       	call   1330 <exit@plt>

0000000000001c0b <read_six_numbers>:
    1c0b:	f3 0f 1e fa          	endbr64 
    1c0f:	48 83 ec 08          	sub    $0x8,%rsp
    1c13:	48 89 f2             	mov    %rsi,%rdx
    1c16:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1c1a:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1c1e:	50                   	push   %rax
    1c1f:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1c23:	50                   	push   %rax
    1c24:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1c28:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1c2c:	48 8d 35 11 17 00 00 	lea    0x1711(%rip),%rsi        # 3344 <array.0+0x204>
    1c33:	b8 00 00 00 00       	mov    $0x0,%eax
    1c38:	e8 c3 f6 ff ff       	call   1300 <__isoc99_sscanf@plt>
    1c3d:	48 83 c4 10          	add    $0x10,%rsp
    1c41:	83 f8 05             	cmp    $0x5,%eax
    1c44:	7e 05                	jle    1c4b <read_six_numbers+0x40>
    1c46:	48 83 c4 08          	add    $0x8,%rsp
    1c4a:	c3                   	ret    
    1c4b:	e8 63 ff ff ff       	call   1bb3 <explode_bomb>

0000000000001c50 <read_line>:
    1c50:	f3 0f 1e fa          	endbr64 
    1c54:	55                   	push   %rbp
    1c55:	53                   	push   %rbx
    1c56:	48 83 ec 08          	sub    $0x8,%rsp
    1c5a:	b8 00 00 00 00       	mov    $0x0,%eax
    1c5f:	e8 fd fe ff ff       	call   1b61 <skip>
    1c64:	48 85 c0             	test   %rax,%rax
    1c67:	74 5d                	je     1cc6 <read_line+0x76>
    1c69:	8b 2d 85 3a 00 00    	mov    0x3a85(%rip),%ebp        # 56f4 <num_input_strings>
    1c6f:	48 63 c5             	movslq %ebp,%rax
    1c72:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
    1c76:	48 c1 e3 04          	shl    $0x4,%rbx
    1c7a:	48 8d 05 7f 3a 00 00 	lea    0x3a7f(%rip),%rax        # 5700 <input_strings>
    1c81:	48 01 c3             	add    %rax,%rbx
    1c84:	48 89 df             	mov    %rbx,%rdi
    1c87:	e8 b4 f5 ff ff       	call   1240 <strlen@plt>
    1c8c:	83 f8 4e             	cmp    $0x4e,%eax
    1c8f:	0f 8f c5 00 00 00    	jg     1d5a <read_line+0x10a>
    1c95:	83 e8 01             	sub    $0x1,%eax
    1c98:	48 98                	cltq   
    1c9a:	48 63 d5             	movslq %ebp,%rdx
    1c9d:	48 8d 0c 92          	lea    (%rdx,%rdx,4),%rcx
    1ca1:	48 c1 e1 04          	shl    $0x4,%rcx
    1ca5:	48 8d 15 54 3a 00 00 	lea    0x3a54(%rip),%rdx        # 5700 <input_strings>
    1cac:	48 01 ca             	add    %rcx,%rdx
    1caf:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1cb3:	83 c5 01             	add    $0x1,%ebp
    1cb6:	89 2d 38 3a 00 00    	mov    %ebp,0x3a38(%rip)        # 56f4 <num_input_strings>
    1cbc:	48 89 d8             	mov    %rbx,%rax
    1cbf:	48 83 c4 08          	add    $0x8,%rsp
    1cc3:	5b                   	pop    %rbx
    1cc4:	5d                   	pop    %rbp
    1cc5:	c3                   	ret    
    1cc6:	48 8b 05 a3 39 00 00 	mov    0x39a3(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    1ccd:	48 39 05 bc 39 00 00 	cmp    %rax,0x39bc(%rip)        # 5690 <infile>
    1cd4:	74 1b                	je     1cf1 <read_line+0xa1>
    1cd6:	48 8d 3d 97 16 00 00 	lea    0x1697(%rip),%rdi        # 3374 <array.0+0x234>
    1cdd:	e8 0e f5 ff ff       	call   11f0 <getenv@plt>
    1ce2:	48 85 c0             	test   %rax,%rax
    1ce5:	74 3c                	je     1d23 <read_line+0xd3>
    1ce7:	bf 00 00 00 00       	mov    $0x0,%edi
    1cec:	e8 3f f6 ff ff       	call   1330 <exit@plt>
    1cf1:	48 8d 3d 5e 16 00 00 	lea    0x165e(%rip),%rdi        # 3356 <array.0+0x216>
    1cf8:	e8 23 f5 ff ff       	call   1220 <puts@plt>
    1cfd:	8b 15 ed 39 00 00    	mov    0x39ed(%rip),%edx        # 56f0 <score>
    1d03:	48 8d 35 06 15 00 00 	lea    0x1506(%rip),%rsi        # 3210 <array.0+0xd0>
    1d0a:	bf 01 00 00 00       	mov    $0x1,%edi
    1d0f:	b8 00 00 00 00       	mov    $0x0,%eax
    1d14:	e8 f7 f5 ff ff       	call   1310 <__printf_chk@plt>
    1d19:	bf 08 00 00 00       	mov    $0x8,%edi
    1d1e:	e8 0d f6 ff ff       	call   1330 <exit@plt>
    1d23:	48 8b 05 46 39 00 00 	mov    0x3946(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    1d2a:	48 89 05 5f 39 00 00 	mov    %rax,0x395f(%rip)        # 5690 <infile>
    1d31:	b8 00 00 00 00       	mov    $0x0,%eax
    1d36:	e8 26 fe ff ff       	call   1b61 <skip>
    1d3b:	48 85 c0             	test   %rax,%rax
    1d3e:	0f 85 25 ff ff ff    	jne    1c69 <read_line+0x19>
    1d44:	48 8d 3d 0b 16 00 00 	lea    0x160b(%rip),%rdi        # 3356 <array.0+0x216>
    1d4b:	e8 d0 f4 ff ff       	call   1220 <puts@plt>
    1d50:	bf 00 00 00 00       	mov    $0x0,%edi
    1d55:	e8 d6 f5 ff ff       	call   1330 <exit@plt>
    1d5a:	48 8d 3d 1e 16 00 00 	lea    0x161e(%rip),%rdi        # 337f <array.0+0x23f>
    1d61:	e8 ba f4 ff ff       	call   1220 <puts@plt>
    1d66:	8b 05 88 39 00 00    	mov    0x3988(%rip),%eax        # 56f4 <num_input_strings>
    1d6c:	8d 50 01             	lea    0x1(%rax),%edx
    1d6f:	89 15 7f 39 00 00    	mov    %edx,0x397f(%rip)        # 56f4 <num_input_strings>
    1d75:	48 98                	cltq   
    1d77:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1d7b:	48 8d 15 7e 39 00 00 	lea    0x397e(%rip),%rdx        # 5700 <input_strings>
    1d82:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1d89:	75 6e 63 
    1d8c:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1d93:	2a 2a 00 
    1d96:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1d9a:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1d9f:	e8 0f fe ff ff       	call   1bb3 <explode_bomb>

0000000000001da4 <phase_defused>:
    1da4:	f3 0f 1e fa          	endbr64 
    1da8:	48 83 ec 78          	sub    $0x78,%rsp
    1dac:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1db3:	00 00 
    1db5:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1dba:	31 c0                	xor    %eax,%eax
    1dbc:	8b 15 32 39 00 00    	mov    0x3932(%rip),%edx        # 56f4 <num_input_strings>
    1dc2:	83 fa 03             	cmp    $0x3,%edx
    1dc5:	7f 5b                	jg     1e22 <phase_defused+0x7e>
    1dc7:	83 05 22 39 00 00 1e 	addl   $0x1e,0x3922(%rip)        # 56f0 <score>
    1dce:	48 8d 35 c5 15 00 00 	lea    0x15c5(%rip),%rsi        # 339a <array.0+0x25a>
    1dd5:	bf 01 00 00 00       	mov    $0x1,%edi
    1dda:	b8 00 00 00 00       	mov    $0x0,%eax
    1ddf:	e8 2c f5 ff ff       	call   1310 <__printf_chk@plt>
    1de4:	8b 15 06 39 00 00    	mov    0x3906(%rip),%edx        # 56f0 <score>
    1dea:	48 8d 35 1f 14 00 00 	lea    0x141f(%rip),%rsi        # 3210 <array.0+0xd0>
    1df1:	bf 01 00 00 00       	mov    $0x1,%edi
    1df6:	b8 00 00 00 00       	mov    $0x0,%eax
    1dfb:	e8 10 f5 ff ff       	call   1310 <__printf_chk@plt>
    1e00:	83 3d ed 38 00 00 06 	cmpl   $0x6,0x38ed(%rip)        # 56f4 <num_input_strings>
    1e07:	74 27                	je     1e30 <phase_defused+0x8c>
    1e09:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1e0e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1e15:	00 00 
    1e17:	0f 85 9e 00 00 00    	jne    1ebb <phase_defused+0x117>
    1e1d:	48 83 c4 78          	add    $0x78,%rsp
    1e21:	c3                   	ret    
    1e22:	83 fa 04             	cmp    $0x4,%edx
    1e25:	75 a7                	jne    1dce <phase_defused+0x2a>
    1e27:	83 05 c2 38 00 00 0a 	addl   $0xa,0x38c2(%rip)        # 56f0 <score>
    1e2e:	eb 9e                	jmp    1dce <phase_defused+0x2a>
    1e30:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1e35:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1e3a:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1e3f:	48 8d 35 72 15 00 00 	lea    0x1572(%rip),%rsi        # 33b8 <array.0+0x278>
    1e46:	48 8d 3d a3 39 00 00 	lea    0x39a3(%rip),%rdi        # 57f0 <input_strings+0xf0>
    1e4d:	b8 00 00 00 00       	mov    $0x0,%eax
    1e52:	e8 a9 f4 ff ff       	call   1300 <__isoc99_sscanf@plt>
    1e57:	83 f8 03             	cmp    $0x3,%eax
    1e5a:	74 1a                	je     1e76 <phase_defused+0xd2>
    1e5c:	48 8d 3d 8d 14 00 00 	lea    0x148d(%rip),%rdi        # 32f0 <array.0+0x1b0>
    1e63:	e8 b8 f3 ff ff       	call   1220 <puts@plt>
    1e68:	48 8d 3d 59 15 00 00 	lea    0x1559(%rip),%rdi        # 33c8 <array.0+0x288>
    1e6f:	e8 ac f3 ff ff       	call   1220 <puts@plt>
    1e74:	eb 93                	jmp    1e09 <phase_defused+0x65>
    1e76:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1e7b:	48 8d 35 3f 15 00 00 	lea    0x153f(%rip),%rsi        # 33c1 <array.0+0x281>
    1e82:	e8 18 fc ff ff       	call   1a9f <strings_not_equal>
    1e87:	85 c0                	test   %eax,%eax
    1e89:	75 d1                	jne    1e5c <phase_defused+0xb8>
    1e8b:	48 8d 3d a6 13 00 00 	lea    0x13a6(%rip),%rdi        # 3238 <array.0+0xf8>
    1e92:	e8 89 f3 ff ff       	call   1220 <puts@plt>
    1e97:	48 8d 3d c2 13 00 00 	lea    0x13c2(%rip),%rdi        # 3260 <array.0+0x120>
    1e9e:	e8 7d f3 ff ff       	call   1220 <puts@plt>
    1ea3:	b8 00 00 00 00       	mov    $0x0,%eax
    1ea8:	e8 e7 fa ff ff       	call   1994 <secret_phase>
    1ead:	48 8d 3d e4 13 00 00 	lea    0x13e4(%rip),%rdi        # 3298 <array.0+0x158>
    1eb4:	e8 67 f3 ff ff       	call   1220 <puts@plt>
    1eb9:	eb a1                	jmp    1e5c <phase_defused+0xb8>
    1ebb:	e8 90 f3 ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001ec0 <sigalrm_handler>:
    1ec0:	f3 0f 1e fa          	endbr64 
    1ec4:	50                   	push   %rax
    1ec5:	58                   	pop    %rax
    1ec6:	48 83 ec 08          	sub    $0x8,%rsp
    1eca:	b9 00 00 00 00       	mov    $0x0,%ecx
    1ecf:	48 8d 15 6a 15 00 00 	lea    0x156a(%rip),%rdx        # 3440 <array.0+0x300>
    1ed6:	be 01 00 00 00       	mov    $0x1,%esi
    1edb:	48 8b 3d 9e 37 00 00 	mov    0x379e(%rip),%rdi        # 5680 <stderr@GLIBC_2.2.5>
    1ee2:	b8 00 00 00 00       	mov    $0x0,%eax
    1ee7:	e8 64 f4 ff ff       	call   1350 <__fprintf_chk@plt>
    1eec:	bf 01 00 00 00       	mov    $0x1,%edi
    1ef1:	e8 3a f4 ff ff       	call   1330 <exit@plt>

0000000000001ef6 <rio_readlineb>:
    1ef6:	41 56                	push   %r14
    1ef8:	41 55                	push   %r13
    1efa:	41 54                	push   %r12
    1efc:	55                   	push   %rbp
    1efd:	53                   	push   %rbx
    1efe:	49 89 f4             	mov    %rsi,%r12
    1f01:	48 83 fa 01          	cmp    $0x1,%rdx
    1f05:	0f 86 92 00 00 00    	jbe    1f9d <rio_readlineb+0xa7>
    1f0b:	48 89 fb             	mov    %rdi,%rbx
    1f0e:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1f13:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1f19:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1f1d:	eb 56                	jmp    1f75 <rio_readlineb+0x7f>
    1f1f:	e8 dc f2 ff ff       	call   1200 <__errno_location@plt>
    1f24:	83 38 04             	cmpl   $0x4,(%rax)
    1f27:	75 55                	jne    1f7e <rio_readlineb+0x88>
    1f29:	ba 00 20 00 00       	mov    $0x2000,%edx
    1f2e:	48 89 ee             	mov    %rbp,%rsi
    1f31:	8b 3b                	mov    (%rbx),%edi
    1f33:	e8 48 f3 ff ff       	call   1280 <read@plt>
    1f38:	89 c2                	mov    %eax,%edx
    1f3a:	89 43 04             	mov    %eax,0x4(%rbx)
    1f3d:	85 c0                	test   %eax,%eax
    1f3f:	78 de                	js     1f1f <rio_readlineb+0x29>
    1f41:	85 c0                	test   %eax,%eax
    1f43:	74 42                	je     1f87 <rio_readlineb+0x91>
    1f45:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1f49:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1f4d:	0f b6 08             	movzbl (%rax),%ecx
    1f50:	48 83 c0 01          	add    $0x1,%rax
    1f54:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1f58:	83 ea 01             	sub    $0x1,%edx
    1f5b:	89 53 04             	mov    %edx,0x4(%rbx)
    1f5e:	49 83 c4 01          	add    $0x1,%r12
    1f62:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1f67:	80 f9 0a             	cmp    $0xa,%cl
    1f6a:	74 3c                	je     1fa8 <rio_readlineb+0xb2>
    1f6c:	41 83 c5 01          	add    $0x1,%r13d
    1f70:	4d 39 f4             	cmp    %r14,%r12
    1f73:	74 30                	je     1fa5 <rio_readlineb+0xaf>
    1f75:	8b 53 04             	mov    0x4(%rbx),%edx
    1f78:	85 d2                	test   %edx,%edx
    1f7a:	7e ad                	jle    1f29 <rio_readlineb+0x33>
    1f7c:	eb cb                	jmp    1f49 <rio_readlineb+0x53>
    1f7e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f85:	eb 05                	jmp    1f8c <rio_readlineb+0x96>
    1f87:	b8 00 00 00 00       	mov    $0x0,%eax
    1f8c:	85 c0                	test   %eax,%eax
    1f8e:	75 29                	jne    1fb9 <rio_readlineb+0xc3>
    1f90:	b8 00 00 00 00       	mov    $0x0,%eax
    1f95:	41 83 fd 01          	cmp    $0x1,%r13d
    1f99:	75 0d                	jne    1fa8 <rio_readlineb+0xb2>
    1f9b:	eb 13                	jmp    1fb0 <rio_readlineb+0xba>
    1f9d:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1fa3:	eb 03                	jmp    1fa8 <rio_readlineb+0xb2>
    1fa5:	4d 89 f4             	mov    %r14,%r12
    1fa8:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1fad:	49 63 c5             	movslq %r13d,%rax
    1fb0:	5b                   	pop    %rbx
    1fb1:	5d                   	pop    %rbp
    1fb2:	41 5c                	pop    %r12
    1fb4:	41 5d                	pop    %r13
    1fb6:	41 5e                	pop    %r14
    1fb8:	c3                   	ret    
    1fb9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1fc0:	eb ee                	jmp    1fb0 <rio_readlineb+0xba>

0000000000001fc2 <submitr>:
    1fc2:	f3 0f 1e fa          	endbr64 
    1fc6:	41 57                	push   %r15
    1fc8:	41 56                	push   %r14
    1fca:	41 55                	push   %r13
    1fcc:	41 54                	push   %r12
    1fce:	55                   	push   %rbp
    1fcf:	53                   	push   %rbx
    1fd0:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    1fd7:	ff 
    1fd8:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1fdf:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1fe4:	4c 39 dc             	cmp    %r11,%rsp
    1fe7:	75 ef                	jne    1fd8 <submitr+0x16>
    1fe9:	48 83 ec 78          	sub    $0x78,%rsp
    1fed:	49 89 fd             	mov    %rdi,%r13
    1ff0:	89 f5                	mov    %esi,%ebp
    1ff2:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1ff7:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    1ffc:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    2001:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    2006:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    200d:	00 
    200e:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    2015:	00 
    2016:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    201d:	00 00 
    201f:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    2026:	00 
    2027:	31 c0                	xor    %eax,%eax
    2029:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    2030:	00 
    2031:	ba 00 00 00 00       	mov    $0x0,%edx
    2036:	be 01 00 00 00       	mov    $0x1,%esi
    203b:	bf 02 00 00 00       	mov    $0x2,%edi
    2040:	e8 4b f3 ff ff       	call   1390 <socket@plt>
    2045:	85 c0                	test   %eax,%eax
    2047:	0f 88 12 01 00 00    	js     215f <submitr+0x19d>
    204d:	41 89 c4             	mov    %eax,%r12d
    2050:	4c 89 ef             	mov    %r13,%rdi
    2053:	e8 68 f2 ff ff       	call   12c0 <gethostbyname@plt>
    2058:	48 85 c0             	test   %rax,%rax
    205b:	0f 84 4e 01 00 00    	je     21af <submitr+0x1ed>
    2061:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    2066:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    206d:	00 00 
    206f:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    2076:	00 00 
    2078:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    207f:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2083:	48 8b 40 18          	mov    0x18(%rax),%rax
    2087:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    208c:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2091:	48 8b 30             	mov    (%rax),%rsi
    2094:	e8 37 f2 ff ff       	call   12d0 <__memmove_chk@plt>
    2099:	66 c1 c5 08          	rol    $0x8,%bp
    209d:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    20a2:	ba 10 00 00 00       	mov    $0x10,%edx
    20a7:	4c 89 ee             	mov    %r13,%rsi
    20aa:	44 89 e7             	mov    %r12d,%edi
    20ad:	e8 8e f2 ff ff       	call   1340 <connect@plt>
    20b2:	85 c0                	test   %eax,%eax
    20b4:	0f 88 60 01 00 00    	js     221a <submitr+0x258>
    20ba:	48 89 df             	mov    %rbx,%rdi
    20bd:	e8 7e f1 ff ff       	call   1240 <strlen@plt>
    20c2:	48 89 c5             	mov    %rax,%rbp
    20c5:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    20ca:	e8 71 f1 ff ff       	call   1240 <strlen@plt>
    20cf:	49 89 c6             	mov    %rax,%r14
    20d2:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    20d7:	e8 64 f1 ff ff       	call   1240 <strlen@plt>
    20dc:	49 89 c5             	mov    %rax,%r13
    20df:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    20e4:	e8 57 f1 ff ff       	call   1240 <strlen@plt>
    20e9:	48 89 c2             	mov    %rax,%rdx
    20ec:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    20f3:	00 
    20f4:	48 01 d0             	add    %rdx,%rax
    20f7:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    20fc:	48 01 d0             	add    %rdx,%rax
    20ff:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2105:	0f 87 6c 01 00 00    	ja     2277 <submitr+0x2b5>
    210b:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    2112:	00 
    2113:	b9 00 04 00 00       	mov    $0x400,%ecx
    2118:	b8 00 00 00 00       	mov    $0x0,%eax
    211d:	48 89 d7             	mov    %rdx,%rdi
    2120:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2123:	48 89 df             	mov    %rbx,%rdi
    2126:	e8 15 f1 ff ff       	call   1240 <strlen@plt>
    212b:	85 c0                	test   %eax,%eax
    212d:	0f 84 07 05 00 00    	je     263a <submitr+0x678>
    2133:	8d 40 ff             	lea    -0x1(%rax),%eax
    2136:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    213b:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    2142:	00 
    2143:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    214a:	00 
    214b:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    2150:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    2157:	00 20 00 
    215a:	e9 a6 01 00 00       	jmp    2305 <submitr+0x343>
    215f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2166:	3a 20 43 
    2169:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2170:	20 75 6e 
    2173:	49 89 07             	mov    %rax,(%r15)
    2176:	49 89 57 08          	mov    %rdx,0x8(%r15)
    217a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2181:	74 6f 20 
    2184:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    218b:	65 20 73 
    218e:	49 89 47 10          	mov    %rax,0x10(%r15)
    2192:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2196:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    219d:	65 
    219e:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    21a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21aa:	e9 03 03 00 00       	jmp    24b2 <submitr+0x4f0>
    21af:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    21b6:	3a 20 44 
    21b9:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    21c0:	20 75 6e 
    21c3:	49 89 07             	mov    %rax,(%r15)
    21c6:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21ca:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    21d1:	74 6f 20 
    21d4:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    21db:	76 65 20 
    21de:	49 89 47 10          	mov    %rax,0x10(%r15)
    21e2:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21e6:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    21ed:	72 20 61 
    21f0:	49 89 47 20          	mov    %rax,0x20(%r15)
    21f4:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    21fb:	65 
    21fc:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    2203:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    2208:	44 89 e7             	mov    %r12d,%edi
    220b:	e8 60 f0 ff ff       	call   1270 <close@plt>
    2210:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2215:	e9 98 02 00 00       	jmp    24b2 <submitr+0x4f0>
    221a:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2221:	3a 20 55 
    2224:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    222b:	20 74 6f 
    222e:	49 89 07             	mov    %rax,(%r15)
    2231:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2235:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    223c:	65 63 74 
    223f:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2246:	68 65 20 
    2249:	49 89 47 10          	mov    %rax,0x10(%r15)
    224d:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2251:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    2258:	76 
    2259:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2260:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    2265:	44 89 e7             	mov    %r12d,%edi
    2268:	e8 03 f0 ff ff       	call   1270 <close@plt>
    226d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2272:	e9 3b 02 00 00       	jmp    24b2 <submitr+0x4f0>
    2277:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    227e:	3a 20 52 
    2281:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2288:	20 73 74 
    228b:	49 89 07             	mov    %rax,(%r15)
    228e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2292:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2299:	74 6f 6f 
    229c:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    22a3:	65 2e 20 
    22a6:	49 89 47 10          	mov    %rax,0x10(%r15)
    22aa:	49 89 57 18          	mov    %rdx,0x18(%r15)
    22ae:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    22b5:	61 73 65 
    22b8:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    22bf:	49 54 52 
    22c2:	49 89 47 20          	mov    %rax,0x20(%r15)
    22c6:	49 89 57 28          	mov    %rdx,0x28(%r15)
    22ca:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    22d1:	55 46 00 
    22d4:	49 89 47 30          	mov    %rax,0x30(%r15)
    22d8:	44 89 e7             	mov    %r12d,%edi
    22db:	e8 90 ef ff ff       	call   1270 <close@plt>
    22e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22e5:	e9 c8 01 00 00       	jmp    24b2 <submitr+0x4f0>
    22ea:	49 0f a3 c6          	bt     %rax,%r14
    22ee:	73 21                	jae    2311 <submitr+0x34f>
    22f0:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    22f4:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    22f8:	48 83 c3 01          	add    $0x1,%rbx
    22fc:	4c 39 eb             	cmp    %r13,%rbx
    22ff:	0f 84 35 03 00 00    	je     263a <submitr+0x678>
    2305:	44 0f b6 03          	movzbl (%rbx),%r8d
    2309:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    230d:	3c 35                	cmp    $0x35,%al
    230f:	76 d9                	jbe    22ea <submitr+0x328>
    2311:	44 89 c0             	mov    %r8d,%eax
    2314:	83 e0 df             	and    $0xffffffdf,%eax
    2317:	83 e8 41             	sub    $0x41,%eax
    231a:	3c 19                	cmp    $0x19,%al
    231c:	76 d2                	jbe    22f0 <submitr+0x32e>
    231e:	41 80 f8 20          	cmp    $0x20,%r8b
    2322:	74 60                	je     2384 <submitr+0x3c2>
    2324:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2328:	3c 5f                	cmp    $0x5f,%al
    232a:	76 0a                	jbe    2336 <submitr+0x374>
    232c:	41 80 f8 09          	cmp    $0x9,%r8b
    2330:	0f 85 77 02 00 00    	jne    25ad <submitr+0x5eb>
    2336:	45 0f b6 c0          	movzbl %r8b,%r8d
    233a:	48 8d 0d d5 11 00 00 	lea    0x11d5(%rip),%rcx        # 3516 <array.0+0x3d6>
    2341:	ba 08 00 00 00       	mov    $0x8,%edx
    2346:	be 01 00 00 00       	mov    $0x1,%esi
    234b:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    2350:	b8 00 00 00 00       	mov    $0x0,%eax
    2355:	e8 26 f0 ff ff       	call   1380 <__sprintf_chk@plt>
    235a:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    2361:	00 
    2362:	88 45 00             	mov    %al,0x0(%rbp)
    2365:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    236c:	00 
    236d:	88 45 01             	mov    %al,0x1(%rbp)
    2370:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    2377:	00 
    2378:	88 45 02             	mov    %al,0x2(%rbp)
    237b:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    237f:	e9 74 ff ff ff       	jmp    22f8 <submitr+0x336>
    2384:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2388:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    238c:	e9 67 ff ff ff       	jmp    22f8 <submitr+0x336>
    2391:	48 01 c5             	add    %rax,%rbp
    2394:	48 29 c3             	sub    %rax,%rbx
    2397:	0f 84 08 03 00 00    	je     26a5 <submitr+0x6e3>
    239d:	48 89 da             	mov    %rbx,%rdx
    23a0:	48 89 ee             	mov    %rbp,%rsi
    23a3:	44 89 e7             	mov    %r12d,%edi
    23a6:	e8 85 ee ff ff       	call   1230 <write@plt>
    23ab:	48 85 c0             	test   %rax,%rax
    23ae:	7f e1                	jg     2391 <submitr+0x3cf>
    23b0:	e8 4b ee ff ff       	call   1200 <__errno_location@plt>
    23b5:	83 38 04             	cmpl   $0x4,(%rax)
    23b8:	0f 85 90 01 00 00    	jne    254e <submitr+0x58c>
    23be:	4c 89 e8             	mov    %r13,%rax
    23c1:	eb ce                	jmp    2391 <submitr+0x3cf>
    23c3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    23ca:	3a 20 43 
    23cd:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    23d4:	20 75 6e 
    23d7:	49 89 07             	mov    %rax,(%r15)
    23da:	49 89 57 08          	mov    %rdx,0x8(%r15)
    23de:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    23e5:	74 6f 20 
    23e8:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    23ef:	66 69 72 
    23f2:	49 89 47 10          	mov    %rax,0x10(%r15)
    23f6:	49 89 57 18          	mov    %rdx,0x18(%r15)
    23fa:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2401:	61 64 65 
    2404:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    240b:	6d 20 73 
    240e:	49 89 47 20          	mov    %rax,0x20(%r15)
    2412:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2416:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    241d:	65 
    241e:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2425:	44 89 e7             	mov    %r12d,%edi
    2428:	e8 43 ee ff ff       	call   1270 <close@plt>
    242d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2432:	eb 7e                	jmp    24b2 <submitr+0x4f0>
    2434:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    243b:	00 
    243c:	48 8d 0d 25 10 00 00 	lea    0x1025(%rip),%rcx        # 3468 <array.0+0x328>
    2443:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    244a:	be 01 00 00 00       	mov    $0x1,%esi
    244f:	4c 89 ff             	mov    %r15,%rdi
    2452:	b8 00 00 00 00       	mov    $0x0,%eax
    2457:	e8 24 ef ff ff       	call   1380 <__sprintf_chk@plt>
    245c:	44 89 e7             	mov    %r12d,%edi
    245f:	e8 0c ee ff ff       	call   1270 <close@plt>
    2464:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2469:	eb 47                	jmp    24b2 <submitr+0x4f0>
    246b:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2472:	00 
    2473:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2478:	ba 00 20 00 00       	mov    $0x2000,%edx
    247d:	e8 74 fa ff ff       	call   1ef6 <rio_readlineb>
    2482:	48 85 c0             	test   %rax,%rax
    2485:	7e 54                	jle    24db <submitr+0x519>
    2487:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    248e:	00 
    248f:	4c 89 ff             	mov    %r15,%rdi
    2492:	e8 79 ed ff ff       	call   1210 <strcpy@plt>
    2497:	44 89 e7             	mov    %r12d,%edi
    249a:	e8 d1 ed ff ff       	call   1270 <close@plt>
    249f:	48 8d 35 8b 10 00 00 	lea    0x108b(%rip),%rsi        # 3531 <array.0+0x3f1>
    24a6:	4c 89 ff             	mov    %r15,%rdi
    24a9:	e8 f2 ed ff ff       	call   12a0 <strcmp@plt>
    24ae:	f7 d8                	neg    %eax
    24b0:	19 c0                	sbb    %eax,%eax
    24b2:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    24b9:	00 
    24ba:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    24c1:	00 00 
    24c3:	0f 85 f8 02 00 00    	jne    27c1 <submitr+0x7ff>
    24c9:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    24d0:	5b                   	pop    %rbx
    24d1:	5d                   	pop    %rbp
    24d2:	41 5c                	pop    %r12
    24d4:	41 5d                	pop    %r13
    24d6:	41 5e                	pop    %r14
    24d8:	41 5f                	pop    %r15
    24da:	c3                   	ret    
    24db:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24e2:	3a 20 43 
    24e5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24ec:	20 75 6e 
    24ef:	49 89 07             	mov    %rax,(%r15)
    24f2:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24f6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24fd:	74 6f 20 
    2500:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2507:	73 74 61 
    250a:	49 89 47 10          	mov    %rax,0x10(%r15)
    250e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2512:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2519:	65 73 73 
    251c:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2523:	72 6f 6d 
    2526:	49 89 47 20          	mov    %rax,0x20(%r15)
    252a:	49 89 57 28          	mov    %rdx,0x28(%r15)
    252e:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2535:	65 72 00 
    2538:	49 89 47 30          	mov    %rax,0x30(%r15)
    253c:	44 89 e7             	mov    %r12d,%edi
    253f:	e8 2c ed ff ff       	call   1270 <close@plt>
    2544:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2549:	e9 64 ff ff ff       	jmp    24b2 <submitr+0x4f0>
    254e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2555:	3a 20 43 
    2558:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    255f:	20 75 6e 
    2562:	49 89 07             	mov    %rax,(%r15)
    2565:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2569:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2570:	74 6f 20 
    2573:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    257a:	20 74 6f 
    257d:	49 89 47 10          	mov    %rax,0x10(%r15)
    2581:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2585:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    258c:	73 65 72 
    258f:	49 89 47 20          	mov    %rax,0x20(%r15)
    2593:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    259a:	00 
    259b:	44 89 e7             	mov    %r12d,%edi
    259e:	e8 cd ec ff ff       	call   1270 <close@plt>
    25a3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25a8:	e9 05 ff ff ff       	jmp    24b2 <submitr+0x4f0>
    25ad:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    25b4:	3a 20 52 
    25b7:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    25be:	20 73 74 
    25c1:	49 89 07             	mov    %rax,(%r15)
    25c4:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25c8:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    25cf:	63 6f 6e 
    25d2:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    25d9:	20 61 6e 
    25dc:	49 89 47 10          	mov    %rax,0x10(%r15)
    25e0:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25e4:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    25eb:	67 61 6c 
    25ee:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    25f5:	6e 70 72 
    25f8:	49 89 47 20          	mov    %rax,0x20(%r15)
    25fc:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2600:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2607:	6c 65 20 
    260a:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2611:	63 74 65 
    2614:	49 89 47 30          	mov    %rax,0x30(%r15)
    2618:	49 89 57 38          	mov    %rdx,0x38(%r15)
    261c:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2623:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2628:	44 89 e7             	mov    %r12d,%edi
    262b:	e8 40 ec ff ff       	call   1270 <close@plt>
    2630:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2635:	e9 78 fe ff ff       	jmp    24b2 <submitr+0x4f0>
    263a:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    2641:	00 
    2642:	48 83 ec 08          	sub    $0x8,%rsp
    2646:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    264d:	00 
    264e:	50                   	push   %rax
    264f:	ff 74 24 28          	push   0x28(%rsp)
    2653:	ff 74 24 38          	push   0x38(%rsp)
    2657:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    265c:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    2661:	48 8d 0d 30 0e 00 00 	lea    0xe30(%rip),%rcx        # 3498 <array.0+0x358>
    2668:	ba 00 20 00 00       	mov    $0x2000,%edx
    266d:	be 01 00 00 00       	mov    $0x1,%esi
    2672:	48 89 df             	mov    %rbx,%rdi
    2675:	b8 00 00 00 00       	mov    $0x0,%eax
    267a:	e8 01 ed ff ff       	call   1380 <__sprintf_chk@plt>
    267f:	48 83 c4 20          	add    $0x20,%rsp
    2683:	48 89 df             	mov    %rbx,%rdi
    2686:	e8 b5 eb ff ff       	call   1240 <strlen@plt>
    268b:	48 89 c3             	mov    %rax,%rbx
    268e:	48 8d ac 24 60 20 00 	lea    0x2060(%rsp),%rbp
    2695:	00 
    2696:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    269c:	48 85 c0             	test   %rax,%rax
    269f:	0f 85 f8 fc ff ff    	jne    239d <submitr+0x3db>
    26a5:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    26aa:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    26b1:	00 
    26b2:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    26b7:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    26bc:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    26c1:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    26c8:	00 
    26c9:	ba 00 20 00 00       	mov    $0x2000,%edx
    26ce:	e8 23 f8 ff ff       	call   1ef6 <rio_readlineb>
    26d3:	48 85 c0             	test   %rax,%rax
    26d6:	0f 8e e7 fc ff ff    	jle    23c3 <submitr+0x401>
    26dc:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    26e1:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    26e8:	00 
    26e9:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    26f0:	00 
    26f1:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    26f8:	00 
    26f9:	48 8d 35 1d 0e 00 00 	lea    0xe1d(%rip),%rsi        # 351d <array.0+0x3dd>
    2700:	b8 00 00 00 00       	mov    $0x0,%eax
    2705:	e8 f6 eb ff ff       	call   1300 <__isoc99_sscanf@plt>
    270a:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    270f:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2716:	0f 85 18 fd ff ff    	jne    2434 <submitr+0x472>
    271c:	48 8d 1d 0b 0e 00 00 	lea    0xe0b(%rip),%rbx        # 352e <array.0+0x3ee>
    2723:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    272a:	00 
    272b:	48 89 de             	mov    %rbx,%rsi
    272e:	e8 6d eb ff ff       	call   12a0 <strcmp@plt>
    2733:	85 c0                	test   %eax,%eax
    2735:	0f 84 30 fd ff ff    	je     246b <submitr+0x4a9>
    273b:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2742:	00 
    2743:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2748:	ba 00 20 00 00       	mov    $0x2000,%edx
    274d:	e8 a4 f7 ff ff       	call   1ef6 <rio_readlineb>
    2752:	48 85 c0             	test   %rax,%rax
    2755:	7f cc                	jg     2723 <submitr+0x761>
    2757:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    275e:	3a 20 43 
    2761:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2768:	20 75 6e 
    276b:	49 89 07             	mov    %rax,(%r15)
    276e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2772:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2779:	74 6f 20 
    277c:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2783:	68 65 61 
    2786:	49 89 47 10          	mov    %rax,0x10(%r15)
    278a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    278e:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2795:	66 72 6f 
    2798:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    279f:	76 65 72 
    27a2:	49 89 47 20          	mov    %rax,0x20(%r15)
    27a6:	49 89 57 28          	mov    %rdx,0x28(%r15)
    27aa:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    27af:	44 89 e7             	mov    %r12d,%edi
    27b2:	e8 b9 ea ff ff       	call   1270 <close@plt>
    27b7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27bc:	e9 f1 fc ff ff       	jmp    24b2 <submitr+0x4f0>
    27c1:	e8 8a ea ff ff       	call   1250 <__stack_chk_fail@plt>

00000000000027c6 <init_timeout>:
    27c6:	f3 0f 1e fa          	endbr64 
    27ca:	85 ff                	test   %edi,%edi
    27cc:	75 01                	jne    27cf <init_timeout+0x9>
    27ce:	c3                   	ret    
    27cf:	53                   	push   %rbx
    27d0:	89 fb                	mov    %edi,%ebx
    27d2:	48 8d 35 e7 f6 ff ff 	lea    -0x919(%rip),%rsi        # 1ec0 <sigalrm_handler>
    27d9:	bf 0e 00 00 00       	mov    $0xe,%edi
    27de:	e8 cd ea ff ff       	call   12b0 <signal@plt>
    27e3:	85 db                	test   %ebx,%ebx
    27e5:	b8 00 00 00 00       	mov    $0x0,%eax
    27ea:	0f 49 c3             	cmovns %ebx,%eax
    27ed:	89 c7                	mov    %eax,%edi
    27ef:	e8 6c ea ff ff       	call   1260 <alarm@plt>
    27f4:	5b                   	pop    %rbx
    27f5:	c3                   	ret    

00000000000027f6 <init_driver>:
    27f6:	f3 0f 1e fa          	endbr64 
    27fa:	41 54                	push   %r12
    27fc:	55                   	push   %rbp
    27fd:	53                   	push   %rbx
    27fe:	48 83 ec 20          	sub    $0x20,%rsp
    2802:	48 89 fd             	mov    %rdi,%rbp
    2805:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    280c:	00 00 
    280e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2813:	31 c0                	xor    %eax,%eax
    2815:	be 01 00 00 00       	mov    $0x1,%esi
    281a:	bf 0d 00 00 00       	mov    $0xd,%edi
    281f:	e8 8c ea ff ff       	call   12b0 <signal@plt>
    2824:	be 01 00 00 00       	mov    $0x1,%esi
    2829:	bf 1d 00 00 00       	mov    $0x1d,%edi
    282e:	e8 7d ea ff ff       	call   12b0 <signal@plt>
    2833:	be 01 00 00 00       	mov    $0x1,%esi
    2838:	bf 1d 00 00 00       	mov    $0x1d,%edi
    283d:	e8 6e ea ff ff       	call   12b0 <signal@plt>
    2842:	ba 00 00 00 00       	mov    $0x0,%edx
    2847:	be 01 00 00 00       	mov    $0x1,%esi
    284c:	bf 02 00 00 00       	mov    $0x2,%edi
    2851:	e8 3a eb ff ff       	call   1390 <socket@plt>
    2856:	85 c0                	test   %eax,%eax
    2858:	0f 88 9c 00 00 00    	js     28fa <init_driver+0x104>
    285e:	89 c3                	mov    %eax,%ebx
    2860:	48 8d 3d cd 0c 00 00 	lea    0xccd(%rip),%rdi        # 3534 <array.0+0x3f4>
    2867:	e8 54 ea ff ff       	call   12c0 <gethostbyname@plt>
    286c:	48 85 c0             	test   %rax,%rax
    286f:	0f 84 d1 00 00 00    	je     2946 <init_driver+0x150>
    2875:	49 89 e4             	mov    %rsp,%r12
    2878:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    287f:	00 
    2880:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2887:	00 00 
    2889:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    288f:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2893:	48 8b 40 18          	mov    0x18(%rax),%rax
    2897:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    289c:	b9 0c 00 00 00       	mov    $0xc,%ecx
    28a1:	48 8b 30             	mov    (%rax),%rsi
    28a4:	e8 27 ea ff ff       	call   12d0 <__memmove_chk@plt>
    28a9:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    28b0:	ba 10 00 00 00       	mov    $0x10,%edx
    28b5:	4c 89 e6             	mov    %r12,%rsi
    28b8:	89 df                	mov    %ebx,%edi
    28ba:	e8 81 ea ff ff       	call   1340 <connect@plt>
    28bf:	85 c0                	test   %eax,%eax
    28c1:	0f 88 e7 00 00 00    	js     29ae <init_driver+0x1b8>
    28c7:	89 df                	mov    %ebx,%edi
    28c9:	e8 a2 e9 ff ff       	call   1270 <close@plt>
    28ce:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    28d4:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    28d8:	b8 00 00 00 00       	mov    $0x0,%eax
    28dd:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    28e2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    28e9:	00 00 
    28eb:	0f 85 f5 00 00 00    	jne    29e6 <init_driver+0x1f0>
    28f1:	48 83 c4 20          	add    $0x20,%rsp
    28f5:	5b                   	pop    %rbx
    28f6:	5d                   	pop    %rbp
    28f7:	41 5c                	pop    %r12
    28f9:	c3                   	ret    
    28fa:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2901:	3a 20 43 
    2904:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    290b:	20 75 6e 
    290e:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2912:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2916:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    291d:	74 6f 20 
    2920:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2927:	65 20 73 
    292a:	48 89 45 10          	mov    %rax,0x10(%rbp)
    292e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2932:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2939:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    293f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2944:	eb 97                	jmp    28dd <init_driver+0xe7>
    2946:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    294d:	3a 20 44 
    2950:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2957:	20 75 6e 
    295a:	48 89 45 00          	mov    %rax,0x0(%rbp)
    295e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2962:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2969:	74 6f 20 
    296c:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2973:	76 65 20 
    2976:	48 89 45 10          	mov    %rax,0x10(%rbp)
    297a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    297e:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2985:	72 20 61 
    2988:	48 89 45 20          	mov    %rax,0x20(%rbp)
    298c:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2993:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2999:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    299d:	89 df                	mov    %ebx,%edi
    299f:	e8 cc e8 ff ff       	call   1270 <close@plt>
    29a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29a9:	e9 2f ff ff ff       	jmp    28dd <init_driver+0xe7>
    29ae:	4c 8d 05 7f 0b 00 00 	lea    0xb7f(%rip),%r8        # 3534 <array.0+0x3f4>
    29b5:	48 8d 0d 34 0b 00 00 	lea    0xb34(%rip),%rcx        # 34f0 <array.0+0x3b0>
    29bc:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    29c3:	be 01 00 00 00       	mov    $0x1,%esi
    29c8:	48 89 ef             	mov    %rbp,%rdi
    29cb:	b8 00 00 00 00       	mov    $0x0,%eax
    29d0:	e8 ab e9 ff ff       	call   1380 <__sprintf_chk@plt>
    29d5:	89 df                	mov    %ebx,%edi
    29d7:	e8 94 e8 ff ff       	call   1270 <close@plt>
    29dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29e1:	e9 f7 fe ff ff       	jmp    28dd <init_driver+0xe7>
    29e6:	e8 65 e8 ff ff       	call   1250 <__stack_chk_fail@plt>

00000000000029eb <driver_post>:
    29eb:	f3 0f 1e fa          	endbr64 
    29ef:	53                   	push   %rbx
    29f0:	4c 89 c3             	mov    %r8,%rbx
    29f3:	85 c9                	test   %ecx,%ecx
    29f5:	75 17                	jne    2a0e <driver_post+0x23>
    29f7:	48 85 ff             	test   %rdi,%rdi
    29fa:	74 05                	je     2a01 <driver_post+0x16>
    29fc:	80 3f 00             	cmpb   $0x0,(%rdi)
    29ff:	75 33                	jne    2a34 <driver_post+0x49>
    2a01:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a06:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a0a:	89 c8                	mov    %ecx,%eax
    2a0c:	5b                   	pop    %rbx
    2a0d:	c3                   	ret    
    2a0e:	48 8d 35 37 0b 00 00 	lea    0xb37(%rip),%rsi        # 354c <array.0+0x40c>
    2a15:	bf 01 00 00 00       	mov    $0x1,%edi
    2a1a:	b8 00 00 00 00       	mov    $0x0,%eax
    2a1f:	e8 ec e8 ff ff       	call   1310 <__printf_chk@plt>
    2a24:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a29:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a2d:	b8 00 00 00 00       	mov    $0x0,%eax
    2a32:	eb d8                	jmp    2a0c <driver_post+0x21>
    2a34:	41 50                	push   %r8
    2a36:	52                   	push   %rdx
    2a37:	4c 8d 0d 25 0b 00 00 	lea    0xb25(%rip),%r9        # 3563 <array.0+0x423>
    2a3e:	49 89 f0             	mov    %rsi,%r8
    2a41:	48 89 f9             	mov    %rdi,%rcx
    2a44:	48 8d 15 20 0b 00 00 	lea    0xb20(%rip),%rdx        # 356b <array.0+0x42b>
    2a4b:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2a50:	48 8d 3d dd 0a 00 00 	lea    0xadd(%rip),%rdi        # 3534 <array.0+0x3f4>
    2a57:	e8 66 f5 ff ff       	call   1fc2 <submitr>
    2a5c:	48 83 c4 10          	add    $0x10,%rsp
    2a60:	eb aa                	jmp    2a0c <driver_post+0x21>

Disassembly of section .fini:

0000000000002a64 <_fini>:
    2a64:	f3 0f 1e fa          	endbr64 
    2a68:	48 83 ec 08          	sub    $0x8,%rsp
    2a6c:	48 83 c4 08          	add    $0x8,%rsp
    2a70:	c3                   	ret    
