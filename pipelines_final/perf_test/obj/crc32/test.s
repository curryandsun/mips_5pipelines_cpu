
obj/crc32/main.elf:     file format elf32-tradlittlemips
obj/crc32/main.elf


Disassembly of section .text:

bfc00000 <_ftext>:
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:51
bfc00000:	3c0a0040 	lui	t2,0x40
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:52
bfc00004:	408a6000 	mtc0	t2,c0_sr
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:53
bfc00008:	40806800 	mtc0	zero,c0_cause
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:54
bfc0000c:	3c1d8000 	lui	sp,0x8000
bfc00010:	27bd474c 	addiu	sp,sp,18252
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:55
bfc00014:	3c1c8001 	lui	gp,0x8001
bfc00018:	279c8770 	addiu	gp,gp,-30864
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:57
bfc0001c:	041100dc 	bal	bfc00390 <shell>
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:58
bfc00020:	00000000 	nop

bfc00024 <exit>:
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:61
bfc00024:	340900ff 	li	t1,0xff
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:64
bfc00028:	3c018000 	lui	at,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:65
bfc0002c:	a0297ffc 	sb	t1,32764(at)
	...
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:68
bfc00380:	0ff0056a 	jal	bfc015a8 <exception>
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:69
bfc00384:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:70
bfc00388:	0bf00009 	j	bfc00024 <exit>
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:71
bfc0038c:	00000000 	nop

bfc00390 <shell>:
shell():
bfc00390:	27bdffe0 	addiu	sp,sp,-32
bfc00394:	afbf001c 	sw	ra,28(sp)
bfc00398:	afb20018 	sw	s2,24(sp)
bfc0039c:	afb10014 	sw	s1,20(sp)
bfc003a0:	0ff00529 	jal	bfc014a4 <get_count>
bfc003a4:	afb00010 	sw	s0,16(sp)
bfc003a8:	0ff00210 	jal	bfc00840 <crc32>
bfc003ac:	00409021 	move	s2,v0
bfc003b0:	0ff00529 	jal	bfc014a4 <get_count>
bfc003b4:	00408021 	move	s0,v0
bfc003b8:	12000019 	beqz	s0,bfc00420 <shell+0x90>
bfc003bc:	00408821 	move	s1,v0
bfc003c0:	3c0ebfd0 	lui	t6,0xbfd0
bfc003c4:	35c9f000 	ori	t1,t6,0xf000
bfc003c8:	3c0f8000 	lui	t7,0x8000
bfc003cc:	35cdf008 	ori	t5,t6,0xf008
bfc003d0:	35cbf004 	ori	t3,t6,0xf004
bfc003d4:	240c0001 	li	t4,1
bfc003d8:	240a0002 	li	t2,2
bfc003dc:	adac0000 	sw	t4,0(t5)
bfc003e0:	25e40014 	addiu	a0,t7,20
bfc003e4:	ad6a0000 	sw	t2,0(t3)
bfc003e8:	0ff003f2 	jal	bfc00fc8 <puts>
bfc003ec:	ad200000 	sw	zero,0(t1)
bfc003f0:	0232c023 	subu	t8,s1,s2
bfc003f4:	8fbf001c 	lw	ra,28(sp)
bfc003f8:	3c12bfd0 	lui	s2,0xbfd0
bfc003fc:	3651f010 	ori	s1,s2,0xf010
bfc00400:	ae380000 	sw	t8,0(s1)
bfc00404:	8fb20018 	lw	s2,24(sp)
bfc00408:	8fb10014 	lw	s1,20(sp)
bfc0040c:	8fb00010 	lw	s0,16(sp)
bfc00410:	03e00008 	jr	ra
bfc00414:	27bd0020 	addiu	sp,sp,32
	...
bfc00420:	3c08bfd0 	lui	t0,0xbfd0
bfc00424:	24050001 	li	a1,1
bfc00428:	3507f000 	ori	a3,t0,0xf000
bfc0042c:	3506f008 	ori	a2,t0,0xf008
bfc00430:	3503f004 	ori	v1,t0,0xf004
bfc00434:	3402ffff 	li	v0,0xffff
bfc00438:	3c048000 	lui	a0,0x8000
bfc0043c:	ac650000 	sw	a1,0(v1)
bfc00440:	24840000 	addiu	a0,a0,0
bfc00444:	ace20000 	sw	v0,0(a3)
bfc00448:	0ff003f2 	jal	bfc00fc8 <puts>
bfc0044c:	acc50000 	sw	a1,0(a2)
bfc00450:	0232c023 	subu	t8,s1,s2
bfc00454:	8fbf001c 	lw	ra,28(sp)
bfc00458:	3c12bfd0 	lui	s2,0xbfd0
bfc0045c:	3651f010 	ori	s1,s2,0xf010
bfc00460:	ae380000 	sw	t8,0(s1)
bfc00464:	8fb20018 	lw	s2,24(sp)
bfc00468:	8fb10014 	lw	s1,20(sp)
bfc0046c:	8fb00010 	lw	s0,16(sp)
bfc00470:	03e00008 	jr	ra
bfc00474:	27bd0020 	addiu	sp,sp,32
	...

bfc00480 <updateCRC32>:
updateCRC32():
bfc00480:	00a44826 	xor	t1,a1,a0
bfc00484:	312800ff 	andi	t0,t1,0xff
bfc00488:	3c078000 	lui	a3,0x8000
bfc0048c:	00081880 	sll	v1,t0,0x2
bfc00490:	24e60060 	addiu	a2,a3,96
bfc00494:	00662021 	addu	a0,v1,a2
bfc00498:	8c820000 	lw	v0,0(a0)
bfc0049c:	00052a02 	srl	a1,a1,0x8
bfc004a0:	03e00008 	jr	ra
bfc004a4:	00a21026 	xor	v0,a1,v0
	...

bfc004b0 <crc32buf>:
crc32buf():
bfc004b0:	10a0005b 	beqz	a1,bfc00620 <crc32buf+0x170>
bfc004b4:	00805021 	move	t2,a0
bfc004b8:	90890000 	lbu	t1,0(a0)
bfc004bc:	3c0c8000 	lui	t4,0x8000
bfc004c0:	00095880 	sll	t3,t1,0x2
bfc004c4:	396803fc 	xori	t0,t3,0x3fc
bfc004c8:	25890060 	addiu	t1,t4,96
bfc004cc:	01093821 	addu	a3,t0,t1
bfc004d0:	8ce40000 	lw	a0,0(a3)
bfc004d4:	24a3ffff 	addiu	v1,a1,-1
bfc004d8:	2406ffff 	li	a2,-1
bfc004dc:	00604021 	move	t0,v1
bfc004e0:	00061202 	srl	v0,a2,0x8
bfc004e4:	00823026 	xor	a2,a0,v0
bfc004e8:	30630003 	andi	v1,v1,0x3
bfc004ec:	11000049 	beqz	t0,bfc00614 <crc32buf+0x164>
bfc004f0:	25470001 	addiu	a3,t2,1
bfc004f4:	10600024 	beqz	v1,bfc00588 <crc32buf+0xd8>
bfc004f8:	24180001 	li	t8,1
bfc004fc:	10780017 	beq	v1,t8,bfc0055c <crc32buf+0xac>
bfc00500:	24190002 	li	t9,2
bfc00504:	1079000b 	beq	v1,t9,bfc00534 <crc32buf+0x84>
bfc00508:	00061a02 	srl	v1,a2,0x8
bfc0050c:	91440001 	lbu	a0,1(t2)
bfc00510:	00000000 	nop
bfc00514:	00c45826 	xor	t3,a2,a0
bfc00518:	316600ff 	andi	a2,t3,0xff
bfc0051c:	00061080 	sll	v0,a2,0x2
bfc00520:	00494021 	addu	t0,v0,t1
bfc00524:	8d070000 	lw	a3,0(t0)
bfc00528:	24a8fffe 	addiu	t0,a1,-2
bfc0052c:	00e33026 	xor	a2,a3,v1
bfc00530:	25470002 	addiu	a3,t2,2
bfc00534:	90f80000 	lbu	t8,0(a3)
bfc00538:	00065202 	srl	t2,a2,0x8
bfc0053c:	00d87826 	xor	t7,a2,t8
bfc00540:	31e500ff 	andi	a1,t7,0xff
bfc00544:	00057080 	sll	t6,a1,0x2
bfc00548:	01c96821 	addu	t5,t6,t1
bfc0054c:	8dac0000 	lw	t4,0(t5)
bfc00550:	2508ffff 	addiu	t0,t0,-1
bfc00554:	018a3026 	xor	a2,t4,t2
bfc00558:	24e70001 	addiu	a3,a3,1
bfc0055c:	90ec0000 	lbu	t4,0(a3)
bfc00560:	00061a02 	srl	v1,a2,0x8
bfc00564:	00cc2026 	xor	a0,a2,t4
bfc00568:	308b00ff 	andi	t3,a0,0xff
bfc0056c:	000b3080 	sll	a2,t3,0x2
bfc00570:	00c91021 	addu	v0,a2,t1
bfc00574:	8c590000 	lw	t9,0(v0)
bfc00578:	2508ffff 	addiu	t0,t0,-1
bfc0057c:	03233026 	xor	a2,t9,v1
bfc00580:	11000024 	beqz	t0,bfc00614 <crc32buf+0x164>
bfc00584:	24e70001 	addiu	a3,a3,1
bfc00588:	90ef0000 	lbu	t7,0(a3)
bfc0058c:	00066202 	srl	t4,a2,0x8
bfc00590:	00cf2826 	xor	a1,a2,t7
bfc00594:	30ae00ff 	andi	t6,a1,0xff
bfc00598:	000e6880 	sll	t5,t6,0x2
bfc0059c:	01a95021 	addu	t2,t5,t1
bfc005a0:	8d440000 	lw	a0,0(t2)
bfc005a4:	90eb0001 	lbu	t3,1(a3)
bfc005a8:	008cc026 	xor	t8,a0,t4
bfc005ac:	030b3026 	xor	a2,t8,t3
bfc005b0:	30c300ff 	andi	v1,a2,0xff
bfc005b4:	00031080 	sll	v0,v1,0x2
bfc005b8:	0049c821 	addu	t9,v0,t1
bfc005bc:	8f250000 	lw	a1,0(t9)
bfc005c0:	00187a02 	srl	t7,t8,0x8
bfc005c4:	90ee0002 	lbu	t6,2(a3)
bfc005c8:	00af3026 	xor	a2,a1,t7
bfc005cc:	00ce6826 	xor	t5,a2,t6
bfc005d0:	31aa00ff 	andi	t2,t5,0xff
bfc005d4:	000a6080 	sll	t4,t2,0x2
bfc005d8:	01895821 	addu	t3,t4,t1
bfc005dc:	8d630000 	lw	v1,0(t3)
bfc005e0:	00062202 	srl	a0,a2,0x8
bfc005e4:	90e20003 	lbu	v0,3(a3)
bfc005e8:	00646826 	xor	t5,v1,a0
bfc005ec:	01a2c826 	xor	t9,t5,v0
bfc005f0:	333800ff 	andi	t8,t9,0xff
bfc005f4:	00187880 	sll	t7,t8,0x2
bfc005f8:	01e97021 	addu	t6,t7,t1
bfc005fc:	8dca0000 	lw	t2,0(t6)
bfc00600:	000d2a02 	srl	a1,t5,0x8
bfc00604:	2508fffc 	addiu	t0,t0,-4
bfc00608:	01453026 	xor	a2,t2,a1
bfc0060c:	1500ffde 	bnez	t0,bfc00588 <crc32buf+0xd8>
bfc00610:	24e70004 	addiu	a3,a3,4
bfc00614:	03e00008 	jr	ra
bfc00618:	00061027 	nor	v0,zero,a2
bfc0061c:	00000000 	nop
bfc00620:	03e00008 	jr	ra
bfc00624:	00001021 	move	v0,zero
	...

bfc00630 <crc32file>:
crc32file():
bfc00630:	8f848010 	lw	a0,-32752(gp)
bfc00634:	27bdffc8 	addiu	sp,sp,-56
bfc00638:	acc00000 	sw	zero,0(a2)
bfc0063c:	afbf0034 	sw	ra,52(sp)
bfc00640:	afb70030 	sw	s7,48(sp)
bfc00644:	afb6002c 	sw	s6,44(sp)
bfc00648:	afb50028 	sw	s5,40(sp)
bfc0064c:	afb40024 	sw	s4,36(sp)
bfc00650:	afb30020 	sw	s3,32(sp)
bfc00654:	afb2001c 	sw	s2,28(sp)
bfc00658:	afb10018 	sw	s1,24(sp)
bfc0065c:	00c09021 	move	s2,a2
bfc00660:	afb00014 	sw	s0,20(sp)
bfc00664:	0ff00290 	jal	bfc00a40 <fopen>
bfc00668:	00a0b821 	move	s7,a1
bfc0066c:	3c058000 	lui	a1,0x8000
bfc00670:	24a40028 	addiu	a0,a1,40
bfc00674:	0ff003f2 	jal	bfc00fc8 <puts>
bfc00678:	00409821 	move	s3,v0
bfc0067c:	8e640000 	lw	a0,0(s3)
bfc00680:	0ff00440 	jal	bfc01100 <strlen>
bfc00684:	2414ffff 	li	s4,-1
bfc00688:	3c048000 	lui	a0,0x8000
bfc0068c:	24840030 	addiu	a0,a0,48
bfc00690:	0ff0032c 	jal	bfc00cb0 <printf>
bfc00694:	00402821 	move	a1,v0
bfc00698:	3c038000 	lui	v1,0x8000
bfc0069c:	3c028000 	lui	v0,0x8000
bfc006a0:	02602021 	move	a0,s3
bfc006a4:	2475003c 	addiu	s5,v1,60
bfc006a8:	0ff002ad 	jal	bfc00ab4 <getc>
bfc006ac:	24560060 	addiu	s6,v0,96
bfc006b0:	2410ffff 	li	s0,-1
bfc006b4:	00408821 	move	s1,v0
bfc006b8:	10540049 	beq	v0,s4,bfc007e0 <crc32file+0x1b0>
bfc006bc:	02a02021 	move	a0,s5
bfc006c0:	8e4d0000 	lw	t5,0(s2)
bfc006c4:	00000000 	nop
bfc006c8:	25ac0001 	addiu	t4,t5,1
bfc006cc:	01802821 	move	a1,t4
bfc006d0:	0ff0032c 	jal	bfc00cb0 <printf>
bfc006d4:	ae4c0000 	sw	t4,0(s2)
bfc006d8:	02115826 	xor	t3,s0,s1
bfc006dc:	316a00ff 	andi	t2,t3,0xff
bfc006e0:	000a4880 	sll	t1,t2,0x2
bfc006e4:	01364021 	addu	t0,t1,s6
bfc006e8:	8d070000 	lw	a3,0(t0)
bfc006ec:	00103202 	srl	a2,s0,0x8
bfc006f0:	02602021 	move	a0,s3
bfc006f4:	0ff002ad 	jal	bfc00ab4 <getc>
bfc006f8:	00e68026 	xor	s0,a3,a2
bfc006fc:	00408821 	move	s1,v0
bfc00700:	10540037 	beq	v0,s4,bfc007e0 <crc32file+0x1b0>
bfc00704:	02a02021 	move	a0,s5
bfc00708:	8e460000 	lw	a2,0(s2)
bfc0070c:	00000000 	nop
bfc00710:	24df0001 	addiu	ra,a2,1
bfc00714:	03e02821 	move	a1,ra
bfc00718:	ae5f0000 	sw	ra,0(s2)
bfc0071c:	0ff0032c 	jal	bfc00cb0 <printf>
bfc00720:	00000000 	nop
bfc00724:	02112826 	xor	a1,s0,s1
bfc00728:	30a400ff 	andi	a0,a1,0xff
bfc0072c:	00041880 	sll	v1,a0,0x2
bfc00730:	00761021 	addu	v0,v1,s6
bfc00734:	8c590000 	lw	t9,0(v0)
bfc00738:	0010c202 	srl	t8,s0,0x8
bfc0073c:	02602021 	move	a0,s3
bfc00740:	0ff002ad 	jal	bfc00ab4 <getc>
bfc00744:	03388026 	xor	s0,t9,t8
bfc00748:	00408821 	move	s1,v0
bfc0074c:	10540024 	beq	v0,s4,bfc007e0 <crc32file+0x1b0>
bfc00750:	02a02021 	move	a0,s5
bfc00754:	8e4e0000 	lw	t6,0(s2)
bfc00758:	00000000 	nop
bfc0075c:	25cd0001 	addiu	t5,t6,1
bfc00760:	01a02821 	move	a1,t5
bfc00764:	0ff0032c 	jal	bfc00cb0 <printf>
bfc00768:	ae4d0000 	sw	t5,0(s2)
bfc0076c:	02116026 	xor	t4,s0,s1
bfc00770:	318b00ff 	andi	t3,t4,0xff
bfc00774:	000b5080 	sll	t2,t3,0x2
bfc00778:	01564821 	addu	t1,t2,s6
bfc0077c:	8d280000 	lw	t0,0(t1)
bfc00780:	00103a02 	srl	a3,s0,0x8
bfc00784:	02602021 	move	a0,s3
bfc00788:	0ff002ad 	jal	bfc00ab4 <getc>
bfc0078c:	01078026 	xor	s0,t0,a3
bfc00790:	00408821 	move	s1,v0
bfc00794:	10540012 	beq	v0,s4,bfc007e0 <crc32file+0x1b0>
bfc00798:	02a02021 	move	a0,s5
bfc0079c:	8e450000 	lw	a1,0(s2)
bfc007a0:	00000000 	nop
bfc007a4:	24a50001 	addiu	a1,a1,1
bfc007a8:	0ff0032c 	jal	bfc00cb0 <printf>
bfc007ac:	ae450000 	sw	a1,0(s2)
bfc007b0:	02111826 	xor	v1,s0,s1
bfc007b4:	306200ff 	andi	v0,v1,0xff
bfc007b8:	0002c880 	sll	t9,v0,0x2
bfc007bc:	0336c021 	addu	t8,t9,s6
bfc007c0:	8f110000 	lw	s1,0(t8)
bfc007c4:	00107a02 	srl	t7,s0,0x8
bfc007c8:	02602021 	move	a0,s3
bfc007cc:	0ff002ad 	jal	bfc00ab4 <getc>
bfc007d0:	022f8026 	xor	s0,s1,t7
bfc007d4:	00408821 	move	s1,v0
bfc007d8:	1454ffb9 	bne	v0,s4,bfc006c0 <crc32file+0x90>
bfc007dc:	02a02021 	move	a0,s5
bfc007e0:	3c118000 	lui	s1,0x8000
bfc007e4:	26240044 	addiu	a0,s1,68
bfc007e8:	0ff0032c 	jal	bfc00cb0 <printf>
bfc007ec:	2405ffff 	li	a1,-1
bfc007f0:	3c0f8000 	lui	t7,0x8000
bfc007f4:	0ff003f2 	jal	bfc00fc8 <puts>
bfc007f8:	25e40048 	addiu	a0,t7,72
bfc007fc:	0ff002a1 	jal	bfc00a84 <fclose>
bfc00800:	02602021 	move	a0,s3
bfc00804:	8fbf0034 	lw	ra,52(sp)
bfc00808:	00107027 	nor	t6,zero,s0
bfc0080c:	aeee0000 	sw	t6,0(s7)
bfc00810:	00001021 	move	v0,zero
bfc00814:	8fb70030 	lw	s7,48(sp)
bfc00818:	8fb6002c 	lw	s6,44(sp)
bfc0081c:	8fb50028 	lw	s5,40(sp)
bfc00820:	8fb40024 	lw	s4,36(sp)
bfc00824:	8fb30020 	lw	s3,32(sp)
bfc00828:	8fb2001c 	lw	s2,28(sp)
bfc0082c:	8fb10018 	lw	s1,24(sp)
bfc00830:	8fb00014 	lw	s0,20(sp)
bfc00834:	03e00008 	jr	ra
bfc00838:	27bd0038 	addiu	sp,sp,56
bfc0083c:	00000000 	nop

bfc00840 <crc32>:
crc32():
bfc00840:	8f848010 	lw	a0,-32752(gp)
bfc00844:	27bdffc8 	addiu	sp,sp,-56
bfc00848:	afbf0034 	sw	ra,52(sp)
bfc0084c:	afb70030 	sw	s7,48(sp)
bfc00850:	afb6002c 	sw	s6,44(sp)
bfc00854:	afb50028 	sw	s5,40(sp)
bfc00858:	afb30020 	sw	s3,32(sp)
bfc0085c:	afb2001c 	sw	s2,28(sp)
bfc00860:	afb10018 	sw	s1,24(sp)
bfc00864:	afb00014 	sw	s0,20(sp)
bfc00868:	0ff00290 	jal	bfc00a40 <fopen>
bfc0086c:	afb40024 	sw	s4,36(sp)
bfc00870:	3c058000 	lui	a1,0x8000
bfc00874:	24a40028 	addiu	a0,a1,40
bfc00878:	0ff003f2 	jal	bfc00fc8 <puts>
bfc0087c:	00409821 	move	s3,v0
bfc00880:	8e640000 	lw	a0,0(s3)
bfc00884:	0ff00440 	jal	bfc01100 <strlen>
bfc00888:	2415ffff 	li	s5,-1
bfc0088c:	3c048000 	lui	a0,0x8000
bfc00890:	24840030 	addiu	a0,a0,48
bfc00894:	0ff0032c 	jal	bfc00cb0 <printf>
bfc00898:	00402821 	move	a1,v0
bfc0089c:	3c038000 	lui	v1,0x8000
bfc008a0:	3c028000 	lui	v0,0x8000
bfc008a4:	02602021 	move	a0,s3
bfc008a8:	2476003c 	addiu	s6,v1,60
bfc008ac:	0ff002ad 	jal	bfc00ab4 <getc>
bfc008b0:	24570060 	addiu	s7,v0,96
bfc008b4:	2411ffff 	li	s1,-1
bfc008b8:	00009021 	move	s2,zero
bfc008bc:	00408021 	move	s0,v0
bfc008c0:	1055003e 	beq	v0,s5,bfc009bc <crc32+0x17c>
bfc008c4:	02c02021 	move	a0,s6
bfc008c8:	26520001 	addiu	s2,s2,1
bfc008cc:	0ff0032c 	jal	bfc00cb0 <printf>
bfc008d0:	02402821 	move	a1,s2
bfc008d4:	02305826 	xor	t3,s1,s0
bfc008d8:	316a00ff 	andi	t2,t3,0xff
bfc008dc:	000a4880 	sll	t1,t2,0x2
bfc008e0:	01374021 	addu	t0,t1,s7
bfc008e4:	8d070000 	lw	a3,0(t0)
bfc008e8:	00113202 	srl	a2,s1,0x8
bfc008ec:	02602021 	move	a0,s3
bfc008f0:	0ff002ad 	jal	bfc00ab4 <getc>
bfc008f4:	00e68826 	xor	s1,a3,a2
bfc008f8:	00408021 	move	s0,v0
bfc008fc:	02c02021 	move	a0,s6
bfc00900:	1055002e 	beq	v0,s5,bfc009bc <crc32+0x17c>
bfc00904:	0240a021 	move	s4,s2
bfc00908:	26520001 	addiu	s2,s2,1
bfc0090c:	0ff0032c 	jal	bfc00cb0 <printf>
bfc00910:	02402821 	move	a1,s2
bfc00914:	02302826 	xor	a1,s1,s0
bfc00918:	30a400ff 	andi	a0,a1,0xff
bfc0091c:	00041880 	sll	v1,a0,0x2
bfc00920:	00771021 	addu	v0,v1,s7
bfc00924:	8c590000 	lw	t9,0(v0)
bfc00928:	0011c202 	srl	t8,s1,0x8
bfc0092c:	02602021 	move	a0,s3
bfc00930:	0ff002ad 	jal	bfc00ab4 <getc>
bfc00934:	03388826 	xor	s1,t9,t8
bfc00938:	00408021 	move	s0,v0
bfc0093c:	1055001f 	beq	v0,s5,bfc009bc <crc32+0x17c>
bfc00940:	02c02021 	move	a0,s6
bfc00944:	26920002 	addiu	s2,s4,2
bfc00948:	0ff0032c 	jal	bfc00cb0 <printf>
bfc0094c:	02402821 	move	a1,s2
bfc00950:	02305826 	xor	t3,s1,s0
bfc00954:	316a00ff 	andi	t2,t3,0xff
bfc00958:	000a4880 	sll	t1,t2,0x2
bfc0095c:	01374021 	addu	t0,t1,s7
bfc00960:	8d070000 	lw	a3,0(t0)
bfc00964:	00113202 	srl	a2,s1,0x8
bfc00968:	02602021 	move	a0,s3
bfc0096c:	0ff002ad 	jal	bfc00ab4 <getc>
bfc00970:	00e68826 	xor	s1,a3,a2
bfc00974:	00408021 	move	s0,v0
bfc00978:	10550010 	beq	v0,s5,bfc009bc <crc32+0x17c>
bfc0097c:	02c02021 	move	a0,s6
bfc00980:	26920003 	addiu	s2,s4,3
bfc00984:	02402821 	move	a1,s2
bfc00988:	0ff0032c 	jal	bfc00cb0 <printf>
bfc0098c:	0230a026 	xor	s4,s1,s0
bfc00990:	328f00ff 	andi	t7,s4,0xff
bfc00994:	000f7080 	sll	t6,t7,0x2
bfc00998:	01d76821 	addu	t5,t6,s7
bfc0099c:	8dac0000 	lw	t4,0(t5)
bfc009a0:	00118202 	srl	s0,s1,0x8
bfc009a4:	02602021 	move	a0,s3
bfc009a8:	0ff002ad 	jal	bfc00ab4 <getc>
bfc009ac:	01908826 	xor	s1,t4,s0
bfc009b0:	00408021 	move	s0,v0
bfc009b4:	1455ffc4 	bne	v0,s5,bfc008c8 <crc32+0x88>
bfc009b8:	02c02021 	move	a0,s6
bfc009bc:	3c148000 	lui	s4,0x8000
bfc009c0:	2405ffff 	li	a1,-1
bfc009c4:	0ff0032c 	jal	bfc00cb0 <printf>
bfc009c8:	26840044 	addiu	a0,s4,68
bfc009cc:	3c0f8000 	lui	t7,0x8000
bfc009d0:	0ff003f2 	jal	bfc00fc8 <puts>
bfc009d4:	25e40048 	addiu	a0,t7,72
bfc009d8:	0ff002a1 	jal	bfc00a84 <fclose>
bfc009dc:	02602021 	move	a0,s3
bfc009e0:	00119827 	nor	s3,zero,s1
bfc009e4:	3c0e8000 	lui	t6,0x8000
bfc009e8:	02403021 	move	a2,s2
bfc009ec:	02602821 	move	a1,s3
bfc009f0:	0ff0032c 	jal	bfc00cb0 <printf>
bfc009f4:	25c4004c 	addiu	a0,t6,76
bfc009f8:	3c0d66bd 	lui	t5,0x66bd
bfc009fc:	35ac7c8b 	ori	t4,t5,0x7c8b
bfc00a00:	8fbf0034 	lw	ra,52(sp)
bfc00a04:	026c8021 	addu	s0,s3,t4
bfc00a08:	0010102b 	sltu	v0,zero,s0
bfc00a0c:	8fb70030 	lw	s7,48(sp)
bfc00a10:	8fb6002c 	lw	s6,44(sp)
bfc00a14:	8fb50028 	lw	s5,40(sp)
bfc00a18:	8fb40024 	lw	s4,36(sp)
bfc00a1c:	8fb30020 	lw	s3,32(sp)
bfc00a20:	8fb2001c 	lw	s2,28(sp)
bfc00a24:	8fb10018 	lw	s1,24(sp)
bfc00a28:	8fb00014 	lw	s0,20(sp)
bfc00a2c:	03e00008 	jr	ra
bfc00a30:	27bd0038 	addiu	sp,sp,56
	...

bfc00a40 <fopen>:
fopen():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:20
bfc00a40:	3c028000 	lui	v0,0x8000
bfc00a44:	24470790 	addiu	a3,v0,1936
bfc00a48:	00e02821 	move	a1,a3
bfc00a4c:	00001821 	move	v1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:22
bfc00a50:	2406000a 	li	a2,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:23
bfc00a54:	8ca20000 	lw	v0,0(a1)
bfc00a58:	00000000 	nop
bfc00a5c:	10400004 	beqz	v0,bfc00a70 <fopen+0x30>
bfc00a60:	24a50008 	addiu	a1,a1,8
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:22
bfc00a64:	24630001 	addiu	v1,v1,1
bfc00a68:	1466fffa 	bne	v1,a2,bfc00a54 <fopen+0x14>
bfc00a6c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:27
bfc00a70:	000310c0 	sll	v0,v1,0x3
bfc00a74:	00471021 	addu	v0,v0,a3
bfc00a78:	ac440000 	sw	a0,0(v0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:30
bfc00a7c:	03e00008 	jr	ra
bfc00a80:	ac400004 	sw	zero,4(v0)

bfc00a84 <fclose>:
fclose():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:61
bfc00a84:	3c028000 	lui	v0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:63
bfc00a88:	3c038000 	lui	v1,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:61
bfc00a8c:	24420790 	addiu	v0,v0,1936
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:63
bfc00a90:	246307e0 	addiu	v1,v1,2016
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:64
bfc00a94:	10820004 	beq	a0,v0,bfc00aa8 <fclose+0x24>
bfc00a98:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:65
bfc00a9c:	24420008 	addiu	v0,v0,8
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:63
bfc00aa0:	1443fffc 	bne	v0,v1,bfc00a94 <fclose+0x10>
bfc00aa4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:69
bfc00aa8:	ac800004 	sw	zero,4(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:70
bfc00aac:	03e00008 	jr	ra
bfc00ab0:	ac800000 	sw	zero,0(a0)

bfc00ab4 <getc>:
getc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:88
bfc00ab4:	27bdffe0 	addiu	sp,sp,-32
bfc00ab8:	afb00014 	sw	s0,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:89
bfc00abc:	8c900000 	lw	s0,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:88
bfc00ac0:	afb10018 	sw	s1,24(sp)
bfc00ac4:	00808821 	move	s1,a0
bfc00ac8:	afbf001c 	sw	ra,28(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:90
bfc00acc:	0ff00440 	jal	bfc01100 <strlen>
bfc00ad0:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:91
bfc00ad4:	8e230004 	lw	v1,4(s1)
bfc00ad8:	00000000 	nop
bfc00adc:	10620009 	beq	v1,v0,bfc00b04 <getc+0x50>
bfc00ae0:	02031021 	addu	v0,s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:97
bfc00ae4:	8fbf001c 	lw	ra,28(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:94
bfc00ae8:	24630001 	addiu	v1,v1,1
bfc00aec:	90420000 	lbu	v0,0(v0)
bfc00af0:	ae230004 	sw	v1,4(s1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:97
bfc00af4:	8fb00014 	lw	s0,20(sp)
bfc00af8:	8fb10018 	lw	s1,24(sp)
bfc00afc:	03e00008 	jr	ra
bfc00b00:	27bd0020 	addiu	sp,sp,32
bfc00b04:	8fbf001c 	lw	ra,28(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:91
bfc00b08:	2402ffff 	li	v0,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:97
bfc00b0c:	8fb10018 	lw	s1,24(sp)
bfc00b10:	8fb00014 	lw	s0,20(sp)
bfc00b14:	03e00008 	jr	ra
bfc00b18:	27bd0020 	addiu	sp,sp,32

bfc00b1c <fgets>:
fgets():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:72
bfc00b1c:	27bdffe0 	addiu	sp,sp,-32
bfc00b20:	afb10014 	sw	s1,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:73
bfc00b24:	8cd10000 	lw	s1,0(a2)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:72
bfc00b28:	afb20018 	sw	s2,24(sp)
bfc00b2c:	afb00010 	sw	s0,16(sp)
bfc00b30:	00809021 	move	s2,a0
bfc00b34:	00c08021 	move	s0,a2
bfc00b38:	afbf001c 	sw	ra,28(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:74
bfc00b3c:	0ff00440 	jal	bfc01100 <strlen>
bfc00b40:	02202021 	move	a0,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:77
bfc00b44:	8e040004 	lw	a0,4(s0)
bfc00b48:	00000000 	nop
bfc00b4c:	10820012 	beq	a0,v0,bfc00b98 <fgets+0x7c>
bfc00b50:	00403821 	move	a3,v0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:78
bfc00b54:	02242821 	addu	a1,s1,a0
bfc00b58:	80a30000 	lb	v1,0(a1)
bfc00b5c:	2402000a 	li	v0,10
bfc00b60:	10620014 	beq	v1,v0,bfc00bb4 <fgets+0x98>
bfc00b64:	00003021 	move	a2,zero
bfc00b68:	0bf002e0 	j	bfc00b80 <fgets+0x64>
bfc00b6c:	2408000a 	li	t0,10
bfc00b70:	80a30001 	lb	v1,1(a1)
bfc00b74:	00000000 	nop
bfc00b78:	1068000e 	beq	v1,t0,bfc00bb4 <fgets+0x98>
bfc00b7c:	24a50001 	addiu	a1,a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:82
bfc00b80:	02461021 	addu	v0,s2,a2
bfc00b84:	24840001 	addiu	a0,a0,1
bfc00b88:	a0430000 	sb	v1,0(v0)
bfc00b8c:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:77
bfc00b90:	14e4fff7 	bne	a3,a0,bfc00b70 <fgets+0x54>
bfc00b94:	ae040004 	sw	a0,4(s0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:86
bfc00b98:	8fbf001c 	lw	ra,28(sp)
bfc00b9c:	00001021 	move	v0,zero
bfc00ba0:	8fb20018 	lw	s2,24(sp)
bfc00ba4:	8fb10014 	lw	s1,20(sp)
bfc00ba8:	8fb00010 	lw	s0,16(sp)
bfc00bac:	03e00008 	jr	ra
bfc00bb0:	27bd0020 	addiu	sp,sp,32
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:79
bfc00bb4:	02461021 	addu	v0,s2,a2
bfc00bb8:	2403000a 	li	v1,10
bfc00bbc:	a0430000 	sb	v1,0(v0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:86
bfc00bc0:	8fbf001c 	lw	ra,28(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:79
bfc00bc4:	24840001 	addiu	a0,a0,1
bfc00bc8:	ae040004 	sw	a0,4(s0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:86
bfc00bcc:	00001021 	move	v0,zero
bfc00bd0:	8fb20018 	lw	s2,24(sp)
bfc00bd4:	8fb10014 	lw	s1,20(sp)
bfc00bd8:	8fb00010 	lw	s0,16(sp)
bfc00bdc:	03e00008 	jr	ra
bfc00be0:	27bd0020 	addiu	sp,sp,32

bfc00be4 <fread>:
fread():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:32
bfc00be4:	27bdffd8 	addiu	sp,sp,-40
bfc00be8:	afb10014 	sw	s1,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:34
bfc00bec:	8cf10000 	lw	s1,0(a3)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:32
bfc00bf0:	afb40020 	sw	s4,32(sp)
bfc00bf4:	0080a021 	move	s4,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:35
bfc00bf8:	02202021 	move	a0,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:32
bfc00bfc:	afb3001c 	sw	s3,28(sp)
bfc00c00:	afb20018 	sw	s2,24(sp)
bfc00c04:	afb00010 	sw	s0,16(sp)
bfc00c08:	afbf0024 	sw	ra,36(sp)
bfc00c0c:	00e08021 	move	s0,a3
bfc00c10:	00a09821 	move	s3,a1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:35
bfc00c14:	0ff00440 	jal	bfc01100 <strlen>
bfc00c18:	00c09021 	move	s2,a2
bfc00c1c:	00404821 	move	t1,v0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:36
bfc00c20:	8e020004 	lw	v0,4(s0)
bfc00c24:	00000000 	nop
bfc00c28:	10490017 	beq	v0,t1,bfc00c88 <fread+0xa4>
bfc00c2c:	02530018 	mult	s2,s3
bfc00c30:	00003821 	move	a3,zero
bfc00c34:	00002812 	mflo	a1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:40
bfc00c38:	00e5102b 	sltu	v0,a3,a1
bfc00c3c:	10400009 	beqz	v0,bfc00c64 <fread+0x80>
bfc00c40:	02874021 	addu	t0,s4,a3
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:41
bfc00c44:	8e020004 	lw	v0,4(s0)
bfc00c48:	24e70001 	addiu	a3,a3,1
bfc00c4c:	02221821 	addu	v1,s1,v0
bfc00c50:	90640000 	lbu	a0,0(v1)
bfc00c54:	24420001 	addiu	v0,v0,1
bfc00c58:	a1040000 	sb	a0,0(t0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:42
bfc00c5c:	1522fff6 	bne	t1,v0,bfc00c38 <fread+0x54>
bfc00c60:	ae020004 	sw	v0,4(s0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:47
bfc00c64:	8fbf0024 	lw	ra,36(sp)
bfc00c68:	00e01021 	move	v0,a3
bfc00c6c:	8fb40020 	lw	s4,32(sp)
bfc00c70:	8fb3001c 	lw	s3,28(sp)
bfc00c74:	8fb20018 	lw	s2,24(sp)
bfc00c78:	8fb10014 	lw	s1,20(sp)
bfc00c7c:	8fb00010 	lw	s0,16(sp)
bfc00c80:	03e00008 	jr	ra
bfc00c84:	27bd0028 	addiu	sp,sp,40
bfc00c88:	8fbf0024 	lw	ra,36(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:36
bfc00c8c:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:47
bfc00c90:	00e01021 	move	v0,a3
bfc00c94:	8fb40020 	lw	s4,32(sp)
bfc00c98:	8fb3001c 	lw	s3,28(sp)
bfc00c9c:	8fb20018 	lw	s2,24(sp)
bfc00ca0:	8fb10014 	lw	s1,20(sp)
bfc00ca4:	8fb00010 	lw	s0,16(sp)
bfc00ca8:	03e00008 	jr	ra
bfc00cac:	27bd0028 	addiu	sp,sp,40

bfc00cb0 <printf>:
printf():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc00cb0:	27bdffc8 	addiu	sp,sp,-56
bfc00cb4:	afb30024 	sw	s3,36(sp)
bfc00cb8:	afbf0034 	sw	ra,52(sp)
bfc00cbc:	afb60030 	sw	s6,48(sp)
bfc00cc0:	afb5002c 	sw	s5,44(sp)
bfc00cc4:	afb40028 	sw	s4,40(sp)
bfc00cc8:	afb20020 	sw	s2,32(sp)
bfc00ccc:	afb1001c 	sw	s1,28(sp)
bfc00cd0:	afb00018 	sw	s0,24(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00cd4:	80900000 	lb	s0,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc00cd8:	00809821 	move	s3,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:8
bfc00cdc:	27a4003c 	addiu	a0,sp,60
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc00ce0:	afa5003c 	sw	a1,60(sp)
bfc00ce4:	afa60040 	sw	a2,64(sp)
bfc00ce8:	afa70044 	sw	a3,68(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00cec:	12000013 	beqz	s0,bfc00d3c <printf+0x8c>
bfc00cf0:	afa40010 	sw	a0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00cf4:	3c028000 	lui	v0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc00cf8:	00809021 	move	s2,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00cfc:	245605b0 	addiu	s6,v0,1456
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc00d00:	00008821 	move	s1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00d04:	24140025 	li	s4,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00d08:	2415000a 	li	s5,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00d0c:	12140016 	beq	s0,s4,bfc00d68 <printf+0xb8>
bfc00d10:	02711021 	addu	v0,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00d14:	1215002f 	beq	s0,s5,bfc00dd4 <printf+0x124>
bfc00d18:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:80
bfc00d1c:	0ff003c5 	jal	bfc00f14 <putchar>
bfc00d20:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00d24:	26310001 	addiu	s1,s1,1
bfc00d28:	02711021 	addu	v0,s3,s1
bfc00d2c:	80500000 	lb	s0,0(v0)
bfc00d30:	00000000 	nop
bfc00d34:	1600fff5 	bnez	s0,bfc00d0c <printf+0x5c>
bfc00d38:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:84
bfc00d3c:	8fbf0034 	lw	ra,52(sp)
bfc00d40:	00001021 	move	v0,zero
bfc00d44:	8fb60030 	lw	s6,48(sp)
bfc00d48:	8fb5002c 	lw	s5,44(sp)
bfc00d4c:	8fb40028 	lw	s4,40(sp)
bfc00d50:	8fb30024 	lw	s3,36(sp)
bfc00d54:	8fb20020 	lw	s2,32(sp)
bfc00d58:	8fb1001c 	lw	s1,28(sp)
bfc00d5c:	8fb00018 	lw	s0,24(sp)
bfc00d60:	03e00008 	jr	ra
bfc00d64:	27bd0038 	addiu	sp,sp,56
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00d68:	80440001 	lb	a0,1(v0)
bfc00d6c:	24050001 	li	a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00d70:	2482ffdb 	addiu	v0,a0,-37
bfc00d74:	304200ff 	andi	v0,v0,0xff
bfc00d78:	2c430054 	sltiu	v1,v0,84
bfc00d7c:	14600005 	bnez	v1,bfc00d94 <printf+0xe4>
bfc00d80:	00021080 	sll	v0,v0,0x2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:73
bfc00d84:	0ff003c5 	jal	bfc00f14 <putchar>
bfc00d88:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00d8c:	0bf0034a 	j	bfc00d28 <printf+0x78>
bfc00d90:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00d94:	02c21021 	addu	v0,s6,v0
bfc00d98:	8c430000 	lw	v1,0(v0)
bfc00d9c:	00000000 	nop
bfc00da0:	00600008 	jr	v1
bfc00da4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:65
bfc00da8:	26310001 	addiu	s1,s1,1
bfc00dac:	02711021 	addu	v0,s3,s1
bfc00db0:	80440001 	lb	a0,1(v0)
bfc00db4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00db8:	2482ffcf 	addiu	v0,a0,-49
bfc00dbc:	304200ff 	andi	v0,v0,0xff
bfc00dc0:	2c420009 	sltiu	v0,v0,9
bfc00dc4:	1440003f 	bnez	v0,bfc00ec4 <printf+0x214>
bfc00dc8:	00002821 	move	a1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00dcc:	0bf0035d 	j	bfc00d74 <printf+0xc4>
bfc00dd0:	2482ffdb 	addiu	v0,a0,-37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00dd4:	0ff003c5 	jal	bfc00f14 <putchar>
bfc00dd8:	2404000d 	li	a0,13
bfc00ddc:	0bf00347 	j	bfc00d1c <printf+0x6c>
bfc00de0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:30
bfc00de4:	8e440000 	lw	a0,0(s2)
bfc00de8:	2406000a 	li	a2,10
bfc00dec:	0ff00400 	jal	bfc01000 <printbase>
bfc00df0:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:31
bfc00df4:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:32
bfc00df8:	0bf00349 	j	bfc00d24 <printf+0x74>
bfc00dfc:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:20
bfc00e00:	8e440000 	lw	a0,0(s2)
bfc00e04:	0ff003d0 	jal	bfc00f40 <putstring>
bfc00e08:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:21
bfc00e0c:	0bf00349 	j	bfc00d24 <printf+0x74>
bfc00e10:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:56
bfc00e14:	8e440000 	lw	a0,0(s2)
bfc00e18:	24060010 	li	a2,16
bfc00e1c:	0ff00400 	jal	bfc01000 <printbase>
bfc00e20:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:57
bfc00e24:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:58
bfc00e28:	0bf00349 	j	bfc00d24 <printf+0x74>
bfc00e2c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:45
bfc00e30:	8e440000 	lw	a0,0(s2)
bfc00e34:	24060008 	li	a2,8
bfc00e38:	0ff00400 	jal	bfc01000 <printbase>
bfc00e3c:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:46
bfc00e40:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:47
bfc00e44:	0bf00349 	j	bfc00d24 <printf+0x74>
bfc00e48:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:40
bfc00e4c:	8e440000 	lw	a0,0(s2)
bfc00e50:	2406000a 	li	a2,10
bfc00e54:	0ff00400 	jal	bfc01000 <printbase>
bfc00e58:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:41
bfc00e5c:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:42
bfc00e60:	0bf00349 	j	bfc00d24 <printf+0x74>
bfc00e64:	26310002 	addiu	s1,s1,2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:35
bfc00e68:	8e440000 	lw	a0,0(s2)
bfc00e6c:	2406000a 	li	a2,10
bfc00e70:	0ff00400 	jal	bfc01000 <printbase>
bfc00e74:	24070001 	li	a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:36
bfc00e78:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:37
bfc00e7c:	0bf00349 	j	bfc00d24 <printf+0x74>
bfc00e80:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:25
bfc00e84:	8e440000 	lw	a0,0(s2)
bfc00e88:	0ff003c5 	jal	bfc00f14 <putchar>
bfc00e8c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:26
bfc00e90:	0bf00349 	j	bfc00d24 <printf+0x74>
bfc00e94:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:50
bfc00e98:	8e440000 	lw	a0,0(s2)
bfc00e9c:	24060002 	li	a2,2
bfc00ea0:	0ff00400 	jal	bfc01000 <printbase>
bfc00ea4:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:51
bfc00ea8:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:52
bfc00eac:	0bf00349 	j	bfc00d24 <printf+0x74>
bfc00eb0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:61
bfc00eb4:	0ff003c5 	jal	bfc00f14 <putchar>
bfc00eb8:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:62
bfc00ebc:	0bf00349 	j	bfc00d24 <printf+0x74>
bfc00ec0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00ec4:	02713021 	addu	a2,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00ec8:	000510c0 	sll	v0,a1,0x3
bfc00ecc:	00051840 	sll	v1,a1,0x1
bfc00ed0:	00621821 	addu	v1,v1,v0
bfc00ed4:	00641821 	addu	v1,v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00ed8:	80c40002 	lb	a0,2(a2)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00edc:	2465ffd0 	addiu	a1,v1,-48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00ee0:	2482ffcf 	addiu	v0,a0,-49
bfc00ee4:	304200ff 	andi	v0,v0,0xff
bfc00ee8:	2c420009 	sltiu	v0,v0,9
bfc00eec:	26310001 	addiu	s1,s1,1
bfc00ef0:	1040ff9f 	beqz	v0,bfc00d70 <printf+0xc0>
bfc00ef4:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00ef8:	0bf003b3 	j	bfc00ecc <printf+0x21c>
bfc00efc:	000510c0 	sll	v0,a1,0x3

bfc00f00 <tgt_putchar>:
tgt_putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:9
bfc00f00:	3c018000 	lui	at,0x8000
bfc00f04:	03e00008 	jr	ra
bfc00f08:	a0247ffc 	sb	a0,32764(at)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:18
bfc00f0c:	03e00008 	jr	ra
bfc00f10:	00000000 	nop

bfc00f14 <putchar>:
putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:2
bfc00f14:	27bdffe8 	addiu	sp,sp,-24
bfc00f18:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:3
bfc00f1c:	0ff003c0 	jal	bfc00f00 <tgt_putchar>
bfc00f20:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:5
bfc00f24:	8fbf0014 	lw	ra,20(sp)
bfc00f28:	00001021 	move	v0,zero
bfc00f2c:	03e00008 	jr	ra
bfc00f30:	27bd0018 	addiu	sp,sp,24
	...

bfc00f40 <putstring>:
putstring():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:2
bfc00f40:	27bdffe0 	addiu	sp,sp,-32
bfc00f44:	afb10014 	sw	s1,20(sp)
bfc00f48:	afbf001c 	sw	ra,28(sp)
bfc00f4c:	afb20018 	sw	s2,24(sp)
bfc00f50:	afb00010 	sw	s0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00f54:	80900000 	lb	s0,0(a0)
bfc00f58:	00000000 	nop
bfc00f5c:	12000013 	beqz	s0,bfc00fac <putstring+0x6c>
bfc00f60:	00808821 	move	s1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc00f64:	0bf003e1 	j	bfc00f84 <putstring+0x44>
bfc00f68:	2412000a 	li	s2,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc00f6c:	0ff003c5 	jal	bfc00f14 <putchar>
bfc00f70:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00f74:	82300000 	lb	s0,0(s1)
bfc00f78:	00000000 	nop
bfc00f7c:	1200000b 	beqz	s0,bfc00fac <putstring+0x6c>
bfc00f80:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc00f84:	1612fff9 	bne	s0,s2,bfc00f6c <putstring+0x2c>
bfc00f88:	26310001 	addiu	s1,s1,1
bfc00f8c:	0ff003c5 	jal	bfc00f14 <putchar>
bfc00f90:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc00f94:	0ff003c5 	jal	bfc00f14 <putchar>
bfc00f98:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00f9c:	82300000 	lb	s0,0(s1)
bfc00fa0:	00000000 	nop
bfc00fa4:	1600fff7 	bnez	s0,bfc00f84 <putstring+0x44>
bfc00fa8:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:11
bfc00fac:	8fbf001c 	lw	ra,28(sp)
bfc00fb0:	00001021 	move	v0,zero
bfc00fb4:	8fb20018 	lw	s2,24(sp)
bfc00fb8:	8fb10014 	lw	s1,20(sp)
bfc00fbc:	8fb00010 	lw	s0,16(sp)
bfc00fc0:	03e00008 	jr	ra
bfc00fc4:	27bd0020 	addiu	sp,sp,32

bfc00fc8 <puts>:
puts():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:15
bfc00fc8:	27bdffe8 	addiu	sp,sp,-24
bfc00fcc:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:16
bfc00fd0:	0ff003d0 	jal	bfc00f40 <putstring>
bfc00fd4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:17
bfc00fd8:	0ff003c5 	jal	bfc00f14 <putchar>
bfc00fdc:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:18
bfc00fe0:	0ff003c5 	jal	bfc00f14 <putchar>
bfc00fe4:	2404000a 	li	a0,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:20
bfc00fe8:	8fbf0014 	lw	ra,20(sp)
bfc00fec:	00001021 	move	v0,zero
bfc00ff0:	03e00008 	jr	ra
bfc00ff4:	27bd0018 	addiu	sp,sp,24
	...

bfc01000 <printbase>:
printbase():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc01000:	27bdff98 	addiu	sp,sp,-104
bfc01004:	afb30060 	sw	s3,96(sp)
bfc01008:	afb2005c 	sw	s2,92(sp)
bfc0100c:	afbf0064 	sw	ra,100(sp)
bfc01010:	afb10058 	sw	s1,88(sp)
bfc01014:	afb00054 	sw	s0,84(sp)
bfc01018:	00801821 	move	v1,a0
bfc0101c:	00a09821 	move	s3,a1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:7
bfc01020:	10e00003 	beqz	a3,bfc01030 <printbase+0x30>
bfc01024:	00c09021 	move	s2,a2
bfc01028:	0480002f 	bltz	a0,bfc010e8 <printbase+0xe8>
bfc0102c:	2404002d 	li	a0,45
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:12
bfc01030:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc01034:	1200000c 	beqz	s0,bfc01068 <printbase+0x68>
bfc01038:	00008821 	move	s1,zero
bfc0103c:	27a50010 	addiu	a1,sp,16
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc01040:	16400002 	bnez	s2,bfc0104c <printbase+0x4c>
bfc01044:	0212001b 	divu	zero,s0,s2
bfc01048:	0007000d 	break	0x7
bfc0104c:	00b12021 	addu	a0,a1,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc01050:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc01054:	00001010 	mfhi	v0
bfc01058:	a0820000 	sb	v0,0(a0)
bfc0105c:	00001812 	mflo	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc01060:	1460fff7 	bnez	v1,bfc01040 <printbase+0x40>
bfc01064:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc01068:	0233102a 	slt	v0,s1,s3
bfc0106c:	10400002 	beqz	v0,bfc01078 <printbase+0x78>
bfc01070:	02201821 	move	v1,s1
bfc01074:	02601821 	move	v1,s3
bfc01078:	1060000c 	beqz	v1,bfc010ac <printbase+0xac>
bfc0107c:	2470ffff 	addiu	s0,v1,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc01080:	27a20010 	addiu	v0,sp,16
bfc01084:	00509021 	addu	s2,v0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc01088:	26020001 	addiu	v0,s0,1
bfc0108c:	0222102a 	slt	v0,s1,v0
bfc01090:	1040000e 	beqz	v0,bfc010cc <printbase+0xcc>
bfc01094:	24040030 	li	a0,48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc01098:	02009821 	move	s3,s0
bfc0109c:	0ff003c5 	jal	bfc00f14 <putchar>
bfc010a0:	2610ffff 	addiu	s0,s0,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc010a4:	1660fff8 	bnez	s3,bfc01088 <printbase+0x88>
bfc010a8:	2652ffff 	addiu	s2,s2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:28
bfc010ac:	8fbf0064 	lw	ra,100(sp)
bfc010b0:	00001021 	move	v0,zero
bfc010b4:	8fb30060 	lw	s3,96(sp)
bfc010b8:	8fb2005c 	lw	s2,92(sp)
bfc010bc:	8fb10058 	lw	s1,88(sp)
bfc010c0:	8fb00054 	lw	s0,84(sp)
bfc010c4:	03e00008 	jr	ra
bfc010c8:	27bd0068 	addiu	sp,sp,104
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc010cc:	82440000 	lb	a0,0(s2)
bfc010d0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc010d4:	2882000a 	slti	v0,a0,10
bfc010d8:	14400007 	bnez	v0,bfc010f8 <printbase+0xf8>
bfc010dc:	02009821 	move	s3,s0
bfc010e0:	0bf00427 	j	bfc0109c <printbase+0x9c>
bfc010e4:	24840057 	addiu	a0,a0,87
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:10
bfc010e8:	0ff003c5 	jal	bfc00f14 <putchar>
bfc010ec:	00038023 	negu	s0,v1
bfc010f0:	0bf0040d 	j	bfc01034 <printbase+0x34>
bfc010f4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc010f8:	0bf00426 	j	bfc01098 <printbase+0x98>
bfc010fc:	24840030 	addiu	a0,a0,48

bfc01100 <strlen>:
strlen():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:14
bfc01100:	80820000 	lb	v0,0(a0)
bfc01104:	00000000 	nop
bfc01108:	10400008 	beqz	v0,bfc0112c <strlen+0x2c>
bfc0110c:	00002821 	move	a1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:15
bfc01110:	24a50001 	addiu	a1,a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:14
bfc01114:	00851021 	addu	v0,a0,a1
bfc01118:	80430000 	lb	v1,0(v0)
bfc0111c:	00000000 	nop
bfc01120:	1460fffc 	bnez	v1,bfc01114 <strlen+0x14>
bfc01124:	24a50001 	addiu	a1,a1,1
bfc01128:	24a5ffff 	addiu	a1,a1,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:18
bfc0112c:	03e00008 	jr	ra
bfc01130:	00a01021 	move	v0,a1

bfc01134 <strnlen>:
strnlen():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:36
bfc01134:	10a00010 	beqz	a1,bfc01178 <strnlen+0x44>
bfc01138:	00001821 	move	v1,zero
bfc0113c:	80820000 	lb	v0,0(a0)
bfc01140:	00000000 	nop
bfc01144:	14400009 	bnez	v0,bfc0116c <strnlen+0x38>
bfc01148:	24630001 	addiu	v1,v1,1
bfc0114c:	2463ffff 	addiu	v1,v1,-1
bfc01150:	0bf0045e 	j	bfc01178 <strnlen+0x44>
bfc01154:	00000000 	nop
bfc01158:	80c20000 	lb	v0,0(a2)
bfc0115c:	00000000 	nop
bfc01160:	10400005 	beqz	v0,bfc01178 <strnlen+0x44>
bfc01164:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:37
bfc01168:	24630001 	addiu	v1,v1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:36
bfc0116c:	0065102b 	sltu	v0,v1,a1
bfc01170:	1440fff9 	bnez	v0,bfc01158 <strnlen+0x24>
bfc01174:	00833021 	addu	a2,a0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:40
bfc01178:	03e00008 	jr	ra
bfc0117c:	00601021 	move	v0,v1

bfc01180 <strcpy>:
strcpy():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:55
bfc01180:	00801821 	move	v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:60
bfc01184:	80a20000 	lb	v0,0(a1)
bfc01188:	24a50001 	addiu	a1,a1,1
bfc0118c:	a0620000 	sb	v0,0(v1)
bfc01190:	1440fffc 	bnez	v0,bfc01184 <strcpy+0x4>
bfc01194:	24630001 	addiu	v1,v1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:64
bfc01198:	03e00008 	jr	ra
bfc0119c:	00801021 	move	v0,a0

bfc011a0 <strncpy>:
strncpy():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:79
bfc011a0:	10c00009 	beqz	a2,bfc011c8 <strncpy+0x28>
bfc011a4:	00801821 	move	v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:80
bfc011a8:	80a20000 	lb	v0,0(a1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:83
bfc011ac:	24c6ffff 	addiu	a2,a2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:80
bfc011b0:	a0620000 	sb	v0,0(v1)
bfc011b4:	10400002 	beqz	v0,bfc011c0 <strncpy+0x20>
bfc011b8:	24630001 	addiu	v1,v1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:81
bfc011bc:	24a50001 	addiu	a1,a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:79
bfc011c0:	14c0fff9 	bnez	a2,bfc011a8 <strncpy+0x8>
bfc011c4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:86
bfc011c8:	03e00008 	jr	ra
bfc011cc:	00801021 	move	v0,a0

bfc011d0 <strcmp>:
strcmp():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:108
bfc011d0:	80820000 	lb	v0,0(a0)
bfc011d4:	00000000 	nop
bfc011d8:	14400007 	bnez	v0,bfc011f8 <strcmp+0x28>
bfc011dc:	00000000 	nop
bfc011e0:	0bf00486 	j	bfc01218 <strcmp+0x48>
bfc011e4:	00000000 	nop
bfc011e8:	80820000 	lb	v0,0(a0)
bfc011ec:	00000000 	nop
bfc011f0:	10400009 	beqz	v0,bfc01218 <strcmp+0x48>
bfc011f4:	24a50001 	addiu	a1,a1,1
bfc011f8:	80a30000 	lb	v1,0(a1)
bfc011fc:	00000000 	nop
bfc01200:	1043fff9 	beq	v0,v1,bfc011e8 <strcmp+0x18>
bfc01204:	24840001 	addiu	a0,a0,1
bfc01208:	304400ff 	andi	a0,v0,0xff
bfc0120c:	306200ff 	andi	v0,v1,0xff
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:113
bfc01210:	03e00008 	jr	ra
bfc01214:	00821023 	subu	v0,a0,v0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:108
bfc01218:	80a30000 	lb	v1,0(a1)
bfc0121c:	00002021 	move	a0,zero
bfc01220:	306200ff 	andi	v0,v1,0xff
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:113
bfc01224:	03e00008 	jr	ra
bfc01228:	00821023 	subu	v0,a0,v0

bfc0122c <strncmp>:
strncmp():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:128
bfc0122c:	10c00016 	beqz	a2,bfc01288 <strncmp+0x5c>
bfc01230:	00000000 	nop
bfc01234:	80830000 	lb	v1,0(a0)
bfc01238:	00000000 	nop
bfc0123c:	14600009 	bnez	v1,bfc01264 <strncmp+0x38>
bfc01240:	00000000 	nop
bfc01244:	0bf004a4 	j	bfc01290 <strncmp+0x64>
bfc01248:	00000000 	nop
bfc0124c:	10c0000e 	beqz	a2,bfc01288 <strncmp+0x5c>
bfc01250:	24840001 	addiu	a0,a0,1
bfc01254:	80830000 	lb	v1,0(a0)
bfc01258:	00000000 	nop
bfc0125c:	1060000c 	beqz	v1,bfc01290 <strncmp+0x64>
bfc01260:	24a50001 	addiu	a1,a1,1
bfc01264:	80a20000 	lb	v0,0(a1)
bfc01268:	00000000 	nop
bfc0126c:	1062fff7 	beq	v1,v0,bfc0124c <strncmp+0x20>
bfc01270:	24c6ffff 	addiu	a2,a2,-1
bfc01274:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:131
bfc01278:	306300ff 	andi	v1,v1,0xff
bfc0127c:	304200ff 	andi	v0,v0,0xff
bfc01280:	03e00008 	jr	ra
bfc01284:	00621023 	subu	v0,v1,v0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:132
bfc01288:	03e00008 	jr	ra
bfc0128c:	00001021 	move	v0,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:128
bfc01290:	80a20000 	lb	v0,0(a1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:131
bfc01294:	306300ff 	andi	v1,v1,0xff
bfc01298:	304200ff 	andi	v0,v0,0xff
bfc0129c:	03e00008 	jr	ra
bfc012a0:	00621023 	subu	v0,v1,v0

bfc012a4 <strchr>:
strchr():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:144
bfc012a4:	80830000 	lb	v1,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:143
bfc012a8:	00052e00 	sll	a1,a1,0x18
bfc012ac:	00801021 	move	v0,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:144
bfc012b0:	1060000c 	beqz	v1,bfc012e4 <strchr+0x40>
bfc012b4:	00052e03 	sra	a1,a1,0x18
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:145
bfc012b8:	14650006 	bne	v1,a1,bfc012d4 <strchr+0x30>
bfc012bc:	24420001 	addiu	v0,v0,1
bfc012c0:	03e00008 	jr	ra
bfc012c4:	2442ffff 	addiu	v0,v0,-1
bfc012c8:	10650008 	beq	v1,a1,bfc012ec <strchr+0x48>
bfc012cc:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:148
bfc012d0:	24420001 	addiu	v0,v0,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:144
bfc012d4:	80430000 	lb	v1,0(v0)
bfc012d8:	00000000 	nop
bfc012dc:	1460fffa 	bnez	v1,bfc012c8 <strchr+0x24>
bfc012e0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:151
bfc012e4:	03e00008 	jr	ra
bfc012e8:	00001021 	move	v0,zero
bfc012ec:	03e00008 	jr	ra
bfc012f0:	00000000 	nop

bfc012f4 <strfind>:
strfind():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:164
bfc012f4:	80830000 	lb	v1,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:163
bfc012f8:	00052e00 	sll	a1,a1,0x18
bfc012fc:	00801021 	move	v0,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:164
bfc01300:	1060000c 	beqz	v1,bfc01334 <strfind+0x40>
bfc01304:	00052e03 	sra	a1,a1,0x18
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:165
bfc01308:	14650006 	bne	v1,a1,bfc01324 <strfind+0x30>
bfc0130c:	24420001 	addiu	v0,v0,1
bfc01310:	03e00008 	jr	ra
bfc01314:	2442ffff 	addiu	v0,v0,-1
bfc01318:	10650008 	beq	v1,a1,bfc0133c <strfind+0x48>
bfc0131c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:168
bfc01320:	24420001 	addiu	v0,v0,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:164
bfc01324:	80430000 	lb	v1,0(v0)
bfc01328:	00000000 	nop
bfc0132c:	1460fffa 	bnez	v1,bfc01318 <strfind+0x24>
bfc01330:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:171
bfc01334:	03e00008 	jr	ra
bfc01338:	00000000 	nop
bfc0133c:	03e00008 	jr	ra
bfc01340:	00000000 	nop

bfc01344 <memset>:
memset():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:273
bfc01344:	00052e00 	sll	a1,a1,0x18
bfc01348:	00801021 	move	v0,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:278
bfc0134c:	10c00006 	beqz	a2,bfc01368 <memset+0x24>
bfc01350:	00052e03 	sra	a1,a1,0x18
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:277
bfc01354:	00801821 	move	v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:279
bfc01358:	24c6ffff 	addiu	a2,a2,-1
bfc0135c:	a0650000 	sb	a1,0(v1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:278
bfc01360:	14c0fffd 	bnez	a2,bfc01358 <memset+0x14>
bfc01364:	24630001 	addiu	v1,v1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:283
bfc01368:	03e00008 	jr	ra
bfc0136c:	00000000 	nop

bfc01370 <memcpy>:
memcpy():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:306
bfc01370:	10c00008 	beqz	a2,bfc01394 <memcpy+0x24>
bfc01374:	00804021 	move	t0,a0
bfc01378:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:307
bfc0137c:	00a71021 	addu	v0,a1,a3
bfc01380:	90440000 	lbu	a0,0(v0)
bfc01384:	01071821 	addu	v1,t0,a3
bfc01388:	24e70001 	addiu	a3,a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:306
bfc0138c:	14e6fffb 	bne	a3,a2,bfc0137c <memcpy+0xc>
bfc01390:	a0640000 	sb	a0,0(v1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:311
bfc01394:	03e00008 	jr	ra
bfc01398:	01001021 	move	v0,t0

bfc0139c <memmove>:
memmove():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:329
bfc0139c:	00a4102b 	sltu	v0,a1,a0
bfc013a0:	10400005 	beqz	v0,bfc013b8 <memmove+0x1c>
bfc013a4:	00804021 	move	t0,a0
bfc013a8:	00a62021 	addu	a0,a1,a2
bfc013ac:	0104102b 	sltu	v0,t0,a0
bfc013b0:	1440000b 	bnez	v0,bfc013e0 <memmove+0x44>
bfc013b4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:335
bfc013b8:	10c00007 	beqz	a2,bfc013d8 <memmove+0x3c>
bfc013bc:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:336
bfc013c0:	00a71021 	addu	v0,a1,a3
bfc013c4:	90440000 	lbu	a0,0(v0)
bfc013c8:	01071821 	addu	v1,t0,a3
bfc013cc:	24e70001 	addiu	a3,a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:335
bfc013d0:	14c7fffb 	bne	a2,a3,bfc013c0 <memmove+0x24>
bfc013d4:	a0640000 	sb	a0,0(v1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:341
bfc013d8:	03e00008 	jr	ra
bfc013dc:	01001021 	move	v0,t0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:331
bfc013e0:	10c0fffd 	beqz	a2,bfc013d8 <memmove+0x3c>
bfc013e4:	01061821 	addu	v1,t0,a2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:332
bfc013e8:	2484ffff 	addiu	a0,a0,-1
bfc013ec:	90820000 	lbu	v0,0(a0)
bfc013f0:	2463ffff 	addiu	v1,v1,-1
bfc013f4:	24c6ffff 	addiu	a2,a2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:331
bfc013f8:	14c0fffb 	bnez	a2,bfc013e8 <memmove+0x4c>
bfc013fc:	a0620000 	sb	v0,0(v1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:341
bfc01400:	03e00008 	jr	ra
bfc01404:	01001021 	move	v0,t0

bfc01408 <memcmp>:
memcmp():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:361
bfc01408:	10c00011 	beqz	a2,bfc01450 <memcmp+0x48>
bfc0140c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:362
bfc01410:	80830000 	lb	v1,0(a0)
bfc01414:	80a20000 	lb	v0,0(a1)
bfc01418:	00000000 	nop
bfc0141c:	1462000e 	bne	v1,v0,bfc01458 <memcmp+0x50>
bfc01420:	24c6ffff 	addiu	a2,a2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:361
bfc01424:	0bf00510 	j	bfc01440 <memcmp+0x38>
bfc01428:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:362
bfc0142c:	80630001 	lb	v1,1(v1)
bfc01430:	80420001 	lb	v0,1(v0)
bfc01434:	00000000 	nop
bfc01438:	14620007 	bne	v1,v0,bfc01458 <memcmp+0x50>
bfc0143c:	24c6ffff 	addiu	a2,a2,-1
bfc01440:	00871821 	addu	v1,a0,a3
bfc01444:	00a71021 	addu	v0,a1,a3
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:361
bfc01448:	14c0fff8 	bnez	a2,bfc0142c <memcmp+0x24>
bfc0144c:	24e70001 	addiu	a3,a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:368
bfc01450:	03e00008 	jr	ra
bfc01454:	00001021 	move	v0,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:363
bfc01458:	306300ff 	andi	v1,v1,0xff
bfc0145c:	304200ff 	andi	v0,v0,0xff
bfc01460:	03e00008 	jr	ra
bfc01464:	00621023 	subu	v0,v1,v0

bfc01468 <bzero>:
memset():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:278
bfc01468:	10a00005 	beqz	a1,bfc01480 <bzero+0x18>
bfc0146c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:279
bfc01470:	24a5ffff 	addiu	a1,a1,-1
bfc01474:	a0800000 	sb	zero,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:278
bfc01478:	14a0fffd 	bnez	a1,bfc01470 <bzero+0x8>
bfc0147c:	24840001 	addiu	a0,a0,1
bfc01480:	03e00008 	jr	ra
bfc01484:	00000000 	nop
	...

bfc01490 <_get_count>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:15
bfc01490:	3c01bfd0 	lui	at,0xbfd0
bfc01494:	3421e000 	ori	at,at,0xe000
bfc01498:	8c220000 	lw	v0,0(at)
bfc0149c:	03e00008 	jr	ra
bfc014a0:	00000000 	nop

bfc014a4 <get_count>:
get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:20
bfc014a4:	3c01bfd0 	lui	at,0xbfd0
bfc014a8:	3421e000 	ori	at,at,0xe000
bfc014ac:	8c220000 	lw	v0,0(at)
bfc014b0:	03e00008 	jr	ra
bfc014b4:	00000000 	nop

bfc014b8 <get_clock>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc014b8:	3c01bfd0 	lui	at,0xbfd0
bfc014bc:	3421e000 	ori	at,at,0xe000
bfc014c0:	8c220000 	lw	v0,0(at)
get_clock():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:39
bfc014c4:	03e00008 	jr	ra
bfc014c8:	00021040 	sll	v0,v0,0x1

bfc014cc <get_ns>:
get_ns():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:45
bfc014cc:	40024800 	mfc0	v0,$9
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:51
bfc014d0:	03e00008 	jr	ra
bfc014d4:	00021040 	sll	v0,v0,0x1

bfc014d8 <clock_gettime>:
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:23
bfc014d8:	27bdffe8 	addiu	sp,sp,-24
bfc014dc:	afbf0014 	sw	ra,20(sp)
bfc014e0:	00a04821 	move	t1,a1
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc014e4:	3c01bfd0 	lui	at,0xbfd0
bfc014e8:	3421e000 	ori	at,at,0xe000
bfc014ec:	8c230000 	lw	v1,0(at)
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc014f0:	240203e8 	li	v0,1000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc014f4:	14400002 	bnez	v0,bfc01500 <clock_gettime+0x28>
bfc014f8:	0062001b 	divu	zero,v1,v0
bfc014fc:	0007000d 	break	0x7
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc01500:	00031840 	sll	v1,v1,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc01504:	3c073b9a 	lui	a3,0x3b9a
bfc01508:	34e7ca00 	ori	a3,a3,0xca00
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc0150c:	3c048000 	lui	a0,0x8000
bfc01510:	24840700 	addiu	a0,a0,1792
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc01514:	00003012 	mflo	a2
bfc01518:	00063040 	sll	a2,a2,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc0151c:	14400002 	bnez	v0,bfc01528 <clock_gettime+0x50>
bfc01520:	0062001b 	divu	zero,v1,v0
bfc01524:	0007000d 	break	0x7
bfc01528:	00002810 	mfhi	a1
bfc0152c:	ad250004 	sw	a1,4(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc01530:	14400002 	bnez	v0,bfc0153c <clock_gettime+0x64>
bfc01534:	00c2001b 	divu	zero,a2,v0
bfc01538:	0007000d 	break	0x7
bfc0153c:	00005010 	mfhi	t2
bfc01540:	ad2a0008 	sw	t2,8(t1)
bfc01544:	00004012 	mflo	t0
bfc01548:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc0154c:	14e00002 	bnez	a3,bfc01558 <clock_gettime+0x80>
bfc01550:	00c7001b 	divu	zero,a2,a3
bfc01554:	0007000d 	break	0x7
bfc01558:	00003012 	mflo	a2
bfc0155c:	ad260000 	sw	a2,0(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:28
bfc01560:	14400002 	bnez	v0,bfc0156c <clock_gettime+0x94>
bfc01564:	0102001b 	divu	zero,t0,v0
bfc01568:	0007000d 	break	0x7
bfc0156c:	00001810 	mfhi	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc01570:	0ff0032c 	jal	bfc00cb0 <printf>
bfc01574:	ad23000c 	sw	v1,12(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:32
bfc01578:	8fbf0014 	lw	ra,20(sp)
bfc0157c:	00001021 	move	v0,zero
bfc01580:	03e00008 	jr	ra
bfc01584:	27bd0018 	addiu	sp,sp,24
	...

bfc01590 <get_epc>:
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc01590:	40027000 	mfc0	v0,c0_epc
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:9
bfc01594:	03e00008 	jr	ra
bfc01598:	00000000 	nop

bfc0159c <get_cause>:
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc0159c:	40026800 	mfc0	v0,c0_cause
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:19
bfc015a0:	03e00008 	jr	ra
bfc015a4:	00000000 	nop

bfc015a8 <exception>:
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc015a8:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:22
bfc015ac:	27bdffe8 	addiu	sp,sp,-24
bfc015b0:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc015b4:	0ff0032c 	jal	bfc00cb0 <printf>
bfc015b8:	24840714 	addiu	a0,a0,1812
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc015bc:	3c048000 	lui	a0,0x8000
bfc015c0:	24840730 	addiu	a0,a0,1840
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc015c4:	40057000 	mfc0	a1,c0_epc
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc015c8:	0ff0032c 	jal	bfc00cb0 <printf>
bfc015cc:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc015d0:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc015d4:	8fbf0014 	lw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc015d8:	24840740 	addiu	a0,a0,1856
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc015dc:	27bd0018 	addiu	sp,sp,24
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc015e0:	40056800 	mfc0	a1,c0_cause
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc015e4:	0bf0032c 	j	bfc00cb0 <printf>
bfc015e8:	00000000 	nop
bfc015ec:	00000000 	nop
