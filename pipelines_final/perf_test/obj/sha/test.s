
obj/sha/main.elf:     file format elf32-tradlittlemips
obj/sha/main.elf


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
bfc00010:	27bd4a0c 	addiu	sp,sp,18956
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:55
bfc00014:	3c1c8001 	lui	gp,0x8001
bfc00018:	279c8a30 	addiu	gp,gp,-30160
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
bfc00380:	0ff00c0e 	jal	bfc03038 <exception>
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
bfc003a0:	0ff00bcd 	jal	bfc02f34 <get_count>
bfc003a4:	afb00010 	sw	s0,16(sp)
bfc003a8:	0ff00120 	jal	bfc00480 <sha_driver>
bfc003ac:	00409021 	move	s2,v0
bfc003b0:	0ff00bcd 	jal	bfc02f34 <get_count>
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
bfc003e8:	0ff00a96 	jal	bfc02a58 <puts>
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
bfc00448:	0ff00a96 	jal	bfc02a58 <puts>
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

bfc00480 <sha_driver>:
sha_driver():
bfc00480:	8f848010 	lw	a0,-32752(gp)
bfc00484:	27bdff70 	addiu	sp,sp,-144
bfc00488:	afbf008c 	sw	ra,140(sp)
bfc0048c:	afb20088 	sw	s2,136(sp)
bfc00490:	afb10084 	sw	s1,132(sp)
bfc00494:	27b20024 	addiu	s2,sp,36
bfc00498:	0ff00934 	jal	bfc024d0 <fopen>
bfc0049c:	afb00080 	sw	s0,128(sp)
bfc004a0:	00402821 	move	a1,v0
bfc004a4:	02402021 	move	a0,s2
bfc004a8:	0ff003e4 	jal	bfc00f90 <sha_stream>
bfc004ac:	00408821 	move	s1,v0
bfc004b0:	0ff0032c 	jal	bfc00cb0 <sha_print>
bfc004b4:	02402021 	move	a0,s2
bfc004b8:	3c0b1a11 	lui	t3,0x1a11
bfc004bc:	3c097a9c 	lui	t1,0x7a9c
bfc004c0:	3c07b21f 	lui	a3,0xb21f
bfc004c4:	3c05df19 	lui	a1,0xdf19
bfc004c8:	3c047bec 	lui	a0,0x7bec
bfc004cc:	34e696f1 	ori	a2,a3,0x96f1
bfc004d0:	34a24b3f 	ori	v0,a1,0x4b3f
bfc004d4:	356a8e18 	ori	t2,t3,0x8e18
bfc004d8:	3528830b 	ori	t0,t1,0x830b
bfc004dc:	34927e97 	ori	s2,a0,0x7e97
bfc004e0:	02202021 	move	a0,s1
bfc004e4:	afaa0010 	sw	t2,16(sp)
bfc004e8:	afa80014 	sw	t0,20(sp)
bfc004ec:	afa60018 	sw	a2,24(sp)
bfc004f0:	afa2001c 	sw	v0,28(sp)
bfc004f4:	0ff00945 	jal	bfc02514 <fclose>
bfc004f8:	afb20020 	sw	s2,32(sp)
bfc004fc:	8fb00010 	lw	s0,16(sp)
bfc00500:	3c118000 	lui	s1,0x8000
bfc00504:	8fa50024 	lw	a1,36(sp)
bfc00508:	26240028 	addiu	a0,s1,40
bfc0050c:	0ff009d0 	jal	bfc02740 <printf>
bfc00510:	02003021 	move	a2,s0
bfc00514:	8fa30024 	lw	v1,36(sp)
bfc00518:	00000000 	nop
bfc0051c:	16030028 	bne	s0,v1,bfc005c0 <sha_driver+0x140>
bfc00520:	26240028 	addiu	a0,s1,40
bfc00524:	8fb00014 	lw	s0,20(sp)
bfc00528:	8fa50028 	lw	a1,40(sp)
bfc0052c:	0ff009d0 	jal	bfc02740 <printf>
bfc00530:	02003021 	move	a2,s0
bfc00534:	8fac0028 	lw	t4,40(sp)
bfc00538:	00000000 	nop
bfc0053c:	160c0020 	bne	s0,t4,bfc005c0 <sha_driver+0x140>
bfc00540:	26240028 	addiu	a0,s1,40
bfc00544:	8fb00018 	lw	s0,24(sp)
bfc00548:	8fa5002c 	lw	a1,44(sp)
bfc0054c:	0ff009d0 	jal	bfc02740 <printf>
bfc00550:	02003021 	move	a2,s0
bfc00554:	8fad002c 	lw	t5,44(sp)
bfc00558:	00000000 	nop
bfc0055c:	160d0018 	bne	s0,t5,bfc005c0 <sha_driver+0x140>
bfc00560:	26240028 	addiu	a0,s1,40
bfc00564:	8fb0001c 	lw	s0,28(sp)
bfc00568:	8fa50030 	lw	a1,48(sp)
bfc0056c:	0ff009d0 	jal	bfc02740 <printf>
bfc00570:	02003021 	move	a2,s0
bfc00574:	8fae0030 	lw	t6,48(sp)
bfc00578:	00000000 	nop
bfc0057c:	160e0010 	bne	s0,t6,bfc005c0 <sha_driver+0x140>
bfc00580:	26240028 	addiu	a0,s1,40
bfc00584:	8fa50034 	lw	a1,52(sp)
bfc00588:	0ff009d0 	jal	bfc02740 <printf>
bfc0058c:	02403021 	move	a2,s2
bfc00590:	8fb80034 	lw	t8,52(sp)
bfc00594:	8fbf008c 	lw	ra,140(sp)
bfc00598:	03127823 	subu	t7,t8,s2
bfc0059c:	000f102b 	sltu	v0,zero,t7
bfc005a0:	8fb20088 	lw	s2,136(sp)
bfc005a4:	8fb10084 	lw	s1,132(sp)
bfc005a8:	8fb00080 	lw	s0,128(sp)
bfc005ac:	03e00008 	jr	ra
bfc005b0:	27bd0090 	addiu	sp,sp,144
	...
bfc005c0:	8fbf008c 	lw	ra,140(sp)
bfc005c4:	24020001 	li	v0,1
bfc005c8:	8fb20088 	lw	s2,136(sp)
bfc005cc:	8fb10084 	lw	s1,132(sp)
bfc005d0:	8fb00080 	lw	s0,128(sp)
bfc005d4:	03e00008 	jr	ra
bfc005d8:	27bd0090 	addiu	sp,sp,144
bfc005dc:	00000000 	nop

bfc005e0 <sha_transform>:
sha_transform():
bfc005e0:	27bdfe90 	addiu	sp,sp,-368
bfc005e4:	8c8e0044 	lw	t6,68(a0)
bfc005e8:	afb4015c 	sw	s4,348(sp)
bfc005ec:	8c94002c 	lw	s4,44(a0)
bfc005f0:	8c8f003c 	lw	t7,60(a0)
bfc005f4:	afb20154 	sw	s2,340(sp)
bfc005f8:	8c920024 	lw	s2,36(a0)
bfc005fc:	01d45826 	xor	t3,t6,s4
bfc00600:	afb60164 	sw	s6,356(sp)
bfc00604:	afb30158 	sw	s3,344(sp)
bfc00608:	0080b021 	move	s6,a0
bfc0060c:	8c930028 	lw	s3,40(a0)
bfc00610:	afb0014c 	sw	s0,332(sp)
bfc00614:	8c900020 	lw	s0,32(a0)
bfc00618:	8c8d0050 	lw	t5,80(a0)
bfc0061c:	8c8c001c 	lw	t4,28(a0)
bfc00620:	8ec70030 	lw	a3,48(s6)
bfc00624:	8ec80034 	lw	t0,52(s6)
bfc00628:	8ec90038 	lw	t1,56(s6)
bfc0062c:	8eca0048 	lw	t2,72(s6)
bfc00630:	27a60008 	addiu	a2,sp,8
bfc00634:	024f2826 	xor	a1,s2,t7
bfc00638:	afb50160 	sw	s5,352(sp)
bfc0063c:	afb10150 	sw	s1,336(sp)
bfc00640:	afaf0140 	sw	t7,320(sp)
bfc00644:	8c910040 	lw	s1,64(a0)
bfc00648:	8c8f0058 	lw	t7,88(a0)
bfc0064c:	afae0144 	sw	t6,324(sp)
bfc00650:	27b50104 	addiu	s5,sp,260
bfc00654:	8c8e0054 	lw	t6,84(a0)
bfc00658:	01722026 	xor	a0,t3,s2
bfc0065c:	8ecb004c 	lw	t3,76(s6)
bfc00660:	afbe016c 	sw	s8,364(sp)
bfc00664:	02701826 	xor	v1,s3,s0
bfc00668:	02a6f023 	subu	s8,s5,a2
bfc0066c:	0071c826 	xor	t9,v1,s1
bfc00670:	27d8fff4 	addiu	t8,s8,-12
bfc00674:	afb70168 	sw	s7,360(sp)
bfc00678:	afa70014 	sw	a3,20(sp)
bfc0067c:	00acb826 	xor	s7,a1,t4
bfc00680:	afa80018 	sw	t0,24(sp)
bfc00684:	afa9001c 	sw	t1,28(sp)
bfc00688:	afaa002c 	sw	t2,44(sp)
bfc0068c:	afab0030 	sw	t3,48(sp)
bfc00690:	afac0000 	sw	t4,0(sp)
bfc00694:	afb00004 	sw	s0,4(sp)
bfc00698:	8fa30140 	lw	v1,320(sp)
bfc0069c:	8fa20144 	lw	v0,324(sp)
bfc006a0:	01b7f026 	xor	s8,t5,s7
bfc006a4:	00182882 	srl	a1,t8,0x2
bfc006a8:	01d9b826 	xor	s7,t6,t9
bfc006ac:	27b80014 	addiu	t8,sp,20
bfc006b0:	01e4c826 	xor	t9,t7,a0
bfc006b4:	afb20008 	sw	s2,8(sp)
bfc006b8:	afb3000c 	sw	s3,12(sp)
bfc006bc:	afb40010 	sw	s4,16(sp)
bfc006c0:	afa30020 	sw	v1,32(sp)
bfc006c4:	afb10024 	sw	s1,36(sp)
bfc006c8:	afa20028 	sw	v0,40(sp)
bfc006cc:	afad0034 	sw	t5,52(sp)
bfc006d0:	afae0038 	sw	t6,56(sp)
bfc006d4:	afaf003c 	sw	t7,60(sp)
bfc006d8:	30a50001 	andi	a1,a1,0x1
bfc006dc:	acde0038 	sw	s8,56(a2)
bfc006e0:	acd7003c 	sw	s7,60(a2)
bfc006e4:	13150045 	beq	t8,s5,bfc007fc <sha_transform+0x21c>
bfc006e8:	acd90040 	sw	t9,64(a2)
bfc006ec:	10a00018 	beqz	a1,bfc00750 <sha_transform+0x170>
bfc006f0:	00000000 	nop
bfc006f4:	8fae0014 	lw	t6,20(sp)
bfc006f8:	8f030018 	lw	v1,24(t8)
bfc006fc:	8f0f0004 	lw	t7,4(t8)
bfc00700:	8f06fffc 	lw	a2,-4(t8)
bfc00704:	8f070020 	lw	a3,32(t8)
bfc00708:	8f050008 	lw	a1,8(t8)
bfc0070c:	8f0bfff8 	lw	t3,-8(t8)
bfc00710:	8f14001c 	lw	s4,28(t8)
bfc00714:	01e64826 	xor	t1,t7,a2
bfc00718:	00e59026 	xor	s2,a3,a1
bfc0071c:	01c34026 	xor	t0,t6,v1
bfc00720:	010b6026 	xor	t4,t0,t3
bfc00724:	01348826 	xor	s1,t1,s4
bfc00728:	024e5026 	xor	t2,s2,t6
bfc0072c:	03ccf026 	xor	s8,s8,t4
bfc00730:	02f1b826 	xor	s7,s7,s1
bfc00734:	032ac826 	xor	t9,t9,t2
bfc00738:	af190040 	sw	t9,64(t8)
bfc0073c:	af1e0038 	sw	s8,56(t8)
bfc00740:	af17003c 	sw	s7,60(t8)
bfc00744:	27b80020 	addiu	t8,sp,32
bfc00748:	1315002c 	beq	t8,s5,bfc007fc <sha_transform+0x21c>
bfc0074c:	00000000 	nop
bfc00750:	8f110000 	lw	s1,0(t8)
bfc00754:	8f100018 	lw	s0,24(t8)
bfc00758:	8f0c0004 	lw	t4,4(t8)
bfc0075c:	8f09fffc 	lw	t1,-4(t8)
bfc00760:	8f060020 	lw	a2,32(t8)
bfc00764:	8f0d0008 	lw	t5,8(t8)
bfc00768:	8f12fff8 	lw	s2,-8(t8)
bfc0076c:	8f13001c 	lw	s3,28(t8)
bfc00770:	0189a026 	xor	s4,t4,t1
bfc00774:	02301026 	xor	v0,s1,s0
bfc00778:	00cd7026 	xor	t6,a2,t5
bfc0077c:	00523826 	xor	a3,v0,s2
bfc00780:	02934026 	xor	t0,s4,s3
bfc00784:	01d17826 	xor	t7,t6,s1
bfc00788:	03c78026 	xor	s0,s8,a3
bfc0078c:	02e89826 	xor	s3,s7,t0
bfc00790:	032f3026 	xor	a2,t9,t7
bfc00794:	af100038 	sw	s0,56(t8)
bfc00798:	af13003c 	sw	s3,60(t8)
bfc0079c:	af060040 	sw	a2,64(t8)
bfc007a0:	2702000c 	addiu	v0,t8,12
bfc007a4:	8f0d000c 	lw	t5,12(t8)
bfc007a8:	8c440018 	lw	a0,24(v0)
bfc007ac:	8c450004 	lw	a1,4(v0)
bfc007b0:	8c4afffc 	lw	t2,-4(v0)
bfc007b4:	8c4b0020 	lw	t3,32(v0)
bfc007b8:	8c430008 	lw	v1,8(v0)
bfc007bc:	8c5efff8 	lw	s8,-8(v0)
bfc007c0:	8c4c001c 	lw	t4,28(v0)
bfc007c4:	00aab826 	xor	s7,a1,t2
bfc007c8:	0163c826 	xor	t9,t3,v1
bfc007cc:	01a44826 	xor	t1,t5,a0
bfc007d0:	013e9026 	xor	s2,t1,s8
bfc007d4:	02eca026 	xor	s4,s7,t4
bfc007d8:	032d8826 	xor	s1,t9,t5
bfc007dc:	0212f026 	xor	s8,s0,s2
bfc007e0:	0274b826 	xor	s7,s3,s4
bfc007e4:	00d1c826 	xor	t9,a2,s1
bfc007e8:	27180018 	addiu	t8,t8,24
bfc007ec:	ac590040 	sw	t9,64(v0)
bfc007f0:	ac5e0038 	sw	s8,56(v0)
bfc007f4:	1715ffd6 	bne	t8,s5,bfc00750 <sha_transform+0x170>
bfc007f8:	ac57003c 	sw	s7,60(v0)
bfc007fc:	8fb2011c 	lw	s2,284(sp)
bfc00800:	8fa60130 	lw	a2,304(sp)
bfc00804:	8fb30104 	lw	s3,260(sp)
bfc00808:	0246a026 	xor	s4,s2,a2
bfc0080c:	8fb700fc 	lw	s7,252(sp)
bfc00810:	0293c826 	xor	t9,s4,s3
bfc00814:	0337c026 	xor	t8,t9,s7
bfc00818:	afb8013c 	sw	t8,316(sp)
bfc0081c:	3c155a82 	lui	s5,0x5a82
bfc00820:	8ed40004 	lw	s4,4(s6)
bfc00824:	36b27999 	ori	s2,s5,0x7999
bfc00828:	8fa20000 	lw	v0,0(sp)
bfc0082c:	8ed50000 	lw	s5,0(s6)
bfc00830:	8ed70008 	lw	s7,8(s6)
bfc00834:	8ed8000c 	lw	t8,12(s6)
bfc00838:	8ed90010 	lw	t9,16(s6)
bfc0083c:	00158ec2 	srl	s1,s5,0x1b
bfc00840:	00527021 	addu	t6,v0,s2
bfc00844:	00158140 	sll	s0,s5,0x5
bfc00848:	00143827 	nor	a3,zero,s4
bfc0084c:	02302825 	or	a1,s1,s0
bfc00850:	00f85024 	and	t2,a3,t8
bfc00854:	02f47824 	and	t7,s7,s4
bfc00858:	01d94021 	addu	t0,t6,t9
bfc0085c:	014f1825 	or	v1,t2,t7
bfc00860:	01055821 	addu	t3,t0,a1
bfc00864:	00142082 	srl	a0,s4,0x2
bfc00868:	0014f780 	sll	s8,s4,0x1e
bfc0086c:	01634821 	addu	t1,t3,v1
bfc00870:	27b30050 	addiu	s3,sp,80
bfc00874:	03c46825 	or	t5,s8,a0
bfc00878:	27ab0004 	addiu	t3,sp,4
bfc0087c:	03008821 	move	s1,t8
bfc00880:	02a05021 	move	t2,s5
bfc00884:	0bf0022c 	j	bfc008b0 <sha_transform+0x2d0>
bfc00888:	02e07821 	move	t7,s7
bfc0088c:	00000000 	nop
bfc00890:	8d620004 	lw	v0,4(t3)
bfc00894:	020e6825 	or	t5,s0,t6
bfc00898:	00522021 	addu	a0,v0,s2
bfc0089c:	008f4821 	addu	t1,a0,t7
bfc008a0:	01237821 	addu	t7,t1,v1
bfc008a4:	01e64821 	addu	t1,t7,a2
bfc008a8:	256b0008 	addiu	t3,t3,8
bfc008ac:	01807821 	move	t7,t4
bfc008b0:	8d680000 	lw	t0,0(t3)
bfc008b4:	000a7027 	nor	t6,zero,t2
bfc008b8:	01126021 	addu	t4,t0,s2
bfc008bc:	000986c2 	srl	s0,t1,0x1b
bfc008c0:	00092940 	sll	a1,t1,0x5
bfc008c4:	01913821 	addu	a3,t4,s1
bfc008c8:	02051825 	or	v1,s0,a1
bfc008cc:	01cf8824 	and	s1,t6,t7
bfc008d0:	01aaf024 	and	s8,t5,t2
bfc008d4:	00e31021 	addu	v0,a3,v1
bfc008d8:	023e2025 	or	a0,s1,s8
bfc008dc:	00442021 	addu	a0,v0,a0
bfc008e0:	000a2882 	srl	a1,t2,0x2
bfc008e4:	000a3f80 	sll	a3,t2,0x1e
bfc008e8:	000466c2 	srl	t4,a0,0x1b
bfc008ec:	00045140 	sll	t2,a0,0x5
bfc008f0:	00093027 	nor	a2,zero,t1
bfc008f4:	018a1825 	or	v1,t4,t2
bfc008f8:	00e56025 	or	t4,a3,a1
bfc008fc:	00cd4024 	and	t0,a2,t5
bfc00900:	01892824 	and	a1,t4,t1
bfc00904:	257e0004 	addiu	s8,t3,4
bfc00908:	00098780 	sll	s0,t1,0x1e
bfc0090c:	00097082 	srl	t6,t1,0x2
bfc00910:	01a08821 	move	s1,t5
bfc00914:	00805021 	move	t2,a0
bfc00918:	17d3ffdd 	bne	s8,s3,bfc00890 <sha_transform+0x2b0>
bfc0091c:	01053025 	or	a2,t0,a1
bfc00920:	27b200a0 	addiu	s2,sp,160
bfc00924:	02533823 	subu	a3,s2,s3
bfc00928:	24f1fffc 	addiu	s1,a3,-4
bfc0092c:	00115082 	srl	t2,s1,0x2
bfc00930:	02605821 	move	t3,s3
bfc00934:	3c1e6ed9 	lui	s8,0x6ed9
bfc00938:	31530001 	andi	s3,t2,0x1
bfc0093c:	01a07021 	move	t6,t5
bfc00940:	00805021 	move	t2,a0
bfc00944:	01e06821 	move	t5,t7
bfc00948:	1260001d 	beqz	s3,bfc009c0 <sha_transform+0x3e0>
bfc0094c:	37d1eba1 	ori	s1,s8,0xeba1
bfc00950:	8fb00050 	lw	s0,80(sp)
bfc00954:	0004f6c2 	srl	s8,a0,0x1b
bfc00958:	02111021 	addu	v0,s0,s1
bfc0095c:	00042140 	sll	a0,a0,0x5
bfc00960:	004f9821 	addu	s3,v0,t7
bfc00964:	03c46825 	or	t5,s8,a0
bfc00968:	01897826 	xor	t7,t4,t1
bfc0096c:	01805821 	move	t3,t4
bfc00970:	026d1821 	addu	v1,s3,t5
bfc00974:	01ee2826 	xor	a1,t7,t6
bfc00978:	00093f80 	sll	a3,t1,0x1e
bfc0097c:	00093082 	srl	a2,t1,0x2
bfc00980:	01c06821 	move	t5,t6
bfc00984:	01404821 	move	t1,t2
bfc00988:	01607021 	move	t6,t3
bfc0098c:	00e66025 	or	t4,a3,a2
bfc00990:	00655021 	addu	t2,v1,a1
bfc00994:	0bf00270 	j	bfc009c0 <sha_transform+0x3e0>
bfc00998:	27ab0054 	addiu	t3,sp,84
bfc0099c:	00000000 	nop
bfc009a0:	8d640004 	lw	a0,4(t3)
bfc009a4:	020f6025 	or	t4,s0,t7
bfc009a8:	0091f021 	addu	s8,a0,s1
bfc009ac:	03ce5021 	addu	t2,s8,t6
bfc009b0:	01437021 	addu	t6,t2,v1
bfc009b4:	01c55021 	addu	t2,t6,a1
bfc009b8:	256b0008 	addiu	t3,t3,8
bfc009bc:	01007021 	move	t6,t0
bfc009c0:	8d650000 	lw	a1,0(t3)
bfc009c4:	000a86c2 	srl	s0,t2,0x1b
bfc009c8:	00b13021 	addu	a2,a1,s1
bfc009cc:	000a7940 	sll	t7,t2,0x5
bfc009d0:	020f9825 	or	s3,s0,t7
bfc009d4:	00cd3821 	addu	a3,a2,t5
bfc009d8:	01896826 	xor	t5,t4,t1
bfc009dc:	00f31021 	addu	v0,a3,s3
bfc009e0:	01ae2026 	xor	a0,t5,t6
bfc009e4:	00442021 	addu	a0,v0,a0
bfc009e8:	00092882 	srl	a1,t1,0x2
bfc009ec:	0009f780 	sll	s8,t1,0x1e
bfc009f0:	00044140 	sll	t0,a0,0x5
bfc009f4:	00041ec2 	srl	v1,a0,0x1b
bfc009f8:	00681825 	or	v1,v1,t0
bfc009fc:	03c54025 	or	t0,s8,a1
bfc00a00:	010a3026 	xor	a2,t0,t2
bfc00a04:	25730004 	addiu	s3,t3,4
bfc00a08:	000a8780 	sll	s0,t2,0x1e
bfc00a0c:	000a7882 	srl	t7,t2,0x2
bfc00a10:	01806821 	move	t5,t4
bfc00a14:	00804821 	move	t1,a0
bfc00a18:	1653ffe1 	bne	s2,s3,bfc009a0 <sha_transform+0x3c0>
bfc00a1c:	00cc2826 	xor	a1,a2,t4
bfc00a20:	3c138f1b 	lui	s3,0x8f1b
bfc00a24:	8fb100a0 	lw	s1,160(sp)
bfc00a28:	00805821 	move	t3,a0
bfc00a2c:	3672bcdc 	ori	s2,s3,0xbcdc
bfc00a30:	01406821 	move	t5,t2
bfc00a34:	01882825 	or	a1,t4,t0
bfc00a38:	02322021 	addu	a0,s1,s2
bfc00a3c:	000b56c2 	srl	t2,t3,0x1b
bfc00a40:	000bf140 	sll	s8,t3,0x5
bfc00a44:	00ad7824 	and	t7,a1,t5
bfc00a48:	01883024 	and	a2,t4,t0
bfc00a4c:	008e1821 	addu	v1,a0,t6
bfc00a50:	015e7025 	or	t6,t2,s8
bfc00a54:	01004821 	move	t1,t0
bfc00a58:	01e63825 	or	a3,t7,a2
bfc00a5c:	000d8780 	sll	s0,t5,0x1e
bfc00a60:	000d1082 	srl	v0,t5,0x2
bfc00a64:	006e8821 	addu	s1,v1,t6
bfc00a68:	01807821 	move	t7,t4
bfc00a6c:	01606821 	move	t5,t3
bfc00a70:	01206021 	move	t4,t1
bfc00a74:	27b300f0 	addiu	s3,sp,240
bfc00a78:	02024025 	or	t0,s0,v0
bfc00a7c:	02275821 	addu	t3,s1,a3
bfc00a80:	0bf002ac 	j	bfc00ab0 <sha_transform+0x4d0>
bfc00a84:	27a900a4 	addiu	t1,sp,164
	...
bfc00a90:	8d270004 	lw	a3,4(t1)
bfc00a94:	02304025 	or	t0,s1,s0
bfc00a98:	00f23021 	addu	a2,a3,s2
bfc00a9c:	00cc5821 	addu	t3,a2,t4
bfc00aa0:	016e6021 	addu	t4,t3,t6
bfc00aa4:	01835821 	addu	t3,t4,v1
bfc00aa8:	25290008 	addiu	t1,t1,8
bfc00aac:	01406021 	move	t4,t2
bfc00ab0:	8d240000 	lw	a0,0(t1)
bfc00ab4:	01888025 	or	s0,t4,t0
bfc00ab8:	0092f021 	addu	s8,a0,s2
bfc00abc:	000b2ec2 	srl	a1,t3,0x1b
bfc00ac0:	000b8940 	sll	s1,t3,0x5
bfc00ac4:	03cf1021 	addu	v0,s8,t7
bfc00ac8:	00b11825 	or	v1,a1,s1
bfc00acc:	020d7824 	and	t7,s0,t5
bfc00ad0:	01883824 	and	a3,t4,t0
bfc00ad4:	00433021 	addu	a2,v0,v1
bfc00ad8:	01e77025 	or	t6,t7,a3
bfc00adc:	00ce2821 	addu	a1,a2,t6
bfc00ae0:	000d2780 	sll	a0,t5,0x1e
bfc00ae4:	000df082 	srl	s8,t5,0x2
bfc00ae8:	000556c2 	srl	t2,a1,0x1b
bfc00aec:	00056940 	sll	t5,a1,0x5
bfc00af0:	014d7025 	or	t6,t2,t5
bfc00af4:	009e5025 	or	t2,a0,s8
bfc00af8:	010a1825 	or	v1,t0,t2
bfc00afc:	006b1024 	and	v0,v1,t3
bfc00b00:	010a3024 	and	a2,t0,t2
bfc00b04:	25270004 	addiu	a3,t1,4
bfc00b08:	000b8f80 	sll	s1,t3,0x1e
bfc00b0c:	000b8082 	srl	s0,t3,0x2
bfc00b10:	01007821 	move	t7,t0
bfc00b14:	00a06821 	move	t5,a1
bfc00b18:	1667ffdd 	bne	s3,a3,bfc00a90 <sha_transform+0x4b0>
bfc00b1c:	00461825 	or	v1,v0,a2
bfc00b20:	3c11ca62 	lui	s1,0xca62
bfc00b24:	8fa700f0 	lw	a3,240(sp)
bfc00b28:	3630c1d6 	ori	s0,s1,0xc1d6
bfc00b2c:	0005f6c2 	srl	s8,a1,0x1b
bfc00b30:	00052140 	sll	a0,a1,0x5
bfc00b34:	00f03021 	addu	a2,a3,s0
bfc00b38:	00a04821 	move	t1,a1
bfc00b3c:	00cc1821 	addu	v1,a2,t4
bfc00b40:	014b2826 	xor	a1,t2,t3
bfc00b44:	03c41025 	or	v0,s8,a0
bfc00b48:	01006821 	move	t5,t0
bfc00b4c:	00af9826 	xor	s3,a1,t7
bfc00b50:	00624021 	addu	t0,v1,v0
bfc00b54:	000b7f80 	sll	t7,t3,0x1e
bfc00b58:	01409021 	move	s2,t2
bfc00b5c:	000b7082 	srl	t6,t3,0x2
bfc00b60:	01a06021 	move	t4,t5
bfc00b64:	01205821 	move	t3,t1
bfc00b68:	27b10140 	addiu	s1,sp,320
bfc00b6c:	01134821 	addu	t1,t0,s3
bfc00b70:	01ee5025 	or	t2,t7,t6
bfc00b74:	02406821 	move	t5,s2
bfc00b78:	0bf002e8 	j	bfc00ba0 <sha_transform+0x5c0>
bfc00b7c:	27a800f4 	addiu	t0,sp,244
bfc00b80:	8d020004 	lw	v0,4(t0)
bfc00b84:	01ee5025 	or	t2,t7,t6
bfc00b88:	0050f021 	addu	s8,v0,s0
bfc00b8c:	03cd4821 	addu	t1,s8,t5
bfc00b90:	01236821 	addu	t5,t1,v1
bfc00b94:	01a54821 	addu	t1,t5,a1
bfc00b98:	25080008 	addiu	t0,t0,8
bfc00b9c:	00c06821 	move	t5,a2
bfc00ba0:	8d130000 	lw	s3,0(t0)
bfc00ba4:	000976c2 	srl	t6,t1,0x1b
bfc00ba8:	02702021 	addu	a0,s3,s0
bfc00bac:	00097940 	sll	t7,t1,0x5
bfc00bb0:	01cf9025 	or	s2,t6,t7
bfc00bb4:	008c3821 	addu	a3,a0,t4
bfc00bb8:	014b6026 	xor	t4,t2,t3
bfc00bbc:	00f23021 	addu	a2,a3,s2
bfc00bc0:	018d1826 	xor	v1,t4,t5
bfc00bc4:	000b2882 	srl	a1,t3,0x2
bfc00bc8:	000bf780 	sll	s8,t3,0x1e
bfc00bcc:	00c32021 	addu	a0,a2,v1
bfc00bd0:	03c53025 	or	a2,s8,a1
bfc00bd4:	00045ec2 	srl	t3,a0,0x1b
bfc00bd8:	00041140 	sll	v0,a0,0x5
bfc00bdc:	00c99826 	xor	s3,a2,t1
bfc00be0:	25120004 	addiu	s2,t0,4
bfc00be4:	01621825 	or	v1,t3,v0
bfc00be8:	00097f80 	sll	t7,t1,0x1e
bfc00bec:	00097082 	srl	t6,t1,0x2
bfc00bf0:	01406021 	move	t4,t2
bfc00bf4:	00805821 	move	t3,a0
bfc00bf8:	1632ffe1 	bne	s1,s2,bfc00b80 <sha_transform+0x5a0>
bfc00bfc:	026a2826 	xor	a1,s3,t2
bfc00c00:	02898021 	addu	s0,s4,t1
bfc00c04:	00954021 	addu	t0,a0,s5
bfc00c08:	02e6a021 	addu	s4,s7,a2
bfc00c0c:	030aa821 	addu	s5,t8,t2
bfc00c10:	032dc021 	addu	t8,t9,t5
bfc00c14:	aed00004 	sw	s0,4(s6)
bfc00c18:	aed40008 	sw	s4,8(s6)
bfc00c1c:	aed5000c 	sw	s5,12(s6)
bfc00c20:	aed80010 	sw	t8,16(s6)
bfc00c24:	aec80000 	sw	t0,0(s6)
bfc00c28:	8fbe016c 	lw	s8,364(sp)
bfc00c2c:	8fb70168 	lw	s7,360(sp)
bfc00c30:	8fb60164 	lw	s6,356(sp)
bfc00c34:	8fb50160 	lw	s5,352(sp)
bfc00c38:	8fb4015c 	lw	s4,348(sp)
bfc00c3c:	8fb30158 	lw	s3,344(sp)
bfc00c40:	8fb20154 	lw	s2,340(sp)
bfc00c44:	8fb10150 	lw	s1,336(sp)
bfc00c48:	8fb0014c 	lw	s0,332(sp)
bfc00c4c:	03e00008 	jr	ra
bfc00c50:	27bd0170 	addiu	sp,sp,368
	...

bfc00c60 <sha_init>:
sha_init():
bfc00c60:	3c0c6745 	lui	t4,0x6745
bfc00c64:	3c0aefcd 	lui	t2,0xefcd
bfc00c68:	3c0898ba 	lui	t0,0x98ba
bfc00c6c:	3c061032 	lui	a2,0x1032
bfc00c70:	3c03c3d2 	lui	v1,0xc3d2
bfc00c74:	358b2301 	ori	t3,t4,0x2301
bfc00c78:	3549ab89 	ori	t1,t2,0xab89
bfc00c7c:	3507dcfe 	ori	a3,t0,0xdcfe
bfc00c80:	34c55476 	ori	a1,a2,0x5476
bfc00c84:	3462e1f0 	ori	v0,v1,0xe1f0
bfc00c88:	ac8b0000 	sw	t3,0(a0)
bfc00c8c:	ac890004 	sw	t1,4(a0)
bfc00c90:	ac870008 	sw	a3,8(a0)
bfc00c94:	ac85000c 	sw	a1,12(a0)
bfc00c98:	ac820010 	sw	v0,16(a0)
bfc00c9c:	ac800018 	sw	zero,24(a0)
bfc00ca0:	03e00008 	jr	ra
bfc00ca4:	ac800014 	sw	zero,20(a0)
	...

bfc00cb0 <sha_print>:
sha_print():
bfc00cb0:	8c850000 	lw	a1,0(a0)
bfc00cb4:	8c860004 	lw	a2,4(a0)
bfc00cb8:	8c870008 	lw	a3,8(a0)
bfc00cbc:	8c830010 	lw	v1,16(a0)
bfc00cc0:	8c82000c 	lw	v0,12(a0)
bfc00cc4:	3c048000 	lui	a0,0x8000
bfc00cc8:	27bdffe0 	addiu	sp,sp,-32
bfc00ccc:	24840034 	addiu	a0,a0,52
bfc00cd0:	afbf001c 	sw	ra,28(sp)
bfc00cd4:	afa20010 	sw	v0,16(sp)
bfc00cd8:	0ff009d0 	jal	bfc02740 <printf>
bfc00cdc:	afa30014 	sw	v1,20(sp)
bfc00ce0:	8fbf001c 	lw	ra,28(sp)
bfc00ce4:	00000000 	nop
bfc00ce8:	03e00008 	jr	ra
bfc00cec:	27bd0020 	addiu	sp,sp,32

bfc00cf0 <sha_final>:
sha_final():
bfc00cf0:	27bdffd8 	addiu	sp,sp,-40
bfc00cf4:	afb2001c 	sw	s2,28(sp)
bfc00cf8:	8c920014 	lw	s2,20(a0)
bfc00cfc:	afb10018 	sw	s1,24(sp)
bfc00d00:	001230c2 	srl	a2,s2,0x3
bfc00d04:	30c5003f 	andi	a1,a2,0x3f
bfc00d08:	2491001c 	addiu	s1,a0,28
bfc00d0c:	24a70001 	addiu	a3,a1,1
bfc00d10:	afb00014 	sw	s0,20(sp)
bfc00d14:	02251021 	addu	v0,s1,a1
bfc00d18:	00808021 	move	s0,a0
bfc00d1c:	2403ff80 	li	v1,-128
bfc00d20:	28e40039 	slti	a0,a3,57
bfc00d24:	afb30020 	sw	s3,32(sp)
bfc00d28:	afbf0024 	sw	ra,36(sp)
bfc00d2c:	8e130018 	lw	s3,24(s0)
bfc00d30:	10800013 	beqz	a0,bfc00d80 <sha_final+0x90>
bfc00d34:	a0430000 	sb	v1,0(v0)
bfc00d38:	24090038 	li	t1,56
bfc00d3c:	02272021 	addu	a0,s1,a3
bfc00d40:	01273023 	subu	a2,t1,a3
bfc00d44:	0ff00b75 	jal	bfc02dd4 <memset>
bfc00d48:	00002821 	move	a1,zero
bfc00d4c:	ae130054 	sw	s3,84(s0)
bfc00d50:	ae120058 	sw	s2,88(s0)
bfc00d54:	02002021 	move	a0,s0
bfc00d58:	8fbf0024 	lw	ra,36(sp)
bfc00d5c:	8fb30020 	lw	s3,32(sp)
bfc00d60:	8fb2001c 	lw	s2,28(sp)
bfc00d64:	8fb10018 	lw	s1,24(sp)
bfc00d68:	8fb00014 	lw	s0,20(sp)
bfc00d6c:	0bf00178 	j	bfc005e0 <sha_transform>
bfc00d70:	27bd0028 	addiu	sp,sp,40
	...
bfc00d80:	24080040 	li	t0,64
bfc00d84:	02272021 	addu	a0,s1,a3
bfc00d88:	01073023 	subu	a2,t0,a3
bfc00d8c:	0ff00b75 	jal	bfc02dd4 <memset>
bfc00d90:	00002821 	move	a1,zero
bfc00d94:	0ff00178 	jal	bfc005e0 <sha_transform>
bfc00d98:	02002021 	move	a0,s0
bfc00d9c:	02202021 	move	a0,s1
bfc00da0:	00002821 	move	a1,zero
bfc00da4:	0ff00b75 	jal	bfc02dd4 <memset>
bfc00da8:	24060038 	li	a2,56
bfc00dac:	ae130054 	sw	s3,84(s0)
bfc00db0:	ae120058 	sw	s2,88(s0)
bfc00db4:	02002021 	move	a0,s0
bfc00db8:	8fbf0024 	lw	ra,36(sp)
bfc00dbc:	8fb30020 	lw	s3,32(sp)
bfc00dc0:	8fb2001c 	lw	s2,28(sp)
bfc00dc4:	8fb10018 	lw	s1,24(sp)
bfc00dc8:	8fb00014 	lw	s0,20(sp)
bfc00dcc:	0bf00178 	j	bfc005e0 <sha_transform>
bfc00dd0:	27bd0028 	addiu	sp,sp,40
	...

bfc00de0 <sha_update>:
sha_update():
bfc00de0:	8c870014 	lw	a3,20(a0)
bfc00de4:	27bdffd0 	addiu	sp,sp,-48
bfc00de8:	000618c0 	sll	v1,a2,0x3
bfc00dec:	afb2001c 	sw	s2,28(sp)
bfc00df0:	00809021 	move	s2,a0
bfc00df4:	00672021 	addu	a0,v1,a3
bfc00df8:	0087102b 	sltu	v0,a0,a3
bfc00dfc:	afbf002c 	sw	ra,44(sp)
bfc00e00:	afb50028 	sw	s5,40(sp)
bfc00e04:	afb40024 	sw	s4,36(sp)
bfc00e08:	afb30020 	sw	s3,32(sp)
bfc00e0c:	afb10018 	sw	s1,24(sp)
bfc00e10:	14400057 	bnez	v0,bfc00f70 <sha_update+0x190>
bfc00e14:	afb00014 	sw	s0,20(sp)
bfc00e18:	8e430018 	lw	v1,24(s2)
bfc00e1c:	00065f42 	srl	t3,a2,0x1d
bfc00e20:	006b5021 	addu	t2,v1,t3
bfc00e24:	28c90040 	slti	t1,a2,64
bfc00e28:	ae440014 	sw	a0,20(s2)
bfc00e2c:	15200053 	bnez	t1,bfc00f7c <sha_update+0x19c>
bfc00e30:	ae4a0018 	sw	t2,24(s2)
bfc00e34:	24d5ffc0 	addiu	s5,a2,-64
bfc00e38:	0015a182 	srl	s4,s5,0x6
bfc00e3c:	26860001 	addiu	a2,s4,1
bfc00e40:	00062180 	sll	a0,a2,0x6
bfc00e44:	00a08021 	move	s0,a1
bfc00e48:	00a49821 	addu	s3,a1,a0
bfc00e4c:	2651001c 	addiu	s1,s2,28
bfc00e50:	8a050003 	lwl	a1,3(s0)
bfc00e54:	8a0f0007 	lwl	t7,7(s0)
bfc00e58:	8a0e000b 	lwl	t6,11(s0)
bfc00e5c:	8a0d000f 	lwl	t5,15(s0)
bfc00e60:	9a050000 	lwr	a1,0(s0)
bfc00e64:	9a0f0004 	lwr	t7,4(s0)
bfc00e68:	9a0e0008 	lwr	t6,8(s0)
bfc00e6c:	9a0d000c 	lwr	t5,12(s0)
bfc00e70:	260c0010 	addiu	t4,s0,16
bfc00e74:	ae250000 	sw	a1,0(s1)
bfc00e78:	ae2f0004 	sw	t7,4(s1)
bfc00e7c:	ae2e0008 	sw	t6,8(s1)
bfc00e80:	ae2d000c 	sw	t5,12(s1)
bfc00e84:	89860003 	lwl	a2,3(t4)
bfc00e88:	898b0007 	lwl	t3,7(t4)
bfc00e8c:	898a000b 	lwl	t2,11(t4)
bfc00e90:	8984000f 	lwl	a0,15(t4)
bfc00e94:	998b0004 	lwr	t3,4(t4)
bfc00e98:	9984000c 	lwr	a0,12(t4)
bfc00e9c:	998a0008 	lwr	t2,8(t4)
bfc00ea0:	99860000 	lwr	a2,0(t4)
bfc00ea4:	26290010 	addiu	t1,s1,16
bfc00ea8:	ae260010 	sw	a2,16(s1)
bfc00eac:	26020020 	addiu	v0,s0,32
bfc00eb0:	ad24000c 	sw	a0,12(t1)
bfc00eb4:	ad2b0004 	sw	t3,4(t1)
bfc00eb8:	ad2a0008 	sw	t2,8(t1)
bfc00ebc:	88480003 	lwl	t0,3(v0)
bfc00ec0:	88470007 	lwl	a3,7(v0)
bfc00ec4:	885f000b 	lwl	ra,11(v0)
bfc00ec8:	8843000f 	lwl	v1,15(v0)
bfc00ecc:	98480000 	lwr	t0,0(v0)
bfc00ed0:	9843000c 	lwr	v1,12(v0)
bfc00ed4:	98470004 	lwr	a3,4(v0)
bfc00ed8:	985f0008 	lwr	ra,8(v0)
bfc00edc:	26390020 	addiu	t9,s1,32
bfc00ee0:	ae280020 	sw	t0,32(s1)
bfc00ee4:	26180030 	addiu	t8,s0,48
bfc00ee8:	af23000c 	sw	v1,12(t9)
bfc00eec:	af270004 	sw	a3,4(t9)
bfc00ef0:	af3f0008 	sw	ra,8(t9)
bfc00ef4:	8b050003 	lwl	a1,3(t8)
bfc00ef8:	8b0e0007 	lwl	t6,7(t8)
bfc00efc:	8b0d000b 	lwl	t5,11(t8)
bfc00f00:	8b0f000f 	lwl	t7,15(t8)
bfc00f04:	9b0e0004 	lwr	t6,4(t8)
bfc00f08:	9b0f000c 	lwr	t7,12(t8)
bfc00f0c:	9b0d0008 	lwr	t5,8(t8)
bfc00f10:	9b050000 	lwr	a1,0(t8)
bfc00f14:	262c0030 	addiu	t4,s1,48
bfc00f18:	ae250030 	sw	a1,48(s1)
bfc00f1c:	26100040 	addiu	s0,s0,64
bfc00f20:	ad8f000c 	sw	t7,12(t4)
bfc00f24:	ad8e0004 	sw	t6,4(t4)
bfc00f28:	ad8d0008 	sw	t5,8(t4)
bfc00f2c:	0ff00178 	jal	bfc005e0 <sha_transform>
bfc00f30:	02402021 	move	a0,s2
bfc00f34:	1613ffc6 	bne	s0,s3,bfc00e50 <sha_update+0x70>
bfc00f38:	02002821 	move	a1,s0
bfc00f3c:	00149180 	sll	s2,s4,0x6
bfc00f40:	02b23023 	subu	a2,s5,s2
bfc00f44:	02202021 	move	a0,s1
bfc00f48:	8fbf002c 	lw	ra,44(sp)
bfc00f4c:	8fb50028 	lw	s5,40(sp)
bfc00f50:	8fb40024 	lw	s4,36(sp)
bfc00f54:	8fb30020 	lw	s3,32(sp)
bfc00f58:	8fb2001c 	lw	s2,28(sp)
bfc00f5c:	8fb10018 	lw	s1,24(sp)
bfc00f60:	8fb00014 	lw	s0,20(sp)
bfc00f64:	0bf00b80 	j	bfc02e00 <memcpy>
bfc00f68:	27bd0030 	addiu	sp,sp,48
bfc00f6c:	00000000 	nop
bfc00f70:	8e480018 	lw	t0,24(s2)
bfc00f74:	0bf00387 	j	bfc00e1c <sha_update+0x3c>
bfc00f78:	25030001 	addiu	v1,t0,1
bfc00f7c:	0bf003d1 	j	bfc00f44 <sha_update+0x164>
bfc00f80:	2651001c 	addiu	s1,s2,28
	...

bfc00f90 <sha_stream>:
sha_stream():
bfc00f90:	27bdfc50 	addiu	sp,sp,-944
bfc00f94:	afbe03a8 	sw	s8,936(sp)
bfc00f98:	0080f021 	move	s8,a0
bfc00f9c:	afb30394 	sw	s3,916(sp)
bfc00fa0:	8ca40000 	lw	a0,0(a1)
bfc00fa4:	27d3001c 	addiu	s3,s8,28
bfc00fa8:	afbf03ac 	sw	ra,940(sp)
bfc00fac:	afb20390 	sw	s2,912(sp)
bfc00fb0:	afb1038c 	sw	s1,908(sp)
bfc00fb4:	afb00388 	sw	s0,904(sp)
bfc00fb8:	afa503b4 	sw	a1,948(sp)
bfc00fbc:	afb703a4 	sw	s7,932(sp)
bfc00fc0:	afb603a0 	sw	s6,928(sp)
bfc00fc4:	afb5039c 	sw	s5,924(sp)
bfc00fc8:	afb40398 	sw	s4,920(sp)
bfc00fcc:	0ff00ae4 	jal	bfc02b90 <strlen>
bfc00fd0:	afb30358 	sw	s3,856(sp)
bfc00fd4:	3c128000 	lui	s2,0x8000
bfc00fd8:	26440054 	addiu	a0,s2,84
bfc00fdc:	0ff009d0 	jal	bfc02740 <printf>
bfc00fe0:	00402821 	move	a1,v0
bfc00fe4:	3c116745 	lui	s1,0x6745
bfc00fe8:	3c0fefcd 	lui	t7,0xefcd
bfc00fec:	3c0d98ba 	lui	t5,0x98ba
bfc00ff0:	3c0b1032 	lui	t3,0x1032
bfc00ff4:	3c09c3d2 	lui	t1,0xc3d2
bfc00ff8:	27a700b0 	addiu	a3,sp,176
bfc00ffc:	36302301 	ori	s0,s1,0x2301
bfc01000:	35eeab89 	ori	t6,t7,0xab89
bfc01004:	35acdcfe 	ori	t4,t5,0xdcfe
bfc01008:	356a5476 	ori	t2,t3,0x5476
bfc0100c:	3522e1f0 	ori	v0,t1,0xe1f0
bfc01010:	27a40018 	addiu	a0,sp,24
bfc01014:	27a50114 	addiu	a1,sp,276
bfc01018:	27a60060 	addiu	a2,sp,96
bfc0101c:	afa7037c 	sw	a3,892(sp)
bfc01020:	8fa703b4 	lw	a3,948(sp)
bfc01024:	afd00000 	sw	s0,0(s8)
bfc01028:	27a30150 	addiu	v1,sp,336
bfc0102c:	afa40374 	sw	a0,884(sp)
bfc01030:	afa50370 	sw	a1,880(sp)
bfc01034:	afa60378 	sw	a2,888(sp)
bfc01038:	27a80100 	addiu	t0,sp,256
bfc0103c:	afce0004 	sw	t6,4(s8)
bfc01040:	afcc0008 	sw	t4,8(s8)
bfc01044:	afca000c 	sw	t2,12(s8)
bfc01048:	afc20010 	sw	v0,16(s8)
bfc0104c:	afc00014 	sw	zero,20(s8)
bfc01050:	afc00018 	sw	zero,24(s8)
bfc01054:	27a40150 	addiu	a0,sp,336
bfc01058:	24050001 	li	a1,1
bfc0105c:	24060200 	li	a2,512
bfc01060:	afa30384 	sw	v1,900(sp)
bfc01064:	0ff0099d 	jal	bfc02674 <fread>
bfc01068:	afa80380 	sw	t0,896(sp)
bfc0106c:	00408021 	move	s0,v0
bfc01070:	184001f7 	blez	v0,bfc01850 <sha_stream+0x8c0>
bfc01074:	00408821 	move	s1,v0
bfc01078:	3c178000 	lui	s7,0x8000
bfc0107c:	26e409d0 	addiu	a0,s7,2512
bfc01080:	0ff009d0 	jal	bfc02740 <printf>
bfc01084:	02002821 	move	a1,s0
bfc01088:	8fd50014 	lw	s5,20(s8)
bfc0108c:	0010b0c0 	sll	s6,s0,0x3
bfc01090:	02d52021 	addu	a0,s6,s5
bfc01094:	0095a02b 	sltu	s4,a0,s5
bfc01098:	16800381 	bnez	s4,bfc01ea0 <sha_stream+0xf10>
bfc0109c:	00104742 	srl	t0,s0,0x1d
bfc010a0:	8fc30018 	lw	v1,24(s8)
bfc010a4:	00000000 	nop
bfc010a8:	0068f821 	addu	ra,v1,t0
bfc010ac:	2a190040 	slti	t9,s0,64
bfc010b0:	afc40014 	sw	a0,20(s8)
bfc010b4:	17200382 	bnez	t9,bfc01ec0 <sha_stream+0xf30>
bfc010b8:	afdf0018 	sw	ra,24(s8)
bfc010bc:	2604ffc0 	addiu	a0,s0,-64
bfc010c0:	00042982 	srl	a1,a0,0x6
bfc010c4:	24a60001 	addiu	a2,a1,1
bfc010c8:	00063980 	sll	a3,a2,0x6
bfc010cc:	afa40360 	sw	a0,864(sp)
bfc010d0:	afa50364 	sw	a1,868(sp)
bfc010d4:	afa70368 	sw	a3,872(sp)
bfc010d8:	27b70150 	addiu	s7,sp,336
bfc010dc:	8ae20003 	lwl	v0,3(s7)
bfc010e0:	8ae30007 	lwl	v1,7(s7)
bfc010e4:	8ae9000b 	lwl	t1,11(s7)
bfc010e8:	8aea000f 	lwl	t2,15(s7)
bfc010ec:	9ae20000 	lwr	v0,0(s7)
bfc010f0:	9ae30004 	lwr	v1,4(s7)
bfc010f4:	9ae90008 	lwr	t1,8(s7)
bfc010f8:	9aea000c 	lwr	t2,12(s7)
bfc010fc:	8fa80358 	lw	t0,856(sp)
bfc01100:	26e50010 	addiu	a1,s7,16
bfc01104:	ad020000 	sw	v0,0(t0)
bfc01108:	ad030004 	sw	v1,4(t0)
bfc0110c:	ad090008 	sw	t1,8(t0)
bfc01110:	ad0a000c 	sw	t2,12(t0)
bfc01114:	88b60003 	lwl	s6,3(a1)
bfc01118:	88bf0007 	lwl	ra,7(a1)
bfc0111c:	88b9000b 	lwl	t9,11(a1)
bfc01120:	88a4000f 	lwl	a0,15(a1)
bfc01124:	8fb30358 	lw	s3,856(sp)
bfc01128:	98bf0004 	lwr	ra,4(a1)
bfc0112c:	98a4000c 	lwr	a0,12(a1)
bfc01130:	98b90008 	lwr	t9,8(a1)
bfc01134:	98b60000 	lwr	s6,0(a1)
bfc01138:	26780010 	addiu	t8,s3,16
bfc0113c:	ae760010 	sw	s6,16(s3)
bfc01140:	26e60020 	addiu	a2,s7,32
bfc01144:	af04000c 	sw	a0,12(t8)
bfc01148:	af1f0004 	sw	ra,4(t8)
bfc0114c:	af190008 	sw	t9,8(t8)
bfc01150:	88c70003 	lwl	a3,3(a2)
bfc01154:	88d00007 	lwl	s0,7(a2)
bfc01158:	88cf000b 	lwl	t7,11(a2)
bfc0115c:	88cb000f 	lwl	t3,15(a2)
bfc01160:	98c70000 	lwr	a3,0(a2)
bfc01164:	98cb000c 	lwr	t3,12(a2)
bfc01168:	98d00004 	lwr	s0,4(a2)
bfc0116c:	98cf0008 	lwr	t7,8(a2)
bfc01170:	26710020 	addiu	s1,s3,32
bfc01174:	ae670020 	sw	a3,32(s3)
bfc01178:	26f20030 	addiu	s2,s7,48
bfc0117c:	ae2b000c 	sw	t3,12(s1)
bfc01180:	ae300004 	sw	s0,4(s1)
bfc01184:	ae2f0008 	sw	t7,8(s1)
bfc01188:	8a550003 	lwl	s5,3(s2)
bfc0118c:	8a4c0007 	lwl	t4,7(s2)
bfc01190:	8a4d000b 	lwl	t5,11(s2)
bfc01194:	8a54000f 	lwl	s4,15(s2)
bfc01198:	9a4c0004 	lwr	t4,4(s2)
bfc0119c:	9a54000c 	lwr	s4,12(s2)
bfc011a0:	9a4d0008 	lwr	t5,8(s2)
bfc011a4:	9a550000 	lwr	s5,0(s2)
bfc011a8:	266e0030 	addiu	t6,s3,48
bfc011ac:	ae750030 	sw	s5,48(s3)
bfc011b0:	add4000c 	sw	s4,12(t6)
bfc011b4:	adcc0004 	sw	t4,4(t6)
bfc011b8:	adcd0008 	sw	t5,8(t6)
bfc011bc:	8fcf0024 	lw	t7,36(s8)
bfc011c0:	8fd00020 	lw	s0,32(s8)
bfc011c4:	8fd10028 	lw	s1,40(s8)
bfc011c8:	8fd2002c 	lw	s2,44(s8)
bfc011cc:	8fd3003c 	lw	s3,60(s8)
bfc011d0:	8fd40044 	lw	s4,68(s8)
bfc011d4:	8fa90370 	lw	t1,880(sp)
bfc011d8:	8fa80374 	lw	t0,884(sp)
bfc011dc:	8fcb001c 	lw	t3,28(s8)
bfc011e0:	8fd50040 	lw	s5,64(s8)
bfc011e4:	8fcc0050 	lw	t4,80(s8)
bfc011e8:	8fcd0054 	lw	t5,84(s8)
bfc011ec:	8fce0058 	lw	t6,88(s8)
bfc011f0:	8fc60030 	lw	a2,48(s8)
bfc011f4:	8fc70034 	lw	a3,52(s8)
bfc011f8:	8fca004c 	lw	t2,76(s8)
bfc011fc:	0128b023 	subu	s6,t1,t0
bfc01200:	02301826 	xor	v1,s1,s0
bfc01204:	8fc80038 	lw	t0,56(s8)
bfc01208:	8fc90048 	lw	t1,72(s8)
bfc0120c:	02542826 	xor	a1,s2,s4
bfc01210:	01f31026 	xor	v0,t7,s3
bfc01214:	004bf826 	xor	ra,v0,t3
bfc01218:	0075c826 	xor	t9,v1,s5
bfc0121c:	00af2026 	xor	a0,a1,t7
bfc01220:	26d8fff4 	addiu	t8,s6,-12
bfc01224:	afa60024 	sw	a2,36(sp)
bfc01228:	019fb026 	xor	s6,t4,ra
bfc0122c:	afa70028 	sw	a3,40(sp)
bfc01230:	01b9f826 	xor	ra,t5,t9
bfc01234:	afa8002c 	sw	t0,44(sp)
bfc01238:	01c4c826 	xor	t9,t6,a0
bfc0123c:	afa9003c 	sw	t1,60(sp)
bfc01240:	27a40018 	addiu	a0,sp,24
bfc01244:	afaa0040 	sw	t2,64(sp)
bfc01248:	afab0010 	sw	t3,16(sp)
bfc0124c:	afb00014 	sw	s0,20(sp)
bfc01250:	afaf0018 	sw	t7,24(sp)
bfc01254:	afb1001c 	sw	s1,28(sp)
bfc01258:	afb20020 	sw	s2,32(sp)
bfc0125c:	afb30030 	sw	s3,48(sp)
bfc01260:	afb50034 	sw	s5,52(sp)
bfc01264:	afb40038 	sw	s4,56(sp)
bfc01268:	8fa30370 	lw	v1,880(sp)
bfc0126c:	00182882 	srl	a1,t8,0x2
bfc01270:	26e20040 	addiu	v0,s7,64
bfc01274:	2498000c 	addiu	t8,a0,12
bfc01278:	afac0044 	sw	t4,68(sp)
bfc0127c:	afad0048 	sw	t5,72(sp)
bfc01280:	30a50001 	andi	a1,a1,0x1
bfc01284:	afae004c 	sw	t6,76(sp)
bfc01288:	afb60050 	sw	s6,80(sp)
bfc0128c:	afbf0054 	sw	ra,84(sp)
bfc01290:	afb90058 	sw	t9,88(sp)
bfc01294:	13030047 	beq	t8,v1,bfc013b4 <sha_stream+0x424>
bfc01298:	afa2035c 	sw	v0,860(sp)
bfc0129c:	10a00019 	beqz	a1,bfc01304 <sha_stream+0x374>
bfc012a0:	27ac0018 	addiu	t4,sp,24
bfc012a4:	8faa0024 	lw	t2,36(sp)
bfc012a8:	8f080018 	lw	t0,24(t8)
bfc012ac:	8f110004 	lw	s1,4(t8)
bfc012b0:	8f06fffc 	lw	a2,-4(t8)
bfc012b4:	8f090008 	lw	t1,8(t8)
bfc012b8:	8f070020 	lw	a3,32(t8)
bfc012bc:	8f0efff8 	lw	t6,-8(t8)
bfc012c0:	8f0f001c 	lw	t7,28(t8)
bfc012c4:	02265826 	xor	t3,s1,a2
bfc012c8:	01276826 	xor	t5,t1,a3
bfc012cc:	01489026 	xor	s2,t2,t0
bfc012d0:	024e9826 	xor	s3,s2,t6
bfc012d4:	016fa826 	xor	s5,t3,t7
bfc012d8:	01aaa026 	xor	s4,t5,t2
bfc012dc:	02d3b026 	xor	s6,s6,s3
bfc012e0:	03f5f826 	xor	ra,ra,s5
bfc012e4:	0334c826 	xor	t9,t9,s4
bfc012e8:	8fb70370 	lw	s7,880(sp)
bfc012ec:	af190040 	sw	t9,64(t8)
bfc012f0:	af160038 	sw	s6,56(t8)
bfc012f4:	af1f003c 	sw	ra,60(t8)
bfc012f8:	25980018 	addiu	t8,t4,24
bfc012fc:	1317002d 	beq	t8,s7,bfc013b4 <sha_stream+0x424>
bfc01300:	00000000 	nop
bfc01304:	8f170000 	lw	s7,0(t8)
bfc01308:	8f150018 	lw	s5,24(t8)
bfc0130c:	8f110004 	lw	s1,4(t8)
bfc01310:	8f0ffffc 	lw	t7,-4(t8)
bfc01314:	8f130008 	lw	s3,8(t8)
bfc01318:	8f120020 	lw	s2,32(t8)
bfc0131c:	8f14fff8 	lw	s4,-8(t8)
bfc01320:	8f0c001c 	lw	t4,28(t8)
bfc01324:	022f7026 	xor	t6,s1,t7
bfc01328:	02721826 	xor	v1,s3,s2
bfc0132c:	02f51026 	xor	v0,s7,s5
bfc01330:	01cc4026 	xor	t0,t6,t4
bfc01334:	00543826 	xor	a3,v0,s4
bfc01338:	00773026 	xor	a2,v1,s7
bfc0133c:	02c78826 	xor	s1,s6,a3
bfc01340:	03e89826 	xor	s3,ra,t0
bfc01344:	0326a026 	xor	s4,t9,a2
bfc01348:	af110038 	sw	s1,56(t8)
bfc0134c:	af13003c 	sw	s3,60(t8)
bfc01350:	af140040 	sw	s4,64(t8)
bfc01354:	270e000c 	addiu	t6,t8,12
bfc01358:	8f0d000c 	lw	t5,12(t8)
bfc0135c:	8dd60008 	lw	s6,8(t6)
bfc01360:	8dc40018 	lw	a0,24(t6)
bfc01364:	8dc50004 	lw	a1,4(t6)
bfc01368:	8dcafffc 	lw	t2,-4(t6)
bfc0136c:	8dc90020 	lw	t1,32(t6)
bfc01370:	8dd9001c 	lw	t9,28(t6)
bfc01374:	8dcbfff8 	lw	t3,-8(t6)
bfc01378:	02c97826 	xor	t7,s6,t1
bfc0137c:	01a4f826 	xor	ra,t5,a0
bfc01380:	00aa8026 	xor	s0,a1,t2
bfc01384:	03eb9026 	xor	s2,ra,t3
bfc01388:	0219a826 	xor	s5,s0,t9
bfc0138c:	01ed6026 	xor	t4,t7,t5
bfc01390:	8fb70370 	lw	s7,880(sp)
bfc01394:	0232b026 	xor	s6,s1,s2
bfc01398:	0275f826 	xor	ra,s3,s5
bfc0139c:	028cc826 	xor	t9,s4,t4
bfc013a0:	27180018 	addiu	t8,t8,24
bfc013a4:	add90040 	sw	t9,64(t6)
bfc013a8:	add60038 	sw	s6,56(t6)
bfc013ac:	1717ffd5 	bne	t8,s7,bfc01304 <sha_stream+0x374>
bfc013b0:	addf003c 	sw	ra,60(t6)
bfc013b4:	8fb20140 	lw	s2,320(sp)
bfc013b8:	8fb3010c 	lw	s3,268(sp)
bfc013bc:	8fb50114 	lw	s5,276(sp)
bfc013c0:	02721026 	xor	v0,s3,s2
bfc013c4:	8fb4012c 	lw	s4,300(sp)
bfc013c8:	0055b826 	xor	s7,v0,s5
bfc013cc:	02f4b026 	xor	s6,s7,s4
bfc013d0:	afb6014c 	sw	s6,332(sp)
bfc013d4:	8fd30004 	lw	s3,4(s8)
bfc013d8:	8fd40000 	lw	s4,0(s8)
bfc013dc:	3c0c5a82 	lui	t4,0x5a82
bfc013e0:	8fa30010 	lw	v1,16(sp)
bfc013e4:	358e7999 	ori	t6,t4,0x7999
bfc013e8:	8fd50008 	lw	s5,8(s8)
bfc013ec:	8fd6000c 	lw	s6,12(s8)
bfc013f0:	8fd70010 	lw	s7,16(s8)
bfc013f4:	006e4021 	addu	t0,v1,t6
bfc013f8:	00132827 	nor	a1,zero,s3
bfc013fc:	001436c2 	srl	a2,s4,0x1b
bfc01400:	00143940 	sll	a3,s4,0x5
bfc01404:	00b64824 	and	t1,a1,s6
bfc01408:	01175821 	addu	t3,t0,s7
bfc0140c:	00c72025 	or	a0,a2,a3
bfc01410:	02b35024 	and	t2,s5,s3
bfc01414:	012af825 	or	ra,t1,t2
bfc01418:	0164c821 	addu	t9,t3,a0
bfc0141c:	00138082 	srl	s0,s3,0x2
bfc01420:	00136f80 	sll	t5,s3,0x1e
bfc01424:	27b80010 	addiu	t8,sp,16
bfc01428:	033f5821 	addu	t3,t9,ra
bfc0142c:	01b07825 	or	t7,t5,s0
bfc01430:	270c0004 	addiu	t4,t8,4
bfc01434:	02804821 	move	t1,s4
bfc01438:	02c09021 	move	s2,s6
bfc0143c:	0bf0051e 	j	bfc01478 <sha_stream+0x4e8>
bfc01440:	02a07021 	move	t6,s5
	...
bfc01450:	8d8a0004 	lw	t2,4(t4)
bfc01454:	3c195a82 	lui	t9,0x5a82
bfc01458:	37387999 	ori	t8,t9,0x7999
bfc0145c:	01582821 	addu	a1,t2,t8
bfc01460:	00ae5821 	addu	t3,a1,t6
bfc01464:	01637021 	addu	t6,t3,v1
bfc01468:	01c65821 	addu	t3,t6,a2
bfc0146c:	02307825 	or	t7,s1,s0
bfc01470:	258c0008 	addiu	t4,t4,8
bfc01474:	01a07021 	move	t6,t5
bfc01478:	8d9f0000 	lw	ra,0(t4)
bfc0147c:	3c075a82 	lui	a3,0x5a82
bfc01480:	34e87999 	ori	t0,a3,0x7999
bfc01484:	03e81021 	addu	v0,ra,t0
bfc01488:	00098827 	nor	s1,zero,t1
bfc0148c:	000b86c2 	srl	s0,t3,0x1b
bfc01490:	000b2140 	sll	a0,t3,0x5
bfc01494:	00525021 	addu	t2,v0,s2
bfc01498:	022ec024 	and	t8,s1,t6
bfc0149c:	02049025 	or	s2,s0,a0
bfc014a0:	01e9c824 	and	t9,t7,t1
bfc014a4:	03192825 	or	a1,t8,t9
bfc014a8:	01521821 	addu	v1,t2,s2
bfc014ac:	00655021 	addu	t2,v1,a1
bfc014b0:	00093f80 	sll	a3,t1,0x1e
bfc014b4:	00094082 	srl	t0,t1,0x2
bfc014b8:	000a6ec2 	srl	t5,t2,0x1b
bfc014bc:	000a4940 	sll	t1,t2,0x5
bfc014c0:	000b3027 	nor	a2,zero,t3
bfc014c4:	01a91825 	or	v1,t5,t1
bfc014c8:	8fb80378 	lw	t8,888(sp)
bfc014cc:	00e86825 	or	t5,a3,t0
bfc014d0:	00cff824 	and	ra,a2,t7
bfc014d4:	01ab2024 	and	a0,t5,t3
bfc014d8:	25990004 	addiu	t9,t4,4
bfc014dc:	000b8f80 	sll	s1,t3,0x1e
bfc014e0:	000b8082 	srl	s0,t3,0x2
bfc014e4:	01e09021 	move	s2,t7
bfc014e8:	01404821 	move	t1,t2
bfc014ec:	1719ffd8 	bne	t8,t9,bfc01450 <sha_stream+0x4c0>
bfc014f0:	03e43025 	or	a2,ra,a0
bfc014f4:	8fb00060 	lw	s0,96(sp)
bfc014f8:	3c056ed9 	lui	a1,0x6ed9
bfc014fc:	34a3eba1 	ori	v1,a1,0xeba1
bfc01500:	000a8ec2 	srl	s1,t2,0x1b
bfc01504:	000a2140 	sll	a0,t2,0x5
bfc01508:	02031021 	addu	v0,s0,v1
bfc0150c:	01abc826 	xor	t9,t5,t3
bfc01510:	004e3021 	addu	a2,v0,t6
bfc01514:	0224f825 	or	ra,s1,a0
bfc01518:	000b4082 	srl	t0,t3,0x2
bfc0151c:	032fc026 	xor	t8,t9,t7
bfc01520:	000b4f80 	sll	t1,t3,0x1e
bfc01524:	00df3821 	addu	a3,a2,ra
bfc01528:	01e07021 	move	t6,t7
bfc0152c:	01405821 	move	t3,t2
bfc01530:	01a07821 	move	t7,t5
bfc01534:	00f85021 	addu	t2,a3,t8
bfc01538:	01286825 	or	t5,t1,t0
bfc0153c:	0bf0055e 	j	bfc01578 <sha_stream+0x5e8>
bfc01540:	25880008 	addiu	t0,t4,8
	...
bfc01550:	8d060004 	lw	a2,4(t0)
bfc01554:	3c096ed9 	lui	t1,0x6ed9
bfc01558:	3525eba1 	ori	a1,t1,0xeba1
bfc0155c:	00c53821 	addu	a3,a2,a1
bfc01560:	00ef5021 	addu	t2,a3,t7
bfc01564:	01437821 	addu	t7,t2,v1
bfc01568:	01e45021 	addu	t2,t7,a0
bfc0156c:	02306825 	or	t5,s1,s0
bfc01570:	25080008 	addiu	t0,t0,8
bfc01574:	01807821 	move	t7,t4
bfc01578:	8d120000 	lw	s2,0(t0)
bfc0157c:	3c026ed9 	lui	v0,0x6ed9
bfc01580:	345feba1 	ori	ra,v0,0xeba1
bfc01584:	025fc821 	addu	t9,s2,ra
bfc01588:	000a8ec2 	srl	s1,t2,0x1b
bfc0158c:	000a8140 	sll	s0,t2,0x5
bfc01590:	01ab4826 	xor	t1,t5,t3
bfc01594:	032ec021 	addu	t8,t9,t6
bfc01598:	02307025 	or	t6,s1,s0
bfc0159c:	030e2821 	addu	a1,t8,t6
bfc015a0:	012f1826 	xor	v1,t1,t7
bfc015a4:	00a34821 	addu	t1,a1,v1
bfc015a8:	000b3780 	sll	a2,t3,0x1e
bfc015ac:	000b3882 	srl	a3,t3,0x2
bfc015b0:	000966c2 	srl	t4,t1,0x1b
bfc015b4:	00092140 	sll	a0,t1,0x5
bfc015b8:	01841825 	or	v1,t4,a0
bfc015bc:	8fb2037c 	lw	s2,892(sp)
bfc015c0:	00c76025 	or	t4,a2,a3
bfc015c4:	018a1026 	xor	v0,t4,t2
bfc015c8:	251f0004 	addiu	ra,t0,4
bfc015cc:	000a8f80 	sll	s1,t2,0x1e
bfc015d0:	000a8082 	srl	s0,t2,0x2
bfc015d4:	01a07021 	move	t6,t5
bfc015d8:	01205821 	move	t3,t1
bfc015dc:	165fffdc 	bne	s2,ra,bfc01550 <sha_stream+0x5c0>
bfc015e0:	004d2026 	xor	a0,v0,t5
bfc015e4:	3c0e8f1b 	lui	t6,0x8f1b
bfc015e8:	8fa500b0 	lw	a1,176(sp)
bfc015ec:	35d2bcdc 	ori	s2,t6,0xbcdc
bfc015f0:	01ac8825 	or	s1,t5,t4
bfc015f4:	000926c2 	srl	a0,t1,0x1b
bfc015f8:	00098140 	sll	s0,t1,0x5
bfc015fc:	00b21821 	addu	v1,a1,s2
bfc01600:	01ac1024 	and	v0,t5,t4
bfc01604:	006f3021 	addu	a2,v1,t7
bfc01608:	022af824 	and	ra,s1,t2
bfc0160c:	00907825 	or	t7,a0,s0
bfc01610:	00cfc021 	addu	t8,a2,t7
bfc01614:	000a3f80 	sll	a3,t2,0x1e
bfc01618:	000a5882 	srl	t3,t2,0x2
bfc0161c:	03e2c825 	or	t9,ra,v0
bfc01620:	01a07821 	move	t7,t5
bfc01624:	01205021 	move	t2,t1
bfc01628:	01806821 	move	t5,t4
bfc0162c:	03194821 	addu	t1,t8,t9
bfc01630:	00eb6025 	or	t4,a3,t3
bfc01634:	0bf0059a 	j	bfc01668 <sha_stream+0x6d8>
bfc01638:	250e0008 	addiu	t6,t0,8
bfc0163c:	00000000 	nop
bfc01640:	8dc60004 	lw	a2,4(t6)
bfc01644:	3c188f1b 	lui	t8,0x8f1b
bfc01648:	3708bcdc 	ori	t0,t8,0xbcdc
bfc0164c:	00c81021 	addu	v0,a2,t0
bfc01650:	004d4821 	addu	t1,v0,t5
bfc01654:	01256821 	addu	t5,t1,a1
bfc01658:	01a34821 	addu	t1,t5,v1
bfc0165c:	02306025 	or	t4,s1,s0
bfc01660:	25ce0008 	addiu	t6,t6,8
bfc01664:	01606821 	move	t5,t3
bfc01668:	8dd20000 	lw	s2,0(t6)
bfc0166c:	3c078f1b 	lui	a3,0x8f1b
bfc01670:	34ffbcdc 	ori	ra,a3,0xbcdc
bfc01674:	025fc821 	addu	t9,s2,ra
bfc01678:	01ac8825 	or	s1,t5,t4
bfc0167c:	000986c2 	srl	s0,t1,0x1b
bfc01680:	00092140 	sll	a0,t1,0x5
bfc01684:	032f4021 	addu	t0,t9,t7
bfc01688:	022ac024 	and	t8,s1,t2
bfc0168c:	02047825 	or	t7,s0,a0
bfc01690:	01ac1824 	and	v1,t5,t4
bfc01694:	03032825 	or	a1,t8,v1
bfc01698:	010f3021 	addu	a2,t0,t7
bfc0169c:	00c54021 	addu	t0,a2,a1
bfc016a0:	000a3f80 	sll	a3,t2,0x1e
bfc016a4:	000af882 	srl	ra,t2,0x2
bfc016a8:	00085940 	sll	t3,t0,0x5
bfc016ac:	000816c2 	srl	v0,t0,0x1b
bfc016b0:	004b2825 	or	a1,v0,t3
bfc016b4:	00ff5825 	or	t3,a3,ra
bfc016b8:	018b9025 	or	s2,t4,t3
bfc016bc:	8fa40380 	lw	a0,896(sp)
bfc016c0:	0249c824 	and	t9,s2,t1
bfc016c4:	018b1824 	and	v1,t4,t3
bfc016c8:	25d80004 	addiu	t8,t6,4
bfc016cc:	00098f80 	sll	s1,t1,0x1e
bfc016d0:	00098082 	srl	s0,t1,0x2
bfc016d4:	01807821 	move	t7,t4
bfc016d8:	01005021 	move	t2,t0
bfc016dc:	1498ffd8 	bne	a0,t8,bfc01640 <sha_stream+0x6b0>
bfc016e0:	03231825 	or	v1,t9,v1
bfc016e4:	8faa0100 	lw	t2,256(sp)
bfc016e8:	3c0eca62 	lui	t6,0xca62
bfc016ec:	35d2c1d6 	ori	s2,t6,0xc1d6
bfc016f0:	00088ec2 	srl	s1,t0,0x1b
bfc016f4:	01522821 	addu	a1,t2,s2
bfc016f8:	00088140 	sll	s0,t0,0x5
bfc016fc:	01692026 	xor	a0,t3,t1
bfc01700:	00adf821 	addu	ra,a1,t5
bfc01704:	02301825 	or	v1,s1,s0
bfc01708:	008c3026 	xor	a2,a0,t4
bfc0170c:	0009cf80 	sll	t9,t1,0x1e
bfc01710:	0009c082 	srl	t8,t1,0x2
bfc01714:	03e31021 	addu	v0,ra,v1
bfc01718:	01806821 	move	t5,t4
bfc0171c:	01004821 	move	t1,t0
bfc01720:	01606021 	move	t4,t3
bfc01724:	00464021 	addu	t0,v0,a2
bfc01728:	03385825 	or	t3,t9,t8
bfc0172c:	0bf005da 	j	bfc01768 <sha_stream+0x7d8>
bfc01730:	27aa0104 	addiu	t2,sp,260
	...
bfc01740:	8d5f0004 	lw	ra,4(t2)
bfc01744:	3c07ca62 	lui	a3,0xca62
bfc01748:	34e4c1d6 	ori	a0,a3,0xc1d6
bfc0174c:	03e49021 	addu	s2,ra,a0
bfc01750:	024c4021 	addu	t0,s2,t4
bfc01754:	01036021 	addu	t4,t0,v1
bfc01758:	01854021 	addu	t0,t4,a1
bfc0175c:	01ee5825 	or	t3,t7,t6
bfc01760:	254a0008 	addiu	t2,t2,8
bfc01764:	00c06021 	move	t4,a2
bfc01768:	8d510000 	lw	s1,0(t2)
bfc0176c:	3c19ca62 	lui	t9,0xca62
bfc01770:	3730c1d6 	ori	s0,t9,0xc1d6
bfc01774:	0230c021 	addu	t8,s1,s0
bfc01778:	000876c2 	srl	t6,t0,0x1b
bfc0177c:	00087940 	sll	t7,t0,0x5
bfc01780:	01cf3025 	or	a2,t6,t7
bfc01784:	030d1021 	addu	v0,t8,t5
bfc01788:	01696826 	xor	t5,t3,t1
bfc0178c:	00092882 	srl	a1,t1,0x2
bfc01790:	00463821 	addu	a3,v0,a2
bfc01794:	01ac2026 	xor	a0,t5,t4
bfc01798:	00099780 	sll	s2,t1,0x1e
bfc0179c:	00e42021 	addu	a0,a3,a0
bfc017a0:	02453025 	or	a2,s2,a1
bfc017a4:	8fb10384 	lw	s1,900(sp)
bfc017a8:	00041ec2 	srl	v1,a0,0x1b
bfc017ac:	0004f940 	sll	ra,a0,0x5
bfc017b0:	00c8c826 	xor	t9,a2,t0
bfc017b4:	25500004 	addiu	s0,t2,4
bfc017b8:	00087f80 	sll	t7,t0,0x1e
bfc017bc:	00087082 	srl	t6,t0,0x2
bfc017c0:	01606821 	move	t5,t3
bfc017c4:	007f1825 	or	v1,v1,ra
bfc017c8:	00804821 	move	t1,a0
bfc017cc:	1630ffdc 	bne	s1,s0,bfc01740 <sha_stream+0x7b0>
bfc017d0:	032b2826 	xor	a1,t9,t3
bfc017d4:	8fa90368 	lw	t1,872(sp)
bfc017d8:	00942821 	addu	a1,a0,s4
bfc017dc:	02685021 	addu	t2,s3,t0
bfc017e0:	02eca021 	addu	s4,s7,t4
bfc017e4:	02a69821 	addu	s3,s5,a2
bfc017e8:	8fb7035c 	lw	s7,860(sp)
bfc017ec:	02cba821 	addu	s5,s6,t3
bfc017f0:	27ab0150 	addiu	t3,sp,336
bfc017f4:	0169b021 	addu	s6,t3,t1
bfc017f8:	afc50000 	sw	a1,0(s8)
bfc017fc:	afca0004 	sw	t2,4(s8)
bfc01800:	afd30008 	sw	s3,8(s8)
bfc01804:	afd5000c 	sw	s5,12(s8)
bfc01808:	16f6fe34 	bne	s7,s6,bfc010dc <sha_stream+0x14c>
bfc0180c:	afd40010 	sw	s4,16(s8)
bfc01810:	8fa20364 	lw	v0,868(sp)
bfc01814:	8fa30360 	lw	v1,864(sp)
bfc01818:	00026980 	sll	t5,v0,0x6
bfc0181c:	006d8823 	subu	s1,v1,t5
bfc01820:	8fa40358 	lw	a0,856(sp)
bfc01824:	02203021 	move	a2,s1
bfc01828:	0ff00b80 	jal	bfc02e00 <memcpy>
bfc0182c:	02e02821 	move	a1,s7
bfc01830:	8fa703b4 	lw	a3,948(sp)
bfc01834:	27a40150 	addiu	a0,sp,336
bfc01838:	24050001 	li	a1,1
bfc0183c:	0ff0099d 	jal	bfc02674 <fread>
bfc01840:	24060200 	li	a2,512
bfc01844:	00408021 	move	s0,v0
bfc01848:	1c40fe0b 	bgtz	v0,bfc01078 <sha_stream+0xe8>
bfc0184c:	00408821 	move	s1,v0
bfc01850:	8fd90014 	lw	t9,20(s8)
bfc01854:	8fb10358 	lw	s1,856(sp)
bfc01858:	001980c2 	srl	s0,t9,0x3
bfc0185c:	3218003f 	andi	t8,s0,0x3f
bfc01860:	8fcf0018 	lw	t7,24(s8)
bfc01864:	27050001 	addiu	a1,t8,1
bfc01868:	02387021 	addu	t6,s1,t8
bfc0186c:	2406ff80 	li	a2,-128
bfc01870:	28b70039 	slti	s7,a1,57
bfc01874:	afb90354 	sw	t9,852(sp)
bfc01878:	afaf0350 	sw	t7,848(sp)
bfc0187c:	12e00192 	beqz	s7,bfc01ec8 <sha_stream+0xf38>
bfc01880:	a1c60000 	sb	a2,0(t6)
bfc01884:	8fb80358 	lw	t8,856(sp)
bfc01888:	24170038 	li	s7,56
bfc0188c:	02e53023 	subu	a2,s7,a1
bfc01890:	03052021 	addu	a0,t8,a1
bfc01894:	0ff00b75 	jal	bfc02dd4 <memset>
bfc01898:	00002821 	move	a1,zero
bfc0189c:	8fb90370 	lw	t9,880(sp)
bfc018a0:	8fbf0374 	lw	ra,884(sp)
bfc018a4:	8fcb0024 	lw	t3,36(s8)
bfc018a8:	8fcc0020 	lw	t4,32(s8)
bfc018ac:	8fcd002c 	lw	t5,44(s8)
bfc018b0:	8fce003c 	lw	t6,60(s8)
bfc018b4:	8fcf0040 	lw	t7,64(s8)
bfc018b8:	8fd0001c 	lw	s0,28(s8)
bfc018bc:	8fd10028 	lw	s1,40(s8)
bfc018c0:	8fd20044 	lw	s2,68(s8)
bfc018c4:	8fd30050 	lw	s3,80(s8)
bfc018c8:	8fc60030 	lw	a2,48(s8)
bfc018cc:	8fc70034 	lw	a3,52(s8)
bfc018d0:	8fc80038 	lw	t0,56(s8)
bfc018d4:	8fd80048 	lw	t8,72(s8)
bfc018d8:	8fca004c 	lw	t2,76(s8)
bfc018dc:	033fb023 	subu	s6,t9,ra
bfc018e0:	8fbf0350 	lw	ra,848(sp)
bfc018e4:	8fb90354 	lw	t9,852(sp)
bfc018e8:	01ec4826 	xor	t1,t7,t4
bfc018ec:	01aba826 	xor	s5,t5,t3
bfc018f0:	016e2826 	xor	a1,t3,t6
bfc018f4:	0131b826 	xor	s7,t1,s1
bfc018f8:	26d4fff4 	addiu	s4,s6,-12
bfc018fc:	afa60024 	sw	a2,36(sp)
bfc01900:	afa70028 	sw	a3,40(sp)
bfc01904:	afa8002c 	sw	t0,44(sp)
bfc01908:	afb8003c 	sw	t8,60(sp)
bfc0190c:	afaa0040 	sw	t2,64(sp)
bfc01910:	00b01026 	xor	v0,a1,s0
bfc01914:	afdf0054 	sw	ra,84(s8)
bfc01918:	afd90058 	sw	t9,88(s8)
bfc0191c:	02b22026 	xor	a0,s5,s2
bfc01920:	27a30018 	addiu	v1,sp,24
bfc01924:	afb00010 	sw	s0,16(sp)
bfc01928:	afac0014 	sw	t4,20(sp)
bfc0192c:	afab0018 	sw	t3,24(sp)
bfc01930:	afb1001c 	sw	s1,28(sp)
bfc01934:	afad0020 	sw	t5,32(sp)
bfc01938:	afae0030 	sw	t6,48(sp)
bfc0193c:	afaf0034 	sw	t7,52(sp)
bfc01940:	afb20038 	sw	s2,56(sp)
bfc01944:	afb30044 	sw	s3,68(sp)
bfc01948:	8fa90370 	lw	t1,880(sp)
bfc0194c:	03f7b026 	xor	s6,ra,s7
bfc01950:	00142882 	srl	a1,s4,0x2
bfc01954:	0262a826 	xor	s5,s3,v0
bfc01958:	0324b826 	xor	s7,t9,a0
bfc0195c:	2474000c 	addiu	s4,v1,12
bfc01960:	afbf0048 	sw	ra,72(sp)
bfc01964:	afb9004c 	sw	t9,76(sp)
bfc01968:	afb50050 	sw	s5,80(sp)
bfc0196c:	30a50001 	andi	a1,a1,0x1
bfc01970:	afb60054 	sw	s6,84(sp)
bfc01974:	12890047 	beq	s4,t1,bfc01a94 <sha_stream+0xb04>
bfc01978:	afb70058 	sw	s7,88(sp)
bfc0197c:	10a00019 	beqz	a1,bfc019e4 <sha_stream+0xa54>
bfc01980:	27a90018 	addiu	t1,sp,24
bfc01984:	8fa20024 	lw	v0,36(sp)
bfc01988:	8e860018 	lw	a2,24(s4)
bfc0198c:	8e84001c 	lw	a0,28(s4)
bfc01990:	8e8cfffc 	lw	t4,-4(s4)
bfc01994:	8e830008 	lw	v1,8(s4)
bfc01998:	8e87fff8 	lw	a3,-8(s4)
bfc0199c:	8e8e0004 	lw	t6,4(s4)
bfc019a0:	8e920020 	lw	s2,32(s4)
bfc019a4:	008c6826 	xor	t5,a0,t4
bfc019a8:	00625026 	xor	t2,v1,v0
bfc019ac:	00467826 	xor	t7,v0,a2
bfc019b0:	01e7c826 	xor	t9,t7,a3
bfc019b4:	01ae2826 	xor	a1,t5,t6
bfc019b8:	01525826 	xor	t3,t2,s2
bfc019bc:	02b9a826 	xor	s5,s5,t9
bfc019c0:	02c5b026 	xor	s6,s6,a1
bfc019c4:	02ebb826 	xor	s7,s7,t3
bfc019c8:	8fb80370 	lw	t8,880(sp)
bfc019cc:	ae970040 	sw	s7,64(s4)
bfc019d0:	ae950038 	sw	s5,56(s4)
bfc019d4:	ae96003c 	sw	s6,60(s4)
bfc019d8:	25340018 	addiu	s4,t1,24
bfc019dc:	1298002d 	beq	s4,t8,bfc01a94 <sha_stream+0xb04>
bfc019e0:	00000000 	nop
bfc019e4:	8e8b0000 	lw	t3,0(s4)
bfc019e8:	8e900018 	lw	s0,24(s4)
bfc019ec:	8e98001c 	lw	t8,28(s4)
bfc019f0:	8e84fffc 	lw	a0,-4(s4)
bfc019f4:	8e8a0008 	lw	t2,8(s4)
bfc019f8:	8e91fff8 	lw	s1,-8(s4)
bfc019fc:	8e8f0004 	lw	t7,4(s4)
bfc01a00:	8e930020 	lw	s3,32(s4)
bfc01a04:	03049026 	xor	s2,t8,a0
bfc01a08:	01707026 	xor	t6,t3,s0
bfc01a0c:	014bf826 	xor	ra,t2,t3
bfc01a10:	01d12826 	xor	a1,t6,s1
bfc01a14:	024f4026 	xor	t0,s2,t7
bfc01a18:	03f33026 	xor	a2,ra,s3
bfc01a1c:	02a5c026 	xor	t8,s5,a1
bfc01a20:	02c88026 	xor	s0,s6,t0
bfc01a24:	02e68826 	xor	s1,s7,a2
bfc01a28:	ae980038 	sw	t8,56(s4)
bfc01a2c:	ae90003c 	sw	s0,60(s4)
bfc01a30:	ae910040 	sw	s1,64(s4)
bfc01a34:	268f000c 	addiu	t7,s4,12
bfc01a38:	8e82000c 	lw	v0,12(s4)
bfc01a3c:	8df60018 	lw	s6,24(t7)
bfc01a40:	8df50008 	lw	s5,8(t7)
bfc01a44:	8df9001c 	lw	t9,28(t7)
bfc01a48:	8de9fffc 	lw	t1,-4(t7)
bfc01a4c:	8df7fff8 	lw	s7,-8(t7)
bfc01a50:	8dec0004 	lw	t4,4(t7)
bfc01a54:	8ded0020 	lw	t5,32(t7)
bfc01a58:	02a22026 	xor	a0,s5,v0
bfc01a5c:	00561826 	xor	v1,v0,s6
bfc01a60:	03293826 	xor	a3,t9,t1
bfc01a64:	00775026 	xor	t2,v1,s7
bfc01a68:	00ec5826 	xor	t3,a3,t4
bfc01a6c:	008d7026 	xor	t6,a0,t5
bfc01a70:	8fb20370 	lw	s2,880(sp)
bfc01a74:	030aa826 	xor	s5,t8,t2
bfc01a78:	020bb026 	xor	s6,s0,t3
bfc01a7c:	022eb826 	xor	s7,s1,t6
bfc01a80:	26940018 	addiu	s4,s4,24
bfc01a84:	adf70040 	sw	s7,64(t7)
bfc01a88:	adf50038 	sw	s5,56(t7)
bfc01a8c:	1692ffd5 	bne	s4,s2,bfc019e4 <sha_stream+0xa54>
bfc01a90:	adf6003c 	sw	s6,60(t7)
bfc01a94:	8fab010c 	lw	t3,268(sp)
bfc01a98:	8fb10114 	lw	s1,276(sp)
bfc01a9c:	8fae012c 	lw	t6,300(sp)
bfc01aa0:	022b9826 	xor	s3,s1,t3
bfc01aa4:	8fb50140 	lw	s5,320(sp)
bfc01aa8:	026eb026 	xor	s6,s3,t6
bfc01aac:	02d5a026 	xor	s4,s6,s5
bfc01ab0:	afb4014c 	sw	s4,332(sp)
bfc01ab4:	8fd50004 	lw	s5,4(s8)
bfc01ab8:	8fd30000 	lw	s3,0(s8)
bfc01abc:	3c175a82 	lui	s7,0x5a82
bfc01ac0:	8faf0010 	lw	t7,16(sp)
bfc01ac4:	36f47999 	ori	s4,s7,0x7999
bfc01ac8:	8fd60008 	lw	s6,8(s8)
bfc01acc:	8fd7000c 	lw	s7,12(s8)
bfc01ad0:	8fd80010 	lw	t8,16(s8)
bfc01ad4:	01f44021 	addu	t0,t7,s4
bfc01ad8:	00139140 	sll	s2,s3,0x5
bfc01adc:	00152827 	nor	a1,zero,s5
bfc01ae0:	0013fec2 	srl	ra,s3,0x1b
bfc01ae4:	03f24825 	or	t1,ra,s2
bfc01ae8:	00b73024 	and	a2,a1,s7
bfc01aec:	01181021 	addu	v0,t0,t8
bfc01af0:	02d51824 	and	v1,s6,s5
bfc01af4:	00496021 	addu	t4,v0,t1
bfc01af8:	00c3c825 	or	t9,a2,v1
bfc01afc:	00153882 	srl	a3,s5,0x2
bfc01b00:	00156f80 	sll	t5,s5,0x1e
bfc01b04:	01994821 	addu	t1,t4,t9
bfc01b08:	01a77825 	or	t7,t5,a3
bfc01b0c:	27ac0014 	addiu	t4,sp,20
bfc01b10:	02605021 	move	t2,s3
bfc01b14:	02e09021 	move	s2,s7
bfc01b18:	0bf006d0 	j	bfc01b40 <sha_stream+0xbb0>
bfc01b1c:	02c07021 	move	t6,s6
bfc01b20:	8d820004 	lw	v0,4(t4)
bfc01b24:	02307825 	or	t7,s1,s0
bfc01b28:	00542821 	addu	a1,v0,s4
bfc01b2c:	00ae4821 	addu	t1,a1,t6
bfc01b30:	01237021 	addu	t6,t1,v1
bfc01b34:	01c64821 	addu	t1,t6,a2
bfc01b38:	258c0008 	addiu	t4,t4,8
bfc01b3c:	01a07021 	move	t6,t5
bfc01b40:	8d880000 	lw	t0,0(t4)
bfc01b44:	000a8027 	nor	s0,zero,t2
bfc01b48:	01143821 	addu	a3,t0,s4
bfc01b4c:	00098ec2 	srl	s1,t1,0x1b
bfc01b50:	0009c940 	sll	t9,t1,0x5
bfc01b54:	00f25821 	addu	t3,a3,s2
bfc01b58:	020e2024 	and	a0,s0,t6
bfc01b5c:	02399025 	or	s2,s1,t9
bfc01b60:	01ea1824 	and	v1,t7,t2
bfc01b64:	0083f825 	or	ra,a0,v1
bfc01b68:	01721021 	addu	v0,t3,s2
bfc01b6c:	005f5821 	addu	t3,v0,ra
bfc01b70:	000a2f80 	sll	a1,t2,0x1e
bfc01b74:	000a4082 	srl	t0,t2,0x2
bfc01b78:	000b6940 	sll	t5,t3,0x5
bfc01b7c:	000b56c2 	srl	t2,t3,0x1b
bfc01b80:	014d1825 	or	v1,t2,t5
bfc01b84:	00093027 	nor	a2,zero,t1
bfc01b88:	00a86825 	or	t5,a1,t0
bfc01b8c:	8fa40378 	lw	a0,888(sp)
bfc01b90:	00cf3024 	and	a2,a2,t7
bfc01b94:	01a93824 	and	a3,t5,t1
bfc01b98:	25990004 	addiu	t9,t4,4
bfc01b9c:	00098f80 	sll	s1,t1,0x1e
bfc01ba0:	00098082 	srl	s0,t1,0x2
bfc01ba4:	01e09021 	move	s2,t7
bfc01ba8:	01605021 	move	t2,t3
bfc01bac:	1499ffdc 	bne	a0,t9,bfc01b20 <sha_stream+0xb90>
bfc01bb0:	00c73025 	or	a2,a2,a3
bfc01bb4:	3c086ed9 	lui	t0,0x6ed9
bfc01bb8:	8fa60060 	lw	a2,96(sp)
bfc01bbc:	3512eba1 	ori	s2,t0,0xeba1
bfc01bc0:	000b8ec2 	srl	s1,t3,0x1b
bfc01bc4:	000bc940 	sll	t9,t3,0x5
bfc01bc8:	00d23821 	addu	a3,a2,s2
bfc01bcc:	01a92026 	xor	a0,t5,t1
bfc01bd0:	00ee8021 	addu	s0,a3,t6
bfc01bd4:	02391825 	or	v1,s1,t9
bfc01bd8:	008ff826 	xor	ra,a0,t7
bfc01bdc:	0009a780 	sll	s4,t1,0x1e
bfc01be0:	00096082 	srl	t4,t1,0x2
bfc01be4:	02035021 	addu	t2,s0,v1
bfc01be8:	01e07021 	move	t6,t7
bfc01bec:	01604821 	move	t1,t3
bfc01bf0:	01a07821 	move	t7,t5
bfc01bf4:	015f5821 	addu	t3,t2,ra
bfc01bf8:	028c6825 	or	t5,s4,t4
bfc01bfc:	0bf00709 	j	bfc01c24 <sha_stream+0xc94>
bfc01c00:	27a80064 	addiu	t0,sp,100
bfc01c04:	8d020004 	lw	v0,4(t0)
bfc01c08:	02306825 	or	t5,s1,s0
bfc01c0c:	0052a021 	addu	s4,v0,s2
bfc01c10:	028f5821 	addu	t3,s4,t7
bfc01c14:	01637821 	addu	t7,t3,v1
bfc01c18:	01e45821 	addu	t3,t7,a0
bfc01c1c:	25080008 	addiu	t0,t0,8
bfc01c20:	01807821 	move	t7,t4
bfc01c24:	8d050000 	lw	a1,0(t0)
bfc01c28:	000b86c2 	srl	s0,t3,0x1b
bfc01c2c:	00b23021 	addu	a2,a1,s2
bfc01c30:	000b8940 	sll	s1,t3,0x5
bfc01c34:	02111825 	or	v1,s0,s1
bfc01c38:	00ce5021 	addu	t2,a2,t6
bfc01c3c:	01a97026 	xor	t6,t5,t1
bfc01c40:	01cf2026 	xor	a0,t6,t7
bfc01c44:	01433821 	addu	a3,t2,v1
bfc01c48:	00e45021 	addu	t2,a3,a0
bfc01c4c:	0009ff80 	sll	ra,t1,0x1e
bfc01c50:	0009c882 	srl	t9,t1,0x2
bfc01c54:	000a6140 	sll	t4,t2,0x5
bfc01c58:	000a4ec2 	srl	t1,t2,0x1b
bfc01c5c:	012c1825 	or	v1,t1,t4
bfc01c60:	8fa5037c 	lw	a1,892(sp)
bfc01c64:	03f96025 	or	t4,ra,t9
bfc01c68:	018b1026 	xor	v0,t4,t3
bfc01c6c:	25140004 	addiu	s4,t0,4
bfc01c70:	000b8f80 	sll	s1,t3,0x1e
bfc01c74:	000b8082 	srl	s0,t3,0x2
bfc01c78:	01a07021 	move	t6,t5
bfc01c7c:	01404821 	move	t1,t2
bfc01c80:	14b4ffe0 	bne	a1,s4,bfc01c04 <sha_stream+0xc74>
bfc01c84:	004d2026 	xor	a0,v0,t5
bfc01c88:	3c028f1b 	lui	v0,0x8f1b
bfc01c8c:	8fb400b0 	lw	s4,176(sp)
bfc01c90:	3451bcdc 	ori	s1,v0,0xbcdc
bfc01c94:	01ac3025 	or	a2,t5,t4
bfc01c98:	000a26c2 	srl	a0,t2,0x1b
bfc01c9c:	000a2940 	sll	a1,t2,0x5
bfc01ca0:	02911821 	addu	v1,s4,s1
bfc01ca4:	00cb7024 	and	t6,a2,t3
bfc01ca8:	01ac8024 	and	s0,t5,t4
bfc01cac:	006f4821 	addu	t1,v1,t7
bfc01cb0:	00853825 	or	a3,a0,a1
bfc01cb4:	01d0c825 	or	t9,t6,s0
bfc01cb8:	000b4780 	sll	t0,t3,0x1e
bfc01cbc:	000b9082 	srl	s2,t3,0x2
bfc01cc0:	0127f821 	addu	ra,t1,a3
bfc01cc4:	01a07821 	move	t7,t5
bfc01cc8:	01405821 	move	t3,t2
bfc01ccc:	01806821 	move	t5,t4
bfc01cd0:	03f95021 	addu	t2,ra,t9
bfc01cd4:	01126025 	or	t4,t0,s2
bfc01cd8:	0bf00740 	j	bfc01d00 <sha_stream+0xd70>
bfc01cdc:	27ae00b4 	addiu	t6,sp,180
bfc01ce0:	8ddf0004 	lw	ra,4(t6)
bfc01ce4:	02506025 	or	t4,s2,s0
bfc01ce8:	03f1a021 	addu	s4,ra,s1
bfc01cec:	028d5021 	addu	t2,s4,t5
bfc01cf0:	01456821 	addu	t5,t2,a1
bfc01cf4:	01a35021 	addu	t2,t5,v1
bfc01cf8:	25ce0008 	addiu	t6,t6,8
bfc01cfc:	01206821 	move	t5,t1
bfc01d00:	8dc40000 	lw	a0,0(t6)
bfc01d04:	01ac9025 	or	s2,t5,t4
bfc01d08:	00911021 	addu	v0,a0,s1
bfc01d0c:	000a86c2 	srl	s0,t2,0x1b
bfc01d10:	000a3140 	sll	a2,t2,0x5
bfc01d14:	024bc824 	and	t9,s2,t3
bfc01d18:	004f4021 	addu	t0,v0,t7
bfc01d1c:	01ac3824 	and	a3,t5,t4
bfc01d20:	02067825 	or	t7,s0,a2
bfc01d24:	03272825 	or	a1,t9,a3
bfc01d28:	010f1821 	addu	v1,t0,t7
bfc01d2c:	00654021 	addu	t0,v1,a1
bfc01d30:	000bff80 	sll	ra,t3,0x1e
bfc01d34:	000ba082 	srl	s4,t3,0x2
bfc01d38:	00084ec2 	srl	t1,t0,0x1b
bfc01d3c:	00085940 	sll	t3,t0,0x5
bfc01d40:	012b2825 	or	a1,t1,t3
bfc01d44:	03f44825 	or	t1,ra,s4
bfc01d48:	01892025 	or	a0,t4,t1
bfc01d4c:	8fbf0380 	lw	ra,896(sp)
bfc01d50:	008a3024 	and	a2,a0,t2
bfc01d54:	01893824 	and	a3,t4,t1
bfc01d58:	25d90004 	addiu	t9,t6,4
bfc01d5c:	000a9780 	sll	s2,t2,0x1e
bfc01d60:	000a8082 	srl	s0,t2,0x2
bfc01d64:	01807821 	move	t7,t4
bfc01d68:	01005821 	move	t3,t0
bfc01d6c:	17f9ffdc 	bne	ra,t9,bfc01ce0 <sha_stream+0xd50>
bfc01d70:	00c71825 	or	v1,a2,a3
bfc01d74:	3c04ca62 	lui	a0,0xca62
bfc01d78:	8fa20100 	lw	v0,256(sp)
bfc01d7c:	3490c1d6 	ori	s0,a0,0xc1d6
bfc01d80:	00083ec2 	srl	a3,t0,0x1b
bfc01d84:	00089140 	sll	s2,t0,0x5
bfc01d88:	00503021 	addu	a2,v0,s0
bfc01d8c:	012a2826 	xor	a1,t1,t2
bfc01d90:	00cd7821 	addu	t7,a2,t5
bfc01d94:	00f2c825 	or	t9,a3,s2
bfc01d98:	01f95821 	addu	t3,t7,t9
bfc01d9c:	00ac1826 	xor	v1,a1,t4
bfc01da0:	000a7780 	sll	t6,t2,0x1e
bfc01da4:	000a8882 	srl	s1,t2,0x2
bfc01da8:	01806821 	move	t5,t4
bfc01dac:	01005021 	move	t2,t0
bfc01db0:	01206021 	move	t4,t1
bfc01db4:	01634021 	addu	t0,t3,v1
bfc01db8:	01d14825 	or	t1,t6,s1
bfc01dbc:	0bf00779 	j	bfc01de4 <sha_stream+0xe54>
bfc01dc0:	27ab0104 	addiu	t3,sp,260
bfc01dc4:	8d710004 	lw	s1,4(t3)
bfc01dc8:	01ee4825 	or	t1,t7,t6
bfc01dcc:	0230f821 	addu	ra,s1,s0
bfc01dd0:	03ec4021 	addu	t0,ra,t4
bfc01dd4:	01036021 	addu	t4,t0,v1
bfc01dd8:	01864021 	addu	t0,t4,a2
bfc01ddc:	256b0008 	addiu	t3,t3,8
bfc01de0:	00a06021 	move	t4,a1
bfc01de4:	8d640000 	lw	a0,0(t3)
bfc01de8:	000876c2 	srl	t6,t0,0x1b
bfc01dec:	00901021 	addu	v0,a0,s0
bfc01df0:	00087940 	sll	t7,t0,0x5
bfc01df4:	01cfa025 	or	s4,t6,t7
bfc01df8:	004d3021 	addu	a2,v0,t5
bfc01dfc:	012a6826 	xor	t5,t1,t2
bfc01e00:	00d49021 	addu	s2,a2,s4
bfc01e04:	01ac1826 	xor	v1,t5,t4
bfc01e08:	000a2f80 	sll	a1,t2,0x1e
bfc01e0c:	000ac882 	srl	t9,t2,0x2
bfc01e10:	02432021 	addu	a0,s2,v1
bfc01e14:	00b92825 	or	a1,a1,t9
bfc01e18:	8fb40384 	lw	s4,900(sp)
bfc01e1c:	000456c2 	srl	t2,a0,0x1b
bfc01e20:	00043940 	sll	a3,a0,0x5
bfc01e24:	00a88826 	xor	s1,a1,t0
bfc01e28:	257f0004 	addiu	ra,t3,4
bfc01e2c:	01471825 	or	v1,t2,a3
bfc01e30:	00087f80 	sll	t7,t0,0x1e
bfc01e34:	00087082 	srl	t6,t0,0x2
bfc01e38:	01206821 	move	t5,t1
bfc01e3c:	00805021 	move	t2,a0
bfc01e40:	169fffe0 	bne	s4,ra,bfc01dc4 <sha_stream+0xe34>
bfc01e44:	02293026 	xor	a2,s1,t1
bfc01e48:	8fbf03ac 	lw	ra,940(sp)
bfc01e4c:	00938021 	addu	s0,a0,s3
bfc01e50:	02a89821 	addu	s3,s5,t0
bfc01e54:	02c5a821 	addu	s5,s6,a1
bfc01e58:	02e9b021 	addu	s6,s7,t1
bfc01e5c:	030cb821 	addu	s7,t8,t4
bfc01e60:	afd70010 	sw	s7,16(s8)
bfc01e64:	afd00000 	sw	s0,0(s8)
bfc01e68:	afd30004 	sw	s3,4(s8)
bfc01e6c:	afd50008 	sw	s5,8(s8)
bfc01e70:	afd6000c 	sw	s6,12(s8)
bfc01e74:	8fb703a4 	lw	s7,932(sp)
bfc01e78:	8fbe03a8 	lw	s8,936(sp)
bfc01e7c:	8fb603a0 	lw	s6,928(sp)
bfc01e80:	8fb5039c 	lw	s5,924(sp)
bfc01e84:	8fb40398 	lw	s4,920(sp)
bfc01e88:	8fb30394 	lw	s3,916(sp)
bfc01e8c:	8fb20390 	lw	s2,912(sp)
bfc01e90:	8fb1038c 	lw	s1,908(sp)
bfc01e94:	8fb00388 	lw	s0,904(sp)
bfc01e98:	03e00008 	jr	ra
bfc01e9c:	27bd03b0 	addiu	sp,sp,944
bfc01ea0:	8fd80018 	lw	t8,24(s8)
bfc01ea4:	00000000 	nop
bfc01ea8:	27030001 	addiu	v1,t8,1
bfc01eac:	0068f821 	addu	ra,v1,t0
bfc01eb0:	2a190040 	slti	t9,s0,64
bfc01eb4:	afc40014 	sw	a0,20(s8)
bfc01eb8:	1320fc80 	beqz	t9,bfc010bc <sha_stream+0x12c>
bfc01ebc:	afdf0018 	sw	ra,24(s8)
bfc01ec0:	0bf00608 	j	bfc01820 <sha_stream+0x890>
bfc01ec4:	27b70150 	addiu	s7,sp,336
bfc01ec8:	8fbf0358 	lw	ra,856(sp)
bfc01ecc:	24150040 	li	s5,64
bfc01ed0:	02a53023 	subu	a2,s5,a1
bfc01ed4:	03e52021 	addu	a0,ra,a1
bfc01ed8:	0ff00b75 	jal	bfc02dd4 <memset>
bfc01edc:	00002821 	move	a1,zero
bfc01ee0:	8fcc0028 	lw	t4,40(s8)
bfc01ee4:	8fcf0040 	lw	t7,64(s8)
bfc01ee8:	8fcd002c 	lw	t5,44(s8)
bfc01eec:	8fd00044 	lw	s0,68(s8)
bfc01ef0:	8fd20020 	lw	s2,32(s8)
bfc01ef4:	8fa90370 	lw	t1,880(sp)
bfc01ef8:	8fa80374 	lw	t0,884(sp)
bfc01efc:	8fcb0024 	lw	t3,36(s8)
bfc01f00:	8fce003c 	lw	t6,60(s8)
bfc01f04:	018f5026 	xor	t2,t4,t7
bfc01f08:	8fd1001c 	lw	s1,28(s8)
bfc01f0c:	8fd30050 	lw	s3,80(s8)
bfc01f10:	8fd40054 	lw	s4,84(s8)
bfc01f14:	8fd50058 	lw	s5,88(s8)
bfc01f18:	8fc50030 	lw	a1,48(s8)
bfc01f1c:	8fc70034 	lw	a3,52(s8)
bfc01f20:	0128b823 	subu	s7,t1,t0
bfc01f24:	01b03026 	xor	a2,t5,s0
bfc01f28:	8fc80038 	lw	t0,56(s8)
bfc01f2c:	8fc90048 	lw	t1,72(s8)
bfc01f30:	01521026 	xor	v0,t2,s2
bfc01f34:	8fca004c 	lw	t2,76(s8)
bfc01f38:	00cb1826 	xor	v1,a2,t3
bfc01f3c:	016e2026 	xor	a0,t3,t6
bfc01f40:	0091c026 	xor	t8,a0,s1
bfc01f44:	26f6fff4 	addiu	s6,s7,-12
bfc01f48:	02a3c826 	xor	t9,s5,v1
bfc01f4c:	afac001c 	sw	t4,28(sp)
bfc01f50:	27a30018 	addiu	v1,sp,24
bfc01f54:	afa50024 	sw	a1,36(sp)
bfc01f58:	afa70028 	sw	a3,40(sp)
bfc01f5c:	afa8002c 	sw	t0,44(sp)
bfc01f60:	afa9003c 	sw	t1,60(sp)
bfc01f64:	afaa0040 	sw	t2,64(sp)
bfc01f68:	afb10010 	sw	s1,16(sp)
bfc01f6c:	afb20014 	sw	s2,20(sp)
bfc01f70:	afab0018 	sw	t3,24(sp)
bfc01f74:	afad0020 	sw	t5,32(sp)
bfc01f78:	afae0030 	sw	t6,48(sp)
bfc01f7c:	afaf0034 	sw	t7,52(sp)
bfc01f80:	afb00038 	sw	s0,56(sp)
bfc01f84:	afb30044 	sw	s3,68(sp)
bfc01f88:	afb40048 	sw	s4,72(sp)
bfc01f8c:	afb5004c 	sw	s5,76(sp)
bfc01f90:	8fac0370 	lw	t4,880(sp)
bfc01f94:	0278b826 	xor	s7,s3,t8
bfc01f98:	00162082 	srl	a0,s6,0x2
bfc01f9c:	0282c026 	xor	t8,s4,v0
bfc01fa0:	2476000c 	addiu	s6,v1,12
bfc01fa4:	afb70050 	sw	s7,80(sp)
bfc01fa8:	30860001 	andi	a2,a0,0x1
bfc01fac:	afb80054 	sw	t8,84(sp)
bfc01fb0:	12cc0047 	beq	s6,t4,bfc020d0 <sha_stream+0x1140>
bfc01fb4:	afb90058 	sw	t9,88(sp)
bfc01fb8:	10c00019 	beqz	a2,bfc02020 <sha_stream+0x1090>
bfc01fbc:	27a80018 	addiu	t0,sp,24
bfc01fc0:	8fb00024 	lw	s0,36(sp)
bfc01fc4:	8ed20018 	lw	s2,24(s6)
bfc01fc8:	8ecf0004 	lw	t7,4(s6)
bfc01fcc:	8ec7001c 	lw	a3,28(s6)
bfc01fd0:	8ecd0008 	lw	t5,8(s6)
bfc01fd4:	8ece0020 	lw	t6,32(s6)
bfc01fd8:	8ecafff8 	lw	t2,-8(s6)
bfc01fdc:	8ecbfffc 	lw	t3,-4(s6)
bfc01fe0:	01e74826 	xor	t1,t7,a3
bfc01fe4:	01ae9826 	xor	s3,t5,t6
bfc01fe8:	02122826 	xor	a1,s0,s2
bfc01fec:	00aaa826 	xor	s5,a1,t2
bfc01ff0:	012b8826 	xor	s1,t1,t3
bfc01ff4:	0270f826 	xor	ra,s3,s0
bfc01ff8:	02f5b826 	xor	s7,s7,s5
bfc01ffc:	0311c026 	xor	t8,t8,s1
bfc02000:	033fc826 	xor	t9,t9,ra
bfc02004:	8fb40370 	lw	s4,880(sp)
bfc02008:	aed90040 	sw	t9,64(s6)
bfc0200c:	aed70038 	sw	s7,56(s6)
bfc02010:	aed8003c 	sw	t8,60(s6)
bfc02014:	25160018 	addiu	s6,t0,24
bfc02018:	12d4002d 	beq	s6,s4,bfc020d0 <sha_stream+0x1140>
bfc0201c:	00000000 	nop
bfc02020:	8ec90000 	lw	t1,0(s6)
bfc02024:	8ece0018 	lw	t6,24(s6)
bfc02028:	8ec70004 	lw	a3,4(s6)
bfc0202c:	8ec3001c 	lw	v1,28(s6)
bfc02030:	8ed20008 	lw	s2,8(s6)
bfc02034:	8ed10020 	lw	s1,32(s6)
bfc02038:	8ecffff8 	lw	t7,-8(s6)
bfc0203c:	8ed3fffc 	lw	s3,-4(s6)
bfc02040:	00e3a026 	xor	s4,a3,v1
bfc02044:	0251a826 	xor	s5,s2,s1
bfc02048:	012e8026 	xor	s0,t1,t6
bfc0204c:	020ff826 	xor	ra,s0,t7
bfc02050:	02934026 	xor	t0,s4,s3
bfc02054:	02a92026 	xor	a0,s5,t1
bfc02058:	02ff3826 	xor	a3,s7,ra
bfc0205c:	03089026 	xor	s2,t8,t0
bfc02060:	03247826 	xor	t7,t9,a0
bfc02064:	aec70038 	sw	a3,56(s6)
bfc02068:	aed2003c 	sw	s2,60(s6)
bfc0206c:	aecf0040 	sw	t7,64(s6)
bfc02070:	26d3000c 	addiu	s3,s6,12
bfc02074:	8ecd000c 	lw	t5,12(s6)
bfc02078:	8e780018 	lw	t8,24(s3)
bfc0207c:	8e770008 	lw	s7,8(s3)
bfc02080:	8e790020 	lw	t9,32(s3)
bfc02084:	8e660004 	lw	a2,4(s3)
bfc02088:	8e6a001c 	lw	t2,28(s3)
bfc0208c:	8e6bfff8 	lw	t3,-8(s3)
bfc02090:	8e6cfffc 	lw	t4,-4(s3)
bfc02094:	02f91826 	xor	v1,s7,t9
bfc02098:	01b82826 	xor	a1,t5,t8
bfc0209c:	00ca1026 	xor	v0,a2,t2
bfc020a0:	00ab8826 	xor	s1,a1,t3
bfc020a4:	004c7026 	xor	t6,v0,t4
bfc020a8:	006d8026 	xor	s0,v1,t5
bfc020ac:	8fb40370 	lw	s4,880(sp)
bfc020b0:	00f1b826 	xor	s7,a3,s1
bfc020b4:	024ec026 	xor	t8,s2,t6
bfc020b8:	01f0c826 	xor	t9,t7,s0
bfc020bc:	26d60018 	addiu	s6,s6,24
bfc020c0:	ae790040 	sw	t9,64(s3)
bfc020c4:	ae770038 	sw	s7,56(s3)
bfc020c8:	16d4ffd5 	bne	s6,s4,bfc02020 <sha_stream+0x1090>
bfc020cc:	ae78003c 	sw	t8,60(s3)
bfc020d0:	8fae010c 	lw	t6,268(sp)
bfc020d4:	8faf012c 	lw	t7,300(sp)
bfc020d8:	8fb30114 	lw	s3,276(sp)
bfc020dc:	01eea026 	xor	s4,t7,t6
bfc020e0:	8fb50140 	lw	s5,320(sp)
bfc020e4:	0293b826 	xor	s7,s4,s3
bfc020e8:	02f5c026 	xor	t8,s7,s5
bfc020ec:	afb8014c 	sw	t8,332(sp)
bfc020f0:	8fd50004 	lw	s5,4(s8)
bfc020f4:	8fd30000 	lw	s3,0(s8)
bfc020f8:	3c165a82 	lui	s6,0x5a82
bfc020fc:	8fb00010 	lw	s0,16(sp)
bfc02100:	36d47999 	ori	s4,s6,0x7999
bfc02104:	8fd7000c 	lw	s7,12(s8)
bfc02108:	8fd60008 	lw	s6,8(s8)
bfc0210c:	8fd80010 	lw	t8,16(s8)
bfc02110:	00134940 	sll	t1,s3,0x5
bfc02114:	0015f827 	nor	ra,zero,s5
bfc02118:	02144021 	addu	t0,s0,s4
bfc0211c:	001326c2 	srl	a0,s3,0x1b
bfc02120:	0089c825 	or	t9,a0,t1
bfc02124:	02d55024 	and	t2,s6,s5
bfc02128:	03f73024 	and	a2,ra,s7
bfc0212c:	01185821 	addu	t3,t0,t8
bfc02130:	00ca2825 	or	a1,a2,t2
bfc02134:	00156082 	srl	t4,s5,0x2
bfc02138:	01791021 	addu	v0,t3,t9
bfc0213c:	00156f80 	sll	t5,s5,0x1e
bfc02140:	01ac7825 	or	t7,t5,t4
bfc02144:	00454821 	addu	t1,v0,a1
bfc02148:	27ac0014 	addiu	t4,sp,20
bfc0214c:	02605021 	move	t2,s3
bfc02150:	02e09021 	move	s2,s7
bfc02154:	0bf0085f 	j	bfc0217c <sha_stream+0x11ec>
bfc02158:	02c07021 	move	t6,s6
bfc0215c:	8d840004 	lw	a0,4(t4)
bfc02160:	02307825 	or	t7,s1,s0
bfc02164:	0094f821 	addu	ra,a0,s4
bfc02168:	03ee4821 	addu	t1,ra,t6
bfc0216c:	01237021 	addu	t6,t1,v1
bfc02170:	01c64821 	addu	t1,t6,a2
bfc02174:	258c0008 	addiu	t4,t4,8
bfc02178:	01a07021 	move	t6,t5
bfc0217c:	8d880000 	lw	t0,0(t4)
bfc02180:	000a8827 	nor	s1,zero,t2
bfc02184:	01141021 	addu	v0,t0,s4
bfc02188:	000986c2 	srl	s0,t1,0x1b
bfc0218c:	00092940 	sll	a1,t1,0x5
bfc02190:	00525821 	addu	t3,v0,s2
bfc02194:	022e3824 	and	a3,s1,t6
bfc02198:	02059025 	or	s2,s0,a1
bfc0219c:	01eac824 	and	t9,t7,t2
bfc021a0:	00f92025 	or	a0,a3,t9
bfc021a4:	0172f821 	addu	ra,t3,s2
bfc021a8:	03e45821 	addu	t3,ra,a0
bfc021ac:	000a4780 	sll	t0,t2,0x1e
bfc021b0:	000a2882 	srl	a1,t2,0x2
bfc021b4:	000b6940 	sll	t5,t3,0x5
bfc021b8:	000b1ec2 	srl	v1,t3,0x1b
bfc021bc:	00093027 	nor	a2,zero,t1
bfc021c0:	006d1825 	or	v1,v1,t5
bfc021c4:	8fa70378 	lw	a3,888(sp)
bfc021c8:	01056825 	or	t5,t0,a1
bfc021cc:	00cf3024 	and	a2,a2,t7
bfc021d0:	01a91024 	and	v0,t5,t1
bfc021d4:	25990004 	addiu	t9,t4,4
bfc021d8:	00098f80 	sll	s1,t1,0x1e
bfc021dc:	00098082 	srl	s0,t1,0x2
bfc021e0:	01e09021 	move	s2,t7
bfc021e4:	01605021 	move	t2,t3
bfc021e8:	14f9ffdc 	bne	a3,t9,bfc0215c <sha_stream+0x11cc>
bfc021ec:	00c23025 	or	a2,a2,v0
bfc021f0:	3c086ed9 	lui	t0,0x6ed9
bfc021f4:	8fa60060 	lw	a2,96(sp)
bfc021f8:	3512eba1 	ori	s2,t0,0xeba1
bfc021fc:	000b86c2 	srl	s0,t3,0x1b
bfc02200:	000b2940 	sll	a1,t3,0x5
bfc02204:	00d21021 	addu	v0,a2,s2
bfc02208:	01a93826 	xor	a3,t5,t1
bfc0220c:	004ec821 	addu	t9,v0,t6
bfc02210:	02058825 	or	s1,s0,a1
bfc02214:	00ef1826 	xor	v1,a3,t7
bfc02218:	00095780 	sll	t2,t1,0x1e
bfc0221c:	00096082 	srl	t4,t1,0x2
bfc02220:	0331a021 	addu	s4,t9,s1
bfc02224:	01e07021 	move	t6,t7
bfc02228:	01604821 	move	t1,t3
bfc0222c:	01a07821 	move	t7,t5
bfc02230:	02835821 	addu	t3,s4,v1
bfc02234:	014c6825 	or	t5,t2,t4
bfc02238:	0bf00898 	j	bfc02260 <sha_stream+0x12d0>
bfc0223c:	27a80064 	addiu	t0,sp,100
bfc02240:	8d070004 	lw	a3,4(t0)
bfc02244:	02306825 	or	t5,s1,s0
bfc02248:	00f2a021 	addu	s4,a3,s2
bfc0224c:	028f5821 	addu	t3,s4,t7
bfc02250:	01637821 	addu	t7,t3,v1
bfc02254:	01e45821 	addu	t3,t7,a0
bfc02258:	25080008 	addiu	t0,t0,8
bfc0225c:	01807821 	move	t7,t4
bfc02260:	8d1f0000 	lw	ra,0(t0)
bfc02264:	000b8ec2 	srl	s1,t3,0x1b
bfc02268:	03f21021 	addu	v0,ra,s2
bfc0226c:	000b8140 	sll	s0,t3,0x5
bfc02270:	004e5021 	addu	t2,v0,t6
bfc02274:	02303025 	or	a2,s1,s0
bfc02278:	01a97026 	xor	t6,t5,t1
bfc0227c:	01cf1826 	xor	v1,t6,t7
bfc02280:	01466021 	addu	t4,t2,a2
bfc02284:	0009cf80 	sll	t9,t1,0x1e
bfc02288:	00092882 	srl	a1,t1,0x2
bfc0228c:	01835021 	addu	t2,t4,v1
bfc02290:	8fbf037c 	lw	ra,892(sp)
bfc02294:	03256025 	or	t4,t9,a1
bfc02298:	000a4ec2 	srl	t1,t2,0x1b
bfc0229c:	000a2140 	sll	a0,t2,0x5
bfc022a0:	018b3826 	xor	a3,t4,t3
bfc022a4:	25140004 	addiu	s4,t0,4
bfc022a8:	01241825 	or	v1,t1,a0
bfc022ac:	000b8f80 	sll	s1,t3,0x1e
bfc022b0:	000b8082 	srl	s0,t3,0x2
bfc022b4:	01a07021 	move	t6,t5
bfc022b8:	01404821 	move	t1,t2
bfc022bc:	17f4ffe0 	bne	ra,s4,bfc02240 <sha_stream+0x12b0>
bfc022c0:	00ed2026 	xor	a0,a3,t5
bfc022c4:	3c078f1b 	lui	a3,0x8f1b
bfc022c8:	8fb400b0 	lw	s4,176(sp)
bfc022cc:	34f1bcdc 	ori	s1,a3,0xbcdc
bfc022d0:	01ac8025 	or	s0,t5,t4
bfc022d4:	000afec2 	srl	ra,t2,0x1b
bfc022d8:	000a1140 	sll	v0,t2,0x5
bfc022dc:	02911821 	addu	v1,s4,s1
bfc022e0:	020b7024 	and	t6,s0,t3
bfc022e4:	01ac3024 	and	a2,t5,t4
bfc022e8:	006f4821 	addu	t1,v1,t7
bfc022ec:	03e22025 	or	a0,ra,v0
bfc022f0:	01c62825 	or	a1,t6,a2
bfc022f4:	000b4780 	sll	t0,t3,0x1e
bfc022f8:	000b9082 	srl	s2,t3,0x2
bfc022fc:	0124c821 	addu	t9,t1,a0
bfc02300:	01a07821 	move	t7,t5
bfc02304:	01405821 	move	t3,t2
bfc02308:	01806821 	move	t5,t4
bfc0230c:	03255021 	addu	t2,t9,a1
bfc02310:	01126025 	or	t4,t0,s2
bfc02314:	0bf008cf 	j	bfc0233c <sha_stream+0x13ac>
bfc02318:	27ae00b4 	addiu	t6,sp,180
bfc0231c:	8dc70004 	lw	a3,4(t6)
bfc02320:	02506025 	or	t4,s2,s0
bfc02324:	00f1a021 	addu	s4,a3,s1
bfc02328:	028d5021 	addu	t2,s4,t5
bfc0232c:	01456821 	addu	t5,t2,a1
bfc02330:	01a35021 	addu	t2,t5,v1
bfc02334:	25ce0008 	addiu	t6,t6,8
bfc02338:	01206821 	move	t5,t1
bfc0233c:	8dc20000 	lw	v0,0(t6)
bfc02340:	01ac9025 	or	s2,t5,t4
bfc02344:	00513021 	addu	a2,v0,s1
bfc02348:	000a86c2 	srl	s0,t2,0x1b
bfc0234c:	000a2140 	sll	a0,t2,0x5
bfc02350:	00cf4021 	addu	t0,a2,t7
bfc02354:	024bc824 	and	t9,s2,t3
bfc02358:	02047825 	or	t7,s0,a0
bfc0235c:	01acf824 	and	ra,t5,t4
bfc02360:	033f2825 	or	a1,t9,ra
bfc02364:	010f1821 	addu	v1,t0,t7
bfc02368:	00654021 	addu	t0,v1,a1
bfc0236c:	000b3f80 	sll	a3,t3,0x1e
bfc02370:	000ba082 	srl	s4,t3,0x2
bfc02374:	00084ec2 	srl	t1,t0,0x1b
bfc02378:	00085940 	sll	t3,t0,0x5
bfc0237c:	012b2825 	or	a1,t1,t3
bfc02380:	00f44825 	or	t1,a3,s4
bfc02384:	01891025 	or	v0,t4,t1
bfc02388:	8fb90380 	lw	t9,896(sp)
bfc0238c:	004a3024 	and	a2,v0,t2
bfc02390:	01892024 	and	a0,t4,t1
bfc02394:	25df0004 	addiu	ra,t6,4
bfc02398:	000a9780 	sll	s2,t2,0x1e
bfc0239c:	000a8082 	srl	s0,t2,0x2
bfc023a0:	01807821 	move	t7,t4
bfc023a4:	01005821 	move	t3,t0
bfc023a8:	173fffdc 	bne	t9,ra,bfc0231c <sha_stream+0x138c>
bfc023ac:	00c41825 	or	v1,a2,a0
bfc023b0:	3c02ca62 	lui	v0,0xca62
bfc023b4:	8fa60100 	lw	a2,256(sp)
bfc023b8:	3450c1d6 	ori	s0,v0,0xc1d6
bfc023bc:	0008fec2 	srl	ra,t0,0x1b
bfc023c0:	00089140 	sll	s2,t0,0x5
bfc023c4:	00d02021 	addu	a0,a2,s0
bfc023c8:	012a2826 	xor	a1,t1,t2
bfc023cc:	008d7821 	addu	t7,a0,t5
bfc023d0:	03f2c825 	or	t9,ra,s2
bfc023d4:	01f95821 	addu	t3,t7,t9
bfc023d8:	00ac1826 	xor	v1,a1,t4
bfc023dc:	000a7780 	sll	t6,t2,0x1e
bfc023e0:	000a8882 	srl	s1,t2,0x2
bfc023e4:	01806821 	move	t5,t4
bfc023e8:	01005021 	move	t2,t0
bfc023ec:	01206021 	move	t4,t1
bfc023f0:	01634021 	addu	t0,t3,v1
bfc023f4:	01d14825 	or	t1,t6,s1
bfc023f8:	0bf00908 	j	bfc02420 <sha_stream+0x1490>
bfc023fc:	27ab0104 	addiu	t3,sp,260
bfc02400:	8d710004 	lw	s1,4(t3)
bfc02404:	01ee4825 	or	t1,t7,t6
bfc02408:	02303821 	addu	a3,s1,s0
bfc0240c:	00ec4021 	addu	t0,a3,t4
bfc02410:	01036021 	addu	t4,t0,v1
bfc02414:	01864021 	addu	t0,t4,a2
bfc02418:	256b0008 	addiu	t3,t3,8
bfc0241c:	00a06021 	move	t4,a1
bfc02420:	8d620000 	lw	v0,0(t3)
bfc02424:	000876c2 	srl	t6,t0,0x1b
bfc02428:	00502021 	addu	a0,v0,s0
bfc0242c:	00087940 	sll	t7,t0,0x5
bfc02430:	008d3021 	addu	a2,a0,t5
bfc02434:	01cfa025 	or	s4,t6,t7
bfc02438:	012a6826 	xor	t5,t1,t2
bfc0243c:	00d49021 	addu	s2,a2,s4
bfc02440:	01ac1826 	xor	v1,t5,t4
bfc02444:	000a2f80 	sll	a1,t2,0x1e
bfc02448:	000ac882 	srl	t9,t2,0x2
bfc0244c:	02432021 	addu	a0,s2,v1
bfc02450:	00b92825 	or	a1,a1,t9
bfc02454:	8fb40384 	lw	s4,900(sp)
bfc02458:	000456c2 	srl	t2,a0,0x1b
bfc0245c:	0004f940 	sll	ra,a0,0x5
bfc02460:	00a88826 	xor	s1,a1,t0
bfc02464:	25670004 	addiu	a3,t3,4
bfc02468:	015f1825 	or	v1,t2,ra
bfc0246c:	00087f80 	sll	t7,t0,0x1e
bfc02470:	00087082 	srl	t6,t0,0x2
bfc02474:	01206821 	move	t5,t1
bfc02478:	00805021 	move	t2,a0
bfc0247c:	1687ffe0 	bne	s4,a3,bfc02400 <sha_stream+0x1470>
bfc02480:	02293026 	xor	a2,s1,t1
bfc02484:	00935821 	addu	t3,a0,s3
bfc02488:	02a88021 	addu	s0,s5,t0
bfc0248c:	02c59821 	addu	s3,s6,a1
bfc02490:	02e9a821 	addu	s5,s7,t1
bfc02494:	030cb021 	addu	s6,t8,t4
bfc02498:	8fa40358 	lw	a0,856(sp)
bfc0249c:	afcb0000 	sw	t3,0(s8)
bfc024a0:	afd00004 	sw	s0,4(s8)
bfc024a4:	afd30008 	sw	s3,8(s8)
bfc024a8:	afd5000c 	sw	s5,12(s8)
bfc024ac:	afd60010 	sw	s6,16(s8)
bfc024b0:	00002821 	move	a1,zero
bfc024b4:	0ff00b75 	jal	bfc02dd4 <memset>
bfc024b8:	24060038 	li	a2,56
bfc024bc:	0bf00627 	j	bfc0189c <sha_stream+0x90c>
bfc024c0:	00000000 	nop
	...

bfc024d0 <fopen>:
fopen():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:20
bfc024d0:	3c028000 	lui	v0,0x8000
bfc024d4:	24470a50 	addiu	a3,v0,2640
bfc024d8:	00e02821 	move	a1,a3
bfc024dc:	00001821 	move	v1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:22
bfc024e0:	2406000a 	li	a2,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:23
bfc024e4:	8ca20000 	lw	v0,0(a1)
bfc024e8:	00000000 	nop
bfc024ec:	10400004 	beqz	v0,bfc02500 <fopen+0x30>
bfc024f0:	24a50008 	addiu	a1,a1,8
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:22
bfc024f4:	24630001 	addiu	v1,v1,1
bfc024f8:	1466fffa 	bne	v1,a2,bfc024e4 <fopen+0x14>
bfc024fc:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:27
bfc02500:	000310c0 	sll	v0,v1,0x3
bfc02504:	00471021 	addu	v0,v0,a3
bfc02508:	ac440000 	sw	a0,0(v0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:30
bfc0250c:	03e00008 	jr	ra
bfc02510:	ac400004 	sw	zero,4(v0)

bfc02514 <fclose>:
fclose():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:61
bfc02514:	3c028000 	lui	v0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:63
bfc02518:	3c038000 	lui	v1,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:61
bfc0251c:	24420a50 	addiu	v0,v0,2640
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:63
bfc02520:	24630aa0 	addiu	v1,v1,2720
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:64
bfc02524:	10820004 	beq	a0,v0,bfc02538 <fclose+0x24>
bfc02528:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:65
bfc0252c:	24420008 	addiu	v0,v0,8
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:63
bfc02530:	1443fffc 	bne	v0,v1,bfc02524 <fclose+0x10>
bfc02534:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:69
bfc02538:	ac800004 	sw	zero,4(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:70
bfc0253c:	03e00008 	jr	ra
bfc02540:	ac800000 	sw	zero,0(a0)

bfc02544 <getc>:
getc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:88
bfc02544:	27bdffe0 	addiu	sp,sp,-32
bfc02548:	afb00014 	sw	s0,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:89
bfc0254c:	8c900000 	lw	s0,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:88
bfc02550:	afb10018 	sw	s1,24(sp)
bfc02554:	00808821 	move	s1,a0
bfc02558:	afbf001c 	sw	ra,28(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:90
bfc0255c:	0ff00ae4 	jal	bfc02b90 <strlen>
bfc02560:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:91
bfc02564:	8e230004 	lw	v1,4(s1)
bfc02568:	00000000 	nop
bfc0256c:	10620009 	beq	v1,v0,bfc02594 <getc+0x50>
bfc02570:	02031021 	addu	v0,s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:97
bfc02574:	8fbf001c 	lw	ra,28(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:94
bfc02578:	24630001 	addiu	v1,v1,1
bfc0257c:	90420000 	lbu	v0,0(v0)
bfc02580:	ae230004 	sw	v1,4(s1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:97
bfc02584:	8fb00014 	lw	s0,20(sp)
bfc02588:	8fb10018 	lw	s1,24(sp)
bfc0258c:	03e00008 	jr	ra
bfc02590:	27bd0020 	addiu	sp,sp,32
bfc02594:	8fbf001c 	lw	ra,28(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:91
bfc02598:	2402ffff 	li	v0,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:97
bfc0259c:	8fb10018 	lw	s1,24(sp)
bfc025a0:	8fb00014 	lw	s0,20(sp)
bfc025a4:	03e00008 	jr	ra
bfc025a8:	27bd0020 	addiu	sp,sp,32

bfc025ac <fgets>:
fgets():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:72
bfc025ac:	27bdffe0 	addiu	sp,sp,-32
bfc025b0:	afb10014 	sw	s1,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:73
bfc025b4:	8cd10000 	lw	s1,0(a2)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:72
bfc025b8:	afb20018 	sw	s2,24(sp)
bfc025bc:	afb00010 	sw	s0,16(sp)
bfc025c0:	00809021 	move	s2,a0
bfc025c4:	00c08021 	move	s0,a2
bfc025c8:	afbf001c 	sw	ra,28(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:74
bfc025cc:	0ff00ae4 	jal	bfc02b90 <strlen>
bfc025d0:	02202021 	move	a0,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:77
bfc025d4:	8e040004 	lw	a0,4(s0)
bfc025d8:	00000000 	nop
bfc025dc:	10820012 	beq	a0,v0,bfc02628 <fgets+0x7c>
bfc025e0:	00403821 	move	a3,v0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:78
bfc025e4:	02242821 	addu	a1,s1,a0
bfc025e8:	80a30000 	lb	v1,0(a1)
bfc025ec:	2402000a 	li	v0,10
bfc025f0:	10620014 	beq	v1,v0,bfc02644 <fgets+0x98>
bfc025f4:	00003021 	move	a2,zero
bfc025f8:	0bf00984 	j	bfc02610 <fgets+0x64>
bfc025fc:	2408000a 	li	t0,10
bfc02600:	80a30001 	lb	v1,1(a1)
bfc02604:	00000000 	nop
bfc02608:	1068000e 	beq	v1,t0,bfc02644 <fgets+0x98>
bfc0260c:	24a50001 	addiu	a1,a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:82
bfc02610:	02461021 	addu	v0,s2,a2
bfc02614:	24840001 	addiu	a0,a0,1
bfc02618:	a0430000 	sb	v1,0(v0)
bfc0261c:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:77
bfc02620:	14e4fff7 	bne	a3,a0,bfc02600 <fgets+0x54>
bfc02624:	ae040004 	sw	a0,4(s0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:86
bfc02628:	8fbf001c 	lw	ra,28(sp)
bfc0262c:	00001021 	move	v0,zero
bfc02630:	8fb20018 	lw	s2,24(sp)
bfc02634:	8fb10014 	lw	s1,20(sp)
bfc02638:	8fb00010 	lw	s0,16(sp)
bfc0263c:	03e00008 	jr	ra
bfc02640:	27bd0020 	addiu	sp,sp,32
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:79
bfc02644:	02461021 	addu	v0,s2,a2
bfc02648:	2403000a 	li	v1,10
bfc0264c:	a0430000 	sb	v1,0(v0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:86
bfc02650:	8fbf001c 	lw	ra,28(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:79
bfc02654:	24840001 	addiu	a0,a0,1
bfc02658:	ae040004 	sw	a0,4(s0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:86
bfc0265c:	00001021 	move	v0,zero
bfc02660:	8fb20018 	lw	s2,24(sp)
bfc02664:	8fb10014 	lw	s1,20(sp)
bfc02668:	8fb00010 	lw	s0,16(sp)
bfc0266c:	03e00008 	jr	ra
bfc02670:	27bd0020 	addiu	sp,sp,32

bfc02674 <fread>:
fread():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:32
bfc02674:	27bdffd8 	addiu	sp,sp,-40
bfc02678:	afb10014 	sw	s1,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:34
bfc0267c:	8cf10000 	lw	s1,0(a3)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:32
bfc02680:	afb40020 	sw	s4,32(sp)
bfc02684:	0080a021 	move	s4,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:35
bfc02688:	02202021 	move	a0,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:32
bfc0268c:	afb3001c 	sw	s3,28(sp)
bfc02690:	afb20018 	sw	s2,24(sp)
bfc02694:	afb00010 	sw	s0,16(sp)
bfc02698:	afbf0024 	sw	ra,36(sp)
bfc0269c:	00e08021 	move	s0,a3
bfc026a0:	00a09821 	move	s3,a1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:35
bfc026a4:	0ff00ae4 	jal	bfc02b90 <strlen>
bfc026a8:	00c09021 	move	s2,a2
bfc026ac:	00404821 	move	t1,v0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:36
bfc026b0:	8e020004 	lw	v0,4(s0)
bfc026b4:	00000000 	nop
bfc026b8:	10490017 	beq	v0,t1,bfc02718 <fread+0xa4>
bfc026bc:	02530018 	mult	s2,s3
bfc026c0:	00003821 	move	a3,zero
bfc026c4:	00002812 	mflo	a1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:40
bfc026c8:	00e5102b 	sltu	v0,a3,a1
bfc026cc:	10400009 	beqz	v0,bfc026f4 <fread+0x80>
bfc026d0:	02874021 	addu	t0,s4,a3
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:41
bfc026d4:	8e020004 	lw	v0,4(s0)
bfc026d8:	24e70001 	addiu	a3,a3,1
bfc026dc:	02221821 	addu	v1,s1,v0
bfc026e0:	90640000 	lbu	a0,0(v1)
bfc026e4:	24420001 	addiu	v0,v0,1
bfc026e8:	a1040000 	sb	a0,0(t0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:42
bfc026ec:	1522fff6 	bne	t1,v0,bfc026c8 <fread+0x54>
bfc026f0:	ae020004 	sw	v0,4(s0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:47
bfc026f4:	8fbf0024 	lw	ra,36(sp)
bfc026f8:	00e01021 	move	v0,a3
bfc026fc:	8fb40020 	lw	s4,32(sp)
bfc02700:	8fb3001c 	lw	s3,28(sp)
bfc02704:	8fb20018 	lw	s2,24(sp)
bfc02708:	8fb10014 	lw	s1,20(sp)
bfc0270c:	8fb00010 	lw	s0,16(sp)
bfc02710:	03e00008 	jr	ra
bfc02714:	27bd0028 	addiu	sp,sp,40
bfc02718:	8fbf0024 	lw	ra,36(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:36
bfc0271c:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/stdio.c:47
bfc02720:	00e01021 	move	v0,a3
bfc02724:	8fb40020 	lw	s4,32(sp)
bfc02728:	8fb3001c 	lw	s3,28(sp)
bfc0272c:	8fb20018 	lw	s2,24(sp)
bfc02730:	8fb10014 	lw	s1,20(sp)
bfc02734:	8fb00010 	lw	s0,16(sp)
bfc02738:	03e00008 	jr	ra
bfc0273c:	27bd0028 	addiu	sp,sp,40

bfc02740 <printf>:
printf():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc02740:	27bdffc8 	addiu	sp,sp,-56
bfc02744:	afb30024 	sw	s3,36(sp)
bfc02748:	afbf0034 	sw	ra,52(sp)
bfc0274c:	afb60030 	sw	s6,48(sp)
bfc02750:	afb5002c 	sw	s5,44(sp)
bfc02754:	afb40028 	sw	s4,40(sp)
bfc02758:	afb20020 	sw	s2,32(sp)
bfc0275c:	afb1001c 	sw	s1,28(sp)
bfc02760:	afb00018 	sw	s0,24(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc02764:	80900000 	lb	s0,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc02768:	00809821 	move	s3,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:8
bfc0276c:	27a4003c 	addiu	a0,sp,60
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc02770:	afa5003c 	sw	a1,60(sp)
bfc02774:	afa60040 	sw	a2,64(sp)
bfc02778:	afa70044 	sw	a3,68(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc0277c:	12000013 	beqz	s0,bfc027cc <printf+0x8c>
bfc02780:	afa40010 	sw	a0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc02784:	3c028000 	lui	v0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc02788:	00809021 	move	s2,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc0278c:	24560870 	addiu	s6,v0,2160
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc02790:	00008821 	move	s1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc02794:	24140025 	li	s4,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc02798:	2415000a 	li	s5,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc0279c:	12140016 	beq	s0,s4,bfc027f8 <printf+0xb8>
bfc027a0:	02711021 	addu	v0,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc027a4:	1215002f 	beq	s0,s5,bfc02864 <printf+0x124>
bfc027a8:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:80
bfc027ac:	0ff00a69 	jal	bfc029a4 <putchar>
bfc027b0:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc027b4:	26310001 	addiu	s1,s1,1
bfc027b8:	02711021 	addu	v0,s3,s1
bfc027bc:	80500000 	lb	s0,0(v0)
bfc027c0:	00000000 	nop
bfc027c4:	1600fff5 	bnez	s0,bfc0279c <printf+0x5c>
bfc027c8:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:84
bfc027cc:	8fbf0034 	lw	ra,52(sp)
bfc027d0:	00001021 	move	v0,zero
bfc027d4:	8fb60030 	lw	s6,48(sp)
bfc027d8:	8fb5002c 	lw	s5,44(sp)
bfc027dc:	8fb40028 	lw	s4,40(sp)
bfc027e0:	8fb30024 	lw	s3,36(sp)
bfc027e4:	8fb20020 	lw	s2,32(sp)
bfc027e8:	8fb1001c 	lw	s1,28(sp)
bfc027ec:	8fb00018 	lw	s0,24(sp)
bfc027f0:	03e00008 	jr	ra
bfc027f4:	27bd0038 	addiu	sp,sp,56
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc027f8:	80440001 	lb	a0,1(v0)
bfc027fc:	24050001 	li	a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc02800:	2482ffdb 	addiu	v0,a0,-37
bfc02804:	304200ff 	andi	v0,v0,0xff
bfc02808:	2c430054 	sltiu	v1,v0,84
bfc0280c:	14600005 	bnez	v1,bfc02824 <printf+0xe4>
bfc02810:	00021080 	sll	v0,v0,0x2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:73
bfc02814:	0ff00a69 	jal	bfc029a4 <putchar>
bfc02818:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc0281c:	0bf009ee 	j	bfc027b8 <printf+0x78>
bfc02820:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc02824:	02c21021 	addu	v0,s6,v0
bfc02828:	8c430000 	lw	v1,0(v0)
bfc0282c:	00000000 	nop
bfc02830:	00600008 	jr	v1
bfc02834:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:65
bfc02838:	26310001 	addiu	s1,s1,1
bfc0283c:	02711021 	addu	v0,s3,s1
bfc02840:	80440001 	lb	a0,1(v0)
bfc02844:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc02848:	2482ffcf 	addiu	v0,a0,-49
bfc0284c:	304200ff 	andi	v0,v0,0xff
bfc02850:	2c420009 	sltiu	v0,v0,9
bfc02854:	1440003f 	bnez	v0,bfc02954 <printf+0x214>
bfc02858:	00002821 	move	a1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc0285c:	0bf00a01 	j	bfc02804 <printf+0xc4>
bfc02860:	2482ffdb 	addiu	v0,a0,-37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc02864:	0ff00a69 	jal	bfc029a4 <putchar>
bfc02868:	2404000d 	li	a0,13
bfc0286c:	0bf009eb 	j	bfc027ac <printf+0x6c>
bfc02870:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:30
bfc02874:	8e440000 	lw	a0,0(s2)
bfc02878:	2406000a 	li	a2,10
bfc0287c:	0ff00aa4 	jal	bfc02a90 <printbase>
bfc02880:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:31
bfc02884:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:32
bfc02888:	0bf009ed 	j	bfc027b4 <printf+0x74>
bfc0288c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:20
bfc02890:	8e440000 	lw	a0,0(s2)
bfc02894:	0ff00a74 	jal	bfc029d0 <putstring>
bfc02898:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:21
bfc0289c:	0bf009ed 	j	bfc027b4 <printf+0x74>
bfc028a0:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:56
bfc028a4:	8e440000 	lw	a0,0(s2)
bfc028a8:	24060010 	li	a2,16
bfc028ac:	0ff00aa4 	jal	bfc02a90 <printbase>
bfc028b0:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:57
bfc028b4:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:58
bfc028b8:	0bf009ed 	j	bfc027b4 <printf+0x74>
bfc028bc:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:45
bfc028c0:	8e440000 	lw	a0,0(s2)
bfc028c4:	24060008 	li	a2,8
bfc028c8:	0ff00aa4 	jal	bfc02a90 <printbase>
bfc028cc:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:46
bfc028d0:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:47
bfc028d4:	0bf009ed 	j	bfc027b4 <printf+0x74>
bfc028d8:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:40
bfc028dc:	8e440000 	lw	a0,0(s2)
bfc028e0:	2406000a 	li	a2,10
bfc028e4:	0ff00aa4 	jal	bfc02a90 <printbase>
bfc028e8:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:41
bfc028ec:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:42
bfc028f0:	0bf009ed 	j	bfc027b4 <printf+0x74>
bfc028f4:	26310002 	addiu	s1,s1,2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:35
bfc028f8:	8e440000 	lw	a0,0(s2)
bfc028fc:	2406000a 	li	a2,10
bfc02900:	0ff00aa4 	jal	bfc02a90 <printbase>
bfc02904:	24070001 	li	a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:36
bfc02908:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:37
bfc0290c:	0bf009ed 	j	bfc027b4 <printf+0x74>
bfc02910:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:25
bfc02914:	8e440000 	lw	a0,0(s2)
bfc02918:	0ff00a69 	jal	bfc029a4 <putchar>
bfc0291c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:26
bfc02920:	0bf009ed 	j	bfc027b4 <printf+0x74>
bfc02924:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:50
bfc02928:	8e440000 	lw	a0,0(s2)
bfc0292c:	24060002 	li	a2,2
bfc02930:	0ff00aa4 	jal	bfc02a90 <printbase>
bfc02934:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:51
bfc02938:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:52
bfc0293c:	0bf009ed 	j	bfc027b4 <printf+0x74>
bfc02940:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:61
bfc02944:	0ff00a69 	jal	bfc029a4 <putchar>
bfc02948:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:62
bfc0294c:	0bf009ed 	j	bfc027b4 <printf+0x74>
bfc02950:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc02954:	02713021 	addu	a2,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc02958:	000510c0 	sll	v0,a1,0x3
bfc0295c:	00051840 	sll	v1,a1,0x1
bfc02960:	00621821 	addu	v1,v1,v0
bfc02964:	00641821 	addu	v1,v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc02968:	80c40002 	lb	a0,2(a2)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc0296c:	2465ffd0 	addiu	a1,v1,-48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc02970:	2482ffcf 	addiu	v0,a0,-49
bfc02974:	304200ff 	andi	v0,v0,0xff
bfc02978:	2c420009 	sltiu	v0,v0,9
bfc0297c:	26310001 	addiu	s1,s1,1
bfc02980:	1040ff9f 	beqz	v0,bfc02800 <printf+0xc0>
bfc02984:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc02988:	0bf00a57 	j	bfc0295c <printf+0x21c>
bfc0298c:	000510c0 	sll	v0,a1,0x3

bfc02990 <tgt_putchar>:
tgt_putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:9
bfc02990:	3c018000 	lui	at,0x8000
bfc02994:	03e00008 	jr	ra
bfc02998:	a0247ffc 	sb	a0,32764(at)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:18
bfc0299c:	03e00008 	jr	ra
bfc029a0:	00000000 	nop

bfc029a4 <putchar>:
putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:2
bfc029a4:	27bdffe8 	addiu	sp,sp,-24
bfc029a8:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:3
bfc029ac:	0ff00a64 	jal	bfc02990 <tgt_putchar>
bfc029b0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:5
bfc029b4:	8fbf0014 	lw	ra,20(sp)
bfc029b8:	00001021 	move	v0,zero
bfc029bc:	03e00008 	jr	ra
bfc029c0:	27bd0018 	addiu	sp,sp,24
	...

bfc029d0 <putstring>:
putstring():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:2
bfc029d0:	27bdffe0 	addiu	sp,sp,-32
bfc029d4:	afb10014 	sw	s1,20(sp)
bfc029d8:	afbf001c 	sw	ra,28(sp)
bfc029dc:	afb20018 	sw	s2,24(sp)
bfc029e0:	afb00010 	sw	s0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc029e4:	80900000 	lb	s0,0(a0)
bfc029e8:	00000000 	nop
bfc029ec:	12000013 	beqz	s0,bfc02a3c <putstring+0x6c>
bfc029f0:	00808821 	move	s1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc029f4:	0bf00a85 	j	bfc02a14 <putstring+0x44>
bfc029f8:	2412000a 	li	s2,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc029fc:	0ff00a69 	jal	bfc029a4 <putchar>
bfc02a00:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc02a04:	82300000 	lb	s0,0(s1)
bfc02a08:	00000000 	nop
bfc02a0c:	1200000b 	beqz	s0,bfc02a3c <putstring+0x6c>
bfc02a10:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc02a14:	1612fff9 	bne	s0,s2,bfc029fc <putstring+0x2c>
bfc02a18:	26310001 	addiu	s1,s1,1
bfc02a1c:	0ff00a69 	jal	bfc029a4 <putchar>
bfc02a20:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc02a24:	0ff00a69 	jal	bfc029a4 <putchar>
bfc02a28:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc02a2c:	82300000 	lb	s0,0(s1)
bfc02a30:	00000000 	nop
bfc02a34:	1600fff7 	bnez	s0,bfc02a14 <putstring+0x44>
bfc02a38:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:11
bfc02a3c:	8fbf001c 	lw	ra,28(sp)
bfc02a40:	00001021 	move	v0,zero
bfc02a44:	8fb20018 	lw	s2,24(sp)
bfc02a48:	8fb10014 	lw	s1,20(sp)
bfc02a4c:	8fb00010 	lw	s0,16(sp)
bfc02a50:	03e00008 	jr	ra
bfc02a54:	27bd0020 	addiu	sp,sp,32

bfc02a58 <puts>:
puts():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:15
bfc02a58:	27bdffe8 	addiu	sp,sp,-24
bfc02a5c:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:16
bfc02a60:	0ff00a74 	jal	bfc029d0 <putstring>
bfc02a64:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:17
bfc02a68:	0ff00a69 	jal	bfc029a4 <putchar>
bfc02a6c:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:18
bfc02a70:	0ff00a69 	jal	bfc029a4 <putchar>
bfc02a74:	2404000a 	li	a0,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:20
bfc02a78:	8fbf0014 	lw	ra,20(sp)
bfc02a7c:	00001021 	move	v0,zero
bfc02a80:	03e00008 	jr	ra
bfc02a84:	27bd0018 	addiu	sp,sp,24
	...

bfc02a90 <printbase>:
printbase():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc02a90:	27bdff98 	addiu	sp,sp,-104
bfc02a94:	afb30060 	sw	s3,96(sp)
bfc02a98:	afb2005c 	sw	s2,92(sp)
bfc02a9c:	afbf0064 	sw	ra,100(sp)
bfc02aa0:	afb10058 	sw	s1,88(sp)
bfc02aa4:	afb00054 	sw	s0,84(sp)
bfc02aa8:	00801821 	move	v1,a0
bfc02aac:	00a09821 	move	s3,a1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:7
bfc02ab0:	10e00003 	beqz	a3,bfc02ac0 <printbase+0x30>
bfc02ab4:	00c09021 	move	s2,a2
bfc02ab8:	0480002f 	bltz	a0,bfc02b78 <printbase+0xe8>
bfc02abc:	2404002d 	li	a0,45
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:12
bfc02ac0:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc02ac4:	1200000c 	beqz	s0,bfc02af8 <printbase+0x68>
bfc02ac8:	00008821 	move	s1,zero
bfc02acc:	27a50010 	addiu	a1,sp,16
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc02ad0:	16400002 	bnez	s2,bfc02adc <printbase+0x4c>
bfc02ad4:	0212001b 	divu	zero,s0,s2
bfc02ad8:	0007000d 	break	0x7
bfc02adc:	00b12021 	addu	a0,a1,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc02ae0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc02ae4:	00001010 	mfhi	v0
bfc02ae8:	a0820000 	sb	v0,0(a0)
bfc02aec:	00001812 	mflo	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc02af0:	1460fff7 	bnez	v1,bfc02ad0 <printbase+0x40>
bfc02af4:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc02af8:	0233102a 	slt	v0,s1,s3
bfc02afc:	10400002 	beqz	v0,bfc02b08 <printbase+0x78>
bfc02b00:	02201821 	move	v1,s1
bfc02b04:	02601821 	move	v1,s3
bfc02b08:	1060000c 	beqz	v1,bfc02b3c <printbase+0xac>
bfc02b0c:	2470ffff 	addiu	s0,v1,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc02b10:	27a20010 	addiu	v0,sp,16
bfc02b14:	00509021 	addu	s2,v0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc02b18:	26020001 	addiu	v0,s0,1
bfc02b1c:	0222102a 	slt	v0,s1,v0
bfc02b20:	1040000e 	beqz	v0,bfc02b5c <printbase+0xcc>
bfc02b24:	24040030 	li	a0,48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc02b28:	02009821 	move	s3,s0
bfc02b2c:	0ff00a69 	jal	bfc029a4 <putchar>
bfc02b30:	2610ffff 	addiu	s0,s0,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc02b34:	1660fff8 	bnez	s3,bfc02b18 <printbase+0x88>
bfc02b38:	2652ffff 	addiu	s2,s2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:28
bfc02b3c:	8fbf0064 	lw	ra,100(sp)
bfc02b40:	00001021 	move	v0,zero
bfc02b44:	8fb30060 	lw	s3,96(sp)
bfc02b48:	8fb2005c 	lw	s2,92(sp)
bfc02b4c:	8fb10058 	lw	s1,88(sp)
bfc02b50:	8fb00054 	lw	s0,84(sp)
bfc02b54:	03e00008 	jr	ra
bfc02b58:	27bd0068 	addiu	sp,sp,104
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc02b5c:	82440000 	lb	a0,0(s2)
bfc02b60:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc02b64:	2882000a 	slti	v0,a0,10
bfc02b68:	14400007 	bnez	v0,bfc02b88 <printbase+0xf8>
bfc02b6c:	02009821 	move	s3,s0
bfc02b70:	0bf00acb 	j	bfc02b2c <printbase+0x9c>
bfc02b74:	24840057 	addiu	a0,a0,87
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:10
bfc02b78:	0ff00a69 	jal	bfc029a4 <putchar>
bfc02b7c:	00038023 	negu	s0,v1
bfc02b80:	0bf00ab1 	j	bfc02ac4 <printbase+0x34>
bfc02b84:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc02b88:	0bf00aca 	j	bfc02b28 <printbase+0x98>
bfc02b8c:	24840030 	addiu	a0,a0,48

bfc02b90 <strlen>:
strlen():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:14
bfc02b90:	80820000 	lb	v0,0(a0)
bfc02b94:	00000000 	nop
bfc02b98:	10400008 	beqz	v0,bfc02bbc <strlen+0x2c>
bfc02b9c:	00002821 	move	a1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:15
bfc02ba0:	24a50001 	addiu	a1,a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:14
bfc02ba4:	00851021 	addu	v0,a0,a1
bfc02ba8:	80430000 	lb	v1,0(v0)
bfc02bac:	00000000 	nop
bfc02bb0:	1460fffc 	bnez	v1,bfc02ba4 <strlen+0x14>
bfc02bb4:	24a50001 	addiu	a1,a1,1
bfc02bb8:	24a5ffff 	addiu	a1,a1,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:18
bfc02bbc:	03e00008 	jr	ra
bfc02bc0:	00a01021 	move	v0,a1

bfc02bc4 <strnlen>:
strnlen():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:36
bfc02bc4:	10a00010 	beqz	a1,bfc02c08 <strnlen+0x44>
bfc02bc8:	00001821 	move	v1,zero
bfc02bcc:	80820000 	lb	v0,0(a0)
bfc02bd0:	00000000 	nop
bfc02bd4:	14400009 	bnez	v0,bfc02bfc <strnlen+0x38>
bfc02bd8:	24630001 	addiu	v1,v1,1
bfc02bdc:	2463ffff 	addiu	v1,v1,-1
bfc02be0:	0bf00b02 	j	bfc02c08 <strnlen+0x44>
bfc02be4:	00000000 	nop
bfc02be8:	80c20000 	lb	v0,0(a2)
bfc02bec:	00000000 	nop
bfc02bf0:	10400005 	beqz	v0,bfc02c08 <strnlen+0x44>
bfc02bf4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:37
bfc02bf8:	24630001 	addiu	v1,v1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:36
bfc02bfc:	0065102b 	sltu	v0,v1,a1
bfc02c00:	1440fff9 	bnez	v0,bfc02be8 <strnlen+0x24>
bfc02c04:	00833021 	addu	a2,a0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:40
bfc02c08:	03e00008 	jr	ra
bfc02c0c:	00601021 	move	v0,v1

bfc02c10 <strcpy>:
strcpy():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:55
bfc02c10:	00801821 	move	v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:60
bfc02c14:	80a20000 	lb	v0,0(a1)
bfc02c18:	24a50001 	addiu	a1,a1,1
bfc02c1c:	a0620000 	sb	v0,0(v1)
bfc02c20:	1440fffc 	bnez	v0,bfc02c14 <strcpy+0x4>
bfc02c24:	24630001 	addiu	v1,v1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:64
bfc02c28:	03e00008 	jr	ra
bfc02c2c:	00801021 	move	v0,a0

bfc02c30 <strncpy>:
strncpy():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:79
bfc02c30:	10c00009 	beqz	a2,bfc02c58 <strncpy+0x28>
bfc02c34:	00801821 	move	v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:80
bfc02c38:	80a20000 	lb	v0,0(a1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:83
bfc02c3c:	24c6ffff 	addiu	a2,a2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:80
bfc02c40:	a0620000 	sb	v0,0(v1)
bfc02c44:	10400002 	beqz	v0,bfc02c50 <strncpy+0x20>
bfc02c48:	24630001 	addiu	v1,v1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:81
bfc02c4c:	24a50001 	addiu	a1,a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:79
bfc02c50:	14c0fff9 	bnez	a2,bfc02c38 <strncpy+0x8>
bfc02c54:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:86
bfc02c58:	03e00008 	jr	ra
bfc02c5c:	00801021 	move	v0,a0

bfc02c60 <strcmp>:
strcmp():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:108
bfc02c60:	80820000 	lb	v0,0(a0)
bfc02c64:	00000000 	nop
bfc02c68:	14400007 	bnez	v0,bfc02c88 <strcmp+0x28>
bfc02c6c:	00000000 	nop
bfc02c70:	0bf00b2a 	j	bfc02ca8 <strcmp+0x48>
bfc02c74:	00000000 	nop
bfc02c78:	80820000 	lb	v0,0(a0)
bfc02c7c:	00000000 	nop
bfc02c80:	10400009 	beqz	v0,bfc02ca8 <strcmp+0x48>
bfc02c84:	24a50001 	addiu	a1,a1,1
bfc02c88:	80a30000 	lb	v1,0(a1)
bfc02c8c:	00000000 	nop
bfc02c90:	1043fff9 	beq	v0,v1,bfc02c78 <strcmp+0x18>
bfc02c94:	24840001 	addiu	a0,a0,1
bfc02c98:	304400ff 	andi	a0,v0,0xff
bfc02c9c:	306200ff 	andi	v0,v1,0xff
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:113
bfc02ca0:	03e00008 	jr	ra
bfc02ca4:	00821023 	subu	v0,a0,v0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:108
bfc02ca8:	80a30000 	lb	v1,0(a1)
bfc02cac:	00002021 	move	a0,zero
bfc02cb0:	306200ff 	andi	v0,v1,0xff
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:113
bfc02cb4:	03e00008 	jr	ra
bfc02cb8:	00821023 	subu	v0,a0,v0

bfc02cbc <strncmp>:
strncmp():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:128
bfc02cbc:	10c00016 	beqz	a2,bfc02d18 <strncmp+0x5c>
bfc02cc0:	00000000 	nop
bfc02cc4:	80830000 	lb	v1,0(a0)
bfc02cc8:	00000000 	nop
bfc02ccc:	14600009 	bnez	v1,bfc02cf4 <strncmp+0x38>
bfc02cd0:	00000000 	nop
bfc02cd4:	0bf00b48 	j	bfc02d20 <strncmp+0x64>
bfc02cd8:	00000000 	nop
bfc02cdc:	10c0000e 	beqz	a2,bfc02d18 <strncmp+0x5c>
bfc02ce0:	24840001 	addiu	a0,a0,1
bfc02ce4:	80830000 	lb	v1,0(a0)
bfc02ce8:	00000000 	nop
bfc02cec:	1060000c 	beqz	v1,bfc02d20 <strncmp+0x64>
bfc02cf0:	24a50001 	addiu	a1,a1,1
bfc02cf4:	80a20000 	lb	v0,0(a1)
bfc02cf8:	00000000 	nop
bfc02cfc:	1062fff7 	beq	v1,v0,bfc02cdc <strncmp+0x20>
bfc02d00:	24c6ffff 	addiu	a2,a2,-1
bfc02d04:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:131
bfc02d08:	306300ff 	andi	v1,v1,0xff
bfc02d0c:	304200ff 	andi	v0,v0,0xff
bfc02d10:	03e00008 	jr	ra
bfc02d14:	00621023 	subu	v0,v1,v0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:132
bfc02d18:	03e00008 	jr	ra
bfc02d1c:	00001021 	move	v0,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:128
bfc02d20:	80a20000 	lb	v0,0(a1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:131
bfc02d24:	306300ff 	andi	v1,v1,0xff
bfc02d28:	304200ff 	andi	v0,v0,0xff
bfc02d2c:	03e00008 	jr	ra
bfc02d30:	00621023 	subu	v0,v1,v0

bfc02d34 <strchr>:
strchr():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:144
bfc02d34:	80830000 	lb	v1,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:143
bfc02d38:	00052e00 	sll	a1,a1,0x18
bfc02d3c:	00801021 	move	v0,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:144
bfc02d40:	1060000c 	beqz	v1,bfc02d74 <strchr+0x40>
bfc02d44:	00052e03 	sra	a1,a1,0x18
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:145
bfc02d48:	14650006 	bne	v1,a1,bfc02d64 <strchr+0x30>
bfc02d4c:	24420001 	addiu	v0,v0,1
bfc02d50:	03e00008 	jr	ra
bfc02d54:	2442ffff 	addiu	v0,v0,-1
bfc02d58:	10650008 	beq	v1,a1,bfc02d7c <strchr+0x48>
bfc02d5c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:148
bfc02d60:	24420001 	addiu	v0,v0,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:144
bfc02d64:	80430000 	lb	v1,0(v0)
bfc02d68:	00000000 	nop
bfc02d6c:	1460fffa 	bnez	v1,bfc02d58 <strchr+0x24>
bfc02d70:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:151
bfc02d74:	03e00008 	jr	ra
bfc02d78:	00001021 	move	v0,zero
bfc02d7c:	03e00008 	jr	ra
bfc02d80:	00000000 	nop

bfc02d84 <strfind>:
strfind():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:164
bfc02d84:	80830000 	lb	v1,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:163
bfc02d88:	00052e00 	sll	a1,a1,0x18
bfc02d8c:	00801021 	move	v0,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:164
bfc02d90:	1060000c 	beqz	v1,bfc02dc4 <strfind+0x40>
bfc02d94:	00052e03 	sra	a1,a1,0x18
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:165
bfc02d98:	14650006 	bne	v1,a1,bfc02db4 <strfind+0x30>
bfc02d9c:	24420001 	addiu	v0,v0,1
bfc02da0:	03e00008 	jr	ra
bfc02da4:	2442ffff 	addiu	v0,v0,-1
bfc02da8:	10650008 	beq	v1,a1,bfc02dcc <strfind+0x48>
bfc02dac:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:168
bfc02db0:	24420001 	addiu	v0,v0,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:164
bfc02db4:	80430000 	lb	v1,0(v0)
bfc02db8:	00000000 	nop
bfc02dbc:	1460fffa 	bnez	v1,bfc02da8 <strfind+0x24>
bfc02dc0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:171
bfc02dc4:	03e00008 	jr	ra
bfc02dc8:	00000000 	nop
bfc02dcc:	03e00008 	jr	ra
bfc02dd0:	00000000 	nop

bfc02dd4 <memset>:
memset():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:273
bfc02dd4:	00052e00 	sll	a1,a1,0x18
bfc02dd8:	00801021 	move	v0,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:278
bfc02ddc:	10c00006 	beqz	a2,bfc02df8 <memset+0x24>
bfc02de0:	00052e03 	sra	a1,a1,0x18
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:277
bfc02de4:	00801821 	move	v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:279
bfc02de8:	24c6ffff 	addiu	a2,a2,-1
bfc02dec:	a0650000 	sb	a1,0(v1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:278
bfc02df0:	14c0fffd 	bnez	a2,bfc02de8 <memset+0x14>
bfc02df4:	24630001 	addiu	v1,v1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:283
bfc02df8:	03e00008 	jr	ra
bfc02dfc:	00000000 	nop

bfc02e00 <memcpy>:
memcpy():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:306
bfc02e00:	10c00008 	beqz	a2,bfc02e24 <memcpy+0x24>
bfc02e04:	00804021 	move	t0,a0
bfc02e08:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:307
bfc02e0c:	00a71021 	addu	v0,a1,a3
bfc02e10:	90440000 	lbu	a0,0(v0)
bfc02e14:	01071821 	addu	v1,t0,a3
bfc02e18:	24e70001 	addiu	a3,a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:306
bfc02e1c:	14e6fffb 	bne	a3,a2,bfc02e0c <memcpy+0xc>
bfc02e20:	a0640000 	sb	a0,0(v1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:311
bfc02e24:	03e00008 	jr	ra
bfc02e28:	01001021 	move	v0,t0

bfc02e2c <memmove>:
memmove():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:329
bfc02e2c:	00a4102b 	sltu	v0,a1,a0
bfc02e30:	10400005 	beqz	v0,bfc02e48 <memmove+0x1c>
bfc02e34:	00804021 	move	t0,a0
bfc02e38:	00a62021 	addu	a0,a1,a2
bfc02e3c:	0104102b 	sltu	v0,t0,a0
bfc02e40:	1440000b 	bnez	v0,bfc02e70 <memmove+0x44>
bfc02e44:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:335
bfc02e48:	10c00007 	beqz	a2,bfc02e68 <memmove+0x3c>
bfc02e4c:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:336
bfc02e50:	00a71021 	addu	v0,a1,a3
bfc02e54:	90440000 	lbu	a0,0(v0)
bfc02e58:	01071821 	addu	v1,t0,a3
bfc02e5c:	24e70001 	addiu	a3,a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:335
bfc02e60:	14c7fffb 	bne	a2,a3,bfc02e50 <memmove+0x24>
bfc02e64:	a0640000 	sb	a0,0(v1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:341
bfc02e68:	03e00008 	jr	ra
bfc02e6c:	01001021 	move	v0,t0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:331
bfc02e70:	10c0fffd 	beqz	a2,bfc02e68 <memmove+0x3c>
bfc02e74:	01061821 	addu	v1,t0,a2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:332
bfc02e78:	2484ffff 	addiu	a0,a0,-1
bfc02e7c:	90820000 	lbu	v0,0(a0)
bfc02e80:	2463ffff 	addiu	v1,v1,-1
bfc02e84:	24c6ffff 	addiu	a2,a2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:331
bfc02e88:	14c0fffb 	bnez	a2,bfc02e78 <memmove+0x4c>
bfc02e8c:	a0620000 	sb	v0,0(v1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:341
bfc02e90:	03e00008 	jr	ra
bfc02e94:	01001021 	move	v0,t0

bfc02e98 <memcmp>:
memcmp():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:361
bfc02e98:	10c00011 	beqz	a2,bfc02ee0 <memcmp+0x48>
bfc02e9c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:362
bfc02ea0:	80830000 	lb	v1,0(a0)
bfc02ea4:	80a20000 	lb	v0,0(a1)
bfc02ea8:	00000000 	nop
bfc02eac:	1462000e 	bne	v1,v0,bfc02ee8 <memcmp+0x50>
bfc02eb0:	24c6ffff 	addiu	a2,a2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:361
bfc02eb4:	0bf00bb4 	j	bfc02ed0 <memcmp+0x38>
bfc02eb8:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:362
bfc02ebc:	80630001 	lb	v1,1(v1)
bfc02ec0:	80420001 	lb	v0,1(v0)
bfc02ec4:	00000000 	nop
bfc02ec8:	14620007 	bne	v1,v0,bfc02ee8 <memcmp+0x50>
bfc02ecc:	24c6ffff 	addiu	a2,a2,-1
bfc02ed0:	00871821 	addu	v1,a0,a3
bfc02ed4:	00a71021 	addu	v0,a1,a3
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:361
bfc02ed8:	14c0fff8 	bnez	a2,bfc02ebc <memcmp+0x24>
bfc02edc:	24e70001 	addiu	a3,a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:368
bfc02ee0:	03e00008 	jr	ra
bfc02ee4:	00001021 	move	v0,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:363
bfc02ee8:	306300ff 	andi	v1,v1,0xff
bfc02eec:	304200ff 	andi	v0,v0,0xff
bfc02ef0:	03e00008 	jr	ra
bfc02ef4:	00621023 	subu	v0,v1,v0

bfc02ef8 <bzero>:
memset():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:278
bfc02ef8:	10a00005 	beqz	a1,bfc02f10 <bzero+0x18>
bfc02efc:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:279
bfc02f00:	24a5ffff 	addiu	a1,a1,-1
bfc02f04:	a0800000 	sb	zero,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:278
bfc02f08:	14a0fffd 	bnez	a1,bfc02f00 <bzero+0x8>
bfc02f0c:	24840001 	addiu	a0,a0,1
bfc02f10:	03e00008 	jr	ra
bfc02f14:	00000000 	nop
	...

bfc02f20 <_get_count>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:15
bfc02f20:	3c01bfd0 	lui	at,0xbfd0
bfc02f24:	3421e000 	ori	at,at,0xe000
bfc02f28:	8c220000 	lw	v0,0(at)
bfc02f2c:	03e00008 	jr	ra
bfc02f30:	00000000 	nop

bfc02f34 <get_count>:
get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:20
bfc02f34:	3c01bfd0 	lui	at,0xbfd0
bfc02f38:	3421e000 	ori	at,at,0xe000
bfc02f3c:	8c220000 	lw	v0,0(at)
bfc02f40:	03e00008 	jr	ra
bfc02f44:	00000000 	nop

bfc02f48 <get_clock>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc02f48:	3c01bfd0 	lui	at,0xbfd0
bfc02f4c:	3421e000 	ori	at,at,0xe000
bfc02f50:	8c220000 	lw	v0,0(at)
get_clock():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:39
bfc02f54:	03e00008 	jr	ra
bfc02f58:	00021040 	sll	v0,v0,0x1

bfc02f5c <get_ns>:
get_ns():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:45
bfc02f5c:	40024800 	mfc0	v0,$9
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:51
bfc02f60:	03e00008 	jr	ra
bfc02f64:	00021040 	sll	v0,v0,0x1

bfc02f68 <clock_gettime>:
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:23
bfc02f68:	27bdffe8 	addiu	sp,sp,-24
bfc02f6c:	afbf0014 	sw	ra,20(sp)
bfc02f70:	00a04821 	move	t1,a1
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc02f74:	3c01bfd0 	lui	at,0xbfd0
bfc02f78:	3421e000 	ori	at,at,0xe000
bfc02f7c:	8c230000 	lw	v1,0(at)
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc02f80:	240203e8 	li	v0,1000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc02f84:	14400002 	bnez	v0,bfc02f90 <clock_gettime+0x28>
bfc02f88:	0062001b 	divu	zero,v1,v0
bfc02f8c:	0007000d 	break	0x7
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc02f90:	00031840 	sll	v1,v1,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc02f94:	3c073b9a 	lui	a3,0x3b9a
bfc02f98:	34e7ca00 	ori	a3,a3,0xca00
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc02f9c:	3c048000 	lui	a0,0x8000
bfc02fa0:	248409c0 	addiu	a0,a0,2496
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc02fa4:	00003012 	mflo	a2
bfc02fa8:	00063040 	sll	a2,a2,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc02fac:	14400002 	bnez	v0,bfc02fb8 <clock_gettime+0x50>
bfc02fb0:	0062001b 	divu	zero,v1,v0
bfc02fb4:	0007000d 	break	0x7
bfc02fb8:	00002810 	mfhi	a1
bfc02fbc:	ad250004 	sw	a1,4(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc02fc0:	14400002 	bnez	v0,bfc02fcc <clock_gettime+0x64>
bfc02fc4:	00c2001b 	divu	zero,a2,v0
bfc02fc8:	0007000d 	break	0x7
bfc02fcc:	00005010 	mfhi	t2
bfc02fd0:	ad2a0008 	sw	t2,8(t1)
bfc02fd4:	00004012 	mflo	t0
bfc02fd8:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc02fdc:	14e00002 	bnez	a3,bfc02fe8 <clock_gettime+0x80>
bfc02fe0:	00c7001b 	divu	zero,a2,a3
bfc02fe4:	0007000d 	break	0x7
bfc02fe8:	00003012 	mflo	a2
bfc02fec:	ad260000 	sw	a2,0(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:28
bfc02ff0:	14400002 	bnez	v0,bfc02ffc <clock_gettime+0x94>
bfc02ff4:	0102001b 	divu	zero,t0,v0
bfc02ff8:	0007000d 	break	0x7
bfc02ffc:	00001810 	mfhi	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc03000:	0ff009d0 	jal	bfc02740 <printf>
bfc03004:	ad23000c 	sw	v1,12(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:32
bfc03008:	8fbf0014 	lw	ra,20(sp)
bfc0300c:	00001021 	move	v0,zero
bfc03010:	03e00008 	jr	ra
bfc03014:	27bd0018 	addiu	sp,sp,24
	...

bfc03020 <get_epc>:
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc03020:	40027000 	mfc0	v0,c0_epc
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:9
bfc03024:	03e00008 	jr	ra
bfc03028:	00000000 	nop

bfc0302c <get_cause>:
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc0302c:	40026800 	mfc0	v0,c0_cause
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:19
bfc03030:	03e00008 	jr	ra
bfc03034:	00000000 	nop

bfc03038 <exception>:
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc03038:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:22
bfc0303c:	27bdffe8 	addiu	sp,sp,-24
bfc03040:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc03044:	0ff009d0 	jal	bfc02740 <printf>
bfc03048:	248409d4 	addiu	a0,a0,2516
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc0304c:	3c048000 	lui	a0,0x8000
bfc03050:	248409f0 	addiu	a0,a0,2544
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc03054:	40057000 	mfc0	a1,c0_epc
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc03058:	0ff009d0 	jal	bfc02740 <printf>
bfc0305c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc03060:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc03064:	8fbf0014 	lw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc03068:	24840a00 	addiu	a0,a0,2560
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc0306c:	27bd0018 	addiu	sp,sp,24
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc03070:	40056800 	mfc0	a1,c0_cause
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc03074:	0bf009d0 	j	bfc02740 <printf>
bfc03078:	00000000 	nop
bfc0307c:	00000000 	nop
