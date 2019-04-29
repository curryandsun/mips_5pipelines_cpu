
obj/bubble_sort/main.elf:     file format elf32-tradlittlemips
obj/bubble_sort/main.elf


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
bfc00010:	27bd41cc 	addiu	sp,sp,16844
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:55
bfc00014:	3c1c8001 	lui	gp,0x8001
bfc00018:	279ca130 	addiu	gp,gp,-24272
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
bfc00380:	0ff003c6 	jal	bfc00f18 <exception>
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
bfc00398:	afb10018 	sw	s1,24(sp)
bfc0039c:	0ff00385 	jal	bfc00e14 <get_count>
bfc003a0:	afb00014 	sw	s0,20(sp)
bfc003a4:	3c078000 	lui	a3,0x8000
bfc003a8:	24e401f0 	addiu	a0,a3,496
bfc003ac:	240503e8 	li	a1,1000
bfc003b0:	0ff00158 	jal	bfc00560 <bubble_sort>
bfc003b4:	00408021 	move	s0,v0
bfc003b8:	0ff00385 	jal	bfc00e14 <get_count>
bfc003bc:	00408821 	move	s1,v0
bfc003c0:	3c048000 	lui	a0,0x8000
bfc003c4:	8c861190 	lw	a2,4496(a0)
bfc003c8:	8e250000 	lw	a1,0(s1)
bfc003cc:	3c03bfd0 	lui	v1,0xbfd0
bfc003d0:	00508023 	subu	s0,v0,s0
bfc003d4:	3c028000 	lui	v0,0x8000
bfc003d8:	346bf000 	ori	t3,v1,0xf000
bfc003dc:	244c2130 	addiu	t4,v0,8496
bfc003e0:	24841190 	addiu	a0,a0,4496
bfc003e4:	346af008 	ori	t2,v1,0xf008
bfc003e8:	24070001 	li	a3,1
bfc003ec:	3469f004 	ori	t1,v1,0xf004
bfc003f0:	14a60044 	bne	a1,a2,bfc00504 <shell+0x174>
bfc003f4:	3408ffff 	li	t0,0xffff
bfc003f8:	ad470000 	sw	a3,0(t2)
bfc003fc:	ad270000 	sw	a3,0(t1)
bfc00400:	ad680000 	sw	t0,0(t3)
bfc00404:	8e230004 	lw	v1,4(s1)
bfc00408:	8c820004 	lw	v0,4(a0)
bfc0040c:	00000000 	nop
bfc00410:	1462003c 	bne	v1,v0,bfc00504 <shell+0x174>
bfc00414:	26250008 	addiu	a1,s1,8
bfc00418:	ad470000 	sw	a3,0(t2)
bfc0041c:	ad270000 	sw	a3,0(t1)
bfc00420:	ad680000 	sw	t0,0(t3)
bfc00424:	8c8d0008 	lw	t5,8(a0)
bfc00428:	8e2e0008 	lw	t6,8(s1)
bfc0042c:	00000000 	nop
bfc00430:	15cd0034 	bne	t6,t5,bfc00504 <shell+0x174>
bfc00434:	24840008 	addiu	a0,a0,8
bfc00438:	ad470000 	sw	a3,0(t2)
bfc0043c:	24a50004 	addiu	a1,a1,4
bfc00440:	ad270000 	sw	a3,0(t1)
bfc00444:	24840004 	addiu	a0,a0,4
bfc00448:	ad680000 	sw	t0,0(t3)
bfc0044c:	8cb10000 	lw	s1,0(a1)
bfc00450:	8c8f0000 	lw	t7,0(a0)
bfc00454:	00000000 	nop
bfc00458:	162f002a 	bne	s1,t7,bfc00504 <shell+0x174>
bfc0045c:	24840004 	addiu	a0,a0,4
bfc00460:	ad470000 	sw	a3,0(t2)
bfc00464:	24a50004 	addiu	a1,a1,4
bfc00468:	ad270000 	sw	a3,0(t1)
bfc0046c:	148c0020 	bne	a0,t4,bfc004f0 <shell+0x160>
bfc00470:	ad680000 	sw	t0,0(t3)
bfc00474:	0bf0014e 	j	bfc00538 <shell+0x1a8>
bfc00478:	3c06bfd0 	lui	a2,0xbfd0
bfc0047c:	00000000 	nop
bfc00480:	ad470000 	sw	a3,0(t2)
bfc00484:	ad270000 	sw	a3,0(t1)
bfc00488:	ad680000 	sw	t0,0(t3)
bfc0048c:	8cb10004 	lw	s1,4(a1)
bfc00490:	8c8f0004 	lw	t7,4(a0)
bfc00494:	00000000 	nop
bfc00498:	162f001b 	bne	s1,t7,bfc00508 <shell+0x178>
bfc0049c:	3c198000 	lui	t9,0x8000
bfc004a0:	ad470000 	sw	a3,0(t2)
bfc004a4:	ad270000 	sw	a3,0(t1)
bfc004a8:	ad680000 	sw	t0,0(t3)
bfc004ac:	8cb90008 	lw	t9,8(a1)
bfc004b0:	8c980008 	lw	t8,8(a0)
bfc004b4:	00000000 	nop
bfc004b8:	17380012 	bne	t9,t8,bfc00504 <shell+0x174>
bfc004bc:	00000000 	nop
bfc004c0:	ad470000 	sw	a3,0(t2)
bfc004c4:	ad270000 	sw	a3,0(t1)
bfc004c8:	ad680000 	sw	t0,0(t3)
bfc004cc:	8ca6000c 	lw	a2,12(a1)
bfc004d0:	8c9f000c 	lw	ra,12(a0)
bfc004d4:	24a50010 	addiu	a1,a1,16
bfc004d8:	14df000a 	bne	a2,ra,bfc00504 <shell+0x174>
bfc004dc:	24840010 	addiu	a0,a0,16
bfc004e0:	ad470000 	sw	a3,0(t2)
bfc004e4:	ad270000 	sw	a3,0(t1)
bfc004e8:	108c0012 	beq	a0,t4,bfc00534 <shell+0x1a4>
bfc004ec:	ad680000 	sw	t0,0(t3)
bfc004f0:	8cae0000 	lw	t6,0(a1)
bfc004f4:	8c8d0000 	lw	t5,0(a0)
bfc004f8:	00000000 	nop
bfc004fc:	11cdffe0 	beq	t6,t5,bfc00480 <shell+0xf0>
bfc00500:	00000000 	nop
bfc00504:	3c198000 	lui	t9,0x8000
bfc00508:	0ff0026c 	jal	bfc009b0 <printf>
bfc0050c:	27240000 	addiu	a0,t9,0
bfc00510:	3c18bfd0 	lui	t8,0xbfd0
bfc00514:	3708f000 	ori	t0,t8,0xf000
bfc00518:	370cf008 	ori	t4,t8,0xf008
bfc0051c:	370af004 	ori	t2,t8,0xf004
bfc00520:	240b0001 	li	t3,1
bfc00524:	24090002 	li	t1,2
bfc00528:	ad8b0000 	sw	t3,0(t4)
bfc0052c:	ad490000 	sw	t1,0(t2)
bfc00530:	ad000000 	sw	zero,0(t0)
bfc00534:	3c06bfd0 	lui	a2,0xbfd0
bfc00538:	3c058000 	lui	a1,0x8000
bfc0053c:	34dff010 	ori	ra,a2,0xf010
bfc00540:	aff00000 	sw	s0,0(ra)
bfc00544:	24a40014 	addiu	a0,a1,20
bfc00548:	8fbf001c 	lw	ra,28(sp)
bfc0054c:	02002821 	move	a1,s0
bfc00550:	8fb10018 	lw	s1,24(sp)
bfc00554:	8fb00014 	lw	s0,20(sp)
bfc00558:	0bf0026c 	j	bfc009b0 <printf>
bfc0055c:	27bd0020 	addiu	sp,sp,32

bfc00560 <bubble_sort>:
bubble_sort():
bfc00560:	00a05821 	move	t3,a1
bfc00564:	04a0010d 	bltz	a1,bfc0099c <bubble_sort+0x43c>
bfc00568:	00804021 	move	t0,a0
bfc0056c:	24a70001 	addiu	a3,a1,1
bfc00570:	00075080 	sll	t2,a3,0x2
bfc00574:	2546fffc 	addiu	a2,t2,-4
bfc00578:	8c840000 	lw	a0,0(a0)
bfc0057c:	3c058000 	lui	a1,0x8000
bfc00580:	00061882 	srl	v1,a2,0x2
bfc00584:	24070004 	li	a3,4
bfc00588:	aca42140 	sw	a0,8512(a1)
bfc0058c:	30630007 	andi	v1,v1,0x7
bfc00590:	10ea005a 	beq	a3,t2,bfc006fc <bubble_sort+0x19c>
bfc00594:	24a92140 	addiu	t1,a1,8512
bfc00598:	1060002f 	beqz	v1,bfc00658 <bubble_sort+0xf8>
bfc0059c:	24060001 	li	a2,1
bfc005a0:	10660027 	beq	v1,a2,bfc00640 <bubble_sort+0xe0>
bfc005a4:	24050002 	li	a1,2
bfc005a8:	10650020 	beq	v1,a1,bfc0062c <bubble_sort+0xcc>
bfc005ac:	24040003 	li	a0,3
bfc005b0:	1064001a 	beq	v1,a0,bfc0061c <bubble_sort+0xbc>
bfc005b4:	01076021 	addu	t4,t0,a3
bfc005b8:	10670012 	beq	v1,a3,bfc00604 <bubble_sort+0xa4>
bfc005bc:	24190005 	li	t9,5
bfc005c0:	1079000b 	beq	v1,t9,bfc005f0 <bubble_sort+0x90>
bfc005c4:	24020006 	li	v0,6
bfc005c8:	10620005 	beq	v1,v0,bfc005e0 <bubble_sort+0x80>
bfc005cc:	01077021 	addu	t6,t0,a3
bfc005d0:	8d030004 	lw	v1,4(t0)
bfc005d4:	24070008 	li	a3,8
bfc005d8:	ad230004 	sw	v1,4(t1)
bfc005dc:	01077021 	addu	t6,t0,a3
bfc005e0:	8dcd0000 	lw	t5,0(t6)
bfc005e4:	01276021 	addu	t4,t1,a3
bfc005e8:	ad8d0000 	sw	t5,0(t4)
bfc005ec:	24e70004 	addiu	a3,a3,4
bfc005f0:	01073021 	addu	a2,t0,a3
bfc005f4:	8cd80000 	lw	t8,0(a2)
bfc005f8:	01277821 	addu	t7,t1,a3
bfc005fc:	adf80000 	sw	t8,0(t7)
bfc00600:	24e70004 	addiu	a3,a3,4
bfc00604:	0107c821 	addu	t9,t0,a3
bfc00608:	8f240000 	lw	a0,0(t9)
bfc0060c:	01272821 	addu	a1,t1,a3
bfc00610:	aca40000 	sw	a0,0(a1)
bfc00614:	24e70004 	addiu	a3,a3,4
bfc00618:	01076021 	addu	t4,t0,a3
bfc0061c:	8d830000 	lw	v1,0(t4)
bfc00620:	01271021 	addu	v0,t1,a3
bfc00624:	ac430000 	sw	v1,0(v0)
bfc00628:	24e70004 	addiu	a3,a3,4
bfc0062c:	01077821 	addu	t7,t0,a3
bfc00630:	8dee0000 	lw	t6,0(t7)
bfc00634:	01276821 	addu	t5,t1,a3
bfc00638:	adae0000 	sw	t6,0(t5)
bfc0063c:	24e70004 	addiu	a3,a3,4
bfc00640:	01072821 	addu	a1,t0,a3
bfc00644:	8ca60000 	lw	a2,0(a1)
bfc00648:	0127c021 	addu	t8,t1,a3
bfc0064c:	24e70004 	addiu	a3,a3,4
bfc00650:	10ea002a 	beq	a3,t2,bfc006fc <bubble_sort+0x19c>
bfc00654:	af060000 	sw	a2,0(t8)
bfc00658:	01071021 	addu	v0,t0,a3
bfc0065c:	8c430000 	lw	v1,0(v0)
bfc00660:	24f80004 	addiu	t8,a3,4
bfc00664:	01272021 	addu	a0,t1,a3
bfc00668:	ac830000 	sw	v1,0(a0)
bfc0066c:	0118c821 	addu	t9,t0,t8
bfc00670:	8f2f0000 	lw	t7,0(t9)
bfc00674:	24ec0008 	addiu	t4,a3,8
bfc00678:	01387021 	addu	t6,t1,t8
bfc0067c:	adcf0000 	sw	t7,0(t6)
bfc00680:	010c6821 	addu	t5,t0,t4
bfc00684:	8da60000 	lw	a2,0(t5)
bfc00688:	24e3000c 	addiu	v1,a3,12
bfc0068c:	012c2821 	addu	a1,t1,t4
bfc00690:	aca60000 	sw	a2,0(a1)
bfc00694:	01031021 	addu	v0,t0,v1
bfc00698:	8c440000 	lw	a0,0(v0)
bfc0069c:	24ef0010 	addiu	t7,a3,16
bfc006a0:	0123c821 	addu	t9,t1,v1
bfc006a4:	af240000 	sw	a0,0(t9)
bfc006a8:	010fc021 	addu	t8,t0,t7
bfc006ac:	8f0e0000 	lw	t6,0(t8)
bfc006b0:	24e60014 	addiu	a2,a3,20
bfc006b4:	012f6821 	addu	t5,t1,t7
bfc006b8:	adae0000 	sw	t6,0(t5)
bfc006bc:	01066021 	addu	t4,t0,a2
bfc006c0:	8d850000 	lw	a1,0(t4)
bfc006c4:	24e40018 	addiu	a0,a3,24
bfc006c8:	01261821 	addu	v1,t1,a2
bfc006cc:	ac650000 	sw	a1,0(v1)
bfc006d0:	01041021 	addu	v0,t0,a0
bfc006d4:	8c590000 	lw	t9,0(v0)
bfc006d8:	24ee001c 	addiu	t6,a3,28
bfc006dc:	0124c021 	addu	t8,t1,a0
bfc006e0:	af190000 	sw	t9,0(t8)
bfc006e4:	010e7821 	addu	t7,t0,t6
bfc006e8:	8ded0000 	lw	t5,0(t7)
bfc006ec:	012e6021 	addu	t4,t1,t6
bfc006f0:	24e70020 	addiu	a3,a3,32
bfc006f4:	14eaffd8 	bne	a3,t2,bfc00658 <bubble_sort+0xf8>
bfc006f8:	ad8d0000 	sw	t5,0(t4)
bfc006fc:	196000a5 	blez	t3,bfc00994 <bubble_sort+0x434>
bfc00700:	2565ffff 	addiu	a1,t3,-1
bfc00704:	01205021 	move	t2,t1
bfc00708:	240bffff 	li	t3,-1
bfc0070c:	30a30007 	andi	v1,a1,0x7
bfc00710:	01403021 	move	a2,t2
bfc00714:	1060004f 	beqz	v1,bfc00854 <bubble_sort+0x2f4>
bfc00718:	00004021 	move	t0,zero
bfc0071c:	18a0009a 	blez	a1,bfc00988 <bubble_sort+0x428>
bfc00720:	00000000 	nop
bfc00724:	8d470000 	lw	a3,0(t2)
bfc00728:	8d440004 	lw	a0,4(t2)
bfc0072c:	00000000 	nop
bfc00730:	0087702a 	slt	t6,a0,a3
bfc00734:	11c00003 	beqz	t6,bfc00744 <bubble_sort+0x1e4>
bfc00738:	24080001 	li	t0,1
bfc0073c:	ad440000 	sw	a0,0(t2)
bfc00740:	ad470004 	sw	a3,4(t2)
bfc00744:	240f0001 	li	t7,1
bfc00748:	106f0042 	beq	v1,t7,bfc00854 <bubble_sort+0x2f4>
bfc0074c:	24c60004 	addiu	a2,a2,4
bfc00750:	24180002 	li	t8,2
bfc00754:	10780036 	beq	v1,t8,bfc00830 <bubble_sort+0x2d0>
bfc00758:	24190003 	li	t9,3
bfc0075c:	1079002b 	beq	v1,t9,bfc0080c <bubble_sort+0x2ac>
bfc00760:	24040004 	li	a0,4
bfc00764:	10640020 	beq	v1,a0,bfc007e8 <bubble_sort+0x288>
bfc00768:	24020005 	li	v0,5
bfc0076c:	10620015 	beq	v1,v0,bfc007c4 <bubble_sort+0x264>
bfc00770:	24070006 	li	a3,6
bfc00774:	1067000a 	beq	v1,a3,bfc007a0 <bubble_sort+0x240>
bfc00778:	00000000 	nop
bfc0077c:	8cc40000 	lw	a0,0(a2)
bfc00780:	8cc30004 	lw	v1,4(a2)
bfc00784:	00000000 	nop
bfc00788:	0064602a 	slt	t4,v1,a0
bfc0078c:	11800003 	beqz	t4,bfc0079c <bubble_sort+0x23c>
bfc00790:	25080001 	addiu	t0,t0,1
bfc00794:	acc30000 	sw	v1,0(a2)
bfc00798:	acc40004 	sw	a0,4(a2)
bfc0079c:	24c60004 	addiu	a2,a2,4
bfc007a0:	8cc40000 	lw	a0,0(a2)
bfc007a4:	8cc30004 	lw	v1,4(a2)
bfc007a8:	00000000 	nop
bfc007ac:	0064682a 	slt	t5,v1,a0
bfc007b0:	11a00003 	beqz	t5,bfc007c0 <bubble_sort+0x260>
bfc007b4:	25080001 	addiu	t0,t0,1
bfc007b8:	acc30000 	sw	v1,0(a2)
bfc007bc:	acc40004 	sw	a0,4(a2)
bfc007c0:	24c60004 	addiu	a2,a2,4
bfc007c4:	8cc40000 	lw	a0,0(a2)
bfc007c8:	8cc30004 	lw	v1,4(a2)
bfc007cc:	00000000 	nop
bfc007d0:	0064702a 	slt	t6,v1,a0
bfc007d4:	11c00003 	beqz	t6,bfc007e4 <bubble_sort+0x284>
bfc007d8:	25080001 	addiu	t0,t0,1
bfc007dc:	acc30000 	sw	v1,0(a2)
bfc007e0:	acc40004 	sw	a0,4(a2)
bfc007e4:	24c60004 	addiu	a2,a2,4
bfc007e8:	8cc40000 	lw	a0,0(a2)
bfc007ec:	8cc30004 	lw	v1,4(a2)
bfc007f0:	00000000 	nop
bfc007f4:	0064782a 	slt	t7,v1,a0
bfc007f8:	11e00003 	beqz	t7,bfc00808 <bubble_sort+0x2a8>
bfc007fc:	25080001 	addiu	t0,t0,1
bfc00800:	acc30000 	sw	v1,0(a2)
bfc00804:	acc40004 	sw	a0,4(a2)
bfc00808:	24c60004 	addiu	a2,a2,4
bfc0080c:	8cc40000 	lw	a0,0(a2)
bfc00810:	8cc30004 	lw	v1,4(a2)
bfc00814:	00000000 	nop
bfc00818:	0064c02a 	slt	t8,v1,a0
bfc0081c:	13000003 	beqz	t8,bfc0082c <bubble_sort+0x2cc>
bfc00820:	25080001 	addiu	t0,t0,1
bfc00824:	acc30000 	sw	v1,0(a2)
bfc00828:	acc40004 	sw	a0,4(a2)
bfc0082c:	24c60004 	addiu	a2,a2,4
bfc00830:	8cc40000 	lw	a0,0(a2)
bfc00834:	8cc30004 	lw	v1,4(a2)
bfc00838:	00000000 	nop
bfc0083c:	0064c82a 	slt	t9,v1,a0
bfc00840:	13200003 	beqz	t9,bfc00850 <bubble_sort+0x2f0>
bfc00844:	25080001 	addiu	t0,t0,1
bfc00848:	acc30000 	sw	v1,0(a2)
bfc0084c:	acc40004 	sw	a0,4(a2)
bfc00850:	24c60004 	addiu	a2,a2,4
bfc00854:	0105682a 	slt	t5,t0,a1
bfc00858:	11a0004b 	beqz	t5,bfc00988 <bubble_sort+0x428>
bfc0085c:	00000000 	nop
bfc00860:	8cc40000 	lw	a0,0(a2)
bfc00864:	8cc30004 	lw	v1,4(a2)
bfc00868:	00000000 	nop
bfc0086c:	0064382a 	slt	a3,v1,a0
bfc00870:	10e00003 	beqz	a3,bfc00880 <bubble_sort+0x320>
bfc00874:	25080001 	addiu	t0,t0,1
bfc00878:	acc30000 	sw	v1,0(a2)
bfc0087c:	acc40004 	sw	a0,4(a2)
bfc00880:	24c30004 	addiu	v1,a2,4
bfc00884:	8cc70004 	lw	a3,4(a2)
bfc00888:	8c640004 	lw	a0,4(v1)
bfc0088c:	00000000 	nop
bfc00890:	0087602a 	slt	t4,a0,a3
bfc00894:	11800003 	beqz	t4,bfc008a4 <bubble_sort+0x344>
bfc00898:	00000000 	nop
bfc0089c:	acc40004 	sw	a0,4(a2)
bfc008a0:	ac670004 	sw	a3,4(v1)
bfc008a4:	24670004 	addiu	a3,v1,4
bfc008a8:	8c660004 	lw	a2,4(v1)
bfc008ac:	8ce40004 	lw	a0,4(a3)
bfc008b0:	00000000 	nop
bfc008b4:	0086102a 	slt	v0,a0,a2
bfc008b8:	10400003 	beqz	v0,bfc008c8 <bubble_sort+0x368>
bfc008bc:	00000000 	nop
bfc008c0:	ac640004 	sw	a0,4(v1)
bfc008c4:	ace60004 	sw	a2,4(a3)
bfc008c8:	24670008 	addiu	a3,v1,8
bfc008cc:	8c660008 	lw	a2,8(v1)
bfc008d0:	8ce40004 	lw	a0,4(a3)
bfc008d4:	00000000 	nop
bfc008d8:	0086602a 	slt	t4,a0,a2
bfc008dc:	11800003 	beqz	t4,bfc008ec <bubble_sort+0x38c>
bfc008e0:	00000000 	nop
bfc008e4:	ac640008 	sw	a0,8(v1)
bfc008e8:	ace60004 	sw	a2,4(a3)
bfc008ec:	2467000c 	addiu	a3,v1,12
bfc008f0:	8c66000c 	lw	a2,12(v1)
bfc008f4:	8ce40004 	lw	a0,4(a3)
bfc008f8:	00000000 	nop
bfc008fc:	0086682a 	slt	t5,a0,a2
bfc00900:	11a00003 	beqz	t5,bfc00910 <bubble_sort+0x3b0>
bfc00904:	00000000 	nop
bfc00908:	ac64000c 	sw	a0,12(v1)
bfc0090c:	ace60004 	sw	a2,4(a3)
bfc00910:	24670010 	addiu	a3,v1,16
bfc00914:	8c660010 	lw	a2,16(v1)
bfc00918:	8ce40004 	lw	a0,4(a3)
bfc0091c:	00000000 	nop
bfc00920:	0086702a 	slt	t6,a0,a2
bfc00924:	11c00003 	beqz	t6,bfc00934 <bubble_sort+0x3d4>
bfc00928:	00000000 	nop
bfc0092c:	ac640010 	sw	a0,16(v1)
bfc00930:	ace60004 	sw	a2,4(a3)
bfc00934:	24670014 	addiu	a3,v1,20
bfc00938:	8c660014 	lw	a2,20(v1)
bfc0093c:	8ce40004 	lw	a0,4(a3)
bfc00940:	00000000 	nop
bfc00944:	0086782a 	slt	t7,a0,a2
bfc00948:	11e00003 	beqz	t7,bfc00958 <bubble_sort+0x3f8>
bfc0094c:	00000000 	nop
bfc00950:	ac640014 	sw	a0,20(v1)
bfc00954:	ace60004 	sw	a2,4(a3)
bfc00958:	24670018 	addiu	a3,v1,24
bfc0095c:	8c660018 	lw	a2,24(v1)
bfc00960:	8ce40004 	lw	a0,4(a3)
bfc00964:	00000000 	nop
bfc00968:	0086c02a 	slt	t8,a0,a2
bfc0096c:	13000003 	beqz	t8,bfc0097c <bubble_sort+0x41c>
bfc00970:	25080007 	addiu	t0,t0,7
bfc00974:	ac640018 	sw	a0,24(v1)
bfc00978:	ace60004 	sw	a2,4(a3)
bfc0097c:	0105682a 	slt	t5,t0,a1
bfc00980:	15a0ffb7 	bnez	t5,bfc00860 <bubble_sort+0x300>
bfc00984:	2466001c 	addiu	a2,v1,28
bfc00988:	24a5ffff 	addiu	a1,a1,-1
bfc0098c:	14abff60 	bne	a1,t3,bfc00710 <bubble_sort+0x1b0>
bfc00990:	30a30007 	andi	v1,a1,0x7
bfc00994:	03e00008 	jr	ra
bfc00998:	01201021 	move	v0,t1
bfc0099c:	3c028000 	lui	v0,0x8000
bfc009a0:	0bf00265 	j	bfc00994 <bubble_sort+0x434>
bfc009a4:	24492140 	addiu	t1,v0,8512
	...

bfc009b0 <printf>:
printf():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc009b0:	27bdffc8 	addiu	sp,sp,-56
bfc009b4:	afb30024 	sw	s3,36(sp)
bfc009b8:	afbf0034 	sw	ra,52(sp)
bfc009bc:	afb60030 	sw	s6,48(sp)
bfc009c0:	afb5002c 	sw	s5,44(sp)
bfc009c4:	afb40028 	sw	s4,40(sp)
bfc009c8:	afb20020 	sw	s2,32(sp)
bfc009cc:	afb1001c 	sw	s1,28(sp)
bfc009d0:	afb00018 	sw	s0,24(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc009d4:	80900000 	lb	s0,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc009d8:	00809821 	move	s3,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:8
bfc009dc:	27a4003c 	addiu	a0,sp,60
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc009e0:	afa5003c 	sw	a1,60(sp)
bfc009e4:	afa60040 	sw	a2,64(sp)
bfc009e8:	afa70044 	sw	a3,68(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc009ec:	12000013 	beqz	s0,bfc00a3c <printf+0x8c>
bfc009f0:	afa40010 	sw	a0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc009f4:	3c028000 	lui	v0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc009f8:	00809021 	move	s2,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc009fc:	24560030 	addiu	s6,v0,48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc00a00:	00008821 	move	s1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00a04:	24140025 	li	s4,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00a08:	2415000a 	li	s5,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00a0c:	12140016 	beq	s0,s4,bfc00a68 <printf+0xb8>
bfc00a10:	02711021 	addu	v0,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00a14:	1215002f 	beq	s0,s5,bfc00ad4 <printf+0x124>
bfc00a18:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:80
bfc00a1c:	0ff00305 	jal	bfc00c14 <putchar>
bfc00a20:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00a24:	26310001 	addiu	s1,s1,1
bfc00a28:	02711021 	addu	v0,s3,s1
bfc00a2c:	80500000 	lb	s0,0(v0)
bfc00a30:	00000000 	nop
bfc00a34:	1600fff5 	bnez	s0,bfc00a0c <printf+0x5c>
bfc00a38:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:84
bfc00a3c:	8fbf0034 	lw	ra,52(sp)
bfc00a40:	00001021 	move	v0,zero
bfc00a44:	8fb60030 	lw	s6,48(sp)
bfc00a48:	8fb5002c 	lw	s5,44(sp)
bfc00a4c:	8fb40028 	lw	s4,40(sp)
bfc00a50:	8fb30024 	lw	s3,36(sp)
bfc00a54:	8fb20020 	lw	s2,32(sp)
bfc00a58:	8fb1001c 	lw	s1,28(sp)
bfc00a5c:	8fb00018 	lw	s0,24(sp)
bfc00a60:	03e00008 	jr	ra
bfc00a64:	27bd0038 	addiu	sp,sp,56
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00a68:	80440001 	lb	a0,1(v0)
bfc00a6c:	24050001 	li	a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00a70:	2482ffdb 	addiu	v0,a0,-37
bfc00a74:	304200ff 	andi	v0,v0,0xff
bfc00a78:	2c430054 	sltiu	v1,v0,84
bfc00a7c:	14600005 	bnez	v1,bfc00a94 <printf+0xe4>
bfc00a80:	00021080 	sll	v0,v0,0x2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:73
bfc00a84:	0ff00305 	jal	bfc00c14 <putchar>
bfc00a88:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00a8c:	0bf0028a 	j	bfc00a28 <printf+0x78>
bfc00a90:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00a94:	02c21021 	addu	v0,s6,v0
bfc00a98:	8c430000 	lw	v1,0(v0)
bfc00a9c:	00000000 	nop
bfc00aa0:	00600008 	jr	v1
bfc00aa4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:65
bfc00aa8:	26310001 	addiu	s1,s1,1
bfc00aac:	02711021 	addu	v0,s3,s1
bfc00ab0:	80440001 	lb	a0,1(v0)
bfc00ab4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00ab8:	2482ffcf 	addiu	v0,a0,-49
bfc00abc:	304200ff 	andi	v0,v0,0xff
bfc00ac0:	2c420009 	sltiu	v0,v0,9
bfc00ac4:	1440003f 	bnez	v0,bfc00bc4 <printf+0x214>
bfc00ac8:	00002821 	move	a1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00acc:	0bf0029d 	j	bfc00a74 <printf+0xc4>
bfc00ad0:	2482ffdb 	addiu	v0,a0,-37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00ad4:	0ff00305 	jal	bfc00c14 <putchar>
bfc00ad8:	2404000d 	li	a0,13
bfc00adc:	0bf00287 	j	bfc00a1c <printf+0x6c>
bfc00ae0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:30
bfc00ae4:	8e440000 	lw	a0,0(s2)
bfc00ae8:	2406000a 	li	a2,10
bfc00aec:	0ff00340 	jal	bfc00d00 <printbase>
bfc00af0:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:31
bfc00af4:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:32
bfc00af8:	0bf00289 	j	bfc00a24 <printf+0x74>
bfc00afc:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:20
bfc00b00:	8e440000 	lw	a0,0(s2)
bfc00b04:	0ff00310 	jal	bfc00c40 <putstring>
bfc00b08:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:21
bfc00b0c:	0bf00289 	j	bfc00a24 <printf+0x74>
bfc00b10:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:56
bfc00b14:	8e440000 	lw	a0,0(s2)
bfc00b18:	24060010 	li	a2,16
bfc00b1c:	0ff00340 	jal	bfc00d00 <printbase>
bfc00b20:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:57
bfc00b24:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:58
bfc00b28:	0bf00289 	j	bfc00a24 <printf+0x74>
bfc00b2c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:45
bfc00b30:	8e440000 	lw	a0,0(s2)
bfc00b34:	24060008 	li	a2,8
bfc00b38:	0ff00340 	jal	bfc00d00 <printbase>
bfc00b3c:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:46
bfc00b40:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:47
bfc00b44:	0bf00289 	j	bfc00a24 <printf+0x74>
bfc00b48:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:40
bfc00b4c:	8e440000 	lw	a0,0(s2)
bfc00b50:	2406000a 	li	a2,10
bfc00b54:	0ff00340 	jal	bfc00d00 <printbase>
bfc00b58:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:41
bfc00b5c:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:42
bfc00b60:	0bf00289 	j	bfc00a24 <printf+0x74>
bfc00b64:	26310002 	addiu	s1,s1,2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:35
bfc00b68:	8e440000 	lw	a0,0(s2)
bfc00b6c:	2406000a 	li	a2,10
bfc00b70:	0ff00340 	jal	bfc00d00 <printbase>
bfc00b74:	24070001 	li	a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:36
bfc00b78:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:37
bfc00b7c:	0bf00289 	j	bfc00a24 <printf+0x74>
bfc00b80:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:25
bfc00b84:	8e440000 	lw	a0,0(s2)
bfc00b88:	0ff00305 	jal	bfc00c14 <putchar>
bfc00b8c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:26
bfc00b90:	0bf00289 	j	bfc00a24 <printf+0x74>
bfc00b94:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:50
bfc00b98:	8e440000 	lw	a0,0(s2)
bfc00b9c:	24060002 	li	a2,2
bfc00ba0:	0ff00340 	jal	bfc00d00 <printbase>
bfc00ba4:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:51
bfc00ba8:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:52
bfc00bac:	0bf00289 	j	bfc00a24 <printf+0x74>
bfc00bb0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:61
bfc00bb4:	0ff00305 	jal	bfc00c14 <putchar>
bfc00bb8:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:62
bfc00bbc:	0bf00289 	j	bfc00a24 <printf+0x74>
bfc00bc0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00bc4:	02713021 	addu	a2,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00bc8:	000510c0 	sll	v0,a1,0x3
bfc00bcc:	00051840 	sll	v1,a1,0x1
bfc00bd0:	00621821 	addu	v1,v1,v0
bfc00bd4:	00641821 	addu	v1,v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00bd8:	80c40002 	lb	a0,2(a2)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00bdc:	2465ffd0 	addiu	a1,v1,-48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00be0:	2482ffcf 	addiu	v0,a0,-49
bfc00be4:	304200ff 	andi	v0,v0,0xff
bfc00be8:	2c420009 	sltiu	v0,v0,9
bfc00bec:	26310001 	addiu	s1,s1,1
bfc00bf0:	1040ff9f 	beqz	v0,bfc00a70 <printf+0xc0>
bfc00bf4:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00bf8:	0bf002f3 	j	bfc00bcc <printf+0x21c>
bfc00bfc:	000510c0 	sll	v0,a1,0x3

bfc00c00 <tgt_putchar>:
tgt_putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:9
bfc00c00:	3c018000 	lui	at,0x8000
bfc00c04:	03e00008 	jr	ra
bfc00c08:	a0247ffc 	sb	a0,32764(at)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:18
bfc00c0c:	03e00008 	jr	ra
bfc00c10:	00000000 	nop

bfc00c14 <putchar>:
putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:2
bfc00c14:	27bdffe8 	addiu	sp,sp,-24
bfc00c18:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:3
bfc00c1c:	0ff00300 	jal	bfc00c00 <tgt_putchar>
bfc00c20:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:5
bfc00c24:	8fbf0014 	lw	ra,20(sp)
bfc00c28:	00001021 	move	v0,zero
bfc00c2c:	03e00008 	jr	ra
bfc00c30:	27bd0018 	addiu	sp,sp,24
	...

bfc00c40 <putstring>:
putstring():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:2
bfc00c40:	27bdffe0 	addiu	sp,sp,-32
bfc00c44:	afb10014 	sw	s1,20(sp)
bfc00c48:	afbf001c 	sw	ra,28(sp)
bfc00c4c:	afb20018 	sw	s2,24(sp)
bfc00c50:	afb00010 	sw	s0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00c54:	80900000 	lb	s0,0(a0)
bfc00c58:	00000000 	nop
bfc00c5c:	12000013 	beqz	s0,bfc00cac <putstring+0x6c>
bfc00c60:	00808821 	move	s1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc00c64:	0bf00321 	j	bfc00c84 <putstring+0x44>
bfc00c68:	2412000a 	li	s2,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc00c6c:	0ff00305 	jal	bfc00c14 <putchar>
bfc00c70:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00c74:	82300000 	lb	s0,0(s1)
bfc00c78:	00000000 	nop
bfc00c7c:	1200000b 	beqz	s0,bfc00cac <putstring+0x6c>
bfc00c80:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc00c84:	1612fff9 	bne	s0,s2,bfc00c6c <putstring+0x2c>
bfc00c88:	26310001 	addiu	s1,s1,1
bfc00c8c:	0ff00305 	jal	bfc00c14 <putchar>
bfc00c90:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc00c94:	0ff00305 	jal	bfc00c14 <putchar>
bfc00c98:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00c9c:	82300000 	lb	s0,0(s1)
bfc00ca0:	00000000 	nop
bfc00ca4:	1600fff7 	bnez	s0,bfc00c84 <putstring+0x44>
bfc00ca8:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:11
bfc00cac:	8fbf001c 	lw	ra,28(sp)
bfc00cb0:	00001021 	move	v0,zero
bfc00cb4:	8fb20018 	lw	s2,24(sp)
bfc00cb8:	8fb10014 	lw	s1,20(sp)
bfc00cbc:	8fb00010 	lw	s0,16(sp)
bfc00cc0:	03e00008 	jr	ra
bfc00cc4:	27bd0020 	addiu	sp,sp,32

bfc00cc8 <puts>:
puts():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:15
bfc00cc8:	27bdffe8 	addiu	sp,sp,-24
bfc00ccc:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:16
bfc00cd0:	0ff00310 	jal	bfc00c40 <putstring>
bfc00cd4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:17
bfc00cd8:	0ff00305 	jal	bfc00c14 <putchar>
bfc00cdc:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:18
bfc00ce0:	0ff00305 	jal	bfc00c14 <putchar>
bfc00ce4:	2404000a 	li	a0,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:20
bfc00ce8:	8fbf0014 	lw	ra,20(sp)
bfc00cec:	00001021 	move	v0,zero
bfc00cf0:	03e00008 	jr	ra
bfc00cf4:	27bd0018 	addiu	sp,sp,24
	...

bfc00d00 <printbase>:
printbase():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc00d00:	27bdff98 	addiu	sp,sp,-104
bfc00d04:	afb30060 	sw	s3,96(sp)
bfc00d08:	afb2005c 	sw	s2,92(sp)
bfc00d0c:	afbf0064 	sw	ra,100(sp)
bfc00d10:	afb10058 	sw	s1,88(sp)
bfc00d14:	afb00054 	sw	s0,84(sp)
bfc00d18:	00801821 	move	v1,a0
bfc00d1c:	00a09821 	move	s3,a1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:7
bfc00d20:	10e00003 	beqz	a3,bfc00d30 <printbase+0x30>
bfc00d24:	00c09021 	move	s2,a2
bfc00d28:	0480002f 	bltz	a0,bfc00de8 <printbase+0xe8>
bfc00d2c:	2404002d 	li	a0,45
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:12
bfc00d30:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc00d34:	1200000c 	beqz	s0,bfc00d68 <printbase+0x68>
bfc00d38:	00008821 	move	s1,zero
bfc00d3c:	27a50010 	addiu	a1,sp,16
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc00d40:	16400002 	bnez	s2,bfc00d4c <printbase+0x4c>
bfc00d44:	0212001b 	divu	zero,s0,s2
bfc00d48:	0007000d 	break	0x7
bfc00d4c:	00b12021 	addu	a0,a1,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc00d50:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc00d54:	00001010 	mfhi	v0
bfc00d58:	a0820000 	sb	v0,0(a0)
bfc00d5c:	00001812 	mflo	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc00d60:	1460fff7 	bnez	v1,bfc00d40 <printbase+0x40>
bfc00d64:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc00d68:	0233102a 	slt	v0,s1,s3
bfc00d6c:	10400002 	beqz	v0,bfc00d78 <printbase+0x78>
bfc00d70:	02201821 	move	v1,s1
bfc00d74:	02601821 	move	v1,s3
bfc00d78:	1060000c 	beqz	v1,bfc00dac <printbase+0xac>
bfc00d7c:	2470ffff 	addiu	s0,v1,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc00d80:	27a20010 	addiu	v0,sp,16
bfc00d84:	00509021 	addu	s2,v0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc00d88:	26020001 	addiu	v0,s0,1
bfc00d8c:	0222102a 	slt	v0,s1,v0
bfc00d90:	1040000e 	beqz	v0,bfc00dcc <printbase+0xcc>
bfc00d94:	24040030 	li	a0,48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc00d98:	02009821 	move	s3,s0
bfc00d9c:	0ff00305 	jal	bfc00c14 <putchar>
bfc00da0:	2610ffff 	addiu	s0,s0,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc00da4:	1660fff8 	bnez	s3,bfc00d88 <printbase+0x88>
bfc00da8:	2652ffff 	addiu	s2,s2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:28
bfc00dac:	8fbf0064 	lw	ra,100(sp)
bfc00db0:	00001021 	move	v0,zero
bfc00db4:	8fb30060 	lw	s3,96(sp)
bfc00db8:	8fb2005c 	lw	s2,92(sp)
bfc00dbc:	8fb10058 	lw	s1,88(sp)
bfc00dc0:	8fb00054 	lw	s0,84(sp)
bfc00dc4:	03e00008 	jr	ra
bfc00dc8:	27bd0068 	addiu	sp,sp,104
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc00dcc:	82440000 	lb	a0,0(s2)
bfc00dd0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc00dd4:	2882000a 	slti	v0,a0,10
bfc00dd8:	14400007 	bnez	v0,bfc00df8 <printbase+0xf8>
bfc00ddc:	02009821 	move	s3,s0
bfc00de0:	0bf00367 	j	bfc00d9c <printbase+0x9c>
bfc00de4:	24840057 	addiu	a0,a0,87
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:10
bfc00de8:	0ff00305 	jal	bfc00c14 <putchar>
bfc00dec:	00038023 	negu	s0,v1
bfc00df0:	0bf0034d 	j	bfc00d34 <printbase+0x34>
bfc00df4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc00df8:	0bf00366 	j	bfc00d98 <printbase+0x98>
bfc00dfc:	24840030 	addiu	a0,a0,48

bfc00e00 <_get_count>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:15
bfc00e00:	3c01bfd0 	lui	at,0xbfd0
bfc00e04:	3421e000 	ori	at,at,0xe000
bfc00e08:	8c220000 	lw	v0,0(at)
bfc00e0c:	03e00008 	jr	ra
bfc00e10:	00000000 	nop

bfc00e14 <get_count>:
get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:20
bfc00e14:	3c01bfd0 	lui	at,0xbfd0
bfc00e18:	3421e000 	ori	at,at,0xe000
bfc00e1c:	8c220000 	lw	v0,0(at)
bfc00e20:	03e00008 	jr	ra
bfc00e24:	00000000 	nop

bfc00e28 <get_clock>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc00e28:	3c01bfd0 	lui	at,0xbfd0
bfc00e2c:	3421e000 	ori	at,at,0xe000
bfc00e30:	8c220000 	lw	v0,0(at)
get_clock():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:39
bfc00e34:	03e00008 	jr	ra
bfc00e38:	00021040 	sll	v0,v0,0x1

bfc00e3c <get_ns>:
get_ns():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:45
bfc00e3c:	40024800 	mfc0	v0,$9
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:51
bfc00e40:	03e00008 	jr	ra
bfc00e44:	00021040 	sll	v0,v0,0x1

bfc00e48 <clock_gettime>:
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:23
bfc00e48:	27bdffe8 	addiu	sp,sp,-24
bfc00e4c:	afbf0014 	sw	ra,20(sp)
bfc00e50:	00a04821 	move	t1,a1
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc00e54:	3c01bfd0 	lui	at,0xbfd0
bfc00e58:	3421e000 	ori	at,at,0xe000
bfc00e5c:	8c230000 	lw	v1,0(at)
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc00e60:	240203e8 	li	v0,1000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc00e64:	14400002 	bnez	v0,bfc00e70 <clock_gettime+0x28>
bfc00e68:	0062001b 	divu	zero,v1,v0
bfc00e6c:	0007000d 	break	0x7
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc00e70:	00031840 	sll	v1,v1,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc00e74:	3c073b9a 	lui	a3,0x3b9a
bfc00e78:	34e7ca00 	ori	a3,a3,0xca00
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc00e7c:	3c048000 	lui	a0,0x8000
bfc00e80:	24840180 	addiu	a0,a0,384
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc00e84:	00003012 	mflo	a2
bfc00e88:	00063040 	sll	a2,a2,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc00e8c:	14400002 	bnez	v0,bfc00e98 <clock_gettime+0x50>
bfc00e90:	0062001b 	divu	zero,v1,v0
bfc00e94:	0007000d 	break	0x7
bfc00e98:	00002810 	mfhi	a1
bfc00e9c:	ad250004 	sw	a1,4(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc00ea0:	14400002 	bnez	v0,bfc00eac <clock_gettime+0x64>
bfc00ea4:	00c2001b 	divu	zero,a2,v0
bfc00ea8:	0007000d 	break	0x7
bfc00eac:	00005010 	mfhi	t2
bfc00eb0:	ad2a0008 	sw	t2,8(t1)
bfc00eb4:	00004012 	mflo	t0
bfc00eb8:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc00ebc:	14e00002 	bnez	a3,bfc00ec8 <clock_gettime+0x80>
bfc00ec0:	00c7001b 	divu	zero,a2,a3
bfc00ec4:	0007000d 	break	0x7
bfc00ec8:	00003012 	mflo	a2
bfc00ecc:	ad260000 	sw	a2,0(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:28
bfc00ed0:	14400002 	bnez	v0,bfc00edc <clock_gettime+0x94>
bfc00ed4:	0102001b 	divu	zero,t0,v0
bfc00ed8:	0007000d 	break	0x7
bfc00edc:	00001810 	mfhi	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc00ee0:	0ff0026c 	jal	bfc009b0 <printf>
bfc00ee4:	ad23000c 	sw	v1,12(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:32
bfc00ee8:	8fbf0014 	lw	ra,20(sp)
bfc00eec:	00001021 	move	v0,zero
bfc00ef0:	03e00008 	jr	ra
bfc00ef4:	27bd0018 	addiu	sp,sp,24
	...

bfc00f00 <get_epc>:
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc00f00:	40027000 	mfc0	v0,c0_epc
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:9
bfc00f04:	03e00008 	jr	ra
bfc00f08:	00000000 	nop

bfc00f0c <get_cause>:
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc00f0c:	40026800 	mfc0	v0,c0_cause
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:19
bfc00f10:	03e00008 	jr	ra
bfc00f14:	00000000 	nop

bfc00f18 <exception>:
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc00f18:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:22
bfc00f1c:	27bdffe8 	addiu	sp,sp,-24
bfc00f20:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc00f24:	0ff0026c 	jal	bfc009b0 <printf>
bfc00f28:	24840194 	addiu	a0,a0,404
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc00f2c:	3c048000 	lui	a0,0x8000
bfc00f30:	248401b0 	addiu	a0,a0,432
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc00f34:	40057000 	mfc0	a1,c0_epc
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc00f38:	0ff0026c 	jal	bfc009b0 <printf>
bfc00f3c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc00f40:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc00f44:	8fbf0014 	lw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc00f48:	248401c0 	addiu	a0,a0,448
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc00f4c:	27bd0018 	addiu	sp,sp,24
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc00f50:	40056800 	mfc0	a1,c0_cause
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc00f54:	0bf0026c 	j	bfc009b0 <printf>
bfc00f58:	00000000 	nop
bfc00f5c:	00000000 	nop
