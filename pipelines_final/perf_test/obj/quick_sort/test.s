
obj/quick_sort/main.elf:     file format elf32-tradlittlemips
obj/quick_sort/main.elf


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
bfc00380:	0ff0093a 	jal	bfc024e8 <exception>
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
bfc0039c:	0ff008f9 	jal	bfc023e4 <get_count>
bfc003a0:	afb00014 	sw	s0,20(sp)
bfc003a4:	3c078000 	lui	a3,0x8000
bfc003a8:	24e401f0 	addiu	a0,a3,496
bfc003ac:	240503e8 	li	a1,1000
bfc003b0:	0ff00768 	jal	bfc01da0 <quick_sort>
bfc003b4:	00408021 	move	s0,v0
bfc003b8:	0ff008f9 	jal	bfc023e4 <get_count>
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
bfc00508:	0ff008a6 	jal	bfc02298 <puts>
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
bfc00558:	0bf007e0 	j	bfc01f80 <printf>
bfc0055c:	27bd0020 	addiu	sp,sp,32

bfc00560 <partition>:
partition():
bfc00560:	00053880 	sll	a3,a1,0x2
bfc00564:	00871821 	addu	v1,a0,a3
bfc00568:	00a6102a 	slt	v0,a1,a2
bfc0056c:	8c6a0000 	lw	t2,0(v1)
bfc00570:	1040008e 	beqz	v0,bfc007ac <partition+0x24c>
bfc00574:	00e05821 	move	t3,a3
bfc00578:	00063880 	sll	a3,a2,0x2
bfc0057c:	00874021 	addu	t0,a0,a3
bfc00580:	8d070000 	lw	a3,0(t0)
bfc00584:	00054827 	nor	t1,zero,a1
bfc00588:	01266021 	addu	t4,t1,a2
bfc0058c:	0147182a 	slt	v1,t2,a3
bfc00590:	31890007 	andi	t1,t4,0x7
bfc00594:	1060008a 	beqz	v1,bfc007c0 <partition+0x260>
bfc00598:	01006021 	move	t4,t0
bfc0059c:	24c6ffff 	addiu	a2,a2,-1
bfc005a0:	00a6182a 	slt	v1,a1,a2
bfc005a4:	10600078 	beqz	v1,bfc00788 <partition+0x228>
bfc005a8:	2508fffc 	addiu	t0,t0,-4
bfc005ac:	11200041 	beqz	t1,bfc006b4 <partition+0x154>
bfc005b0:	00000000 	nop
bfc005b4:	240c0001 	li	t4,1
bfc005b8:	112c0035 	beq	t1,t4,bfc00690 <partition+0x130>
bfc005bc:	240d0002 	li	t5,2
bfc005c0:	112d002c 	beq	t1,t5,bfc00674 <partition+0x114>
bfc005c4:	240e0003 	li	t6,3
bfc005c8:	112e0023 	beq	t1,t6,bfc00658 <partition+0xf8>
bfc005cc:	240f0004 	li	t7,4
bfc005d0:	112f001a 	beq	t1,t7,bfc0063c <partition+0xdc>
bfc005d4:	24180005 	li	t8,5
bfc005d8:	11380011 	beq	t1,t8,bfc00620 <partition+0xc0>
bfc005dc:	24190006 	li	t9,6
bfc005e0:	11390008 	beq	t1,t9,bfc00604 <partition+0xa4>
bfc005e4:	00000000 	nop
bfc005e8:	8d070000 	lw	a3,0(t0)
bfc005ec:	00000000 	nop
bfc005f0:	0147102a 	slt	v0,t2,a3
bfc005f4:	10400072 	beqz	v0,bfc007c0 <partition+0x260>
bfc005f8:	01006021 	move	t4,t0
bfc005fc:	24c6ffff 	addiu	a2,a2,-1
bfc00600:	2508fffc 	addiu	t0,t0,-4
bfc00604:	8d070000 	lw	a3,0(t0)
bfc00608:	00000000 	nop
bfc0060c:	0147482a 	slt	t1,t2,a3
bfc00610:	1120006b 	beqz	t1,bfc007c0 <partition+0x260>
bfc00614:	01006021 	move	t4,t0
bfc00618:	24c6ffff 	addiu	a2,a2,-1
bfc0061c:	2508fffc 	addiu	t0,t0,-4
bfc00620:	8d070000 	lw	a3,0(t0)
bfc00624:	00000000 	nop
bfc00628:	0147182a 	slt	v1,t2,a3
bfc0062c:	10600064 	beqz	v1,bfc007c0 <partition+0x260>
bfc00630:	01006021 	move	t4,t0
bfc00634:	24c6ffff 	addiu	a2,a2,-1
bfc00638:	2508fffc 	addiu	t0,t0,-4
bfc0063c:	8d070000 	lw	a3,0(t0)
bfc00640:	00000000 	nop
bfc00644:	0147682a 	slt	t5,t2,a3
bfc00648:	11a0005d 	beqz	t5,bfc007c0 <partition+0x260>
bfc0064c:	01006021 	move	t4,t0
bfc00650:	24c6ffff 	addiu	a2,a2,-1
bfc00654:	2508fffc 	addiu	t0,t0,-4
bfc00658:	8d070000 	lw	a3,0(t0)
bfc0065c:	00000000 	nop
bfc00660:	0147702a 	slt	t6,t2,a3
bfc00664:	11c00056 	beqz	t6,bfc007c0 <partition+0x260>
bfc00668:	01006021 	move	t4,t0
bfc0066c:	24c6ffff 	addiu	a2,a2,-1
bfc00670:	2508fffc 	addiu	t0,t0,-4
bfc00674:	8d070000 	lw	a3,0(t0)
bfc00678:	00000000 	nop
bfc0067c:	0147782a 	slt	t7,t2,a3
bfc00680:	11e0004f 	beqz	t7,bfc007c0 <partition+0x260>
bfc00684:	01006021 	move	t4,t0
bfc00688:	24c6ffff 	addiu	a2,a2,-1
bfc0068c:	2508fffc 	addiu	t0,t0,-4
bfc00690:	8d070000 	lw	a3,0(t0)
bfc00694:	00000000 	nop
bfc00698:	0147c02a 	slt	t8,t2,a3
bfc0069c:	13000048 	beqz	t8,bfc007c0 <partition+0x260>
bfc006a0:	01006021 	move	t4,t0
bfc006a4:	24c6ffff 	addiu	a2,a2,-1
bfc006a8:	00a6382a 	slt	a3,a1,a2
bfc006ac:	10e00036 	beqz	a3,bfc00788 <partition+0x228>
bfc006b0:	2508fffc 	addiu	t0,t0,-4
bfc006b4:	8d070000 	lw	a3,0(t0)
bfc006b8:	00000000 	nop
bfc006bc:	0147702a 	slt	t6,t2,a3
bfc006c0:	11c0003f 	beqz	t6,bfc007c0 <partition+0x260>
bfc006c4:	01006021 	move	t4,t0
bfc006c8:	2508fffc 	addiu	t0,t0,-4
bfc006cc:	8d070000 	lw	a3,0(t0)
bfc006d0:	24c6ffff 	addiu	a2,a2,-1
bfc006d4:	0147682a 	slt	t5,t2,a3
bfc006d8:	01001821 	move	v1,t0
bfc006dc:	00c04821 	move	t1,a2
bfc006e0:	11a00037 	beqz	t5,bfc007c0 <partition+0x260>
bfc006e4:	01006021 	move	t4,t0
bfc006e8:	2508fffc 	addiu	t0,t0,-4
bfc006ec:	8d070000 	lw	a3,0(t0)
bfc006f0:	24c6ffff 	addiu	a2,a2,-1
bfc006f4:	0147c82a 	slt	t9,t2,a3
bfc006f8:	13200031 	beqz	t9,bfc007c0 <partition+0x260>
bfc006fc:	01006021 	move	t4,t0
bfc00700:	8c67fff8 	lw	a3,-8(v1)
bfc00704:	2468fff8 	addiu	t0,v1,-8
bfc00708:	0147102a 	slt	v0,t2,a3
bfc0070c:	01006021 	move	t4,t0
bfc00710:	1040002b 	beqz	v0,bfc007c0 <partition+0x260>
bfc00714:	2526fffe 	addiu	a2,t1,-2
bfc00718:	8c67fff4 	lw	a3,-12(v1)
bfc0071c:	2468fff4 	addiu	t0,v1,-12
bfc00720:	0147682a 	slt	t5,t2,a3
bfc00724:	01006021 	move	t4,t0
bfc00728:	11a00025 	beqz	t5,bfc007c0 <partition+0x260>
bfc0072c:	2526fffd 	addiu	a2,t1,-3
bfc00730:	8c67fff0 	lw	a3,-16(v1)
bfc00734:	2468fff0 	addiu	t0,v1,-16
bfc00738:	0147702a 	slt	t6,t2,a3
bfc0073c:	01006021 	move	t4,t0
bfc00740:	11c0001f 	beqz	t6,bfc007c0 <partition+0x260>
bfc00744:	2526fffc 	addiu	a2,t1,-4
bfc00748:	8c67ffec 	lw	a3,-20(v1)
bfc0074c:	2468ffec 	addiu	t0,v1,-20
bfc00750:	0147782a 	slt	t7,t2,a3
bfc00754:	01006021 	move	t4,t0
bfc00758:	11e00019 	beqz	t7,bfc007c0 <partition+0x260>
bfc0075c:	2526fffb 	addiu	a2,t1,-5
bfc00760:	8c67ffe8 	lw	a3,-24(v1)
bfc00764:	2468ffe8 	addiu	t0,v1,-24
bfc00768:	0147c02a 	slt	t8,t2,a3
bfc0076c:	2526fffa 	addiu	a2,t1,-6
bfc00770:	13000013 	beqz	t8,bfc007c0 <partition+0x260>
bfc00774:	01006021 	move	t4,t0
bfc00778:	2526fff9 	addiu	a2,t1,-7
bfc0077c:	00a6602a 	slt	t4,a1,a2
bfc00780:	1580ffcc 	bnez	t4,bfc006b4 <partition+0x154>
bfc00784:	2468ffe4 	addiu	t0,v1,-28
bfc00788:	00064880 	sll	t1,a2,0x2
bfc0078c:	00896021 	addu	t4,a0,t1
bfc00790:	8d880000 	lw	t0,0(t4)
bfc00794:	008b3021 	addu	a2,a0,t3
bfc00798:	acc80000 	sw	t0,0(a2)
bfc0079c:	008b1821 	addu	v1,a0,t3
bfc007a0:	8c640000 	lw	a0,0(v1)
bfc007a4:	00000000 	nop
bfc007a8:	ad840000 	sw	a0,0(t4)
bfc007ac:	ac6a0000 	sw	t2,0(v1)
bfc007b0:	03e00008 	jr	ra
bfc007b4:	00a01021 	move	v0,a1
	...
bfc007c0:	008bc021 	addu	t8,a0,t3
bfc007c4:	00a6782a 	slt	t7,a1,a2
bfc007c8:	11e0fff4 	beqz	t7,bfc0079c <partition+0x23c>
bfc007cc:	af070000 	sw	a3,0(t8)
bfc007d0:	24a70001 	addiu	a3,a1,1
bfc007d4:	00c75823 	subu	t3,a2,a3
bfc007d8:	00072880 	sll	a1,a3,0x2
bfc007dc:	31690007 	andi	t1,t3,0x7
bfc007e0:	11200038 	beqz	t1,bfc008c4 <partition+0x364>
bfc007e4:	00851821 	addu	v1,a0,a1
bfc007e8:	8c650000 	lw	a1,0(v1)
bfc007ec:	24630004 	addiu	v1,v1,4
bfc007f0:	0145c02a 	slt	t8,t2,a1
bfc007f4:	1700006a 	bnez	t8,bfc009a0 <partition+0x440>
bfc007f8:	00e02821 	move	a1,a3
bfc007fc:	240b0001 	li	t3,1
bfc00800:	112b0030 	beq	t1,t3,bfc008c4 <partition+0x364>
bfc00804:	24e70001 	addiu	a3,a3,1
bfc00808:	24190002 	li	t9,2
bfc0080c:	11390027 	beq	t1,t9,bfc008ac <partition+0x34c>
bfc00810:	24020003 	li	v0,3
bfc00814:	1122001f 	beq	t1,v0,bfc00894 <partition+0x334>
bfc00818:	240d0004 	li	t5,4
bfc0081c:	112d0017 	beq	t1,t5,bfc0087c <partition+0x31c>
bfc00820:	240e0005 	li	t6,5
bfc00824:	112e000f 	beq	t1,t6,bfc00864 <partition+0x304>
bfc00828:	240f0006 	li	t7,6
bfc0082c:	112f0007 	beq	t1,t7,bfc0084c <partition+0x2ec>
bfc00830:	00000000 	nop
bfc00834:	8c780000 	lw	t8,0(v1)
bfc00838:	00e02821 	move	a1,a3
bfc0083c:	0158482a 	slt	t1,t2,t8
bfc00840:	15200057 	bnez	t1,bfc009a0 <partition+0x440>
bfc00844:	24630004 	addiu	v1,v1,4
bfc00848:	24e70001 	addiu	a3,a3,1
bfc0084c:	8c650000 	lw	a1,0(v1)
bfc00850:	24630004 	addiu	v1,v1,4
bfc00854:	0145582a 	slt	t3,t2,a1
bfc00858:	15600051 	bnez	t3,bfc009a0 <partition+0x440>
bfc0085c:	00e02821 	move	a1,a3
bfc00860:	24e70001 	addiu	a3,a3,1
bfc00864:	8c620000 	lw	v0,0(v1)
bfc00868:	00e02821 	move	a1,a3
bfc0086c:	0142c82a 	slt	t9,t2,v0
bfc00870:	1720004b 	bnez	t9,bfc009a0 <partition+0x440>
bfc00874:	24630004 	addiu	v1,v1,4
bfc00878:	24e70001 	addiu	a3,a3,1
bfc0087c:	8c6e0000 	lw	t6,0(v1)
bfc00880:	00e02821 	move	a1,a3
bfc00884:	014e682a 	slt	t5,t2,t6
bfc00888:	15a00045 	bnez	t5,bfc009a0 <partition+0x440>
bfc0088c:	24630004 	addiu	v1,v1,4
bfc00890:	24e70001 	addiu	a3,a3,1
bfc00894:	8c690000 	lw	t1,0(v1)
bfc00898:	00e02821 	move	a1,a3
bfc0089c:	0149782a 	slt	t7,t2,t1
bfc008a0:	15e0003f 	bnez	t7,bfc009a0 <partition+0x440>
bfc008a4:	24630004 	addiu	v1,v1,4
bfc008a8:	24e70001 	addiu	a3,a3,1
bfc008ac:	8c6b0000 	lw	t3,0(v1)
bfc008b0:	00e02821 	move	a1,a3
bfc008b4:	014bc02a 	slt	t8,t2,t3
bfc008b8:	17000039 	bnez	t8,bfc009a0 <partition+0x440>
bfc008bc:	24630004 	addiu	v1,v1,4
bfc008c0:	24e70001 	addiu	a3,a3,1
bfc008c4:	00e6c82a 	slt	t9,a3,a2
bfc008c8:	00e04821 	move	t1,a3
bfc008cc:	13200030 	beqz	t9,bfc00990 <partition+0x430>
bfc008d0:	00e02821 	move	a1,a3
bfc008d4:	8c6d0000 	lw	t5,0(v1)
bfc008d8:	00000000 	nop
bfc008dc:	014d102a 	slt	v0,t2,t5
bfc008e0:	14400030 	bnez	v0,bfc009a4 <partition+0x444>
bfc008e4:	00075880 	sll	t3,a3,0x2
bfc008e8:	8c6f0004 	lw	t7,4(v1)
bfc008ec:	24e70001 	addiu	a3,a3,1
bfc008f0:	014f702a 	slt	t6,t2,t7
bfc008f4:	00e05821 	move	t3,a3
bfc008f8:	15c00029 	bnez	t6,bfc009a0 <partition+0x440>
bfc008fc:	25250001 	addiu	a1,t1,1
bfc00900:	8c650008 	lw	a1,8(v1)
bfc00904:	24e70001 	addiu	a3,a3,1
bfc00908:	0145c82a 	slt	t9,t2,a1
bfc0090c:	17200024 	bnez	t9,bfc009a0 <partition+0x440>
bfc00910:	25250002 	addiu	a1,t1,2
bfc00914:	8c6d000c 	lw	t5,12(v1)
bfc00918:	25670002 	addiu	a3,t3,2
bfc0091c:	014d102a 	slt	v0,t2,t5
bfc00920:	1440001f 	bnez	v0,bfc009a0 <partition+0x440>
bfc00924:	25250003 	addiu	a1,t1,3
bfc00928:	8c6f0010 	lw	t7,16(v1)
bfc0092c:	25670003 	addiu	a3,t3,3
bfc00930:	014f702a 	slt	t6,t2,t7
bfc00934:	15c0001a 	bnez	t6,bfc009a0 <partition+0x440>
bfc00938:	25250004 	addiu	a1,t1,4
bfc0093c:	8c790014 	lw	t9,20(v1)
bfc00940:	25670004 	addiu	a3,t3,4
bfc00944:	0159c02a 	slt	t8,t2,t9
bfc00948:	17000015 	bnez	t8,bfc009a0 <partition+0x440>
bfc0094c:	25250005 	addiu	a1,t1,5
bfc00950:	8c650018 	lw	a1,24(v1)
bfc00954:	25670005 	addiu	a3,t3,5
bfc00958:	0145102a 	slt	v0,t2,a1
bfc0095c:	14400010 	bnez	v0,bfc009a0 <partition+0x440>
bfc00960:	25250006 	addiu	a1,t1,6
bfc00964:	8c67001c 	lw	a3,28(v1)
bfc00968:	25250007 	addiu	a1,t1,7
bfc0096c:	0147482a 	slt	t1,t2,a3
bfc00970:	24630020 	addiu	v1,v1,32
bfc00974:	1520000a 	bnez	t1,bfc009a0 <partition+0x440>
bfc00978:	25670006 	addiu	a3,t3,6
bfc0097c:	25670007 	addiu	a3,t3,7
bfc00980:	00e6c82a 	slt	t9,a3,a2
bfc00984:	00e04821 	move	t1,a3
bfc00988:	1720ffd2 	bnez	t9,bfc008d4 <partition+0x374>
bfc0098c:	00e02821 	move	a1,a3
bfc00990:	0bf001e7 	j	bfc0079c <partition+0x23c>
bfc00994:	00075880 	sll	t3,a3,0x2
	...
bfc009a0:	00075880 	sll	t3,a3,0x2
bfc009a4:	008b6021 	addu	t4,a0,t3
bfc009a8:	8d830000 	lw	v1,0(t4)
bfc009ac:	0bf0015e 	j	bfc00578 <partition+0x18>
bfc009b0:	ad030000 	sw	v1,0(t0)
	...

bfc009c0 <_quick_sort>:
_quick_sort():
bfc009c0:	27bdffa0 	addiu	sp,sp,-96
bfc009c4:	00a6102a 	slt	v0,a1,a2
bfc009c8:	afb20040 	sw	s2,64(sp)
bfc009cc:	afbf005c 	sw	ra,92(sp)
bfc009d0:	afbe0058 	sw	s8,88(sp)
bfc009d4:	afb70054 	sw	s7,84(sp)
bfc009d8:	afb60050 	sw	s6,80(sp)
bfc009dc:	afb5004c 	sw	s5,76(sp)
bfc009e0:	afb40048 	sw	s4,72(sp)
bfc009e4:	afb30044 	sw	s3,68(sp)
bfc009e8:	afb1003c 	sw	s1,60(sp)
bfc009ec:	afb00038 	sw	s0,56(sp)
bfc009f0:	afa60068 	sw	a2,104(sp)
bfc009f4:	104000ab 	beqz	v0,bfc00ca4 <_quick_sort+0x2e4>
bfc009f8:	00809021 	move	s2,a0
bfc009fc:	00056080 	sll	t4,a1,0x2
bfc00a00:	024c1821 	addu	v1,s2,t4
bfc00a04:	8c6a0000 	lw	t2,0(v1)
bfc00a08:	8fa60068 	lw	a2,104(sp)
bfc00a0c:	afa50030 	sw	a1,48(sp)
bfc00a10:	01803821 	move	a3,t4
bfc00a14:	0006f880 	sll	ra,a2,0x2
bfc00a18:	025f4021 	addu	t0,s2,ra
bfc00a1c:	8d040000 	lw	a0,0(t0)
bfc00a20:	00000000 	nop
bfc00a24:	0144582a 	slt	t3,t2,a0
bfc00a28:	116000aa 	beqz	t3,bfc00cd4 <_quick_sort+0x314>
bfc00a2c:	01004821 	move	t1,t0
bfc00a30:	8fa80030 	lw	t0,48(sp)
bfc00a34:	24c6ffff 	addiu	a2,a2,-1
bfc00a38:	0106202a 	slt	a0,t0,a2
bfc00a3c:	1480fff7 	bnez	a0,bfc00a1c <_quick_sort+0x5c>
bfc00a40:	2528fffc 	addiu	t0,t1,-4
bfc00a44:	00067080 	sll	t6,a2,0x2
bfc00a48:	024e4821 	addu	t1,s2,t6
bfc00a4c:	8d230000 	lw	v1,0(t1)
bfc00a50:	02474021 	addu	t0,s2,a3
bfc00a54:	ad030000 	sw	v1,0(t0)
bfc00a58:	8fbe0030 	lw	s8,48(sp)
bfc00a5c:	0247b821 	addu	s7,s2,a3
bfc00a60:	8ef80000 	lw	t8,0(s7)
bfc00a64:	27d9ffff 	addiu	t9,s8,-1
bfc00a68:	00b9b02a 	slt	s6,a1,t9
bfc00a6c:	ad380000 	sw	t8,0(t1)
bfc00a70:	afb9002c 	sw	t9,44(sp)
bfc00a74:	12c00085 	beqz	s6,bfc00c8c <_quick_sort+0x2cc>
bfc00a78:	aeea0000 	sw	t2,0(s7)
bfc00a7c:	024c1021 	addu	v0,s2,t4
bfc00a80:	8c4a0000 	lw	t2,0(v0)
bfc00a84:	8fa6002c 	lw	a2,44(sp)
bfc00a88:	afa5001c 	sw	a1,28(sp)
bfc00a8c:	00053880 	sll	a3,a1,0x2
bfc00a90:	0006f080 	sll	s8,a2,0x2
bfc00a94:	025e4021 	addu	t0,s2,s8
bfc00a98:	8d040000 	lw	a0,0(t0)
bfc00a9c:	00000000 	nop
bfc00aa0:	0144582a 	slt	t3,t2,a0
bfc00aa4:	116000a5 	beqz	t3,bfc00d3c <_quick_sort+0x37c>
bfc00aa8:	01004821 	move	t1,t0
bfc00aac:	8fa4001c 	lw	a0,28(sp)
bfc00ab0:	24c6ffff 	addiu	a2,a2,-1
bfc00ab4:	0086182a 	slt	v1,a0,a2
bfc00ab8:	1460fff7 	bnez	v1,bfc00a98 <_quick_sort+0xd8>
bfc00abc:	2528fffc 	addiu	t0,t1,-4
bfc00ac0:	00069880 	sll	s3,a2,0x2
bfc00ac4:	02534821 	addu	t1,s2,s3
bfc00ac8:	8d310000 	lw	s1,0(t1)
bfc00acc:	02477821 	addu	t7,s2,a3
bfc00ad0:	adf10000 	sw	s1,0(t7)
bfc00ad4:	8fb9001c 	lw	t9,28(sp)
bfc00ad8:	0247b021 	addu	s6,s2,a3
bfc00adc:	8ed70000 	lw	s7,0(s6)
bfc00ae0:	2738ffff 	addiu	t8,t9,-1
bfc00ae4:	00b8302a 	slt	a2,a1,t8
bfc00ae8:	ad370000 	sw	s7,0(t1)
bfc00aec:	afb80028 	sw	t8,40(sp)
bfc00af0:	10c000cc 	beqz	a2,bfc00e24 <_quick_sort+0x464>
bfc00af4:	aeca0000 	sw	t2,0(s6)
bfc00af8:	024cf821 	addu	ra,s2,t4
bfc00afc:	8fea0000 	lw	t2,0(ra)
bfc00b00:	8fa60028 	lw	a2,40(sp)
bfc00b04:	afa50014 	sw	a1,20(sp)
bfc00b08:	00053880 	sll	a3,a1,0x2
bfc00b0c:	0006c880 	sll	t9,a2,0x2
bfc00b10:	02594021 	addu	t0,s2,t9
bfc00b14:	8d040000 	lw	a0,0(t0)
bfc00b18:	00000000 	nop
bfc00b1c:	0144582a 	slt	t3,t2,a0
bfc00b20:	116000a6 	beqz	t3,bfc00dbc <_quick_sort+0x3fc>
bfc00b24:	01004821 	move	t1,t0
bfc00b28:	8fa30014 	lw	v1,20(sp)
bfc00b2c:	24c6ffff 	addiu	a2,a2,-1
bfc00b30:	0066102a 	slt	v0,v1,a2
bfc00b34:	1440fff7 	bnez	v0,bfc00b14 <_quick_sort+0x154>
bfc00b38:	2528fffc 	addiu	t0,t1,-4
bfc00b3c:	0006a880 	sll	s5,a2,0x2
bfc00b40:	02554821 	addu	t1,s2,s5
bfc00b44:	8d260000 	lw	a2,0(t1)
bfc00b48:	0247a021 	addu	s4,s2,a3
bfc00b4c:	ae860000 	sw	a2,0(s4)
bfc00b50:	8fb80014 	lw	t8,20(sp)
bfc00b54:	02473021 	addu	a2,s2,a3
bfc00b58:	8cd60000 	lw	s6,0(a2)
bfc00b5c:	2717ffff 	addiu	s7,t8,-1
bfc00b60:	00b7402a 	slt	t0,a1,s7
bfc00b64:	ad360000 	sw	s6,0(t1)
bfc00b68:	afb70018 	sw	s7,24(sp)
bfc00b6c:	110000cf 	beqz	t0,bfc00eac <_quick_sort+0x4ec>
bfc00b70:	acca0000 	sw	t2,0(a2)
bfc00b74:	024cf021 	addu	s8,s2,t4
bfc00b78:	8fa60018 	lw	a2,24(sp)
bfc00b7c:	8fca0000 	lw	t2,0(s8)
bfc00b80:	00053880 	sll	a3,a1,0x2
bfc00b84:	00a0f021 	move	s8,a1
bfc00b88:	00064880 	sll	t1,a2,0x2
bfc00b8c:	02494021 	addu	t0,s2,t1
bfc00b90:	8d040000 	lw	a0,0(t0)
bfc00b94:	00000000 	nop
bfc00b98:	0144102a 	slt	v0,t2,a0
bfc00b9c:	104000a9 	beqz	v0,bfc00e44 <_quick_sort+0x484>
bfc00ba0:	01004821 	move	t1,t0
bfc00ba4:	24c6ffff 	addiu	a2,a2,-1
bfc00ba8:	03c6f82a 	slt	ra,s8,a2
bfc00bac:	17e0fff8 	bnez	ra,bfc00b90 <_quick_sort+0x1d0>
bfc00bb0:	2528fffc 	addiu	t0,t1,-4
bfc00bb4:	00068080 	sll	s0,a2,0x2
bfc00bb8:	02504821 	addu	t1,s2,s0
bfc00bbc:	8d360000 	lw	s6,0(t1)
bfc00bc0:	0247b821 	addu	s7,s2,a3
bfc00bc4:	aef60000 	sw	s6,0(s7)
bfc00bc8:	02479821 	addu	s3,s2,a3
bfc00bcc:	8e740000 	lw	s4,0(s3)
bfc00bd0:	27d5ffff 	addiu	s5,s8,-1
bfc00bd4:	00b5882a 	slt	s1,a1,s5
bfc00bd8:	ad340000 	sw	s4,0(t1)
bfc00bdc:	afb50010 	sw	s5,16(sp)
bfc00be0:	12200460 	beqz	s1,bfc01d64 <_quick_sort+0x13a4>
bfc00be4:	ae6a0000 	sw	t2,0(s3)
bfc00be8:	024c4021 	addu	t0,s2,t4
bfc00bec:	8d0a0000 	lw	t2,0(t0)
bfc00bf0:	8fa60010 	lw	a2,16(sp)
bfc00bf4:	00a0b021 	move	s6,a1
bfc00bf8:	00053880 	sll	a3,a1,0x2
bfc00bfc:	00068080 	sll	s0,a2,0x2
bfc00c00:	0bf00308 	j	bfc00c20 <_quick_sort+0x260>
bfc00c04:	02504021 	addu	t0,s2,s0
	...
bfc00c10:	24c6ffff 	addiu	a2,a2,-1
bfc00c14:	02c6b82a 	slt	s7,s6,a2
bfc00c18:	12e000ac 	beqz	s7,bfc00ecc <_quick_sort+0x50c>
bfc00c1c:	2528fffc 	addiu	t0,t1,-4
bfc00c20:	8d040000 	lw	a0,0(t0)
bfc00c24:	00000000 	nop
bfc00c28:	0144c02a 	slt	t8,t2,a0
bfc00c2c:	1700fff8 	bnez	t8,bfc00c10 <_quick_sort+0x250>
bfc00c30:	01004821 	move	t1,t0
bfc00c34:	0247f821 	addu	ra,s2,a3
bfc00c38:	02c6c82a 	slt	t9,s6,a2
bfc00c3c:	132000a8 	beqz	t9,bfc00ee0 <_quick_sort+0x520>
bfc00c40:	afe40000 	sw	a0,0(ra)
bfc00c44:	26c40001 	addiu	a0,s6,1
bfc00c48:	0004b080 	sll	s6,a0,0x2
bfc00c4c:	0bf0031d 	j	bfc00c74 <_quick_sort+0x2b4>
bfc00c50:	02561821 	addu	v1,s2,s6
	...
bfc00c60:	8c6d0000 	lw	t5,0(v1)
bfc00c64:	00000000 	nop
bfc00c68:	014d582a 	slt	t3,t2,t5
bfc00c6c:	15600438 	bnez	t3,bfc01d50 <_quick_sort+0x1390>
bfc00c70:	24630004 	addiu	v1,v1,4
bfc00c74:	0080b021 	move	s6,a0
bfc00c78:	02c6102a 	slt	v0,s6,a2
bfc00c7c:	1440fff8 	bnez	v0,bfc00c60 <_quick_sort+0x2a0>
bfc00c80:	24840001 	addiu	a0,a0,1
bfc00c84:	0bf003b8 	j	bfc00ee0 <_quick_sort+0x520>
bfc00c88:	00163880 	sll	a3,s6,0x2
bfc00c8c:	8fa90030 	lw	t1,48(sp)
bfc00c90:	8fab0068 	lw	t3,104(sp)
bfc00c94:	25250001 	addiu	a1,t1,1
bfc00c98:	00ab202a 	slt	a0,a1,t3
bfc00c9c:	1480ff58 	bnez	a0,bfc00a00 <_quick_sort+0x40>
bfc00ca0:	00056080 	sll	t4,a1,0x2
bfc00ca4:	8fbf005c 	lw	ra,92(sp)
bfc00ca8:	8fbe0058 	lw	s8,88(sp)
bfc00cac:	8fb70054 	lw	s7,84(sp)
bfc00cb0:	8fb60050 	lw	s6,80(sp)
bfc00cb4:	8fb5004c 	lw	s5,76(sp)
bfc00cb8:	8fb40048 	lw	s4,72(sp)
bfc00cbc:	8fb30044 	lw	s3,68(sp)
bfc00cc0:	8fb20040 	lw	s2,64(sp)
bfc00cc4:	8fb1003c 	lw	s1,60(sp)
bfc00cc8:	8fb00038 	lw	s0,56(sp)
bfc00ccc:	03e00008 	jr	ra
bfc00cd0:	27bd0060 	addiu	sp,sp,96
bfc00cd4:	8fab0030 	lw	t3,48(sp)
bfc00cd8:	02477021 	addu	t6,s2,a3
bfc00cdc:	0166682a 	slt	t5,t3,a2
bfc00ce0:	11a0ff5d 	beqz	t5,bfc00a58 <_quick_sort+0x98>
bfc00ce4:	adc40000 	sw	a0,0(t6)
bfc00ce8:	25640001 	addiu	a0,t3,1
bfc00cec:	00043880 	sll	a3,a0,0x2
bfc00cf0:	02471821 	addu	v1,s2,a3
bfc00cf4:	afa40030 	sw	a0,48(sp)
bfc00cf8:	8fb00030 	lw	s0,48(sp)
bfc00cfc:	00000000 	nop
bfc00d00:	0206782a 	slt	t7,s0,a2
bfc00d04:	11e0002a 	beqz	t7,bfc00db0 <_quick_sort+0x3f0>
bfc00d08:	24840001 	addiu	a0,a0,1
bfc00d0c:	8c730000 	lw	s3,0(v1)
bfc00d10:	00000000 	nop
bfc00d14:	0153882a 	slt	s1,t2,s3
bfc00d18:	1220fff6 	beqz	s1,bfc00cf4 <_quick_sort+0x334>
bfc00d1c:	24630004 	addiu	v1,v1,4
bfc00d20:	8fb50030 	lw	s5,48(sp)
bfc00d24:	00000000 	nop
bfc00d28:	00153880 	sll	a3,s5,0x2
bfc00d2c:	0247a021 	addu	s4,s2,a3
bfc00d30:	8e890000 	lw	t1,0(s4)
bfc00d34:	0bf00285 	j	bfc00a14 <_quick_sort+0x54>
bfc00d38:	ad090000 	sw	t1,0(t0)
bfc00d3c:	8fab001c 	lw	t3,28(sp)
bfc00d40:	02477021 	addu	t6,s2,a3
bfc00d44:	0166682a 	slt	t5,t3,a2
bfc00d48:	11a0ff62 	beqz	t5,bfc00ad4 <_quick_sort+0x114>
bfc00d4c:	adc40000 	sw	a0,0(t6)
bfc00d50:	25640001 	addiu	a0,t3,1
bfc00d54:	00043880 	sll	a3,a0,0x2
bfc00d58:	02471821 	addu	v1,s2,a3
bfc00d5c:	afa4001c 	sw	a0,28(sp)
bfc00d60:	8fb0001c 	lw	s0,28(sp)
bfc00d64:	00000000 	nop
bfc00d68:	0206782a 	slt	t7,s0,a2
bfc00d6c:	11e0000d 	beqz	t7,bfc00da4 <_quick_sort+0x3e4>
bfc00d70:	24840001 	addiu	a0,a0,1
bfc00d74:	8c730000 	lw	s3,0(v1)
bfc00d78:	00000000 	nop
bfc00d7c:	0153882a 	slt	s1,t2,s3
bfc00d80:	1220fff6 	beqz	s1,bfc00d5c <_quick_sort+0x39c>
bfc00d84:	24630004 	addiu	v1,v1,4
bfc00d88:	8fb5001c 	lw	s5,28(sp)
bfc00d8c:	00000000 	nop
bfc00d90:	00153880 	sll	a3,s5,0x2
bfc00d94:	0247a021 	addu	s4,s2,a3
bfc00d98:	8e890000 	lw	t1,0(s4)
bfc00d9c:	0bf002a4 	j	bfc00a90 <_quick_sort+0xd0>
bfc00da0:	ad090000 	sw	t1,0(t0)
bfc00da4:	8fa8001c 	lw	t0,28(sp)
bfc00da8:	0bf002b5 	j	bfc00ad4 <_quick_sort+0x114>
bfc00dac:	00083880 	sll	a3,t0,0x2
bfc00db0:	8fa60030 	lw	a2,48(sp)
bfc00db4:	0bf00296 	j	bfc00a58 <_quick_sort+0x98>
bfc00db8:	00063880 	sll	a3,a2,0x2
bfc00dbc:	8fab0014 	lw	t3,20(sp)
bfc00dc0:	02477021 	addu	t6,s2,a3
bfc00dc4:	0166682a 	slt	t5,t3,a2
bfc00dc8:	11a0ff61 	beqz	t5,bfc00b50 <_quick_sort+0x190>
bfc00dcc:	adc40000 	sw	a0,0(t6)
bfc00dd0:	25640001 	addiu	a0,t3,1
bfc00dd4:	00043880 	sll	a3,a0,0x2
bfc00dd8:	02471821 	addu	v1,s2,a3
bfc00ddc:	afa40014 	sw	a0,20(sp)
bfc00de0:	8fb00014 	lw	s0,20(sp)
bfc00de4:	00000000 	nop
bfc00de8:	0206782a 	slt	t7,s0,a2
bfc00dec:	11e0002a 	beqz	t7,bfc00e98 <_quick_sort+0x4d8>
bfc00df0:	24840001 	addiu	a0,a0,1
bfc00df4:	8c730000 	lw	s3,0(v1)
bfc00df8:	00000000 	nop
bfc00dfc:	0153882a 	slt	s1,t2,s3
bfc00e00:	1220fff6 	beqz	s1,bfc00ddc <_quick_sort+0x41c>
bfc00e04:	24630004 	addiu	v1,v1,4
bfc00e08:	8fb50014 	lw	s5,20(sp)
bfc00e0c:	00000000 	nop
bfc00e10:	00153880 	sll	a3,s5,0x2
bfc00e14:	0247a021 	addu	s4,s2,a3
bfc00e18:	8e890000 	lw	t1,0(s4)
bfc00e1c:	0bf002c3 	j	bfc00b0c <_quick_sort+0x14c>
bfc00e20:	ad090000 	sw	t1,0(t0)
bfc00e24:	8fad001c 	lw	t5,28(sp)
bfc00e28:	8fa2002c 	lw	v0,44(sp)
bfc00e2c:	25a50001 	addiu	a1,t5,1
bfc00e30:	00a2f82a 	slt	ra,a1,v0
bfc00e34:	13e0ff95 	beqz	ra,bfc00c8c <_quick_sort+0x2cc>
bfc00e38:	00056080 	sll	t4,a1,0x2
bfc00e3c:	0bf002a0 	j	bfc00a80 <_quick_sort+0xc0>
bfc00e40:	024c1021 	addu	v0,s2,t4
bfc00e44:	02475821 	addu	t3,s2,a3
bfc00e48:	03c6182a 	slt	v1,s8,a2
bfc00e4c:	1060ff5e 	beqz	v1,bfc00bc8 <_quick_sort+0x208>
bfc00e50:	ad640000 	sw	a0,0(t3)
bfc00e54:	27c40001 	addiu	a0,s8,1
bfc00e58:	00046880 	sll	t5,a0,0x2
bfc00e5c:	024d1821 	addu	v1,s2,t5
bfc00e60:	0080f021 	move	s8,a0
bfc00e64:	03c6702a 	slt	t6,s8,a2
bfc00e68:	11c0000e 	beqz	t6,bfc00ea4 <_quick_sort+0x4e4>
bfc00e6c:	24840001 	addiu	a0,a0,1
bfc00e70:	8c6f0000 	lw	t7,0(v1)
bfc00e74:	00000000 	nop
bfc00e78:	014f382a 	slt	a3,t2,t7
bfc00e7c:	10e0fff8 	beqz	a3,bfc00e60 <_quick_sort+0x4a0>
bfc00e80:	24630004 	addiu	v1,v1,4
bfc00e84:	001e3880 	sll	a3,s8,0x2
bfc00e88:	02472021 	addu	a0,s2,a3
bfc00e8c:	8c900000 	lw	s0,0(a0)
bfc00e90:	0bf002e2 	j	bfc00b88 <_quick_sort+0x1c8>
bfc00e94:	ad100000 	sw	s0,0(t0)
bfc00e98:	8fa40014 	lw	a0,20(sp)
bfc00e9c:	0bf002d4 	j	bfc00b50 <_quick_sort+0x190>
bfc00ea0:	00043880 	sll	a3,a0,0x2
bfc00ea4:	0bf002f2 	j	bfc00bc8 <_quick_sort+0x208>
bfc00ea8:	001e3880 	sll	a3,s8,0x2
bfc00eac:	8fb90014 	lw	t9,20(sp)
bfc00eb0:	8fb80028 	lw	t8,40(sp)
bfc00eb4:	27250001 	addiu	a1,t9,1
bfc00eb8:	00b8502a 	slt	t2,a1,t8
bfc00ebc:	1140ffd9 	beqz	t2,bfc00e24 <_quick_sort+0x464>
bfc00ec0:	00056080 	sll	t4,a1,0x2
bfc00ec4:	0bf002bf 	j	bfc00afc <_quick_sort+0x13c>
bfc00ec8:	024cf821 	addu	ra,s2,t4
bfc00ecc:	0006f880 	sll	ra,a2,0x2
bfc00ed0:	025f4821 	addu	t1,s2,ra
bfc00ed4:	8d390000 	lw	t9,0(t1)
bfc00ed8:	0247c021 	addu	t8,s2,a3
bfc00edc:	af190000 	sw	t9,0(t8)
bfc00ee0:	02477821 	addu	t7,s2,a3
bfc00ee4:	8de70000 	lw	a3,0(t7)
bfc00ee8:	26d7ffff 	addiu	s7,s6,-1
bfc00eec:	00b7302a 	slt	a2,a1,s7
bfc00ef0:	ad270000 	sw	a3,0(t1)
bfc00ef4:	10c00025 	beqz	a2,bfc00f8c <_quick_sort+0x5cc>
bfc00ef8:	adea0000 	sw	t2,0(t7)
bfc00efc:	024c2021 	addu	a0,s2,t4
bfc00f00:	8c8a0000 	lw	t2,0(a0)
bfc00f04:	02e03021 	move	a2,s7
bfc00f08:	00a0a821 	move	s5,a1
bfc00f0c:	00053880 	sll	a3,a1,0x2
bfc00f10:	00067880 	sll	t7,a2,0x2
bfc00f14:	0bf003cb 	j	bfc00f2c <_quick_sort+0x56c>
bfc00f18:	024f4021 	addu	t0,s2,t7
bfc00f1c:	24c6ffff 	addiu	a2,a2,-1
bfc00f20:	02a6882a 	slt	s1,s5,a2
bfc00f24:	12200021 	beqz	s1,bfc00fac <_quick_sort+0x5ec>
bfc00f28:	2528fffc 	addiu	t0,t1,-4
bfc00f2c:	8d040000 	lw	a0,0(t0)
bfc00f30:	00000000 	nop
bfc00f34:	0144982a 	slt	s3,t2,a0
bfc00f38:	1660fff8 	bnez	s3,bfc00f1c <_quick_sort+0x55c>
bfc00f3c:	01004821 	move	t1,t0
bfc00f40:	0247c021 	addu	t8,s2,a3
bfc00f44:	02a6a02a 	slt	s4,s5,a2
bfc00f48:	1280001d 	beqz	s4,bfc00fc0 <_quick_sort+0x600>
bfc00f4c:	af040000 	sw	a0,0(t8)
bfc00f50:	26a40001 	addiu	a0,s5,1
bfc00f54:	0004a880 	sll	s5,a0,0x2
bfc00f58:	0bf003dd 	j	bfc00f74 <_quick_sort+0x5b4>
bfc00f5c:	02551821 	addu	v1,s2,s5
bfc00f60:	8c620000 	lw	v0,0(v1)
bfc00f64:	00000000 	nop
bfc00f68:	0142f82a 	slt	ra,t2,v0
bfc00f6c:	17e00384 	bnez	ra,bfc01d80 <_quick_sort+0x13c0>
bfc00f70:	24630004 	addiu	v1,v1,4
bfc00f74:	0080a821 	move	s5,a0
bfc00f78:	02a6c82a 	slt	t9,s5,a2
bfc00f7c:	1720fff8 	bnez	t9,bfc00f60 <_quick_sort+0x5a0>
bfc00f80:	24840001 	addiu	a0,a0,1
bfc00f84:	0bf003f0 	j	bfc00fc0 <_quick_sort+0x600>
bfc00f88:	00153880 	sll	a3,s5,0x2
bfc00f8c:	26c50001 	addiu	a1,s6,1
bfc00f90:	8fb60010 	lw	s6,16(sp)
bfc00f94:	00000000 	nop
bfc00f98:	00b6b82a 	slt	s7,a1,s6
bfc00f9c:	12e00371 	beqz	s7,bfc01d64 <_quick_sort+0x13a4>
bfc00fa0:	00056080 	sll	t4,a1,0x2
bfc00fa4:	0bf002fb 	j	bfc00bec <_quick_sort+0x22c>
bfc00fa8:	024c4021 	addu	t0,s2,t4
bfc00fac:	00062080 	sll	a0,a2,0x2
bfc00fb0:	02444821 	addu	t1,s2,a0
bfc00fb4:	8d2d0000 	lw	t5,0(t1)
bfc00fb8:	02471021 	addu	v0,s2,a3
bfc00fbc:	ac4d0000 	sw	t5,0(v0)
bfc00fc0:	02476821 	addu	t5,s2,a3
bfc00fc4:	8da30000 	lw	v1,0(t5)
bfc00fc8:	26aeffff 	addiu	t6,s5,-1
bfc00fcc:	00ae402a 	slt	t0,a1,t6
bfc00fd0:	ad230000 	sw	v1,0(t1)
bfc00fd4:	afae0024 	sw	t6,36(sp)
bfc00fd8:	11000357 	beqz	t0,bfc01d38 <_quick_sort+0x1378>
bfc00fdc:	adaa0000 	sw	t2,0(t5)
bfc00fe0:	024c5021 	addu	t2,s2,t4
bfc00fe4:	8d490000 	lw	t1,0(t2)
bfc00fe8:	8fa80024 	lw	t0,36(sp)
bfc00fec:	00a0a021 	move	s4,a1
bfc00ff0:	00055880 	sll	t3,a1,0x2
bfc00ff4:	00088880 	sll	s1,t0,0x2
bfc00ff8:	02513821 	addu	a3,s2,s1
bfc00ffc:	8ce40000 	lw	a0,0(a3)
bfc01000:	00143027 	nor	a2,zero,s4
bfc01004:	00c85021 	addu	t2,a2,t0
bfc01008:	0124802a 	slt	s0,t1,a0
bfc0100c:	31460007 	andi	a2,t2,0x7
bfc01010:	120001bc 	beqz	s0,bfc01704 <_quick_sort+0xd44>
bfc01014:	00e05021 	move	t2,a3
bfc01018:	2508ffff 	addiu	t0,t0,-1
bfc0101c:	0288502a 	slt	t2,s4,t0
bfc01020:	11400077 	beqz	t2,bfc01200 <_quick_sort+0x840>
bfc01024:	24e7fffc 	addiu	a3,a3,-4
bfc01028:	10c00040 	beqz	a2,bfc0112c <_quick_sort+0x76c>
bfc0102c:	24030001 	li	v1,1
bfc01030:	10c30035 	beq	a2,v1,bfc01108 <_quick_sort+0x748>
bfc01034:	240f0002 	li	t7,2
bfc01038:	10cf002c 	beq	a2,t7,bfc010ec <_quick_sort+0x72c>
bfc0103c:	24130003 	li	s3,3
bfc01040:	10d30023 	beq	a2,s3,bfc010d0 <_quick_sort+0x710>
bfc01044:	24100004 	li	s0,4
bfc01048:	10d0001a 	beq	a2,s0,bfc010b4 <_quick_sort+0x6f4>
bfc0104c:	24180005 	li	t8,5
bfc01050:	10d80011 	beq	a2,t8,bfc01098 <_quick_sort+0x6d8>
bfc01054:	24190006 	li	t9,6
bfc01058:	10d90008 	beq	a2,t9,bfc0107c <_quick_sort+0x6bc>
bfc0105c:	00000000 	nop
bfc01060:	8ce40000 	lw	a0,0(a3)
bfc01064:	00000000 	nop
bfc01068:	0124882a 	slt	s1,t1,a0
bfc0106c:	122001a5 	beqz	s1,bfc01704 <_quick_sort+0xd44>
bfc01070:	00e05021 	move	t2,a3
bfc01074:	2508ffff 	addiu	t0,t0,-1
bfc01078:	24e7fffc 	addiu	a3,a3,-4
bfc0107c:	8ce40000 	lw	a0,0(a3)
bfc01080:	00000000 	nop
bfc01084:	0124f82a 	slt	ra,t1,a0
bfc01088:	13e0019e 	beqz	ra,bfc01704 <_quick_sort+0xd44>
bfc0108c:	00e05021 	move	t2,a3
bfc01090:	2508ffff 	addiu	t0,t0,-1
bfc01094:	24e7fffc 	addiu	a3,a3,-4
bfc01098:	8ce40000 	lw	a0,0(a3)
bfc0109c:	00000000 	nop
bfc010a0:	0124102a 	slt	v0,t1,a0
bfc010a4:	10400197 	beqz	v0,bfc01704 <_quick_sort+0xd44>
bfc010a8:	00e05021 	move	t2,a3
bfc010ac:	2508ffff 	addiu	t0,t0,-1
bfc010b0:	24e7fffc 	addiu	a3,a3,-4
bfc010b4:	8ce40000 	lw	a0,0(a3)
bfc010b8:	00000000 	nop
bfc010bc:	0124682a 	slt	t5,t1,a0
bfc010c0:	11a00190 	beqz	t5,bfc01704 <_quick_sort+0xd44>
bfc010c4:	00e05021 	move	t2,a3
bfc010c8:	2508ffff 	addiu	t0,t0,-1
bfc010cc:	24e7fffc 	addiu	a3,a3,-4
bfc010d0:	8ce40000 	lw	a0,0(a3)
bfc010d4:	00000000 	nop
bfc010d8:	0124702a 	slt	t6,t1,a0
bfc010dc:	11c00189 	beqz	t6,bfc01704 <_quick_sort+0xd44>
bfc010e0:	00e05021 	move	t2,a3
bfc010e4:	2508ffff 	addiu	t0,t0,-1
bfc010e8:	24e7fffc 	addiu	a3,a3,-4
bfc010ec:	8ce40000 	lw	a0,0(a3)
bfc010f0:	00000000 	nop
bfc010f4:	0124302a 	slt	a2,t1,a0
bfc010f8:	10c00182 	beqz	a2,bfc01704 <_quick_sort+0xd44>
bfc010fc:	00e05021 	move	t2,a3
bfc01100:	2508ffff 	addiu	t0,t0,-1
bfc01104:	24e7fffc 	addiu	a3,a3,-4
bfc01108:	8ce40000 	lw	a0,0(a3)
bfc0110c:	00000000 	nop
bfc01110:	0124182a 	slt	v1,t1,a0
bfc01114:	1060017b 	beqz	v1,bfc01704 <_quick_sort+0xd44>
bfc01118:	00e05021 	move	t2,a3
bfc0111c:	2508ffff 	addiu	t0,t0,-1
bfc01120:	0288202a 	slt	a0,s4,t0
bfc01124:	10800036 	beqz	a0,bfc01200 <_quick_sort+0x840>
bfc01128:	24e7fffc 	addiu	a3,a3,-4
bfc0112c:	8ce40000 	lw	a0,0(a3)
bfc01130:	00000000 	nop
bfc01134:	0124302a 	slt	a2,t1,a0
bfc01138:	10c00172 	beqz	a2,bfc01704 <_quick_sort+0xd44>
bfc0113c:	00e05021 	move	t2,a3
bfc01140:	24e7fffc 	addiu	a3,a3,-4
bfc01144:	8ce40000 	lw	a0,0(a3)
bfc01148:	2508ffff 	addiu	t0,t0,-1
bfc0114c:	0124802a 	slt	s0,t1,a0
bfc01150:	00e01821 	move	v1,a3
bfc01154:	01003021 	move	a2,t0
bfc01158:	1200016a 	beqz	s0,bfc01704 <_quick_sort+0xd44>
bfc0115c:	00e05021 	move	t2,a3
bfc01160:	24e7fffc 	addiu	a3,a3,-4
bfc01164:	8ce40000 	lw	a0,0(a3)
bfc01168:	2508ffff 	addiu	t0,t0,-1
bfc0116c:	0124782a 	slt	t7,t1,a0
bfc01170:	11e00164 	beqz	t7,bfc01704 <_quick_sort+0xd44>
bfc01174:	00e05021 	move	t2,a3
bfc01178:	8c64fff8 	lw	a0,-8(v1)
bfc0117c:	2467fff8 	addiu	a3,v1,-8
bfc01180:	0124982a 	slt	s3,t1,a0
bfc01184:	00e05021 	move	t2,a3
bfc01188:	1260015e 	beqz	s3,bfc01704 <_quick_sort+0xd44>
bfc0118c:	24c8fffe 	addiu	t0,a2,-2
bfc01190:	8c64fff4 	lw	a0,-12(v1)
bfc01194:	2467fff4 	addiu	a3,v1,-12
bfc01198:	0124802a 	slt	s0,t1,a0
bfc0119c:	00e05021 	move	t2,a3
bfc011a0:	12000158 	beqz	s0,bfc01704 <_quick_sort+0xd44>
bfc011a4:	24c8fffd 	addiu	t0,a2,-3
bfc011a8:	8c64fff0 	lw	a0,-16(v1)
bfc011ac:	2467fff0 	addiu	a3,v1,-16
bfc011b0:	0124c02a 	slt	t8,t1,a0
bfc011b4:	00e05021 	move	t2,a3
bfc011b8:	13000152 	beqz	t8,bfc01704 <_quick_sort+0xd44>
bfc011bc:	24c8fffc 	addiu	t0,a2,-4
bfc011c0:	8c64ffec 	lw	a0,-20(v1)
bfc011c4:	2467ffec 	addiu	a3,v1,-20
bfc011c8:	0124c82a 	slt	t9,t1,a0
bfc011cc:	00e05021 	move	t2,a3
bfc011d0:	1320014c 	beqz	t9,bfc01704 <_quick_sort+0xd44>
bfc011d4:	24c8fffb 	addiu	t0,a2,-5
bfc011d8:	8c64ffe8 	lw	a0,-24(v1)
bfc011dc:	2467ffe8 	addiu	a3,v1,-24
bfc011e0:	0124882a 	slt	s1,t1,a0
bfc011e4:	24c8fffa 	addiu	t0,a2,-6
bfc011e8:	12200146 	beqz	s1,bfc01704 <_quick_sort+0xd44>
bfc011ec:	00e05021 	move	t2,a3
bfc011f0:	24c8fff9 	addiu	t0,a2,-7
bfc011f4:	0288502a 	slt	t2,s4,t0
bfc011f8:	1540ffcc 	bnez	t2,bfc0112c <_quick_sort+0x76c>
bfc011fc:	2467ffe4 	addiu	a3,v1,-28
bfc01200:	00081880 	sll	v1,t0,0x2
bfc01204:	02435021 	addu	t2,s2,v1
bfc01208:	8d480000 	lw	t0,0(t2)
bfc0120c:	024b3821 	addu	a3,s2,t3
bfc01210:	ace80000 	sw	t0,0(a3)
bfc01214:	024b4021 	addu	t0,s2,t3
bfc01218:	8d0e0000 	lw	t6,0(t0)
bfc0121c:	268fffff 	addiu	t7,s4,-1
bfc01220:	00af382a 	slt	a3,a1,t7
bfc01224:	ad4e0000 	sw	t6,0(t2)
bfc01228:	afaf0020 	sw	t7,32(sp)
bfc0122c:	10e002bd 	beqz	a3,bfc01d24 <_quick_sort+0x1364>
bfc01230:	ad090000 	sw	t1,0(t0)
bfc01234:	024c9821 	addu	s3,s2,t4
bfc01238:	8e690000 	lw	t1,0(s3)
bfc0123c:	8fa80020 	lw	t0,32(sp)
bfc01240:	00a08821 	move	s1,a1
bfc01244:	00055080 	sll	t2,a1,0x2
bfc01248:	00081080 	sll	v0,t0,0x2
bfc0124c:	02423021 	addu	a2,s2,v0
bfc01250:	8cc40000 	lw	a0,0(a2)
bfc01254:	0011f827 	nor	ra,zero,s1
bfc01258:	03e8c821 	addu	t9,ra,t0
bfc0125c:	0124c02a 	slt	t8,t1,a0
bfc01260:	33270007 	andi	a3,t9,0x7
bfc01264:	13000232 	beqz	t8,bfc01b30 <_quick_sort+0x1170>
bfc01268:	00c05821 	move	t3,a2
bfc0126c:	2508ffff 	addiu	t0,t0,-1
bfc01270:	0228182a 	slt	v1,s1,t0
bfc01274:	10600078 	beqz	v1,bfc01458 <_quick_sort+0xa98>
bfc01278:	24c6fffc 	addiu	a2,a2,-4
bfc0127c:	10e00041 	beqz	a3,bfc01384 <_quick_sort+0x9c4>
bfc01280:	00000000 	nop
bfc01284:	240b0001 	li	t3,1
bfc01288:	10eb0035 	beq	a3,t3,bfc01360 <_quick_sort+0x9a0>
bfc0128c:	240d0002 	li	t5,2
bfc01290:	10ed002c 	beq	a3,t5,bfc01344 <_quick_sort+0x984>
bfc01294:	240e0003 	li	t6,3
bfc01298:	10ee0023 	beq	a3,t6,bfc01328 <_quick_sort+0x968>
bfc0129c:	240f0004 	li	t7,4
bfc012a0:	10ef001a 	beq	a3,t7,bfc0130c <_quick_sort+0x94c>
bfc012a4:	24130005 	li	s3,5
bfc012a8:	10f30011 	beq	a3,s3,bfc012f0 <_quick_sort+0x930>
bfc012ac:	24100006 	li	s0,6
bfc012b0:	10f00008 	beq	a3,s0,bfc012d4 <_quick_sort+0x914>
bfc012b4:	00000000 	nop
bfc012b8:	8cc40000 	lw	a0,0(a2)
bfc012bc:	00000000 	nop
bfc012c0:	0124c02a 	slt	t8,t1,a0
bfc012c4:	1300021a 	beqz	t8,bfc01b30 <_quick_sort+0x1170>
bfc012c8:	00c05821 	move	t3,a2
bfc012cc:	2508ffff 	addiu	t0,t0,-1
bfc012d0:	24c6fffc 	addiu	a2,a2,-4
bfc012d4:	8cc40000 	lw	a0,0(a2)
bfc012d8:	00000000 	nop
bfc012dc:	0124c82a 	slt	t9,t1,a0
bfc012e0:	13200213 	beqz	t9,bfc01b30 <_quick_sort+0x1170>
bfc012e4:	00c05821 	move	t3,a2
bfc012e8:	2508ffff 	addiu	t0,t0,-1
bfc012ec:	24c6fffc 	addiu	a2,a2,-4
bfc012f0:	8cc40000 	lw	a0,0(a2)
bfc012f4:	00000000 	nop
bfc012f8:	0124f82a 	slt	ra,t1,a0
bfc012fc:	13e0020c 	beqz	ra,bfc01b30 <_quick_sort+0x1170>
bfc01300:	00c05821 	move	t3,a2
bfc01304:	2508ffff 	addiu	t0,t0,-1
bfc01308:	24c6fffc 	addiu	a2,a2,-4
bfc0130c:	8cc40000 	lw	a0,0(a2)
bfc01310:	00000000 	nop
bfc01314:	0124102a 	slt	v0,t1,a0
bfc01318:	10400205 	beqz	v0,bfc01b30 <_quick_sort+0x1170>
bfc0131c:	00c05821 	move	t3,a2
bfc01320:	2508ffff 	addiu	t0,t0,-1
bfc01324:	24c6fffc 	addiu	a2,a2,-4
bfc01328:	8cc40000 	lw	a0,0(a2)
bfc0132c:	00000000 	nop
bfc01330:	0124382a 	slt	a3,t1,a0
bfc01334:	10e001fe 	beqz	a3,bfc01b30 <_quick_sort+0x1170>
bfc01338:	00c05821 	move	t3,a2
bfc0133c:	2508ffff 	addiu	t0,t0,-1
bfc01340:	24c6fffc 	addiu	a2,a2,-4
bfc01344:	8cc40000 	lw	a0,0(a2)
bfc01348:	00000000 	nop
bfc0134c:	0124182a 	slt	v1,t1,a0
bfc01350:	106001f7 	beqz	v1,bfc01b30 <_quick_sort+0x1170>
bfc01354:	00c05821 	move	t3,a2
bfc01358:	2508ffff 	addiu	t0,t0,-1
bfc0135c:	24c6fffc 	addiu	a2,a2,-4
bfc01360:	8cc40000 	lw	a0,0(a2)
bfc01364:	00000000 	nop
bfc01368:	0124682a 	slt	t5,t1,a0
bfc0136c:	11a001f0 	beqz	t5,bfc01b30 <_quick_sort+0x1170>
bfc01370:	00c05821 	move	t3,a2
bfc01374:	2508ffff 	addiu	t0,t0,-1
bfc01378:	0228202a 	slt	a0,s1,t0
bfc0137c:	10800036 	beqz	a0,bfc01458 <_quick_sort+0xa98>
bfc01380:	24c6fffc 	addiu	a2,a2,-4
bfc01384:	8cc40000 	lw	a0,0(a2)
bfc01388:	00000000 	nop
bfc0138c:	0124c82a 	slt	t9,t1,a0
bfc01390:	132001e7 	beqz	t9,bfc01b30 <_quick_sort+0x1170>
bfc01394:	00c05821 	move	t3,a2
bfc01398:	24c6fffc 	addiu	a2,a2,-4
bfc0139c:	8cc40000 	lw	a0,0(a2)
bfc013a0:	2508ffff 	addiu	t0,t0,-1
bfc013a4:	0124c02a 	slt	t8,t1,a0
bfc013a8:	00c01821 	move	v1,a2
bfc013ac:	01003821 	move	a3,t0
bfc013b0:	130001df 	beqz	t8,bfc01b30 <_quick_sort+0x1170>
bfc013b4:	00c05821 	move	t3,a2
bfc013b8:	24c6fffc 	addiu	a2,a2,-4
bfc013bc:	8cc40000 	lw	a0,0(a2)
bfc013c0:	2508ffff 	addiu	t0,t0,-1
bfc013c4:	0124702a 	slt	t6,t1,a0
bfc013c8:	11c001d9 	beqz	t6,bfc01b30 <_quick_sort+0x1170>
bfc013cc:	00c05821 	move	t3,a2
bfc013d0:	8c64fff8 	lw	a0,-8(v1)
bfc013d4:	2466fff8 	addiu	a2,v1,-8
bfc013d8:	0124782a 	slt	t7,t1,a0
bfc013dc:	00c05821 	move	t3,a2
bfc013e0:	11e001d3 	beqz	t7,bfc01b30 <_quick_sort+0x1170>
bfc013e4:	24e8fffe 	addiu	t0,a3,-2
bfc013e8:	8c64fff4 	lw	a0,-12(v1)
bfc013ec:	2466fff4 	addiu	a2,v1,-12
bfc013f0:	0124982a 	slt	s3,t1,a0
bfc013f4:	00c05821 	move	t3,a2
bfc013f8:	126001cd 	beqz	s3,bfc01b30 <_quick_sort+0x1170>
bfc013fc:	24e8fffd 	addiu	t0,a3,-3
bfc01400:	8c64fff0 	lw	a0,-16(v1)
bfc01404:	2466fff0 	addiu	a2,v1,-16
bfc01408:	0124802a 	slt	s0,t1,a0
bfc0140c:	00c05821 	move	t3,a2
bfc01410:	120001c7 	beqz	s0,bfc01b30 <_quick_sort+0x1170>
bfc01414:	24e8fffc 	addiu	t0,a3,-4
bfc01418:	8c64ffec 	lw	a0,-20(v1)
bfc0141c:	2466ffec 	addiu	a2,v1,-20
bfc01420:	0124c02a 	slt	t8,t1,a0
bfc01424:	00c05821 	move	t3,a2
bfc01428:	130001c1 	beqz	t8,bfc01b30 <_quick_sort+0x1170>
bfc0142c:	24e8fffb 	addiu	t0,a3,-5
bfc01430:	8c64ffe8 	lw	a0,-24(v1)
bfc01434:	2466ffe8 	addiu	a2,v1,-24
bfc01438:	0124c82a 	slt	t9,t1,a0
bfc0143c:	24e8fffa 	addiu	t0,a3,-6
bfc01440:	132001bb 	beqz	t9,bfc01b30 <_quick_sort+0x1170>
bfc01444:	00c05821 	move	t3,a2
bfc01448:	24e8fff9 	addiu	t0,a3,-7
bfc0144c:	0228582a 	slt	t3,s1,t0
bfc01450:	1560ffcc 	bnez	t3,bfc01384 <_quick_sort+0x9c4>
bfc01454:	2466ffe4 	addiu	a2,v1,-28
bfc01458:	00089880 	sll	s3,t0,0x2
bfc0145c:	02535821 	addu	t3,s2,s3
bfc01460:	8d6f0000 	lw	t7,0(t3)
bfc01464:	024a7021 	addu	t6,s2,t2
bfc01468:	adcf0000 	sw	t7,0(t6)
bfc0146c:	024a4021 	addu	t0,s2,t2
bfc01470:	8d060000 	lw	a2,0(t0)
bfc01474:	2633ffff 	addiu	s3,s1,-1
bfc01478:	00b3382a 	slt	a3,a1,s3
bfc0147c:	ad660000 	sw	a2,0(t3)
bfc01480:	10e0019b 	beqz	a3,bfc01af0 <_quick_sort+0x1130>
bfc01484:	ad090000 	sw	t1,0(t0)
bfc01488:	024c6821 	addu	t5,s2,t4
bfc0148c:	8da90000 	lw	t1,0(t5)
bfc01490:	02604021 	move	t0,s3
bfc01494:	00a08021 	move	s0,a1
bfc01498:	00055080 	sll	t2,a1,0x2
bfc0149c:	00087880 	sll	t7,t0,0x2
bfc014a0:	024f3021 	addu	a2,s2,t7
bfc014a4:	8cc40000 	lw	a0,0(a2)
bfc014a8:	00107027 	nor	t6,zero,s0
bfc014ac:	01c81821 	addu	v1,t6,t0
bfc014b0:	0124602a 	slt	t4,t1,a0
bfc014b4:	30670007 	andi	a3,v1,0x7
bfc014b8:	1180010d 	beqz	t4,bfc018f0 <_quick_sort+0xf30>
bfc014bc:	00c05821 	move	t3,a2
bfc014c0:	2508ffff 	addiu	t0,t0,-1
bfc014c4:	0208582a 	slt	t3,s0,t0
bfc014c8:	1160007c 	beqz	t3,bfc016bc <_quick_sort+0xcfc>
bfc014cc:	24c6fffc 	addiu	a2,a2,-4
bfc014d0:	10e00045 	beqz	a3,bfc015e8 <_quick_sort+0xc28>
bfc014d4:	24030001 	li	v1,1
bfc014d8:	10e3003a 	beq	a3,v1,bfc015c4 <_quick_sort+0xc04>
bfc014dc:	00000000 	nop
bfc014e0:	24180002 	li	t8,2
bfc014e4:	10f80030 	beq	a3,t8,bfc015a8 <_quick_sort+0xbe8>
bfc014e8:	00000000 	nop
bfc014ec:	24190003 	li	t9,3
bfc014f0:	10f90026 	beq	a3,t9,bfc0158c <_quick_sort+0xbcc>
bfc014f4:	00000000 	nop
bfc014f8:	241f0004 	li	ra,4
bfc014fc:	10ff001c 	beq	a3,ra,bfc01570 <_quick_sort+0xbb0>
bfc01500:	00000000 	nop
bfc01504:	24020005 	li	v0,5
bfc01508:	10e20012 	beq	a3,v0,bfc01554 <_quick_sort+0xb94>
bfc0150c:	00000000 	nop
bfc01510:	240d0006 	li	t5,6
bfc01514:	10ed0008 	beq	a3,t5,bfc01538 <_quick_sort+0xb78>
bfc01518:	00000000 	nop
bfc0151c:	8cc40000 	lw	a0,0(a2)
bfc01520:	00000000 	nop
bfc01524:	0124702a 	slt	t6,t1,a0
bfc01528:	11c000f1 	beqz	t6,bfc018f0 <_quick_sort+0xf30>
bfc0152c:	00c05821 	move	t3,a2
bfc01530:	2508ffff 	addiu	t0,t0,-1
bfc01534:	24c6fffc 	addiu	a2,a2,-4
bfc01538:	8cc40000 	lw	a0,0(a2)
bfc0153c:	00000000 	nop
bfc01540:	0124782a 	slt	t7,t1,a0
bfc01544:	11e000ea 	beqz	t7,bfc018f0 <_quick_sort+0xf30>
bfc01548:	00c05821 	move	t3,a2
bfc0154c:	2508ffff 	addiu	t0,t0,-1
bfc01550:	24c6fffc 	addiu	a2,a2,-4
bfc01554:	8cc40000 	lw	a0,0(a2)
bfc01558:	00000000 	nop
bfc0155c:	0124602a 	slt	t4,t1,a0
bfc01560:	118000e3 	beqz	t4,bfc018f0 <_quick_sort+0xf30>
bfc01564:	00c05821 	move	t3,a2
bfc01568:	2508ffff 	addiu	t0,t0,-1
bfc0156c:	24c6fffc 	addiu	a2,a2,-4
bfc01570:	8cc40000 	lw	a0,0(a2)
bfc01574:	00000000 	nop
bfc01578:	0124382a 	slt	a3,t1,a0
bfc0157c:	10e000dc 	beqz	a3,bfc018f0 <_quick_sort+0xf30>
bfc01580:	00c05821 	move	t3,a2
bfc01584:	2508ffff 	addiu	t0,t0,-1
bfc01588:	24c6fffc 	addiu	a2,a2,-4
bfc0158c:	8cc40000 	lw	a0,0(a2)
bfc01590:	00000000 	nop
bfc01594:	0124182a 	slt	v1,t1,a0
bfc01598:	106000d5 	beqz	v1,bfc018f0 <_quick_sort+0xf30>
bfc0159c:	00c05821 	move	t3,a2
bfc015a0:	2508ffff 	addiu	t0,t0,-1
bfc015a4:	24c6fffc 	addiu	a2,a2,-4
bfc015a8:	8cc40000 	lw	a0,0(a2)
bfc015ac:	00000000 	nop
bfc015b0:	0124c02a 	slt	t8,t1,a0
bfc015b4:	130000ce 	beqz	t8,bfc018f0 <_quick_sort+0xf30>
bfc015b8:	00c05821 	move	t3,a2
bfc015bc:	2508ffff 	addiu	t0,t0,-1
bfc015c0:	24c6fffc 	addiu	a2,a2,-4
bfc015c4:	8cc40000 	lw	a0,0(a2)
bfc015c8:	00000000 	nop
bfc015cc:	0124c82a 	slt	t9,t1,a0
bfc015d0:	132000c7 	beqz	t9,bfc018f0 <_quick_sort+0xf30>
bfc015d4:	00c05821 	move	t3,a2
bfc015d8:	2508ffff 	addiu	t0,t0,-1
bfc015dc:	0208202a 	slt	a0,s0,t0
bfc015e0:	10800036 	beqz	a0,bfc016bc <_quick_sort+0xcfc>
bfc015e4:	24c6fffc 	addiu	a2,a2,-4
bfc015e8:	8cc40000 	lw	a0,0(a2)
bfc015ec:	00000000 	nop
bfc015f0:	0124182a 	slt	v1,t1,a0
bfc015f4:	106000be 	beqz	v1,bfc018f0 <_quick_sort+0xf30>
bfc015f8:	00c05821 	move	t3,a2
bfc015fc:	24c6fffc 	addiu	a2,a2,-4
bfc01600:	8cc40000 	lw	a0,0(a2)
bfc01604:	2508ffff 	addiu	t0,t0,-1
bfc01608:	0124602a 	slt	t4,t1,a0
bfc0160c:	00c01821 	move	v1,a2
bfc01610:	01003821 	move	a3,t0
bfc01614:	118000b6 	beqz	t4,bfc018f0 <_quick_sort+0xf30>
bfc01618:	00c05821 	move	t3,a2
bfc0161c:	24c6fffc 	addiu	a2,a2,-4
bfc01620:	8cc40000 	lw	a0,0(a2)
bfc01624:	2508ffff 	addiu	t0,t0,-1
bfc01628:	0124f82a 	slt	ra,t1,a0
bfc0162c:	13e000b0 	beqz	ra,bfc018f0 <_quick_sort+0xf30>
bfc01630:	00c05821 	move	t3,a2
bfc01634:	8c64fff8 	lw	a0,-8(v1)
bfc01638:	2466fff8 	addiu	a2,v1,-8
bfc0163c:	0124102a 	slt	v0,t1,a0
bfc01640:	00c05821 	move	t3,a2
bfc01644:	104000aa 	beqz	v0,bfc018f0 <_quick_sort+0xf30>
bfc01648:	24e8fffe 	addiu	t0,a3,-2
bfc0164c:	8c64fff4 	lw	a0,-12(v1)
bfc01650:	2466fff4 	addiu	a2,v1,-12
bfc01654:	0124682a 	slt	t5,t1,a0
bfc01658:	00c05821 	move	t3,a2
bfc0165c:	11a000a4 	beqz	t5,bfc018f0 <_quick_sort+0xf30>
bfc01660:	24e8fffd 	addiu	t0,a3,-3
bfc01664:	8c64fff0 	lw	a0,-16(v1)
bfc01668:	2466fff0 	addiu	a2,v1,-16
bfc0166c:	0124702a 	slt	t6,t1,a0
bfc01670:	00c05821 	move	t3,a2
bfc01674:	11c0009e 	beqz	t6,bfc018f0 <_quick_sort+0xf30>
bfc01678:	24e8fffc 	addiu	t0,a3,-4
bfc0167c:	8c64ffec 	lw	a0,-20(v1)
bfc01680:	2466ffec 	addiu	a2,v1,-20
bfc01684:	0124782a 	slt	t7,t1,a0
bfc01688:	00c05821 	move	t3,a2
bfc0168c:	11e00098 	beqz	t7,bfc018f0 <_quick_sort+0xf30>
bfc01690:	24e8fffb 	addiu	t0,a3,-5
bfc01694:	8c64ffe8 	lw	a0,-24(v1)
bfc01698:	2466ffe8 	addiu	a2,v1,-24
bfc0169c:	0124602a 	slt	t4,t1,a0
bfc016a0:	24e8fffa 	addiu	t0,a3,-6
bfc016a4:	11800092 	beqz	t4,bfc018f0 <_quick_sort+0xf30>
bfc016a8:	00c05821 	move	t3,a2
bfc016ac:	24e8fff9 	addiu	t0,a3,-7
bfc016b0:	0208582a 	slt	t3,s0,t0
bfc016b4:	1560ffcc 	bnez	t3,bfc015e8 <_quick_sort+0xc28>
bfc016b8:	2466ffe4 	addiu	a2,v1,-28
bfc016bc:	0008c080 	sll	t8,t0,0x2
bfc016c0:	02585821 	addu	t3,s2,t8
bfc016c4:	8d660000 	lw	a2,0(t3)
bfc016c8:	024a6021 	addu	t4,s2,t2
bfc016cc:	ad860000 	sw	a2,0(t4)
bfc016d0:	024a3821 	addu	a3,s2,t2
bfc016d4:	8ce80000 	lw	t0,0(a3)
bfc016d8:	02402021 	move	a0,s2
bfc016dc:	ad680000 	sw	t0,0(t3)
bfc016e0:	2606ffff 	addiu	a2,s0,-1
bfc016e4:	0ff00270 	jal	bfc009c0 <_quick_sort>
bfc016e8:	ace90000 	sw	t1,0(a3)
bfc016ec:	26050001 	addiu	a1,s0,1
bfc016f0:	00b3482a 	slt	t1,a1,s3
bfc016f4:	112000fe 	beqz	t1,bfc01af0 <_quick_sort+0x1130>
bfc016f8:	00056080 	sll	t4,a1,0x2
bfc016fc:	0bf00522 	j	bfc01488 <_quick_sort+0xac8>
bfc01700:	00000000 	nop
bfc01704:	024b9821 	addu	s3,s2,t3
bfc01708:	0288882a 	slt	s1,s4,t0
bfc0170c:	1220fec1 	beqz	s1,bfc01214 <_quick_sort+0x854>
bfc01710:	ae640000 	sw	a0,0(s3)
bfc01714:	26840001 	addiu	a0,s4,1
bfc01718:	0104c023 	subu	t8,t0,a0
bfc0171c:	0004a080 	sll	s4,a0,0x2
bfc01720:	33060007 	andi	a2,t8,0x7
bfc01724:	10c00038 	beqz	a2,bfc01808 <_quick_sort+0xe48>
bfc01728:	02541821 	addu	v1,s2,s4
bfc0172c:	8c740000 	lw	s4,0(v1)
bfc01730:	24630004 	addiu	v1,v1,4
bfc01734:	0134882a 	slt	s1,t1,s4
bfc01738:	16200068 	bnez	s1,bfc018dc <_quick_sort+0xf1c>
bfc0173c:	0080a021 	move	s4,a0
bfc01740:	241f0001 	li	ra,1
bfc01744:	10df0030 	beq	a2,ra,bfc01808 <_quick_sort+0xe48>
bfc01748:	24840001 	addiu	a0,a0,1
bfc0174c:	24020002 	li	v0,2
bfc01750:	10c20027 	beq	a2,v0,bfc017f0 <_quick_sort+0xe30>
bfc01754:	240d0003 	li	t5,3
bfc01758:	10cd001f 	beq	a2,t5,bfc017d8 <_quick_sort+0xe18>
bfc0175c:	240e0004 	li	t6,4
bfc01760:	10ce0017 	beq	a2,t6,bfc017c0 <_quick_sort+0xe00>
bfc01764:	240f0005 	li	t7,5
bfc01768:	10cf000f 	beq	a2,t7,bfc017a8 <_quick_sort+0xde8>
bfc0176c:	24130006 	li	s3,6
bfc01770:	10d30007 	beq	a2,s3,bfc01790 <_quick_sort+0xdd0>
bfc01774:	0080a021 	move	s4,a0
bfc01778:	8c700000 	lw	s0,0(v1)
bfc0177c:	00000000 	nop
bfc01780:	0130302a 	slt	a2,t1,s0
bfc01784:	14c00055 	bnez	a2,bfc018dc <_quick_sort+0xf1c>
bfc01788:	24630004 	addiu	v1,v1,4
bfc0178c:	24840001 	addiu	a0,a0,1
bfc01790:	8c790000 	lw	t9,0(v1)
bfc01794:	0080a021 	move	s4,a0
bfc01798:	0139c02a 	slt	t8,t1,t9
bfc0179c:	1700004f 	bnez	t8,bfc018dc <_quick_sort+0xf1c>
bfc017a0:	24630004 	addiu	v1,v1,4
bfc017a4:	24840001 	addiu	a0,a0,1
bfc017a8:	8c710000 	lw	s1,0(v1)
bfc017ac:	0080a021 	move	s4,a0
bfc017b0:	0131582a 	slt	t3,t1,s1
bfc017b4:	15600049 	bnez	t3,bfc018dc <_quick_sort+0xf1c>
bfc017b8:	24630004 	addiu	v1,v1,4
bfc017bc:	24840001 	addiu	a0,a0,1
bfc017c0:	8c740000 	lw	s4,0(v1)
bfc017c4:	24630004 	addiu	v1,v1,4
bfc017c8:	0134f82a 	slt	ra,t1,s4
bfc017cc:	17e00043 	bnez	ra,bfc018dc <_quick_sort+0xf1c>
bfc017d0:	0080a021 	move	s4,a0
bfc017d4:	24840001 	addiu	a0,a0,1
bfc017d8:	8c6d0000 	lw	t5,0(v1)
bfc017dc:	0080a021 	move	s4,a0
bfc017e0:	012d102a 	slt	v0,t1,t5
bfc017e4:	1440003d 	bnez	v0,bfc018dc <_quick_sort+0xf1c>
bfc017e8:	24630004 	addiu	v1,v1,4
bfc017ec:	24840001 	addiu	a0,a0,1
bfc017f0:	8c6f0000 	lw	t7,0(v1)
bfc017f4:	0080a021 	move	s4,a0
bfc017f8:	012f702a 	slt	t6,t1,t7
bfc017fc:	15c00037 	bnez	t6,bfc018dc <_quick_sort+0xf1c>
bfc01800:	24630004 	addiu	v1,v1,4
bfc01804:	24840001 	addiu	a0,a0,1
bfc01808:	0088c82a 	slt	t9,a0,t0
bfc0180c:	00803021 	move	a2,a0
bfc01810:	13200030 	beqz	t9,bfc018d4 <_quick_sort+0xf14>
bfc01814:	0080a021 	move	s4,a0
bfc01818:	8c620000 	lw	v0,0(v1)
bfc0181c:	00000000 	nop
bfc01820:	0122f82a 	slt	ra,t1,v0
bfc01824:	17e0002d 	bnez	ra,bfc018dc <_quick_sort+0xf1c>
bfc01828:	00000000 	nop
bfc0182c:	8c6b0004 	lw	t3,4(v1)
bfc01830:	24840001 	addiu	a0,a0,1
bfc01834:	012b682a 	slt	t5,t1,t3
bfc01838:	24d40001 	addiu	s4,a2,1
bfc0183c:	15a00027 	bnez	t5,bfc018dc <_quick_sort+0xf1c>
bfc01840:	00805821 	move	t3,a0
bfc01844:	8c700008 	lw	s0,8(v1)
bfc01848:	24840001 	addiu	a0,a0,1
bfc0184c:	0130982a 	slt	s3,t1,s0
bfc01850:	16600022 	bnez	s3,bfc018dc <_quick_sort+0xf1c>
bfc01854:	24d40002 	addiu	s4,a2,2
bfc01858:	8c79000c 	lw	t9,12(v1)
bfc0185c:	25640002 	addiu	a0,t3,2
bfc01860:	0139c02a 	slt	t8,t1,t9
bfc01864:	1700001d 	bnez	t8,bfc018dc <_quick_sort+0xf1c>
bfc01868:	24d40003 	addiu	s4,a2,3
bfc0186c:	8c7f0010 	lw	ra,16(v1)
bfc01870:	25640003 	addiu	a0,t3,3
bfc01874:	013f882a 	slt	s1,t1,ra
bfc01878:	16200018 	bnez	s1,bfc018dc <_quick_sort+0xf1c>
bfc0187c:	24d40004 	addiu	s4,a2,4
bfc01880:	8c740014 	lw	s4,20(v1)
bfc01884:	25640004 	addiu	a0,t3,4
bfc01888:	0134102a 	slt	v0,t1,s4
bfc0188c:	14400013 	bnez	v0,bfc018dc <_quick_sort+0xf1c>
bfc01890:	24d40005 	addiu	s4,a2,5
bfc01894:	8c6e0018 	lw	t6,24(v1)
bfc01898:	25640005 	addiu	a0,t3,5
bfc0189c:	012e682a 	slt	t5,t1,t6
bfc018a0:	15a0000e 	bnez	t5,bfc018dc <_quick_sort+0xf1c>
bfc018a4:	24d40006 	addiu	s4,a2,6
bfc018a8:	8c64001c 	lw	a0,28(v1)
bfc018ac:	24d40007 	addiu	s4,a2,7
bfc018b0:	0124302a 	slt	a2,t1,a0
bfc018b4:	24630020 	addiu	v1,v1,32
bfc018b8:	14c00008 	bnez	a2,bfc018dc <_quick_sort+0xf1c>
bfc018bc:	25640006 	addiu	a0,t3,6
bfc018c0:	25640007 	addiu	a0,t3,7
bfc018c4:	0088c82a 	slt	t9,a0,t0
bfc018c8:	00803021 	move	a2,a0
bfc018cc:	1720ffd2 	bnez	t9,bfc01818 <_quick_sort+0xe58>
bfc018d0:	0080a021 	move	s4,a0
bfc018d4:	0bf00485 	j	bfc01214 <_quick_sort+0x854>
bfc018d8:	00045880 	sll	t3,a0,0x2
bfc018dc:	00045880 	sll	t3,a0,0x2
bfc018e0:	024b1821 	addu	v1,s2,t3
bfc018e4:	8c640000 	lw	a0,0(v1)
bfc018e8:	0bf003fd 	j	bfc00ff4 <_quick_sort+0x634>
bfc018ec:	ace40000 	sw	a0,0(a3)
bfc018f0:	024a7821 	addu	t7,s2,t2
bfc018f4:	0208702a 	slt	t6,s0,t0
bfc018f8:	11c0ff75 	beqz	t6,bfc016d0 <_quick_sort+0xd10>
bfc018fc:	ade40000 	sw	a0,0(t7)
bfc01900:	26040001 	addiu	a0,s0,1
bfc01904:	01045023 	subu	t2,t0,a0
bfc01908:	00048080 	sll	s0,a0,0x2
bfc0190c:	31470007 	andi	a3,t2,0x7
bfc01910:	10e00038 	beqz	a3,bfc019f4 <_quick_sort+0x1034>
bfc01914:	02501821 	addu	v1,s2,s0
bfc01918:	8c700000 	lw	s0,0(v1)
bfc0191c:	24630004 	addiu	v1,v1,4
bfc01920:	0130502a 	slt	t2,t1,s0
bfc01924:	1540007a 	bnez	t2,bfc01b10 <_quick_sort+0x1150>
bfc01928:	00808021 	move	s0,a0
bfc0192c:	24190001 	li	t9,1
bfc01930:	10f90030 	beq	a3,t9,bfc019f4 <_quick_sort+0x1034>
bfc01934:	24840001 	addiu	a0,a0,1
bfc01938:	241f0002 	li	ra,2
bfc0193c:	10ff0027 	beq	a3,ra,bfc019dc <_quick_sort+0x101c>
bfc01940:	24020003 	li	v0,3
bfc01944:	10e2001f 	beq	a3,v0,bfc019c4 <_quick_sort+0x1004>
bfc01948:	240d0004 	li	t5,4
bfc0194c:	10ed0017 	beq	a3,t5,bfc019ac <_quick_sort+0xfec>
bfc01950:	240e0005 	li	t6,5
bfc01954:	10ee000f 	beq	a3,t6,bfc01994 <_quick_sort+0xfd4>
bfc01958:	240f0006 	li	t7,6
bfc0195c:	10ef0007 	beq	a3,t7,bfc0197c <_quick_sort+0xfbc>
bfc01960:	00808021 	move	s0,a0
bfc01964:	8c6c0000 	lw	t4,0(v1)
bfc01968:	00000000 	nop
bfc0196c:	012c382a 	slt	a3,t1,t4
bfc01970:	14e00067 	bnez	a3,bfc01b10 <_quick_sort+0x1150>
bfc01974:	24630004 	addiu	v1,v1,4
bfc01978:	24840001 	addiu	a0,a0,1
bfc0197c:	8c6a0000 	lw	t2,0(v1)
bfc01980:	00808021 	move	s0,a0
bfc01984:	012ac02a 	slt	t8,t1,t2
bfc01988:	17000061 	bnez	t8,bfc01b10 <_quick_sort+0x1150>
bfc0198c:	24630004 	addiu	v1,v1,4
bfc01990:	24840001 	addiu	a0,a0,1
bfc01994:	8c700000 	lw	s0,0(v1)
bfc01998:	24630004 	addiu	v1,v1,4
bfc0199c:	0130c82a 	slt	t9,t1,s0
bfc019a0:	1720005b 	bnez	t9,bfc01b10 <_quick_sort+0x1150>
bfc019a4:	00808021 	move	s0,a0
bfc019a8:	24840001 	addiu	a0,a0,1
bfc019ac:	8c620000 	lw	v0,0(v1)
bfc019b0:	00808021 	move	s0,a0
bfc019b4:	0122f82a 	slt	ra,t1,v0
bfc019b8:	17e00055 	bnez	ra,bfc01b10 <_quick_sort+0x1150>
bfc019bc:	24630004 	addiu	v1,v1,4
bfc019c0:	24840001 	addiu	a0,a0,1
bfc019c4:	8c6e0000 	lw	t6,0(v1)
bfc019c8:	00808021 	move	s0,a0
bfc019cc:	012e682a 	slt	t5,t1,t6
bfc019d0:	15a0004f 	bnez	t5,bfc01b10 <_quick_sort+0x1150>
bfc019d4:	24630004 	addiu	v1,v1,4
bfc019d8:	24840001 	addiu	a0,a0,1
bfc019dc:	8c670000 	lw	a3,0(v1)
bfc019e0:	00808021 	move	s0,a0
bfc019e4:	0127782a 	slt	t7,t1,a3
bfc019e8:	15e00049 	bnez	t7,bfc01b10 <_quick_sort+0x1150>
bfc019ec:	24630004 	addiu	v1,v1,4
bfc019f0:	24840001 	addiu	a0,a0,1
bfc019f4:	0088c02a 	slt	t8,a0,t0
bfc019f8:	00803821 	move	a3,a0
bfc019fc:	13000030 	beqz	t8,bfc01ac0 <_quick_sort+0x1100>
bfc01a00:	00808021 	move	s0,a0
bfc01a04:	8c7f0000 	lw	ra,0(v1)
bfc01a08:	00000000 	nop
bfc01a0c:	013fc82a 	slt	t9,t1,ra
bfc01a10:	17200040 	bnez	t9,bfc01b14 <_quick_sort+0x1154>
bfc01a14:	00045080 	sll	t2,a0,0x2
bfc01a18:	8c6d0004 	lw	t5,4(v1)
bfc01a1c:	24840001 	addiu	a0,a0,1
bfc01a20:	012d102a 	slt	v0,t1,t5
bfc01a24:	00805021 	move	t2,a0
bfc01a28:	14400039 	bnez	v0,bfc01b10 <_quick_sort+0x1150>
bfc01a2c:	24f00001 	addiu	s0,a3,1
bfc01a30:	8c780008 	lw	t8,8(v1)
bfc01a34:	24840001 	addiu	a0,a0,1
bfc01a38:	0138602a 	slt	t4,t1,t8
bfc01a3c:	15800034 	bnez	t4,bfc01b10 <_quick_sort+0x1150>
bfc01a40:	24f00002 	addiu	s0,a3,2
bfc01a44:	8c70000c 	lw	s0,12(v1)
bfc01a48:	25440002 	addiu	a0,t2,2
bfc01a4c:	0130c82a 	slt	t9,t1,s0
bfc01a50:	1720002f 	bnez	t9,bfc01b10 <_quick_sort+0x1150>
bfc01a54:	24f00003 	addiu	s0,a3,3
bfc01a58:	8c620010 	lw	v0,16(v1)
bfc01a5c:	25440003 	addiu	a0,t2,3
bfc01a60:	0122f82a 	slt	ra,t1,v0
bfc01a64:	17e0002a 	bnez	ra,bfc01b10 <_quick_sort+0x1150>
bfc01a68:	24f00004 	addiu	s0,a3,4
bfc01a6c:	8c6e0014 	lw	t6,20(v1)
bfc01a70:	25440004 	addiu	a0,t2,4
bfc01a74:	012e682a 	slt	t5,t1,t6
bfc01a78:	15a00025 	bnez	t5,bfc01b10 <_quick_sort+0x1150>
bfc01a7c:	24f00005 	addiu	s0,a3,5
bfc01a80:	8c6c0018 	lw	t4,24(v1)
bfc01a84:	25440005 	addiu	a0,t2,5
bfc01a88:	012c782a 	slt	t7,t1,t4
bfc01a8c:	15e00020 	bnez	t7,bfc01b10 <_quick_sort+0x1150>
bfc01a90:	24f00006 	addiu	s0,a3,6
bfc01a94:	8c64001c 	lw	a0,28(v1)
bfc01a98:	24f00007 	addiu	s0,a3,7
bfc01a9c:	0124382a 	slt	a3,t1,a0
bfc01aa0:	24630020 	addiu	v1,v1,32
bfc01aa4:	14e0001a 	bnez	a3,bfc01b10 <_quick_sort+0x1150>
bfc01aa8:	25440006 	addiu	a0,t2,6
bfc01aac:	25440007 	addiu	a0,t2,7
bfc01ab0:	0088c02a 	slt	t8,a0,t0
bfc01ab4:	00803821 	move	a3,a0
bfc01ab8:	1700ffd2 	bnez	t8,bfc01a04 <_quick_sort+0x1044>
bfc01abc:	00808021 	move	s0,a0
bfc01ac0:	00045080 	sll	t2,a0,0x2
bfc01ac4:	024a3821 	addu	a3,s2,t2
bfc01ac8:	8ce80000 	lw	t0,0(a3)
bfc01acc:	02402021 	move	a0,s2
bfc01ad0:	ad680000 	sw	t0,0(t3)
bfc01ad4:	2606ffff 	addiu	a2,s0,-1
bfc01ad8:	0ff00270 	jal	bfc009c0 <_quick_sort>
bfc01adc:	ace90000 	sw	t1,0(a3)
bfc01ae0:	26050001 	addiu	a1,s0,1
bfc01ae4:	00b3482a 	slt	t1,a1,s3
bfc01ae8:	1520fe67 	bnez	t1,bfc01488 <_quick_sort+0xac8>
bfc01aec:	00056080 	sll	t4,a1,0x2
bfc01af0:	8fb30020 	lw	s3,32(sp)
bfc01af4:	26250001 	addiu	a1,s1,1
bfc01af8:	00b3882a 	slt	s1,a1,s3
bfc01afc:	12200089 	beqz	s1,bfc01d24 <_quick_sort+0x1364>
bfc01b00:	00056080 	sll	t4,a1,0x2
bfc01b04:	0bf0048e 	j	bfc01238 <_quick_sort+0x878>
bfc01b08:	024c9821 	addu	s3,s2,t4
bfc01b0c:	00000000 	nop
bfc01b10:	00045080 	sll	t2,a0,0x2
bfc01b14:	024a2021 	addu	a0,s2,t2
bfc01b18:	8c8b0000 	lw	t3,0(a0)
bfc01b1c:	0bf00527 	j	bfc0149c <_quick_sort+0xadc>
bfc01b20:	accb0000 	sw	t3,0(a2)
	...
bfc01b30:	024a1021 	addu	v0,s2,t2
bfc01b34:	0228f82a 	slt	ra,s1,t0
bfc01b38:	13e0fe4c 	beqz	ra,bfc0146c <_quick_sort+0xaac>
bfc01b3c:	ac440000 	sw	a0,0(v0)
bfc01b40:	26240001 	addiu	a0,s1,1
bfc01b44:	01041823 	subu	v1,t0,a0
bfc01b48:	30670007 	andi	a3,v1,0x7
bfc01b4c:	00046880 	sll	t5,a0,0x2
bfc01b50:	10e00038 	beqz	a3,bfc01c34 <_quick_sort+0x1274>
bfc01b54:	024d1821 	addu	v1,s2,t5
bfc01b58:	8c710000 	lw	s1,0(v1)
bfc01b5c:	24630004 	addiu	v1,v1,4
bfc01b60:	0131982a 	slt	s3,t1,s1
bfc01b64:	1660006a 	bnez	s3,bfc01d10 <_quick_sort+0x1350>
bfc01b68:	00808821 	move	s1,a0
bfc01b6c:	240a0001 	li	t2,1
bfc01b70:	10ea0030 	beq	a3,t2,bfc01c34 <_quick_sort+0x1274>
bfc01b74:	24840001 	addiu	a0,a0,1
bfc01b78:	24100002 	li	s0,2
bfc01b7c:	10f00027 	beq	a3,s0,bfc01c1c <_quick_sort+0x125c>
bfc01b80:	24180003 	li	t8,3
bfc01b84:	10f8001f 	beq	a3,t8,bfc01c04 <_quick_sort+0x1244>
bfc01b88:	24190004 	li	t9,4
bfc01b8c:	10f90017 	beq	a3,t9,bfc01bec <_quick_sort+0x122c>
bfc01b90:	241f0005 	li	ra,5
bfc01b94:	10ff000f 	beq	a3,ra,bfc01bd4 <_quick_sort+0x1214>
bfc01b98:	24020006 	li	v0,6
bfc01b9c:	10e20007 	beq	a3,v0,bfc01bbc <_quick_sort+0x11fc>
bfc01ba0:	00808821 	move	s1,a0
bfc01ba4:	8c6d0000 	lw	t5,0(v1)
bfc01ba8:	00000000 	nop
bfc01bac:	012d382a 	slt	a3,t1,t5
bfc01bb0:	14e00057 	bnez	a3,bfc01d10 <_quick_sort+0x1350>
bfc01bb4:	24630004 	addiu	v1,v1,4
bfc01bb8:	24840001 	addiu	a0,a0,1
bfc01bbc:	8c6f0000 	lw	t7,0(v1)
bfc01bc0:	00808821 	move	s1,a0
bfc01bc4:	012f702a 	slt	t6,t1,t7
bfc01bc8:	15c00051 	bnez	t6,bfc01d10 <_quick_sort+0x1350>
bfc01bcc:	24630004 	addiu	v1,v1,4
bfc01bd0:	24840001 	addiu	a0,a0,1
bfc01bd4:	8c710000 	lw	s1,0(v1)
bfc01bd8:	24630004 	addiu	v1,v1,4
bfc01bdc:	0131982a 	slt	s3,t1,s1
bfc01be0:	1660004b 	bnez	s3,bfc01d10 <_quick_sort+0x1350>
bfc01be4:	00808821 	move	s1,a0
bfc01be8:	24840001 	addiu	a0,a0,1
bfc01bec:	8c700000 	lw	s0,0(v1)
bfc01bf0:	00808821 	move	s1,a0
bfc01bf4:	0130502a 	slt	t2,t1,s0
bfc01bf8:	15400045 	bnez	t2,bfc01d10 <_quick_sort+0x1350>
bfc01bfc:	24630004 	addiu	v1,v1,4
bfc01c00:	24840001 	addiu	a0,a0,1
bfc01c04:	8c790000 	lw	t9,0(v1)
bfc01c08:	00808821 	move	s1,a0
bfc01c0c:	0139c02a 	slt	t8,t1,t9
bfc01c10:	1700003f 	bnez	t8,bfc01d10 <_quick_sort+0x1350>
bfc01c14:	24630004 	addiu	v1,v1,4
bfc01c18:	24840001 	addiu	a0,a0,1
bfc01c1c:	8c620000 	lw	v0,0(v1)
bfc01c20:	00808821 	move	s1,a0
bfc01c24:	0122f82a 	slt	ra,t1,v0
bfc01c28:	17e00039 	bnez	ra,bfc01d10 <_quick_sort+0x1350>
bfc01c2c:	24630004 	addiu	v1,v1,4
bfc01c30:	24840001 	addiu	a0,a0,1
bfc01c34:	0088702a 	slt	t6,a0,t0
bfc01c38:	00803821 	move	a3,a0
bfc01c3c:	11c00030 	beqz	t6,bfc01d00 <_quick_sort+0x1340>
bfc01c40:	00808821 	move	s1,a0
bfc01c44:	8c700000 	lw	s0,0(v1)
bfc01c48:	00000000 	nop
bfc01c4c:	0130782a 	slt	t7,t1,s0
bfc01c50:	15e0002f 	bnez	t7,bfc01d10 <_quick_sort+0x1350>
bfc01c54:	00000000 	nop
bfc01c58:	8c6a0004 	lw	t2,4(v1)
bfc01c5c:	24840001 	addiu	a0,a0,1
bfc01c60:	012a982a 	slt	s3,t1,t2
bfc01c64:	24f10001 	addiu	s1,a3,1
bfc01c68:	16600029 	bnez	s3,bfc01d10 <_quick_sort+0x1350>
bfc01c6c:	00805021 	move	t2,a0
bfc01c70:	8c6e0008 	lw	t6,8(v1)
bfc01c74:	24840001 	addiu	a0,a0,1
bfc01c78:	012e682a 	slt	t5,t1,t6
bfc01c7c:	15a00024 	bnez	t5,bfc01d10 <_quick_sort+0x1350>
bfc01c80:	24f10002 	addiu	s1,a3,2
bfc01c84:	8c73000c 	lw	s3,12(v1)
bfc01c88:	25440002 	addiu	a0,t2,2
bfc01c8c:	0133782a 	slt	t7,t1,s3
bfc01c90:	15e0001f 	bnez	t7,bfc01d10 <_quick_sort+0x1350>
bfc01c94:	24f10003 	addiu	s1,a3,3
bfc01c98:	8c710010 	lw	s1,16(v1)
bfc01c9c:	25440003 	addiu	a0,t2,3
bfc01ca0:	0131802a 	slt	s0,t1,s1
bfc01ca4:	1600001a 	bnez	s0,bfc01d10 <_quick_sort+0x1350>
bfc01ca8:	24f10004 	addiu	s1,a3,4
bfc01cac:	8c790014 	lw	t9,20(v1)
bfc01cb0:	25440004 	addiu	a0,t2,4
bfc01cb4:	0139c02a 	slt	t8,t1,t9
bfc01cb8:	17000015 	bnez	t8,bfc01d10 <_quick_sort+0x1350>
bfc01cbc:	24f10005 	addiu	s1,a3,5
bfc01cc0:	8c620018 	lw	v0,24(v1)
bfc01cc4:	25440005 	addiu	a0,t2,5
bfc01cc8:	0122f82a 	slt	ra,t1,v0
bfc01ccc:	17e00010 	bnez	ra,bfc01d10 <_quick_sort+0x1350>
bfc01cd0:	24f10006 	addiu	s1,a3,6
bfc01cd4:	8c64001c 	lw	a0,28(v1)
bfc01cd8:	24f10007 	addiu	s1,a3,7
bfc01cdc:	0124382a 	slt	a3,t1,a0
bfc01ce0:	24630020 	addiu	v1,v1,32
bfc01ce4:	14e0000a 	bnez	a3,bfc01d10 <_quick_sort+0x1350>
bfc01ce8:	25440006 	addiu	a0,t2,6
bfc01cec:	25440007 	addiu	a0,t2,7
bfc01cf0:	0088702a 	slt	t6,a0,t0
bfc01cf4:	00803821 	move	a3,a0
bfc01cf8:	15c0ffd2 	bnez	t6,bfc01c44 <_quick_sort+0x1284>
bfc01cfc:	00808821 	move	s1,a0
bfc01d00:	0bf0051b 	j	bfc0146c <_quick_sort+0xaac>
bfc01d04:	00045080 	sll	t2,a0,0x2
	...
bfc01d10:	00045080 	sll	t2,a0,0x2
bfc01d14:	024a2021 	addu	a0,s2,t2
bfc01d18:	8c8b0000 	lw	t3,0(a0)
bfc01d1c:	0bf00492 	j	bfc01248 <_quick_sort+0x888>
bfc01d20:	accb0000 	sw	t3,0(a2)
bfc01d24:	8fa60024 	lw	a2,36(sp)
bfc01d28:	26850001 	addiu	a1,s4,1
bfc01d2c:	00a6a02a 	slt	s4,a1,a2
bfc01d30:	1680fcab 	bnez	s4,bfc00fe0 <_quick_sort+0x620>
bfc01d34:	00056080 	sll	t4,a1,0x2
bfc01d38:	26a50001 	addiu	a1,s5,1
bfc01d3c:	00b7a82a 	slt	s5,a1,s7
bfc01d40:	12a0fc92 	beqz	s5,bfc00f8c <_quick_sort+0x5cc>
bfc01d44:	00056080 	sll	t4,a1,0x2
bfc01d48:	0bf003c0 	j	bfc00f00 <_quick_sort+0x540>
bfc01d4c:	024c2021 	addu	a0,s2,t4
bfc01d50:	00163880 	sll	a3,s6,0x2
bfc01d54:	02477021 	addu	t6,s2,a3
bfc01d58:	8dc30000 	lw	v1,0(t6)
bfc01d5c:	0bf002ff 	j	bfc00bfc <_quick_sort+0x23c>
bfc01d60:	ad030000 	sw	v1,0(t0)
bfc01d64:	8fb00018 	lw	s0,24(sp)
bfc01d68:	27c50001 	addiu	a1,s8,1
bfc01d6c:	00b0f02a 	slt	s8,a1,s0
bfc01d70:	13c0fc4e 	beqz	s8,bfc00eac <_quick_sort+0x4ec>
bfc01d74:	00056080 	sll	t4,a1,0x2
bfc01d78:	0bf002de 	j	bfc00b78 <_quick_sort+0x1b8>
bfc01d7c:	024cf021 	addu	s8,s2,t4
bfc01d80:	00153880 	sll	a3,s5,0x2
bfc01d84:	02475821 	addu	t3,s2,a3
bfc01d88:	8d690000 	lw	t1,0(t3)
bfc01d8c:	0bf003c4 	j	bfc00f10 <_quick_sort+0x550>
bfc01d90:	ad090000 	sw	t1,0(t0)
	...

bfc01da0 <quick_sort>:
quick_sort():
bfc01da0:	27bdffe8 	addiu	sp,sp,-24
bfc01da4:	afbf0014 	sw	ra,20(sp)
bfc01da8:	afb00010 	sw	s0,16(sp)
bfc01dac:	00a05821 	move	t3,a1
bfc01db0:	18a0006d 	blez	a1,bfc01f68 <quick_sort+0x1c8>
bfc01db4:	00804021 	move	t0,a0
bfc01db8:	00054880 	sll	t1,a1,0x2
bfc01dbc:	8d030000 	lw	v1,0(t0)
bfc01dc0:	2524fffc 	addiu	a0,t1,-4
bfc01dc4:	3c0a8000 	lui	t2,0x8000
bfc01dc8:	00041082 	srl	v0,a0,0x2
bfc01dcc:	24070004 	li	a3,4
bfc01dd0:	ad432140 	sw	v1,8512(t2)
bfc01dd4:	25502140 	addiu	s0,t2,8512
bfc01dd8:	10e9005a 	beq	a3,t1,bfc01f44 <quick_sort+0x1a4>
bfc01ddc:	30430007 	andi	v1,v0,0x7
bfc01de0:	1060002f 	beqz	v1,bfc01ea0 <quick_sort+0x100>
bfc01de4:	24190001 	li	t9,1
bfc01de8:	10790027 	beq	v1,t9,bfc01e88 <quick_sort+0xe8>
bfc01dec:	241f0002 	li	ra,2
bfc01df0:	107f0020 	beq	v1,ra,bfc01e74 <quick_sort+0xd4>
bfc01df4:	24040003 	li	a0,3
bfc01df8:	10640019 	beq	v1,a0,bfc01e60 <quick_sort+0xc0>
bfc01dfc:	00000000 	nop
bfc01e00:	10670012 	beq	v1,a3,bfc01e4c <quick_sort+0xac>
bfc01e04:	24020005 	li	v0,5
bfc01e08:	1062000b 	beq	v1,v0,bfc01e38 <quick_sort+0x98>
bfc01e0c:	24050006 	li	a1,6
bfc01e10:	10650005 	beq	v1,a1,bfc01e28 <quick_sort+0x88>
bfc01e14:	01076821 	addu	t5,t0,a3
bfc01e18:	8d030004 	lw	v1,4(t0)
bfc01e1c:	24070008 	li	a3,8
bfc01e20:	ae030004 	sw	v1,4(s0)
bfc01e24:	01076821 	addu	t5,t0,a3
bfc01e28:	8dac0000 	lw	t4,0(t5)
bfc01e2c:	02073021 	addu	a2,s0,a3
bfc01e30:	accc0000 	sw	t4,0(a2)
bfc01e34:	24e70004 	addiu	a3,a3,4
bfc01e38:	0107c021 	addu	t8,t0,a3
bfc01e3c:	8f0f0000 	lw	t7,0(t8)
bfc01e40:	02077021 	addu	t6,s0,a3
bfc01e44:	adcf0000 	sw	t7,0(t6)
bfc01e48:	24e70004 	addiu	a3,a3,4
bfc01e4c:	01072021 	addu	a0,t0,a3
bfc01e50:	8c9f0000 	lw	ra,0(a0)
bfc01e54:	0207c821 	addu	t9,s0,a3
bfc01e58:	af3f0000 	sw	ra,0(t9)
bfc01e5c:	24e70004 	addiu	a3,a3,4
bfc01e60:	01071821 	addu	v1,t0,a3
bfc01e64:	8c650000 	lw	a1,0(v1)
bfc01e68:	02071021 	addu	v0,s0,a3
bfc01e6c:	ac450000 	sw	a1,0(v0)
bfc01e70:	24e70004 	addiu	a3,a3,4
bfc01e74:	01076821 	addu	t5,t0,a3
bfc01e78:	8dac0000 	lw	t4,0(t5)
bfc01e7c:	02073021 	addu	a2,s0,a3
bfc01e80:	accc0000 	sw	t4,0(a2)
bfc01e84:	24e70004 	addiu	a3,a3,4
bfc01e88:	0107c021 	addu	t8,t0,a3
bfc01e8c:	8f0f0000 	lw	t7,0(t8)
bfc01e90:	02077021 	addu	t6,s0,a3
bfc01e94:	24e70004 	addiu	a3,a3,4
bfc01e98:	10e9002a 	beq	a3,t1,bfc01f44 <quick_sort+0x1a4>
bfc01e9c:	adcf0000 	sw	t7,0(t6)
bfc01ea0:	0107c021 	addu	t8,t0,a3
bfc01ea4:	8f0f0000 	lw	t7,0(t8)
bfc01ea8:	24ec0004 	addiu	t4,a3,4
bfc01eac:	02077021 	addu	t6,s0,a3
bfc01eb0:	adcf0000 	sw	t7,0(t6)
bfc01eb4:	010c6821 	addu	t5,t0,t4
bfc01eb8:	8da60000 	lw	a2,0(t5)
bfc01ebc:	24e30008 	addiu	v1,a3,8
bfc01ec0:	020c2821 	addu	a1,s0,t4
bfc01ec4:	aca60000 	sw	a2,0(a1)
bfc01ec8:	01031021 	addu	v0,t0,v1
bfc01ecc:	8c5f0000 	lw	ra,0(v0)
bfc01ed0:	24f8000c 	addiu	t8,a3,12
bfc01ed4:	02032021 	addu	a0,s0,v1
bfc01ed8:	ac9f0000 	sw	ra,0(a0)
bfc01edc:	0118c821 	addu	t9,t0,t8
bfc01ee0:	8f2f0000 	lw	t7,0(t9)
bfc01ee4:	24ec0010 	addiu	t4,a3,16
bfc01ee8:	02187021 	addu	t6,s0,t8
bfc01eec:	adcf0000 	sw	t7,0(t6)
bfc01ef0:	010c6821 	addu	t5,t0,t4
bfc01ef4:	8da50000 	lw	a1,0(t5)
bfc01ef8:	24e30014 	addiu	v1,a3,20
bfc01efc:	020c3021 	addu	a2,s0,t4
bfc01f00:	acc50000 	sw	a1,0(a2)
bfc01f04:	01031021 	addu	v0,t0,v1
bfc01f08:	8c440000 	lw	a0,0(v0)
bfc01f0c:	24f80018 	addiu	t8,a3,24
bfc01f10:	0203f821 	addu	ra,s0,v1
bfc01f14:	afe40000 	sw	a0,0(ra)
bfc01f18:	0118c821 	addu	t9,t0,t8
bfc01f1c:	8f2f0000 	lw	t7,0(t9)
bfc01f20:	24ec001c 	addiu	t4,a3,28
bfc01f24:	02187021 	addu	t6,s0,t8
bfc01f28:	adcf0000 	sw	t7,0(t6)
bfc01f2c:	010c6821 	addu	t5,t0,t4
bfc01f30:	8da60000 	lw	a2,0(t5)
bfc01f34:	020c2821 	addu	a1,s0,t4
bfc01f38:	24e70020 	addiu	a3,a3,32
bfc01f3c:	14e9ffd8 	bne	a3,t1,bfc01ea0 <quick_sort+0x100>
bfc01f40:	aca60000 	sw	a2,0(a1)
bfc01f44:	25442140 	addiu	a0,t2,8512
bfc01f48:	2566ffff 	addiu	a2,t3,-1
bfc01f4c:	0ff00270 	jal	bfc009c0 <_quick_sort>
bfc01f50:	00002821 	move	a1,zero
bfc01f54:	8fbf0014 	lw	ra,20(sp)
bfc01f58:	02001021 	move	v0,s0
bfc01f5c:	8fb00010 	lw	s0,16(sp)
bfc01f60:	03e00008 	jr	ra
bfc01f64:	27bd0018 	addiu	sp,sp,24
bfc01f68:	3c0a8000 	lui	t2,0x8000
bfc01f6c:	0bf007d1 	j	bfc01f44 <quick_sort+0x1a4>
bfc01f70:	25502140 	addiu	s0,t2,8512
	...

bfc01f80 <printf>:
printf():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc01f80:	27bdffc8 	addiu	sp,sp,-56
bfc01f84:	afb30024 	sw	s3,36(sp)
bfc01f88:	afbf0034 	sw	ra,52(sp)
bfc01f8c:	afb60030 	sw	s6,48(sp)
bfc01f90:	afb5002c 	sw	s5,44(sp)
bfc01f94:	afb40028 	sw	s4,40(sp)
bfc01f98:	afb20020 	sw	s2,32(sp)
bfc01f9c:	afb1001c 	sw	s1,28(sp)
bfc01fa0:	afb00018 	sw	s0,24(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc01fa4:	80900000 	lb	s0,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc01fa8:	00809821 	move	s3,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:8
bfc01fac:	27a4003c 	addiu	a0,sp,60
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc01fb0:	afa5003c 	sw	a1,60(sp)
bfc01fb4:	afa60040 	sw	a2,64(sp)
bfc01fb8:	afa70044 	sw	a3,68(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc01fbc:	12000013 	beqz	s0,bfc0200c <printf+0x8c>
bfc01fc0:	afa40010 	sw	a0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc01fc4:	3c028000 	lui	v0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc01fc8:	00809021 	move	s2,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc01fcc:	24560030 	addiu	s6,v0,48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc01fd0:	00008821 	move	s1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc01fd4:	24140025 	li	s4,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc01fd8:	2415000a 	li	s5,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc01fdc:	12140016 	beq	s0,s4,bfc02038 <printf+0xb8>
bfc01fe0:	02711021 	addu	v0,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc01fe4:	1215002f 	beq	s0,s5,bfc020a4 <printf+0x124>
bfc01fe8:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:80
bfc01fec:	0ff00879 	jal	bfc021e4 <putchar>
bfc01ff0:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc01ff4:	26310001 	addiu	s1,s1,1
bfc01ff8:	02711021 	addu	v0,s3,s1
bfc01ffc:	80500000 	lb	s0,0(v0)
bfc02000:	00000000 	nop
bfc02004:	1600fff5 	bnez	s0,bfc01fdc <printf+0x5c>
bfc02008:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:84
bfc0200c:	8fbf0034 	lw	ra,52(sp)
bfc02010:	00001021 	move	v0,zero
bfc02014:	8fb60030 	lw	s6,48(sp)
bfc02018:	8fb5002c 	lw	s5,44(sp)
bfc0201c:	8fb40028 	lw	s4,40(sp)
bfc02020:	8fb30024 	lw	s3,36(sp)
bfc02024:	8fb20020 	lw	s2,32(sp)
bfc02028:	8fb1001c 	lw	s1,28(sp)
bfc0202c:	8fb00018 	lw	s0,24(sp)
bfc02030:	03e00008 	jr	ra
bfc02034:	27bd0038 	addiu	sp,sp,56
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc02038:	80440001 	lb	a0,1(v0)
bfc0203c:	24050001 	li	a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc02040:	2482ffdb 	addiu	v0,a0,-37
bfc02044:	304200ff 	andi	v0,v0,0xff
bfc02048:	2c430054 	sltiu	v1,v0,84
bfc0204c:	14600005 	bnez	v1,bfc02064 <printf+0xe4>
bfc02050:	00021080 	sll	v0,v0,0x2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:73
bfc02054:	0ff00879 	jal	bfc021e4 <putchar>
bfc02058:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc0205c:	0bf007fe 	j	bfc01ff8 <printf+0x78>
bfc02060:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc02064:	02c21021 	addu	v0,s6,v0
bfc02068:	8c430000 	lw	v1,0(v0)
bfc0206c:	00000000 	nop
bfc02070:	00600008 	jr	v1
bfc02074:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:65
bfc02078:	26310001 	addiu	s1,s1,1
bfc0207c:	02711021 	addu	v0,s3,s1
bfc02080:	80440001 	lb	a0,1(v0)
bfc02084:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc02088:	2482ffcf 	addiu	v0,a0,-49
bfc0208c:	304200ff 	andi	v0,v0,0xff
bfc02090:	2c420009 	sltiu	v0,v0,9
bfc02094:	1440003f 	bnez	v0,bfc02194 <printf+0x214>
bfc02098:	00002821 	move	a1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc0209c:	0bf00811 	j	bfc02044 <printf+0xc4>
bfc020a0:	2482ffdb 	addiu	v0,a0,-37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc020a4:	0ff00879 	jal	bfc021e4 <putchar>
bfc020a8:	2404000d 	li	a0,13
bfc020ac:	0bf007fb 	j	bfc01fec <printf+0x6c>
bfc020b0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:30
bfc020b4:	8e440000 	lw	a0,0(s2)
bfc020b8:	2406000a 	li	a2,10
bfc020bc:	0ff008b4 	jal	bfc022d0 <printbase>
bfc020c0:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:31
bfc020c4:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:32
bfc020c8:	0bf007fd 	j	bfc01ff4 <printf+0x74>
bfc020cc:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:20
bfc020d0:	8e440000 	lw	a0,0(s2)
bfc020d4:	0ff00884 	jal	bfc02210 <putstring>
bfc020d8:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:21
bfc020dc:	0bf007fd 	j	bfc01ff4 <printf+0x74>
bfc020e0:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:56
bfc020e4:	8e440000 	lw	a0,0(s2)
bfc020e8:	24060010 	li	a2,16
bfc020ec:	0ff008b4 	jal	bfc022d0 <printbase>
bfc020f0:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:57
bfc020f4:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:58
bfc020f8:	0bf007fd 	j	bfc01ff4 <printf+0x74>
bfc020fc:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:45
bfc02100:	8e440000 	lw	a0,0(s2)
bfc02104:	24060008 	li	a2,8
bfc02108:	0ff008b4 	jal	bfc022d0 <printbase>
bfc0210c:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:46
bfc02110:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:47
bfc02114:	0bf007fd 	j	bfc01ff4 <printf+0x74>
bfc02118:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:40
bfc0211c:	8e440000 	lw	a0,0(s2)
bfc02120:	2406000a 	li	a2,10
bfc02124:	0ff008b4 	jal	bfc022d0 <printbase>
bfc02128:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:41
bfc0212c:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:42
bfc02130:	0bf007fd 	j	bfc01ff4 <printf+0x74>
bfc02134:	26310002 	addiu	s1,s1,2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:35
bfc02138:	8e440000 	lw	a0,0(s2)
bfc0213c:	2406000a 	li	a2,10
bfc02140:	0ff008b4 	jal	bfc022d0 <printbase>
bfc02144:	24070001 	li	a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:36
bfc02148:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:37
bfc0214c:	0bf007fd 	j	bfc01ff4 <printf+0x74>
bfc02150:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:25
bfc02154:	8e440000 	lw	a0,0(s2)
bfc02158:	0ff00879 	jal	bfc021e4 <putchar>
bfc0215c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:26
bfc02160:	0bf007fd 	j	bfc01ff4 <printf+0x74>
bfc02164:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:50
bfc02168:	8e440000 	lw	a0,0(s2)
bfc0216c:	24060002 	li	a2,2
bfc02170:	0ff008b4 	jal	bfc022d0 <printbase>
bfc02174:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:51
bfc02178:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:52
bfc0217c:	0bf007fd 	j	bfc01ff4 <printf+0x74>
bfc02180:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:61
bfc02184:	0ff00879 	jal	bfc021e4 <putchar>
bfc02188:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:62
bfc0218c:	0bf007fd 	j	bfc01ff4 <printf+0x74>
bfc02190:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc02194:	02713021 	addu	a2,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc02198:	000510c0 	sll	v0,a1,0x3
bfc0219c:	00051840 	sll	v1,a1,0x1
bfc021a0:	00621821 	addu	v1,v1,v0
bfc021a4:	00641821 	addu	v1,v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc021a8:	80c40002 	lb	a0,2(a2)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc021ac:	2465ffd0 	addiu	a1,v1,-48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc021b0:	2482ffcf 	addiu	v0,a0,-49
bfc021b4:	304200ff 	andi	v0,v0,0xff
bfc021b8:	2c420009 	sltiu	v0,v0,9
bfc021bc:	26310001 	addiu	s1,s1,1
bfc021c0:	1040ff9f 	beqz	v0,bfc02040 <printf+0xc0>
bfc021c4:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc021c8:	0bf00867 	j	bfc0219c <printf+0x21c>
bfc021cc:	000510c0 	sll	v0,a1,0x3

bfc021d0 <tgt_putchar>:
tgt_putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:9
bfc021d0:	3c018000 	lui	at,0x8000
bfc021d4:	03e00008 	jr	ra
bfc021d8:	a0247ffc 	sb	a0,32764(at)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:18
bfc021dc:	03e00008 	jr	ra
bfc021e0:	00000000 	nop

bfc021e4 <putchar>:
putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:2
bfc021e4:	27bdffe8 	addiu	sp,sp,-24
bfc021e8:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:3
bfc021ec:	0ff00874 	jal	bfc021d0 <tgt_putchar>
bfc021f0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:5
bfc021f4:	8fbf0014 	lw	ra,20(sp)
bfc021f8:	00001021 	move	v0,zero
bfc021fc:	03e00008 	jr	ra
bfc02200:	27bd0018 	addiu	sp,sp,24
	...

bfc02210 <putstring>:
putstring():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:2
bfc02210:	27bdffe0 	addiu	sp,sp,-32
bfc02214:	afb10014 	sw	s1,20(sp)
bfc02218:	afbf001c 	sw	ra,28(sp)
bfc0221c:	afb20018 	sw	s2,24(sp)
bfc02220:	afb00010 	sw	s0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc02224:	80900000 	lb	s0,0(a0)
bfc02228:	00000000 	nop
bfc0222c:	12000013 	beqz	s0,bfc0227c <putstring+0x6c>
bfc02230:	00808821 	move	s1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc02234:	0bf00895 	j	bfc02254 <putstring+0x44>
bfc02238:	2412000a 	li	s2,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc0223c:	0ff00879 	jal	bfc021e4 <putchar>
bfc02240:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc02244:	82300000 	lb	s0,0(s1)
bfc02248:	00000000 	nop
bfc0224c:	1200000b 	beqz	s0,bfc0227c <putstring+0x6c>
bfc02250:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc02254:	1612fff9 	bne	s0,s2,bfc0223c <putstring+0x2c>
bfc02258:	26310001 	addiu	s1,s1,1
bfc0225c:	0ff00879 	jal	bfc021e4 <putchar>
bfc02260:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc02264:	0ff00879 	jal	bfc021e4 <putchar>
bfc02268:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc0226c:	82300000 	lb	s0,0(s1)
bfc02270:	00000000 	nop
bfc02274:	1600fff7 	bnez	s0,bfc02254 <putstring+0x44>
bfc02278:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:11
bfc0227c:	8fbf001c 	lw	ra,28(sp)
bfc02280:	00001021 	move	v0,zero
bfc02284:	8fb20018 	lw	s2,24(sp)
bfc02288:	8fb10014 	lw	s1,20(sp)
bfc0228c:	8fb00010 	lw	s0,16(sp)
bfc02290:	03e00008 	jr	ra
bfc02294:	27bd0020 	addiu	sp,sp,32

bfc02298 <puts>:
puts():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:15
bfc02298:	27bdffe8 	addiu	sp,sp,-24
bfc0229c:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:16
bfc022a0:	0ff00884 	jal	bfc02210 <putstring>
bfc022a4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:17
bfc022a8:	0ff00879 	jal	bfc021e4 <putchar>
bfc022ac:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:18
bfc022b0:	0ff00879 	jal	bfc021e4 <putchar>
bfc022b4:	2404000a 	li	a0,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:20
bfc022b8:	8fbf0014 	lw	ra,20(sp)
bfc022bc:	00001021 	move	v0,zero
bfc022c0:	03e00008 	jr	ra
bfc022c4:	27bd0018 	addiu	sp,sp,24
	...

bfc022d0 <printbase>:
printbase():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc022d0:	27bdff98 	addiu	sp,sp,-104
bfc022d4:	afb30060 	sw	s3,96(sp)
bfc022d8:	afb2005c 	sw	s2,92(sp)
bfc022dc:	afbf0064 	sw	ra,100(sp)
bfc022e0:	afb10058 	sw	s1,88(sp)
bfc022e4:	afb00054 	sw	s0,84(sp)
bfc022e8:	00801821 	move	v1,a0
bfc022ec:	00a09821 	move	s3,a1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:7
bfc022f0:	10e00003 	beqz	a3,bfc02300 <printbase+0x30>
bfc022f4:	00c09021 	move	s2,a2
bfc022f8:	0480002f 	bltz	a0,bfc023b8 <printbase+0xe8>
bfc022fc:	2404002d 	li	a0,45
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:12
bfc02300:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc02304:	1200000c 	beqz	s0,bfc02338 <printbase+0x68>
bfc02308:	00008821 	move	s1,zero
bfc0230c:	27a50010 	addiu	a1,sp,16
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc02310:	16400002 	bnez	s2,bfc0231c <printbase+0x4c>
bfc02314:	0212001b 	divu	zero,s0,s2
bfc02318:	0007000d 	break	0x7
bfc0231c:	00b12021 	addu	a0,a1,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc02320:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc02324:	00001010 	mfhi	v0
bfc02328:	a0820000 	sb	v0,0(a0)
bfc0232c:	00001812 	mflo	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc02330:	1460fff7 	bnez	v1,bfc02310 <printbase+0x40>
bfc02334:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc02338:	0233102a 	slt	v0,s1,s3
bfc0233c:	10400002 	beqz	v0,bfc02348 <printbase+0x78>
bfc02340:	02201821 	move	v1,s1
bfc02344:	02601821 	move	v1,s3
bfc02348:	1060000c 	beqz	v1,bfc0237c <printbase+0xac>
bfc0234c:	2470ffff 	addiu	s0,v1,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc02350:	27a20010 	addiu	v0,sp,16
bfc02354:	00509021 	addu	s2,v0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc02358:	26020001 	addiu	v0,s0,1
bfc0235c:	0222102a 	slt	v0,s1,v0
bfc02360:	1040000e 	beqz	v0,bfc0239c <printbase+0xcc>
bfc02364:	24040030 	li	a0,48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc02368:	02009821 	move	s3,s0
bfc0236c:	0ff00879 	jal	bfc021e4 <putchar>
bfc02370:	2610ffff 	addiu	s0,s0,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc02374:	1660fff8 	bnez	s3,bfc02358 <printbase+0x88>
bfc02378:	2652ffff 	addiu	s2,s2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:28
bfc0237c:	8fbf0064 	lw	ra,100(sp)
bfc02380:	00001021 	move	v0,zero
bfc02384:	8fb30060 	lw	s3,96(sp)
bfc02388:	8fb2005c 	lw	s2,92(sp)
bfc0238c:	8fb10058 	lw	s1,88(sp)
bfc02390:	8fb00054 	lw	s0,84(sp)
bfc02394:	03e00008 	jr	ra
bfc02398:	27bd0068 	addiu	sp,sp,104
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc0239c:	82440000 	lb	a0,0(s2)
bfc023a0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc023a4:	2882000a 	slti	v0,a0,10
bfc023a8:	14400007 	bnez	v0,bfc023c8 <printbase+0xf8>
bfc023ac:	02009821 	move	s3,s0
bfc023b0:	0bf008db 	j	bfc0236c <printbase+0x9c>
bfc023b4:	24840057 	addiu	a0,a0,87
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:10
bfc023b8:	0ff00879 	jal	bfc021e4 <putchar>
bfc023bc:	00038023 	negu	s0,v1
bfc023c0:	0bf008c1 	j	bfc02304 <printbase+0x34>
bfc023c4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc023c8:	0bf008da 	j	bfc02368 <printbase+0x98>
bfc023cc:	24840030 	addiu	a0,a0,48

bfc023d0 <_get_count>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:15
bfc023d0:	3c01bfd0 	lui	at,0xbfd0
bfc023d4:	3421e000 	ori	at,at,0xe000
bfc023d8:	8c220000 	lw	v0,0(at)
bfc023dc:	03e00008 	jr	ra
bfc023e0:	00000000 	nop

bfc023e4 <get_count>:
get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:20
bfc023e4:	3c01bfd0 	lui	at,0xbfd0
bfc023e8:	3421e000 	ori	at,at,0xe000
bfc023ec:	8c220000 	lw	v0,0(at)
bfc023f0:	03e00008 	jr	ra
bfc023f4:	00000000 	nop

bfc023f8 <get_clock>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc023f8:	3c01bfd0 	lui	at,0xbfd0
bfc023fc:	3421e000 	ori	at,at,0xe000
bfc02400:	8c220000 	lw	v0,0(at)
get_clock():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:39
bfc02404:	03e00008 	jr	ra
bfc02408:	00021040 	sll	v0,v0,0x1

bfc0240c <get_ns>:
get_ns():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:45
bfc0240c:	40024800 	mfc0	v0,$9
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:51
bfc02410:	03e00008 	jr	ra
bfc02414:	00021040 	sll	v0,v0,0x1

bfc02418 <clock_gettime>:
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:23
bfc02418:	27bdffe8 	addiu	sp,sp,-24
bfc0241c:	afbf0014 	sw	ra,20(sp)
bfc02420:	00a04821 	move	t1,a1
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc02424:	3c01bfd0 	lui	at,0xbfd0
bfc02428:	3421e000 	ori	at,at,0xe000
bfc0242c:	8c230000 	lw	v1,0(at)
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc02430:	240203e8 	li	v0,1000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc02434:	14400002 	bnez	v0,bfc02440 <clock_gettime+0x28>
bfc02438:	0062001b 	divu	zero,v1,v0
bfc0243c:	0007000d 	break	0x7
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc02440:	00031840 	sll	v1,v1,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc02444:	3c073b9a 	lui	a3,0x3b9a
bfc02448:	34e7ca00 	ori	a3,a3,0xca00
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc0244c:	3c048000 	lui	a0,0x8000
bfc02450:	24840180 	addiu	a0,a0,384
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc02454:	00003012 	mflo	a2
bfc02458:	00063040 	sll	a2,a2,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc0245c:	14400002 	bnez	v0,bfc02468 <clock_gettime+0x50>
bfc02460:	0062001b 	divu	zero,v1,v0
bfc02464:	0007000d 	break	0x7
bfc02468:	00002810 	mfhi	a1
bfc0246c:	ad250004 	sw	a1,4(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc02470:	14400002 	bnez	v0,bfc0247c <clock_gettime+0x64>
bfc02474:	00c2001b 	divu	zero,a2,v0
bfc02478:	0007000d 	break	0x7
bfc0247c:	00005010 	mfhi	t2
bfc02480:	ad2a0008 	sw	t2,8(t1)
bfc02484:	00004012 	mflo	t0
bfc02488:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc0248c:	14e00002 	bnez	a3,bfc02498 <clock_gettime+0x80>
bfc02490:	00c7001b 	divu	zero,a2,a3
bfc02494:	0007000d 	break	0x7
bfc02498:	00003012 	mflo	a2
bfc0249c:	ad260000 	sw	a2,0(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:28
bfc024a0:	14400002 	bnez	v0,bfc024ac <clock_gettime+0x94>
bfc024a4:	0102001b 	divu	zero,t0,v0
bfc024a8:	0007000d 	break	0x7
bfc024ac:	00001810 	mfhi	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc024b0:	0ff007e0 	jal	bfc01f80 <printf>
bfc024b4:	ad23000c 	sw	v1,12(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:32
bfc024b8:	8fbf0014 	lw	ra,20(sp)
bfc024bc:	00001021 	move	v0,zero
bfc024c0:	03e00008 	jr	ra
bfc024c4:	27bd0018 	addiu	sp,sp,24
	...

bfc024d0 <get_epc>:
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc024d0:	40027000 	mfc0	v0,c0_epc
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:9
bfc024d4:	03e00008 	jr	ra
bfc024d8:	00000000 	nop

bfc024dc <get_cause>:
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc024dc:	40026800 	mfc0	v0,c0_cause
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:19
bfc024e0:	03e00008 	jr	ra
bfc024e4:	00000000 	nop

bfc024e8 <exception>:
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc024e8:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:22
bfc024ec:	27bdffe8 	addiu	sp,sp,-24
bfc024f0:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc024f4:	0ff007e0 	jal	bfc01f80 <printf>
bfc024f8:	24840194 	addiu	a0,a0,404
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc024fc:	3c048000 	lui	a0,0x8000
bfc02500:	248401b0 	addiu	a0,a0,432
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc02504:	40057000 	mfc0	a1,c0_epc
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc02508:	0ff007e0 	jal	bfc01f80 <printf>
bfc0250c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc02510:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc02514:	8fbf0014 	lw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc02518:	248401c0 	addiu	a0,a0,448
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc0251c:	27bd0018 	addiu	sp,sp,24
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc02520:	40056800 	mfc0	a1,c0_cause
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc02524:	0bf007e0 	j	bfc01f80 <printf>
bfc02528:	00000000 	nop
bfc0252c:	00000000 	nop
