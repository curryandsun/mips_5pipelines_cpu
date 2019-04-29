
obj/stream_copy/main.elf:     file format elf32-tradlittlemips
obj/stream_copy/main.elf


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
bfc00018:	279c9190 	addiu	gp,gp,-28272
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
bfc00380:	0ff002fa 	jal	bfc00be8 <exception>
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:69
bfc00384:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:70
bfc00388:	0bf00009 	j	bfc00024 <exit>
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:71
bfc0038c:	00000000 	nop

bfc00390 <shell>:
shell():
bfc00390:	27bdffd8 	addiu	sp,sp,-40
bfc00394:	afb2001c 	sw	s2,28(sp)
bfc00398:	afb00014 	sw	s0,20(sp)
bfc0039c:	3c128000 	lui	s2,0x8000
bfc003a0:	3c108000 	lui	s0,0x8000
bfc003a4:	afbf0024 	sw	ra,36(sp)
bfc003a8:	afb30020 	sw	s3,32(sp)
bfc003ac:	0ff002b9 	jal	bfc00ae4 <get_count>
bfc003b0:	afb10018 	sw	s1,24(sp)
bfc003b4:	264401f0 	addiu	a0,s2,496
bfc003b8:	260511a0 	addiu	a1,s0,4512
bfc003bc:	240603e8 	li	a2,1000
bfc003c0:	0ff00144 	jal	bfc00510 <stream_copy>
bfc003c4:	00408821 	move	s1,v0
bfc003c8:	0ff002b9 	jal	bfc00ae4 <get_count>
bfc003cc:	261011a0 	addiu	s0,s0,4512
bfc003d0:	3c03bfd0 	lui	v1,0xbfd0
bfc003d4:	00519823 	subu	s3,v0,s1
bfc003d8:	265201f0 	addiu	s2,s2,496
bfc003dc:	3471f000 	ori	s1,v1,0xf000
bfc003e0:	00003821 	move	a3,zero
bfc003e4:	346ef008 	ori	t6,v1,0xf008
bfc003e8:	24080001 	li	t0,1
bfc003ec:	346df004 	ori	t5,v1,0xf004
bfc003f0:	340cffff 	li	t4,0xffff
bfc003f4:	0bf0011c 	j	bfc00470 <shell+0xe0>
bfc003f8:	24190fa0 	li	t9,4000
bfc003fc:	00000000 	nop
bfc00400:	adc80000 	sw	t0,0(t6)
bfc00404:	ada80000 	sw	t0,0(t5)
bfc00408:	ae2c0000 	sw	t4,0(s1)
bfc0040c:	8d220000 	lw	v0,0(t1)
bfc00410:	8d690000 	lw	t1,0(t3)
bfc00414:	00000000 	nop
bfc00418:	14490024 	bne	v0,t1,bfc004ac <shell+0x11c>
bfc0041c:	00000000 	nop
bfc00420:	adc80000 	sw	t0,0(t6)
bfc00424:	ada80000 	sw	t0,0(t5)
bfc00428:	ae2c0000 	sw	t4,0(s1)
bfc0042c:	8d450000 	lw	a1,0(t2)
bfc00430:	8dff0000 	lw	ra,0(t7)
bfc00434:	00000000 	nop
bfc00438:	14bf001d 	bne	a1,ra,bfc004b0 <shell+0x120>
bfc0043c:	3c0f8000 	lui	t7,0x8000
bfc00440:	adc80000 	sw	t0,0(t6)
bfc00444:	ada80000 	sw	t0,0(t5)
bfc00448:	ae2c0000 	sw	t4,0(s1)
bfc0044c:	8cc30000 	lw	v1,0(a2)
bfc00450:	8f040000 	lw	a0,0(t8)
bfc00454:	00000000 	nop
bfc00458:	14640015 	bne	v1,a0,bfc004b0 <shell+0x120>
bfc0045c:	00000000 	nop
bfc00460:	adc80000 	sw	t0,0(t6)
bfc00464:	ada80000 	sw	t0,0(t5)
bfc00468:	10f9001c 	beq	a3,t9,bfc004dc <shell+0x14c>
bfc0046c:	ae2c0000 	sw	t4,0(s1)
bfc00470:	02072021 	addu	a0,s0,a3
bfc00474:	02472821 	addu	a1,s2,a3
bfc00478:	8c9f0000 	lw	ra,0(a0)
bfc0047c:	8ca20000 	lw	v0,0(a1)
bfc00480:	24ea0004 	addiu	t2,a3,4
bfc00484:	24e30008 	addiu	v1,a3,8
bfc00488:	24e6000c 	addiu	a2,a3,12
bfc0048c:	024a5821 	addu	t3,s2,t2
bfc00490:	0246c021 	addu	t8,s2,a2
bfc00494:	020a4821 	addu	t1,s0,t2
bfc00498:	02437821 	addu	t7,s2,v1
bfc0049c:	02035021 	addu	t2,s0,v1
bfc004a0:	02063021 	addu	a2,s0,a2
bfc004a4:	13e2ffd6 	beq	ra,v0,bfc00400 <shell+0x70>
bfc004a8:	24e70010 	addiu	a3,a3,16
bfc004ac:	3c0f8000 	lui	t7,0x8000
bfc004b0:	0ff00266 	jal	bfc00998 <puts>
bfc004b4:	25e40000 	addiu	a0,t7,0
bfc004b8:	3c0ebfd0 	lui	t6,0xbfd0
bfc004bc:	35c7f000 	ori	a3,t6,0xf000
bfc004c0:	35cdf008 	ori	t5,t6,0xf008
bfc004c4:	35cbf004 	ori	t3,t6,0xf004
bfc004c8:	240c0001 	li	t4,1
bfc004cc:	24080002 	li	t0,2
bfc004d0:	adac0000 	sw	t4,0(t5)
bfc004d4:	ad680000 	sw	t0,0(t3)
bfc004d8:	ace00000 	sw	zero,0(a3)
bfc004dc:	3c19bfd0 	lui	t9,0xbfd0
bfc004e0:	3c128000 	lui	s2,0x8000
bfc004e4:	3738f010 	ori	t8,t9,0xf010
bfc004e8:	26440014 	addiu	a0,s2,20
bfc004ec:	02602821 	move	a1,s3
bfc004f0:	af130000 	sw	s3,0(t8)
bfc004f4:	8fbf0024 	lw	ra,36(sp)
bfc004f8:	8fb30020 	lw	s3,32(sp)
bfc004fc:	8fb2001c 	lw	s2,28(sp)
bfc00500:	8fb10018 	lw	s1,24(sp)
bfc00504:	8fb00014 	lw	s0,20(sp)
bfc00508:	0bf001a0 	j	bfc00680 <printf>
bfc0050c:	27bd0028 	addiu	sp,sp,40

bfc00510 <stream_copy>:
stream_copy():
bfc00510:	18c00057 	blez	a2,bfc00670 <stream_copy+0x160>
bfc00514:	00805021 	move	t2,a0
bfc00518:	8c820000 	lw	v0,0(a0)
bfc0051c:	24090001 	li	t1,1
bfc00520:	24c3ffff 	addiu	v1,a2,-1
bfc00524:	0126202a 	slt	a0,t1,a2
bfc00528:	aca20000 	sw	v0,0(a1)
bfc0052c:	30630007 	andi	v1,v1,0x7
bfc00530:	25480004 	addiu	t0,t2,4
bfc00534:	1080004e 	beqz	a0,bfc00670 <stream_copy+0x160>
bfc00538:	24a70004 	addiu	a3,a1,4
bfc0053c:	10600032 	beqz	v1,bfc00608 <stream_copy+0xf8>
bfc00540:	00000000 	nop
bfc00544:	10690029 	beq	v1,t1,bfc005ec <stream_copy+0xdc>
bfc00548:	24040002 	li	a0,2
bfc0054c:	10640022 	beq	v1,a0,bfc005d8 <stream_copy+0xc8>
bfc00550:	24020003 	li	v0,3
bfc00554:	1062001b 	beq	v1,v0,bfc005c4 <stream_copy+0xb4>
bfc00558:	240b0004 	li	t3,4
bfc0055c:	106b0014 	beq	v1,t3,bfc005b0 <stream_copy+0xa0>
bfc00560:	240c0005 	li	t4,5
bfc00564:	106c000d 	beq	v1,t4,bfc0059c <stream_copy+0x8c>
bfc00568:	240d0006 	li	t5,6
bfc0056c:	106d0006 	beq	v1,t5,bfc00588 <stream_copy+0x78>
bfc00570:	00000000 	nop
bfc00574:	8d470004 	lw	a3,4(t2)
bfc00578:	25480008 	addiu	t0,t2,8
bfc0057c:	aca70004 	sw	a3,4(a1)
bfc00580:	24090002 	li	t1,2
bfc00584:	24a70008 	addiu	a3,a1,8
bfc00588:	8d030000 	lw	v1,0(t0)
bfc0058c:	25290001 	addiu	t1,t1,1
bfc00590:	ace30000 	sw	v1,0(a3)
bfc00594:	25080004 	addiu	t0,t0,4
bfc00598:	24e70004 	addiu	a3,a3,4
bfc0059c:	8d050000 	lw	a1,0(t0)
bfc005a0:	25290001 	addiu	t1,t1,1
bfc005a4:	ace50000 	sw	a1,0(a3)
bfc005a8:	25080004 	addiu	t0,t0,4
bfc005ac:	24e70004 	addiu	a3,a3,4
bfc005b0:	8d0a0000 	lw	t2,0(t0)
bfc005b4:	25290001 	addiu	t1,t1,1
bfc005b8:	acea0000 	sw	t2,0(a3)
bfc005bc:	25080004 	addiu	t0,t0,4
bfc005c0:	24e70004 	addiu	a3,a3,4
bfc005c4:	8d0e0000 	lw	t6,0(t0)
bfc005c8:	25290001 	addiu	t1,t1,1
bfc005cc:	acee0000 	sw	t6,0(a3)
bfc005d0:	25080004 	addiu	t0,t0,4
bfc005d4:	24e70004 	addiu	a3,a3,4
bfc005d8:	8d0f0000 	lw	t7,0(t0)
bfc005dc:	25290001 	addiu	t1,t1,1
bfc005e0:	acef0000 	sw	t7,0(a3)
bfc005e4:	25080004 	addiu	t0,t0,4
bfc005e8:	24e70004 	addiu	a3,a3,4
bfc005ec:	8d190000 	lw	t9,0(t0)
bfc005f0:	25290001 	addiu	t1,t1,1
bfc005f4:	0126c02a 	slt	t8,t1,a2
bfc005f8:	acf90000 	sw	t9,0(a3)
bfc005fc:	25080004 	addiu	t0,t0,4
bfc00600:	1300001b 	beqz	t8,bfc00670 <stream_copy+0x160>
bfc00604:	24e70004 	addiu	a3,a3,4
bfc00608:	8d190000 	lw	t9,0(t0)
bfc0060c:	25290008 	addiu	t1,t1,8
bfc00610:	acf90000 	sw	t9,0(a3)
bfc00614:	8d180004 	lw	t8,4(t0)
bfc00618:	0126282a 	slt	a1,t1,a2
bfc0061c:	acf80004 	sw	t8,4(a3)
bfc00620:	8d0f0008 	lw	t7,8(t0)
bfc00624:	00000000 	nop
bfc00628:	acef0008 	sw	t7,8(a3)
bfc0062c:	8d0e000c 	lw	t6,12(t0)
bfc00630:	00000000 	nop
bfc00634:	acee000c 	sw	t6,12(a3)
bfc00638:	8d0d0010 	lw	t5,16(t0)
bfc0063c:	00000000 	nop
bfc00640:	aced0010 	sw	t5,16(a3)
bfc00644:	8d0c0014 	lw	t4,20(t0)
bfc00648:	00000000 	nop
bfc0064c:	acec0014 	sw	t4,20(a3)
bfc00650:	8d0b0018 	lw	t3,24(t0)
bfc00654:	00000000 	nop
bfc00658:	aceb0018 	sw	t3,24(a3)
bfc0065c:	8d0a001c 	lw	t2,28(t0)
bfc00660:	25080020 	addiu	t0,t0,32
bfc00664:	acea001c 	sw	t2,28(a3)
bfc00668:	14a0ffe7 	bnez	a1,bfc00608 <stream_copy+0xf8>
bfc0066c:	24e70020 	addiu	a3,a3,32
bfc00670:	03e00008 	jr	ra
bfc00674:	00000000 	nop
	...

bfc00680 <printf>:
printf():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc00680:	27bdffc8 	addiu	sp,sp,-56
bfc00684:	afb30024 	sw	s3,36(sp)
bfc00688:	afbf0034 	sw	ra,52(sp)
bfc0068c:	afb60030 	sw	s6,48(sp)
bfc00690:	afb5002c 	sw	s5,44(sp)
bfc00694:	afb40028 	sw	s4,40(sp)
bfc00698:	afb20020 	sw	s2,32(sp)
bfc0069c:	afb1001c 	sw	s1,28(sp)
bfc006a0:	afb00018 	sw	s0,24(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc006a4:	80900000 	lb	s0,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc006a8:	00809821 	move	s3,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:8
bfc006ac:	27a4003c 	addiu	a0,sp,60
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc006b0:	afa5003c 	sw	a1,60(sp)
bfc006b4:	afa60040 	sw	a2,64(sp)
bfc006b8:	afa70044 	sw	a3,68(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc006bc:	12000013 	beqz	s0,bfc0070c <printf+0x8c>
bfc006c0:	afa40010 	sw	a0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc006c4:	3c028000 	lui	v0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc006c8:	00809021 	move	s2,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc006cc:	24560030 	addiu	s6,v0,48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc006d0:	00008821 	move	s1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc006d4:	24140025 	li	s4,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc006d8:	2415000a 	li	s5,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc006dc:	12140016 	beq	s0,s4,bfc00738 <printf+0xb8>
bfc006e0:	02711021 	addu	v0,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc006e4:	1215002f 	beq	s0,s5,bfc007a4 <printf+0x124>
bfc006e8:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:80
bfc006ec:	0ff00239 	jal	bfc008e4 <putchar>
bfc006f0:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc006f4:	26310001 	addiu	s1,s1,1
bfc006f8:	02711021 	addu	v0,s3,s1
bfc006fc:	80500000 	lb	s0,0(v0)
bfc00700:	00000000 	nop
bfc00704:	1600fff5 	bnez	s0,bfc006dc <printf+0x5c>
bfc00708:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:84
bfc0070c:	8fbf0034 	lw	ra,52(sp)
bfc00710:	00001021 	move	v0,zero
bfc00714:	8fb60030 	lw	s6,48(sp)
bfc00718:	8fb5002c 	lw	s5,44(sp)
bfc0071c:	8fb40028 	lw	s4,40(sp)
bfc00720:	8fb30024 	lw	s3,36(sp)
bfc00724:	8fb20020 	lw	s2,32(sp)
bfc00728:	8fb1001c 	lw	s1,28(sp)
bfc0072c:	8fb00018 	lw	s0,24(sp)
bfc00730:	03e00008 	jr	ra
bfc00734:	27bd0038 	addiu	sp,sp,56
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00738:	80440001 	lb	a0,1(v0)
bfc0073c:	24050001 	li	a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00740:	2482ffdb 	addiu	v0,a0,-37
bfc00744:	304200ff 	andi	v0,v0,0xff
bfc00748:	2c430054 	sltiu	v1,v0,84
bfc0074c:	14600005 	bnez	v1,bfc00764 <printf+0xe4>
bfc00750:	00021080 	sll	v0,v0,0x2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:73
bfc00754:	0ff00239 	jal	bfc008e4 <putchar>
bfc00758:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc0075c:	0bf001be 	j	bfc006f8 <printf+0x78>
bfc00760:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00764:	02c21021 	addu	v0,s6,v0
bfc00768:	8c430000 	lw	v1,0(v0)
bfc0076c:	00000000 	nop
bfc00770:	00600008 	jr	v1
bfc00774:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:65
bfc00778:	26310001 	addiu	s1,s1,1
bfc0077c:	02711021 	addu	v0,s3,s1
bfc00780:	80440001 	lb	a0,1(v0)
bfc00784:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00788:	2482ffcf 	addiu	v0,a0,-49
bfc0078c:	304200ff 	andi	v0,v0,0xff
bfc00790:	2c420009 	sltiu	v0,v0,9
bfc00794:	1440003f 	bnez	v0,bfc00894 <printf+0x214>
bfc00798:	00002821 	move	a1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc0079c:	0bf001d1 	j	bfc00744 <printf+0xc4>
bfc007a0:	2482ffdb 	addiu	v0,a0,-37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc007a4:	0ff00239 	jal	bfc008e4 <putchar>
bfc007a8:	2404000d 	li	a0,13
bfc007ac:	0bf001bb 	j	bfc006ec <printf+0x6c>
bfc007b0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:30
bfc007b4:	8e440000 	lw	a0,0(s2)
bfc007b8:	2406000a 	li	a2,10
bfc007bc:	0ff00274 	jal	bfc009d0 <printbase>
bfc007c0:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:31
bfc007c4:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:32
bfc007c8:	0bf001bd 	j	bfc006f4 <printf+0x74>
bfc007cc:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:20
bfc007d0:	8e440000 	lw	a0,0(s2)
bfc007d4:	0ff00244 	jal	bfc00910 <putstring>
bfc007d8:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:21
bfc007dc:	0bf001bd 	j	bfc006f4 <printf+0x74>
bfc007e0:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:56
bfc007e4:	8e440000 	lw	a0,0(s2)
bfc007e8:	24060010 	li	a2,16
bfc007ec:	0ff00274 	jal	bfc009d0 <printbase>
bfc007f0:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:57
bfc007f4:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:58
bfc007f8:	0bf001bd 	j	bfc006f4 <printf+0x74>
bfc007fc:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:45
bfc00800:	8e440000 	lw	a0,0(s2)
bfc00804:	24060008 	li	a2,8
bfc00808:	0ff00274 	jal	bfc009d0 <printbase>
bfc0080c:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:46
bfc00810:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:47
bfc00814:	0bf001bd 	j	bfc006f4 <printf+0x74>
bfc00818:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:40
bfc0081c:	8e440000 	lw	a0,0(s2)
bfc00820:	2406000a 	li	a2,10
bfc00824:	0ff00274 	jal	bfc009d0 <printbase>
bfc00828:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:41
bfc0082c:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:42
bfc00830:	0bf001bd 	j	bfc006f4 <printf+0x74>
bfc00834:	26310002 	addiu	s1,s1,2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:35
bfc00838:	8e440000 	lw	a0,0(s2)
bfc0083c:	2406000a 	li	a2,10
bfc00840:	0ff00274 	jal	bfc009d0 <printbase>
bfc00844:	24070001 	li	a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:36
bfc00848:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:37
bfc0084c:	0bf001bd 	j	bfc006f4 <printf+0x74>
bfc00850:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:25
bfc00854:	8e440000 	lw	a0,0(s2)
bfc00858:	0ff00239 	jal	bfc008e4 <putchar>
bfc0085c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:26
bfc00860:	0bf001bd 	j	bfc006f4 <printf+0x74>
bfc00864:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:50
bfc00868:	8e440000 	lw	a0,0(s2)
bfc0086c:	24060002 	li	a2,2
bfc00870:	0ff00274 	jal	bfc009d0 <printbase>
bfc00874:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:51
bfc00878:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:52
bfc0087c:	0bf001bd 	j	bfc006f4 <printf+0x74>
bfc00880:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:61
bfc00884:	0ff00239 	jal	bfc008e4 <putchar>
bfc00888:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:62
bfc0088c:	0bf001bd 	j	bfc006f4 <printf+0x74>
bfc00890:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00894:	02713021 	addu	a2,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00898:	000510c0 	sll	v0,a1,0x3
bfc0089c:	00051840 	sll	v1,a1,0x1
bfc008a0:	00621821 	addu	v1,v1,v0
bfc008a4:	00641821 	addu	v1,v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc008a8:	80c40002 	lb	a0,2(a2)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc008ac:	2465ffd0 	addiu	a1,v1,-48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc008b0:	2482ffcf 	addiu	v0,a0,-49
bfc008b4:	304200ff 	andi	v0,v0,0xff
bfc008b8:	2c420009 	sltiu	v0,v0,9
bfc008bc:	26310001 	addiu	s1,s1,1
bfc008c0:	1040ff9f 	beqz	v0,bfc00740 <printf+0xc0>
bfc008c4:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc008c8:	0bf00227 	j	bfc0089c <printf+0x21c>
bfc008cc:	000510c0 	sll	v0,a1,0x3

bfc008d0 <tgt_putchar>:
tgt_putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:9
bfc008d0:	3c018000 	lui	at,0x8000
bfc008d4:	03e00008 	jr	ra
bfc008d8:	a0247ffc 	sb	a0,32764(at)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:18
bfc008dc:	03e00008 	jr	ra
bfc008e0:	00000000 	nop

bfc008e4 <putchar>:
putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:2
bfc008e4:	27bdffe8 	addiu	sp,sp,-24
bfc008e8:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:3
bfc008ec:	0ff00234 	jal	bfc008d0 <tgt_putchar>
bfc008f0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:5
bfc008f4:	8fbf0014 	lw	ra,20(sp)
bfc008f8:	00001021 	move	v0,zero
bfc008fc:	03e00008 	jr	ra
bfc00900:	27bd0018 	addiu	sp,sp,24
	...

bfc00910 <putstring>:
putstring():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:2
bfc00910:	27bdffe0 	addiu	sp,sp,-32
bfc00914:	afb10014 	sw	s1,20(sp)
bfc00918:	afbf001c 	sw	ra,28(sp)
bfc0091c:	afb20018 	sw	s2,24(sp)
bfc00920:	afb00010 	sw	s0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00924:	80900000 	lb	s0,0(a0)
bfc00928:	00000000 	nop
bfc0092c:	12000013 	beqz	s0,bfc0097c <putstring+0x6c>
bfc00930:	00808821 	move	s1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc00934:	0bf00255 	j	bfc00954 <putstring+0x44>
bfc00938:	2412000a 	li	s2,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc0093c:	0ff00239 	jal	bfc008e4 <putchar>
bfc00940:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00944:	82300000 	lb	s0,0(s1)
bfc00948:	00000000 	nop
bfc0094c:	1200000b 	beqz	s0,bfc0097c <putstring+0x6c>
bfc00950:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc00954:	1612fff9 	bne	s0,s2,bfc0093c <putstring+0x2c>
bfc00958:	26310001 	addiu	s1,s1,1
bfc0095c:	0ff00239 	jal	bfc008e4 <putchar>
bfc00960:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc00964:	0ff00239 	jal	bfc008e4 <putchar>
bfc00968:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc0096c:	82300000 	lb	s0,0(s1)
bfc00970:	00000000 	nop
bfc00974:	1600fff7 	bnez	s0,bfc00954 <putstring+0x44>
bfc00978:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:11
bfc0097c:	8fbf001c 	lw	ra,28(sp)
bfc00980:	00001021 	move	v0,zero
bfc00984:	8fb20018 	lw	s2,24(sp)
bfc00988:	8fb10014 	lw	s1,20(sp)
bfc0098c:	8fb00010 	lw	s0,16(sp)
bfc00990:	03e00008 	jr	ra
bfc00994:	27bd0020 	addiu	sp,sp,32

bfc00998 <puts>:
puts():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:15
bfc00998:	27bdffe8 	addiu	sp,sp,-24
bfc0099c:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:16
bfc009a0:	0ff00244 	jal	bfc00910 <putstring>
bfc009a4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:17
bfc009a8:	0ff00239 	jal	bfc008e4 <putchar>
bfc009ac:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:18
bfc009b0:	0ff00239 	jal	bfc008e4 <putchar>
bfc009b4:	2404000a 	li	a0,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:20
bfc009b8:	8fbf0014 	lw	ra,20(sp)
bfc009bc:	00001021 	move	v0,zero
bfc009c0:	03e00008 	jr	ra
bfc009c4:	27bd0018 	addiu	sp,sp,24
	...

bfc009d0 <printbase>:
printbase():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc009d0:	27bdff98 	addiu	sp,sp,-104
bfc009d4:	afb30060 	sw	s3,96(sp)
bfc009d8:	afb2005c 	sw	s2,92(sp)
bfc009dc:	afbf0064 	sw	ra,100(sp)
bfc009e0:	afb10058 	sw	s1,88(sp)
bfc009e4:	afb00054 	sw	s0,84(sp)
bfc009e8:	00801821 	move	v1,a0
bfc009ec:	00a09821 	move	s3,a1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:7
bfc009f0:	10e00003 	beqz	a3,bfc00a00 <printbase+0x30>
bfc009f4:	00c09021 	move	s2,a2
bfc009f8:	0480002f 	bltz	a0,bfc00ab8 <printbase+0xe8>
bfc009fc:	2404002d 	li	a0,45
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:12
bfc00a00:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc00a04:	1200000c 	beqz	s0,bfc00a38 <printbase+0x68>
bfc00a08:	00008821 	move	s1,zero
bfc00a0c:	27a50010 	addiu	a1,sp,16
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc00a10:	16400002 	bnez	s2,bfc00a1c <printbase+0x4c>
bfc00a14:	0212001b 	divu	zero,s0,s2
bfc00a18:	0007000d 	break	0x7
bfc00a1c:	00b12021 	addu	a0,a1,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc00a20:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc00a24:	00001010 	mfhi	v0
bfc00a28:	a0820000 	sb	v0,0(a0)
bfc00a2c:	00001812 	mflo	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc00a30:	1460fff7 	bnez	v1,bfc00a10 <printbase+0x40>
bfc00a34:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc00a38:	0233102a 	slt	v0,s1,s3
bfc00a3c:	10400002 	beqz	v0,bfc00a48 <printbase+0x78>
bfc00a40:	02201821 	move	v1,s1
bfc00a44:	02601821 	move	v1,s3
bfc00a48:	1060000c 	beqz	v1,bfc00a7c <printbase+0xac>
bfc00a4c:	2470ffff 	addiu	s0,v1,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc00a50:	27a20010 	addiu	v0,sp,16
bfc00a54:	00509021 	addu	s2,v0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc00a58:	26020001 	addiu	v0,s0,1
bfc00a5c:	0222102a 	slt	v0,s1,v0
bfc00a60:	1040000e 	beqz	v0,bfc00a9c <printbase+0xcc>
bfc00a64:	24040030 	li	a0,48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc00a68:	02009821 	move	s3,s0
bfc00a6c:	0ff00239 	jal	bfc008e4 <putchar>
bfc00a70:	2610ffff 	addiu	s0,s0,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc00a74:	1660fff8 	bnez	s3,bfc00a58 <printbase+0x88>
bfc00a78:	2652ffff 	addiu	s2,s2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:28
bfc00a7c:	8fbf0064 	lw	ra,100(sp)
bfc00a80:	00001021 	move	v0,zero
bfc00a84:	8fb30060 	lw	s3,96(sp)
bfc00a88:	8fb2005c 	lw	s2,92(sp)
bfc00a8c:	8fb10058 	lw	s1,88(sp)
bfc00a90:	8fb00054 	lw	s0,84(sp)
bfc00a94:	03e00008 	jr	ra
bfc00a98:	27bd0068 	addiu	sp,sp,104
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc00a9c:	82440000 	lb	a0,0(s2)
bfc00aa0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc00aa4:	2882000a 	slti	v0,a0,10
bfc00aa8:	14400007 	bnez	v0,bfc00ac8 <printbase+0xf8>
bfc00aac:	02009821 	move	s3,s0
bfc00ab0:	0bf0029b 	j	bfc00a6c <printbase+0x9c>
bfc00ab4:	24840057 	addiu	a0,a0,87
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:10
bfc00ab8:	0ff00239 	jal	bfc008e4 <putchar>
bfc00abc:	00038023 	negu	s0,v1
bfc00ac0:	0bf00281 	j	bfc00a04 <printbase+0x34>
bfc00ac4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc00ac8:	0bf0029a 	j	bfc00a68 <printbase+0x98>
bfc00acc:	24840030 	addiu	a0,a0,48

bfc00ad0 <_get_count>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:15
bfc00ad0:	3c01bfd0 	lui	at,0xbfd0
bfc00ad4:	3421e000 	ori	at,at,0xe000
bfc00ad8:	8c220000 	lw	v0,0(at)
bfc00adc:	03e00008 	jr	ra
bfc00ae0:	00000000 	nop

bfc00ae4 <get_count>:
get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:20
bfc00ae4:	3c01bfd0 	lui	at,0xbfd0
bfc00ae8:	3421e000 	ori	at,at,0xe000
bfc00aec:	8c220000 	lw	v0,0(at)
bfc00af0:	03e00008 	jr	ra
bfc00af4:	00000000 	nop

bfc00af8 <get_clock>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc00af8:	3c01bfd0 	lui	at,0xbfd0
bfc00afc:	3421e000 	ori	at,at,0xe000
bfc00b00:	8c220000 	lw	v0,0(at)
get_clock():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:39
bfc00b04:	03e00008 	jr	ra
bfc00b08:	00021040 	sll	v0,v0,0x1

bfc00b0c <get_ns>:
get_ns():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:45
bfc00b0c:	40024800 	mfc0	v0,$9
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:51
bfc00b10:	03e00008 	jr	ra
bfc00b14:	00021040 	sll	v0,v0,0x1

bfc00b18 <clock_gettime>:
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:23
bfc00b18:	27bdffe8 	addiu	sp,sp,-24
bfc00b1c:	afbf0014 	sw	ra,20(sp)
bfc00b20:	00a04821 	move	t1,a1
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc00b24:	3c01bfd0 	lui	at,0xbfd0
bfc00b28:	3421e000 	ori	at,at,0xe000
bfc00b2c:	8c230000 	lw	v1,0(at)
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc00b30:	240203e8 	li	v0,1000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc00b34:	14400002 	bnez	v0,bfc00b40 <clock_gettime+0x28>
bfc00b38:	0062001b 	divu	zero,v1,v0
bfc00b3c:	0007000d 	break	0x7
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc00b40:	00031840 	sll	v1,v1,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc00b44:	3c073b9a 	lui	a3,0x3b9a
bfc00b48:	34e7ca00 	ori	a3,a3,0xca00
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc00b4c:	3c048000 	lui	a0,0x8000
bfc00b50:	24840180 	addiu	a0,a0,384
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc00b54:	00003012 	mflo	a2
bfc00b58:	00063040 	sll	a2,a2,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc00b5c:	14400002 	bnez	v0,bfc00b68 <clock_gettime+0x50>
bfc00b60:	0062001b 	divu	zero,v1,v0
bfc00b64:	0007000d 	break	0x7
bfc00b68:	00002810 	mfhi	a1
bfc00b6c:	ad250004 	sw	a1,4(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc00b70:	14400002 	bnez	v0,bfc00b7c <clock_gettime+0x64>
bfc00b74:	00c2001b 	divu	zero,a2,v0
bfc00b78:	0007000d 	break	0x7
bfc00b7c:	00005010 	mfhi	t2
bfc00b80:	ad2a0008 	sw	t2,8(t1)
bfc00b84:	00004012 	mflo	t0
bfc00b88:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc00b8c:	14e00002 	bnez	a3,bfc00b98 <clock_gettime+0x80>
bfc00b90:	00c7001b 	divu	zero,a2,a3
bfc00b94:	0007000d 	break	0x7
bfc00b98:	00003012 	mflo	a2
bfc00b9c:	ad260000 	sw	a2,0(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:28
bfc00ba0:	14400002 	bnez	v0,bfc00bac <clock_gettime+0x94>
bfc00ba4:	0102001b 	divu	zero,t0,v0
bfc00ba8:	0007000d 	break	0x7
bfc00bac:	00001810 	mfhi	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc00bb0:	0ff001a0 	jal	bfc00680 <printf>
bfc00bb4:	ad23000c 	sw	v1,12(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:32
bfc00bb8:	8fbf0014 	lw	ra,20(sp)
bfc00bbc:	00001021 	move	v0,zero
bfc00bc0:	03e00008 	jr	ra
bfc00bc4:	27bd0018 	addiu	sp,sp,24
	...

bfc00bd0 <get_epc>:
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc00bd0:	40027000 	mfc0	v0,c0_epc
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:9
bfc00bd4:	03e00008 	jr	ra
bfc00bd8:	00000000 	nop

bfc00bdc <get_cause>:
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc00bdc:	40026800 	mfc0	v0,c0_cause
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:19
bfc00be0:	03e00008 	jr	ra
bfc00be4:	00000000 	nop

bfc00be8 <exception>:
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc00be8:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:22
bfc00bec:	27bdffe8 	addiu	sp,sp,-24
bfc00bf0:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc00bf4:	0ff001a0 	jal	bfc00680 <printf>
bfc00bf8:	24840194 	addiu	a0,a0,404
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc00bfc:	3c048000 	lui	a0,0x8000
bfc00c00:	248401b0 	addiu	a0,a0,432
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc00c04:	40057000 	mfc0	a1,c0_epc
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc00c08:	0ff001a0 	jal	bfc00680 <printf>
bfc00c0c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc00c10:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc00c14:	8fbf0014 	lw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc00c18:	248401c0 	addiu	a0,a0,448
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc00c1c:	27bd0018 	addiu	sp,sp,24
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc00c20:	40056800 	mfc0	a1,c0_cause
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc00c24:	0bf001a0 	j	bfc00680 <printf>
bfc00c28:	00000000 	nop
bfc00c2c:	00000000 	nop
