
obj/select_sort/main.elf:     file format elf32-tradlittlemips
obj/select_sort/main.elf


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
bfc00380:	0ff003a2 	jal	bfc00e88 <exception>
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
bfc0039c:	0ff00361 	jal	bfc00d84 <get_count>
bfc003a0:	afb00014 	sw	s0,20(sp)
bfc003a4:	3c078000 	lui	a3,0x8000
bfc003a8:	24e401f0 	addiu	a0,a3,496
bfc003ac:	240503e8 	li	a1,1000
bfc003b0:	0ff00158 	jal	bfc00560 <select_sort>
bfc003b4:	00408021 	move	s0,v0
bfc003b8:	0ff00361 	jal	bfc00d84 <get_count>
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
bfc00508:	0ff00248 	jal	bfc00920 <printf>
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
bfc00558:	0bf00248 	j	bfc00920 <printf>
bfc0055c:	27bd0020 	addiu	sp,sp,32

bfc00560 <select_sort>:
select_sort():
bfc00560:	00a05021 	move	t2,a1
bfc00564:	04a000e8 	bltz	a1,bfc00908 <select_sort+0x3a8>
bfc00568:	00804021 	move	t0,a0
bfc0056c:	24a70001 	addiu	a3,a1,1
bfc00570:	00074880 	sll	t1,a3,0x2
bfc00574:	2526fffc 	addiu	a2,t1,-4
bfc00578:	8c840000 	lw	a0,0(a0)
bfc0057c:	3c058000 	lui	a1,0x8000
bfc00580:	00061882 	srl	v1,a2,0x2
bfc00584:	24070004 	li	a3,4
bfc00588:	aca42140 	sw	a0,8512(a1)
bfc0058c:	30630007 	andi	v1,v1,0x7
bfc00590:	10e9005a 	beq	a3,t1,bfc006fc <select_sort+0x19c>
bfc00594:	24ac2140 	addiu	t4,a1,8512
bfc00598:	1060002f 	beqz	v1,bfc00658 <select_sort+0xf8>
bfc0059c:	24050001 	li	a1,1
bfc005a0:	10650027 	beq	v1,a1,bfc00640 <select_sort+0xe0>
bfc005a4:	240d0002 	li	t5,2
bfc005a8:	106d0020 	beq	v1,t5,bfc0062c <select_sort+0xcc>
bfc005ac:	240f0003 	li	t7,3
bfc005b0:	106f001a 	beq	v1,t7,bfc0061c <select_sort+0xbc>
bfc005b4:	01077021 	addu	t6,t0,a3
bfc005b8:	10670012 	beq	v1,a3,bfc00604 <select_sort+0xa4>
bfc005bc:	24060005 	li	a2,5
bfc005c0:	1066000b 	beq	v1,a2,bfc005f0 <select_sort+0x90>
bfc005c4:	240b0006 	li	t3,6
bfc005c8:	106b0005 	beq	v1,t3,bfc005e0 <select_sort+0x80>
bfc005cc:	01071021 	addu	v0,t0,a3
bfc005d0:	8d030004 	lw	v1,4(t0)
bfc005d4:	24070008 	li	a3,8
bfc005d8:	ad830004 	sw	v1,4(t4)
bfc005dc:	01071021 	addu	v0,t0,a3
bfc005e0:	8c590000 	lw	t9,0(v0)
bfc005e4:	01877021 	addu	t6,t4,a3
bfc005e8:	add90000 	sw	t9,0(t6)
bfc005ec:	24e70004 	addiu	a3,a3,4
bfc005f0:	01072821 	addu	a1,t0,a3
bfc005f4:	8ca40000 	lw	a0,0(a1)
bfc005f8:	0187c021 	addu	t8,t4,a3
bfc005fc:	af040000 	sw	a0,0(t8)
bfc00600:	24e70004 	addiu	a3,a3,4
bfc00604:	01073021 	addu	a2,t0,a3
bfc00608:	8ccf0000 	lw	t7,0(a2)
bfc0060c:	01876821 	addu	t5,t4,a3
bfc00610:	adaf0000 	sw	t7,0(t5)
bfc00614:	24e70004 	addiu	a3,a3,4
bfc00618:	01077021 	addu	t6,t0,a3
bfc0061c:	8dc30000 	lw	v1,0(t6)
bfc00620:	01875821 	addu	t3,t4,a3
bfc00624:	ad630000 	sw	v1,0(t3)
bfc00628:	24e70004 	addiu	a3,a3,4
bfc0062c:	01071021 	addu	v0,t0,a3
bfc00630:	8c580000 	lw	t8,0(v0)
bfc00634:	0187c821 	addu	t9,t4,a3
bfc00638:	af380000 	sw	t8,0(t9)
bfc0063c:	24e70004 	addiu	a3,a3,4
bfc00640:	01076821 	addu	t5,t0,a3
bfc00644:	8da40000 	lw	a0,0(t5)
bfc00648:	01872821 	addu	a1,t4,a3
bfc0064c:	24e70004 	addiu	a3,a3,4
bfc00650:	10e9002a 	beq	a3,t1,bfc006fc <select_sort+0x19c>
bfc00654:	aca40000 	sw	a0,0(a1)
bfc00658:	01071021 	addu	v0,t0,a3
bfc0065c:	8c430000 	lw	v1,0(v0)
bfc00660:	24f80004 	addiu	t8,a3,4
bfc00664:	01872021 	addu	a0,t4,a3
bfc00668:	ac830000 	sw	v1,0(a0)
bfc0066c:	0118c821 	addu	t9,t0,t8
bfc00670:	8f2f0000 	lw	t7,0(t9)
bfc00674:	24eb0008 	addiu	t3,a3,8
bfc00678:	01987021 	addu	t6,t4,t8
bfc0067c:	adcf0000 	sw	t7,0(t6)
bfc00680:	010b6821 	addu	t5,t0,t3
bfc00684:	8da60000 	lw	a2,0(t5)
bfc00688:	24e3000c 	addiu	v1,a3,12
bfc0068c:	018b2821 	addu	a1,t4,t3
bfc00690:	aca60000 	sw	a2,0(a1)
bfc00694:	01031021 	addu	v0,t0,v1
bfc00698:	8c440000 	lw	a0,0(v0)
bfc0069c:	24ef0010 	addiu	t7,a3,16
bfc006a0:	0183c821 	addu	t9,t4,v1
bfc006a4:	af240000 	sw	a0,0(t9)
bfc006a8:	010fc021 	addu	t8,t0,t7
bfc006ac:	8f0e0000 	lw	t6,0(t8)
bfc006b0:	24e60014 	addiu	a2,a3,20
bfc006b4:	018f6821 	addu	t5,t4,t7
bfc006b8:	adae0000 	sw	t6,0(t5)
bfc006bc:	01065821 	addu	t3,t0,a2
bfc006c0:	8d650000 	lw	a1,0(t3)
bfc006c4:	24e40018 	addiu	a0,a3,24
bfc006c8:	01861821 	addu	v1,t4,a2
bfc006cc:	ac650000 	sw	a1,0(v1)
bfc006d0:	01041021 	addu	v0,t0,a0
bfc006d4:	8c590000 	lw	t9,0(v0)
bfc006d8:	24ee001c 	addiu	t6,a3,28
bfc006dc:	0184c021 	addu	t8,t4,a0
bfc006e0:	af190000 	sw	t9,0(t8)
bfc006e4:	010e7821 	addu	t7,t0,t6
bfc006e8:	8ded0000 	lw	t5,0(t7)
bfc006ec:	018e5821 	addu	t3,t4,t6
bfc006f0:	24e70020 	addiu	a3,a3,32
bfc006f4:	14e9ffd8 	bne	a3,t1,bfc00658 <select_sort+0xf8>
bfc006f8:	ad6d0000 	sw	t5,0(t3)
bfc006fc:	254fffff 	addiu	t7,t2,-1
bfc00700:	19e00072 	blez	t7,bfc008cc <select_sort+0x36c>
bfc00704:	01806821 	move	t5,t4
bfc00708:	00002021 	move	a0,zero
bfc0070c:	248b0001 	addiu	t3,a0,1
bfc00710:	016a402a 	slt	t0,t3,t2
bfc00714:	11000078 	beqz	t0,bfc008f8 <select_sort+0x398>
bfc00718:	000b3027 	nor	a2,zero,t3
bfc0071c:	000b3880 	sll	a3,t3,0x2
bfc00720:	01874021 	addu	t0,t4,a3
bfc00724:	8dae0000 	lw	t6,0(t5)
bfc00728:	8d070000 	lw	a3,0(t0)
bfc0072c:	00ca4821 	addu	t1,a2,t2
bfc00730:	00ee282a 	slt	a1,a3,t6
bfc00734:	00801821 	move	v1,a0
bfc00738:	10a0006d 	beqz	a1,bfc008f0 <select_sort+0x390>
bfc0073c:	31260003 	andi	a2,t1,0x3
bfc00740:	00e04821 	move	t1,a3
bfc00744:	10a00002 	beqz	a1,bfc00750 <select_sort+0x1f0>
bfc00748:	25650001 	addiu	a1,t3,1
bfc0074c:	01601821 	move	v1,t3
bfc00750:	00aac82a 	slt	t9,a1,t2
bfc00754:	25070004 	addiu	a3,t0,4
bfc00758:	13200053 	beqz	t9,bfc008a8 <select_sort+0x348>
bfc0075c:	01202021 	move	a0,t1
bfc00760:	10c0002a 	beqz	a2,bfc0080c <select_sort+0x2ac>
bfc00764:	24020001 	li	v0,1
bfc00768:	10c2001b 	beq	a2,v0,bfc007d8 <select_sort+0x278>
bfc0076c:	24180002 	li	t8,2
bfc00770:	10d8000d 	beq	a2,t8,bfc007a8 <select_sort+0x248>
bfc00774:	00000000 	nop
bfc00778:	8d020004 	lw	v0,4(t0)
bfc0077c:	00000000 	nop
bfc00780:	0049202a 	slt	a0,v0,t1
bfc00784:	14800002 	bnez	a0,bfc00790 <select_sort+0x230>
bfc00788:	00000000 	nop
bfc0078c:	01201021 	move	v0,t1
bfc00790:	10800002 	beqz	a0,bfc0079c <select_sort+0x23c>
bfc00794:	00000000 	nop
bfc00798:	00a01821 	move	v1,a1
bfc0079c:	24a50001 	addiu	a1,a1,1
bfc007a0:	24e70004 	addiu	a3,a3,4
bfc007a4:	00402021 	move	a0,v0
bfc007a8:	8ce20000 	lw	v0,0(a3)
bfc007ac:	00000000 	nop
bfc007b0:	0044302a 	slt	a2,v0,a0
bfc007b4:	14c00002 	bnez	a2,bfc007c0 <select_sort+0x260>
bfc007b8:	00000000 	nop
bfc007bc:	00801021 	move	v0,a0
bfc007c0:	10c00002 	beqz	a2,bfc007cc <select_sort+0x26c>
bfc007c4:	00000000 	nop
bfc007c8:	00a01821 	move	v1,a1
bfc007cc:	24a50001 	addiu	a1,a1,1
bfc007d0:	24e70004 	addiu	a3,a3,4
bfc007d4:	00402021 	move	a0,v0
bfc007d8:	8ce20000 	lw	v0,0(a3)
bfc007dc:	00000000 	nop
bfc007e0:	0044302a 	slt	a2,v0,a0
bfc007e4:	10c00002 	beqz	a2,bfc007f0 <select_sort+0x290>
bfc007e8:	00804821 	move	t1,a0
bfc007ec:	00404821 	move	t1,v0
bfc007f0:	10c00002 	beqz	a2,bfc007fc <select_sort+0x29c>
bfc007f4:	00000000 	nop
bfc007f8:	00a01821 	move	v1,a1
bfc007fc:	24a50001 	addiu	a1,a1,1
bfc00800:	00aa202a 	slt	a0,a1,t2
bfc00804:	10800028 	beqz	a0,bfc008a8 <select_sort+0x348>
bfc00808:	24e70004 	addiu	a3,a3,4
bfc0080c:	8ce20000 	lw	v0,0(a3)
bfc00810:	00000000 	nop
bfc00814:	0049202a 	slt	a0,v0,t1
bfc00818:	14800002 	bnez	a0,bfc00824 <select_sort+0x2c4>
bfc0081c:	00000000 	nop
bfc00820:	01201021 	move	v0,t1
bfc00824:	10800002 	beqz	a0,bfc00830 <select_sort+0x2d0>
bfc00828:	00000000 	nop
bfc0082c:	00a01821 	move	v1,a1
bfc00830:	8ce40004 	lw	a0,4(a3)
bfc00834:	24a60001 	addiu	a2,a1,1
bfc00838:	0082282a 	slt	a1,a0,v0
bfc0083c:	10a00002 	beqz	a1,bfc00848 <select_sort+0x2e8>
bfc00840:	24e70004 	addiu	a3,a3,4
bfc00844:	00801021 	move	v0,a0
bfc00848:	10a00002 	beqz	a1,bfc00854 <select_sort+0x2f4>
bfc0084c:	00000000 	nop
bfc00850:	00c01821 	move	v1,a2
bfc00854:	8ce40004 	lw	a0,4(a3)
bfc00858:	00000000 	nop
bfc0085c:	0082282a 	slt	a1,a0,v0
bfc00860:	10a00002 	beqz	a1,bfc0086c <select_sort+0x30c>
bfc00864:	24c80001 	addiu	t0,a2,1
bfc00868:	00801021 	move	v0,a0
bfc0086c:	10a00002 	beqz	a1,bfc00878 <select_sort+0x318>
bfc00870:	00000000 	nop
bfc00874:	01001821 	move	v1,t0
bfc00878:	8ce40008 	lw	a0,8(a3)
bfc0087c:	00000000 	nop
bfc00880:	0082282a 	slt	a1,a0,v0
bfc00884:	10a00016 	beqz	a1,bfc008e0 <select_sort+0x380>
bfc00888:	24c80002 	addiu	t0,a2,2
bfc0088c:	00804821 	move	t1,a0
bfc00890:	10a00002 	beqz	a1,bfc0089c <select_sort+0x33c>
bfc00894:	24c50003 	addiu	a1,a2,3
bfc00898:	01001821 	move	v1,t0
bfc0089c:	00aa402a 	slt	t0,a1,t2
bfc008a0:	1500ffda 	bnez	t0,bfc0080c <select_sort+0x2ac>
bfc008a4:	24e7000c 	addiu	a3,a3,12
bfc008a8:	01c02821 	move	a1,t6
bfc008ac:	0003c080 	sll	t8,v1,0x2
bfc008b0:	01602021 	move	a0,t3
bfc008b4:	030c7021 	addu	t6,t8,t4
bfc008b8:	016f582a 	slt	t3,t3,t7
bfc008bc:	ada90000 	sw	t1,0(t5)
bfc008c0:	adc50000 	sw	a1,0(t6)
bfc008c4:	1560ff91 	bnez	t3,bfc0070c <select_sort+0x1ac>
bfc008c8:	25ad0004 	addiu	t5,t5,4
bfc008cc:	03e00008 	jr	ra
bfc008d0:	01801021 	move	v0,t4
	...
bfc008e0:	0bf00224 	j	bfc00890 <select_sort+0x330>
bfc008e4:	00404821 	move	t1,v0
	...
bfc008f0:	0bf001d1 	j	bfc00744 <select_sort+0x1e4>
bfc008f4:	01c04821 	move	t1,t6
bfc008f8:	8da50000 	lw	a1,0(t5)
bfc008fc:	00801821 	move	v1,a0
bfc00900:	0bf0022b 	j	bfc008ac <select_sort+0x34c>
bfc00904:	00a04821 	move	t1,a1
bfc00908:	3c028000 	lui	v0,0x8000
bfc0090c:	0bf001bf 	j	bfc006fc <select_sort+0x19c>
bfc00910:	244c2140 	addiu	t4,v0,8512
	...

bfc00920 <printf>:
printf():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc00920:	27bdffc8 	addiu	sp,sp,-56
bfc00924:	afb30024 	sw	s3,36(sp)
bfc00928:	afbf0034 	sw	ra,52(sp)
bfc0092c:	afb60030 	sw	s6,48(sp)
bfc00930:	afb5002c 	sw	s5,44(sp)
bfc00934:	afb40028 	sw	s4,40(sp)
bfc00938:	afb20020 	sw	s2,32(sp)
bfc0093c:	afb1001c 	sw	s1,28(sp)
bfc00940:	afb00018 	sw	s0,24(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00944:	80900000 	lb	s0,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc00948:	00809821 	move	s3,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:8
bfc0094c:	27a4003c 	addiu	a0,sp,60
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc00950:	afa5003c 	sw	a1,60(sp)
bfc00954:	afa60040 	sw	a2,64(sp)
bfc00958:	afa70044 	sw	a3,68(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc0095c:	12000013 	beqz	s0,bfc009ac <printf+0x8c>
bfc00960:	afa40010 	sw	a0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00964:	3c028000 	lui	v0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc00968:	00809021 	move	s2,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc0096c:	24560030 	addiu	s6,v0,48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc00970:	00008821 	move	s1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00974:	24140025 	li	s4,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00978:	2415000a 	li	s5,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc0097c:	12140016 	beq	s0,s4,bfc009d8 <printf+0xb8>
bfc00980:	02711021 	addu	v0,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00984:	1215002f 	beq	s0,s5,bfc00a44 <printf+0x124>
bfc00988:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:80
bfc0098c:	0ff002e1 	jal	bfc00b84 <putchar>
bfc00990:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00994:	26310001 	addiu	s1,s1,1
bfc00998:	02711021 	addu	v0,s3,s1
bfc0099c:	80500000 	lb	s0,0(v0)
bfc009a0:	00000000 	nop
bfc009a4:	1600fff5 	bnez	s0,bfc0097c <printf+0x5c>
bfc009a8:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:84
bfc009ac:	8fbf0034 	lw	ra,52(sp)
bfc009b0:	00001021 	move	v0,zero
bfc009b4:	8fb60030 	lw	s6,48(sp)
bfc009b8:	8fb5002c 	lw	s5,44(sp)
bfc009bc:	8fb40028 	lw	s4,40(sp)
bfc009c0:	8fb30024 	lw	s3,36(sp)
bfc009c4:	8fb20020 	lw	s2,32(sp)
bfc009c8:	8fb1001c 	lw	s1,28(sp)
bfc009cc:	8fb00018 	lw	s0,24(sp)
bfc009d0:	03e00008 	jr	ra
bfc009d4:	27bd0038 	addiu	sp,sp,56
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc009d8:	80440001 	lb	a0,1(v0)
bfc009dc:	24050001 	li	a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc009e0:	2482ffdb 	addiu	v0,a0,-37
bfc009e4:	304200ff 	andi	v0,v0,0xff
bfc009e8:	2c430054 	sltiu	v1,v0,84
bfc009ec:	14600005 	bnez	v1,bfc00a04 <printf+0xe4>
bfc009f0:	00021080 	sll	v0,v0,0x2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:73
bfc009f4:	0ff002e1 	jal	bfc00b84 <putchar>
bfc009f8:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc009fc:	0bf00266 	j	bfc00998 <printf+0x78>
bfc00a00:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00a04:	02c21021 	addu	v0,s6,v0
bfc00a08:	8c430000 	lw	v1,0(v0)
bfc00a0c:	00000000 	nop
bfc00a10:	00600008 	jr	v1
bfc00a14:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:65
bfc00a18:	26310001 	addiu	s1,s1,1
bfc00a1c:	02711021 	addu	v0,s3,s1
bfc00a20:	80440001 	lb	a0,1(v0)
bfc00a24:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00a28:	2482ffcf 	addiu	v0,a0,-49
bfc00a2c:	304200ff 	andi	v0,v0,0xff
bfc00a30:	2c420009 	sltiu	v0,v0,9
bfc00a34:	1440003f 	bnez	v0,bfc00b34 <printf+0x214>
bfc00a38:	00002821 	move	a1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00a3c:	0bf00279 	j	bfc009e4 <printf+0xc4>
bfc00a40:	2482ffdb 	addiu	v0,a0,-37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00a44:	0ff002e1 	jal	bfc00b84 <putchar>
bfc00a48:	2404000d 	li	a0,13
bfc00a4c:	0bf00263 	j	bfc0098c <printf+0x6c>
bfc00a50:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:30
bfc00a54:	8e440000 	lw	a0,0(s2)
bfc00a58:	2406000a 	li	a2,10
bfc00a5c:	0ff0031c 	jal	bfc00c70 <printbase>
bfc00a60:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:31
bfc00a64:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:32
bfc00a68:	0bf00265 	j	bfc00994 <printf+0x74>
bfc00a6c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:20
bfc00a70:	8e440000 	lw	a0,0(s2)
bfc00a74:	0ff002ec 	jal	bfc00bb0 <putstring>
bfc00a78:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:21
bfc00a7c:	0bf00265 	j	bfc00994 <printf+0x74>
bfc00a80:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:56
bfc00a84:	8e440000 	lw	a0,0(s2)
bfc00a88:	24060010 	li	a2,16
bfc00a8c:	0ff0031c 	jal	bfc00c70 <printbase>
bfc00a90:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:57
bfc00a94:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:58
bfc00a98:	0bf00265 	j	bfc00994 <printf+0x74>
bfc00a9c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:45
bfc00aa0:	8e440000 	lw	a0,0(s2)
bfc00aa4:	24060008 	li	a2,8
bfc00aa8:	0ff0031c 	jal	bfc00c70 <printbase>
bfc00aac:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:46
bfc00ab0:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:47
bfc00ab4:	0bf00265 	j	bfc00994 <printf+0x74>
bfc00ab8:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:40
bfc00abc:	8e440000 	lw	a0,0(s2)
bfc00ac0:	2406000a 	li	a2,10
bfc00ac4:	0ff0031c 	jal	bfc00c70 <printbase>
bfc00ac8:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:41
bfc00acc:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:42
bfc00ad0:	0bf00265 	j	bfc00994 <printf+0x74>
bfc00ad4:	26310002 	addiu	s1,s1,2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:35
bfc00ad8:	8e440000 	lw	a0,0(s2)
bfc00adc:	2406000a 	li	a2,10
bfc00ae0:	0ff0031c 	jal	bfc00c70 <printbase>
bfc00ae4:	24070001 	li	a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:36
bfc00ae8:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:37
bfc00aec:	0bf00265 	j	bfc00994 <printf+0x74>
bfc00af0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:25
bfc00af4:	8e440000 	lw	a0,0(s2)
bfc00af8:	0ff002e1 	jal	bfc00b84 <putchar>
bfc00afc:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:26
bfc00b00:	0bf00265 	j	bfc00994 <printf+0x74>
bfc00b04:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:50
bfc00b08:	8e440000 	lw	a0,0(s2)
bfc00b0c:	24060002 	li	a2,2
bfc00b10:	0ff0031c 	jal	bfc00c70 <printbase>
bfc00b14:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:51
bfc00b18:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:52
bfc00b1c:	0bf00265 	j	bfc00994 <printf+0x74>
bfc00b20:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:61
bfc00b24:	0ff002e1 	jal	bfc00b84 <putchar>
bfc00b28:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:62
bfc00b2c:	0bf00265 	j	bfc00994 <printf+0x74>
bfc00b30:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00b34:	02713021 	addu	a2,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00b38:	000510c0 	sll	v0,a1,0x3
bfc00b3c:	00051840 	sll	v1,a1,0x1
bfc00b40:	00621821 	addu	v1,v1,v0
bfc00b44:	00641821 	addu	v1,v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00b48:	80c40002 	lb	a0,2(a2)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00b4c:	2465ffd0 	addiu	a1,v1,-48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00b50:	2482ffcf 	addiu	v0,a0,-49
bfc00b54:	304200ff 	andi	v0,v0,0xff
bfc00b58:	2c420009 	sltiu	v0,v0,9
bfc00b5c:	26310001 	addiu	s1,s1,1
bfc00b60:	1040ff9f 	beqz	v0,bfc009e0 <printf+0xc0>
bfc00b64:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00b68:	0bf002cf 	j	bfc00b3c <printf+0x21c>
bfc00b6c:	000510c0 	sll	v0,a1,0x3

bfc00b70 <tgt_putchar>:
tgt_putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:9
bfc00b70:	3c018000 	lui	at,0x8000
bfc00b74:	03e00008 	jr	ra
bfc00b78:	a0247ffc 	sb	a0,32764(at)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:18
bfc00b7c:	03e00008 	jr	ra
bfc00b80:	00000000 	nop

bfc00b84 <putchar>:
putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:2
bfc00b84:	27bdffe8 	addiu	sp,sp,-24
bfc00b88:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:3
bfc00b8c:	0ff002dc 	jal	bfc00b70 <tgt_putchar>
bfc00b90:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:5
bfc00b94:	8fbf0014 	lw	ra,20(sp)
bfc00b98:	00001021 	move	v0,zero
bfc00b9c:	03e00008 	jr	ra
bfc00ba0:	27bd0018 	addiu	sp,sp,24
	...

bfc00bb0 <putstring>:
putstring():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:2
bfc00bb0:	27bdffe0 	addiu	sp,sp,-32
bfc00bb4:	afb10014 	sw	s1,20(sp)
bfc00bb8:	afbf001c 	sw	ra,28(sp)
bfc00bbc:	afb20018 	sw	s2,24(sp)
bfc00bc0:	afb00010 	sw	s0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00bc4:	80900000 	lb	s0,0(a0)
bfc00bc8:	00000000 	nop
bfc00bcc:	12000013 	beqz	s0,bfc00c1c <putstring+0x6c>
bfc00bd0:	00808821 	move	s1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc00bd4:	0bf002fd 	j	bfc00bf4 <putstring+0x44>
bfc00bd8:	2412000a 	li	s2,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc00bdc:	0ff002e1 	jal	bfc00b84 <putchar>
bfc00be0:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00be4:	82300000 	lb	s0,0(s1)
bfc00be8:	00000000 	nop
bfc00bec:	1200000b 	beqz	s0,bfc00c1c <putstring+0x6c>
bfc00bf0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc00bf4:	1612fff9 	bne	s0,s2,bfc00bdc <putstring+0x2c>
bfc00bf8:	26310001 	addiu	s1,s1,1
bfc00bfc:	0ff002e1 	jal	bfc00b84 <putchar>
bfc00c00:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc00c04:	0ff002e1 	jal	bfc00b84 <putchar>
bfc00c08:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00c0c:	82300000 	lb	s0,0(s1)
bfc00c10:	00000000 	nop
bfc00c14:	1600fff7 	bnez	s0,bfc00bf4 <putstring+0x44>
bfc00c18:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:11
bfc00c1c:	8fbf001c 	lw	ra,28(sp)
bfc00c20:	00001021 	move	v0,zero
bfc00c24:	8fb20018 	lw	s2,24(sp)
bfc00c28:	8fb10014 	lw	s1,20(sp)
bfc00c2c:	8fb00010 	lw	s0,16(sp)
bfc00c30:	03e00008 	jr	ra
bfc00c34:	27bd0020 	addiu	sp,sp,32

bfc00c38 <puts>:
puts():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:15
bfc00c38:	27bdffe8 	addiu	sp,sp,-24
bfc00c3c:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:16
bfc00c40:	0ff002ec 	jal	bfc00bb0 <putstring>
bfc00c44:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:17
bfc00c48:	0ff002e1 	jal	bfc00b84 <putchar>
bfc00c4c:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:18
bfc00c50:	0ff002e1 	jal	bfc00b84 <putchar>
bfc00c54:	2404000a 	li	a0,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:20
bfc00c58:	8fbf0014 	lw	ra,20(sp)
bfc00c5c:	00001021 	move	v0,zero
bfc00c60:	03e00008 	jr	ra
bfc00c64:	27bd0018 	addiu	sp,sp,24
	...

bfc00c70 <printbase>:
printbase():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc00c70:	27bdff98 	addiu	sp,sp,-104
bfc00c74:	afb30060 	sw	s3,96(sp)
bfc00c78:	afb2005c 	sw	s2,92(sp)
bfc00c7c:	afbf0064 	sw	ra,100(sp)
bfc00c80:	afb10058 	sw	s1,88(sp)
bfc00c84:	afb00054 	sw	s0,84(sp)
bfc00c88:	00801821 	move	v1,a0
bfc00c8c:	00a09821 	move	s3,a1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:7
bfc00c90:	10e00003 	beqz	a3,bfc00ca0 <printbase+0x30>
bfc00c94:	00c09021 	move	s2,a2
bfc00c98:	0480002f 	bltz	a0,bfc00d58 <printbase+0xe8>
bfc00c9c:	2404002d 	li	a0,45
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:12
bfc00ca0:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc00ca4:	1200000c 	beqz	s0,bfc00cd8 <printbase+0x68>
bfc00ca8:	00008821 	move	s1,zero
bfc00cac:	27a50010 	addiu	a1,sp,16
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc00cb0:	16400002 	bnez	s2,bfc00cbc <printbase+0x4c>
bfc00cb4:	0212001b 	divu	zero,s0,s2
bfc00cb8:	0007000d 	break	0x7
bfc00cbc:	00b12021 	addu	a0,a1,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc00cc0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc00cc4:	00001010 	mfhi	v0
bfc00cc8:	a0820000 	sb	v0,0(a0)
bfc00ccc:	00001812 	mflo	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc00cd0:	1460fff7 	bnez	v1,bfc00cb0 <printbase+0x40>
bfc00cd4:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc00cd8:	0233102a 	slt	v0,s1,s3
bfc00cdc:	10400002 	beqz	v0,bfc00ce8 <printbase+0x78>
bfc00ce0:	02201821 	move	v1,s1
bfc00ce4:	02601821 	move	v1,s3
bfc00ce8:	1060000c 	beqz	v1,bfc00d1c <printbase+0xac>
bfc00cec:	2470ffff 	addiu	s0,v1,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc00cf0:	27a20010 	addiu	v0,sp,16
bfc00cf4:	00509021 	addu	s2,v0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc00cf8:	26020001 	addiu	v0,s0,1
bfc00cfc:	0222102a 	slt	v0,s1,v0
bfc00d00:	1040000e 	beqz	v0,bfc00d3c <printbase+0xcc>
bfc00d04:	24040030 	li	a0,48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc00d08:	02009821 	move	s3,s0
bfc00d0c:	0ff002e1 	jal	bfc00b84 <putchar>
bfc00d10:	2610ffff 	addiu	s0,s0,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc00d14:	1660fff8 	bnez	s3,bfc00cf8 <printbase+0x88>
bfc00d18:	2652ffff 	addiu	s2,s2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:28
bfc00d1c:	8fbf0064 	lw	ra,100(sp)
bfc00d20:	00001021 	move	v0,zero
bfc00d24:	8fb30060 	lw	s3,96(sp)
bfc00d28:	8fb2005c 	lw	s2,92(sp)
bfc00d2c:	8fb10058 	lw	s1,88(sp)
bfc00d30:	8fb00054 	lw	s0,84(sp)
bfc00d34:	03e00008 	jr	ra
bfc00d38:	27bd0068 	addiu	sp,sp,104
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc00d3c:	82440000 	lb	a0,0(s2)
bfc00d40:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc00d44:	2882000a 	slti	v0,a0,10
bfc00d48:	14400007 	bnez	v0,bfc00d68 <printbase+0xf8>
bfc00d4c:	02009821 	move	s3,s0
bfc00d50:	0bf00343 	j	bfc00d0c <printbase+0x9c>
bfc00d54:	24840057 	addiu	a0,a0,87
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:10
bfc00d58:	0ff002e1 	jal	bfc00b84 <putchar>
bfc00d5c:	00038023 	negu	s0,v1
bfc00d60:	0bf00329 	j	bfc00ca4 <printbase+0x34>
bfc00d64:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc00d68:	0bf00342 	j	bfc00d08 <printbase+0x98>
bfc00d6c:	24840030 	addiu	a0,a0,48

bfc00d70 <_get_count>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:15
bfc00d70:	3c01bfd0 	lui	at,0xbfd0
bfc00d74:	3421e000 	ori	at,at,0xe000
bfc00d78:	8c220000 	lw	v0,0(at)
bfc00d7c:	03e00008 	jr	ra
bfc00d80:	00000000 	nop

bfc00d84 <get_count>:
get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:20
bfc00d84:	3c01bfd0 	lui	at,0xbfd0
bfc00d88:	3421e000 	ori	at,at,0xe000
bfc00d8c:	8c220000 	lw	v0,0(at)
bfc00d90:	03e00008 	jr	ra
bfc00d94:	00000000 	nop

bfc00d98 <get_clock>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc00d98:	3c01bfd0 	lui	at,0xbfd0
bfc00d9c:	3421e000 	ori	at,at,0xe000
bfc00da0:	8c220000 	lw	v0,0(at)
get_clock():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:39
bfc00da4:	03e00008 	jr	ra
bfc00da8:	00021040 	sll	v0,v0,0x1

bfc00dac <get_ns>:
get_ns():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:45
bfc00dac:	40024800 	mfc0	v0,$9
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:51
bfc00db0:	03e00008 	jr	ra
bfc00db4:	00021040 	sll	v0,v0,0x1

bfc00db8 <clock_gettime>:
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:23
bfc00db8:	27bdffe8 	addiu	sp,sp,-24
bfc00dbc:	afbf0014 	sw	ra,20(sp)
bfc00dc0:	00a04821 	move	t1,a1
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc00dc4:	3c01bfd0 	lui	at,0xbfd0
bfc00dc8:	3421e000 	ori	at,at,0xe000
bfc00dcc:	8c230000 	lw	v1,0(at)
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc00dd0:	240203e8 	li	v0,1000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc00dd4:	14400002 	bnez	v0,bfc00de0 <clock_gettime+0x28>
bfc00dd8:	0062001b 	divu	zero,v1,v0
bfc00ddc:	0007000d 	break	0x7
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc00de0:	00031840 	sll	v1,v1,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc00de4:	3c073b9a 	lui	a3,0x3b9a
bfc00de8:	34e7ca00 	ori	a3,a3,0xca00
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc00dec:	3c048000 	lui	a0,0x8000
bfc00df0:	24840180 	addiu	a0,a0,384
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc00df4:	00003012 	mflo	a2
bfc00df8:	00063040 	sll	a2,a2,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc00dfc:	14400002 	bnez	v0,bfc00e08 <clock_gettime+0x50>
bfc00e00:	0062001b 	divu	zero,v1,v0
bfc00e04:	0007000d 	break	0x7
bfc00e08:	00002810 	mfhi	a1
bfc00e0c:	ad250004 	sw	a1,4(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc00e10:	14400002 	bnez	v0,bfc00e1c <clock_gettime+0x64>
bfc00e14:	00c2001b 	divu	zero,a2,v0
bfc00e18:	0007000d 	break	0x7
bfc00e1c:	00005010 	mfhi	t2
bfc00e20:	ad2a0008 	sw	t2,8(t1)
bfc00e24:	00004012 	mflo	t0
bfc00e28:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc00e2c:	14e00002 	bnez	a3,bfc00e38 <clock_gettime+0x80>
bfc00e30:	00c7001b 	divu	zero,a2,a3
bfc00e34:	0007000d 	break	0x7
bfc00e38:	00003012 	mflo	a2
bfc00e3c:	ad260000 	sw	a2,0(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:28
bfc00e40:	14400002 	bnez	v0,bfc00e4c <clock_gettime+0x94>
bfc00e44:	0102001b 	divu	zero,t0,v0
bfc00e48:	0007000d 	break	0x7
bfc00e4c:	00001810 	mfhi	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc00e50:	0ff00248 	jal	bfc00920 <printf>
bfc00e54:	ad23000c 	sw	v1,12(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:32
bfc00e58:	8fbf0014 	lw	ra,20(sp)
bfc00e5c:	00001021 	move	v0,zero
bfc00e60:	03e00008 	jr	ra
bfc00e64:	27bd0018 	addiu	sp,sp,24
	...

bfc00e70 <get_epc>:
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc00e70:	40027000 	mfc0	v0,c0_epc
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:9
bfc00e74:	03e00008 	jr	ra
bfc00e78:	00000000 	nop

bfc00e7c <get_cause>:
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc00e7c:	40026800 	mfc0	v0,c0_cause
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:19
bfc00e80:	03e00008 	jr	ra
bfc00e84:	00000000 	nop

bfc00e88 <exception>:
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc00e88:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:22
bfc00e8c:	27bdffe8 	addiu	sp,sp,-24
bfc00e90:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc00e94:	0ff00248 	jal	bfc00920 <printf>
bfc00e98:	24840194 	addiu	a0,a0,404
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc00e9c:	3c048000 	lui	a0,0x8000
bfc00ea0:	248401b0 	addiu	a0,a0,432
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc00ea4:	40057000 	mfc0	a1,c0_epc
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc00ea8:	0ff00248 	jal	bfc00920 <printf>
bfc00eac:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc00eb0:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc00eb4:	8fbf0014 	lw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc00eb8:	248401c0 	addiu	a0,a0,448
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc00ebc:	27bd0018 	addiu	sp,sp,24
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc00ec0:	40056800 	mfc0	a1,c0_cause
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc00ec4:	0bf00248 	j	bfc00920 <printf>
bfc00ec8:	00000000 	nop
bfc00ecc:	00000000 	nop
