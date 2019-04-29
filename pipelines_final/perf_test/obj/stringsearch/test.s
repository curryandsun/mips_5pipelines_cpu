
obj/stringsearch/main.elf:     file format elf32-tradlittlemips
obj/stringsearch/main.elf


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
bfc00010:	27bd4c6c 	addiu	sp,sp,19564
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:55
bfc00014:	3c1c8001 	lui	gp,0x8001
bfc00018:	279c8c90 	addiu	gp,gp,-29552
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
bfc00380:	0ff00576 	jal	bfc015d8 <exception>
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
bfc0039c:	0ff00535 	jal	bfc014d4 <get_count>
bfc003a0:	afb00014 	sw	s0,20(sp)
bfc003a4:	0ff001e8 	jal	bfc007a0 <search_small>
bfc003a8:	00408021 	move	s0,v0
bfc003ac:	0ff00535 	jal	bfc014d4 <get_count>
bfc003b0:	00408821 	move	s1,v0
bfc003b4:	3c07bfd0 	lui	a3,0xbfd0
bfc003b8:	00501023 	subu	v0,v0,s0
bfc003bc:	34e3f010 	ori	v1,a3,0xf010
bfc003c0:	12200013 	beqz	s1,bfc00410 <shell+0x80>
bfc003c4:	ac620000 	sw	v0,0(v1)
bfc003c8:	34e9f000 	ori	t1,a3,0xf000
bfc003cc:	34edf008 	ori	t5,a3,0xf008
bfc003d0:	34ebf004 	ori	t3,a3,0xf004
bfc003d4:	240c0001 	li	t4,1
bfc003d8:	240a0002 	li	t2,2
bfc003dc:	3c0e8000 	lui	t6,0x8000
bfc003e0:	adac0000 	sw	t4,0(t5)
bfc003e4:	02202821 	move	a1,s1
bfc003e8:	ad6a0000 	sw	t2,0(t3)
bfc003ec:	8fbf001c 	lw	ra,28(sp)
bfc003f0:	8fb10018 	lw	s1,24(sp)
bfc003f4:	8fb00014 	lw	s0,20(sp)
bfc003f8:	ad200000 	sw	zero,0(t1)
bfc003fc:	25c40000 	addiu	a0,t6,0
bfc00400:	0bf00338 	j	bfc00ce0 <printf>
bfc00404:	27bd0020 	addiu	sp,sp,32
	...
bfc00410:	24040001 	li	a0,1
bfc00414:	34e5f008 	ori	a1,a3,0xf008
bfc00418:	34e6f000 	ori	a2,a3,0xf000
bfc0041c:	34e8f004 	ori	t0,a3,0xf004
bfc00420:	3c0e8000 	lui	t6,0x8000
bfc00424:	3407ffff 	li	a3,0xffff
bfc00428:	ad040000 	sw	a0,0(t0)
bfc0042c:	8fbf001c 	lw	ra,28(sp)
bfc00430:	acc70000 	sw	a3,0(a2)
bfc00434:	8fb00014 	lw	s0,20(sp)
bfc00438:	aca40000 	sw	a0,0(a1)
bfc0043c:	02202821 	move	a1,s1
bfc00440:	25c40000 	addiu	a0,t6,0
bfc00444:	8fb10018 	lw	s1,24(sp)
bfc00448:	0bf00338 	j	bfc00ce0 <printf>
bfc0044c:	27bd0020 	addiu	sp,sp,32

bfc00450 <init_search>:
init_search():
bfc00450:	27bdffe8 	addiu	sp,sp,-24
bfc00454:	afb00010 	sw	s0,16(sp)
bfc00458:	afbf0014 	sw	ra,20(sp)
bfc0045c:	0ff0044c 	jal	bfc01130 <strlen>
bfc00460:	00808021 	move	s0,a0
bfc00464:	3c038000 	lui	v1,0x8000
bfc00468:	00403021 	move	a2,v0
bfc0046c:	24690cb0 	addiu	t1,v1,3248
bfc00470:	af828010 	sw	v0,-32752(gp)
bfc00474:	3c028000 	lui	v0,0x8000
bfc00478:	244210b0 	addiu	v0,v0,4272
bfc0047c:	01201821 	move	v1,t1
bfc00480:	ac660000 	sw	a2,0(v1)
bfc00484:	ac660004 	sw	a2,4(v1)
bfc00488:	ac660008 	sw	a2,8(v1)
bfc0048c:	ac66000c 	sw	a2,12(v1)
bfc00490:	ac660010 	sw	a2,16(v1)
bfc00494:	ac660014 	sw	a2,20(v1)
bfc00498:	ac660018 	sw	a2,24(v1)
bfc0049c:	ac66001c 	sw	a2,28(v1)
bfc004a0:	24630020 	addiu	v1,v1,32
bfc004a4:	1462fff6 	bne	v1,v0,bfc00480 <init_search+0x30>
bfc004a8:	00000000 	nop
bfc004ac:	10c00078 	beqz	a2,bfc00690 <init_search+0x240>
bfc004b0:	24c5ffff 	addiu	a1,a2,-1
bfc004b4:	920b0000 	lbu	t3,0(s0)
bfc004b8:	24070001 	li	a3,1
bfc004bc:	000b5080 	sll	t2,t3,0x2
bfc004c0:	01494021 	addu	t0,t2,t1
bfc004c4:	00e6202b 	sltu	a0,a3,a2
bfc004c8:	ad050000 	sw	a1,0(t0)
bfc004cc:	30a30007 	andi	v1,a1,0x7
bfc004d0:	1080006f 	beqz	a0,bfc00690 <init_search+0x240>
bfc004d4:	24c8fffe 	addiu	t0,a2,-2
bfc004d8:	1060003f 	beqz	v1,bfc005d8 <init_search+0x188>
bfc004dc:	00000000 	nop
bfc004e0:	10670034 	beq	v1,a3,bfc005b4 <init_search+0x164>
bfc004e4:	240a0002 	li	t2,2
bfc004e8:	106a002b 	beq	v1,t2,bfc00598 <init_search+0x148>
bfc004ec:	24190003 	li	t9,3
bfc004f0:	10790022 	beq	v1,t9,bfc0057c <init_search+0x12c>
bfc004f4:	24050004 	li	a1,4
bfc004f8:	10650019 	beq	v1,a1,bfc00560 <init_search+0x110>
bfc004fc:	240b0005 	li	t3,5
bfc00500:	106b0010 	beq	v1,t3,bfc00544 <init_search+0xf4>
bfc00504:	240c0006 	li	t4,6
bfc00508:	106c0008 	beq	v1,t4,bfc0052c <init_search+0xdc>
bfc0050c:	02071821 	addu	v1,s0,a3
bfc00510:	920f0001 	lbu	t7,1(s0)
bfc00514:	24070002 	li	a3,2
bfc00518:	000f7080 	sll	t6,t7,0x2
bfc0051c:	01c96821 	addu	t5,t6,t1
bfc00520:	ada80000 	sw	t0,0(t5)
bfc00524:	2508ffff 	addiu	t0,t0,-1
bfc00528:	02071821 	addu	v1,s0,a3
bfc0052c:	90620000 	lbu	v0,0(v1)
bfc00530:	24e70001 	addiu	a3,a3,1
bfc00534:	0002f880 	sll	ra,v0,0x2
bfc00538:	03e9c021 	addu	t8,ra,t1
bfc0053c:	af080000 	sw	t0,0(t8)
bfc00540:	2508ffff 	addiu	t0,t0,-1
bfc00544:	02072821 	addu	a1,s0,a3
bfc00548:	90b90000 	lbu	t9,0(a1)
bfc0054c:	24e70001 	addiu	a3,a3,1
bfc00550:	00195080 	sll	t2,t9,0x2
bfc00554:	01492021 	addu	a0,t2,t1
bfc00558:	ac880000 	sw	t0,0(a0)
bfc0055c:	2508ffff 	addiu	t0,t0,-1
bfc00560:	02077021 	addu	t6,s0,a3
bfc00564:	91cd0000 	lbu	t5,0(t6)
bfc00568:	24e70001 	addiu	a3,a3,1
bfc0056c:	000d6080 	sll	t4,t5,0x2
bfc00570:	01895821 	addu	t3,t4,t1
bfc00574:	ad680000 	sw	t0,0(t3)
bfc00578:	2508ffff 	addiu	t0,t0,-1
bfc0057c:	02071021 	addu	v0,s0,a3
bfc00580:	905f0000 	lbu	ra,0(v0)
bfc00584:	24e70001 	addiu	a3,a3,1
bfc00588:	001fc080 	sll	t8,ra,0x2
bfc0058c:	03097821 	addu	t7,t8,t1
bfc00590:	ade80000 	sw	t0,0(t7)
bfc00594:	2508ffff 	addiu	t0,t0,-1
bfc00598:	0207c821 	addu	t9,s0,a3
bfc0059c:	932a0000 	lbu	t2,0(t9)
bfc005a0:	24e70001 	addiu	a3,a3,1
bfc005a4:	000a2080 	sll	a0,t2,0x2
bfc005a8:	00891821 	addu	v1,a0,t1
bfc005ac:	ac680000 	sw	t0,0(v1)
bfc005b0:	2508ffff 	addiu	t0,t0,-1
bfc005b4:	02077021 	addu	t6,s0,a3
bfc005b8:	91cd0000 	lbu	t5,0(t6)
bfc005bc:	24e70001 	addiu	a3,a3,1
bfc005c0:	000d6080 	sll	t4,t5,0x2
bfc005c4:	01895821 	addu	t3,t4,t1
bfc005c8:	00e6282b 	sltu	a1,a3,a2
bfc005cc:	ad680000 	sw	t0,0(t3)
bfc005d0:	10a0002f 	beqz	a1,bfc00690 <init_search+0x240>
bfc005d4:	2508ffff 	addiu	t0,t0,-1
bfc005d8:	02072021 	addu	a0,s0,a3
bfc005dc:	90820000 	lbu	v0,0(a0)
bfc005e0:	250dffff 	addiu	t5,t0,-1
bfc005e4:	00021880 	sll	v1,v0,0x2
bfc005e8:	0069f821 	addu	ra,v1,t1
bfc005ec:	afe80000 	sw	t0,0(ra)
bfc005f0:	90980001 	lbu	t8,1(a0)
bfc005f4:	2505fffe 	addiu	a1,t0,-2
bfc005f8:	00187880 	sll	t7,t8,0x2
bfc005fc:	01e97021 	addu	t6,t7,t1
bfc00600:	adcd0000 	sw	t5,0(t6)
bfc00604:	908c0002 	lbu	t4,2(a0)
bfc00608:	00805021 	move	t2,a0
bfc0060c:	000c5880 	sll	t3,t4,0x2
bfc00610:	0169c821 	addu	t9,t3,t1
bfc00614:	af250000 	sw	a1,0(t9)
bfc00618:	0080c821 	move	t9,a0
bfc0061c:	90840003 	lbu	a0,3(a0)
bfc00620:	2503fffd 	addiu	v1,t0,-3
bfc00624:	00041080 	sll	v0,a0,0x2
bfc00628:	0049f821 	addu	ra,v0,t1
bfc0062c:	afe30000 	sw	v1,0(ra)
bfc00630:	91580004 	lbu	t8,4(t2)
bfc00634:	250efffc 	addiu	t6,t0,-4
bfc00638:	00187880 	sll	t7,t8,0x2
bfc0063c:	01e96821 	addu	t5,t7,t1
bfc00640:	adae0000 	sw	t6,0(t5)
bfc00644:	914c0005 	lbu	t4,5(t2)
bfc00648:	250afffb 	addiu	t2,t0,-5
bfc0064c:	000c5880 	sll	t3,t4,0x2
bfc00650:	01692821 	addu	a1,t3,t1
bfc00654:	acaa0000 	sw	t2,0(a1)
bfc00658:	93240006 	lbu	a0,6(t9)
bfc0065c:	2503fffa 	addiu	v1,t0,-6
bfc00660:	00041080 	sll	v0,a0,0x2
bfc00664:	0049f821 	addu	ra,v0,t1
bfc00668:	afe30000 	sw	v1,0(ra)
bfc0066c:	93380007 	lbu	t8,7(t9)
bfc00670:	24e70008 	addiu	a3,a3,8
bfc00674:	00187880 	sll	t7,t8,0x2
bfc00678:	250efff9 	addiu	t6,t0,-7
bfc0067c:	01e96821 	addu	t5,t7,t1
bfc00680:	00e6602b 	sltu	t4,a3,a2
bfc00684:	adae0000 	sw	t6,0(t5)
bfc00688:	1580ffd3 	bnez	t4,bfc005d8 <init_search+0x188>
bfc0068c:	2508fff8 	addiu	t0,t0,-8
bfc00690:	8fbf0014 	lw	ra,20(sp)
bfc00694:	af908014 	sw	s0,-32748(gp)
bfc00698:	8fb00010 	lw	s0,16(sp)
bfc0069c:	03e00008 	jr	ra
bfc006a0:	27bd0018 	addiu	sp,sp,24
	...

bfc006b0 <strsearch>:
strsearch():
bfc006b0:	27bdffc8 	addiu	sp,sp,-56
bfc006b4:	afb50028 	sw	s5,40(sp)
bfc006b8:	8f958010 	lw	s5,-32752(gp)
bfc006bc:	afb40024 	sw	s4,36(sp)
bfc006c0:	afb10018 	sw	s1,24(sp)
bfc006c4:	afb00014 	sw	s0,20(sp)
bfc006c8:	afbf0034 	sw	ra,52(sp)
bfc006cc:	afb70030 	sw	s7,48(sp)
bfc006d0:	afb6002c 	sw	s6,44(sp)
bfc006d4:	afb30020 	sw	s3,32(sp)
bfc006d8:	afb2001c 	sw	s2,28(sp)
bfc006dc:	0080a021 	move	s4,a0
bfc006e0:	0ff0044c 	jal	bfc01130 <strlen>
bfc006e4:	26b0ffff 	addiu	s0,s5,-1
bfc006e8:	00408821 	move	s1,v0
bfc006ec:	0202102b 	sltu	v0,s0,v0
bfc006f0:	10400012 	beqz	v0,bfc0073c <strsearch+0x8c>
bfc006f4:	3c058000 	lui	a1,0x8000
bfc006f8:	24040001 	li	a0,1
bfc006fc:	8f978014 	lw	s7,-32748(gp)
bfc00700:	24b20cb0 	addiu	s2,a1,3248
bfc00704:	0095b023 	subu	s6,a0,s5
bfc00708:	02904821 	addu	t1,s4,s0
bfc0070c:	91280000 	lbu	t0,0(t1)
bfc00710:	00000000 	nop
bfc00714:	00083880 	sll	a3,t0,0x2
bfc00718:	00f23021 	addu	a2,a3,s2
bfc0071c:	8cc20000 	lw	v0,0(a2)
bfc00720:	00000000 	nop
bfc00724:	10400012 	beqz	v0,bfc00770 <strsearch+0xc0>
bfc00728:	02d05021 	addu	t2,s6,s0
bfc0072c:	02028021 	addu	s0,s0,v0
bfc00730:	0211182b 	sltu	v1,s0,s1
bfc00734:	1460fff5 	bnez	v1,bfc0070c <strsearch+0x5c>
bfc00738:	02904821 	addu	t1,s4,s0
bfc0073c:	00009821 	move	s3,zero
bfc00740:	8fbf0034 	lw	ra,52(sp)
bfc00744:	02601021 	move	v0,s3
bfc00748:	8fb70030 	lw	s7,48(sp)
bfc0074c:	8fb6002c 	lw	s6,44(sp)
bfc00750:	8fb50028 	lw	s5,40(sp)
bfc00754:	8fb40024 	lw	s4,36(sp)
bfc00758:	8fb30020 	lw	s3,32(sp)
bfc0075c:	8fb2001c 	lw	s2,28(sp)
bfc00760:	8fb10018 	lw	s1,24(sp)
bfc00764:	8fb00014 	lw	s0,20(sp)
bfc00768:	03e00008 	jr	ra
bfc0076c:	27bd0038 	addiu	sp,sp,56
bfc00770:	028a9821 	addu	s3,s4,t2
bfc00774:	02e02021 	move	a0,s7
bfc00778:	02602821 	move	a1,s3
bfc0077c:	02a03021 	move	a2,s5
bfc00780:	0ff00497 	jal	bfc0125c <strncmp>
bfc00784:	26100001 	addiu	s0,s0,1
bfc00788:	1040ffed 	beqz	v0,bfc00740 <strsearch+0x90>
bfc0078c:	0211182b 	sltu	v1,s0,s1
bfc00790:	1460ffde 	bnez	v1,bfc0070c <strsearch+0x5c>
bfc00794:	02904821 	addu	t1,s4,s0
bfc00798:	0bf001d0 	j	bfc00740 <strsearch+0x90>
bfc0079c:	00009821 	move	s3,zero

bfc007a0 <search_small>:
search_small():
bfc007a0:	3c028000 	lui	v0,0x8000
bfc007a4:	27bdfd10 	addiu	sp,sp,-752
bfc007a8:	244609e8 	addiu	a2,v0,2536
bfc007ac:	afbf02ec 	sw	ra,748(sp)
bfc007b0:	afbe02e8 	sw	s8,744(sp)
bfc007b4:	afb702e4 	sw	s7,740(sp)
bfc007b8:	afb602e0 	sw	s6,736(sp)
bfc007bc:	afb502dc 	sw	s5,732(sp)
bfc007c0:	afb402d8 	sw	s4,728(sp)
bfc007c4:	afb302d4 	sw	s3,724(sp)
bfc007c8:	afb202d0 	sw	s2,720(sp)
bfc007cc:	afb102cc 	sw	s1,716(sp)
bfc007d0:	afb002c8 	sw	s0,712(sp)
bfc007d4:	27a701d8 	addiu	a3,sp,472
bfc007d8:	24c800e0 	addiu	t0,a2,224
bfc007dc:	8cc90000 	lw	t1,0(a2)
bfc007e0:	8cc30004 	lw	v1,4(a2)
bfc007e4:	8cc40008 	lw	a0,8(a2)
bfc007e8:	8cc5000c 	lw	a1,12(a2)
bfc007ec:	24c60010 	addiu	a2,a2,16
bfc007f0:	ace90000 	sw	t1,0(a3)
bfc007f4:	ace30004 	sw	v1,4(a3)
bfc007f8:	ace40008 	sw	a0,8(a3)
bfc007fc:	ace5000c 	sw	a1,12(a3)
bfc00800:	14c8fff6 	bne	a2,t0,bfc007dc <search_small+0x3c>
bfc00804:	24e70010 	addiu	a3,a3,16
bfc00808:	8cc80000 	lw	t0,0(a2)
bfc0080c:	8cca0004 	lw	t2,4(a2)
bfc00810:	3c0b8000 	lui	t3,0x8000
bfc00814:	25660904 	addiu	a2,t3,2308
bfc00818:	27a90010 	addiu	t1,sp,16
bfc0081c:	ace80000 	sw	t0,0(a3)
bfc00820:	acea0004 	sw	t2,4(a3)
bfc00824:	24c800e0 	addiu	t0,a2,224
bfc00828:	01203821 	move	a3,t1
bfc0082c:	8ccf0000 	lw	t7,0(a2)
bfc00830:	8cce0004 	lw	t6,4(a2)
bfc00834:	8ccd0008 	lw	t5,8(a2)
bfc00838:	8ccc000c 	lw	t4,12(a2)
bfc0083c:	24c60010 	addiu	a2,a2,16
bfc00840:	acef0000 	sw	t7,0(a3)
bfc00844:	acee0004 	sw	t6,4(a3)
bfc00848:	aced0008 	sw	t5,8(a3)
bfc0084c:	acec000c 	sw	t4,12(a3)
bfc00850:	14c8fff6 	bne	a2,t0,bfc0082c <search_small+0x8c>
bfc00854:	24e70010 	addiu	a3,a3,16
bfc00858:	8cd00000 	lw	s0,0(a2)
bfc0085c:	3c118000 	lui	s1,0x8000
bfc00860:	26260820 	addiu	a2,s1,2080
bfc00864:	acf00000 	sw	s0,0(a3)
bfc00868:	24c800e0 	addiu	t0,a2,224
bfc0086c:	27a700f4 	addiu	a3,sp,244
bfc00870:	8cd50000 	lw	s5,0(a2)
bfc00874:	8cd40004 	lw	s4,4(a2)
bfc00878:	8cd30008 	lw	s3,8(a2)
bfc0087c:	8cd2000c 	lw	s2,12(a2)
bfc00880:	24c60010 	addiu	a2,a2,16
bfc00884:	acf50000 	sw	s5,0(a3)
bfc00888:	acf40004 	sw	s4,4(a3)
bfc0088c:	acf30008 	sw	s3,8(a3)
bfc00890:	acf2000c 	sw	s2,12(a3)
bfc00894:	14c8fff6 	bne	a2,t0,bfc00870 <search_small+0xd0>
bfc00898:	24e70010 	addiu	a3,a3,16
bfc0089c:	8cd70000 	lw	s7,0(a2)
bfc008a0:	8fb601d8 	lw	s6,472(sp)
bfc008a4:	00000000 	nop
bfc008a8:	12c0010b 	beqz	s6,bfc00cd8 <search_small+0x538>
bfc008ac:	acf70000 	sw	s7,0(a3)
bfc008b0:	3c068000 	lui	a2,0x8000
bfc008b4:	24d50cb0 	addiu	s5,a2,3248
bfc008b8:	0120f021 	move	s8,t1
bfc008bc:	afa002c4 	sw	zero,708(sp)
bfc008c0:	afa002c0 	sw	zero,704(sp)
bfc008c4:	0ff0044c 	jal	bfc01130 <strlen>
bfc008c8:	02c02021 	move	a0,s6
bfc008cc:	3c088000 	lui	t0,0x8000
bfc008d0:	25030cb0 	addiu	v1,t0,3248
bfc008d4:	2469000c 	addiu	t1,v1,12
bfc008d8:	25240004 	addiu	a0,t1,4
bfc008dc:	24850004 	addiu	a1,a0,4
bfc008e0:	ac620000 	sw	v0,0(v1)
bfc008e4:	ac620004 	sw	v0,4(v1)
bfc008e8:	ac620008 	sw	v0,8(v1)
bfc008ec:	00409821 	move	s3,v0
bfc008f0:	ad220000 	sw	v0,0(t1)
bfc008f4:	ac820000 	sw	v0,0(a0)
bfc008f8:	aca20000 	sw	v0,0(a1)
bfc008fc:	24a20004 	addiu	v0,a1,4
bfc00900:	24590004 	addiu	t9,v0,4
bfc00904:	3c188000 	lui	t8,0x8000
bfc00908:	ac530000 	sw	s3,0(v0)
bfc0090c:	270710b0 	addiu	a3,t8,4272
bfc00910:	27220004 	addiu	v0,t9,4
bfc00914:	af330000 	sw	s3,0(t9)
bfc00918:	1047000e 	beq	v0,a3,bfc00954 <search_small+0x1b4>
bfc0091c:	af938010 	sw	s3,-32752(gp)
bfc00920:	3c0a8000 	lui	t2,0x8000
bfc00924:	ac530000 	sw	s3,0(v0)
bfc00928:	ac530004 	sw	s3,4(v0)
bfc0092c:	ac530008 	sw	s3,8(v0)
bfc00930:	ac53000c 	sw	s3,12(v0)
bfc00934:	ac530010 	sw	s3,16(v0)
bfc00938:	ac530014 	sw	s3,20(v0)
bfc0093c:	ac530018 	sw	s3,24(v0)
bfc00940:	ac53001c 	sw	s3,28(v0)
bfc00944:	255f10b0 	addiu	ra,t2,4272
bfc00948:	24420020 	addiu	v0,v0,32
bfc0094c:	145ffff5 	bne	v0,ra,bfc00924 <search_small+0x184>
bfc00950:	00000000 	nop
bfc00954:	126000d7 	beqz	s3,bfc00cb4 <search_small+0x514>
bfc00958:	00000000 	nop
bfc0095c:	92ce0000 	lbu	t6,0(s6)
bfc00960:	24060001 	li	a2,1
bfc00964:	000e6880 	sll	t5,t6,0x2
bfc00968:	2671ffff 	addiu	s1,s3,-1
bfc0096c:	01b56021 	addu	t4,t5,s5
bfc00970:	00d3582b 	sltu	t3,a2,s3
bfc00974:	ad910000 	sw	s1,0(t4)
bfc00978:	32240007 	andi	a0,s1,0x7
bfc0097c:	1160006e 	beqz	t3,bfc00b38 <search_small+0x398>
bfc00980:	2667fffe 	addiu	a3,s3,-2
bfc00984:	1080003f 	beqz	a0,bfc00a84 <search_small+0x2e4>
bfc00988:	00000000 	nop
bfc0098c:	10860034 	beq	a0,a2,bfc00a60 <search_small+0x2c0>
bfc00990:	240c0002 	li	t4,2
bfc00994:	108c002b 	beq	a0,t4,bfc00a44 <search_small+0x2a4>
bfc00998:	240d0003 	li	t5,3
bfc0099c:	108d0022 	beq	a0,t5,bfc00a28 <search_small+0x288>
bfc009a0:	240e0004 	li	t6,4
bfc009a4:	108e0019 	beq	a0,t6,bfc00a0c <search_small+0x26c>
bfc009a8:	240f0005 	li	t7,5
bfc009ac:	108f0010 	beq	a0,t7,bfc009f0 <search_small+0x250>
bfc009b0:	24140006 	li	s4,6
bfc009b4:	10940008 	beq	a0,s4,bfc009d8 <search_small+0x238>
bfc009b8:	02c61021 	addu	v0,s6,a2
bfc009bc:	92d20001 	lbu	s2,1(s6)
bfc009c0:	24060002 	li	a2,2
bfc009c4:	00128080 	sll	s0,s2,0x2
bfc009c8:	0215c021 	addu	t8,s0,s5
bfc009cc:	af070000 	sw	a3,0(t8)
bfc009d0:	2667fffd 	addiu	a3,s3,-3
bfc009d4:	02c61021 	addu	v0,s6,a2
bfc009d8:	90450000 	lbu	a1,0(v0)
bfc009dc:	24c60001 	addiu	a2,a2,1
bfc009e0:	0005c880 	sll	t9,a1,0x2
bfc009e4:	0335b821 	addu	s7,t9,s5
bfc009e8:	aee70000 	sw	a3,0(s7)
bfc009ec:	24e7ffff 	addiu	a3,a3,-1
bfc009f0:	02c61821 	addu	v1,s6,a2
bfc009f4:	90680000 	lbu	t0,0(v1)
bfc009f8:	24c60001 	addiu	a2,a2,1
bfc009fc:	00084880 	sll	t1,t0,0x2
bfc00a00:	01352021 	addu	a0,t1,s5
bfc00a04:	ac870000 	sw	a3,0(a0)
bfc00a08:	24e7ffff 	addiu	a3,a3,-1
bfc00a0c:	02c66021 	addu	t4,s6,a2
bfc00a10:	918b0000 	lbu	t3,0(t4)
bfc00a14:	24c60001 	addiu	a2,a2,1
bfc00a18:	000b5080 	sll	t2,t3,0x2
bfc00a1c:	0155f821 	addu	ra,t2,s5
bfc00a20:	afe70000 	sw	a3,0(ra)
bfc00a24:	24e7ffff 	addiu	a3,a3,-1
bfc00a28:	02c6a021 	addu	s4,s6,a2
bfc00a2c:	928f0000 	lbu	t7,0(s4)
bfc00a30:	24c60001 	addiu	a2,a2,1
bfc00a34:	000f7080 	sll	t6,t7,0x2
bfc00a38:	01d56821 	addu	t5,t6,s5
bfc00a3c:	ada70000 	sw	a3,0(t5)
bfc00a40:	24e7ffff 	addiu	a3,a3,-1
bfc00a44:	02c6b821 	addu	s7,s6,a2
bfc00a48:	92f20000 	lbu	s2,0(s7)
bfc00a4c:	24c60001 	addiu	a2,a2,1
bfc00a50:	00128080 	sll	s0,s2,0x2
bfc00a54:	0215c021 	addu	t8,s0,s5
bfc00a58:	af070000 	sw	a3,0(t8)
bfc00a5c:	24e7ffff 	addiu	a3,a3,-1
bfc00a60:	02c64821 	addu	t1,s6,a2
bfc00a64:	91240000 	lbu	a0,0(t1)
bfc00a68:	24c60001 	addiu	a2,a2,1
bfc00a6c:	00041080 	sll	v0,a0,0x2
bfc00a70:	00552821 	addu	a1,v0,s5
bfc00a74:	00d3c82b 	sltu	t9,a2,s3
bfc00a78:	aca70000 	sw	a3,0(a1)
bfc00a7c:	1320002e 	beqz	t9,bfc00b38 <search_small+0x398>
bfc00a80:	24e7ffff 	addiu	a3,a3,-1
bfc00a84:	02c65821 	addu	t3,s6,a2
bfc00a88:	916a0000 	lbu	t2,0(t3)
bfc00a8c:	24e2ffff 	addiu	v0,a3,-1
bfc00a90:	000af880 	sll	ra,t2,0x2
bfc00a94:	03f54021 	addu	t0,ra,s5
bfc00a98:	ad070000 	sw	a3,0(t0)
bfc00a9c:	91630001 	lbu	v1,1(t3)
bfc00aa0:	24f8fffe 	addiu	t8,a3,-2
bfc00aa4:	00034880 	sll	t1,v1,0x2
bfc00aa8:	01352021 	addu	a0,t1,s5
bfc00aac:	ac820000 	sw	v0,0(a0)
bfc00ab0:	91650002 	lbu	a1,2(t3)
bfc00ab4:	24effffd 	addiu	t7,a3,-3
bfc00ab8:	0005c880 	sll	t9,a1,0x2
bfc00abc:	0335b821 	addu	s7,t9,s5
bfc00ac0:	aef80000 	sw	t8,0(s7)
bfc00ac4:	91720003 	lbu	s2,3(t3)
bfc00ac8:	0160a021 	move	s4,t3
bfc00acc:	00128080 	sll	s0,s2,0x2
bfc00ad0:	02157021 	addu	t6,s0,s5
bfc00ad4:	adcf0000 	sw	t7,0(t6)
bfc00ad8:	916d0004 	lbu	t5,4(t3)
bfc00adc:	24ebfffc 	addiu	t3,a3,-4
bfc00ae0:	000d6080 	sll	t4,t5,0x2
bfc00ae4:	01955021 	addu	t2,t4,s5
bfc00ae8:	ad4b0000 	sw	t3,0(t2)
bfc00aec:	929f0005 	lbu	ra,5(s4)
bfc00af0:	24e3fffb 	addiu	v1,a3,-5
bfc00af4:	001f4080 	sll	t0,ra,0x2
bfc00af8:	01154821 	addu	t1,t0,s5
bfc00afc:	ad230000 	sw	v1,0(t1)
bfc00b00:	92840006 	lbu	a0,6(s4)
bfc00b04:	24e5fffa 	addiu	a1,a3,-6
bfc00b08:	00041080 	sll	v0,a0,0x2
bfc00b0c:	0055c821 	addu	t9,v0,s5
bfc00b10:	af250000 	sw	a1,0(t9)
bfc00b14:	92970007 	lbu	s7,7(s4)
bfc00b18:	24c60008 	addiu	a2,a2,8
bfc00b1c:	0017a080 	sll	s4,s7,0x2
bfc00b20:	24f2fff9 	addiu	s2,a3,-7
bfc00b24:	02958021 	addu	s0,s4,s5
bfc00b28:	00d3782b 	sltu	t7,a2,s3
bfc00b2c:	ae120000 	sw	s2,0(s0)
bfc00b30:	15e0ffd4 	bnez	t7,bfc00a84 <search_small+0x2e4>
bfc00b34:	24e7fff8 	addiu	a3,a3,-8
bfc00b38:	8fd20000 	lw	s2,0(s8)
bfc00b3c:	af968014 	sw	s6,-32748(gp)
bfc00b40:	0ff0044c 	jal	bfc01130 <strlen>
bfc00b44:	02402021 	move	a0,s2
bfc00b48:	0222302b 	sltu	a2,s1,v0
bfc00b4c:	10c00010 	beqz	a2,bfc00b90 <search_small+0x3f0>
bfc00b50:	00408021 	move	s0,v0
bfc00b54:	240c0001 	li	t4,1
bfc00b58:	0193b823 	subu	s7,t4,s3
bfc00b5c:	0251a021 	addu	s4,s2,s1
bfc00b60:	928f0000 	lbu	t7,0(s4)
bfc00b64:	00000000 	nop
bfc00b68:	000f7080 	sll	t6,t7,0x2
bfc00b6c:	01d56821 	addu	t5,t6,s5
bfc00b70:	8da20000 	lw	v0,0(t5)
bfc00b74:	00000000 	nop
bfc00b78:	1040002d 	beqz	v0,bfc00c30 <search_small+0x490>
bfc00b7c:	0237c021 	addu	t8,s1,s7
bfc00b80:	02228821 	addu	s1,s1,v0
bfc00b84:	0230382b 	sltu	a3,s1,s0
bfc00b88:	14e0fff5 	bnez	a3,bfc00b60 <search_small+0x3c0>
bfc00b8c:	0251a021 	addu	s4,s2,s1
bfc00b90:	0000a021 	move	s4,zero
bfc00b94:	3c068000 	lui	a2,0x8000
bfc00b98:	3c0b8000 	lui	t3,0x8000
bfc00b9c:	24c40014 	addiu	a0,a2,20
bfc00ba0:	02c02821 	move	a1,s6
bfc00ba4:	02403821 	move	a3,s2
bfc00ba8:	0ff00338 	jal	bfc00ce0 <printf>
bfc00bac:	25660278 	addiu	a2,t3,632
bfc00bb0:	0ff003d1 	jal	bfc00f44 <putchar>
bfc00bb4:	2404000a 	li	a0,10
bfc00bb8:	8fb902c0 	lw	t9,704(sp)
bfc00bbc:	27b700f4 	addiu	s7,sp,244
bfc00bc0:	02f99021 	addu	s2,s7,t9
bfc00bc4:	8e500000 	lw	s0,0(s2)
bfc00bc8:	00000000 	nop
bfc00bcc:	12000024 	beqz	s0,bfc00c60 <search_small+0x4c0>
bfc00bd0:	00000000 	nop
bfc00bd4:	1280003b 	beqz	s4,bfc00cc4 <search_small+0x524>
bfc00bd8:	00000000 	nop
bfc00bdc:	8fa802c0 	lw	t0,704(sp)
bfc00be0:	27aa01d8 	addiu	t2,sp,472
bfc00be4:	0148f821 	addu	ra,t2,t0
bfc00be8:	8ff60004 	lw	s6,4(ra)
bfc00bec:	25030004 	addiu	v1,t0,4
bfc00bf0:	afa302c0 	sw	v1,704(sp)
bfc00bf4:	16c0ff33 	bnez	s6,bfc008c4 <search_small+0x124>
bfc00bf8:	27de0004 	addiu	s8,s8,4
bfc00bfc:	8fbf02ec 	lw	ra,748(sp)
bfc00c00:	8fa202c4 	lw	v0,708(sp)
bfc00c04:	8fbe02e8 	lw	s8,744(sp)
bfc00c08:	8fb702e4 	lw	s7,740(sp)
bfc00c0c:	8fb602e0 	lw	s6,736(sp)
bfc00c10:	8fb502dc 	lw	s5,732(sp)
bfc00c14:	8fb402d8 	lw	s4,728(sp)
bfc00c18:	8fb302d4 	lw	s3,724(sp)
bfc00c1c:	8fb202d0 	lw	s2,720(sp)
bfc00c20:	8fb102cc 	lw	s1,716(sp)
bfc00c24:	8fb002c8 	lw	s0,712(sp)
bfc00c28:	03e00008 	jr	ra
bfc00c2c:	27bd02f0 	addiu	sp,sp,752
bfc00c30:	0258a021 	addu	s4,s2,t8
bfc00c34:	02c02021 	move	a0,s6
bfc00c38:	02802821 	move	a1,s4
bfc00c3c:	02603021 	move	a2,s3
bfc00c40:	0ff00497 	jal	bfc0125c <strncmp>
bfc00c44:	26310001 	addiu	s1,s1,1
bfc00c48:	1040000c 	beqz	v0,bfc00c7c <search_small+0x4dc>
bfc00c4c:	0230182b 	sltu	v1,s1,s0
bfc00c50:	1460ffc2 	bnez	v1,bfc00b5c <search_small+0x3bc>
bfc00c54:	0000a021 	move	s4,zero
bfc00c58:	0bf002e6 	j	bfc00b98 <search_small+0x3f8>
bfc00c5c:	3c068000 	lui	a2,0x8000
bfc00c60:	1280ffde 	beqz	s4,bfc00bdc <search_small+0x43c>
bfc00c64:	00000000 	nop
bfc00c68:	8fa902c4 	lw	t1,708(sp)
bfc00c6c:	00000000 	nop
bfc00c70:	25240001 	addiu	a0,t1,1
bfc00c74:	0bf002f7 	j	bfc00bdc <search_small+0x43c>
bfc00c78:	afa402c4 	sw	a0,708(sp)
bfc00c7c:	1280ffc5 	beqz	s4,bfc00b94 <search_small+0x3f4>
bfc00c80:	02c02821 	move	a1,s6
bfc00c84:	3c138000 	lui	s3,0x8000
bfc00c88:	3c118000 	lui	s1,0x8000
bfc00c8c:	26640014 	addiu	a0,s3,20
bfc00c90:	02403821 	move	a3,s2
bfc00c94:	26260c4c 	addiu	a2,s1,3148
bfc00c98:	0ff00338 	jal	bfc00ce0 <printf>
bfc00c9c:	3c168000 	lui	s6,0x8000
bfc00ca0:	26c40028 	addiu	a0,s6,40
bfc00ca4:	0ff00338 	jal	bfc00ce0 <printf>
bfc00ca8:	02802821 	move	a1,s4
bfc00cac:	0bf002ec 	j	bfc00bb0 <search_small+0x410>
bfc00cb0:	00000000 	nop
bfc00cb4:	af968014 	sw	s6,-32748(gp)
bfc00cb8:	8fd20000 	lw	s2,0(s8)
bfc00cbc:	0bf002e5 	j	bfc00b94 <search_small+0x3f4>
bfc00cc0:	0000a021 	move	s4,zero
bfc00cc4:	8fa202c4 	lw	v0,708(sp)
bfc00cc8:	00000000 	nop
bfc00ccc:	24450001 	addiu	a1,v0,1
bfc00cd0:	0bf002f7 	j	bfc00bdc <search_small+0x43c>
bfc00cd4:	afa502c4 	sw	a1,708(sp)
bfc00cd8:	0bf002ff 	j	bfc00bfc <search_small+0x45c>
bfc00cdc:	afa002c4 	sw	zero,708(sp)

bfc00ce0 <printf>:
printf():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc00ce0:	27bdffc8 	addiu	sp,sp,-56
bfc00ce4:	afb30024 	sw	s3,36(sp)
bfc00ce8:	afbf0034 	sw	ra,52(sp)
bfc00cec:	afb60030 	sw	s6,48(sp)
bfc00cf0:	afb5002c 	sw	s5,44(sp)
bfc00cf4:	afb40028 	sw	s4,40(sp)
bfc00cf8:	afb20020 	sw	s2,32(sp)
bfc00cfc:	afb1001c 	sw	s1,28(sp)
bfc00d00:	afb00018 	sw	s0,24(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00d04:	80900000 	lb	s0,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc00d08:	00809821 	move	s3,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:8
bfc00d0c:	27a4003c 	addiu	a0,sp,60
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc00d10:	afa5003c 	sw	a1,60(sp)
bfc00d14:	afa60040 	sw	a2,64(sp)
bfc00d18:	afa70044 	sw	a3,68(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00d1c:	12000013 	beqz	s0,bfc00d6c <printf+0x8c>
bfc00d20:	afa40010 	sw	a0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00d24:	3c028000 	lui	v0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc00d28:	00809021 	move	s2,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00d2c:	24560ad0 	addiu	s6,v0,2768
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc00d30:	00008821 	move	s1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00d34:	24140025 	li	s4,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00d38:	2415000a 	li	s5,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00d3c:	12140016 	beq	s0,s4,bfc00d98 <printf+0xb8>
bfc00d40:	02711021 	addu	v0,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00d44:	1215002f 	beq	s0,s5,bfc00e04 <printf+0x124>
bfc00d48:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:80
bfc00d4c:	0ff003d1 	jal	bfc00f44 <putchar>
bfc00d50:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00d54:	26310001 	addiu	s1,s1,1
bfc00d58:	02711021 	addu	v0,s3,s1
bfc00d5c:	80500000 	lb	s0,0(v0)
bfc00d60:	00000000 	nop
bfc00d64:	1600fff5 	bnez	s0,bfc00d3c <printf+0x5c>
bfc00d68:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:84
bfc00d6c:	8fbf0034 	lw	ra,52(sp)
bfc00d70:	00001021 	move	v0,zero
bfc00d74:	8fb60030 	lw	s6,48(sp)
bfc00d78:	8fb5002c 	lw	s5,44(sp)
bfc00d7c:	8fb40028 	lw	s4,40(sp)
bfc00d80:	8fb30024 	lw	s3,36(sp)
bfc00d84:	8fb20020 	lw	s2,32(sp)
bfc00d88:	8fb1001c 	lw	s1,28(sp)
bfc00d8c:	8fb00018 	lw	s0,24(sp)
bfc00d90:	03e00008 	jr	ra
bfc00d94:	27bd0038 	addiu	sp,sp,56
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc00d98:	80440001 	lb	a0,1(v0)
bfc00d9c:	24050001 	li	a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00da0:	2482ffdb 	addiu	v0,a0,-37
bfc00da4:	304200ff 	andi	v0,v0,0xff
bfc00da8:	2c430054 	sltiu	v1,v0,84
bfc00dac:	14600005 	bnez	v1,bfc00dc4 <printf+0xe4>
bfc00db0:	00021080 	sll	v0,v0,0x2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:73
bfc00db4:	0ff003d1 	jal	bfc00f44 <putchar>
bfc00db8:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc00dbc:	0bf00356 	j	bfc00d58 <printf+0x78>
bfc00dc0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00dc4:	02c21021 	addu	v0,s6,v0
bfc00dc8:	8c430000 	lw	v1,0(v0)
bfc00dcc:	00000000 	nop
bfc00dd0:	00600008 	jr	v1
bfc00dd4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:65
bfc00dd8:	26310001 	addiu	s1,s1,1
bfc00ddc:	02711021 	addu	v0,s3,s1
bfc00de0:	80440001 	lb	a0,1(v0)
bfc00de4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00de8:	2482ffcf 	addiu	v0,a0,-49
bfc00dec:	304200ff 	andi	v0,v0,0xff
bfc00df0:	2c420009 	sltiu	v0,v0,9
bfc00df4:	1440003f 	bnez	v0,bfc00ef4 <printf+0x214>
bfc00df8:	00002821 	move	a1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc00dfc:	0bf00369 	j	bfc00da4 <printf+0xc4>
bfc00e00:	2482ffdb 	addiu	v0,a0,-37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc00e04:	0ff003d1 	jal	bfc00f44 <putchar>
bfc00e08:	2404000d 	li	a0,13
bfc00e0c:	0bf00353 	j	bfc00d4c <printf+0x6c>
bfc00e10:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:30
bfc00e14:	8e440000 	lw	a0,0(s2)
bfc00e18:	2406000a 	li	a2,10
bfc00e1c:	0ff0040c 	jal	bfc01030 <printbase>
bfc00e20:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:31
bfc00e24:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:32
bfc00e28:	0bf00355 	j	bfc00d54 <printf+0x74>
bfc00e2c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:20
bfc00e30:	8e440000 	lw	a0,0(s2)
bfc00e34:	0ff003dc 	jal	bfc00f70 <putstring>
bfc00e38:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:21
bfc00e3c:	0bf00355 	j	bfc00d54 <printf+0x74>
bfc00e40:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:56
bfc00e44:	8e440000 	lw	a0,0(s2)
bfc00e48:	24060010 	li	a2,16
bfc00e4c:	0ff0040c 	jal	bfc01030 <printbase>
bfc00e50:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:57
bfc00e54:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:58
bfc00e58:	0bf00355 	j	bfc00d54 <printf+0x74>
bfc00e5c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:45
bfc00e60:	8e440000 	lw	a0,0(s2)
bfc00e64:	24060008 	li	a2,8
bfc00e68:	0ff0040c 	jal	bfc01030 <printbase>
bfc00e6c:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:46
bfc00e70:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:47
bfc00e74:	0bf00355 	j	bfc00d54 <printf+0x74>
bfc00e78:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:40
bfc00e7c:	8e440000 	lw	a0,0(s2)
bfc00e80:	2406000a 	li	a2,10
bfc00e84:	0ff0040c 	jal	bfc01030 <printbase>
bfc00e88:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:41
bfc00e8c:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:42
bfc00e90:	0bf00355 	j	bfc00d54 <printf+0x74>
bfc00e94:	26310002 	addiu	s1,s1,2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:35
bfc00e98:	8e440000 	lw	a0,0(s2)
bfc00e9c:	2406000a 	li	a2,10
bfc00ea0:	0ff0040c 	jal	bfc01030 <printbase>
bfc00ea4:	24070001 	li	a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:36
bfc00ea8:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:37
bfc00eac:	0bf00355 	j	bfc00d54 <printf+0x74>
bfc00eb0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:25
bfc00eb4:	8e440000 	lw	a0,0(s2)
bfc00eb8:	0ff003d1 	jal	bfc00f44 <putchar>
bfc00ebc:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:26
bfc00ec0:	0bf00355 	j	bfc00d54 <printf+0x74>
bfc00ec4:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:50
bfc00ec8:	8e440000 	lw	a0,0(s2)
bfc00ecc:	24060002 	li	a2,2
bfc00ed0:	0ff0040c 	jal	bfc01030 <printbase>
bfc00ed4:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:51
bfc00ed8:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:52
bfc00edc:	0bf00355 	j	bfc00d54 <printf+0x74>
bfc00ee0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:61
bfc00ee4:	0ff003d1 	jal	bfc00f44 <putchar>
bfc00ee8:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:62
bfc00eec:	0bf00355 	j	bfc00d54 <printf+0x74>
bfc00ef0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00ef4:	02713021 	addu	a2,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00ef8:	000510c0 	sll	v0,a1,0x3
bfc00efc:	00051840 	sll	v1,a1,0x1
bfc00f00:	00621821 	addu	v1,v1,v0
bfc00f04:	00641821 	addu	v1,v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00f08:	80c40002 	lb	a0,2(a2)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00f0c:	2465ffd0 	addiu	a1,v1,-48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc00f10:	2482ffcf 	addiu	v0,a0,-49
bfc00f14:	304200ff 	andi	v0,v0,0xff
bfc00f18:	2c420009 	sltiu	v0,v0,9
bfc00f1c:	26310001 	addiu	s1,s1,1
bfc00f20:	1040ff9f 	beqz	v0,bfc00da0 <printf+0xc0>
bfc00f24:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc00f28:	0bf003bf 	j	bfc00efc <printf+0x21c>
bfc00f2c:	000510c0 	sll	v0,a1,0x3

bfc00f30 <tgt_putchar>:
tgt_putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:9
bfc00f30:	3c018000 	lui	at,0x8000
bfc00f34:	03e00008 	jr	ra
bfc00f38:	a0247ffc 	sb	a0,32764(at)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:18
bfc00f3c:	03e00008 	jr	ra
bfc00f40:	00000000 	nop

bfc00f44 <putchar>:
putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:2
bfc00f44:	27bdffe8 	addiu	sp,sp,-24
bfc00f48:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:3
bfc00f4c:	0ff003cc 	jal	bfc00f30 <tgt_putchar>
bfc00f50:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:5
bfc00f54:	8fbf0014 	lw	ra,20(sp)
bfc00f58:	00001021 	move	v0,zero
bfc00f5c:	03e00008 	jr	ra
bfc00f60:	27bd0018 	addiu	sp,sp,24
	...

bfc00f70 <putstring>:
putstring():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:2
bfc00f70:	27bdffe0 	addiu	sp,sp,-32
bfc00f74:	afb10014 	sw	s1,20(sp)
bfc00f78:	afbf001c 	sw	ra,28(sp)
bfc00f7c:	afb20018 	sw	s2,24(sp)
bfc00f80:	afb00010 	sw	s0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00f84:	80900000 	lb	s0,0(a0)
bfc00f88:	00000000 	nop
bfc00f8c:	12000013 	beqz	s0,bfc00fdc <putstring+0x6c>
bfc00f90:	00808821 	move	s1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc00f94:	0bf003ed 	j	bfc00fb4 <putstring+0x44>
bfc00f98:	2412000a 	li	s2,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc00f9c:	0ff003d1 	jal	bfc00f44 <putchar>
bfc00fa0:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00fa4:	82300000 	lb	s0,0(s1)
bfc00fa8:	00000000 	nop
bfc00fac:	1200000b 	beqz	s0,bfc00fdc <putstring+0x6c>
bfc00fb0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc00fb4:	1612fff9 	bne	s0,s2,bfc00f9c <putstring+0x2c>
bfc00fb8:	26310001 	addiu	s1,s1,1
bfc00fbc:	0ff003d1 	jal	bfc00f44 <putchar>
bfc00fc0:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc00fc4:	0ff003d1 	jal	bfc00f44 <putchar>
bfc00fc8:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc00fcc:	82300000 	lb	s0,0(s1)
bfc00fd0:	00000000 	nop
bfc00fd4:	1600fff7 	bnez	s0,bfc00fb4 <putstring+0x44>
bfc00fd8:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:11
bfc00fdc:	8fbf001c 	lw	ra,28(sp)
bfc00fe0:	00001021 	move	v0,zero
bfc00fe4:	8fb20018 	lw	s2,24(sp)
bfc00fe8:	8fb10014 	lw	s1,20(sp)
bfc00fec:	8fb00010 	lw	s0,16(sp)
bfc00ff0:	03e00008 	jr	ra
bfc00ff4:	27bd0020 	addiu	sp,sp,32

bfc00ff8 <puts>:
puts():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:15
bfc00ff8:	27bdffe8 	addiu	sp,sp,-24
bfc00ffc:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:16
bfc01000:	0ff003dc 	jal	bfc00f70 <putstring>
bfc01004:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:17
bfc01008:	0ff003d1 	jal	bfc00f44 <putchar>
bfc0100c:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:18
bfc01010:	0ff003d1 	jal	bfc00f44 <putchar>
bfc01014:	2404000a 	li	a0,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:20
bfc01018:	8fbf0014 	lw	ra,20(sp)
bfc0101c:	00001021 	move	v0,zero
bfc01020:	03e00008 	jr	ra
bfc01024:	27bd0018 	addiu	sp,sp,24
	...

bfc01030 <printbase>:
printbase():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc01030:	27bdff98 	addiu	sp,sp,-104
bfc01034:	afb30060 	sw	s3,96(sp)
bfc01038:	afb2005c 	sw	s2,92(sp)
bfc0103c:	afbf0064 	sw	ra,100(sp)
bfc01040:	afb10058 	sw	s1,88(sp)
bfc01044:	afb00054 	sw	s0,84(sp)
bfc01048:	00801821 	move	v1,a0
bfc0104c:	00a09821 	move	s3,a1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:7
bfc01050:	10e00003 	beqz	a3,bfc01060 <printbase+0x30>
bfc01054:	00c09021 	move	s2,a2
bfc01058:	0480002f 	bltz	a0,bfc01118 <printbase+0xe8>
bfc0105c:	2404002d 	li	a0,45
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:12
bfc01060:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc01064:	1200000c 	beqz	s0,bfc01098 <printbase+0x68>
bfc01068:	00008821 	move	s1,zero
bfc0106c:	27a50010 	addiu	a1,sp,16
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc01070:	16400002 	bnez	s2,bfc0107c <printbase+0x4c>
bfc01074:	0212001b 	divu	zero,s0,s2
bfc01078:	0007000d 	break	0x7
bfc0107c:	00b12021 	addu	a0,a1,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc01080:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc01084:	00001010 	mfhi	v0
bfc01088:	a0820000 	sb	v0,0(a0)
bfc0108c:	00001812 	mflo	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc01090:	1460fff7 	bnez	v1,bfc01070 <printbase+0x40>
bfc01094:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc01098:	0233102a 	slt	v0,s1,s3
bfc0109c:	10400002 	beqz	v0,bfc010a8 <printbase+0x78>
bfc010a0:	02201821 	move	v1,s1
bfc010a4:	02601821 	move	v1,s3
bfc010a8:	1060000c 	beqz	v1,bfc010dc <printbase+0xac>
bfc010ac:	2470ffff 	addiu	s0,v1,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc010b0:	27a20010 	addiu	v0,sp,16
bfc010b4:	00509021 	addu	s2,v0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc010b8:	26020001 	addiu	v0,s0,1
bfc010bc:	0222102a 	slt	v0,s1,v0
bfc010c0:	1040000e 	beqz	v0,bfc010fc <printbase+0xcc>
bfc010c4:	24040030 	li	a0,48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc010c8:	02009821 	move	s3,s0
bfc010cc:	0ff003d1 	jal	bfc00f44 <putchar>
bfc010d0:	2610ffff 	addiu	s0,s0,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc010d4:	1660fff8 	bnez	s3,bfc010b8 <printbase+0x88>
bfc010d8:	2652ffff 	addiu	s2,s2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:28
bfc010dc:	8fbf0064 	lw	ra,100(sp)
bfc010e0:	00001021 	move	v0,zero
bfc010e4:	8fb30060 	lw	s3,96(sp)
bfc010e8:	8fb2005c 	lw	s2,92(sp)
bfc010ec:	8fb10058 	lw	s1,88(sp)
bfc010f0:	8fb00054 	lw	s0,84(sp)
bfc010f4:	03e00008 	jr	ra
bfc010f8:	27bd0068 	addiu	sp,sp,104
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc010fc:	82440000 	lb	a0,0(s2)
bfc01100:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc01104:	2882000a 	slti	v0,a0,10
bfc01108:	14400007 	bnez	v0,bfc01128 <printbase+0xf8>
bfc0110c:	02009821 	move	s3,s0
bfc01110:	0bf00433 	j	bfc010cc <printbase+0x9c>
bfc01114:	24840057 	addiu	a0,a0,87
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:10
bfc01118:	0ff003d1 	jal	bfc00f44 <putchar>
bfc0111c:	00038023 	negu	s0,v1
bfc01120:	0bf00419 	j	bfc01064 <printbase+0x34>
bfc01124:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc01128:	0bf00432 	j	bfc010c8 <printbase+0x98>
bfc0112c:	24840030 	addiu	a0,a0,48

bfc01130 <strlen>:
strlen():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:14
bfc01130:	80820000 	lb	v0,0(a0)
bfc01134:	00000000 	nop
bfc01138:	10400008 	beqz	v0,bfc0115c <strlen+0x2c>
bfc0113c:	00002821 	move	a1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:15
bfc01140:	24a50001 	addiu	a1,a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:14
bfc01144:	00851021 	addu	v0,a0,a1
bfc01148:	80430000 	lb	v1,0(v0)
bfc0114c:	00000000 	nop
bfc01150:	1460fffc 	bnez	v1,bfc01144 <strlen+0x14>
bfc01154:	24a50001 	addiu	a1,a1,1
bfc01158:	24a5ffff 	addiu	a1,a1,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:18
bfc0115c:	03e00008 	jr	ra
bfc01160:	00a01021 	move	v0,a1

bfc01164 <strnlen>:
strnlen():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:36
bfc01164:	10a00010 	beqz	a1,bfc011a8 <strnlen+0x44>
bfc01168:	00001821 	move	v1,zero
bfc0116c:	80820000 	lb	v0,0(a0)
bfc01170:	00000000 	nop
bfc01174:	14400009 	bnez	v0,bfc0119c <strnlen+0x38>
bfc01178:	24630001 	addiu	v1,v1,1
bfc0117c:	2463ffff 	addiu	v1,v1,-1
bfc01180:	0bf0046a 	j	bfc011a8 <strnlen+0x44>
bfc01184:	00000000 	nop
bfc01188:	80c20000 	lb	v0,0(a2)
bfc0118c:	00000000 	nop
bfc01190:	10400005 	beqz	v0,bfc011a8 <strnlen+0x44>
bfc01194:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:37
bfc01198:	24630001 	addiu	v1,v1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:36
bfc0119c:	0065102b 	sltu	v0,v1,a1
bfc011a0:	1440fff9 	bnez	v0,bfc01188 <strnlen+0x24>
bfc011a4:	00833021 	addu	a2,a0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:40
bfc011a8:	03e00008 	jr	ra
bfc011ac:	00601021 	move	v0,v1

bfc011b0 <strcpy>:
strcpy():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:55
bfc011b0:	00801821 	move	v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:60
bfc011b4:	80a20000 	lb	v0,0(a1)
bfc011b8:	24a50001 	addiu	a1,a1,1
bfc011bc:	a0620000 	sb	v0,0(v1)
bfc011c0:	1440fffc 	bnez	v0,bfc011b4 <strcpy+0x4>
bfc011c4:	24630001 	addiu	v1,v1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:64
bfc011c8:	03e00008 	jr	ra
bfc011cc:	00801021 	move	v0,a0

bfc011d0 <strncpy>:
strncpy():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:79
bfc011d0:	10c00009 	beqz	a2,bfc011f8 <strncpy+0x28>
bfc011d4:	00801821 	move	v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:80
bfc011d8:	80a20000 	lb	v0,0(a1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:83
bfc011dc:	24c6ffff 	addiu	a2,a2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:80
bfc011e0:	a0620000 	sb	v0,0(v1)
bfc011e4:	10400002 	beqz	v0,bfc011f0 <strncpy+0x20>
bfc011e8:	24630001 	addiu	v1,v1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:81
bfc011ec:	24a50001 	addiu	a1,a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:79
bfc011f0:	14c0fff9 	bnez	a2,bfc011d8 <strncpy+0x8>
bfc011f4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:86
bfc011f8:	03e00008 	jr	ra
bfc011fc:	00801021 	move	v0,a0

bfc01200 <strcmp>:
strcmp():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:108
bfc01200:	80820000 	lb	v0,0(a0)
bfc01204:	00000000 	nop
bfc01208:	14400007 	bnez	v0,bfc01228 <strcmp+0x28>
bfc0120c:	00000000 	nop
bfc01210:	0bf00492 	j	bfc01248 <strcmp+0x48>
bfc01214:	00000000 	nop
bfc01218:	80820000 	lb	v0,0(a0)
bfc0121c:	00000000 	nop
bfc01220:	10400009 	beqz	v0,bfc01248 <strcmp+0x48>
bfc01224:	24a50001 	addiu	a1,a1,1
bfc01228:	80a30000 	lb	v1,0(a1)
bfc0122c:	00000000 	nop
bfc01230:	1043fff9 	beq	v0,v1,bfc01218 <strcmp+0x18>
bfc01234:	24840001 	addiu	a0,a0,1
bfc01238:	304400ff 	andi	a0,v0,0xff
bfc0123c:	306200ff 	andi	v0,v1,0xff
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:113
bfc01240:	03e00008 	jr	ra
bfc01244:	00821023 	subu	v0,a0,v0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:108
bfc01248:	80a30000 	lb	v1,0(a1)
bfc0124c:	00002021 	move	a0,zero
bfc01250:	306200ff 	andi	v0,v1,0xff
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:113
bfc01254:	03e00008 	jr	ra
bfc01258:	00821023 	subu	v0,a0,v0

bfc0125c <strncmp>:
strncmp():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:128
bfc0125c:	10c00016 	beqz	a2,bfc012b8 <strncmp+0x5c>
bfc01260:	00000000 	nop
bfc01264:	80830000 	lb	v1,0(a0)
bfc01268:	00000000 	nop
bfc0126c:	14600009 	bnez	v1,bfc01294 <strncmp+0x38>
bfc01270:	00000000 	nop
bfc01274:	0bf004b0 	j	bfc012c0 <strncmp+0x64>
bfc01278:	00000000 	nop
bfc0127c:	10c0000e 	beqz	a2,bfc012b8 <strncmp+0x5c>
bfc01280:	24840001 	addiu	a0,a0,1
bfc01284:	80830000 	lb	v1,0(a0)
bfc01288:	00000000 	nop
bfc0128c:	1060000c 	beqz	v1,bfc012c0 <strncmp+0x64>
bfc01290:	24a50001 	addiu	a1,a1,1
bfc01294:	80a20000 	lb	v0,0(a1)
bfc01298:	00000000 	nop
bfc0129c:	1062fff7 	beq	v1,v0,bfc0127c <strncmp+0x20>
bfc012a0:	24c6ffff 	addiu	a2,a2,-1
bfc012a4:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:131
bfc012a8:	306300ff 	andi	v1,v1,0xff
bfc012ac:	304200ff 	andi	v0,v0,0xff
bfc012b0:	03e00008 	jr	ra
bfc012b4:	00621023 	subu	v0,v1,v0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:132
bfc012b8:	03e00008 	jr	ra
bfc012bc:	00001021 	move	v0,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:128
bfc012c0:	80a20000 	lb	v0,0(a1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:131
bfc012c4:	306300ff 	andi	v1,v1,0xff
bfc012c8:	304200ff 	andi	v0,v0,0xff
bfc012cc:	03e00008 	jr	ra
bfc012d0:	00621023 	subu	v0,v1,v0

bfc012d4 <strchr>:
strchr():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:144
bfc012d4:	80830000 	lb	v1,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:143
bfc012d8:	00052e00 	sll	a1,a1,0x18
bfc012dc:	00801021 	move	v0,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:144
bfc012e0:	1060000c 	beqz	v1,bfc01314 <strchr+0x40>
bfc012e4:	00052e03 	sra	a1,a1,0x18
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:145
bfc012e8:	14650006 	bne	v1,a1,bfc01304 <strchr+0x30>
bfc012ec:	24420001 	addiu	v0,v0,1
bfc012f0:	03e00008 	jr	ra
bfc012f4:	2442ffff 	addiu	v0,v0,-1
bfc012f8:	10650008 	beq	v1,a1,bfc0131c <strchr+0x48>
bfc012fc:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:148
bfc01300:	24420001 	addiu	v0,v0,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:144
bfc01304:	80430000 	lb	v1,0(v0)
bfc01308:	00000000 	nop
bfc0130c:	1460fffa 	bnez	v1,bfc012f8 <strchr+0x24>
bfc01310:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:151
bfc01314:	03e00008 	jr	ra
bfc01318:	00001021 	move	v0,zero
bfc0131c:	03e00008 	jr	ra
bfc01320:	00000000 	nop

bfc01324 <strfind>:
strfind():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:164
bfc01324:	80830000 	lb	v1,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:163
bfc01328:	00052e00 	sll	a1,a1,0x18
bfc0132c:	00801021 	move	v0,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:164
bfc01330:	1060000c 	beqz	v1,bfc01364 <strfind+0x40>
bfc01334:	00052e03 	sra	a1,a1,0x18
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:165
bfc01338:	14650006 	bne	v1,a1,bfc01354 <strfind+0x30>
bfc0133c:	24420001 	addiu	v0,v0,1
bfc01340:	03e00008 	jr	ra
bfc01344:	2442ffff 	addiu	v0,v0,-1
bfc01348:	10650008 	beq	v1,a1,bfc0136c <strfind+0x48>
bfc0134c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:168
bfc01350:	24420001 	addiu	v0,v0,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:164
bfc01354:	80430000 	lb	v1,0(v0)
bfc01358:	00000000 	nop
bfc0135c:	1460fffa 	bnez	v1,bfc01348 <strfind+0x24>
bfc01360:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:171
bfc01364:	03e00008 	jr	ra
bfc01368:	00000000 	nop
bfc0136c:	03e00008 	jr	ra
bfc01370:	00000000 	nop

bfc01374 <memset>:
memset():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:273
bfc01374:	00052e00 	sll	a1,a1,0x18
bfc01378:	00801021 	move	v0,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:278
bfc0137c:	10c00006 	beqz	a2,bfc01398 <memset+0x24>
bfc01380:	00052e03 	sra	a1,a1,0x18
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:277
bfc01384:	00801821 	move	v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:279
bfc01388:	24c6ffff 	addiu	a2,a2,-1
bfc0138c:	a0650000 	sb	a1,0(v1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:278
bfc01390:	14c0fffd 	bnez	a2,bfc01388 <memset+0x14>
bfc01394:	24630001 	addiu	v1,v1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:283
bfc01398:	03e00008 	jr	ra
bfc0139c:	00000000 	nop

bfc013a0 <memcpy>:
memcpy():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:306
bfc013a0:	10c00008 	beqz	a2,bfc013c4 <memcpy+0x24>
bfc013a4:	00804021 	move	t0,a0
bfc013a8:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:307
bfc013ac:	00a71021 	addu	v0,a1,a3
bfc013b0:	90440000 	lbu	a0,0(v0)
bfc013b4:	01071821 	addu	v1,t0,a3
bfc013b8:	24e70001 	addiu	a3,a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:306
bfc013bc:	14e6fffb 	bne	a3,a2,bfc013ac <memcpy+0xc>
bfc013c0:	a0640000 	sb	a0,0(v1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:311
bfc013c4:	03e00008 	jr	ra
bfc013c8:	01001021 	move	v0,t0

bfc013cc <memmove>:
memmove():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:329
bfc013cc:	00a4102b 	sltu	v0,a1,a0
bfc013d0:	10400005 	beqz	v0,bfc013e8 <memmove+0x1c>
bfc013d4:	00804021 	move	t0,a0
bfc013d8:	00a62021 	addu	a0,a1,a2
bfc013dc:	0104102b 	sltu	v0,t0,a0
bfc013e0:	1440000b 	bnez	v0,bfc01410 <memmove+0x44>
bfc013e4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:335
bfc013e8:	10c00007 	beqz	a2,bfc01408 <memmove+0x3c>
bfc013ec:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:336
bfc013f0:	00a71021 	addu	v0,a1,a3
bfc013f4:	90440000 	lbu	a0,0(v0)
bfc013f8:	01071821 	addu	v1,t0,a3
bfc013fc:	24e70001 	addiu	a3,a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:335
bfc01400:	14c7fffb 	bne	a2,a3,bfc013f0 <memmove+0x24>
bfc01404:	a0640000 	sb	a0,0(v1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:341
bfc01408:	03e00008 	jr	ra
bfc0140c:	01001021 	move	v0,t0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:331
bfc01410:	10c0fffd 	beqz	a2,bfc01408 <memmove+0x3c>
bfc01414:	01061821 	addu	v1,t0,a2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:332
bfc01418:	2484ffff 	addiu	a0,a0,-1
bfc0141c:	90820000 	lbu	v0,0(a0)
bfc01420:	2463ffff 	addiu	v1,v1,-1
bfc01424:	24c6ffff 	addiu	a2,a2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:331
bfc01428:	14c0fffb 	bnez	a2,bfc01418 <memmove+0x4c>
bfc0142c:	a0620000 	sb	v0,0(v1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:341
bfc01430:	03e00008 	jr	ra
bfc01434:	01001021 	move	v0,t0

bfc01438 <memcmp>:
memcmp():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:361
bfc01438:	10c00011 	beqz	a2,bfc01480 <memcmp+0x48>
bfc0143c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:362
bfc01440:	80830000 	lb	v1,0(a0)
bfc01444:	80a20000 	lb	v0,0(a1)
bfc01448:	00000000 	nop
bfc0144c:	1462000e 	bne	v1,v0,bfc01488 <memcmp+0x50>
bfc01450:	24c6ffff 	addiu	a2,a2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:361
bfc01454:	0bf0051c 	j	bfc01470 <memcmp+0x38>
bfc01458:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:362
bfc0145c:	80630001 	lb	v1,1(v1)
bfc01460:	80420001 	lb	v0,1(v0)
bfc01464:	00000000 	nop
bfc01468:	14620007 	bne	v1,v0,bfc01488 <memcmp+0x50>
bfc0146c:	24c6ffff 	addiu	a2,a2,-1
bfc01470:	00871821 	addu	v1,a0,a3
bfc01474:	00a71021 	addu	v0,a1,a3
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:361
bfc01478:	14c0fff8 	bnez	a2,bfc0145c <memcmp+0x24>
bfc0147c:	24e70001 	addiu	a3,a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:368
bfc01480:	03e00008 	jr	ra
bfc01484:	00001021 	move	v0,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:363
bfc01488:	306300ff 	andi	v1,v1,0xff
bfc0148c:	304200ff 	andi	v0,v0,0xff
bfc01490:	03e00008 	jr	ra
bfc01494:	00621023 	subu	v0,v1,v0

bfc01498 <bzero>:
memset():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:278
bfc01498:	10a00005 	beqz	a1,bfc014b0 <bzero+0x18>
bfc0149c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:279
bfc014a0:	24a5ffff 	addiu	a1,a1,-1
bfc014a4:	a0800000 	sb	zero,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/string.c:278
bfc014a8:	14a0fffd 	bnez	a1,bfc014a0 <bzero+0x8>
bfc014ac:	24840001 	addiu	a0,a0,1
bfc014b0:	03e00008 	jr	ra
bfc014b4:	00000000 	nop
	...

bfc014c0 <_get_count>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:15
bfc014c0:	3c01bfd0 	lui	at,0xbfd0
bfc014c4:	3421e000 	ori	at,at,0xe000
bfc014c8:	8c220000 	lw	v0,0(at)
bfc014cc:	03e00008 	jr	ra
bfc014d0:	00000000 	nop

bfc014d4 <get_count>:
get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:20
bfc014d4:	3c01bfd0 	lui	at,0xbfd0
bfc014d8:	3421e000 	ori	at,at,0xe000
bfc014dc:	8c220000 	lw	v0,0(at)
bfc014e0:	03e00008 	jr	ra
bfc014e4:	00000000 	nop

bfc014e8 <get_clock>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc014e8:	3c01bfd0 	lui	at,0xbfd0
bfc014ec:	3421e000 	ori	at,at,0xe000
bfc014f0:	8c220000 	lw	v0,0(at)
get_clock():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:39
bfc014f4:	03e00008 	jr	ra
bfc014f8:	00021040 	sll	v0,v0,0x1

bfc014fc <get_ns>:
get_ns():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:45
bfc014fc:	40024800 	mfc0	v0,$9
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:51
bfc01500:	03e00008 	jr	ra
bfc01504:	00021040 	sll	v0,v0,0x1

bfc01508 <clock_gettime>:
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:23
bfc01508:	27bdffe8 	addiu	sp,sp,-24
bfc0150c:	afbf0014 	sw	ra,20(sp)
bfc01510:	00a04821 	move	t1,a1
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc01514:	3c01bfd0 	lui	at,0xbfd0
bfc01518:	3421e000 	ori	at,at,0xe000
bfc0151c:	8c230000 	lw	v1,0(at)
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc01520:	240203e8 	li	v0,1000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc01524:	14400002 	bnez	v0,bfc01530 <clock_gettime+0x28>
bfc01528:	0062001b 	divu	zero,v1,v0
bfc0152c:	0007000d 	break	0x7
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc01530:	00031840 	sll	v1,v1,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc01534:	3c073b9a 	lui	a3,0x3b9a
bfc01538:	34e7ca00 	ori	a3,a3,0xca00
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc0153c:	3c048000 	lui	a0,0x8000
bfc01540:	24840c20 	addiu	a0,a0,3104
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc01544:	00003012 	mflo	a2
bfc01548:	00063040 	sll	a2,a2,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc0154c:	14400002 	bnez	v0,bfc01558 <clock_gettime+0x50>
bfc01550:	0062001b 	divu	zero,v1,v0
bfc01554:	0007000d 	break	0x7
bfc01558:	00002810 	mfhi	a1
bfc0155c:	ad250004 	sw	a1,4(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc01560:	14400002 	bnez	v0,bfc0156c <clock_gettime+0x64>
bfc01564:	00c2001b 	divu	zero,a2,v0
bfc01568:	0007000d 	break	0x7
bfc0156c:	00005010 	mfhi	t2
bfc01570:	ad2a0008 	sw	t2,8(t1)
bfc01574:	00004012 	mflo	t0
bfc01578:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc0157c:	14e00002 	bnez	a3,bfc01588 <clock_gettime+0x80>
bfc01580:	00c7001b 	divu	zero,a2,a3
bfc01584:	0007000d 	break	0x7
bfc01588:	00003012 	mflo	a2
bfc0158c:	ad260000 	sw	a2,0(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:28
bfc01590:	14400002 	bnez	v0,bfc0159c <clock_gettime+0x94>
bfc01594:	0102001b 	divu	zero,t0,v0
bfc01598:	0007000d 	break	0x7
bfc0159c:	00001810 	mfhi	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc015a0:	0ff00338 	jal	bfc00ce0 <printf>
bfc015a4:	ad23000c 	sw	v1,12(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:32
bfc015a8:	8fbf0014 	lw	ra,20(sp)
bfc015ac:	00001021 	move	v0,zero
bfc015b0:	03e00008 	jr	ra
bfc015b4:	27bd0018 	addiu	sp,sp,24
	...

bfc015c0 <get_epc>:
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc015c0:	40027000 	mfc0	v0,c0_epc
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:9
bfc015c4:	03e00008 	jr	ra
bfc015c8:	00000000 	nop

bfc015cc <get_cause>:
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc015cc:	40026800 	mfc0	v0,c0_cause
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:19
bfc015d0:	03e00008 	jr	ra
bfc015d4:	00000000 	nop

bfc015d8 <exception>:
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc015d8:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:22
bfc015dc:	27bdffe8 	addiu	sp,sp,-24
bfc015e0:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc015e4:	0ff00338 	jal	bfc00ce0 <printf>
bfc015e8:	24840c34 	addiu	a0,a0,3124
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc015ec:	3c048000 	lui	a0,0x8000
bfc015f0:	24840c50 	addiu	a0,a0,3152
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc015f4:	40057000 	mfc0	a1,c0_epc
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc015f8:	0ff00338 	jal	bfc00ce0 <printf>
bfc015fc:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc01600:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc01604:	8fbf0014 	lw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc01608:	24840c60 	addiu	a0,a0,3168
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc0160c:	27bd0018 	addiu	sp,sp,24
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc01610:	40056800 	mfc0	a1,c0_cause
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc01614:	0bf00338 	j	bfc00ce0 <printf>
bfc01618:	00000000 	nop
bfc0161c:	00000000 	nop
