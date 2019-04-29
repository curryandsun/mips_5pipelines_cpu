
obj/bitcount/main.elf:     file format elf32-tradlittlemips
obj/bitcount/main.elf


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
bfc00010:	27bd43fc 	addiu	sp,sp,17404
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:55
bfc00014:	3c1c8001 	lui	gp,0x8001
bfc00018:	279c8420 	addiu	gp,gp,-31712
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
bfc00380:	0ff0046e 	jal	bfc011b8 <exception>
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
bfc0039c:	0ff0042d 	jal	bfc010b4 <get_count>
bfc003a0:	afb00014 	sw	s0,20(sp)
bfc003a4:	24040001 	li	a0,1
bfc003a8:	24050064 	li	a1,100
bfc003ac:	0ff00140 	jal	bfc00500 <bitcnts>
bfc003b0:	00408021 	move	s0,v0
bfc003b4:	0ff0042d 	jal	bfc010b4 <get_count>
bfc003b8:	00408821 	move	s1,v0
bfc003bc:	3c0cbfd0 	lui	t4,0xbfd0
bfc003c0:	00501023 	subu	v0,v0,s0
bfc003c4:	24090001 	li	t1,1
bfc003c8:	358bf010 	ori	t3,t4,0xf010
bfc003cc:	3c048000 	lui	a0,0x8000
bfc003d0:	358af008 	ori	t2,t4,0xf008
bfc003d4:	3588f004 	ori	t0,t4,0xf004
bfc003d8:	3587f000 	ori	a3,t4,0xf000
bfc003dc:	3403ffff 	li	v1,0xffff
bfc003e0:	ad090000 	sw	t1,0(t0)
bfc003e4:	02203021 	move	a2,s1
bfc003e8:	ace30000 	sw	v1,0(a3)
bfc003ec:	8fbf001c 	lw	ra,28(sp)
bfc003f0:	ad490000 	sw	t1,0(t2)
bfc003f4:	8fb10018 	lw	s1,24(sp)
bfc003f8:	8fb00014 	lw	s0,20(sp)
bfc003fc:	24840000 	addiu	a0,a0,0
bfc00400:	00402821 	move	a1,v0
bfc00404:	ad620000 	sw	v0,0(t3)
bfc00408:	0bf00314 	j	bfc00c50 <printf>
bfc0040c:	27bd0020 	addiu	sp,sp,32

bfc00410 <myrand>:
myrand():
bfc00410:	03e00008 	jr	ra
bfc00414:	24025670 	li	v0,22128
	...

bfc00420 <bit_shifter>:
bit_shifter():
bfc00420:	27bdfff0 	addiu	sp,sp,-16
bfc00424:	afb2000c 	sw	s2,12(sp)
bfc00428:	afb10008 	sw	s1,8(sp)
bfc0042c:	10800030 	beqz	a0,bfc004f0 <bit_shifter+0xd0>
bfc00430:	afb00004 	sw	s0,4(sp)
bfc00434:	00002821 	move	a1,zero
bfc00438:	00003021 	move	a2,zero
bfc0043c:	24120020 	li	s2,32
bfc00440:	30830001 	andi	v1,a0,0x1
bfc00444:	00041043 	sra	v0,a0,0x1
bfc00448:	00043883 	sra	a3,a0,0x2
bfc0044c:	000440c3 	sra	t0,a0,0x3
bfc00450:	00044903 	sra	t1,a0,0x4
bfc00454:	00045143 	sra	t2,a0,0x5
bfc00458:	00045983 	sra	t3,a0,0x6
bfc0045c:	000461c3 	sra	t4,a0,0x7
bfc00460:	24c60008 	addiu	a2,a2,8
bfc00464:	304d0001 	andi	t5,v0,0x1
bfc00468:	30ee0001 	andi	t6,a3,0x1
bfc0046c:	310f0001 	andi	t7,t0,0x1
bfc00470:	31380001 	andi	t8,t1,0x1
bfc00474:	31590001 	andi	t9,t2,0x1
bfc00478:	31700001 	andi	s0,t3,0x1
bfc0047c:	31910001 	andi	s1,t4,0x1
bfc00480:	00042203 	sra	a0,a0,0x8
bfc00484:	10400011 	beqz	v0,bfc004cc <bit_shifter+0xac>
bfc00488:	00a32821 	addu	a1,a1,v1
bfc0048c:	10e0000f 	beqz	a3,bfc004cc <bit_shifter+0xac>
bfc00490:	00ad2821 	addu	a1,a1,t5
bfc00494:	1100000d 	beqz	t0,bfc004cc <bit_shifter+0xac>
bfc00498:	00ae2821 	addu	a1,a1,t6
bfc0049c:	1120000b 	beqz	t1,bfc004cc <bit_shifter+0xac>
bfc004a0:	00af2821 	addu	a1,a1,t7
bfc004a4:	11400009 	beqz	t2,bfc004cc <bit_shifter+0xac>
bfc004a8:	00b82821 	addu	a1,a1,t8
bfc004ac:	11600007 	beqz	t3,bfc004cc <bit_shifter+0xac>
bfc004b0:	00b92821 	addu	a1,a1,t9
bfc004b4:	11800005 	beqz	t4,bfc004cc <bit_shifter+0xac>
bfc004b8:	00b02821 	addu	a1,a1,s0
bfc004bc:	10800003 	beqz	a0,bfc004cc <bit_shifter+0xac>
bfc004c0:	00b12821 	addu	a1,a1,s1
bfc004c4:	14d2ffde 	bne	a2,s2,bfc00440 <bit_shifter+0x20>
bfc004c8:	00000000 	nop
bfc004cc:	00a01021 	move	v0,a1
bfc004d0:	8fb2000c 	lw	s2,12(sp)
bfc004d4:	8fb10008 	lw	s1,8(sp)
bfc004d8:	8fb00004 	lw	s0,4(sp)
bfc004dc:	03e00008 	jr	ra
bfc004e0:	27bd0010 	addiu	sp,sp,16
	...
bfc004f0:	0bf00133 	j	bfc004cc <bit_shifter+0xac>
bfc004f4:	00002821 	move	a1,zero
	...

bfc00500 <bitcnts>:
bitcnts():
bfc00500:	27bdffc8 	addiu	sp,sp,-56
bfc00504:	3c088000 	lui	t0,0x8000
bfc00508:	2504001c 	addiu	a0,t0,28
bfc0050c:	afb6002c 	sw	s6,44(sp)
bfc00510:	00a0b021 	move	s6,a1
bfc00514:	afbf0034 	sw	ra,52(sp)
bfc00518:	afb70030 	sw	s7,48(sp)
bfc0051c:	afb50028 	sw	s5,40(sp)
bfc00520:	afb40024 	sw	s4,36(sp)
bfc00524:	afb30020 	sw	s3,32(sp)
bfc00528:	afb2001c 	sw	s2,28(sp)
bfc0052c:	afb10018 	sw	s1,24(sp)
bfc00530:	0ff003da 	jal	bfc00f68 <puts>
bfc00534:	afb00014 	sw	s0,20(sp)
bfc00538:	0ff00437 	jal	bfc010dc <get_ns>
bfc0053c:	00000000 	nop
bfc00540:	00163880 	sll	a3,s6,0x2
bfc00544:	00163100 	sll	a2,s6,0x4
bfc00548:	00c72823 	subu	a1,a2,a3
bfc0054c:	00b62021 	addu	a0,a1,s6
bfc00550:	3c028000 	lui	v0,0x8000
bfc00554:	3c038000 	lui	v1,0x8000
bfc00558:	24540040 	addiu	s4,v0,64
bfc0055c:	2477005c 	addiu	s7,v1,92
bfc00560:	24955670 	addiu	s5,a0,22128
bfc00564:	1ac00062 	blez	s6,bfc006f0 <bitcnts+0x1f0>
bfc00568:	3c0cc4ec 	lui	t4,0xc4ec
bfc0056c:	26aba983 	addiu	t3,s5,-22141
bfc00570:	358a4ec5 	ori	t2,t4,0x4ec5
bfc00574:	016a0018 	mult	t3,t2
bfc00578:	8e930000 	lw	s3,0(s4)
bfc0057c:	24045670 	li	a0,22128
bfc00580:	2411567d 	li	s1,22141
bfc00584:	00004812 	mflo	t1
bfc00588:	0260f809 	jalr	s3
bfc0058c:	31300007 	andi	s0,t1,0x7
bfc00590:	12350046 	beq	s1,s5,bfc006ac <bitcnts+0x1ac>
bfc00594:	00409021 	move	s2,v0
bfc00598:	1200002a 	beqz	s0,bfc00644 <bitcnts+0x144>
bfc0059c:	240d0001 	li	t5,1
bfc005a0:	120d0023 	beq	s0,t5,bfc00630 <bitcnts+0x130>
bfc005a4:	240e0002 	li	t6,2
bfc005a8:	120e001d 	beq	s0,t6,bfc00620 <bitcnts+0x120>
bfc005ac:	240f0003 	li	t7,3
bfc005b0:	120f0017 	beq	s0,t7,bfc00610 <bitcnts+0x110>
bfc005b4:	24180004 	li	t8,4
bfc005b8:	12180011 	beq	s0,t8,bfc00600 <bitcnts+0x100>
bfc005bc:	24190005 	li	t9,5
bfc005c0:	1219000b 	beq	s0,t9,bfc005f0 <bitcnts+0xf0>
bfc005c4:	241f0006 	li	ra,6
bfc005c8:	121f0005 	beq	s0,ra,bfc005e0 <bitcnts+0xe0>
bfc005cc:	00000000 	nop
bfc005d0:	0260f809 	jalr	s3
bfc005d4:	2404567d 	li	a0,22141
bfc005d8:	02429021 	addu	s2,s2,v0
bfc005dc:	2411568a 	li	s1,22154
bfc005e0:	0260f809 	jalr	s3
bfc005e4:	02202021 	move	a0,s1
bfc005e8:	02429021 	addu	s2,s2,v0
bfc005ec:	2631000d 	addiu	s1,s1,13
bfc005f0:	0260f809 	jalr	s3
bfc005f4:	02202021 	move	a0,s1
bfc005f8:	02429021 	addu	s2,s2,v0
bfc005fc:	2631000d 	addiu	s1,s1,13
bfc00600:	0260f809 	jalr	s3
bfc00604:	02202021 	move	a0,s1
bfc00608:	02429021 	addu	s2,s2,v0
bfc0060c:	2631000d 	addiu	s1,s1,13
bfc00610:	0260f809 	jalr	s3
bfc00614:	02202021 	move	a0,s1
bfc00618:	02429021 	addu	s2,s2,v0
bfc0061c:	2631000d 	addiu	s1,s1,13
bfc00620:	0260f809 	jalr	s3
bfc00624:	02202021 	move	a0,s1
bfc00628:	02429021 	addu	s2,s2,v0
bfc0062c:	2631000d 	addiu	s1,s1,13
bfc00630:	0260f809 	jalr	s3
bfc00634:	02202021 	move	a0,s1
bfc00638:	2631000d 	addiu	s1,s1,13
bfc0063c:	1235001b 	beq	s1,s5,bfc006ac <bitcnts+0x1ac>
bfc00640:	02429021 	addu	s2,s2,v0
bfc00644:	0260f809 	jalr	s3
bfc00648:	02202021 	move	a0,s1
bfc0064c:	2624000d 	addiu	a0,s1,13
bfc00650:	0260f809 	jalr	s3
bfc00654:	02428021 	addu	s0,s2,v0
bfc00658:	2624001a 	addiu	a0,s1,26
bfc0065c:	0260f809 	jalr	s3
bfc00660:	02029021 	addu	s2,s0,v0
bfc00664:	26240027 	addiu	a0,s1,39
bfc00668:	0260f809 	jalr	s3
bfc0066c:	02428021 	addu	s0,s2,v0
bfc00670:	26240034 	addiu	a0,s1,52
bfc00674:	0260f809 	jalr	s3
bfc00678:	02029021 	addu	s2,s0,v0
bfc0067c:	26240041 	addiu	a0,s1,65
bfc00680:	0260f809 	jalr	s3
bfc00684:	02428021 	addu	s0,s2,v0
bfc00688:	2624004e 	addiu	a0,s1,78
bfc0068c:	0260f809 	jalr	s3
bfc00690:	02029021 	addu	s2,s0,v0
bfc00694:	2624005b 	addiu	a0,s1,91
bfc00698:	02428021 	addu	s0,s2,v0
bfc0069c:	0260f809 	jalr	s3
bfc006a0:	26310068 	addiu	s1,s1,104
bfc006a4:	1635ffe7 	bne	s1,s5,bfc00644 <bitcnts+0x144>
bfc006a8:	02029021 	addu	s2,s0,v0
bfc006ac:	26940004 	addiu	s4,s4,4
bfc006b0:	1697ffac 	bne	s4,s7,bfc00564 <bitcnts+0x64>
bfc006b4:	00000000 	nop
bfc006b8:	0ff00437 	jal	bfc010dc <get_ns>
bfc006bc:	00000000 	nop
bfc006c0:	8fbf0034 	lw	ra,52(sp)
bfc006c4:	02401021 	move	v0,s2
bfc006c8:	8fb70030 	lw	s7,48(sp)
bfc006cc:	8fb6002c 	lw	s6,44(sp)
bfc006d0:	8fb50028 	lw	s5,40(sp)
bfc006d4:	8fb40024 	lw	s4,36(sp)
bfc006d8:	8fb30020 	lw	s3,32(sp)
bfc006dc:	8fb2001c 	lw	s2,28(sp)
bfc006e0:	8fb10018 	lw	s1,24(sp)
bfc006e4:	8fb00014 	lw	s0,20(sp)
bfc006e8:	03e00008 	jr	ra
bfc006ec:	27bd0038 	addiu	sp,sp,56
bfc006f0:	26940004 	addiu	s4,s4,4
bfc006f4:	1697ff9b 	bne	s4,s7,bfc00564 <bitcnts+0x64>
bfc006f8:	00009021 	move	s2,zero
bfc006fc:	0bf001ae 	j	bfc006b8 <bitcnts+0x1b8>
bfc00700:	00000000 	nop
	...

bfc00710 <bitcount>:
bitcount():
bfc00710:	3c03aaaa 	lui	v1,0xaaaa
bfc00714:	3462aaaa 	ori	v0,v1,0xaaaa
bfc00718:	3c195555 	lui	t9,0x5555
bfc0071c:	00827824 	and	t7,a0,v0
bfc00720:	37385555 	ori	t8,t9,0x5555
bfc00724:	00987024 	and	t6,a0,t8
bfc00728:	000f6842 	srl	t5,t7,0x1
bfc0072c:	3c0ccccc 	lui	t4,0xcccc
bfc00730:	01ae4021 	addu	t0,t5,t6
bfc00734:	358bcccc 	ori	t3,t4,0xcccc
bfc00738:	3c0a3333 	lui	t2,0x3333
bfc0073c:	010b3824 	and	a3,t0,t3
bfc00740:	35493333 	ori	t1,t2,0x3333
bfc00744:	01092824 	and	a1,t0,t1
bfc00748:	00072082 	srl	a0,a3,0x2
bfc0074c:	3c06f0f0 	lui	a2,0xf0f0
bfc00750:	0085c021 	addu	t8,a0,a1
bfc00754:	34c3f0f0 	ori	v1,a2,0xf0f0
bfc00758:	3c020f0f 	lui	v0,0xf0f
bfc0075c:	03037824 	and	t7,t8,v1
bfc00760:	34590f0f 	ori	t9,v0,0xf0f
bfc00764:	03197024 	and	t6,t8,t9
bfc00768:	000f6902 	srl	t5,t7,0x4
bfc0076c:	3c0cff00 	lui	t4,0xff00
bfc00770:	01ae4021 	addu	t0,t5,t6
bfc00774:	358bff00 	ori	t3,t4,0xff00
bfc00778:	3c0a00ff 	lui	t2,0xff
bfc0077c:	010b3824 	and	a3,t0,t3
bfc00780:	354900ff 	ori	t1,t2,0xff
bfc00784:	01092824 	and	a1,t0,t1
bfc00788:	00073202 	srl	a2,a3,0x8
bfc0078c:	00c52021 	addu	a0,a2,a1
bfc00790:	00041c02 	srl	v1,a0,0x10
bfc00794:	3082ffff 	andi	v0,a0,0xffff
bfc00798:	03e00008 	jr	ra
bfc0079c:	00431021 	addu	v0,v0,v1

bfc007a0 <ntbl_bitcount>:
ntbl_bitcount():
bfc007a0:	3c088000 	lui	t0,0x8000
bfc007a4:	25080060 	addiu	t0,t0,96
bfc007a8:	00046702 	srl	t4,a0,0x1c
bfc007ac:	308a000f 	andi	t2,a0,0xf
bfc007b0:	308200f0 	andi	v0,a0,0xf0
bfc007b4:	01882821 	addu	a1,t4,t0
bfc007b8:	01483021 	addu	a2,t2,t0
bfc007bc:	00021902 	srl	v1,v0,0x4
bfc007c0:	308b0f00 	andi	t3,a0,0xf00
bfc007c4:	80ae0000 	lb	t6,0(a1)
bfc007c8:	80c90000 	lb	t1,0(a2)
bfc007cc:	0068c821 	addu	t9,v1,t0
bfc007d0:	000bc202 	srl	t8,t3,0x8
bfc007d4:	308ff000 	andi	t7,a0,0xf000
bfc007d8:	03083821 	addu	a3,t8,t0
bfc007dc:	832a0000 	lb	t2,0(t9)
bfc007e0:	000f6b02 	srl	t5,t7,0xc
bfc007e4:	00046402 	srl	t4,a0,0x10
bfc007e8:	01c91021 	addu	v0,t6,t1
bfc007ec:	80eb0000 	lb	t3,0(a3)
bfc007f0:	01a82821 	addu	a1,t5,t0
bfc007f4:	3183000f 	andi	v1,t4,0xf
bfc007f8:	00043502 	srl	a2,a0,0x14
bfc007fc:	004ac821 	addu	t9,v0,t2
bfc00800:	80a90000 	lb	t1,0(a1)
bfc00804:	0068c021 	addu	t8,v1,t0
bfc00808:	30cf000f 	andi	t7,a2,0xf
bfc0080c:	00047602 	srl	t6,a0,0x18
bfc00810:	032b6821 	addu	t5,t9,t3
bfc00814:	83070000 	lb	a3,0(t8)
bfc00818:	01e85821 	addu	t3,t7,t0
bfc0081c:	31cc000f 	andi	t4,t6,0xf
bfc00820:	01a95021 	addu	t2,t5,t1
bfc00824:	01882021 	addu	a0,t4,t0
bfc00828:	81650000 	lb	a1,0(t3)
bfc0082c:	01473021 	addu	a2,t2,a3
bfc00830:	80830000 	lb	v1,0(a0)
bfc00834:	00c51021 	addu	v0,a2,a1
bfc00838:	03e00008 	jr	ra
bfc0083c:	00431021 	addu	v0,v0,v1

bfc00840 <BW_btbl_bitcount>:
BW_btbl_bitcount():
bfc00840:	00041202 	srl	v0,a0,0x8
bfc00844:	3c038000 	lui	v1,0x8000
bfc00848:	24670060 	addiu	a3,v1,96
bfc0084c:	305900ff 	andi	t9,v0,0xff
bfc00850:	309800ff 	andi	t8,a0,0xff
bfc00854:	00046402 	srl	t4,a0,0x10
bfc00858:	00046e02 	srl	t5,a0,0x18
bfc0085c:	03277821 	addu	t7,t9,a3
bfc00860:	03077021 	addu	t6,t8,a3
bfc00864:	81e90000 	lb	t1,0(t7)
bfc00868:	81c80000 	lb	t0,0(t6)
bfc0086c:	01a75021 	addu	t2,t5,a3
bfc00870:	318b00ff 	andi	t3,t4,0xff
bfc00874:	01673021 	addu	a2,t3,a3
bfc00878:	81450000 	lb	a1,0(t2)
bfc0087c:	01282021 	addu	a0,t1,t0
bfc00880:	80c30000 	lb	v1,0(a2)
bfc00884:	00851021 	addu	v0,a0,a1
bfc00888:	03e00008 	jr	ra
bfc0088c:	00431021 	addu	v0,v0,v1

bfc00890 <AR_btbl_bitcount>:
AR_btbl_bitcount():
bfc00890:	00042a02 	srl	a1,a0,0x8
bfc00894:	3c068000 	lui	a2,0x8000
bfc00898:	24cc0060 	addiu	t4,a2,96
bfc0089c:	30b900ff 	andi	t9,a1,0xff
bfc008a0:	308200ff 	andi	v0,a0,0xff
bfc008a4:	0004c402 	srl	t8,a0,0x10
bfc008a8:	004c7821 	addu	t7,v0,t4
bfc008ac:	032c7021 	addu	t6,t9,t4
bfc008b0:	330d00ff 	andi	t5,t8,0xff
bfc008b4:	81e80000 	lb	t0,0(t7)
bfc008b8:	81c90000 	lb	t1,0(t6)
bfc008bc:	01ac5021 	addu	t2,t5,t4
bfc008c0:	00045e02 	srl	t3,a0,0x18
bfc008c4:	016c1821 	addu	v1,t3,t4
bfc008c8:	81470000 	lb	a3,0(t2)
bfc008cc:	01283021 	addu	a2,t1,t0
bfc008d0:	80650000 	lb	a1,0(v1)
bfc008d4:	00c71021 	addu	v0,a2,a3
bfc008d8:	00451021 	addu	v0,v0,a1
bfc008dc:	03e00008 	jr	ra
bfc008e0:	afa40000 	sw	a0,0(sp)
	...

bfc008f0 <ntbl_bitcnt>:
ntbl_bitcnt():
bfc008f0:	3c058000 	lui	a1,0x8000
bfc008f4:	24a80160 	addiu	t0,a1,352
bfc008f8:	3083000f 	andi	v1,a0,0xf
bfc008fc:	27bdfff0 	addiu	sp,sp,-16
bfc00900:	00681021 	addu	v0,v1,t0
bfc00904:	00043903 	sra	a3,a0,0x4
bfc00908:	afb2000c 	sw	s2,12(sp)
bfc0090c:	afb10008 	sw	s1,8(sp)
bfc00910:	80450000 	lb	a1,0(v0)
bfc00914:	10e00042 	beqz	a3,bfc00a20 <ntbl_bitcnt+0x130>
bfc00918:	afb00004 	sw	s0,4(sp)
bfc0091c:	00003021 	move	a2,zero
bfc00920:	00072103 	sra	a0,a3,0x4
bfc00924:	30ef000f 	andi	t7,a3,0xf
bfc00928:	3089000f 	andi	t1,a0,0xf
bfc0092c:	01e81821 	addu	v1,t7,t0
bfc00930:	01287821 	addu	t7,t1,t0
bfc00934:	00074a03 	sra	t1,a3,0x8
bfc00938:	312a000f 	andi	t2,t1,0xf
bfc0093c:	0148c021 	addu	t8,t2,t0
bfc00940:	00075303 	sra	t2,a3,0xc
bfc00944:	314b000f 	andi	t3,t2,0xf
bfc00948:	0168c821 	addu	t9,t3,t0
bfc0094c:	00075c03 	sra	t3,a3,0x10
bfc00950:	316c000f 	andi	t4,t3,0xf
bfc00954:	01888021 	addu	s0,t4,t0
bfc00958:	00076503 	sra	t4,a3,0x14
bfc0095c:	318d000f 	andi	t5,t4,0xf
bfc00960:	01a88821 	addu	s1,t5,t0
bfc00964:	00076e03 	sra	t5,a3,0x18
bfc00968:	31ae000f 	andi	t6,t5,0xf
bfc0096c:	01c89021 	addu	s2,t6,t0
bfc00970:	00077703 	sra	t6,a3,0x1c
bfc00974:	31c2000f 	andi	v0,t6,0xf
bfc00978:	00c53021 	addu	a2,a2,a1
bfc0097c:	00481021 	addu	v0,v0,t0
bfc00980:	80650000 	lb	a1,0(v1)
bfc00984:	1080001d 	beqz	a0,bfc009fc <ntbl_bitcnt+0x10c>
bfc00988:	00073fc3 	sra	a3,a3,0x1f
bfc0098c:	00c53021 	addu	a2,a2,a1
bfc00990:	81e50000 	lb	a1,0(t7)
bfc00994:	11200019 	beqz	t1,bfc009fc <ntbl_bitcnt+0x10c>
bfc00998:	00000000 	nop
bfc0099c:	00c53021 	addu	a2,a2,a1
bfc009a0:	83050000 	lb	a1,0(t8)
bfc009a4:	11400015 	beqz	t2,bfc009fc <ntbl_bitcnt+0x10c>
bfc009a8:	00000000 	nop
bfc009ac:	00c53021 	addu	a2,a2,a1
bfc009b0:	83250000 	lb	a1,0(t9)
bfc009b4:	11600011 	beqz	t3,bfc009fc <ntbl_bitcnt+0x10c>
bfc009b8:	00000000 	nop
bfc009bc:	00c53021 	addu	a2,a2,a1
bfc009c0:	82050000 	lb	a1,0(s0)
bfc009c4:	1180000d 	beqz	t4,bfc009fc <ntbl_bitcnt+0x10c>
bfc009c8:	00000000 	nop
bfc009cc:	00c53021 	addu	a2,a2,a1
bfc009d0:	82250000 	lb	a1,0(s1)
bfc009d4:	11a00009 	beqz	t5,bfc009fc <ntbl_bitcnt+0x10c>
bfc009d8:	00000000 	nop
bfc009dc:	00c53021 	addu	a2,a2,a1
bfc009e0:	82450000 	lb	a1,0(s2)
bfc009e4:	11c00005 	beqz	t6,bfc009fc <ntbl_bitcnt+0x10c>
bfc009e8:	00000000 	nop
bfc009ec:	00c53021 	addu	a2,a2,a1
bfc009f0:	80450000 	lb	a1,0(v0)
bfc009f4:	14e0ffcb 	bnez	a3,bfc00924 <ntbl_bitcnt+0x34>
bfc009f8:	00072103 	sra	a0,a3,0x4
bfc009fc:	00c51021 	addu	v0,a2,a1
bfc00a00:	8fb2000c 	lw	s2,12(sp)
bfc00a04:	8fb10008 	lw	s1,8(sp)
bfc00a08:	8fb00004 	lw	s0,4(sp)
bfc00a0c:	03e00008 	jr	ra
bfc00a10:	27bd0010 	addiu	sp,sp,16
	...
bfc00a20:	0bf0027f 	j	bfc009fc <ntbl_bitcnt+0x10c>
bfc00a24:	00003021 	move	a2,zero
	...

bfc00a30 <btbl_bitcnt>:
btbl_bitcnt():
bfc00a30:	27bdffa8 	addiu	sp,sp,-88
bfc00a34:	3c038000 	lui	v1,0x8000
bfc00a38:	afb50044 	sw	s5,68(sp)
bfc00a3c:	308500ff 	andi	a1,a0,0xff
bfc00a40:	24750160 	addiu	s5,v1,352
bfc00a44:	00b51021 	addu	v0,a1,s5
bfc00a48:	00043203 	sra	a2,a0,0x8
bfc00a4c:	afb40040 	sw	s4,64(sp)
bfc00a50:	afbf0054 	sw	ra,84(sp)
bfc00a54:	afbe0050 	sw	s8,80(sp)
bfc00a58:	afb7004c 	sw	s7,76(sp)
bfc00a5c:	afb60048 	sw	s6,72(sp)
bfc00a60:	afb3003c 	sw	s3,60(sp)
bfc00a64:	afb20038 	sw	s2,56(sp)
bfc00a68:	afb10034 	sw	s1,52(sp)
bfc00a6c:	afb00030 	sw	s0,48(sp)
bfc00a70:	00801821 	move	v1,a0
bfc00a74:	80540000 	lb	s4,0(v0)
bfc00a78:	14c00011 	bnez	a2,bfc00ac0 <btbl_bitcnt+0x90>
bfc00a7c:	afa40058 	sw	a0,88(sp)
bfc00a80:	8fbf0054 	lw	ra,84(sp)
bfc00a84:	02801021 	move	v0,s4
bfc00a88:	8fbe0050 	lw	s8,80(sp)
bfc00a8c:	8fb7004c 	lw	s7,76(sp)
bfc00a90:	8fb60048 	lw	s6,72(sp)
bfc00a94:	8fb50044 	lw	s5,68(sp)
bfc00a98:	8fb40040 	lw	s4,64(sp)
bfc00a9c:	8fb3003c 	lw	s3,60(sp)
bfc00aa0:	8fb20038 	lw	s2,56(sp)
bfc00aa4:	8fb10034 	lw	s1,52(sp)
bfc00aa8:	8fb00030 	lw	s0,48(sp)
bfc00aac:	03e00008 	jr	ra
bfc00ab0:	27bd0058 	addiu	sp,sp,88
	...
bfc00ac0:	30c400ff 	andi	a0,a2,0xff
bfc00ac4:	00953821 	addu	a3,a0,s5
bfc00ac8:	00032403 	sra	a0,v1,0x10
bfc00acc:	80f60000 	lb	s6,0(a3)
bfc00ad0:	14800003 	bnez	a0,bfc00ae0 <btbl_bitcnt+0xb0>
bfc00ad4:	afa60010 	sw	a2,16(sp)
bfc00ad8:	0bf002a0 	j	bfc00a80 <btbl_bitcnt+0x50>
bfc00adc:	0296a021 	addu	s4,s4,s6
bfc00ae0:	308800ff 	andi	t0,a0,0xff
bfc00ae4:	01153021 	addu	a2,t0,s5
bfc00ae8:	00032e03 	sra	a1,v1,0x18
bfc00aec:	80d70000 	lb	s7,0(a2)
bfc00af0:	14a00007 	bnez	a1,bfc00b10 <btbl_bitcnt+0xe0>
bfc00af4:	afa40014 	sw	a0,20(sp)
bfc00af8:	02d7b021 	addu	s6,s6,s7
bfc00afc:	0bf002a0 	j	bfc00a80 <btbl_bitcnt+0x50>
bfc00b00:	0296a021 	addu	s4,s4,s6
	...
bfc00b10:	30aa00ff 	andi	t2,a1,0xff
bfc00b14:	01554821 	addu	t1,t2,s5
bfc00b18:	000337c3 	sra	a2,v1,0x1f
bfc00b1c:	813e0000 	lb	s8,0(t1)
bfc00b20:	14c00007 	bnez	a2,bfc00b40 <btbl_bitcnt+0x110>
bfc00b24:	afa50018 	sw	a1,24(sp)
bfc00b28:	02feb821 	addu	s7,s7,s8
bfc00b2c:	0bf002bf 	j	bfc00afc <btbl_bitcnt+0xcc>
bfc00b30:	02d7b021 	addu	s6,s6,s7
	...
bfc00b40:	30c200ff 	andi	v0,a2,0xff
bfc00b44:	0055f821 	addu	ra,v0,s5
bfc00b48:	83f00000 	lb	s0,0(ra)
bfc00b4c:	00c02021 	move	a0,a2
bfc00b50:	afa6001c 	sw	a2,28(sp)
bfc00b54:	afa60020 	sw	a2,32(sp)
bfc00b58:	afa60024 	sw	a2,36(sp)
bfc00b5c:	afa60028 	sw	a2,40(sp)
bfc00b60:	0ff0028c 	jal	bfc00a30 <btbl_bitcnt>
bfc00b64:	afa6002c 	sw	a2,44(sp)
bfc00b68:	03d0c821 	addu	t9,s8,s0
bfc00b6c:	93af002c 	lbu	t7,44(sp)
bfc00b70:	0322c021 	addu	t8,t9,v0
bfc00b74:	03107021 	addu	t6,t8,s0
bfc00b78:	01f56821 	addu	t5,t7,s5
bfc00b7c:	01d06021 	addu	t4,t6,s0
bfc00b80:	81ab0000 	lb	t3,0(t5)
bfc00b84:	01908021 	addu	s0,t4,s0
bfc00b88:	020bf021 	addu	s8,s0,t3
bfc00b8c:	0bf002cb 	j	bfc00b2c <btbl_bitcnt+0xfc>
bfc00b90:	02feb821 	addu	s7,s7,s8
	...

bfc00ba0 <bit_count>:
bit_count():
bfc00ba0:	10800027 	beqz	a0,bfc00c40 <bit_count+0xa0>
bfc00ba4:	00801021 	move	v0,a0
bfc00ba8:	00002821 	move	a1,zero
bfc00bac:	2446ffff 	addiu	a2,v0,-1
bfc00bb0:	00462024 	and	a0,v0,a2
bfc00bb4:	2487ffff 	addiu	a3,a0,-1
bfc00bb8:	00873024 	and	a2,a0,a3
bfc00bbc:	24c8ffff 	addiu	t0,a2,-1
bfc00bc0:	00c83824 	and	a3,a2,t0
bfc00bc4:	24e9ffff 	addiu	t1,a3,-1
bfc00bc8:	00e94024 	and	t0,a3,t1
bfc00bcc:	250affff 	addiu	t2,t0,-1
bfc00bd0:	010a4824 	and	t1,t0,t2
bfc00bd4:	2522ffff 	addiu	v0,t1,-1
bfc00bd8:	01225024 	and	t2,t1,v0
bfc00bdc:	2543ffff 	addiu	v1,t2,-1
bfc00be0:	24a50001 	addiu	a1,a1,1
bfc00be4:	01435824 	and	t3,t2,v1
bfc00be8:	10800011 	beqz	a0,bfc00c30 <bit_count+0x90>
bfc00bec:	00a01821 	move	v1,a1
bfc00bf0:	256cffff 	addiu	t4,t3,-1
bfc00bf4:	016c1024 	and	v0,t3,t4
bfc00bf8:	10c0000d 	beqz	a2,bfc00c30 <bit_count+0x90>
bfc00bfc:	24a50001 	addiu	a1,a1,1
bfc00c00:	10e0000b 	beqz	a3,bfc00c30 <bit_count+0x90>
bfc00c04:	24650002 	addiu	a1,v1,2
bfc00c08:	11000009 	beqz	t0,bfc00c30 <bit_count+0x90>
bfc00c0c:	24650003 	addiu	a1,v1,3
bfc00c10:	11200007 	beqz	t1,bfc00c30 <bit_count+0x90>
bfc00c14:	24650004 	addiu	a1,v1,4
bfc00c18:	11400005 	beqz	t2,bfc00c30 <bit_count+0x90>
bfc00c1c:	24650005 	addiu	a1,v1,5
bfc00c20:	11600003 	beqz	t3,bfc00c30 <bit_count+0x90>
bfc00c24:	24650006 	addiu	a1,v1,6
bfc00c28:	1440ffe0 	bnez	v0,bfc00bac <bit_count+0xc>
bfc00c2c:	24650007 	addiu	a1,v1,7
bfc00c30:	03e00008 	jr	ra
bfc00c34:	00a01021 	move	v0,a1
	...
bfc00c40:	00002821 	move	a1,zero
bfc00c44:	03e00008 	jr	ra
bfc00c48:	00a01021 	move	v0,a1
bfc00c4c:	00000000 	nop

bfc00c50 <printf>:
printf():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc00c50:	27bdffc8 	addiu	sp,sp,-56
bfc00c54:	afb30024 	sw	s3,36(sp)
bfc00c58:	afbf0034 	sw	ra,52(sp)
bfc00c5c:	afb60030 	sw	s6,48(sp)
bfc00c60:	afb5002c 	sw	s5,44(sp)
bfc00c64:	afb40028 	sw	s4,40(sp)
bfc00c68:	afb20020 	sw	s2,32(sp)
bfc00c6c:	afb1001c 	sw	s1,28(sp)
bfc00c70:	afb00018 	sw	s0,24(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00c74:	80900000 	lb	s0,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc00c78:	00809821 	move	s3,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:8
bfc00c7c:	27a4003c 	addiu	a0,sp,60
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc00c80:	afa5003c 	sw	a1,60(sp)
bfc00c84:	afa60040 	sw	a2,64(sp)
bfc00c88:	afa70044 	sw	a3,68(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00c8c:	12000013 	beqz	s0,bfc00cdc <printf+0x8c>
bfc00c90:	afa40010 	sw	a0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00c94:	3c028000 	lui	v0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc00c98:	00809021 	move	s2,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00c9c:	24560260 	addiu	s6,v0,608
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc00ca0:	00008821 	move	s1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00ca4:	24140025 	li	s4,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00ca8:	2415000a 	li	s5,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00cac:	12140016 	beq	s0,s4,bfc00d08 <printf+0xb8>
bfc00cb0:	02711021 	addu	v0,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00cb4:	1215002f 	beq	s0,s5,bfc00d74 <printf+0x124>
bfc00cb8:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:80
bfc00cbc:	0ff003ad 	jal	bfc00eb4 <putchar>
bfc00cc0:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00cc4:	26310001 	addiu	s1,s1,1
bfc00cc8:	02711021 	addu	v0,s3,s1
bfc00ccc:	80500000 	lb	s0,0(v0)
bfc00cd0:	00000000 	nop
bfc00cd4:	1600fff5 	bnez	s0,bfc00cac <printf+0x5c>
bfc00cd8:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:84
bfc00cdc:	8fbf0034 	lw	ra,52(sp)
bfc00ce0:	00001021 	move	v0,zero
bfc00ce4:	8fb60030 	lw	s6,48(sp)
bfc00ce8:	8fb5002c 	lw	s5,44(sp)
bfc00cec:	8fb40028 	lw	s4,40(sp)
bfc00cf0:	8fb30024 	lw	s3,36(sp)
bfc00cf4:	8fb20020 	lw	s2,32(sp)
bfc00cf8:	8fb1001c 	lw	s1,28(sp)
bfc00cfc:	8fb00018 	lw	s0,24(sp)
bfc00d00:	03e00008 	jr	ra
bfc00d04:	27bd0038 	addiu	sp,sp,56
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00d08:	80440001 	lb	a0,1(v0)
bfc00d0c:	24050001 	li	a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00d10:	2482ffdb 	addiu	v0,a0,-37
bfc00d14:	304200ff 	andi	v0,v0,0xff
bfc00d18:	2c430054 	sltiu	v1,v0,84
bfc00d1c:	14600005 	bnez	v1,bfc00d34 <printf+0xe4>
bfc00d20:	00021080 	sll	v0,v0,0x2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:73
bfc00d24:	0ff003ad 	jal	bfc00eb4 <putchar>
bfc00d28:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00d2c:	0bf00332 	j	bfc00cc8 <printf+0x78>
bfc00d30:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00d34:	02c21021 	addu	v0,s6,v0
bfc00d38:	8c430000 	lw	v1,0(v0)
bfc00d3c:	00000000 	nop
bfc00d40:	00600008 	jr	v1
bfc00d44:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:65
bfc00d48:	26310001 	addiu	s1,s1,1
bfc00d4c:	02711021 	addu	v0,s3,s1
bfc00d50:	80440001 	lb	a0,1(v0)
bfc00d54:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00d58:	2482ffcf 	addiu	v0,a0,-49
bfc00d5c:	304200ff 	andi	v0,v0,0xff
bfc00d60:	2c420009 	sltiu	v0,v0,9
bfc00d64:	1440003f 	bnez	v0,bfc00e64 <printf+0x214>
bfc00d68:	00002821 	move	a1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00d6c:	0bf00345 	j	bfc00d14 <printf+0xc4>
bfc00d70:	2482ffdb 	addiu	v0,a0,-37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00d74:	0ff003ad 	jal	bfc00eb4 <putchar>
bfc00d78:	2404000d 	li	a0,13
bfc00d7c:	0bf0032f 	j	bfc00cbc <printf+0x6c>
bfc00d80:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:30
bfc00d84:	8e440000 	lw	a0,0(s2)
bfc00d88:	2406000a 	li	a2,10
bfc00d8c:	0ff003e8 	jal	bfc00fa0 <printbase>
bfc00d90:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:31
bfc00d94:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:32
bfc00d98:	0bf00331 	j	bfc00cc4 <printf+0x74>
bfc00d9c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:20
bfc00da0:	8e440000 	lw	a0,0(s2)
bfc00da4:	0ff003b8 	jal	bfc00ee0 <putstring>
bfc00da8:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:21
bfc00dac:	0bf00331 	j	bfc00cc4 <printf+0x74>
bfc00db0:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:56
bfc00db4:	8e440000 	lw	a0,0(s2)
bfc00db8:	24060010 	li	a2,16
bfc00dbc:	0ff003e8 	jal	bfc00fa0 <printbase>
bfc00dc0:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:57
bfc00dc4:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:58
bfc00dc8:	0bf00331 	j	bfc00cc4 <printf+0x74>
bfc00dcc:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:45
bfc00dd0:	8e440000 	lw	a0,0(s2)
bfc00dd4:	24060008 	li	a2,8
bfc00dd8:	0ff003e8 	jal	bfc00fa0 <printbase>
bfc00ddc:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:46
bfc00de0:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:47
bfc00de4:	0bf00331 	j	bfc00cc4 <printf+0x74>
bfc00de8:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:40
bfc00dec:	8e440000 	lw	a0,0(s2)
bfc00df0:	2406000a 	li	a2,10
bfc00df4:	0ff003e8 	jal	bfc00fa0 <printbase>
bfc00df8:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:41
bfc00dfc:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:42
bfc00e00:	0bf00331 	j	bfc00cc4 <printf+0x74>
bfc00e04:	26310002 	addiu	s1,s1,2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:35
bfc00e08:	8e440000 	lw	a0,0(s2)
bfc00e0c:	2406000a 	li	a2,10
bfc00e10:	0ff003e8 	jal	bfc00fa0 <printbase>
bfc00e14:	24070001 	li	a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:36
bfc00e18:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:37
bfc00e1c:	0bf00331 	j	bfc00cc4 <printf+0x74>
bfc00e20:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:25
bfc00e24:	8e440000 	lw	a0,0(s2)
bfc00e28:	0ff003ad 	jal	bfc00eb4 <putchar>
bfc00e2c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:26
bfc00e30:	0bf00331 	j	bfc00cc4 <printf+0x74>
bfc00e34:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:50
bfc00e38:	8e440000 	lw	a0,0(s2)
bfc00e3c:	24060002 	li	a2,2
bfc00e40:	0ff003e8 	jal	bfc00fa0 <printbase>
bfc00e44:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:51
bfc00e48:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:52
bfc00e4c:	0bf00331 	j	bfc00cc4 <printf+0x74>
bfc00e50:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:61
bfc00e54:	0ff003ad 	jal	bfc00eb4 <putchar>
bfc00e58:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:62
bfc00e5c:	0bf00331 	j	bfc00cc4 <printf+0x74>
bfc00e60:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00e64:	02713021 	addu	a2,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00e68:	000510c0 	sll	v0,a1,0x3
bfc00e6c:	00051840 	sll	v1,a1,0x1
bfc00e70:	00621821 	addu	v1,v1,v0
bfc00e74:	00641821 	addu	v1,v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00e78:	80c40002 	lb	a0,2(a2)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00e7c:	2465ffd0 	addiu	a1,v1,-48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00e80:	2482ffcf 	addiu	v0,a0,-49
bfc00e84:	304200ff 	andi	v0,v0,0xff
bfc00e88:	2c420009 	sltiu	v0,v0,9
bfc00e8c:	26310001 	addiu	s1,s1,1
bfc00e90:	1040ff9f 	beqz	v0,bfc00d10 <printf+0xc0>
bfc00e94:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00e98:	0bf0039b 	j	bfc00e6c <printf+0x21c>
bfc00e9c:	000510c0 	sll	v0,a1,0x3

bfc00ea0 <tgt_putchar>:
tgt_putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:9
bfc00ea0:	3c018000 	lui	at,0x8000
bfc00ea4:	03e00008 	jr	ra
bfc00ea8:	a0247ffc 	sb	a0,32764(at)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:18
bfc00eac:	03e00008 	jr	ra
bfc00eb0:	00000000 	nop

bfc00eb4 <putchar>:
putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:2
bfc00eb4:	27bdffe8 	addiu	sp,sp,-24
bfc00eb8:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:3
bfc00ebc:	0ff003a8 	jal	bfc00ea0 <tgt_putchar>
bfc00ec0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:5
bfc00ec4:	8fbf0014 	lw	ra,20(sp)
bfc00ec8:	00001021 	move	v0,zero
bfc00ecc:	03e00008 	jr	ra
bfc00ed0:	27bd0018 	addiu	sp,sp,24
	...

bfc00ee0 <putstring>:
putstring():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:2
bfc00ee0:	27bdffe0 	addiu	sp,sp,-32
bfc00ee4:	afb10014 	sw	s1,20(sp)
bfc00ee8:	afbf001c 	sw	ra,28(sp)
bfc00eec:	afb20018 	sw	s2,24(sp)
bfc00ef0:	afb00010 	sw	s0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00ef4:	80900000 	lb	s0,0(a0)
bfc00ef8:	00000000 	nop
bfc00efc:	12000013 	beqz	s0,bfc00f4c <putstring+0x6c>
bfc00f00:	00808821 	move	s1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc00f04:	0bf003c9 	j	bfc00f24 <putstring+0x44>
bfc00f08:	2412000a 	li	s2,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc00f0c:	0ff003ad 	jal	bfc00eb4 <putchar>
bfc00f10:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00f14:	82300000 	lb	s0,0(s1)
bfc00f18:	00000000 	nop
bfc00f1c:	1200000b 	beqz	s0,bfc00f4c <putstring+0x6c>
bfc00f20:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc00f24:	1612fff9 	bne	s0,s2,bfc00f0c <putstring+0x2c>
bfc00f28:	26310001 	addiu	s1,s1,1
bfc00f2c:	0ff003ad 	jal	bfc00eb4 <putchar>
bfc00f30:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc00f34:	0ff003ad 	jal	bfc00eb4 <putchar>
bfc00f38:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00f3c:	82300000 	lb	s0,0(s1)
bfc00f40:	00000000 	nop
bfc00f44:	1600fff7 	bnez	s0,bfc00f24 <putstring+0x44>
bfc00f48:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:11
bfc00f4c:	8fbf001c 	lw	ra,28(sp)
bfc00f50:	00001021 	move	v0,zero
bfc00f54:	8fb20018 	lw	s2,24(sp)
bfc00f58:	8fb10014 	lw	s1,20(sp)
bfc00f5c:	8fb00010 	lw	s0,16(sp)
bfc00f60:	03e00008 	jr	ra
bfc00f64:	27bd0020 	addiu	sp,sp,32

bfc00f68 <puts>:
puts():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:15
bfc00f68:	27bdffe8 	addiu	sp,sp,-24
bfc00f6c:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:16
bfc00f70:	0ff003b8 	jal	bfc00ee0 <putstring>
bfc00f74:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:17
bfc00f78:	0ff003ad 	jal	bfc00eb4 <putchar>
bfc00f7c:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:18
bfc00f80:	0ff003ad 	jal	bfc00eb4 <putchar>
bfc00f84:	2404000a 	li	a0,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:20
bfc00f88:	8fbf0014 	lw	ra,20(sp)
bfc00f8c:	00001021 	move	v0,zero
bfc00f90:	03e00008 	jr	ra
bfc00f94:	27bd0018 	addiu	sp,sp,24
	...

bfc00fa0 <printbase>:
printbase():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc00fa0:	27bdff98 	addiu	sp,sp,-104
bfc00fa4:	afb30060 	sw	s3,96(sp)
bfc00fa8:	afb2005c 	sw	s2,92(sp)
bfc00fac:	afbf0064 	sw	ra,100(sp)
bfc00fb0:	afb10058 	sw	s1,88(sp)
bfc00fb4:	afb00054 	sw	s0,84(sp)
bfc00fb8:	00801821 	move	v1,a0
bfc00fbc:	00a09821 	move	s3,a1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:7
bfc00fc0:	10e00003 	beqz	a3,bfc00fd0 <printbase+0x30>
bfc00fc4:	00c09021 	move	s2,a2
bfc00fc8:	0480002f 	bltz	a0,bfc01088 <printbase+0xe8>
bfc00fcc:	2404002d 	li	a0,45
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:12
bfc00fd0:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc00fd4:	1200000c 	beqz	s0,bfc01008 <printbase+0x68>
bfc00fd8:	00008821 	move	s1,zero
bfc00fdc:	27a50010 	addiu	a1,sp,16
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc00fe0:	16400002 	bnez	s2,bfc00fec <printbase+0x4c>
bfc00fe4:	0212001b 	divu	zero,s0,s2
bfc00fe8:	0007000d 	break	0x7
bfc00fec:	00b12021 	addu	a0,a1,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc00ff0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc00ff4:	00001010 	mfhi	v0
bfc00ff8:	a0820000 	sb	v0,0(a0)
bfc00ffc:	00001812 	mflo	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc01000:	1460fff7 	bnez	v1,bfc00fe0 <printbase+0x40>
bfc01004:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc01008:	0233102a 	slt	v0,s1,s3
bfc0100c:	10400002 	beqz	v0,bfc01018 <printbase+0x78>
bfc01010:	02201821 	move	v1,s1
bfc01014:	02601821 	move	v1,s3
bfc01018:	1060000c 	beqz	v1,bfc0104c <printbase+0xac>
bfc0101c:	2470ffff 	addiu	s0,v1,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc01020:	27a20010 	addiu	v0,sp,16
bfc01024:	00509021 	addu	s2,v0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc01028:	26020001 	addiu	v0,s0,1
bfc0102c:	0222102a 	slt	v0,s1,v0
bfc01030:	1040000e 	beqz	v0,bfc0106c <printbase+0xcc>
bfc01034:	24040030 	li	a0,48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc01038:	02009821 	move	s3,s0
bfc0103c:	0ff003ad 	jal	bfc00eb4 <putchar>
bfc01040:	2610ffff 	addiu	s0,s0,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc01044:	1660fff8 	bnez	s3,bfc01028 <printbase+0x88>
bfc01048:	2652ffff 	addiu	s2,s2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:28
bfc0104c:	8fbf0064 	lw	ra,100(sp)
bfc01050:	00001021 	move	v0,zero
bfc01054:	8fb30060 	lw	s3,96(sp)
bfc01058:	8fb2005c 	lw	s2,92(sp)
bfc0105c:	8fb10058 	lw	s1,88(sp)
bfc01060:	8fb00054 	lw	s0,84(sp)
bfc01064:	03e00008 	jr	ra
bfc01068:	27bd0068 	addiu	sp,sp,104
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc0106c:	82440000 	lb	a0,0(s2)
bfc01070:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc01074:	2882000a 	slti	v0,a0,10
bfc01078:	14400007 	bnez	v0,bfc01098 <printbase+0xf8>
bfc0107c:	02009821 	move	s3,s0
bfc01080:	0bf0040f 	j	bfc0103c <printbase+0x9c>
bfc01084:	24840057 	addiu	a0,a0,87
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:10
bfc01088:	0ff003ad 	jal	bfc00eb4 <putchar>
bfc0108c:	00038023 	negu	s0,v1
bfc01090:	0bf003f5 	j	bfc00fd4 <printbase+0x34>
bfc01094:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc01098:	0bf0040e 	j	bfc01038 <printbase+0x98>
bfc0109c:	24840030 	addiu	a0,a0,48

bfc010a0 <_get_count>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:15
bfc010a0:	3c01bfd0 	lui	at,0xbfd0
bfc010a4:	3421e000 	ori	at,at,0xe000
bfc010a8:	8c220000 	lw	v0,0(at)
bfc010ac:	03e00008 	jr	ra
bfc010b0:	00000000 	nop

bfc010b4 <get_count>:
get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:20
bfc010b4:	3c01bfd0 	lui	at,0xbfd0
bfc010b8:	3421e000 	ori	at,at,0xe000
bfc010bc:	8c220000 	lw	v0,0(at)
bfc010c0:	03e00008 	jr	ra
bfc010c4:	00000000 	nop

bfc010c8 <get_clock>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc010c8:	3c01bfd0 	lui	at,0xbfd0
bfc010cc:	3421e000 	ori	at,at,0xe000
bfc010d0:	8c220000 	lw	v0,0(at)
get_clock():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:39
bfc010d4:	03e00008 	jr	ra
bfc010d8:	00021040 	sll	v0,v0,0x1

bfc010dc <get_ns>:
get_ns():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:45
bfc010dc:	40024800 	mfc0	v0,$9
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:51
bfc010e0:	03e00008 	jr	ra
bfc010e4:	00021040 	sll	v0,v0,0x1

bfc010e8 <clock_gettime>:
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:23
bfc010e8:	27bdffe8 	addiu	sp,sp,-24
bfc010ec:	afbf0014 	sw	ra,20(sp)
bfc010f0:	00a04821 	move	t1,a1
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc010f4:	3c01bfd0 	lui	at,0xbfd0
bfc010f8:	3421e000 	ori	at,at,0xe000
bfc010fc:	8c230000 	lw	v1,0(at)
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc01100:	240203e8 	li	v0,1000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc01104:	14400002 	bnez	v0,bfc01110 <clock_gettime+0x28>
bfc01108:	0062001b 	divu	zero,v1,v0
bfc0110c:	0007000d 	break	0x7
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc01110:	00031840 	sll	v1,v1,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc01114:	3c073b9a 	lui	a3,0x3b9a
bfc01118:	34e7ca00 	ori	a3,a3,0xca00
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc0111c:	3c048000 	lui	a0,0x8000
bfc01120:	248403b0 	addiu	a0,a0,944
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc01124:	00003012 	mflo	a2
bfc01128:	00063040 	sll	a2,a2,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc0112c:	14400002 	bnez	v0,bfc01138 <clock_gettime+0x50>
bfc01130:	0062001b 	divu	zero,v1,v0
bfc01134:	0007000d 	break	0x7
bfc01138:	00002810 	mfhi	a1
bfc0113c:	ad250004 	sw	a1,4(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc01140:	14400002 	bnez	v0,bfc0114c <clock_gettime+0x64>
bfc01144:	00c2001b 	divu	zero,a2,v0
bfc01148:	0007000d 	break	0x7
bfc0114c:	00005010 	mfhi	t2
bfc01150:	ad2a0008 	sw	t2,8(t1)
bfc01154:	00004012 	mflo	t0
bfc01158:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc0115c:	14e00002 	bnez	a3,bfc01168 <clock_gettime+0x80>
bfc01160:	00c7001b 	divu	zero,a2,a3
bfc01164:	0007000d 	break	0x7
bfc01168:	00003012 	mflo	a2
bfc0116c:	ad260000 	sw	a2,0(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:28
bfc01170:	14400002 	bnez	v0,bfc0117c <clock_gettime+0x94>
bfc01174:	0102001b 	divu	zero,t0,v0
bfc01178:	0007000d 	break	0x7
bfc0117c:	00001810 	mfhi	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc01180:	0ff00314 	jal	bfc00c50 <printf>
bfc01184:	ad23000c 	sw	v1,12(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:32
bfc01188:	8fbf0014 	lw	ra,20(sp)
bfc0118c:	00001021 	move	v0,zero
bfc01190:	03e00008 	jr	ra
bfc01194:	27bd0018 	addiu	sp,sp,24
	...

bfc011a0 <get_epc>:
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc011a0:	40027000 	mfc0	v0,c0_epc
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:9
bfc011a4:	03e00008 	jr	ra
bfc011a8:	00000000 	nop

bfc011ac <get_cause>:
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc011ac:	40026800 	mfc0	v0,c0_cause
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:19
bfc011b0:	03e00008 	jr	ra
bfc011b4:	00000000 	nop

bfc011b8 <exception>:
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc011b8:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:22
bfc011bc:	27bdffe8 	addiu	sp,sp,-24
bfc011c0:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc011c4:	0ff00314 	jal	bfc00c50 <printf>
bfc011c8:	248403c4 	addiu	a0,a0,964
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc011cc:	3c048000 	lui	a0,0x8000
bfc011d0:	248403e0 	addiu	a0,a0,992
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc011d4:	40057000 	mfc0	a1,c0_epc
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc011d8:	0ff00314 	jal	bfc00c50 <printf>
bfc011dc:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc011e0:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc011e4:	8fbf0014 	lw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc011e8:	248403f0 	addiu	a0,a0,1008
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc011ec:	27bd0018 	addiu	sp,sp,24
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc011f0:	40056800 	mfc0	a1,c0_cause
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc011f4:	0bf00314 	j	bfc00c50 <printf>
bfc011f8:	00000000 	nop
bfc011fc:	00000000 	nop
