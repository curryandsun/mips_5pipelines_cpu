
obj/dhrystone/main.elf:     file format elf32-tradlittlemips
obj/dhrystone/main.elf


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
bfc00010:	27bd471c 	addiu	sp,sp,18204
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/start.S:55
bfc00014:	3c1c8001 	lui	gp,0x8001
bfc00018:	279c8740 	addiu	gp,gp,-30912
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
bfc00380:	0ff0065a 	jal	bfc01968 <exception>
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
bfc0039c:	0ff00619 	jal	bfc01864 <get_count>
bfc003a0:	afb00014 	sw	s0,20(sp)
bfc003a4:	24040064 	li	a0,100
bfc003a8:	0ff001a4 	jal	bfc00690 <dhrystone>
bfc003ac:	00408821 	move	s1,v0
bfc003b0:	0ff00619 	jal	bfc01864 <get_count>
bfc003b4:	00408021 	move	s0,v0
bfc003b8:	12000015 	beqz	s0,bfc00410 <shell+0x80>
bfc003bc:	00403821 	move	a3,v0
bfc003c0:	3c0ebfd0 	lui	t6,0xbfd0
bfc003c4:	00f17823 	subu	t7,a3,s1
bfc003c8:	8fbf001c 	lw	ra,28(sp)
bfc003cc:	3c11bfd0 	lui	s1,0xbfd0
bfc003d0:	3627f010 	ori	a3,s1,0xf010
bfc003d4:	35c9f000 	ori	t1,t6,0xf000
bfc003d8:	35cdf008 	ori	t5,t6,0xf008
bfc003dc:	35cbf004 	ori	t3,t6,0xf004
bfc003e0:	240c0001 	li	t4,1
bfc003e4:	240a0002 	li	t2,2
bfc003e8:	adac0000 	sw	t4,0(t5)
bfc003ec:	8fb10018 	lw	s1,24(sp)
bfc003f0:	ad6a0000 	sw	t2,0(t3)
bfc003f4:	8fb00014 	lw	s0,20(sp)
bfc003f8:	ad200000 	sw	zero,0(t1)
bfc003fc:	27bd0020 	addiu	sp,sp,32
bfc00400:	03e00008 	jr	ra
bfc00404:	acef0000 	sw	t7,0(a3)
	...
bfc00410:	3c08bfd0 	lui	t0,0xbfd0
bfc00414:	00f17823 	subu	t7,a3,s1
bfc00418:	8fbf001c 	lw	ra,28(sp)
bfc0041c:	3c11bfd0 	lui	s1,0xbfd0
bfc00420:	24040001 	li	a0,1
bfc00424:	3627f010 	ori	a3,s1,0xf010
bfc00428:	3506f000 	ori	a2,t0,0xf000
bfc0042c:	3505f008 	ori	a1,t0,0xf008
bfc00430:	3502f004 	ori	v0,t0,0xf004
bfc00434:	3403ffff 	li	v1,0xffff
bfc00438:	ac440000 	sw	a0,0(v0)
bfc0043c:	8fb10018 	lw	s1,24(sp)
bfc00440:	acc30000 	sw	v1,0(a2)
bfc00444:	8fb00014 	lw	s0,20(sp)
bfc00448:	aca40000 	sw	a0,0(a1)
bfc0044c:	27bd0020 	addiu	sp,sp,32
bfc00450:	03e00008 	jr	ra
bfc00454:	acef0000 	sw	t7,0(a3)
	...

bfc00460 <Proc_2>:
Proc_2():
bfc00460:	83838030 	lb	v1,-32720(gp)
bfc00464:	24020041 	li	v0,65
bfc00468:	8c850000 	lw	a1,0(a0)
bfc0046c:	10620004 	beq	v1,v0,bfc00480 <Proc_2+0x20>
bfc00470:	00000000 	nop
bfc00474:	03e00008 	jr	ra
bfc00478:	00000000 	nop
bfc0047c:	00000000 	nop
bfc00480:	8f87802c 	lw	a3,-32724(gp)
bfc00484:	00000000 	nop
bfc00488:	00a73023 	subu	a2,a1,a3
bfc0048c:	24c50009 	addiu	a1,a2,9
bfc00490:	03e00008 	jr	ra
bfc00494:	ac850000 	sw	a1,0(a0)
	...

bfc004a0 <Proc_4>:
Proc_4():
bfc004a0:	83878030 	lb	a3,-32720(gp)
bfc004a4:	8f858038 	lw	a1,-32712(gp)
bfc004a8:	38e60041 	xori	a2,a3,0x41
bfc004ac:	2cc20001 	sltiu	v0,a2,1
bfc004b0:	00a21825 	or	v1,a1,v0
bfc004b4:	24040042 	li	a0,66
bfc004b8:	af838038 	sw	v1,-32712(gp)
bfc004bc:	03e00008 	jr	ra
bfc004c0:	a3848031 	sb	a0,-32719(gp)
	...

bfc004d0 <Proc_5>:
Proc_5():
bfc004d0:	24020041 	li	v0,65
bfc004d4:	a3828030 	sb	v0,-32720(gp)
bfc004d8:	03e00008 	jr	ra
bfc004dc:	af808038 	sw	zero,-32712(gp)

bfc004e0 <Proc_3>:
Proc_3():
bfc004e0:	8f828034 	lw	v0,-32716(gp)
bfc004e4:	00000000 	nop
bfc004e8:	10400005 	beqz	v0,bfc00500 <Proc_3+0x20>
bfc004ec:	00000000 	nop
bfc004f0:	8c420000 	lw	v0,0(v0)
bfc004f4:	00000000 	nop
bfc004f8:	ac820000 	sw	v0,0(a0)
bfc004fc:	8f828034 	lw	v0,-32716(gp)
bfc00500:	8f85802c 	lw	a1,-32724(gp)
bfc00504:	2446000c 	addiu	a2,v0,12
bfc00508:	0bf0046c 	j	bfc011b0 <Proc_7>
bfc0050c:	2404000a 	li	a0,10

bfc00510 <Proc_1>:
Proc_1():
bfc00510:	8f8b8034 	lw	t3,-32716(gp)
bfc00514:	27bdffe0 	addiu	sp,sp,-32
bfc00518:	afb10018 	sw	s1,24(sp)
bfc0051c:	afb00014 	sw	s0,20(sp)
bfc00520:	afbf001c 	sw	ra,28(sp)
bfc00524:	8c900000 	lw	s0,0(a0)
bfc00528:	8d630000 	lw	v1,0(t3)
bfc0052c:	8d62000c 	lw	v0,12(t3)
bfc00530:	8d7f0008 	lw	ra,8(t3)
bfc00534:	00808821 	move	s1,a0
bfc00538:	8d640004 	lw	a0,4(t3)
bfc0053c:	25790010 	addiu	t9,t3,16
bfc00540:	ae030000 	sw	v1,0(s0)
bfc00544:	ae02000c 	sw	v0,12(s0)
bfc00548:	ae040004 	sw	a0,4(s0)
bfc0054c:	ae1f0008 	sw	ra,8(s0)
bfc00550:	8f2f000c 	lw	t7,12(t9)
bfc00554:	8d780010 	lw	t8,16(t3)
bfc00558:	8f2e0004 	lw	t6,4(t9)
bfc0055c:	8f2d0008 	lw	t5,8(t9)
bfc00560:	260c0010 	addiu	t4,s0,16
bfc00564:	ae180010 	sw	t8,16(s0)
bfc00568:	256a0020 	addiu	t2,t3,32
bfc0056c:	ad8f000c 	sw	t7,12(t4)
bfc00570:	ad8e0004 	sw	t6,4(t4)
bfc00574:	ad8d0008 	sw	t5,8(t4)
bfc00578:	8d690020 	lw	t1,32(t3)
bfc0057c:	8d46000c 	lw	a2,12(t2)
bfc00580:	8d450004 	lw	a1,4(t2)
bfc00584:	8d470008 	lw	a3,8(t2)
bfc00588:	26080020 	addiu	t0,s0,32
bfc0058c:	ae090020 	sw	t1,32(s0)
bfc00590:	ad06000c 	sw	a2,12(t0)
bfc00594:	ad050004 	sw	a1,4(t0)
bfc00598:	ad070008 	sw	a3,8(t0)
bfc0059c:	8e220000 	lw	v0,0(s1)
bfc005a0:	24040005 	li	a0,5
bfc005a4:	ae24000c 	sw	a0,12(s1)
bfc005a8:	ae020000 	sw	v0,0(s0)
bfc005ac:	ae04000c 	sw	a0,12(s0)
bfc005b0:	0ff00138 	jal	bfc004e0 <Proc_3>
bfc005b4:	02002021 	move	a0,s0
bfc005b8:	8e030004 	lw	v1,4(s0)
bfc005bc:	00000000 	nop
bfc005c0:	10600023 	beqz	v1,bfc00650 <Proc_1+0x140>
bfc005c4:	262e0010 	addiu	t6,s1,16
bfc005c8:	8e2c0000 	lw	t4,0(s1)
bfc005cc:	00000000 	nop
bfc005d0:	8d820000 	lw	v0,0(t4)
bfc005d4:	8d840004 	lw	a0,4(t4)
bfc005d8:	8d880008 	lw	t0,8(t4)
bfc005dc:	8d83000c 	lw	v1,12(t4)
bfc005e0:	259f0010 	addiu	ra,t4,16
bfc005e4:	ae220000 	sw	v0,0(s1)
bfc005e8:	ae240004 	sw	a0,4(s1)
bfc005ec:	ae280008 	sw	t0,8(s1)
bfc005f0:	ae23000c 	sw	v1,12(s1)
bfc005f4:	8ff8000c 	lw	t8,12(ra)
bfc005f8:	8fef0004 	lw	t7,4(ra)
bfc005fc:	8fed0008 	lw	t5,8(ra)
bfc00600:	8d990010 	lw	t9,16(t4)
bfc00604:	258b0020 	addiu	t3,t4,32
bfc00608:	ae390010 	sw	t9,16(s1)
bfc0060c:	add8000c 	sw	t8,12(t6)
bfc00610:	adcf0004 	sw	t7,4(t6)
bfc00614:	adcd0008 	sw	t5,8(t6)
bfc00618:	8d8a0020 	lw	t2,32(t4)
bfc0061c:	8d65000c 	lw	a1,12(t3)
bfc00620:	8d660004 	lw	a2,4(t3)
bfc00624:	8d690008 	lw	t1,8(t3)
bfc00628:	26300020 	addiu	s0,s1,32
bfc0062c:	ae2a0020 	sw	t2,32(s1)
bfc00630:	ae05000c 	sw	a1,12(s0)
bfc00634:	ae060004 	sw	a2,4(s0)
bfc00638:	ae090008 	sw	t1,8(s0)
bfc0063c:	8fbf001c 	lw	ra,28(sp)
bfc00640:	8fb10018 	lw	s1,24(sp)
bfc00644:	8fb00014 	lw	s0,20(sp)
bfc00648:	03e00008 	jr	ra
bfc0064c:	27bd0020 	addiu	sp,sp,32
bfc00650:	8e240008 	lw	a0,8(s1)
bfc00654:	24070006 	li	a3,6
bfc00658:	26050008 	addiu	a1,s0,8
bfc0065c:	0ff0044c 	jal	bfc01130 <Proc_6>
bfc00660:	ae07000c 	sw	a3,12(s0)
bfc00664:	8f888034 	lw	t0,-32716(gp)
bfc00668:	8e04000c 	lw	a0,12(s0)
bfc0066c:	8d110000 	lw	s1,0(t0)
bfc00670:	2606000c 	addiu	a2,s0,12
bfc00674:	ae110000 	sw	s1,0(s0)
bfc00678:	8fbf001c 	lw	ra,28(sp)
bfc0067c:	8fb10018 	lw	s1,24(sp)
bfc00680:	8fb00014 	lw	s0,20(sp)
bfc00684:	2405000a 	li	a1,10
bfc00688:	0bf0046c 	j	bfc011b0 <Proc_7>
bfc0068c:	27bd0020 	addiu	sp,sp,32

bfc00690 <dhrystone>:
dhrystone():
bfc00690:	27bdff68 	addiu	sp,sp,-152
bfc00694:	afb40080 	sw	s4,128(sp)
bfc00698:	afa40098 	sw	a0,152(sp)
bfc0069c:	3c148000 	lui	s4,0x8000
bfc006a0:	2404000a 	li	a0,10
bfc006a4:	afbf0094 	sw	ra,148(sp)
bfc006a8:	afbe0090 	sw	s8,144(sp)
bfc006ac:	afb7008c 	sw	s7,140(sp)
bfc006b0:	afb60088 	sw	s6,136(sp)
bfc006b4:	afb50084 	sw	s5,132(sp)
bfc006b8:	afb3007c 	sw	s3,124(sp)
bfc006bc:	afb20078 	sw	s2,120(sp)
bfc006c0:	afb10074 	sw	s1,116(sp)
bfc006c4:	0ff00589 	jal	bfc01624 <putchar>
bfc006c8:	afb00070 	sw	s0,112(sp)
bfc006cc:	0ff005b6 	jal	bfc016d8 <puts>
bfc006d0:	26840000 	addiu	a0,s4,0
bfc006d4:	0ff00589 	jal	bfc01624 <putchar>
bfc006d8:	2404000a 	li	a0,10
bfc006dc:	3c158000 	lui	s5,0x8000
bfc006e0:	3c0c8000 	lui	t4,0x8000
bfc006e4:	26ab0030 	addiu	t3,s5,48
bfc006e8:	3c0a8000 	lui	t2,0x8000
bfc006ec:	25950050 	addiu	s5,t4,80
bfc006f0:	3c078000 	lui	a3,0x8000
bfc006f4:	3c088000 	lui	t0,0x8000
bfc006f8:	8d6d000c 	lw	t5,12(t3)
bfc006fc:	8d6e0010 	lw	t6,16(t3)
bfc00700:	8d6f0014 	lw	t7,20(t3)
bfc00704:	8d790018 	lw	t9,24(t3)
bfc00708:	9170001e 	lbu	s0,30(t3)
bfc0070c:	8d650004 	lw	a1,4(t3)
bfc00710:	8d7e0008 	lw	s8,8(t3)
bfc00714:	9571001c 	lhu	s1,28(t3)
bfc00718:	8eb20004 	lw	s2,4(s5)
bfc0071c:	8d180050 	lw	t8,80(t0)
bfc00720:	8ce90030 	lw	t1,48(a3)
bfc00724:	25562ec0 	addiu	s6,t2,11968
bfc00728:	3c068000 	lui	a2,0x8000
bfc0072c:	8eb30008 	lw	s3,8(s5)
bfc00730:	26c40010 	addiu	a0,s6,16
bfc00734:	24d72e90 	addiu	s7,a2,11920
bfc00738:	24030028 	li	v1,40
bfc0073c:	24020002 	li	v0,2
bfc00740:	aec90010 	sw	t1,16(s6)
bfc00744:	aec3000c 	sw	v1,12(s6)
bfc00748:	ac8d000c 	sw	t5,12(a0)
bfc0074c:	ac8e0010 	sw	t6,16(a0)
bfc00750:	ac8f0014 	sw	t7,20(a0)
bfc00754:	ac990018 	sw	t9,24(a0)
bfc00758:	a090001e 	sb	s0,30(a0)
bfc0075c:	ac850004 	sw	a1,4(a0)
bfc00760:	aec20008 	sw	v0,8(s6)
bfc00764:	ac9e0008 	sw	s8,8(a0)
bfc00768:	a491001c 	sh	s1,28(a0)
bfc0076c:	ad572ec0 	sw	s7,11968(t2)
bfc00770:	afb8001c 	sw	t8,28(sp)
bfc00774:	afb20020 	sw	s2,32(sp)
bfc00778:	af978028 	sw	s7,-32728(gp)
bfc0077c:	af968034 	sw	s6,-32716(gp)
bfc00780:	aec00004 	sw	zero,4(s6)
bfc00784:	3c108000 	lui	s0,0x8000
bfc00788:	8eac000c 	lw	t4,12(s5)
bfc0078c:	8eab0010 	lw	t3,16(s5)
bfc00790:	8ea70014 	lw	a3,20(s5)
bfc00794:	8ea80018 	lw	t0,24(s5)
bfc00798:	26050780 	addiu	a1,s0,1920
bfc0079c:	afb30024 	sw	s3,36(sp)
bfc007a0:	2402000a 	li	v0,10
bfc007a4:	92a9001e 	lbu	t1,30(s5)
bfc007a8:	96aa001c 	lhu	t2,28(s5)
bfc007ac:	2404000a 	li	a0,10
bfc007b0:	aca2065c 	sw	v0,1628(a1)
bfc007b4:	afac0028 	sw	t4,40(sp)
bfc007b8:	afab002c 	sw	t3,44(sp)
bfc007bc:	afa70030 	sw	a3,48(sp)
bfc007c0:	afa80034 	sw	t0,52(sp)
bfc007c4:	a7aa0038 	sh	t2,56(sp)
bfc007c8:	0ff00589 	jal	bfc01624 <putchar>
bfc007cc:	a3a9003a 	sb	t1,58(sp)
bfc007d0:	0ff005b6 	jal	bfc016d8 <puts>
bfc007d4:	26840000 	addiu	a0,s4,0
bfc007d8:	0ff00589 	jal	bfc01624 <putchar>
bfc007dc:	2404000a 	li	a0,10
bfc007e0:	8f838010 	lw	v1,-32752(gp)
bfc007e4:	00000000 	nop
bfc007e8:	10600230 	beqz	v1,bfc010ac <dhrystone+0xa1c>
bfc007ec:	3c1f8000 	lui	ra,0x8000
bfc007f0:	27e40070 	addiu	a0,ra,112
bfc007f4:	0ff005b6 	jal	bfc016d8 <puts>
bfc007f8:	3c168000 	lui	s6,0x8000
bfc007fc:	0ff00589 	jal	bfc01624 <putchar>
bfc00800:	2404000a 	li	a0,10
bfc00804:	8fa50098 	lw	a1,152(sp)
bfc00808:	0ff004f0 	jal	bfc013c0 <printf>
bfc0080c:	26c400cc 	addiu	a0,s6,204
bfc00810:	0ff00623 	jal	bfc0188c <get_ns>
bfc00814:	00000000 	nop
bfc00818:	8fb30098 	lw	s3,152(sp)
bfc0081c:	00000000 	nop
bfc00820:	1a600231 	blez	s3,bfc010e8 <dhrystone+0xa58>
bfc00824:	af828020 	sw	v0,-32736(gp)
bfc00828:	3c118000 	lui	s1,0x8000
bfc0082c:	3c178000 	lui	s7,0x8000
bfc00830:	3c048000 	lui	a0,0x8000
bfc00834:	afb70064 	sw	s7,100(sp)
bfc00838:	afb10068 	sw	s1,104(sp)
bfc0083c:	24140001 	li	s4,1
bfc00840:	27b7003c 	addiu	s7,sp,60
bfc00844:	263500fc 	addiu	s5,s1,252
bfc00848:	241e0001 	li	s8,1
bfc0084c:	27b60014 	addiu	s6,sp,20
bfc00850:	2493011c 	addiu	s3,a0,284
bfc00854:	8fa50068 	lw	a1,104(sp)
bfc00858:	8ea80010 	lw	t0,16(s5)
bfc0085c:	8eac0004 	lw	t4,4(s5)
bfc00860:	8ea60008 	lw	a2,8(s5)
bfc00864:	8ea7000c 	lw	a3,12(s5)
bfc00868:	8ea90014 	lw	t1,20(s5)
bfc0086c:	8eaa0018 	lw	t2,24(s5)
bfc00870:	96ab001c 	lhu	t3,28(s5)
bfc00874:	92b0001e 	lbu	s0,30(s5)
bfc00878:	8ca200fc 	lw	v0,252(a1)
bfc0087c:	24030041 	li	v1,65
bfc00880:	aee80010 	sw	t0,16(s7)
bfc00884:	240d0042 	li	t5,66
bfc00888:	240e0002 	li	t6,2
bfc0088c:	27a4001c 	addiu	a0,sp,28
bfc00890:	02e02821 	move	a1,s7
bfc00894:	aee20000 	sw	v0,0(s7)
bfc00898:	aeec0004 	sw	t4,4(s7)
bfc0089c:	aee60008 	sw	a2,8(s7)
bfc008a0:	aee7000c 	sw	a3,12(s7)
bfc008a4:	aee90014 	sw	t1,20(s7)
bfc008a8:	aeea0018 	sw	t2,24(s7)
bfc008ac:	a6eb001c 	sh	t3,28(s7)
bfc008b0:	a2f0001e 	sb	s0,30(s7)
bfc008b4:	a3838030 	sb	v1,-32720(gp)
bfc008b8:	af9e8038 	sw	s8,-32712(gp)
bfc008bc:	a38d8031 	sb	t5,-32719(gp)
bfc008c0:	afae0010 	sw	t6,16(sp)
bfc008c4:	0ff004a4 	jal	bfc01290 <Func_2>
bfc008c8:	afbe0018 	sw	s8,24(sp)
bfc008cc:	8fa80010 	lw	t0,16(sp)
bfc008d0:	2c4f0001 	sltiu	t7,v0,1
bfc008d4:	29190003 	slti	t9,t0,3
bfc008d8:	13200036 	beqz	t9,bfc009b4 <dhrystone+0x324>
bfc008dc:	af8f8038 	sw	t7,-32712(gp)
bfc008e0:	00087880 	sll	t7,t0,0x2
bfc008e4:	01e8c821 	addu	t9,t7,t0
bfc008e8:	01002021 	move	a0,t0
bfc008ec:	273ffffd 	addiu	ra,t9,-3
bfc008f0:	24050003 	li	a1,3
bfc008f4:	afbf0014 	sw	ra,20(sp)
bfc008f8:	0ff0046c 	jal	bfc011b0 <Proc_7>
bfc008fc:	02c03021 	move	a2,s6
bfc00900:	8fb10010 	lw	s1,16(sp)
bfc00904:	24050003 	li	a1,3
bfc00908:	26280001 	addiu	t0,s1,1
bfc0090c:	00082080 	sll	a0,t0,0x2
bfc00910:	0088c021 	addu	t8,a0,t0
bfc00914:	29120003 	slti	s2,t0,3
bfc00918:	02c03021 	move	a2,s6
bfc0091c:	01002021 	move	a0,t0
bfc00920:	2702fffd 	addiu	v0,t8,-3
bfc00924:	12400023 	beqz	s2,bfc009b4 <dhrystone+0x324>
bfc00928:	afa80010 	sw	t0,16(sp)
bfc0092c:	0ff0046c 	jal	bfc011b0 <Proc_7>
bfc00930:	afa20014 	sw	v0,20(sp)
bfc00934:	8fb80010 	lw	t8,16(sp)
bfc00938:	24050003 	li	a1,3
bfc0093c:	27080001 	addiu	t0,t8,1
bfc00940:	00081080 	sll	v0,t0,0x2
bfc00944:	00486021 	addu	t4,v0,t0
bfc00948:	29100003 	slti	s0,t0,3
bfc0094c:	02c03021 	move	a2,s6
bfc00950:	01002021 	move	a0,t0
bfc00954:	2583fffd 	addiu	v1,t4,-3
bfc00958:	12000016 	beqz	s0,bfc009b4 <dhrystone+0x324>
bfc0095c:	afa80010 	sw	t0,16(sp)
bfc00960:	0ff0046c 	jal	bfc011b0 <Proc_7>
bfc00964:	afa30014 	sw	v1,20(sp)
bfc00968:	8fae0010 	lw	t6,16(sp)
bfc0096c:	24050003 	li	a1,3
bfc00970:	25c80001 	addiu	t0,t6,1
bfc00974:	00087880 	sll	t7,t0,0x2
bfc00978:	01e89021 	addu	s2,t7,t0
bfc0097c:	29190003 	slti	t9,t0,3
bfc00980:	02c03021 	move	a2,s6
bfc00984:	2643fffd 	addiu	v1,s2,-3
bfc00988:	01002021 	move	a0,t0
bfc0098c:	13200009 	beqz	t9,bfc009b4 <dhrystone+0x324>
bfc00990:	afa80010 	sw	t0,16(sp)
bfc00994:	0ff0046c 	jal	bfc011b0 <Proc_7>
bfc00998:	afa30014 	sw	v1,20(sp)
bfc0099c:	8fa50010 	lw	a1,16(sp)
bfc009a0:	00000000 	nop
bfc009a4:	24a80001 	addiu	t0,a1,1
bfc009a8:	29060003 	slti	a2,t0,3
bfc009ac:	14c0ffcc 	bnez	a2,bfc008e0 <dhrystone+0x250>
bfc009b0:	afa80010 	sw	t0,16(sp)
bfc009b4:	3c038000 	lui	v1,0x8000
bfc009b8:	8fa70014 	lw	a3,20(sp)
bfc009bc:	3c108000 	lui	s0,0x8000
bfc009c0:	01003021 	move	a2,t0
bfc009c4:	26042ef0 	addiu	a0,s0,12016
bfc009c8:	0ff00470 	jal	bfc011c0 <Proc_8>
bfc009cc:	24650780 	addiu	a1,v1,1920
bfc009d0:	8f848034 	lw	a0,-32716(gp)
bfc009d4:	0ff00144 	jal	bfc00510 <Proc_1>
bfc009d8:	00000000 	nop
bfc009dc:	838d8031 	lb	t5,-32719(gp)
bfc009e0:	00000000 	nop
bfc009e4:	29ae0041 	slti	t6,t5,65
bfc009e8:	15c001ae 	bnez	t6,bfc010a4 <dhrystone+0xa14>
bfc009ec:	24100041 	li	s0,65
bfc009f0:	24120003 	li	s2,3
bfc009f4:	0bf00287 	j	bfc00a1c <dhrystone+0x38c>
bfc009f8:	24110041 	li	s1,65
bfc009fc:	00000000 	nop
bfc00a00:	260f0001 	addiu	t7,s0,1
bfc00a04:	839f8031 	lb	ra,-32719(gp)
bfc00a08:	000fce00 	sll	t9,t7,0x18
bfc00a0c:	00198603 	sra	s0,t9,0x18
bfc00a10:	03f0202a 	slt	a0,ra,s0
bfc00a14:	14800026 	bnez	a0,bfc00ab0 <dhrystone+0x420>
bfc00a18:	00000000 	nop
bfc00a1c:	02202021 	move	a0,s1
bfc00a20:	0ff00494 	jal	bfc01250 <Func_1>
bfc00a24:	24050043 	li	a1,67
bfc00a28:	8fab0018 	lw	t3,24(sp)
bfc00a2c:	00000000 	nop
bfc00a30:	144bfff3 	bne	v0,t3,bfc00a00 <dhrystone+0x370>
bfc00a34:	26310001 	addiu	s1,s1,1
bfc00a38:	00002021 	move	a0,zero
bfc00a3c:	0ff0044c 	jal	bfc01130 <Proc_6>
bfc00a40:	27a50018 	addiu	a1,sp,24
bfc00a44:	260f0001 	addiu	t7,s0,1
bfc00a48:	3c128000 	lui	s2,0x8000
bfc00a4c:	839f8031 	lb	ra,-32719(gp)
bfc00a50:	000fce00 	sll	t9,t7,0x18
bfc00a54:	8e58011c 	lw	t8,284(s2)
bfc00a58:	8e620004 	lw	v0,4(s3)
bfc00a5c:	8e650008 	lw	a1,8(s3)
bfc00a60:	8e6c000c 	lw	t4,12(s3)
bfc00a64:	8e660010 	lw	a2,16(s3)
bfc00a68:	8e670014 	lw	a3,20(s3)
bfc00a6c:	8e680018 	lw	t0,24(s3)
bfc00a70:	9669001c 	lhu	t1,28(s3)
bfc00a74:	926a001e 	lbu	t2,30(s3)
bfc00a78:	00198603 	sra	s0,t9,0x18
bfc00a7c:	03f0202a 	slt	a0,ra,s0
bfc00a80:	02809021 	move	s2,s4
bfc00a84:	aef80000 	sw	t8,0(s7)
bfc00a88:	aee20004 	sw	v0,4(s7)
bfc00a8c:	aee50008 	sw	a1,8(s7)
bfc00a90:	aeec000c 	sw	t4,12(s7)
bfc00a94:	aee60010 	sw	a2,16(s7)
bfc00a98:	aee70014 	sw	a3,20(s7)
bfc00a9c:	aee80018 	sw	t0,24(s7)
bfc00aa0:	a6e9001c 	sh	t1,28(s7)
bfc00aa4:	a2ea001e 	sb	t2,30(s7)
bfc00aa8:	1080ffdc 	beqz	a0,bfc00a1c <dhrystone+0x38c>
bfc00aac:	af94802c 	sw	s4,-32724(gp)
bfc00ab0:	8fa70010 	lw	a3,16(sp)
bfc00ab4:	8fa80014 	lw	t0,20(sp)
bfc00ab8:	02470018 	mult	s2,a3
bfc00abc:	27a40010 	addiu	a0,sp,16
bfc00ac0:	26940001 	addiu	s4,s4,1
bfc00ac4:	00004812 	mflo	t1
bfc00ac8:	01285023 	subu	t2,t1,t0
bfc00acc:	000a58c0 	sll	t3,t2,0x3
bfc00ad0:	15000002 	bnez	t0,bfc00adc <dhrystone+0x44c>
bfc00ad4:	0128001a 	div	zero,t1,t0
bfc00ad8:	0007000d 	break	0x7
bfc00adc:	016a8023 	subu	s0,t3,t2
bfc00ae0:	00006812 	mflo	t5
bfc00ae4:	020d1823 	subu	v1,s0,t5
bfc00ae8:	afa30060 	sw	v1,96(sp)
bfc00aec:	0ff00118 	jal	bfc00460 <Proc_2>
bfc00af0:	afad0010 	sw	t5,16(sp)
bfc00af4:	8fae0098 	lw	t6,152(sp)
bfc00af8:	00000000 	nop
bfc00afc:	01d4882a 	slt	s1,t6,s4
bfc00b00:	1220ff54 	beqz	s1,bfc00854 <dhrystone+0x1c4>
bfc00b04:	00000000 	nop
bfc00b08:	0ff00623 	jal	bfc0188c <get_ns>
bfc00b0c:	3c158000 	lui	s5,0x8000
bfc00b10:	3c048000 	lui	a0,0x8000
bfc00b14:	2484013c 	addiu	a0,a0,316
bfc00b18:	0ff005b6 	jal	bfc016d8 <puts>
bfc00b1c:	af828024 	sw	v0,-32732(gp)
bfc00b20:	0ff00589 	jal	bfc01624 <putchar>
bfc00b24:	2404000a 	li	a0,10
bfc00b28:	0ff005b6 	jal	bfc016d8 <puts>
bfc00b2c:	26a4014c 	addiu	a0,s5,332
bfc00b30:	0ff00589 	jal	bfc01624 <putchar>
bfc00b34:	2404000a 	li	a0,10
bfc00b38:	3c108000 	lui	s0,0x8000
bfc00b3c:	8f85802c 	lw	a1,-32724(gp)
bfc00b40:	26040184 	addiu	a0,s0,388
bfc00b44:	0ff004f0 	jal	bfc013c0 <printf>
bfc00b48:	3c108000 	lui	s0,0x8000
bfc00b4c:	260401a0 	addiu	a0,s0,416
bfc00b50:	0ff004f0 	jal	bfc013c0 <printf>
bfc00b54:	24050005 	li	a1,5
bfc00b58:	3c0d8000 	lui	t5,0x8000
bfc00b5c:	8f858038 	lw	a1,-32712(gp)
bfc00b60:	0ff004f0 	jal	bfc013c0 <printf>
bfc00b64:	25a401bc 	addiu	a0,t5,444
bfc00b68:	260401a0 	addiu	a0,s0,416
bfc00b6c:	0ff004f0 	jal	bfc013c0 <printf>
bfc00b70:	24050001 	li	a1,1
bfc00b74:	3c168000 	lui	s6,0x8000
bfc00b78:	83858030 	lb	a1,-32720(gp)
bfc00b7c:	26c401d8 	addiu	a0,s6,472
bfc00b80:	0ff004f0 	jal	bfc013c0 <printf>
bfc00b84:	3c118000 	lui	s1,0x8000
bfc00b88:	262401f4 	addiu	a0,s1,500
bfc00b8c:	0ff004f0 	jal	bfc013c0 <printf>
bfc00b90:	24050041 	li	a1,65
bfc00b94:	3c0e8000 	lui	t6,0x8000
bfc00b98:	83858031 	lb	a1,-32719(gp)
bfc00b9c:	0ff004f0 	jal	bfc013c0 <printf>
bfc00ba0:	25c40210 	addiu	a0,t6,528
bfc00ba4:	262401f4 	addiu	a0,s1,500
bfc00ba8:	0ff004f0 	jal	bfc013c0 <printf>
bfc00bac:	24050042 	li	a1,66
bfc00bb0:	3c0f8000 	lui	t7,0x8000
bfc00bb4:	25f22ef0 	addiu	s2,t7,12016
bfc00bb8:	3c198000 	lui	t9,0x8000
bfc00bbc:	8e450020 	lw	a1,32(s2)
bfc00bc0:	0ff004f0 	jal	bfc013c0 <printf>
bfc00bc4:	2724022c 	addiu	a0,t9,556
bfc00bc8:	260401a0 	addiu	a0,s0,416
bfc00bcc:	0ff004f0 	jal	bfc013c0 <printf>
bfc00bd0:	24050007 	li	a1,7
bfc00bd4:	3c058000 	lui	a1,0x8000
bfc00bd8:	8fb80098 	lw	t8,152(sp)
bfc00bdc:	24b30780 	addiu	s3,a1,1920
bfc00be0:	8e65065c 	lw	a1,1628(s3)
bfc00be4:	3c1e8000 	lui	s8,0x8000
bfc00be8:	27c40248 	addiu	a0,s8,584
bfc00bec:	0ff004f0 	jal	bfc013c0 <printf>
bfc00bf0:	271e000a 	addiu	s8,t8,10
bfc00bf4:	03c02821 	move	a1,s8
bfc00bf8:	0ff004f0 	jal	bfc013c0 <printf>
bfc00bfc:	260401a0 	addiu	a0,s0,416
bfc00c00:	3c028000 	lui	v0,0x8000
bfc00c04:	0ff005b6 	jal	bfc016d8 <puts>
bfc00c08:	24440264 	addiu	a0,v0,612
bfc00c0c:	8f8c8034 	lw	t4,-32716(gp)
bfc00c10:	3c148000 	lui	s4,0x8000
bfc00c14:	8d850000 	lw	a1,0(t4)
bfc00c18:	0ff004f0 	jal	bfc013c0 <printf>
bfc00c1c:	26840270 	addiu	a0,s4,624
bfc00c20:	3c068000 	lui	a2,0x8000
bfc00c24:	0ff005b6 	jal	bfc016d8 <puts>
bfc00c28:	24c4028c 	addiu	a0,a2,652
bfc00c2c:	8f878034 	lw	a3,-32716(gp)
bfc00c30:	3c158000 	lui	s5,0x8000
bfc00c34:	8ce50004 	lw	a1,4(a3)
bfc00c38:	0ff004f0 	jal	bfc013c0 <printf>
bfc00c3c:	26a402bc 	addiu	a0,s5,700
bfc00c40:	260401a0 	addiu	a0,s0,416
bfc00c44:	0ff004f0 	jal	bfc013c0 <printf>
bfc00c48:	00002821 	move	a1,zero
bfc00c4c:	8f888034 	lw	t0,-32716(gp)
bfc00c50:	3c168000 	lui	s6,0x8000
bfc00c54:	8d050008 	lw	a1,8(t0)
bfc00c58:	0ff004f0 	jal	bfc013c0 <printf>
bfc00c5c:	26c402d8 	addiu	a0,s6,728
bfc00c60:	260401a0 	addiu	a0,s0,416
bfc00c64:	0ff004f0 	jal	bfc013c0 <printf>
bfc00c68:	24050002 	li	a1,2
bfc00c6c:	8f898034 	lw	t1,-32716(gp)
bfc00c70:	3c118000 	lui	s1,0x8000
bfc00c74:	8d25000c 	lw	a1,12(t1)
bfc00c78:	0ff004f0 	jal	bfc013c0 <printf>
bfc00c7c:	262402f4 	addiu	a0,s1,756
bfc00c80:	260401a0 	addiu	a0,s0,416
bfc00c84:	0ff004f0 	jal	bfc013c0 <printf>
bfc00c88:	24050011 	li	a1,17
bfc00c8c:	8f8a8034 	lw	t2,-32716(gp)
bfc00c90:	3c128000 	lui	s2,0x8000
bfc00c94:	25450010 	addiu	a1,t2,16
bfc00c98:	26440310 	addiu	a0,s2,784
bfc00c9c:	0ff004f0 	jal	bfc013c0 <printf>
bfc00ca0:	3c138000 	lui	s3,0x8000
bfc00ca4:	0ff005b6 	jal	bfc016d8 <puts>
bfc00ca8:	2664032c 	addiu	a0,s3,812
bfc00cac:	3c0b8000 	lui	t3,0x8000
bfc00cb0:	0ff005b6 	jal	bfc016d8 <puts>
bfc00cb4:	25640360 	addiu	a0,t3,864
bfc00cb8:	8f838028 	lw	v1,-32728(gp)
bfc00cbc:	26840270 	addiu	a0,s4,624
bfc00cc0:	8c650000 	lw	a1,0(v1)
bfc00cc4:	0ff004f0 	jal	bfc013c0 <printf>
bfc00cc8:	24140001 	li	s4,1
bfc00ccc:	3c048000 	lui	a0,0x8000
bfc00cd0:	0ff005b6 	jal	bfc016d8 <puts>
bfc00cd4:	24840370 	addiu	a0,a0,880
bfc00cd8:	8f8d8028 	lw	t5,-32728(gp)
bfc00cdc:	00000000 	nop
bfc00ce0:	8da50004 	lw	a1,4(t5)
bfc00ce4:	0ff004f0 	jal	bfc013c0 <printf>
bfc00ce8:	26a402bc 	addiu	a0,s5,700
bfc00cec:	260401a0 	addiu	a0,s0,416
bfc00cf0:	0ff004f0 	jal	bfc013c0 <printf>
bfc00cf4:	00002821 	move	a1,zero
bfc00cf8:	8f8e8028 	lw	t6,-32728(gp)
bfc00cfc:	26c402d8 	addiu	a0,s6,728
bfc00d00:	8dc50008 	lw	a1,8(t6)
bfc00d04:	0ff004f0 	jal	bfc013c0 <printf>
bfc00d08:	3c168000 	lui	s6,0x8000
bfc00d0c:	260401a0 	addiu	a0,s0,416
bfc00d10:	0ff004f0 	jal	bfc013c0 <printf>
bfc00d14:	24050001 	li	a1,1
bfc00d18:	8f8f8028 	lw	t7,-32728(gp)
bfc00d1c:	00000000 	nop
bfc00d20:	8de5000c 	lw	a1,12(t7)
bfc00d24:	0ff004f0 	jal	bfc013c0 <printf>
bfc00d28:	262402f4 	addiu	a0,s1,756
bfc00d2c:	260401a0 	addiu	a0,s0,416
bfc00d30:	0ff004f0 	jal	bfc013c0 <printf>
bfc00d34:	24050012 	li	a1,18
bfc00d38:	8f998028 	lw	t9,-32728(gp)
bfc00d3c:	26440310 	addiu	a0,s2,784
bfc00d40:	0ff004f0 	jal	bfc013c0 <printf>
bfc00d44:	27250010 	addiu	a1,t9,16
bfc00d48:	0ff005b6 	jal	bfc016d8 <puts>
bfc00d4c:	2664032c 	addiu	a0,s3,812
bfc00d50:	3c128000 	lui	s2,0x8000
bfc00d54:	8fa50010 	lw	a1,16(sp)
bfc00d58:	0ff004f0 	jal	bfc013c0 <printf>
bfc00d5c:	264403b0 	addiu	a0,s2,944
bfc00d60:	260401a0 	addiu	a0,s0,416
bfc00d64:	0ff004f0 	jal	bfc013c0 <printf>
bfc00d68:	24050005 	li	a1,5
bfc00d6c:	3c058000 	lui	a1,0x8000
bfc00d70:	24a403cc 	addiu	a0,a1,972
bfc00d74:	8fa50060 	lw	a1,96(sp)
bfc00d78:	0ff004f0 	jal	bfc013c0 <printf>
bfc00d7c:	3c138000 	lui	s3,0x8000
bfc00d80:	260401a0 	addiu	a0,s0,416
bfc00d84:	0ff004f0 	jal	bfc013c0 <printf>
bfc00d88:	2405000d 	li	a1,13
bfc00d8c:	3c188000 	lui	t8,0x8000
bfc00d90:	8fa50014 	lw	a1,20(sp)
bfc00d94:	0ff004f0 	jal	bfc013c0 <printf>
bfc00d98:	270403e8 	addiu	a0,t8,1000
bfc00d9c:	260401a0 	addiu	a0,s0,416
bfc00da0:	0ff004f0 	jal	bfc013c0 <printf>
bfc00da4:	24050007 	li	a1,7
bfc00da8:	8fa50018 	lw	a1,24(sp)
bfc00dac:	3c028000 	lui	v0,0x8000
bfc00db0:	0ff004f0 	jal	bfc013c0 <printf>
bfc00db4:	24440404 	addiu	a0,v0,1028
bfc00db8:	260401a0 	addiu	a0,s0,416
bfc00dbc:	0ff004f0 	jal	bfc013c0 <printf>
bfc00dc0:	24050001 	li	a1,1
bfc00dc4:	3c0c8000 	lui	t4,0x8000
bfc00dc8:	25840420 	addiu	a0,t4,1056
bfc00dcc:	0ff004f0 	jal	bfc013c0 <printf>
bfc00dd0:	27a5001c 	addiu	a1,sp,28
bfc00dd4:	3c068000 	lui	a2,0x8000
bfc00dd8:	0ff005b6 	jal	bfc016d8 <puts>
bfc00ddc:	24c4043c 	addiu	a0,a2,1084
bfc00de0:	02e02821 	move	a1,s7
bfc00de4:	0ff004f0 	jal	bfc013c0 <printf>
bfc00de8:	26c40470 	addiu	a0,s6,1136
bfc00dec:	0ff005b6 	jal	bfc016d8 <puts>
bfc00df0:	2664048c 	addiu	a0,s3,1164
bfc00df4:	0ff00589 	jal	bfc01624 <putchar>
bfc00df8:	2404000a 	li	a0,10
bfc00dfc:	8f958038 	lw	s5,-32712(gp)
bfc00e00:	8f84802c 	lw	a0,-32724(gp)
bfc00e04:	12b400c8 	beq	s5,s4,bfc01128 <dhrystone+0xa98>
bfc00e08:	389f0005 	xori	ra,a0,0x5
bfc00e0c:	24100001 	li	s0,1
bfc00e10:	83838030 	lb	v1,-32720(gp)
bfc00e14:	24140041 	li	s4,65
bfc00e18:	10740002 	beq	v1,s4,bfc00e24 <dhrystone+0x794>
bfc00e1c:	00000000 	nop
bfc00e20:	24100001 	li	s0,1
bfc00e24:	838a8031 	lb	t2,-32719(gp)
bfc00e28:	240b0042 	li	t3,66
bfc00e2c:	114b0002 	beq	t2,t3,bfc00e38 <dhrystone+0x7a8>
bfc00e30:	3c068000 	lui	a2,0x8000
bfc00e34:	24100001 	li	s0,1
bfc00e38:	24c72ef0 	addiu	a3,a2,12016
bfc00e3c:	8ce80020 	lw	t0,32(a3)
bfc00e40:	24090007 	li	t1,7
bfc00e44:	11090002 	beq	t0,t1,bfc00e50 <dhrystone+0x7c0>
bfc00e48:	3c188000 	lui	t8,0x8000
bfc00e4c:	24100001 	li	s0,1
bfc00e50:	27020780 	addiu	v0,t8,1920
bfc00e54:	8c4c065c 	lw	t4,1628(v0)
bfc00e58:	00000000 	nop
bfc00e5c:	13cc0002 	beq	s8,t4,bfc00e68 <dhrystone+0x7d8>
bfc00e60:	00000000 	nop
bfc00e64:	24100001 	li	s0,1
bfc00e68:	8f848034 	lw	a0,-32716(gp)
bfc00e6c:	8f918028 	lw	s1,-32728(gp)
bfc00e70:	8c930000 	lw	s3,0(a0)
bfc00e74:	8e3e0000 	lw	s8,0(s1)
bfc00e78:	00000000 	nop
bfc00e7c:	127e0002 	beq	s3,s8,bfc00e88 <dhrystone+0x7f8>
bfc00e80:	00000000 	nop
bfc00e84:	24100001 	li	s0,1
bfc00e88:	8c850004 	lw	a1,4(a0)
bfc00e8c:	00000000 	nop
bfc00e90:	10a00002 	beqz	a1,bfc00e9c <dhrystone+0x80c>
bfc00e94:	00000000 	nop
bfc00e98:	24100001 	li	s0,1
bfc00e9c:	8c920008 	lw	s2,8(a0)
bfc00ea0:	24190002 	li	t9,2
bfc00ea4:	12590002 	beq	s2,t9,bfc00eb0 <dhrystone+0x820>
bfc00ea8:	00000000 	nop
bfc00eac:	24100001 	li	s0,1
bfc00eb0:	8c8e000c 	lw	t6,12(a0)
bfc00eb4:	240f0011 	li	t7,17
bfc00eb8:	11cf0002 	beq	t6,t7,bfc00ec4 <dhrystone+0x834>
bfc00ebc:	3c168000 	lui	s6,0x8000
bfc00ec0:	24100001 	li	s0,1
bfc00ec4:	24840010 	addiu	a0,a0,16
bfc00ec8:	0ff00604 	jal	bfc01810 <strcmp>
bfc00ecc:	26c50030 	addiu	a1,s6,48
bfc00ed0:	10400002 	beqz	v0,bfc00edc <dhrystone+0x84c>
bfc00ed4:	00000000 	nop
bfc00ed8:	24100001 	li	s0,1
bfc00edc:	8e2d0004 	lw	t5,4(s1)
bfc00ee0:	00000000 	nop
bfc00ee4:	11a00002 	beqz	t5,bfc00ef0 <dhrystone+0x860>
bfc00ee8:	00000000 	nop
bfc00eec:	24100001 	li	s0,1
bfc00ef0:	8e240008 	lw	a0,8(s1)
bfc00ef4:	24150001 	li	s5,1
bfc00ef8:	10950002 	beq	a0,s5,bfc00f04 <dhrystone+0x874>
bfc00efc:	00000000 	nop
bfc00f00:	24100001 	li	s0,1
bfc00f04:	8e34000c 	lw	s4,12(s1)
bfc00f08:	241f0012 	li	ra,18
bfc00f0c:	129f0002 	beq	s4,ra,bfc00f18 <dhrystone+0x888>
bfc00f10:	26240010 	addiu	a0,s1,16
bfc00f14:	24100001 	li	s0,1
bfc00f18:	3c118000 	lui	s1,0x8000
bfc00f1c:	0ff00604 	jal	bfc01810 <strcmp>
bfc00f20:	26250030 	addiu	a1,s1,48
bfc00f24:	10400002 	beqz	v0,bfc00f30 <dhrystone+0x8a0>
bfc00f28:	00000000 	nop
bfc00f2c:	24100001 	li	s0,1
bfc00f30:	8fab0010 	lw	t3,16(sp)
bfc00f34:	24030005 	li	v1,5
bfc00f38:	11630002 	beq	t3,v1,bfc00f44 <dhrystone+0x8b4>
bfc00f3c:	00000000 	nop
bfc00f40:	24100001 	li	s0,1
bfc00f44:	8fa90060 	lw	t1,96(sp)
bfc00f48:	240a000d 	li	t2,13
bfc00f4c:	112a0002 	beq	t1,t2,bfc00f58 <dhrystone+0x8c8>
bfc00f50:	00000000 	nop
bfc00f54:	24100001 	li	s0,1
bfc00f58:	8fa80014 	lw	t0,20(sp)
bfc00f5c:	24070007 	li	a3,7
bfc00f60:	11070002 	beq	t0,a3,bfc00f6c <dhrystone+0x8dc>
bfc00f64:	00000000 	nop
bfc00f68:	24100001 	li	s0,1
bfc00f6c:	8fa60018 	lw	a2,24(sp)
bfc00f70:	240c0001 	li	t4,1
bfc00f74:	10cc0002 	beq	a2,t4,bfc00f80 <dhrystone+0x8f0>
bfc00f78:	3c028000 	lui	v0,0x8000
bfc00f7c:	24100001 	li	s0,1
bfc00f80:	27a4001c 	addiu	a0,sp,28
bfc00f84:	0ff00604 	jal	bfc01810 <strcmp>
bfc00f88:	24450050 	addiu	a1,v0,80
bfc00f8c:	10400002 	beqz	v0,bfc00f98 <dhrystone+0x908>
bfc00f90:	02e02021 	move	a0,s7
bfc00f94:	24100001 	li	s0,1
bfc00f98:	8fb70068 	lw	s7,104(sp)
bfc00f9c:	0ff00604 	jal	bfc01810 <strcmp>
bfc00fa0:	26e500fc 	addiu	a1,s7,252
bfc00fa4:	10400002 	beqz	v0,bfc00fb0 <dhrystone+0x920>
bfc00fa8:	00000000 	nop
bfc00fac:	24100001 	li	s0,1
bfc00fb0:	8f8f8024 	lw	t7,-32732(gp)
bfc00fb4:	8f858020 	lw	a1,-32736(gp)
bfc00fb8:	3c128000 	lui	s2,0x8000
bfc00fbc:	01e5c823 	subu	t9,t7,a1
bfc00fc0:	264404c0 	addiu	a0,s2,1216
bfc00fc4:	af99801c 	sw	t9,-32740(gp)
bfc00fc8:	0ff004f0 	jal	bfc013c0 <printf>
bfc00fcc:	3c138000 	lui	s3,0x8000
bfc00fd0:	8f858024 	lw	a1,-32732(gp)
bfc00fd4:	0ff004f0 	jal	bfc013c0 <printf>
bfc00fd8:	266404d0 	addiu	a0,s3,1232
bfc00fdc:	3c1e8000 	lui	s8,0x8000
bfc00fe0:	8f85801c 	lw	a1,-32740(gp)
bfc00fe4:	0ff004f0 	jal	bfc013c0 <printf>
bfc00fe8:	27c404e0 	addiu	a0,s8,1248
bfc00fec:	8f86801c 	lw	a2,-32740(gp)
bfc00ff0:	00000000 	nop
bfc00ff4:	28d80078 	slti	t8,a2,120
bfc00ff8:	17000041 	bnez	t8,bfc01100 <dhrystone+0xa70>
bfc00ffc:	3c168000 	lui	s6,0x8000
bfc01000:	8fa70098 	lw	a3,152(sp)
bfc01004:	8fab0098 	lw	t3,152(sp)
bfc01008:	14e00002 	bnez	a3,bfc01014 <dhrystone+0x984>
bfc0100c:	00c7001a 	div	zero,a2,a3
bfc01010:	0007000d 	break	0x7
bfc01014:	000740c0 	sll	t0,a3,0x3
bfc01018:	00074a00 	sll	t1,a3,0x8
bfc0101c:	01281823 	subu	v1,t1,t0
bfc01020:	00035180 	sll	t2,v1,0x6
bfc01024:	01438823 	subu	s1,t2,v1
bfc01028:	022ba021 	addu	s4,s1,t3
bfc0102c:	0014f980 	sll	ra,s4,0x6
bfc01030:	3c048000 	lui	a0,0x8000
bfc01034:	24840548 	addiu	a0,a0,1352
bfc01038:	0000a812 	mflo	s5
bfc0103c:	af958014 	sw	s5,-32748(gp)
bfc01040:	00000000 	nop
bfc01044:	14c00002 	bnez	a2,bfc01050 <dhrystone+0x9c0>
bfc01048:	03e6001a 	div	zero,ra,a2
bfc0104c:	0007000d 	break	0x7
bfc01050:	00006812 	mflo	t5
bfc01054:	0ff004f0 	jal	bfc013c0 <printf>
bfc01058:	af8d8018 	sw	t5,-32744(gp)
bfc0105c:	8f858018 	lw	a1,-32744(gp)
bfc01060:	0ff004f0 	jal	bfc013c0 <printf>
bfc01064:	26c40574 	addiu	a0,s6,1396
bfc01068:	0ff00589 	jal	bfc01624 <putchar>
bfc0106c:	2404000a 	li	a0,10
bfc01070:	8fbf0094 	lw	ra,148(sp)
bfc01074:	02001021 	move	v0,s0
bfc01078:	8fbe0090 	lw	s8,144(sp)
bfc0107c:	8fb7008c 	lw	s7,140(sp)
bfc01080:	8fb60088 	lw	s6,136(sp)
bfc01084:	8fb50084 	lw	s5,132(sp)
bfc01088:	8fb40080 	lw	s4,128(sp)
bfc0108c:	8fb3007c 	lw	s3,124(sp)
bfc01090:	8fb20078 	lw	s2,120(sp)
bfc01094:	8fb10074 	lw	s1,116(sp)
bfc01098:	8fb00070 	lw	s0,112(sp)
bfc0109c:	03e00008 	jr	ra
bfc010a0:	27bd0098 	addiu	sp,sp,152
bfc010a4:	0bf002ac 	j	bfc00ab0 <dhrystone+0x420>
bfc010a8:	24120003 	li	s2,3
bfc010ac:	3c148000 	lui	s4,0x8000
bfc010b0:	0ff005b6 	jal	bfc016d8 <puts>
bfc010b4:	2684009c 	addiu	a0,s4,156
bfc010b8:	0ff00589 	jal	bfc01624 <putchar>
bfc010bc:	2404000a 	li	a0,10
bfc010c0:	3c168000 	lui	s6,0x8000
bfc010c4:	8fa50098 	lw	a1,152(sp)
bfc010c8:	0ff004f0 	jal	bfc013c0 <printf>
bfc010cc:	26c400cc 	addiu	a0,s6,204
bfc010d0:	0ff00623 	jal	bfc0188c <get_ns>
bfc010d4:	00000000 	nop
bfc010d8:	8fb30098 	lw	s3,152(sp)
bfc010dc:	00000000 	nop
bfc010e0:	1e60fdd1 	bgtz	s3,bfc00828 <dhrystone+0x198>
bfc010e4:	af828020 	sw	v0,-32736(gp)
bfc010e8:	3c188000 	lui	t8,0x8000
bfc010ec:	3c128000 	lui	s2,0x8000
bfc010f0:	27b7003c 	addiu	s7,sp,60
bfc010f4:	afb80068 	sw	t8,104(sp)
bfc010f8:	0bf002c2 	j	bfc00b08 <dhrystone+0x478>
bfc010fc:	afb20064 	sw	s2,100(sp)
bfc01100:	3c0e8000 	lui	t6,0x8000
bfc01104:	0ff005b6 	jal	bfc016d8 <puts>
bfc01108:	25c404f0 	addiu	a0,t6,1264
bfc0110c:	3c058000 	lui	a1,0x8000
bfc01110:	0ff005b6 	jal	bfc016d8 <puts>
bfc01114:	24a40528 	addiu	a0,a1,1320
bfc01118:	0ff00589 	jal	bfc01624 <putchar>
bfc0111c:	2404000a 	li	a0,10
bfc01120:	0bf0041c 	j	bfc01070 <dhrystone+0x9e0>
bfc01124:	00000000 	nop
bfc01128:	0bf00384 	j	bfc00e10 <dhrystone+0x780>
bfc0112c:	001f802b 	sltu	s0,zero,ra

bfc01130 <Proc_6>:
Proc_6():
bfc01130:	24030002 	li	v1,2
bfc01134:	1083001a 	beq	a0,v1,bfc011a0 <Proc_6+0x70>
bfc01138:	24020001 	li	v0,1
bfc0113c:	1082000c 	beq	a0,v0,bfc01170 <Proc_6+0x40>
bfc01140:	24060003 	li	a2,3
bfc01144:	1080000f 	beqz	a0,bfc01184 <Proc_6+0x54>
bfc01148:	00000000 	nop
bfc0114c:	10830014 	beq	a0,v1,bfc011a0 <Proc_6+0x70>
bfc01150:	00000000 	nop
bfc01154:	24020004 	li	v0,4
bfc01158:	1482000d 	bne	a0,v0,bfc01190 <Proc_6+0x60>
bfc0115c:	00000000 	nop
bfc01160:	03e00008 	jr	ra
bfc01164:	aca30000 	sw	v1,0(a1)
	...
bfc01170:	8f82802c 	lw	v0,-32724(gp)
bfc01174:	00000000 	nop
bfc01178:	28420065 	slti	v0,v0,101
bfc0117c:	14400004 	bnez	v0,bfc01190 <Proc_6+0x60>
bfc01180:	00000000 	nop
bfc01184:	03e00008 	jr	ra
bfc01188:	aca00000 	sw	zero,0(a1)
bfc0118c:	00000000 	nop
bfc01190:	03e00008 	jr	ra
bfc01194:	aca60000 	sw	a2,0(a1)
	...
bfc011a0:	03e00008 	jr	ra
bfc011a4:	aca20000 	sw	v0,0(a1)
	...

bfc011b0 <Proc_7>:
Proc_7():
bfc011b0:	24820002 	addiu	v0,a0,2
bfc011b4:	00452021 	addu	a0,v0,a1
bfc011b8:	03e00008 	jr	ra
bfc011bc:	acc40000 	sw	a0,0(a2)

bfc011c0 <Proc_8>:
Proc_8():
bfc011c0:	24ca0005 	addiu	t2,a2,5
bfc011c4:	000a70c0 	sll	t6,t2,0x3
bfc011c8:	000a7940 	sll	t7,t2,0x5
bfc011cc:	01cf6821 	addu	t5,t6,t7
bfc011d0:	000d4080 	sll	t0,t5,0x2
bfc011d4:	01a81021 	addu	v0,t5,t0
bfc011d8:	24c30006 	addiu	v1,a2,6
bfc011dc:	24cb0023 	addiu	t3,a2,35
bfc011e0:	00a27021 	addu	t6,a1,v0
bfc011e4:	0003c080 	sll	t8,v1,0x2
bfc011e8:	000b6080 	sll	t4,t3,0x2
bfc011ec:	24c90004 	addiu	t1,a2,4
bfc011f0:	000ac880 	sll	t9,t2,0x2
bfc011f4:	008c4021 	addu	t0,a0,t4
bfc011f8:	00097880 	sll	t7,t1,0x2
bfc011fc:	01d96021 	addu	t4,t6,t9
bfc01200:	00994821 	addu	t1,a0,t9
bfc01204:	00986821 	addu	t5,a0,t8
bfc01208:	01d85821 	addu	t3,t6,t8
bfc0120c:	ad270000 	sw	a3,0(t1)
bfc01210:	01cf2821 	addu	a1,t6,t7
bfc01214:	ada70000 	sw	a3,0(t5)
bfc01218:	ad0a0000 	sw	t2,0(t0)
bfc0121c:	ad8a0000 	sw	t2,0(t4)
bfc01220:	ad6a0000 	sw	t2,0(t3)
bfc01224:	8ca60000 	lw	a2,0(a1)
bfc01228:	24040005 	li	a0,5
bfc0122c:	24c20001 	addiu	v0,a2,1
bfc01230:	aca20000 	sw	v0,0(a1)
bfc01234:	8d230000 	lw	v1,0(t1)
bfc01238:	00000000 	nop
bfc0123c:	ad830fa0 	sw	v1,4000(t4)
bfc01240:	03e00008 	jr	ra
bfc01244:	af84802c 	sw	a0,-32724(gp)
	...

bfc01250 <Func_1>:
Func_1():
bfc01250:	00042600 	sll	a0,a0,0x18
bfc01254:	00051600 	sll	v0,a1,0x18
bfc01258:	00042603 	sra	a0,a0,0x18
bfc0125c:	00022e03 	sra	a1,v0,0x18
bfc01260:	10850003 	beq	a0,a1,bfc01270 <Func_1+0x20>
bfc01264:	00000000 	nop
bfc01268:	03e00008 	jr	ra
bfc0126c:	00001021 	move	v0,zero
bfc01270:	a3848030 	sb	a0,-32720(gp)
bfc01274:	03e00008 	jr	ra
bfc01278:	24020001 	li	v0,1
bfc0127c:	00000000 	nop

bfc01280 <Func_3>:
Func_3():
bfc01280:	38820002 	xori	v0,a0,0x2
bfc01284:	03e00008 	jr	ra
bfc01288:	2c420001 	sltiu	v0,v0,1
bfc0128c:	00000000 	nop

bfc01290 <Func_2>:
Func_2():
bfc01290:	80830002 	lb	v1,2(a0)
bfc01294:	80a20003 	lb	v0,3(a1)
bfc01298:	27bdffe8 	addiu	sp,sp,-24
bfc0129c:	afbf0014 	sw	ra,20(sp)
bfc012a0:	24870002 	addiu	a3,a0,2
bfc012a4:	10430038 	beq	v0,v1,bfc01388 <Func_2+0xf8>
bfc012a8:	24a60003 	addiu	a2,a1,3
bfc012ac:	0ff00604 	jal	bfc01810 <strcmp>
bfc012b0:	00000000 	nop
bfc012b4:	1840003e 	blez	v0,bfc013b0 <Func_2+0x120>
bfc012b8:	00000000 	nop
bfc012bc:	8fbf0014 	lw	ra,20(sp)
bfc012c0:	2403000a 	li	v1,10
bfc012c4:	24020001 	li	v0,1
bfc012c8:	af83802c 	sw	v1,-32724(gp)
bfc012cc:	03e00008 	jr	ra
bfc012d0:	27bd0018 	addiu	sp,sp,24
	...
bfc012e0:	a3838030 	sb	v1,-32720(gp)
bfc012e4:	80e90000 	lb	t1,0(a3)
bfc012e8:	80c30000 	lb	v1,0(a2)
bfc012ec:	00000000 	nop
bfc012f0:	1469ffee 	bne	v1,t1,bfc012ac <Func_2+0x1c>
bfc012f4:	00000000 	nop
bfc012f8:	a3838030 	sb	v1,-32720(gp)
bfc012fc:	80ea0000 	lb	t2,0(a3)
bfc01300:	80c30000 	lb	v1,0(a2)
bfc01304:	00000000 	nop
bfc01308:	146affe8 	bne	v1,t2,bfc012ac <Func_2+0x1c>
bfc0130c:	00000000 	nop
bfc01310:	a3838030 	sb	v1,-32720(gp)
bfc01314:	80eb0000 	lb	t3,0(a3)
bfc01318:	80c30000 	lb	v1,0(a2)
bfc0131c:	00000000 	nop
bfc01320:	146bffe2 	bne	v1,t3,bfc012ac <Func_2+0x1c>
bfc01324:	00000000 	nop
bfc01328:	a3838030 	sb	v1,-32720(gp)
bfc0132c:	80ec0000 	lb	t4,0(a3)
bfc01330:	80c30000 	lb	v1,0(a2)
bfc01334:	00000000 	nop
bfc01338:	146cffdc 	bne	v1,t4,bfc012ac <Func_2+0x1c>
bfc0133c:	00000000 	nop
bfc01340:	a3838030 	sb	v1,-32720(gp)
bfc01344:	80ed0000 	lb	t5,0(a3)
bfc01348:	80c30000 	lb	v1,0(a2)
bfc0134c:	00000000 	nop
bfc01350:	146dffd6 	bne	v1,t5,bfc012ac <Func_2+0x1c>
bfc01354:	00000000 	nop
bfc01358:	a3838030 	sb	v1,-32720(gp)
bfc0135c:	80ee0000 	lb	t6,0(a3)
bfc01360:	80c30000 	lb	v1,0(a2)
bfc01364:	00000000 	nop
bfc01368:	146effd0 	bne	v1,t6,bfc012ac <Func_2+0x1c>
bfc0136c:	00000000 	nop
bfc01370:	a3838030 	sb	v1,-32720(gp)
bfc01374:	80e30000 	lb	v1,0(a3)
bfc01378:	80cf0000 	lb	t7,0(a2)
bfc0137c:	00000000 	nop
bfc01380:	15e3ffca 	bne	t7,v1,bfc012ac <Func_2+0x1c>
bfc01384:	00000000 	nop
bfc01388:	a3838030 	sb	v1,-32720(gp)
bfc0138c:	80e80000 	lb	t0,0(a3)
bfc01390:	80c30000 	lb	v1,0(a2)
bfc01394:	00000000 	nop
bfc01398:	1068ffd1 	beq	v1,t0,bfc012e0 <Func_2+0x50>
bfc0139c:	00000000 	nop
bfc013a0:	0ff00604 	jal	bfc01810 <strcmp>
bfc013a4:	00000000 	nop
bfc013a8:	1c40ffc4 	bgtz	v0,bfc012bc <Func_2+0x2c>
bfc013ac:	00000000 	nop
bfc013b0:	8fbf0014 	lw	ra,20(sp)
bfc013b4:	00001021 	move	v0,zero
bfc013b8:	03e00008 	jr	ra
bfc013bc:	27bd0018 	addiu	sp,sp,24

bfc013c0 <printf>:
printf():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc013c0:	27bdffc8 	addiu	sp,sp,-56
bfc013c4:	afb30024 	sw	s3,36(sp)
bfc013c8:	afbf0034 	sw	ra,52(sp)
bfc013cc:	afb60030 	sw	s6,48(sp)
bfc013d0:	afb5002c 	sw	s5,44(sp)
bfc013d4:	afb40028 	sw	s4,40(sp)
bfc013d8:	afb20020 	sw	s2,32(sp)
bfc013dc:	afb1001c 	sw	s1,28(sp)
bfc013e0:	afb00018 	sw	s0,24(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc013e4:	80900000 	lb	s0,0(a0)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc013e8:	00809821 	move	s3,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:8
bfc013ec:	27a4003c 	addiu	a0,sp,60
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:2
bfc013f0:	afa5003c 	sw	a1,60(sp)
bfc013f4:	afa60040 	sw	a2,64(sp)
bfc013f8:	afa70044 	sw	a3,68(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc013fc:	12000013 	beqz	s0,bfc0144c <printf+0x8c>
bfc01400:	afa40010 	sw	a0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc01404:	3c028000 	lui	v0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc01408:	00809021 	move	s2,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc0140c:	24560580 	addiu	s6,v0,1408
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:9
bfc01410:	00008821 	move	s1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc01414:	24140025 	li	s4,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc01418:	2415000a 	li	s5,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc0141c:	12140016 	beq	s0,s4,bfc01478 <printf+0xb8>
bfc01420:	02711021 	addu	v0,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc01424:	1215002f 	beq	s0,s5,bfc014e4 <printf+0x124>
bfc01428:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:80
bfc0142c:	0ff00589 	jal	bfc01624 <putchar>
bfc01430:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc01434:	26310001 	addiu	s1,s1,1
bfc01438:	02711021 	addu	v0,s3,s1
bfc0143c:	80500000 	lb	s0,0(v0)
bfc01440:	00000000 	nop
bfc01444:	1600fff5 	bnez	s0,bfc0141c <printf+0x5c>
bfc01448:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:84
bfc0144c:	8fbf0034 	lw	ra,52(sp)
bfc01450:	00001021 	move	v0,zero
bfc01454:	8fb60030 	lw	s6,48(sp)
bfc01458:	8fb5002c 	lw	s5,44(sp)
bfc0145c:	8fb40028 	lw	s4,40(sp)
bfc01460:	8fb30024 	lw	s3,36(sp)
bfc01464:	8fb20020 	lw	s2,32(sp)
bfc01468:	8fb1001c 	lw	s1,28(sp)
bfc0146c:	8fb00018 	lw	s0,24(sp)
bfc01470:	03e00008 	jr	ra
bfc01474:	27bd0038 	addiu	sp,sp,56
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:13
bfc01478:	80440001 	lb	a0,1(v0)
bfc0147c:	24050001 	li	a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc01480:	2482ffdb 	addiu	v0,a0,-37
bfc01484:	304200ff 	andi	v0,v0,0xff
bfc01488:	2c430054 	sltiu	v1,v0,84
bfc0148c:	14600005 	bnez	v1,bfc014a4 <printf+0xe4>
bfc01490:	00021080 	sll	v0,v0,0x2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:73
bfc01494:	0ff00589 	jal	bfc01624 <putchar>
bfc01498:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:10
bfc0149c:	0bf0050e 	j	bfc01438 <printf+0x78>
bfc014a0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc014a4:	02c21021 	addu	v0,s6,v0
bfc014a8:	8c430000 	lw	v1,0(v0)
bfc014ac:	00000000 	nop
bfc014b0:	00600008 	jr	v1
bfc014b4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:65
bfc014b8:	26310001 	addiu	s1,s1,1
bfc014bc:	02711021 	addu	v0,s3,s1
bfc014c0:	80440001 	lb	a0,1(v0)
bfc014c4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc014c8:	2482ffcf 	addiu	v0,a0,-49
bfc014cc:	304200ff 	andi	v0,v0,0xff
bfc014d0:	2c420009 	sltiu	v0,v0,9
bfc014d4:	1440003f 	bnez	v0,bfc015d4 <printf+0x214>
bfc014d8:	00002821 	move	a1,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:17
bfc014dc:	0bf00521 	j	bfc01484 <printf+0xc4>
bfc014e0:	2482ffdb 	addiu	v0,a0,-37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:79
bfc014e4:	0ff00589 	jal	bfc01624 <putchar>
bfc014e8:	2404000d 	li	a0,13
bfc014ec:	0bf0050b 	j	bfc0142c <printf+0x6c>
bfc014f0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:30
bfc014f4:	8e440000 	lw	a0,0(s2)
bfc014f8:	2406000a 	li	a2,10
bfc014fc:	0ff005c4 	jal	bfc01710 <printbase>
bfc01500:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:31
bfc01504:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:32
bfc01508:	0bf0050d 	j	bfc01434 <printf+0x74>
bfc0150c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:20
bfc01510:	8e440000 	lw	a0,0(s2)
bfc01514:	0ff00594 	jal	bfc01650 <putstring>
bfc01518:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:21
bfc0151c:	0bf0050d 	j	bfc01434 <printf+0x74>
bfc01520:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:56
bfc01524:	8e440000 	lw	a0,0(s2)
bfc01528:	24060010 	li	a2,16
bfc0152c:	0ff005c4 	jal	bfc01710 <printbase>
bfc01530:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:57
bfc01534:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:58
bfc01538:	0bf0050d 	j	bfc01434 <printf+0x74>
bfc0153c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:45
bfc01540:	8e440000 	lw	a0,0(s2)
bfc01544:	24060008 	li	a2,8
bfc01548:	0ff005c4 	jal	bfc01710 <printbase>
bfc0154c:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:46
bfc01550:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:47
bfc01554:	0bf0050d 	j	bfc01434 <printf+0x74>
bfc01558:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:40
bfc0155c:	8e440000 	lw	a0,0(s2)
bfc01560:	2406000a 	li	a2,10
bfc01564:	0ff005c4 	jal	bfc01710 <printbase>
bfc01568:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:41
bfc0156c:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:42
bfc01570:	0bf0050d 	j	bfc01434 <printf+0x74>
bfc01574:	26310002 	addiu	s1,s1,2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:35
bfc01578:	8e440000 	lw	a0,0(s2)
bfc0157c:	2406000a 	li	a2,10
bfc01580:	0ff005c4 	jal	bfc01710 <printbase>
bfc01584:	24070001 	li	a3,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:36
bfc01588:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:37
bfc0158c:	0bf0050d 	j	bfc01434 <printf+0x74>
bfc01590:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:25
bfc01594:	8e440000 	lw	a0,0(s2)
bfc01598:	0ff00589 	jal	bfc01624 <putchar>
bfc0159c:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:26
bfc015a0:	0bf0050d 	j	bfc01434 <printf+0x74>
bfc015a4:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:50
bfc015a8:	8e440000 	lw	a0,0(s2)
bfc015ac:	24060002 	li	a2,2
bfc015b0:	0ff005c4 	jal	bfc01710 <printbase>
bfc015b4:	00003821 	move	a3,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:51
bfc015b8:	26520004 	addiu	s2,s2,4
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:52
bfc015bc:	0bf0050d 	j	bfc01434 <printf+0x74>
bfc015c0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:61
bfc015c4:	0ff00589 	jal	bfc01624 <putchar>
bfc015c8:	24040025 	li	a0,37
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:62
bfc015cc:	0bf0050d 	j	bfc01434 <printf+0x74>
bfc015d0:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc015d4:	02713021 	addu	a2,s3,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc015d8:	000510c0 	sll	v0,a1,0x3
bfc015dc:	00051840 	sll	v1,a1,0x1
bfc015e0:	00621821 	addu	v1,v1,v0
bfc015e4:	00641821 	addu	v1,v1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc015e8:	80c40002 	lb	a0,2(a2)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc015ec:	2465ffd0 	addiu	a1,v1,-48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:67
bfc015f0:	2482ffcf 	addiu	v0,a0,-49
bfc015f4:	304200ff 	andi	v0,v0,0xff
bfc015f8:	2c420009 	sltiu	v0,v0,9
bfc015fc:	26310001 	addiu	s1,s1,1
bfc01600:	1040ff9f 	beqz	v0,bfc01480 <printf+0xc0>
bfc01604:	24c60001 	addiu	a2,a2,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printf.c:68
bfc01608:	0bf00577 	j	bfc015dc <printf+0x21c>
bfc0160c:	000510c0 	sll	v0,a1,0x3

bfc01610 <tgt_putchar>:
tgt_putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:9
bfc01610:	3c018000 	lui	at,0x8000
bfc01614:	03e00008 	jr	ra
bfc01618:	a0247ffc 	sb	a0,32764(at)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:18
bfc0161c:	03e00008 	jr	ra
bfc01620:	00000000 	nop

bfc01624 <putchar>:
putchar():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:2
bfc01624:	27bdffe8 	addiu	sp,sp,-24
bfc01628:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:3
bfc0162c:	0ff00584 	jal	bfc01610 <tgt_putchar>
bfc01630:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/putchar.c:5
bfc01634:	8fbf0014 	lw	ra,20(sp)
bfc01638:	00001021 	move	v0,zero
bfc0163c:	03e00008 	jr	ra
bfc01640:	27bd0018 	addiu	sp,sp,24
	...

bfc01650 <putstring>:
putstring():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:2
bfc01650:	27bdffe0 	addiu	sp,sp,-32
bfc01654:	afb10014 	sw	s1,20(sp)
bfc01658:	afbf001c 	sw	ra,28(sp)
bfc0165c:	afb20018 	sw	s2,24(sp)
bfc01660:	afb00010 	sw	s0,16(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc01664:	80900000 	lb	s0,0(a0)
bfc01668:	00000000 	nop
bfc0166c:	12000013 	beqz	s0,bfc016bc <putstring+0x6c>
bfc01670:	00808821 	move	s1,a0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc01674:	0bf005a5 	j	bfc01694 <putstring+0x44>
bfc01678:	2412000a 	li	s2,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc0167c:	0ff00589 	jal	bfc01624 <putchar>
bfc01680:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc01684:	82300000 	lb	s0,0(s1)
bfc01688:	00000000 	nop
bfc0168c:	1200000b 	beqz	s0,bfc016bc <putstring+0x6c>
bfc01690:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:6
bfc01694:	1612fff9 	bne	s0,s2,bfc0167c <putstring+0x2c>
bfc01698:	26310001 	addiu	s1,s1,1
bfc0169c:	0ff00589 	jal	bfc01624 <putchar>
bfc016a0:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:7
bfc016a4:	0ff00589 	jal	bfc01624 <putchar>
bfc016a8:	02002021 	move	a0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:4
bfc016ac:	82300000 	lb	s0,0(s1)
bfc016b0:	00000000 	nop
bfc016b4:	1600fff7 	bnez	s0,bfc01694 <putstring+0x44>
bfc016b8:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:11
bfc016bc:	8fbf001c 	lw	ra,28(sp)
bfc016c0:	00001021 	move	v0,zero
bfc016c4:	8fb20018 	lw	s2,24(sp)
bfc016c8:	8fb10014 	lw	s1,20(sp)
bfc016cc:	8fb00010 	lw	s0,16(sp)
bfc016d0:	03e00008 	jr	ra
bfc016d4:	27bd0020 	addiu	sp,sp,32

bfc016d8 <puts>:
puts():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:15
bfc016d8:	27bdffe8 	addiu	sp,sp,-24
bfc016dc:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:16
bfc016e0:	0ff00594 	jal	bfc01650 <putstring>
bfc016e4:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:17
bfc016e8:	0ff00589 	jal	bfc01624 <putchar>
bfc016ec:	2404000d 	li	a0,13
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:18
bfc016f0:	0ff00589 	jal	bfc01624 <putchar>
bfc016f4:	2404000a 	li	a0,10
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/puts.c:20
bfc016f8:	8fbf0014 	lw	ra,20(sp)
bfc016fc:	00001021 	move	v0,zero
bfc01700:	03e00008 	jr	ra
bfc01704:	27bd0018 	addiu	sp,sp,24
	...

bfc01710 <printbase>:
printbase():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc01710:	27bdff98 	addiu	sp,sp,-104
bfc01714:	afb30060 	sw	s3,96(sp)
bfc01718:	afb2005c 	sw	s2,92(sp)
bfc0171c:	afbf0064 	sw	ra,100(sp)
bfc01720:	afb10058 	sw	s1,88(sp)
bfc01724:	afb00054 	sw	s0,84(sp)
bfc01728:	00801821 	move	v1,a0
bfc0172c:	00a09821 	move	s3,a1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:7
bfc01730:	10e00003 	beqz	a3,bfc01740 <printbase+0x30>
bfc01734:	00c09021 	move	s2,a2
bfc01738:	0480002f 	bltz	a0,bfc017f8 <printbase+0xe8>
bfc0173c:	2404002d 	li	a0,45
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:12
bfc01740:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc01744:	1200000c 	beqz	s0,bfc01778 <printbase+0x68>
bfc01748:	00008821 	move	s1,zero
bfc0174c:	27a50010 	addiu	a1,sp,16
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc01750:	16400002 	bnez	s2,bfc0175c <printbase+0x4c>
bfc01754:	0212001b 	divu	zero,s0,s2
bfc01758:	0007000d 	break	0x7
bfc0175c:	00b12021 	addu	a0,a1,s1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc01760:	26310001 	addiu	s1,s1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:16
bfc01764:	00001010 	mfhi	v0
bfc01768:	a0820000 	sb	v0,0(a0)
bfc0176c:	00001812 	mflo	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:14
bfc01770:	1460fff7 	bnez	v1,bfc01750 <printbase+0x40>
bfc01774:	00608021 	move	s0,v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc01778:	0233102a 	slt	v0,s1,s3
bfc0177c:	10400002 	beqz	v0,bfc01788 <printbase+0x78>
bfc01780:	02201821 	move	v1,s1
bfc01784:	02601821 	move	v1,s3
bfc01788:	1060000c 	beqz	v1,bfc017bc <printbase+0xac>
bfc0178c:	2470ffff 	addiu	s0,v1,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:2
bfc01790:	27a20010 	addiu	v0,sp,16
bfc01794:	00509021 	addu	s2,v0,s0
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc01798:	26020001 	addiu	v0,s0,1
bfc0179c:	0222102a 	slt	v0,s1,v0
bfc017a0:	1040000e 	beqz	v0,bfc017dc <printbase+0xcc>
bfc017a4:	24040030 	li	a0,48
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc017a8:	02009821 	move	s3,s0
bfc017ac:	0ff00589 	jal	bfc01624 <putchar>
bfc017b0:	2610ffff 	addiu	s0,s0,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:22
bfc017b4:	1660fff8 	bnez	s3,bfc01798 <printbase+0x88>
bfc017b8:	2652ffff 	addiu	s2,s2,-1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:28
bfc017bc:	8fbf0064 	lw	ra,100(sp)
bfc017c0:	00001021 	move	v0,zero
bfc017c4:	8fb30060 	lw	s3,96(sp)
bfc017c8:	8fb2005c 	lw	s2,92(sp)
bfc017cc:	8fb10058 	lw	s1,88(sp)
bfc017d0:	8fb00054 	lw	s0,84(sp)
bfc017d4:	03e00008 	jr	ra
bfc017d8:	27bd0068 	addiu	sp,sp,104
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:24
bfc017dc:	82440000 	lb	a0,0(s2)
bfc017e0:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc017e4:	2882000a 	slti	v0,a0,10
bfc017e8:	14400007 	bnez	v0,bfc01808 <printbase+0xf8>
bfc017ec:	02009821 	move	s3,s0
bfc017f0:	0bf005eb 	j	bfc017ac <printbase+0x9c>
bfc017f4:	24840057 	addiu	a0,a0,87
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:10
bfc017f8:	0ff00589 	jal	bfc01624 <putchar>
bfc017fc:	00038023 	negu	s0,v1
bfc01800:	0bf005d1 	j	bfc01744 <printbase+0x34>
bfc01804:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/printbase.c:25
bfc01808:	0bf005ea 	j	bfc017a8 <printbase+0x98>
bfc0180c:	24840030 	addiu	a0,a0,48

bfc01810 <strcmp>:
strcmp():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/strcmp.c:6
bfc01810:	0bf00607 	j	bfc0181c <strcmp+0xc>
bfc01814:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/strcmp.c:8
bfc01818:	00c02821 	move	a1,a2
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/strcmp.c:7
bfc0181c:	80a30000 	lb	v1,0(a1)
bfc01820:	80820000 	lb	v0,0(a0)
bfc01824:	00000000 	nop
bfc01828:	14620005 	bne	v1,v0,bfc01840 <strcmp+0x30>
bfc0182c:	24a60001 	addiu	a2,a1,1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/strcmp.c:8
bfc01830:	1460fff9 	bnez	v1,bfc01818 <strcmp+0x8>
bfc01834:	24840001 	addiu	a0,a0,1
bfc01838:	03e00008 	jr	ra
bfc0183c:	00001021 	move	v0,zero
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/strcmp.c:10
bfc01840:	90830000 	lbu	v1,0(a0)
bfc01844:	90a20000 	lbu	v0,0(a1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/strcmp.c:11
bfc01848:	03e00008 	jr	ra
bfc0184c:	00621023 	subu	v0,v1,v0

bfc01850 <_get_count>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:15
bfc01850:	3c01bfd0 	lui	at,0xbfd0
bfc01854:	3421e000 	ori	at,at,0xe000
bfc01858:	8c220000 	lw	v0,0(at)
bfc0185c:	03e00008 	jr	ra
bfc01860:	00000000 	nop

bfc01864 <get_count>:
get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:20
bfc01864:	3c01bfd0 	lui	at,0xbfd0
bfc01868:	3421e000 	ori	at,at,0xe000
bfc0186c:	8c220000 	lw	v0,0(at)
bfc01870:	03e00008 	jr	ra
bfc01874:	00000000 	nop

bfc01878 <get_clock>:
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc01878:	3c01bfd0 	lui	at,0xbfd0
bfc0187c:	3421e000 	ori	at,at,0xe000
bfc01880:	8c220000 	lw	v0,0(at)
get_clock():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:39
bfc01884:	03e00008 	jr	ra
bfc01888:	00021040 	sll	v0,v0,0x1

bfc0188c <get_ns>:
get_ns():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:45
bfc0188c:	40024800 	mfc0	v0,$9
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:51
bfc01890:	03e00008 	jr	ra
bfc01894:	00021040 	sll	v0,v0,0x1

bfc01898 <clock_gettime>:
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:23
bfc01898:	27bdffe8 	addiu	sp,sp,-24
bfc0189c:	afbf0014 	sw	ra,20(sp)
bfc018a0:	00a04821 	move	t1,a1
_get_count():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:6
bfc018a4:	3c01bfd0 	lui	at,0xbfd0
bfc018a8:	3421e000 	ori	at,at,0xe000
bfc018ac:	8c230000 	lw	v1,0(at)
clock_gettime():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc018b0:	240203e8 	li	v0,1000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc018b4:	14400002 	bnez	v0,bfc018c0 <clock_gettime+0x28>
bfc018b8:	0062001b 	divu	zero,v1,v0
bfc018bc:	0007000d 	break	0x7
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc018c0:	00031840 	sll	v1,v1,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc018c4:	3c073b9a 	lui	a3,0x3b9a
bfc018c8:	34e7ca00 	ori	a3,a3,0xca00
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc018cc:	3c048000 	lui	a0,0x8000
bfc018d0:	248406d0 	addiu	a0,a0,1744
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc018d4:	00003012 	mflo	a2
bfc018d8:	00063040 	sll	a2,a2,0x1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:26
bfc018dc:	14400002 	bnez	v0,bfc018e8 <clock_gettime+0x50>
bfc018e0:	0062001b 	divu	zero,v1,v0
bfc018e4:	0007000d 	break	0x7
bfc018e8:	00002810 	mfhi	a1
bfc018ec:	ad250004 	sw	a1,4(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:27
bfc018f0:	14400002 	bnez	v0,bfc018fc <clock_gettime+0x64>
bfc018f4:	00c2001b 	divu	zero,a2,v0
bfc018f8:	0007000d 	break	0x7
bfc018fc:	00005010 	mfhi	t2
bfc01900:	ad2a0008 	sw	t2,8(t1)
bfc01904:	00004012 	mflo	t0
bfc01908:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:29
bfc0190c:	14e00002 	bnez	a3,bfc01918 <clock_gettime+0x80>
bfc01910:	00c7001b 	divu	zero,a2,a3
bfc01914:	0007000d 	break	0x7
bfc01918:	00003012 	mflo	a2
bfc0191c:	ad260000 	sw	a2,0(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:28
bfc01920:	14400002 	bnez	v0,bfc0192c <clock_gettime+0x94>
bfc01924:	0102001b 	divu	zero,t0,v0
bfc01928:	0007000d 	break	0x7
bfc0192c:	00001810 	mfhi	v1
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:30
bfc01930:	0ff004f0 	jal	bfc013c0 <printf>
bfc01934:	ad23000c 	sw	v1,12(t1)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/time.c:32
bfc01938:	8fbf0014 	lw	ra,20(sp)
bfc0193c:	00001021 	move	v0,zero
bfc01940:	03e00008 	jr	ra
bfc01944:	27bd0018 	addiu	sp,sp,24
	...

bfc01950 <get_epc>:
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc01950:	40027000 	mfc0	v0,c0_epc
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:9
bfc01954:	03e00008 	jr	ra
bfc01958:	00000000 	nop

bfc0195c <get_cause>:
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc0195c:	40026800 	mfc0	v0,c0_cause
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:19
bfc01960:	03e00008 	jr	ra
bfc01964:	00000000 	nop

bfc01968 <exception>:
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc01968:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:22
bfc0196c:	27bdffe8 	addiu	sp,sp,-24
bfc01970:	afbf0014 	sw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:24
bfc01974:	0ff004f0 	jal	bfc013c0 <printf>
bfc01978:	248406e4 	addiu	a0,a0,1764
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc0197c:	3c048000 	lui	a0,0x8000
bfc01980:	24840700 	addiu	a0,a0,1792
get_epc():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:4
bfc01984:	40057000 	mfc0	a1,c0_epc
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:26
bfc01988:	0ff004f0 	jal	bfc013c0 <printf>
bfc0198c:	00000000 	nop
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc01990:	3c048000 	lui	a0,0x8000
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc01994:	8fbf0014 	lw	ra,20(sp)
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc01998:	24840710 	addiu	a0,a0,1808
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:30
bfc0199c:	27bd0018 	addiu	sp,sp,24
get_cause():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:14
bfc019a0:	40056800 	mfc0	a1,c0_cause
exception():
/media/sf_loongson/develop_v0.03/perf_test_v1.00/soft/lib/exception.c:28
bfc019a4:	0bf004f0 	j	bfc013c0 <printf>
bfc019a8:	00000000 	nop
bfc019ac:	00000000 	nop
