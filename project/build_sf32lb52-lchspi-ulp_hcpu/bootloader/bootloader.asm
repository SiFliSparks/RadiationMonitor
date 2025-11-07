
build_sf32lb52-lchspi-ulp_hcpu\bootloader\bootloader.elf:     file format elf32-littlearm


Disassembly of section .text:

20020208 <deregister_tm_clones>:
20020208:	4803      	ldr	r0, [pc, #12]	@ (20020218 <deregister_tm_clones+0x10>)
2002020a:	4b04      	ldr	r3, [pc, #16]	@ (2002021c <deregister_tm_clones+0x14>)
2002020c:	4283      	cmp	r3, r0
2002020e:	d002      	beq.n	20020216 <deregister_tm_clones+0xe>
20020210:	4b03      	ldr	r3, [pc, #12]	@ (20020220 <deregister_tm_clones+0x18>)
20020212:	b103      	cbz	r3, 20020216 <deregister_tm_clones+0xe>
20020214:	4718      	bx	r3
20020216:	4770      	bx	lr
20020218:	20044960 	.word	0x20044960
2002021c:	20044960 	.word	0x20044960
20020220:	00000000 	.word	0x00000000

20020224 <register_tm_clones>:
20020224:	4b06      	ldr	r3, [pc, #24]	@ (20020240 <register_tm_clones+0x1c>)
20020226:	4907      	ldr	r1, [pc, #28]	@ (20020244 <register_tm_clones+0x20>)
20020228:	1ac9      	subs	r1, r1, r3
2002022a:	1089      	asrs	r1, r1, #2
2002022c:	bf48      	it	mi
2002022e:	3101      	addmi	r1, #1
20020230:	1049      	asrs	r1, r1, #1
20020232:	d003      	beq.n	2002023c <register_tm_clones+0x18>
20020234:	4b04      	ldr	r3, [pc, #16]	@ (20020248 <register_tm_clones+0x24>)
20020236:	b10b      	cbz	r3, 2002023c <register_tm_clones+0x18>
20020238:	4801      	ldr	r0, [pc, #4]	@ (20020240 <register_tm_clones+0x1c>)
2002023a:	4718      	bx	r3
2002023c:	4770      	bx	lr
2002023e:	bf00      	nop
20020240:	20044960 	.word	0x20044960
20020244:	20044960 	.word	0x20044960
20020248:	00000000 	.word	0x00000000

2002024c <__do_global_dtors_aux>:
2002024c:	b510      	push	{r4, lr}
2002024e:	4c06      	ldr	r4, [pc, #24]	@ (20020268 <__do_global_dtors_aux+0x1c>)
20020250:	7823      	ldrb	r3, [r4, #0]
20020252:	b943      	cbnz	r3, 20020266 <__do_global_dtors_aux+0x1a>
20020254:	f7ff ffd8 	bl	20020208 <deregister_tm_clones>
20020258:	4b04      	ldr	r3, [pc, #16]	@ (2002026c <__do_global_dtors_aux+0x20>)
2002025a:	b113      	cbz	r3, 20020262 <__do_global_dtors_aux+0x16>
2002025c:	4804      	ldr	r0, [pc, #16]	@ (20020270 <__do_global_dtors_aux+0x24>)
2002025e:	f3af 8000 	nop.w
20020262:	2301      	movs	r3, #1
20020264:	7023      	strb	r3, [r4, #0]
20020266:	bd10      	pop	{r4, pc}
20020268:	20044960 	.word	0x20044960
2002026c:	00000000 	.word	0x00000000
20020270:	2002c234 	.word	0x2002c234

20020274 <frame_dummy>:
20020274:	b508      	push	{r3, lr}
20020276:	4b05      	ldr	r3, [pc, #20]	@ (2002028c <frame_dummy+0x18>)
20020278:	b11b      	cbz	r3, 20020282 <frame_dummy+0xe>
2002027a:	4905      	ldr	r1, [pc, #20]	@ (20020290 <frame_dummy+0x1c>)
2002027c:	4805      	ldr	r0, [pc, #20]	@ (20020294 <frame_dummy+0x20>)
2002027e:	f3af 8000 	nop.w
20020282:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20020286:	f7ff bfcd 	b.w	20020224 <register_tm_clones>
2002028a:	bf00      	nop
2002028c:	00000000 	.word	0x00000000
20020290:	20044964 	.word	0x20044964
20020294:	2002c234 	.word	0x2002c234

20020298 <boot_uart_tx>:
20020298:	2300      	movs	r3, #0
2002029a:	b510      	push	{r4, lr}
2002029c:	4293      	cmp	r3, r2
2002029e:	db00      	blt.n	200202a2 <boot_uart_tx+0xa>
200202a0:	bd10      	pop	{r4, pc}
200202a2:	69c4      	ldr	r4, [r0, #28]
200202a4:	0624      	lsls	r4, r4, #24
200202a6:	d5fc      	bpl.n	200202a2 <boot_uart_tx+0xa>
200202a8:	5ccc      	ldrb	r4, [r1, r3]
200202aa:	3301      	adds	r3, #1
200202ac:	6284      	str	r4, [r0, #40]	@ 0x28
200202ae:	e7f5      	b.n	2002029c <boot_uart_tx+0x4>

200202b0 <boot_error>:
200202b0:	b507      	push	{r0, r1, r2, lr}
200202b2:	2201      	movs	r2, #1
200202b4:	f88d 0007 	strb.w	r0, [sp, #7]
200202b8:	f10d 0107 	add.w	r1, sp, #7
200202bc:	480e      	ldr	r0, [pc, #56]	@ (200202f8 <boot_error+0x48>)
200202be:	f7ff ffeb 	bl	20020298 <boot_uart_tx>
200202c2:	4b0e      	ldr	r3, [pc, #56]	@ (200202fc <boot_error+0x4c>)
200202c4:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202c8:	f002 0203 	and.w	r2, r2, #3
200202cc:	2a03      	cmp	r2, #3
200202ce:	f102 0101 	add.w	r1, r2, #1
200202d2:	d00f      	beq.n	200202f4 <boot_error+0x44>
200202d4:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202d8:	f022 0203 	bic.w	r2, r2, #3
200202dc:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
200202e0:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202e4:	430a      	orrs	r2, r1
200202e6:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
200202ea:	f00b ffd3 	bl	2002c294 <HAL_PMU_Reboot>
200202ee:	b003      	add	sp, #12
200202f0:	f85d fb04 	ldr.w	pc, [sp], #4
200202f4:	e7fe      	b.n	200202f4 <boot_error+0x44>
200202f6:	bf00      	nop
200202f8:	50084000 	.word	0x50084000
200202fc:	500ca000 	.word	0x500ca000

20020300 <HAL_MspInit>:
20020300:	2234      	movs	r2, #52	@ 0x34
20020302:	4b01      	ldr	r3, [pc, #4]	@ (20020308 <HAL_MspInit+0x8>)
20020304:	60da      	str	r2, [r3, #12]
20020306:	4770      	bx	lr
20020308:	50094000 	.word	0x50094000

2002030c <mpu_config>:
2002030c:	4770      	bx	lr

2002030e <cache_enable>:
2002030e:	4770      	bx	lr

20020310 <board_pinmux_mpi1_puya_base>:
20020310:	b510      	push	{r4, lr}
20020312:	2301      	movs	r3, #1
20020314:	2200      	movs	r2, #0
20020316:	2103      	movs	r1, #3
20020318:	2002      	movs	r0, #2
2002031a:	f004 fbb7 	bl	20024a8c <HAL_PIN_Set>
2002031e:	2301      	movs	r3, #1
20020320:	2200      	movs	r2, #0
20020322:	4619      	mov	r1, r3
20020324:	200a      	movs	r0, #10
20020326:	f004 fbb1 	bl	20024a8c <HAL_PIN_Set>
2002032a:	2301      	movs	r3, #1
2002032c:	2210      	movs	r2, #16
2002032e:	2109      	movs	r1, #9
20020330:	2008      	movs	r0, #8
20020332:	f004 fbab 	bl	20024a8c <HAL_PIN_Set>
20020336:	2301      	movs	r3, #1
20020338:	2210      	movs	r2, #16
2002033a:	210a      	movs	r1, #10
2002033c:	2003      	movs	r0, #3
2002033e:	f004 fba5 	bl	20024a8c <HAL_PIN_Set>
20020342:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020346:	2301      	movs	r3, #1
20020348:	2200      	movs	r2, #0
2002034a:	210c      	movs	r1, #12
2002034c:	200b      	movs	r0, #11
2002034e:	f004 bb9d 	b.w	20024a8c <HAL_PIN_Set>

20020352 <board_pinmux_mpi1_puya_ext>:
20020352:	b510      	push	{r4, lr}
20020354:	4604      	mov	r4, r0
20020356:	2101      	movs	r1, #1
20020358:	2005      	movs	r0, #5
2002035a:	f004 fcdb 	bl	20024d14 <HAL_PIN_Set_Analog>
2002035e:	2101      	movs	r1, #1
20020360:	2006      	movs	r0, #6
20020362:	f004 fcd7 	bl	20024d14 <HAL_PIN_Set_Analog>
20020366:	2101      	movs	r1, #1
20020368:	2007      	movs	r0, #7
2002036a:	f004 fcd3 	bl	20024d14 <HAL_PIN_Set_Analog>
2002036e:	2101      	movs	r1, #1
20020370:	2009      	movs	r0, #9
20020372:	f004 fccf 	bl	20024d14 <HAL_PIN_Set_Analog>
20020376:	2101      	movs	r1, #1
20020378:	200c      	movs	r0, #12
2002037a:	f004 fccb 	bl	20024d14 <HAL_PIN_Set_Analog>
2002037e:	2101      	movs	r1, #1
20020380:	200d      	movs	r0, #13
20020382:	f004 fcc7 	bl	20024d14 <HAL_PIN_Set_Analog>
20020386:	2101      	movs	r1, #1
20020388:	b154      	cbz	r4, 200203a0 <board_pinmux_mpi1_puya_ext+0x4e>
2002038a:	4608      	mov	r0, r1
2002038c:	f004 fcc2 	bl	20024d14 <HAL_PIN_Set_Analog>
20020390:	2301      	movs	r3, #1
20020392:	2230      	movs	r2, #48	@ 0x30
20020394:	210b      	movs	r1, #11
20020396:	2004      	movs	r0, #4
20020398:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002039c:	f004 bb76 	b.w	20024a8c <HAL_PIN_Set>
200203a0:	2004      	movs	r0, #4
200203a2:	f004 fcb7 	bl	20024d14 <HAL_PIN_Set_Analog>
200203a6:	2301      	movs	r3, #1
200203a8:	2230      	movs	r2, #48	@ 0x30
200203aa:	210b      	movs	r1, #11
200203ac:	4618      	mov	r0, r3
200203ae:	e7f3      	b.n	20020398 <board_pinmux_mpi1_puya_ext+0x46>

200203b0 <board_pinmux_mpi1_gd>:
200203b0:	b508      	push	{r3, lr}
200203b2:	2200      	movs	r2, #0
200203b4:	2301      	movs	r3, #1
200203b6:	2103      	movs	r1, #3
200203b8:	2005      	movs	r0, #5
200203ba:	f004 fb67 	bl	20024a8c <HAL_PIN_Set>
200203be:	2301      	movs	r3, #1
200203c0:	2200      	movs	r2, #0
200203c2:	4619      	mov	r1, r3
200203c4:	200a      	movs	r0, #10
200203c6:	f004 fb61 	bl	20024a8c <HAL_PIN_Set>
200203ca:	2301      	movs	r3, #1
200203cc:	2210      	movs	r2, #16
200203ce:	2109      	movs	r1, #9
200203d0:	200c      	movs	r0, #12
200203d2:	f004 fb5b 	bl	20024a8c <HAL_PIN_Set>
200203d6:	2301      	movs	r3, #1
200203d8:	2210      	movs	r2, #16
200203da:	210a      	movs	r1, #10
200203dc:	2003      	movs	r0, #3
200203de:	f004 fb55 	bl	20024a8c <HAL_PIN_Set>
200203e2:	2301      	movs	r3, #1
200203e4:	2230      	movs	r2, #48	@ 0x30
200203e6:	210b      	movs	r1, #11
200203e8:	4618      	mov	r0, r3
200203ea:	f004 fb4f 	bl	20024a8c <HAL_PIN_Set>
200203ee:	2301      	movs	r3, #1
200203f0:	2230      	movs	r2, #48	@ 0x30
200203f2:	210c      	movs	r1, #12
200203f4:	2009      	movs	r0, #9
200203f6:	f004 fb49 	bl	20024a8c <HAL_PIN_Set>
200203fa:	2101      	movs	r1, #1
200203fc:	2002      	movs	r0, #2
200203fe:	f004 fc89 	bl	20024d14 <HAL_PIN_Set_Analog>
20020402:	2101      	movs	r1, #1
20020404:	2004      	movs	r0, #4
20020406:	f004 fc85 	bl	20024d14 <HAL_PIN_Set_Analog>
2002040a:	2101      	movs	r1, #1
2002040c:	2006      	movs	r0, #6
2002040e:	f004 fc81 	bl	20024d14 <HAL_PIN_Set_Analog>
20020412:	2101      	movs	r1, #1
20020414:	2007      	movs	r0, #7
20020416:	f004 fc7d 	bl	20024d14 <HAL_PIN_Set_Analog>
2002041a:	2101      	movs	r1, #1
2002041c:	2008      	movs	r0, #8
2002041e:	f004 fc79 	bl	20024d14 <HAL_PIN_Set_Analog>
20020422:	2101      	movs	r1, #1
20020424:	200b      	movs	r0, #11
20020426:	f004 fc75 	bl	20024d14 <HAL_PIN_Set_Analog>
2002042a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002042e:	2101      	movs	r1, #1
20020430:	200d      	movs	r0, #13
20020432:	f004 bc6f 	b.w	20024d14 <HAL_PIN_Set_Analog>

20020436 <board_pinmux_mpi2>:
20020436:	b510      	push	{r4, lr}
20020438:	2301      	movs	r3, #1
2002043a:	2200      	movs	r2, #0
2002043c:	2119      	movs	r1, #25
2002043e:	201e      	movs	r0, #30
20020440:	f004 fb24 	bl	20024a8c <HAL_PIN_Set>
20020444:	2301      	movs	r3, #1
20020446:	2200      	movs	r2, #0
20020448:	211b      	movs	r1, #27
2002044a:	201a      	movs	r0, #26
2002044c:	f004 fb1e 	bl	20024a8c <HAL_PIN_Set>
20020450:	2301      	movs	r3, #1
20020452:	2210      	movs	r2, #16
20020454:	2121      	movs	r1, #33	@ 0x21
20020456:	201d      	movs	r0, #29
20020458:	f004 fb18 	bl	20024a8c <HAL_PIN_Set>
2002045c:	2301      	movs	r3, #1
2002045e:	2210      	movs	r2, #16
20020460:	2122      	movs	r1, #34	@ 0x22
20020462:	201b      	movs	r0, #27
20020464:	f004 fb12 	bl	20024a8c <HAL_PIN_Set>
20020468:	2301      	movs	r3, #1
2002046a:	2230      	movs	r2, #48	@ 0x30
2002046c:	2123      	movs	r1, #35	@ 0x23
2002046e:	201c      	movs	r0, #28
20020470:	f004 fb0c 	bl	20024a8c <HAL_PIN_Set>
20020474:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020478:	2301      	movs	r3, #1
2002047a:	2230      	movs	r2, #48	@ 0x30
2002047c:	2124      	movs	r1, #36	@ 0x24
2002047e:	201f      	movs	r0, #31
20020480:	f004 bb04 	b.w	20024a8c <HAL_PIN_Set>

20020484 <board_pinmux_sd>:
20020484:	b510      	push	{r4, lr}
20020486:	2301      	movs	r3, #1
20020488:	2230      	movs	r2, #48	@ 0x30
2002048a:	f44f 71da 	mov.w	r1, #436	@ 0x1b4
2002048e:	201d      	movs	r0, #29
20020490:	f004 fafc 	bl	20024a8c <HAL_PIN_Set>
20020494:	2014      	movs	r0, #20
20020496:	f001 fd16 	bl	20021ec6 <HAL_Delay_us>
2002049a:	2301      	movs	r3, #1
2002049c:	2200      	movs	r2, #0
2002049e:	f44f 71d9 	mov.w	r1, #434	@ 0x1b2
200204a2:	201c      	movs	r0, #28
200204a4:	f004 faf2 	bl	20024a8c <HAL_PIN_Set>
200204a8:	2301      	movs	r3, #1
200204aa:	2230      	movs	r2, #48	@ 0x30
200204ac:	f240 11b5 	movw	r1, #437	@ 0x1b5
200204b0:	201e      	movs	r0, #30
200204b2:	f004 faeb 	bl	20024a8c <HAL_PIN_Set>
200204b6:	2301      	movs	r3, #1
200204b8:	2230      	movs	r2, #48	@ 0x30
200204ba:	f44f 71db 	mov.w	r1, #438	@ 0x1b6
200204be:	201f      	movs	r0, #31
200204c0:	f004 fae4 	bl	20024a8c <HAL_PIN_Set>
200204c4:	2301      	movs	r3, #1
200204c6:	2230      	movs	r2, #48	@ 0x30
200204c8:	f240 11b7 	movw	r1, #439	@ 0x1b7
200204cc:	201a      	movs	r0, #26
200204ce:	f004 fadd 	bl	20024a8c <HAL_PIN_Set>
200204d2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200204d6:	2301      	movs	r3, #1
200204d8:	2230      	movs	r2, #48	@ 0x30
200204da:	f44f 71dc 	mov.w	r1, #440	@ 0x1b8
200204de:	201b      	movs	r0, #27
200204e0:	f004 bad4 	b.w	20024a8c <HAL_PIN_Set>

200204e4 <board_boot_from>:
200204e4:	4b0d      	ldr	r3, [pc, #52]	@ (2002051c <board_boot_from+0x38>)
200204e6:	b510      	push	{r4, lr}
200204e8:	685b      	ldr	r3, [r3, #4]
200204ea:	f3c3 2302 	ubfx	r3, r3, #8, #3
200204ee:	2b07      	cmp	r3, #7
200204f0:	d10c      	bne.n	2002050c <board_boot_from+0x28>
200204f2:	2400      	movs	r4, #0
200204f4:	3401      	adds	r4, #1
200204f6:	2101      	movs	r1, #1
200204f8:	4620      	mov	r0, r4
200204fa:	f004 fc0b 	bl	20024d14 <HAL_PIN_Set_Analog>
200204fe:	2c0d      	cmp	r4, #13
20020500:	d1f8      	bne.n	200204f4 <board_boot_from+0x10>
20020502:	2000      	movs	r0, #0
20020504:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020508:	f002 babc 	b.w	20022a84 <HAL_Get_backup>
2002050c:	b11b      	cbz	r3, 20020516 <board_boot_from+0x32>
2002050e:	2b01      	cmp	r3, #1
20020510:	d1f7      	bne.n	20020502 <board_boot_from+0x1e>
20020512:	2002      	movs	r0, #2
20020514:	bd10      	pop	{r4, pc}
20020516:	2001      	movs	r0, #1
20020518:	e7fc      	b.n	20020514 <board_boot_from+0x30>
2002051a:	bf00      	nop
2002051c:	5000b000 	.word	0x5000b000

20020520 <board_flash_power_on>:
20020520:	4770      	bx	lr

20020522 <board_pinmux_psram_func0>:
20020522:	b508      	push	{r3, lr}
20020524:	2210      	movs	r2, #16
20020526:	2301      	movs	r3, #1
20020528:	2109      	movs	r1, #9
2002052a:	2002      	movs	r0, #2
2002052c:	f004 faae 	bl	20024a8c <HAL_PIN_Set>
20020530:	2301      	movs	r3, #1
20020532:	2210      	movs	r2, #16
20020534:	210a      	movs	r1, #10
20020536:	2003      	movs	r0, #3
20020538:	f004 faa8 	bl	20024a8c <HAL_PIN_Set>
2002053c:	2301      	movs	r3, #1
2002053e:	2210      	movs	r2, #16
20020540:	210b      	movs	r1, #11
20020542:	2004      	movs	r0, #4
20020544:	f004 faa2 	bl	20024a8c <HAL_PIN_Set>
20020548:	2301      	movs	r3, #1
2002054a:	2210      	movs	r2, #16
2002054c:	210c      	movs	r1, #12
2002054e:	2005      	movs	r0, #5
20020550:	f004 fa9c 	bl	20024a8c <HAL_PIN_Set>
20020554:	2301      	movs	r3, #1
20020556:	2210      	movs	r2, #16
20020558:	210d      	movs	r1, #13
2002055a:	2006      	movs	r0, #6
2002055c:	f004 fa96 	bl	20024a8c <HAL_PIN_Set>
20020560:	2301      	movs	r3, #1
20020562:	2210      	movs	r2, #16
20020564:	210e      	movs	r1, #14
20020566:	2007      	movs	r0, #7
20020568:	f004 fa90 	bl	20024a8c <HAL_PIN_Set>
2002056c:	2301      	movs	r3, #1
2002056e:	2210      	movs	r2, #16
20020570:	210f      	movs	r1, #15
20020572:	2008      	movs	r0, #8
20020574:	f004 fa8a 	bl	20024a8c <HAL_PIN_Set>
20020578:	2210      	movs	r2, #16
2002057a:	2301      	movs	r3, #1
2002057c:	4611      	mov	r1, r2
2002057e:	2009      	movs	r0, #9
20020580:	f004 fa84 	bl	20024a8c <HAL_PIN_Set>
20020584:	2301      	movs	r3, #1
20020586:	2210      	movs	r2, #16
20020588:	2106      	movs	r1, #6
2002058a:	200a      	movs	r0, #10
2002058c:	f004 fa7e 	bl	20024a8c <HAL_PIN_Set>
20020590:	2301      	movs	r3, #1
20020592:	2200      	movs	r2, #0
20020594:	4619      	mov	r1, r3
20020596:	200b      	movs	r0, #11
20020598:	f004 fa78 	bl	20024a8c <HAL_PIN_Set>
2002059c:	2301      	movs	r3, #1
2002059e:	2200      	movs	r2, #0
200205a0:	2103      	movs	r1, #3
200205a2:	200c      	movs	r0, #12
200205a4:	f004 fa72 	bl	20024a8c <HAL_PIN_Set>
200205a8:	2101      	movs	r1, #1
200205aa:	4608      	mov	r0, r1
200205ac:	f004 fbb2 	bl	20024d14 <HAL_PIN_Set_Analog>
200205b0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
200205b4:	2101      	movs	r1, #1
200205b6:	200d      	movs	r0, #13
200205b8:	f004 bbac 	b.w	20024d14 <HAL_PIN_Set_Analog>

200205bc <board_pinmux_psram_func1_2_4>:
200205bc:	b510      	push	{r4, lr}
200205be:	2301      	movs	r3, #1
200205c0:	4604      	mov	r4, r0
200205c2:	2210      	movs	r2, #16
200205c4:	2109      	movs	r1, #9
200205c6:	2002      	movs	r0, #2
200205c8:	f004 fa60 	bl	20024a8c <HAL_PIN_Set>
200205cc:	2301      	movs	r3, #1
200205ce:	2210      	movs	r2, #16
200205d0:	210a      	movs	r1, #10
200205d2:	2003      	movs	r0, #3
200205d4:	f004 fa5a 	bl	20024a8c <HAL_PIN_Set>
200205d8:	2301      	movs	r3, #1
200205da:	2210      	movs	r2, #16
200205dc:	210b      	movs	r1, #11
200205de:	2004      	movs	r0, #4
200205e0:	f004 fa54 	bl	20024a8c <HAL_PIN_Set>
200205e4:	2301      	movs	r3, #1
200205e6:	2210      	movs	r2, #16
200205e8:	210c      	movs	r1, #12
200205ea:	2005      	movs	r0, #5
200205ec:	f004 fa4e 	bl	20024a8c <HAL_PIN_Set>
200205f0:	2301      	movs	r3, #1
200205f2:	2210      	movs	r2, #16
200205f4:	210d      	movs	r1, #13
200205f6:	2009      	movs	r0, #9
200205f8:	f004 fa48 	bl	20024a8c <HAL_PIN_Set>
200205fc:	2301      	movs	r3, #1
200205fe:	2210      	movs	r2, #16
20020600:	210e      	movs	r1, #14
20020602:	200a      	movs	r0, #10
20020604:	f004 fa42 	bl	20024a8c <HAL_PIN_Set>
20020608:	2301      	movs	r3, #1
2002060a:	2210      	movs	r2, #16
2002060c:	210f      	movs	r1, #15
2002060e:	200b      	movs	r0, #11
20020610:	f004 fa3c 	bl	20024a8c <HAL_PIN_Set>
20020614:	2210      	movs	r2, #16
20020616:	2301      	movs	r3, #1
20020618:	4611      	mov	r1, r2
2002061a:	200c      	movs	r0, #12
2002061c:	f004 fa36 	bl	20024a8c <HAL_PIN_Set>
20020620:	2301      	movs	r3, #1
20020622:	2200      	movs	r2, #0
20020624:	4619      	mov	r1, r3
20020626:	2008      	movs	r0, #8
20020628:	f004 fa30 	bl	20024a8c <HAL_PIN_Set>
2002062c:	2301      	movs	r3, #1
2002062e:	2200      	movs	r2, #0
20020630:	2103      	movs	r1, #3
20020632:	2006      	movs	r0, #6
20020634:	f004 fa2a 	bl	20024a8c <HAL_PIN_Set>
20020638:	2c02      	cmp	r4, #2
2002063a:	d013      	beq.n	20020664 <board_pinmux_psram_func1_2_4+0xa8>
2002063c:	2c04      	cmp	r4, #4
2002063e:	d025      	beq.n	2002068c <board_pinmux_psram_func1_2_4+0xd0>
20020640:	2c01      	cmp	r4, #1
20020642:	d12c      	bne.n	2002069e <board_pinmux_psram_func1_2_4+0xe2>
20020644:	2106      	movs	r1, #6
20020646:	4623      	mov	r3, r4
20020648:	2210      	movs	r2, #16
2002064a:	200d      	movs	r0, #13
2002064c:	f004 fa1e 	bl	20024a8c <HAL_PIN_Set>
20020650:	4621      	mov	r1, r4
20020652:	4620      	mov	r0, r4
20020654:	f004 fb5e 	bl	20024d14 <HAL_PIN_Set_Analog>
20020658:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002065c:	2101      	movs	r1, #1
2002065e:	2007      	movs	r0, #7
20020660:	f004 bb58 	b.w	20024d14 <HAL_PIN_Set_Analog>
20020664:	2301      	movs	r3, #1
20020666:	2210      	movs	r2, #16
20020668:	2104      	movs	r1, #4
2002066a:	4618      	mov	r0, r3
2002066c:	f004 fa0e 	bl	20024a8c <HAL_PIN_Set>
20020670:	2301      	movs	r3, #1
20020672:	2210      	movs	r2, #16
20020674:	2105      	movs	r1, #5
20020676:	200d      	movs	r0, #13
20020678:	f004 fa08 	bl	20024a8c <HAL_PIN_Set>
2002067c:	4621      	mov	r1, r4
2002067e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020682:	2301      	movs	r3, #1
20020684:	2200      	movs	r2, #0
20020686:	2007      	movs	r0, #7
20020688:	f004 ba00 	b.w	20024a8c <HAL_PIN_Set>
2002068c:	2106      	movs	r1, #6
2002068e:	2301      	movs	r3, #1
20020690:	2200      	movs	r2, #0
20020692:	200d      	movs	r0, #13
20020694:	f004 f9fa 	bl	20024a8c <HAL_PIN_Set>
20020698:	2101      	movs	r1, #1
2002069a:	4608      	mov	r0, r1
2002069c:	e7da      	b.n	20020654 <board_pinmux_psram_func1_2_4+0x98>
2002069e:	bd10      	pop	{r4, pc}

200206a0 <board_pinmux_psram_func3>:
200206a0:	b508      	push	{r3, lr}
200206a2:	2301      	movs	r3, #1
200206a4:	2200      	movs	r2, #0
200206a6:	4619      	mov	r1, r3
200206a8:	200a      	movs	r0, #10
200206aa:	f004 f9ef 	bl	20024a8c <HAL_PIN_Set>
200206ae:	2301      	movs	r3, #1
200206b0:	2200      	movs	r2, #0
200206b2:	2103      	movs	r1, #3
200206b4:	2009      	movs	r0, #9
200206b6:	f004 f9e9 	bl	20024a8c <HAL_PIN_Set>
200206ba:	2301      	movs	r3, #1
200206bc:	2210      	movs	r2, #16
200206be:	2109      	movs	r1, #9
200206c0:	2006      	movs	r0, #6
200206c2:	f004 f9e3 	bl	20024a8c <HAL_PIN_Set>
200206c6:	2301      	movs	r3, #1
200206c8:	2210      	movs	r2, #16
200206ca:	210a      	movs	r1, #10
200206cc:	2008      	movs	r0, #8
200206ce:	f004 f9dd 	bl	20024a8c <HAL_PIN_Set>
200206d2:	2301      	movs	r3, #1
200206d4:	2230      	movs	r2, #48	@ 0x30
200206d6:	210b      	movs	r1, #11
200206d8:	2007      	movs	r0, #7
200206da:	f004 f9d7 	bl	20024a8c <HAL_PIN_Set>
200206de:	2301      	movs	r3, #1
200206e0:	2230      	movs	r2, #48	@ 0x30
200206e2:	210c      	movs	r1, #12
200206e4:	200b      	movs	r0, #11
200206e6:	f004 f9d1 	bl	20024a8c <HAL_PIN_Set>
200206ea:	2101      	movs	r1, #1
200206ec:	4608      	mov	r0, r1
200206ee:	f004 fb11 	bl	20024d14 <HAL_PIN_Set_Analog>
200206f2:	2101      	movs	r1, #1
200206f4:	2002      	movs	r0, #2
200206f6:	f004 fb0d 	bl	20024d14 <HAL_PIN_Set_Analog>
200206fa:	2101      	movs	r1, #1
200206fc:	2003      	movs	r0, #3
200206fe:	f004 fb09 	bl	20024d14 <HAL_PIN_Set_Analog>
20020702:	2101      	movs	r1, #1
20020704:	2004      	movs	r0, #4
20020706:	f004 fb05 	bl	20024d14 <HAL_PIN_Set_Analog>
2002070a:	2101      	movs	r1, #1
2002070c:	2005      	movs	r0, #5
2002070e:	f004 fb01 	bl	20024d14 <HAL_PIN_Set_Analog>
20020712:	2101      	movs	r1, #1
20020714:	200c      	movs	r0, #12
20020716:	f004 fafd 	bl	20024d14 <HAL_PIN_Set_Analog>
2002071a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002071e:	2101      	movs	r1, #1
20020720:	200d      	movs	r0, #13
20020722:	f004 baf7 	b.w	20024d14 <HAL_PIN_Set_Analog>

20020726 <bootloader_switch_clock>:
20020726:	2102      	movs	r1, #2
20020728:	2004      	movs	r0, #4
2002072a:	f004 bc25 	b.w	20024f78 <HAL_RCC_HCPU_ClockSelect>
	...

20020730 <boot_psram_init>:
20020730:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20020734:	2400      	movs	r4, #0
20020736:	b08a      	sub	sp, #40	@ 0x28
20020738:	4605      	mov	r5, r0
2002073a:	2234      	movs	r2, #52	@ 0x34
2002073c:	4621      	mov	r1, r4
2002073e:	4863      	ldr	r0, [pc, #396]	@ (200208cc <boot_psram_init+0x19c>)
20020740:	f00a f836 	bl	2002a7b0 <memset>
20020744:	4b62      	ldr	r3, [pc, #392]	@ (200208d0 <boot_psram_init+0x1a0>)
20020746:	1ea8      	subs	r0, r5, #2
20020748:	9305      	str	r3, [sp, #20]
2002074a:	f04f 5380 	mov.w	r3, #268435456	@ 0x10000000
2002074e:	9307      	str	r3, [sp, #28]
20020750:	2303      	movs	r3, #3
20020752:	9406      	str	r4, [sp, #24]
20020754:	9309      	str	r3, [sp, #36]	@ 0x24
20020756:	2804      	cmp	r0, #4
20020758:	d804      	bhi.n	20020764 <boot_psram_init+0x34>
2002075a:	e8df f000 	tbb	[pc, r0]
2002075e:	6264      	.short	0x6264
20020760:	5d04      	.short	0x5d04
20020762:	60          	.byte	0x60
20020763:	00          	.byte	0x00
20020764:	e7fe      	b.n	20020764 <boot_psram_init+0x34>
20020766:	2305      	movs	r3, #5
20020768:	9309      	str	r3, [sp, #36]	@ 0x24
2002076a:	2304      	movs	r3, #4
2002076c:	9d09      	ldr	r5, [sp, #36]	@ 0x24
2002076e:	9308      	str	r3, [sp, #32]
20020770:	2d03      	cmp	r5, #3
20020772:	d162      	bne.n	2002083a <boot_psram_init+0x10a>
20020774:	f001 fac8 	bl	20021d08 <BSP_GetFlash1DIV>
20020778:	a905      	add	r1, sp, #20
2002077a:	4602      	mov	r2, r0
2002077c:	4853      	ldr	r0, [pc, #332]	@ (200208cc <boot_psram_init+0x19c>)
2002077e:	f003 ff29 	bl	200245d4 <HAL_OPI_PSRAM_Init>
20020782:	462a      	mov	r2, r5
20020784:	2108      	movs	r1, #8
20020786:	4851      	ldr	r0, [pc, #324]	@ (200208cc <boot_psram_init+0x19c>)
20020788:	f003 fe16 	bl	200243b8 <HAL_MPI_MR_WRITE>
2002078c:	484f      	ldr	r0, [pc, #316]	@ (200208cc <boot_psram_init+0x19c>)
2002078e:	f003 fb2b 	bl	20023de8 <HAL_QSPI_GET_CLK>
20020792:	4b50      	ldr	r3, [pc, #320]	@ (200208d4 <boot_psram_init+0x1a4>)
20020794:	4298      	cmp	r0, r3
20020796:	d948      	bls.n	2002082a <boot_psram_init+0xfa>
20020798:	f103 63a4 	add.w	r3, r3, #85983232	@ 0x5200000
2002079c:	f503 4383 	add.w	r3, r3, #16768	@ 0x4180
200207a0:	4298      	cmp	r0, r3
200207a2:	d944      	bls.n	2002082e <boot_psram_init+0xfe>
200207a4:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
200207a8:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
200207ac:	4298      	cmp	r0, r3
200207ae:	d940      	bls.n	20020832 <boot_psram_init+0x102>
200207b0:	4b49      	ldr	r3, [pc, #292]	@ (200208d8 <boot_psram_init+0x1a8>)
200207b2:	4298      	cmp	r0, r3
200207b4:	d93f      	bls.n	20020836 <boot_psram_init+0x106>
200207b6:	4b49      	ldr	r3, [pc, #292]	@ (200208dc <boot_psram_init+0x1ac>)
200207b8:	4298      	cmp	r0, r3
200207ba:	bf98      	it	ls
200207bc:	2407      	movls	r4, #7
200207be:	2600      	movs	r6, #0
200207c0:	2507      	movs	r5, #7
200207c2:	f04f 0803 	mov.w	r8, #3
200207c6:	0067      	lsls	r7, r4, #1
200207c8:	b2ff      	uxtb	r7, r7
200207ca:	1e7a      	subs	r2, r7, #1
200207cc:	4633      	mov	r3, r6
200207ce:	b252      	sxtb	r2, r2
200207d0:	4629      	mov	r1, r5
200207d2:	483e      	ldr	r0, [pc, #248]	@ (200208cc <boot_psram_init+0x19c>)
200207d4:	e9cd 5502 	strd	r5, r5, [sp, #8]
200207d8:	e9cd 6800 	strd	r6, r8, [sp]
200207dc:	f002 f9bf 	bl	20022b5e <HAL_FLASH_CFG_AHB_RCMD>
200207e0:	4631      	mov	r1, r6
200207e2:	483a      	ldr	r0, [pc, #232]	@ (200208cc <boot_psram_init+0x19c>)
200207e4:	f002 f9b0 	bl	20022b48 <HAL_FLASH_SET_AHB_RCMD>
200207e8:	1e62      	subs	r2, r4, #1
200207ea:	4633      	mov	r3, r6
200207ec:	b252      	sxtb	r2, r2
200207ee:	4629      	mov	r1, r5
200207f0:	4836      	ldr	r0, [pc, #216]	@ (200208cc <boot_psram_init+0x19c>)
200207f2:	e9cd 5502 	strd	r5, r5, [sp, #8]
200207f6:	e9cd 6800 	strd	r6, r8, [sp]
200207fa:	f002 f9d9 	bl	20022bb0 <HAL_FLASH_CFG_AHB_WCMD>
200207fe:	2180      	movs	r1, #128	@ 0x80
20020800:	4832      	ldr	r0, [pc, #200]	@ (200208cc <boot_psram_init+0x19c>)
20020802:	f002 f9c9 	bl	20022b98 <HAL_FLASH_SET_AHB_WCMD>
20020806:	4623      	mov	r3, r4
20020808:	463a      	mov	r2, r7
2002080a:	2101      	movs	r1, #1
2002080c:	482f      	ldr	r0, [pc, #188]	@ (200208cc <boot_psram_init+0x19c>)
2002080e:	f003 fdf7 	bl	20024400 <HAL_MPI_SET_FIXLAT>
20020812:	b00a      	add	sp, #40	@ 0x28
20020814:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20020818:	2302      	movs	r3, #2
2002081a:	9309      	str	r3, [sp, #36]	@ 0x24
2002081c:	e7a6      	b.n	2002076c <boot_psram_init+0x3c>
2002081e:	2306      	movs	r3, #6
20020820:	9309      	str	r3, [sp, #36]	@ 0x24
20020822:	2308      	movs	r3, #8
20020824:	e7a2      	b.n	2002076c <boot_psram_init+0x3c>
20020826:	2310      	movs	r3, #16
20020828:	e7a0      	b.n	2002076c <boot_psram_init+0x3c>
2002082a:	462c      	mov	r4, r5
2002082c:	e7c7      	b.n	200207be <boot_psram_init+0x8e>
2002082e:	2404      	movs	r4, #4
20020830:	e7c5      	b.n	200207be <boot_psram_init+0x8e>
20020832:	2405      	movs	r4, #5
20020834:	e7c3      	b.n	200207be <boot_psram_init+0x8e>
20020836:	2406      	movs	r4, #6
20020838:	e7c1      	b.n	200207be <boot_psram_init+0x8e>
2002083a:	2d05      	cmp	r5, #5
2002083c:	d10d      	bne.n	2002085a <boot_psram_init+0x12a>
2002083e:	f001 fa63 	bl	20021d08 <BSP_GetFlash1DIV>
20020842:	a905      	add	r1, sp, #20
20020844:	4602      	mov	r2, r0
20020846:	4821      	ldr	r0, [pc, #132]	@ (200208cc <boot_psram_init+0x19c>)
20020848:	f003 ff3c 	bl	200246c4 <HAL_LEGACY_PSRAM_Init>
2002084c:	481f      	ldr	r0, [pc, #124]	@ (200208cc <boot_psram_init+0x19c>)
2002084e:	f003 fe49 	bl	200244e4 <HAL_LEGACY_CFG_READ>
20020852:	481e      	ldr	r0, [pc, #120]	@ (200208cc <boot_psram_init+0x19c>)
20020854:	f003 fe61 	bl	2002451a <HAL_LEGACY_CFG_WRITE>
20020858:	e7db      	b.n	20020812 <boot_psram_init+0xe2>
2002085a:	2d06      	cmp	r5, #6
2002085c:	d10d      	bne.n	2002087a <boot_psram_init+0x14a>
2002085e:	f001 fa53 	bl	20021d08 <BSP_GetFlash1DIV>
20020862:	a905      	add	r1, sp, #20
20020864:	4602      	mov	r2, r0
20020866:	4819      	ldr	r0, [pc, #100]	@ (200208cc <boot_psram_init+0x19c>)
20020868:	f003 fff4 	bl	20024854 <HAL_HYPER_PSRAM_Init>
2002086c:	4817      	ldr	r0, [pc, #92]	@ (200208cc <boot_psram_init+0x19c>)
2002086e:	f004 f82b 	bl	200248c8 <HAL_HYPER_CFG_READ>
20020872:	4816      	ldr	r0, [pc, #88]	@ (200208cc <boot_psram_init+0x19c>)
20020874:	f004 f83a 	bl	200248ec <HAL_HYPER_CFG_WRITE>
20020878:	e7cb      	b.n	20020812 <boot_psram_init+0xe2>
2002087a:	f001 fa45 	bl	20021d08 <BSP_GetFlash1DIV>
2002087e:	2500      	movs	r5, #0
20020880:	2403      	movs	r4, #3
20020882:	2701      	movs	r7, #1
20020884:	2602      	movs	r6, #2
20020886:	4602      	mov	r2, r0
20020888:	a905      	add	r1, sp, #20
2002088a:	4810      	ldr	r0, [pc, #64]	@ (200208cc <boot_psram_init+0x19c>)
2002088c:	f003 fd3e 	bl	2002430c <HAL_SPI_PSRAM_Init>
20020890:	462b      	mov	r3, r5
20020892:	2206      	movs	r2, #6
20020894:	4621      	mov	r1, r4
20020896:	e9cd 4702 	strd	r4, r7, [sp, #8]
2002089a:	e9cd 5600 	strd	r5, r6, [sp]
2002089e:	480b      	ldr	r0, [pc, #44]	@ (200208cc <boot_psram_init+0x19c>)
200208a0:	f002 f95d 	bl	20022b5e <HAL_FLASH_CFG_AHB_RCMD>
200208a4:	21eb      	movs	r1, #235	@ 0xeb
200208a6:	4809      	ldr	r0, [pc, #36]	@ (200208cc <boot_psram_init+0x19c>)
200208a8:	f002 f94e 	bl	20022b48 <HAL_FLASH_SET_AHB_RCMD>
200208ac:	4621      	mov	r1, r4
200208ae:	462b      	mov	r3, r5
200208b0:	462a      	mov	r2, r5
200208b2:	e9cd 4702 	strd	r4, r7, [sp, #8]
200208b6:	e9cd 5600 	strd	r5, r6, [sp]
200208ba:	4804      	ldr	r0, [pc, #16]	@ (200208cc <boot_psram_init+0x19c>)
200208bc:	f002 f978 	bl	20022bb0 <HAL_FLASH_CFG_AHB_WCMD>
200208c0:	2138      	movs	r1, #56	@ 0x38
200208c2:	4802      	ldr	r0, [pc, #8]	@ (200208cc <boot_psram_init+0x19c>)
200208c4:	f002 f968 	bl	20022b98 <HAL_FLASH_SET_AHB_WCMD>
200208c8:	e7a3      	b.n	20020812 <boot_psram_init+0xe2>
200208ca:	bf00      	nop
200208cc:	2004497c 	.word	0x2004497c
200208d0:	50041000 	.word	0x50041000
200208d4:	07de2901 	.word	0x07de2901
200208d8:	13c9eb01 	.word	0x13c9eb01
200208dc:	17d78401 	.word	0x17d78401

200208e0 <board_init_psram>:
200208e0:	4b15      	ldr	r3, [pc, #84]	@ (20020938 <board_init_psram+0x58>)
200208e2:	b510      	push	{r4, lr}
200208e4:	685c      	ldr	r4, [r3, #4]
200208e6:	f3c4 2402 	ubfx	r4, r4, #8, #3
200208ea:	1ea3      	subs	r3, r4, #2
200208ec:	2b04      	cmp	r3, #4
200208ee:	d821      	bhi.n	20020934 <board_init_psram+0x54>
200208f0:	e8df f003 	tbb	[pc, r3]
200208f4:	03151b1d 	.word	0x03151b1d
200208f8:	19          	.byte	0x19
200208f9:	00          	.byte	0x00
200208fa:	f7ff fed1 	bl	200206a0 <board_pinmux_psram_func3>
200208fe:	2201      	movs	r2, #1
20020900:	2000      	movs	r0, #0
20020902:	4611      	mov	r1, r2
20020904:	f00b fc98 	bl	2002c238 <HAL_PMU_ConfigPeriLdo>
20020908:	2001      	movs	r0, #1
2002090a:	f7ff ff0c 	bl	20020726 <bootloader_switch_clock>
2002090e:	2002      	movs	r0, #2
20020910:	f001 fa06 	bl	20021d20 <BSP_SetFlash1DIV>
20020914:	4620      	mov	r0, r4
20020916:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002091a:	f7ff bf09 	b.w	20020730 <boot_psram_init>
2002091e:	2002      	movs	r0, #2
20020920:	f7ff fe4c 	bl	200205bc <board_pinmux_psram_func1_2_4>
20020924:	e7eb      	b.n	200208fe <board_init_psram+0x1e>
20020926:	2004      	movs	r0, #4
20020928:	e7fa      	b.n	20020920 <board_init_psram+0x40>
2002092a:	2001      	movs	r0, #1
2002092c:	e7f8      	b.n	20020920 <board_init_psram+0x40>
2002092e:	f7ff fdf8 	bl	20020522 <board_pinmux_psram_func0>
20020932:	e7e4      	b.n	200208fe <board_init_psram+0x1e>
20020934:	bd10      	pop	{r4, pc}
20020936:	bf00      	nop
20020938:	5000b000 	.word	0x5000b000

2002093c <erase_nor>:
2002093c:	4b15      	ldr	r3, [pc, #84]	@ (20020994 <erase_nor+0x58>)
2002093e:	b570      	push	{r4, r5, r6, lr}
20020940:	f103 0648 	add.w	r6, r3, #72	@ 0x48
20020944:	f1b0 5f90 	cmp.w	r0, #301989888	@ 0x12000000
20020948:	bf38      	it	cc
2002094a:	461e      	movcc	r6, r3
2002094c:	6933      	ldr	r3, [r6, #16]
2002094e:	460c      	mov	r4, r1
20020950:	4283      	cmp	r3, r0
20020952:	d901      	bls.n	20020958 <erase_nor+0x1c>
20020954:	2001      	movs	r0, #1
20020956:	bd70      	pop	{r4, r5, r6, pc}
20020958:	6972      	ldr	r2, [r6, #20]
2002095a:	441a      	add	r2, r3
2002095c:	4282      	cmp	r2, r0
2002095e:	d3f9      	bcc.n	20020954 <erase_nor+0x18>
20020960:	1ac0      	subs	r0, r0, r3
20020962:	f3c0 030b 	ubfx	r3, r0, #0, #12
20020966:	b97b      	cbnz	r3, 20020988 <erase_nor+0x4c>
20020968:	f3c1 030b 	ubfx	r3, r1, #0, #12
2002096c:	b97b      	cbnz	r3, 2002098e <erase_nor+0x52>
2002096e:	1845      	adds	r5, r0, r1
20020970:	1b29      	subs	r1, r5, r4
20020972:	b90c      	cbnz	r4, 20020978 <erase_nor+0x3c>
20020974:	4620      	mov	r0, r4
20020976:	e7ee      	b.n	20020956 <erase_nor+0x1a>
20020978:	4630      	mov	r0, r6
2002097a:	f003 f9e9 	bl	20023d50 <HAL_QSPIEX_SECT_ERASE>
2002097e:	2800      	cmp	r0, #0
20020980:	d1e8      	bne.n	20020954 <erase_nor+0x18>
20020982:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
20020986:	e7f3      	b.n	20020970 <erase_nor+0x34>
20020988:	f04f 30ff 	mov.w	r0, #4294967295
2002098c:	e7e3      	b.n	20020956 <erase_nor+0x1a>
2002098e:	f06f 0001 	mvn.w	r0, #1
20020992:	e7e0      	b.n	20020956 <erase_nor+0x1a>
20020994:	20046ed0 	.word	0x20046ed0

20020998 <write_nor>:
20020998:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002099c:	4b20      	ldr	r3, [pc, #128]	@ (20020a20 <write_nor+0x88>)
2002099e:	460f      	mov	r7, r1
200209a0:	f103 0848 	add.w	r8, r3, #72	@ 0x48
200209a4:	f1b0 5f90 	cmp.w	r0, #301989888	@ 0x12000000
200209a8:	bf38      	it	cc
200209aa:	4698      	movcc	r8, r3
200209ac:	f8d8 5010 	ldr.w	r5, [r8, #16]
200209b0:	4616      	mov	r6, r2
200209b2:	4285      	cmp	r5, r0
200209b4:	d902      	bls.n	200209bc <write_nor+0x24>
200209b6:	2000      	movs	r0, #0
200209b8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
200209bc:	f8d8 2014 	ldr.w	r2, [r8, #20]
200209c0:	442a      	add	r2, r5
200209c2:	4282      	cmp	r2, r0
200209c4:	d3f7      	bcc.n	200209b6 <write_nor+0x1e>
200209c6:	1b45      	subs	r5, r0, r5
200209c8:	f015 04ff 	ands.w	r4, r5, #255	@ 0xff
200209cc:	d012      	beq.n	200209f4 <write_nor+0x5c>
200209ce:	f5c4 7480 	rsb	r4, r4, #256	@ 0x100
200209d2:	42b4      	cmp	r4, r6
200209d4:	bf28      	it	cs
200209d6:	4634      	movcs	r4, r6
200209d8:	460a      	mov	r2, r1
200209da:	4623      	mov	r3, r4
200209dc:	4629      	mov	r1, r5
200209de:	4640      	mov	r0, r8
200209e0:	f003 f8d1 	bl	20023b86 <HAL_QSPIEX_WRITE_PAGE>
200209e4:	4284      	cmp	r4, r0
200209e6:	d1e6      	bne.n	200209b6 <write_nor+0x1e>
200209e8:	4425      	add	r5, r4
200209ea:	4427      	add	r7, r4
200209ec:	1b34      	subs	r4, r6, r4
200209ee:	b91c      	cbnz	r4, 200209f8 <write_nor+0x60>
200209f0:	4630      	mov	r0, r6
200209f2:	e7e1      	b.n	200209b8 <write_nor+0x20>
200209f4:	4634      	mov	r4, r6
200209f6:	e7fa      	b.n	200209ee <write_nor+0x56>
200209f8:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
200209fc:	46a1      	mov	r9, r4
200209fe:	bf28      	it	cs
20020a00:	f44f 7980 	movcs.w	r9, #256	@ 0x100
20020a04:	463a      	mov	r2, r7
20020a06:	464b      	mov	r3, r9
20020a08:	4629      	mov	r1, r5
20020a0a:	4640      	mov	r0, r8
20020a0c:	f003 f8bb 	bl	20023b86 <HAL_QSPIEX_WRITE_PAGE>
20020a10:	4581      	cmp	r9, r0
20020a12:	d1d0      	bne.n	200209b6 <write_nor+0x1e>
20020a14:	444d      	add	r5, r9
20020a16:	444f      	add	r7, r9
20020a18:	eba4 0409 	sub.w	r4, r4, r9
20020a1c:	e7e7      	b.n	200209ee <write_nor+0x56>
20020a1e:	bf00      	nop
20020a20:	20046ed0 	.word	0x20046ed0

20020a24 <read_nor>:
20020a24:	460b      	mov	r3, r1
20020a26:	b510      	push	{r4, lr}
20020a28:	4614      	mov	r4, r2
20020a2a:	4601      	mov	r1, r0
20020a2c:	4618      	mov	r0, r3
20020a2e:	f009 fed9 	bl	2002a7e4 <memcpy>
20020a32:	4620      	mov	r0, r4
20020a34:	bd10      	pop	{r4, pc}
	...

20020a38 <read_nand>:
20020a38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020a3c:	2600      	movs	r6, #0
20020a3e:	460f      	mov	r7, r1
20020a40:	4615      	mov	r5, r2
20020a42:	46b0      	mov	r8, r6
20020a44:	4b19      	ldr	r3, [pc, #100]	@ (20020aac <read_nand+0x74>)
20020a46:	f8df a068 	ldr.w	sl, [pc, #104]	@ 20020ab0 <read_nand+0x78>
20020a4a:	681b      	ldr	r3, [r3, #0]
20020a4c:	f8df b064 	ldr.w	fp, [pc, #100]	@ 20020ab4 <read_nand+0x7c>
20020a50:	691b      	ldr	r3, [r3, #16]
20020a52:	4604      	mov	r4, r0
20020a54:	4283      	cmp	r3, r0
20020a56:	b085      	sub	sp, #20
20020a58:	bf98      	it	ls
20020a5a:	1ac4      	subls	r4, r0, r3
20020a5c:	b91d      	cbnz	r5, 20020a66 <read_nand+0x2e>
20020a5e:	4630      	mov	r0, r6
20020a60:	b005      	add	sp, #20
20020a62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20020a66:	f8da 1000 	ldr.w	r1, [sl]
20020a6a:	f8db 0000 	ldr.w	r0, [fp]
20020a6e:	42a9      	cmp	r1, r5
20020a70:	fbb0 fcf1 	udiv	ip, r0, r1
20020a74:	4689      	mov	r9, r1
20020a76:	f101 32ff 	add.w	r2, r1, #4294967295
20020a7a:	bf28      	it	cs
20020a7c:	46a9      	movcs	r9, r5
20020a7e:	fbb4 f1f1 	udiv	r1, r4, r1
20020a82:	f10c 3cff 	add.w	ip, ip, #4294967295
20020a86:	fbb4 f0f0 	udiv	r0, r4, r0
20020a8a:	e9cd 8801 	strd	r8, r8, [sp, #4]
20020a8e:	f8cd 9000 	str.w	r9, [sp]
20020a92:	19bb      	adds	r3, r7, r6
20020a94:	4022      	ands	r2, r4
20020a96:	ea0c 0101 	and.w	r1, ip, r1
20020a9a:	f004 fe83 	bl	200257a4 <bbm_read_page>
20020a9e:	4548      	cmp	r0, r9
20020aa0:	d1dd      	bne.n	20020a5e <read_nand+0x26>
20020aa2:	4406      	add	r6, r0
20020aa4:	1a2d      	subs	r5, r5, r0
20020aa6:	4404      	add	r4, r0
20020aa8:	e7d8      	b.n	20020a5c <read_nand+0x24>
20020aaa:	bf00      	nop
20020aac:	20046cb8 	.word	0x20046cb8
20020ab0:	20042c04 	.word	0x20042c04
20020ab4:	20042c00 	.word	0x20042c00

20020ab8 <read_sdnand>:
20020ab8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20020abc:	f100 461e 	add.w	r6, r0, #2650800128	@ 0x9e000000
20020ac0:	460d      	mov	r5, r1
20020ac2:	4614      	mov	r4, r2
20020ac4:	4617      	mov	r7, r2
20020ac6:	46b0      	mov	r8, r6
20020ac8:	eb02 0901 	add.w	r9, r2, r1
20020acc:	f5b7 7f00 	cmp.w	r7, #512	@ 0x200
20020ad0:	eba9 0107 	sub.w	r1, r9, r7
20020ad4:	d218      	bcs.n	20020b08 <read_sdnand+0x50>
20020ad6:	f3c4 0708 	ubfx	r7, r4, #0, #9
20020ada:	b197      	cbz	r7, 20020b02 <read_sdnand+0x4a>
20020adc:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020ae0:	f020 0001 	bic.w	r0, r0, #1
20020ae4:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020ae8:	490c      	ldr	r1, [pc, #48]	@ (20020b1c <read_sdnand+0x64>)
20020aea:	4430      	add	r0, r6
20020aec:	f000 fff0 	bl	20021ad0 <sd_read_data>
20020af0:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020af4:	f020 0001 	bic.w	r0, r0, #1
20020af8:	463a      	mov	r2, r7
20020afa:	4908      	ldr	r1, [pc, #32]	@ (20020b1c <read_sdnand+0x64>)
20020afc:	4428      	add	r0, r5
20020afe:	f009 fe71 	bl	2002a7e4 <memcpy>
20020b02:	4620      	mov	r0, r4
20020b04:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b08:	4640      	mov	r0, r8
20020b0a:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b0e:	f000 ffdf 	bl	20021ad0 <sd_read_data>
20020b12:	f5a7 7700 	sub.w	r7, r7, #512	@ 0x200
20020b16:	f508 7800 	add.w	r8, r8, #512	@ 0x200
20020b1a:	e7d7      	b.n	20020acc <read_sdnand+0x14>
20020b1c:	20046ab4 	.word	0x20046ab4

20020b20 <read_sdemmc>:
20020b20:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20020b24:	f100 461e 	add.w	r6, r0, #2650800128	@ 0x9e000000
20020b28:	460d      	mov	r5, r1
20020b2a:	4614      	mov	r4, r2
20020b2c:	4617      	mov	r7, r2
20020b2e:	46b0      	mov	r8, r6
20020b30:	eb02 0901 	add.w	r9, r2, r1
20020b34:	f5b7 7f00 	cmp.w	r7, #512	@ 0x200
20020b38:	eba9 0107 	sub.w	r1, r9, r7
20020b3c:	d218      	bcs.n	20020b70 <read_sdemmc+0x50>
20020b3e:	f3c4 0708 	ubfx	r7, r4, #0, #9
20020b42:	b197      	cbz	r7, 20020b6a <read_sdemmc+0x4a>
20020b44:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b48:	f020 0001 	bic.w	r0, r0, #1
20020b4c:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b50:	490c      	ldr	r1, [pc, #48]	@ (20020b84 <read_sdemmc+0x64>)
20020b52:	4430      	add	r0, r6
20020b54:	f000 fda6 	bl	200216a4 <emmc_read_data>
20020b58:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b5c:	f020 0001 	bic.w	r0, r0, #1
20020b60:	463a      	mov	r2, r7
20020b62:	4908      	ldr	r1, [pc, #32]	@ (20020b84 <read_sdemmc+0x64>)
20020b64:	4428      	add	r0, r5
20020b66:	f009 fe3d 	bl	2002a7e4 <memcpy>
20020b6a:	4620      	mov	r0, r4
20020b6c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b70:	4640      	mov	r0, r8
20020b72:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b76:	f000 fd95 	bl	200216a4 <emmc_read_data>
20020b7a:	f5a7 7700 	sub.w	r7, r7, #512	@ 0x200
20020b7e:	f508 7800 	add.w	r8, r8, #512	@ 0x200
20020b82:	e7d7      	b.n	20020b34 <read_sdemmc+0x14>
20020b84:	20046ab4 	.word	0x20046ab4

20020b88 <port_read_page>:
20020b88:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020b8c:	4615      	mov	r5, r2
20020b8e:	f8df 90e8 	ldr.w	r9, [pc, #232]	@ 20020c78 <port_read_page+0xf0>
20020b92:	460e      	mov	r6, r1
20020b94:	f8d9 7000 	ldr.w	r7, [r9]
20020b98:	461a      	mov	r2, r3
20020b9a:	e9dd 3c09 	ldrd	r3, ip, [sp, #36]	@ 0x24
20020b9e:	18e9      	adds	r1, r5, r3
20020ba0:	428f      	cmp	r7, r1
20020ba2:	f8dd e02c 	ldr.w	lr, [sp, #44]	@ 0x2c
20020ba6:	d200      	bcs.n	20020baa <port_read_page+0x22>
20020ba8:	e7fe      	b.n	20020ba8 <port_read_page+0x20>
20020baa:	4930      	ldr	r1, [pc, #192]	@ (20020c6c <port_read_page+0xe4>)
20020bac:	2b00      	cmp	r3, #0
20020bae:	6809      	ldr	r1, [r1, #0]
20020bb0:	dd15      	ble.n	20020bde <port_read_page+0x56>
20020bb2:	f002 041f 	and.w	r4, r2, #31
20020bb6:	441c      	add	r4, r3
20020bb8:	f3bf 8f4f 	dsb	sy
20020bbc:	4690      	mov	r8, r2
20020bbe:	f8df a0bc 	ldr.w	sl, [pc, #188]	@ 20020c7c <port_read_page+0xf4>
20020bc2:	4414      	add	r4, r2
20020bc4:	f8ca 825c 	str.w	r8, [sl, #604]	@ 0x25c
20020bc8:	f108 0820 	add.w	r8, r8, #32
20020bcc:	eba4 0b08 	sub.w	fp, r4, r8
20020bd0:	f1bb 0f00 	cmp.w	fp, #0
20020bd4:	dcf6      	bgt.n	20020bc4 <port_read_page+0x3c>
20020bd6:	f3bf 8f4f 	dsb	sy
20020bda:	f3bf 8f6f 	isb	sy
20020bde:	f8d9 4000 	ldr.w	r4, [r9]
20020be2:	f104 0980 	add.w	r9, r4, #128	@ 0x80
20020be6:	f1b9 0f00 	cmp.w	r9, #0
20020bea:	dd15      	ble.n	20020c18 <port_read_page+0x90>
20020bec:	4c20      	ldr	r4, [pc, #128]	@ (20020c70 <port_read_page+0xe8>)
20020bee:	6da4      	ldr	r4, [r4, #88]	@ 0x58
20020bf0:	f004 081f 	and.w	r8, r4, #31
20020bf4:	44c8      	add	r8, r9
20020bf6:	f3bf 8f4f 	dsb	sy
20020bfa:	f8df a080 	ldr.w	sl, [pc, #128]	@ 20020c7c <port_read_page+0xf4>
20020bfe:	44a0      	add	r8, r4
20020c00:	f8ca 425c 	str.w	r4, [sl, #604]	@ 0x25c
20020c04:	3420      	adds	r4, #32
20020c06:	eba8 0904 	sub.w	r9, r8, r4
20020c0a:	f1b9 0f00 	cmp.w	r9, #0
20020c0e:	dcf7      	bgt.n	20020c00 <port_read_page+0x78>
20020c10:	f3bf 8f4f 	dsb	sy
20020c14:	f3bf 8f6f 	isb	sy
20020c18:	07c4      	lsls	r4, r0, #31
20020c1a:	d51b      	bpl.n	20020c54 <port_read_page+0xcc>
20020c1c:	4c14      	ldr	r4, [pc, #80]	@ (20020c70 <port_read_page+0xe8>)
20020c1e:	f894 806f 	ldrb.w	r8, [r4, #111]	@ 0x6f
20020c22:	f1b8 0f00 	cmp.w	r8, #0
20020c26:	d015      	beq.n	20020c54 <port_read_page+0xcc>
20020c28:	6da4      	ldr	r4, [r4, #88]	@ 0x58
20020c2a:	f504 5880 	add.w	r8, r4, #4096	@ 0x1000
20020c2e:	f004 041f 	and.w	r4, r4, #31
20020c32:	f504 6408 	add.w	r4, r4, #2176	@ 0x880
20020c36:	f3bf 8f4f 	dsb	sy
20020c3a:	f8df 9040 	ldr.w	r9, [pc, #64]	@ 20020c7c <port_read_page+0xf4>
20020c3e:	3c20      	subs	r4, #32
20020c40:	2c00      	cmp	r4, #0
20020c42:	f8c9 825c 	str.w	r8, [r9, #604]	@ 0x25c
20020c46:	f108 0820 	add.w	r8, r8, #32
20020c4a:	dcf8      	bgt.n	20020c3e <port_read_page+0xb6>
20020c4c:	f3bf 8f4f 	dsb	sy
20020c50:	f3bf 8f6f 	isb	sy
20020c54:	fb07 5506 	mla	r5, r7, r6, r5
20020c58:	e9cd ce09 	strd	ip, lr, [sp, #36]	@ 0x24
20020c5c:	fb01 5100 	mla	r1, r1, r0, r5
20020c60:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020c64:	4803      	ldr	r0, [pc, #12]	@ (20020c74 <port_read_page+0xec>)
20020c66:	f002 be6d 	b.w	20023944 <HAL_NAND_READ_WITHOOB>
20020c6a:	bf00      	nop
20020c6c:	20042c00 	.word	0x20042c00
20020c70:	20046ed0 	.word	0x20046ed0
20020c74:	20046f18 	.word	0x20046f18
20020c78:	20042c04 	.word	0x20042c04
20020c7c:	e000ed00 	.word	0xe000ed00

20020c80 <bbm_get_bb>:
20020c80:	4b1c      	ldr	r3, [pc, #112]	@ (20020cf4 <bbm_get_bb+0x74>)
20020c82:	4601      	mov	r1, r0
20020c84:	6818      	ldr	r0, [r3, #0]
20020c86:	b410      	push	{r4}
20020c88:	3080      	adds	r0, #128	@ 0x80
20020c8a:	2800      	cmp	r0, #0
20020c8c:	dd12      	ble.n	20020cb4 <bbm_get_bb+0x34>
20020c8e:	4b1a      	ldr	r3, [pc, #104]	@ (20020cf8 <bbm_get_bb+0x78>)
20020c90:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
20020c92:	f003 021f 	and.w	r2, r3, #31
20020c96:	4402      	add	r2, r0
20020c98:	f3bf 8f4f 	dsb	sy
20020c9c:	4c17      	ldr	r4, [pc, #92]	@ (20020cfc <bbm_get_bb+0x7c>)
20020c9e:	441a      	add	r2, r3
20020ca0:	f8c4 325c 	str.w	r3, [r4, #604]	@ 0x25c
20020ca4:	3320      	adds	r3, #32
20020ca6:	1ad0      	subs	r0, r2, r3
20020ca8:	2800      	cmp	r0, #0
20020caa:	dcf9      	bgt.n	20020ca0 <bbm_get_bb+0x20>
20020cac:	f3bf 8f4f 	dsb	sy
20020cb0:	f3bf 8f6f 	isb	sy
20020cb4:	07cb      	lsls	r3, r1, #31
20020cb6:	d518      	bpl.n	20020cea <bbm_get_bb+0x6a>
20020cb8:	4b0f      	ldr	r3, [pc, #60]	@ (20020cf8 <bbm_get_bb+0x78>)
20020cba:	f893 206f 	ldrb.w	r2, [r3, #111]	@ 0x6f
20020cbe:	b1a2      	cbz	r2, 20020cea <bbm_get_bb+0x6a>
20020cc0:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
20020cc2:	f503 5280 	add.w	r2, r3, #4096	@ 0x1000
20020cc6:	f003 031f 	and.w	r3, r3, #31
20020cca:	f503 6308 	add.w	r3, r3, #2176	@ 0x880
20020cce:	f3bf 8f4f 	dsb	sy
20020cd2:	480a      	ldr	r0, [pc, #40]	@ (20020cfc <bbm_get_bb+0x7c>)
20020cd4:	3b20      	subs	r3, #32
20020cd6:	2b00      	cmp	r3, #0
20020cd8:	f8c0 225c 	str.w	r2, [r0, #604]	@ 0x25c
20020cdc:	f102 0220 	add.w	r2, r2, #32
20020ce0:	dcf8      	bgt.n	20020cd4 <bbm_get_bb+0x54>
20020ce2:	f3bf 8f4f 	dsb	sy
20020ce6:	f3bf 8f6f 	isb	sy
20020cea:	4805      	ldr	r0, [pc, #20]	@ (20020d00 <bbm_get_bb+0x80>)
20020cec:	f85d 4b04 	ldr.w	r4, [sp], #4
20020cf0:	f002 bf28 	b.w	20023b44 <HAL_NAND_GET_BADBLK>
20020cf4:	20042c04 	.word	0x20042c04
20020cf8:	20046ed0 	.word	0x20046ed0
20020cfc:	e000ed00 	.word	0xe000ed00
20020d00:	20046f18 	.word	0x20046f18

20020d04 <dfu_flash_init>:
20020d04:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020d08:	b08c      	sub	sp, #48	@ 0x30
20020d0a:	f001 feeb 	bl	20022ae4 <HAL_HPAON_EnableXT48>
20020d0e:	2101      	movs	r1, #1
20020d10:	2000      	movs	r0, #0
20020d12:	f004 f931 	bl	20024f78 <HAL_RCC_HCPU_ClockSelect>
20020d16:	2101      	movs	r1, #1
20020d18:	200c      	movs	r0, #12
20020d1a:	f004 f92d 	bl	20024f78 <HAL_RCC_HCPU_ClockSelect>
20020d1e:	2001      	movs	r0, #1
20020d20:	f004 f828 	bl	20024d74 <HAL_PMU_EnableDLL>
20020d24:	4f98      	ldr	r7, [pc, #608]	@ (20020f88 <dfu_flash_init+0x284>)
20020d26:	2090      	movs	r0, #144	@ 0x90
20020d28:	f004 fa88 	bl	2002523c <HAL_RCC_HCPU_ConfigHCLK>
20020d2c:	2000      	movs	r0, #0
20020d2e:	f001 f8ca 	bl	20021ec6 <HAL_Delay_us>
20020d32:	683b      	ldr	r3, [r7, #0]
20020d34:	4d95      	ldr	r5, [pc, #596]	@ (20020f8c <dfu_flash_init+0x288>)
20020d36:	3b01      	subs	r3, #1
20020d38:	2b05      	cmp	r3, #5
20020d3a:	f200 8115 	bhi.w	20020f68 <dfu_flash_init+0x264>
20020d3e:	e8df f013 	tbh	[pc, r3, lsl #1]
20020d42:	0006      	.short	0x0006
20020d44:	00790006 	.word	0x00790006
20020d48:	00f00079 	.word	0x00f00079
20020d4c:	0104      	.short	0x0104
20020d4e:	4890      	ldr	r0, [pc, #576]	@ (20020f90 <dfu_flash_init+0x28c>)
20020d50:	f004 f8da 	bl	20024f08 <HAL_RCC_HCPU_EnableDLL2>
20020d54:	4c8f      	ldr	r4, [pc, #572]	@ (20020f94 <dfu_flash_init+0x290>)
20020d56:	2006      	movs	r0, #6
20020d58:	f000 ffe2 	bl	20021d20 <BSP_SetFlash1DIV>
20020d5c:	ae07      	add	r6, sp, #28
20020d5e:	2102      	movs	r1, #2
20020d60:	2004      	movs	r0, #4
20020d62:	f004 f909 	bl	20024f78 <HAL_RCC_HCPU_ClockSelect>
20020d66:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020d68:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020d6a:	f854 3b04 	ldr.w	r3, [r4], #4
20020d6e:	6033      	str	r3, [r6, #0]
20020d70:	ae03      	add	r6, sp, #12
20020d72:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020d76:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020d7a:	2301      	movs	r3, #1
20020d7c:	4c86      	ldr	r4, [pc, #536]	@ (20020f98 <dfu_flash_init+0x294>)
20020d7e:	f884 3039 	strb.w	r3, [r4, #57]	@ 0x39
20020d82:	2300      	movs	r3, #0
20020d84:	9308      	str	r3, [sp, #32]
20020d86:	683b      	ldr	r3, [r7, #0]
20020d88:	2b01      	cmp	r3, #1
20020d8a:	d14e      	bne.n	20020e2a <dfu_flash_init+0x126>
20020d8c:	f7ff fac0 	bl	20020310 <board_pinmux_mpi1_puya_base>
20020d90:	f000 ffba 	bl	20021d08 <BSP_GetFlash1DIV>
20020d94:	4633      	mov	r3, r6
20020d96:	9000      	str	r0, [sp, #0]
20020d98:	4a80      	ldr	r2, [pc, #512]	@ (20020f9c <dfu_flash_init+0x298>)
20020d9a:	487f      	ldr	r0, [pc, #508]	@ (20020f98 <dfu_flash_init+0x294>)
20020d9c:	a907      	add	r1, sp, #28
20020d9e:	f003 f8a9 	bl	20023ef4 <HAL_FLASH_Init>
20020da2:	683e      	ldr	r6, [r7, #0]
20020da4:	2e01      	cmp	r6, #1
20020da6:	d10d      	bne.n	20020dc4 <dfu_flash_init+0xc0>
20020da8:	6b60      	ldr	r0, [r4, #52]	@ 0x34
20020daa:	4b7d      	ldr	r3, [pc, #500]	@ (20020fa0 <dfu_flash_init+0x29c>)
20020dac:	1ac3      	subs	r3, r0, r3
20020dae:	4258      	negs	r0, r3
20020db0:	4158      	adcs	r0, r3
20020db2:	f7ff face 	bl	20020352 <board_pinmux_mpi1_puya_ext>
20020db6:	4631      	mov	r1, r6
20020db8:	4877      	ldr	r0, [pc, #476]	@ (20020f98 <dfu_flash_init+0x294>)
20020dba:	f002 faeb 	bl	20023394 <HAL_FLASH_SET_QUAL_SPI>
20020dbe:	2302      	movs	r3, #2
20020dc0:	f884 3020 	strb.w	r3, [r4, #32]
20020dc4:	4b77      	ldr	r3, [pc, #476]	@ (20020fa4 <dfu_flash_init+0x2a0>)
20020dc6:	4a78      	ldr	r2, [pc, #480]	@ (20020fa8 <dfu_flash_init+0x2a4>)
20020dc8:	602b      	str	r3, [r5, #0]
20020dca:	4b78      	ldr	r3, [pc, #480]	@ (20020fac <dfu_flash_init+0x2a8>)
20020dcc:	601a      	str	r2, [r3, #0]
20020dce:	4b78      	ldr	r3, [pc, #480]	@ (20020fb0 <dfu_flash_init+0x2ac>)
20020dd0:	4a78      	ldr	r2, [pc, #480]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020dd2:	601a      	str	r2, [r3, #0]
20020dd4:	4b78      	ldr	r3, [pc, #480]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020dd6:	6be2      	ldr	r2, [r4, #60]	@ 0x3c
20020dd8:	601a      	str	r2, [r3, #0]
20020dda:	4b78      	ldr	r3, [pc, #480]	@ (20020fbc <dfu_flash_init+0x2b8>)
20020ddc:	601c      	str	r4, [r3, #0]
20020dde:	2405      	movs	r4, #5
20020de0:	f8df 81dc 	ldr.w	r8, [pc, #476]	@ 20020fc0 <dfu_flash_init+0x2bc>
20020de4:	4e74      	ldr	r6, [pc, #464]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020de6:	f8df 920c 	ldr.w	r9, [pc, #524]	@ 20020ff4 <dfu_flash_init+0x2f0>
20020dea:	682b      	ldr	r3, [r5, #0]
20020dec:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020df0:	4973      	ldr	r1, [pc, #460]	@ (20020fc0 <dfu_flash_init+0x2bc>)
20020df2:	6830      	ldr	r0, [r6, #0]
20020df4:	4798      	blx	r3
20020df6:	f8d8 3000 	ldr.w	r3, [r8]
20020dfa:	454b      	cmp	r3, r9
20020dfc:	f040 80b8 	bne.w	20020f70 <dfu_flash_init+0x26c>
20020e00:	683b      	ldr	r3, [r7, #0]
20020e02:	2b04      	cmp	r3, #4
20020e04:	f040 8087 	bne.w	20020f16 <dfu_flash_init+0x212>
20020e08:	f8d8 30a4 	ldr.w	r3, [r8, #164]	@ 0xa4
20020e0c:	1e5a      	subs	r2, r3, #1
20020e0e:	3203      	adds	r2, #3
20020e10:	f200 8081 	bhi.w	20020f16 <dfu_flash_init+0x212>
20020e14:	4a6b      	ldr	r2, [pc, #428]	@ (20020fc4 <dfu_flash_init+0x2c0>)
20020e16:	496a      	ldr	r1, [pc, #424]	@ (20020fc0 <dfu_flash_init+0x2bc>)
20020e18:	6013      	str	r3, [r2, #0]
20020e1a:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020e1e:	682b      	ldr	r3, [r5, #0]
20020e20:	6830      	ldr	r0, [r6, #0]
20020e22:	b00c      	add	sp, #48	@ 0x30
20020e24:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020e28:	4718      	bx	r3
20020e2a:	f7ff fac1 	bl	200203b0 <board_pinmux_mpi1_gd>
20020e2e:	2302      	movs	r3, #2
20020e30:	9308      	str	r3, [sp, #32]
20020e32:	e7ad      	b.n	20020d90 <dfu_flash_init+0x8c>
20020e34:	4856      	ldr	r0, [pc, #344]	@ (20020f90 <dfu_flash_init+0x28c>)
20020e36:	f004 f867 	bl	20024f08 <HAL_RCC_HCPU_EnableDLL2>
20020e3a:	4c63      	ldr	r4, [pc, #396]	@ (20020fc8 <dfu_flash_init+0x2c4>)
20020e3c:	2006      	movs	r0, #6
20020e3e:	f000 ff75 	bl	20021d2c <BSP_SetFlash2DIV>
20020e42:	ae07      	add	r6, sp, #28
20020e44:	2102      	movs	r1, #2
20020e46:	2006      	movs	r0, #6
20020e48:	f004 f896 	bl	20024f78 <HAL_RCC_HCPU_ClockSelect>
20020e4c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020e4e:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020e50:	f854 3b04 	ldr.w	r3, [r4], #4
20020e54:	f8d7 8000 	ldr.w	r8, [r7]
20020e58:	6033      	str	r3, [r6, #0]
20020e5a:	ae03      	add	r6, sp, #12
20020e5c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020e60:	f1b8 0903 	subs.w	r9, r8, #3
20020e64:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020e68:	bf18      	it	ne
20020e6a:	f04f 0901 	movne.w	r9, #1
20020e6e:	f7ff fae2 	bl	20020436 <board_pinmux_mpi2>
20020e72:	2302      	movs	r3, #2
20020e74:	f1b8 0f03 	cmp.w	r8, #3
20020e78:	4c47      	ldr	r4, [pc, #284]	@ (20020f98 <dfu_flash_init+0x294>)
20020e7a:	9308      	str	r3, [sp, #32]
20020e7c:	d04e      	beq.n	20020f1c <dfu_flash_init+0x218>
20020e7e:	4b53      	ldr	r3, [pc, #332]	@ (20020fcc <dfu_flash_init+0x2c8>)
20020e80:	602b      	str	r3, [r5, #0]
20020e82:	9b09      	ldr	r3, [sp, #36]	@ 0x24
20020e84:	f103 43a0 	add.w	r3, r3, #1342177280	@ 0x50000000
20020e88:	9309      	str	r3, [sp, #36]	@ 0x24
20020e8a:	2301      	movs	r3, #1
20020e8c:	930b      	str	r3, [sp, #44]	@ 0x2c
20020e8e:	4b50      	ldr	r3, [pc, #320]	@ (20020fd0 <dfu_flash_init+0x2cc>)
20020e90:	6663      	str	r3, [r4, #100]	@ 0x64
20020e92:	f04f 0a01 	mov.w	sl, #1
20020e96:	2000      	movs	r0, #0
20020e98:	f001 f815 	bl	20021ec6 <HAL_Delay_us>
20020e9c:	f884 a081 	strb.w	sl, [r4, #129]	@ 0x81
20020ea0:	f884 9080 	strb.w	r9, [r4, #128]	@ 0x80
20020ea4:	f000 ff36 	bl	20021d14 <BSP_GetFlash2DIV>
20020ea8:	4633      	mov	r3, r6
20020eaa:	9000      	str	r0, [sp, #0]
20020eac:	4a49      	ldr	r2, [pc, #292]	@ (20020fd4 <dfu_flash_init+0x2d0>)
20020eae:	484a      	ldr	r0, [pc, #296]	@ (20020fd8 <dfu_flash_init+0x2d4>)
20020eb0:	a907      	add	r1, sp, #28
20020eb2:	f003 f81f 	bl	20023ef4 <HAL_FLASH_Init>
20020eb6:	4e48      	ldr	r6, [pc, #288]	@ (20020fd8 <dfu_flash_init+0x2d4>)
20020eb8:	bb18      	cbnz	r0, 20020f02 <dfu_flash_init+0x1fe>
20020eba:	f1b8 0f03 	cmp.w	r8, #3
20020ebe:	d020      	beq.n	20020f02 <dfu_flash_init+0x1fe>
20020ec0:	4630      	mov	r0, r6
20020ec2:	f002 fd33 	bl	2002392c <HAL_NAND_PAGE_SIZE>
20020ec6:	f8df 90fc 	ldr.w	r9, [pc, #252]	@ 20020fc4 <dfu_flash_init+0x2c0>
20020eca:	f8df 812c 	ldr.w	r8, [pc, #300]	@ 20020ff8 <dfu_flash_init+0x2f4>
20020ece:	f8c9 0000 	str.w	r0, [r9]
20020ed2:	4630      	mov	r0, r6
20020ed4:	f002 fe2a 	bl	20023b2c <HAL_NAND_BLOCK_SIZE>
20020ed8:	4651      	mov	r1, sl
20020eda:	f8c8 0000 	str.w	r0, [r8]
20020ede:	4630      	mov	r0, r6
20020ee0:	f884 a06e 	strb.w	sl, [r4, #110]	@ 0x6e
20020ee4:	f002 fbff 	bl	200236e6 <HAL_NAND_CONF_ECC>
20020ee8:	f8d9 0000 	ldr.w	r0, [r9]
20020eec:	f004 ff42 	bl	20025d74 <bbm_set_page_size>
20020ef0:	f8d8 0000 	ldr.w	r0, [r8]
20020ef4:	f004 ff44 	bl	20025d80 <bbm_set_blk_size>
20020ef8:	4938      	ldr	r1, [pc, #224]	@ (20020fdc <dfu_flash_init+0x2d8>)
20020efa:	f8d4 0088 	ldr.w	r0, [r4, #136]	@ 0x88
20020efe:	f004 fddb 	bl	20025ab8 <sif_bbm_init>
20020f02:	4b2d      	ldr	r3, [pc, #180]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020f04:	f8d4 2084 	ldr.w	r2, [r4, #132]	@ 0x84
20020f08:	601a      	str	r2, [r3, #0]
20020f0a:	4b2c      	ldr	r3, [pc, #176]	@ (20020fbc <dfu_flash_init+0x2b8>)
20020f0c:	601e      	str	r6, [r3, #0]
20020f0e:	682b      	ldr	r3, [r5, #0]
20020f10:	2b00      	cmp	r3, #0
20020f12:	f47f af64 	bne.w	20020dde <dfu_flash_init+0xda>
20020f16:	b00c      	add	sp, #48	@ 0x30
20020f18:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20020f1c:	4b21      	ldr	r3, [pc, #132]	@ (20020fa4 <dfu_flash_init+0x2a0>)
20020f1e:	602b      	str	r3, [r5, #0]
20020f20:	e7b7      	b.n	20020e92 <dfu_flash_init+0x18e>
20020f22:	481b      	ldr	r0, [pc, #108]	@ (20020f90 <dfu_flash_init+0x28c>)
20020f24:	f003 fff0 	bl	20024f08 <HAL_RCC_HCPU_EnableDLL2>
20020f28:	f7ff faac 	bl	20020484 <board_pinmux_sd>
20020f2c:	f000 fca4 	bl	20021878 <sdmmc1_sdnand>
20020f30:	2801      	cmp	r0, #1
20020f32:	d001      	beq.n	20020f38 <dfu_flash_init+0x234>
20020f34:	f7ff f9bc 	bl	200202b0 <boot_error>
20020f38:	4b29      	ldr	r3, [pc, #164]	@ (20020fe0 <dfu_flash_init+0x2dc>)
20020f3a:	4a2a      	ldr	r2, [pc, #168]	@ (20020fe4 <dfu_flash_init+0x2e0>)
20020f3c:	602b      	str	r3, [r5, #0]
20020f3e:	4b1e      	ldr	r3, [pc, #120]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020f40:	601a      	str	r2, [r3, #0]
20020f42:	2200      	movs	r2, #0
20020f44:	4b1d      	ldr	r3, [pc, #116]	@ (20020fbc <dfu_flash_init+0x2b8>)
20020f46:	601a      	str	r2, [r3, #0]
20020f48:	e749      	b.n	20020dde <dfu_flash_init+0xda>
20020f4a:	4811      	ldr	r0, [pc, #68]	@ (20020f90 <dfu_flash_init+0x28c>)
20020f4c:	f003 ffdc 	bl	20024f08 <HAL_RCC_HCPU_EnableDLL2>
20020f50:	f7ff fa98 	bl	20020484 <board_pinmux_sd>
20020f54:	f000 fa80 	bl	20021458 <sdio_emmc_init>
20020f58:	4b23      	ldr	r3, [pc, #140]	@ (20020fe8 <dfu_flash_init+0x2e4>)
20020f5a:	6018      	str	r0, [r3, #0]
20020f5c:	b110      	cbz	r0, 20020f64 <dfu_flash_init+0x260>
20020f5e:	b2c0      	uxtb	r0, r0
20020f60:	f7ff f9a6 	bl	200202b0 <boot_error>
20020f64:	4b21      	ldr	r3, [pc, #132]	@ (20020fec <dfu_flash_init+0x2e8>)
20020f66:	e7e8      	b.n	20020f3a <dfu_flash_init+0x236>
20020f68:	2053      	movs	r0, #83	@ 0x53
20020f6a:	f7ff f9a1 	bl	200202b0 <boot_error>
20020f6e:	e7ce      	b.n	20020f0e <dfu_flash_init+0x20a>
20020f70:	481f      	ldr	r0, [pc, #124]	@ (20020ff0 <dfu_flash_init+0x2ec>)
20020f72:	f000 ffa8 	bl	20021ec6 <HAL_Delay_us>
20020f76:	3c01      	subs	r4, #1
20020f78:	f47f af37 	bne.w	20020dea <dfu_flash_init+0xe6>
20020f7c:	2043      	movs	r0, #67	@ 0x43
20020f7e:	b00c      	add	sp, #48	@ 0x30
20020f80:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020f84:	f7ff b994 	b.w	200202b0 <boot_error>
20020f88:	20049ee8 	.word	0x20049ee8
20020f8c:	20046cc4 	.word	0x20046cc4
20020f90:	112a8800 	.word	0x112a8800
20020f94:	2002a8b4 	.word	0x2002a8b4
20020f98:	20046ed0 	.word	0x20046ed0
20020f9c:	20046cc8 	.word	0x20046cc8
20020fa0:	00176085 	.word	0x00176085
20020fa4:	20020a25 	.word	0x20020a25
20020fa8:	20020999 	.word	0x20020999
20020fac:	20046cc0 	.word	0x20046cc0
20020fb0:	20046cbc 	.word	0x20046cbc
20020fb4:	2002093d 	.word	0x2002093d
20020fb8:	20046cb4 	.word	0x20046cb4
20020fbc:	20046cb8 	.word	0x20046cb8
20020fc0:	200472d8 	.word	0x200472d8
20020fc4:	20042c04 	.word	0x20042c04
20020fc8:	2002a8d8 	.word	0x2002a8d8
20020fcc:	20020a39 	.word	0x20020a39
20020fd0:	20045a34 	.word	0x20045a34
20020fd4:	20046d30 	.word	0x20046d30
20020fd8:	20046f18 	.word	0x20046f18
20020fdc:	200449b4 	.word	0x200449b4
20020fe0:	20020ab9 	.word	0x20020ab9
20020fe4:	62001000 	.word	0x62001000
20020fe8:	200449b0 	.word	0x200449b0
20020fec:	20020b21 	.word	0x20020b21
20020ff0:	000f4240 	.word	0x000f4240
20020ff4:	53454346 	.word	0x53454346
20020ff8:	20042c00 	.word	0x20042c00

20020ffc <sifli_hw_efuse_read_bank>:
20020ffc:	2803      	cmp	r0, #3
20020ffe:	b508      	push	{r3, lr}
20021000:	d80c      	bhi.n	2002101c <sifli_hw_efuse_read_bank+0x20>
20021002:	0200      	lsls	r0, r0, #8
20021004:	2220      	movs	r2, #32
20021006:	4907      	ldr	r1, [pc, #28]	@ (20021024 <sifli_hw_efuse_read_bank+0x28>)
20021008:	f400 407f 	and.w	r0, r0, #65280	@ 0xff00
2002100c:	f001 fc32 	bl	20022874 <HAL_EFUSE_Read>
20021010:	2800      	cmp	r0, #0
20021012:	bf0c      	ite	eq
20021014:	f06f 0001 	mvneq.w	r0, #1
20021018:	2000      	movne	r0, #0
2002101a:	bd08      	pop	{r3, pc}
2002101c:	f04f 30ff 	mov.w	r0, #4294967295
20021020:	e7fb      	b.n	2002101a <sifli_hw_efuse_read_bank+0x1e>
20021022:	bf00      	nop
20021024:	20047258 	.word	0x20047258

20021028 <sifli_hw_efuse_read>:
20021028:	b513      	push	{r0, r1, r4, lr}
2002102a:	3801      	subs	r0, #1
2002102c:	460c      	mov	r4, r1
2002102e:	2803      	cmp	r0, #3
20021030:	d81e      	bhi.n	20021070 <sifli_hw_efuse_read+0x48>
20021032:	e8df f000 	tbb	[pc, r0]
20021036:	0c02      	.short	0x0c02
20021038:	1009      	.short	0x1009
2002103a:	2210      	movs	r2, #16
2002103c:	2000      	movs	r0, #0
2002103e:	b002      	add	sp, #8
20021040:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20021044:	f001 bc16 	b.w	20022874 <HAL_EFUSE_Read>
20021048:	2208      	movs	r2, #8
2002104a:	2080      	movs	r0, #128	@ 0x80
2002104c:	e7f7      	b.n	2002103e <sifli_hw_efuse_read+0x16>
2002104e:	2220      	movs	r2, #32
20021050:	f44f 7040 	mov.w	r0, #768	@ 0x300
20021054:	e7f3      	b.n	2002103e <sifli_hw_efuse_read+0x16>
20021056:	2204      	movs	r2, #4
20021058:	20c0      	movs	r0, #192	@ 0xc0
2002105a:	eb0d 0102 	add.w	r1, sp, r2
2002105e:	f001 fc09 	bl	20022874 <HAL_EFUSE_Read>
20021062:	2804      	cmp	r0, #4
20021064:	d104      	bne.n	20021070 <sifli_hw_efuse_read+0x48>
20021066:	2001      	movs	r0, #1
20021068:	9b01      	ldr	r3, [sp, #4]
2002106a:	7023      	strb	r3, [r4, #0]
2002106c:	b002      	add	sp, #8
2002106e:	bd10      	pop	{r4, pc}
20021070:	2000      	movs	r0, #0
20021072:	e7fb      	b.n	2002106c <sifli_hw_efuse_read+0x44>

20021074 <sifli_hw_init_xip_key>:
20021074:	b538      	push	{r3, r4, r5, lr}
20021076:	4605      	mov	r5, r0
20021078:	4c0f      	ldr	r4, [pc, #60]	@ (200210b8 <sifli_hw_init_xip_key+0x44>)
2002107a:	2210      	movs	r2, #16
2002107c:	68e3      	ldr	r3, [r4, #12]
2002107e:	490f      	ldr	r1, [pc, #60]	@ (200210bc <sifli_hw_init_xip_key+0x48>)
20021080:	f043 0301 	orr.w	r3, r3, #1
20021084:	60e3      	str	r3, [r4, #12]
20021086:	2001      	movs	r0, #1
20021088:	f7ff ffce 	bl	20021028 <sifli_hw_efuse_read>
2002108c:	2220      	movs	r2, #32
2002108e:	2100      	movs	r1, #0
20021090:	480b      	ldr	r0, [pc, #44]	@ (200210c0 <sifli_hw_init_xip_key+0x4c>)
20021092:	f009 fb8d 	bl	2002a7b0 <memset>
20021096:	2302      	movs	r3, #2
20021098:	2120      	movs	r1, #32
2002109a:	4a08      	ldr	r2, [pc, #32]	@ (200210bc <sifli_hw_init_xip_key+0x48>)
2002109c:	2000      	movs	r0, #0
2002109e:	f000 ff8b 	bl	20021fb8 <HAL_AES_init>
200210a2:	2320      	movs	r3, #32
200210a4:	4629      	mov	r1, r5
200210a6:	2000      	movs	r0, #0
200210a8:	4a05      	ldr	r2, [pc, #20]	@ (200210c0 <sifli_hw_init_xip_key+0x4c>)
200210aa:	f000 ffc9 	bl	20022040 <HAL_AES_run>
200210ae:	68e3      	ldr	r3, [r4, #12]
200210b0:	f023 0301 	bic.w	r3, r3, #1
200210b4:	60e3      	str	r3, [r4, #12]
200210b6:	bd38      	pop	{r3, r4, r5, pc}
200210b8:	5000b000 	.word	0x5000b000
200210bc:	20047288 	.word	0x20047288
200210c0:	20047238 	.word	0x20047238

200210c4 <sifli_hw_dec_key>:
200210c4:	b538      	push	{r3, r4, r5, lr}
200210c6:	4604      	mov	r4, r0
200210c8:	460d      	mov	r5, r1
200210ca:	2210      	movs	r2, #16
200210cc:	4908      	ldr	r1, [pc, #32]	@ (200210f0 <sifli_hw_dec_key+0x2c>)
200210ce:	2001      	movs	r0, #1
200210d0:	f7ff ffaa 	bl	20021028 <sifli_hw_efuse_read>
200210d4:	2302      	movs	r3, #2
200210d6:	2120      	movs	r1, #32
200210d8:	4a05      	ldr	r2, [pc, #20]	@ (200210f0 <sifli_hw_dec_key+0x2c>)
200210da:	2000      	movs	r0, #0
200210dc:	f000 ff6c 	bl	20021fb8 <HAL_AES_init>
200210e0:	2320      	movs	r3, #32
200210e2:	462a      	mov	r2, r5
200210e4:	4621      	mov	r1, r4
200210e6:	2000      	movs	r0, #0
200210e8:	f000 ffaa 	bl	20022040 <HAL_AES_run>
200210ec:	2000      	movs	r0, #0
200210ee:	bd38      	pop	{r3, r4, r5, pc}
200210f0:	20047288 	.word	0x20047288

200210f4 <dfu_get_counter>:
200210f4:	b538      	push	{r3, r4, r5, lr}
200210f6:	4d0a      	ldr	r5, [pc, #40]	@ (20021120 <dfu_get_counter+0x2c>)
200210f8:	4604      	mov	r4, r0
200210fa:	2208      	movs	r2, #8
200210fc:	4629      	mov	r1, r5
200210fe:	2003      	movs	r0, #3
20021100:	f7ff ff92 	bl	20021028 <sifli_hw_efuse_read>
20021104:	2300      	movs	r3, #0
20021106:	e9c5 3302 	strd	r3, r3, [r5, #8]
2002110a:	230f      	movs	r3, #15
2002110c:	0924      	lsrs	r4, r4, #4
2002110e:	b12c      	cbz	r4, 2002111c <dfu_get_counter+0x28>
20021110:	54ec      	strb	r4, [r5, r3]
20021112:	3b01      	subs	r3, #1
20021114:	2b0b      	cmp	r3, #11
20021116:	ea4f 2414 	mov.w	r4, r4, lsr #8
2002111a:	d1f8      	bne.n	2002110e <dfu_get_counter+0x1a>
2002111c:	4800      	ldr	r0, [pc, #0]	@ (20021120 <dfu_get_counter+0x2c>)
2002111e:	bd38      	pop	{r3, r4, r5, pc}
20021120:	20047278 	.word	0x20047278

20021124 <sifli_hw_dec>:
20021124:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20021128:	4680      	mov	r8, r0
2002112a:	4689      	mov	r9, r1
2002112c:	4692      	mov	sl, r2
2002112e:	2100      	movs	r1, #0
20021130:	f44f 7200 	mov.w	r2, #512	@ 0x200
20021134:	4814      	ldr	r0, [pc, #80]	@ (20021188 <sifli_hw_dec+0x64>)
20021136:	461e      	mov	r6, r3
20021138:	9f08      	ldr	r7, [sp, #32]
2002113a:	2400      	movs	r4, #0
2002113c:	f009 fb38 	bl	2002a7b0 <memset>
20021140:	42a6      	cmp	r6, r4
20021142:	d802      	bhi.n	2002114a <sifli_hw_dec+0x26>
20021144:	4620      	mov	r0, r4
20021146:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
2002114a:	1b35      	subs	r5, r6, r4
2002114c:	f5b5 7f00 	cmp.w	r5, #512	@ 0x200
20021150:	bf28      	it	cs
20021152:	f44f 7500 	movcs.w	r5, #512	@ 0x200
20021156:	eb09 0104 	add.w	r1, r9, r4
2002115a:	462a      	mov	r2, r5
2002115c:	480a      	ldr	r0, [pc, #40]	@ (20021188 <sifli_hw_dec+0x64>)
2002115e:	f009 fb41 	bl	2002a7e4 <memcpy>
20021162:	19e0      	adds	r0, r4, r7
20021164:	f7ff ffc6 	bl	200210f4 <dfu_get_counter>
20021168:	2301      	movs	r3, #1
2002116a:	4602      	mov	r2, r0
2002116c:	2120      	movs	r1, #32
2002116e:	4640      	mov	r0, r8
20021170:	f000 ff22 	bl	20021fb8 <HAL_AES_init>
20021174:	eb0a 0204 	add.w	r2, sl, r4
20021178:	462b      	mov	r3, r5
2002117a:	2000      	movs	r0, #0
2002117c:	4902      	ldr	r1, [pc, #8]	@ (20021188 <sifli_hw_dec+0x64>)
2002117e:	f000 ff5f 	bl	20022040 <HAL_AES_run>
20021182:	442c      	add	r4, r5
20021184:	e7dc      	b.n	20021140 <sifli_hw_dec+0x1c>
20021186:	bf00      	nop
20021188:	20047038 	.word	0x20047038

2002118c <boot_ram>:
2002118c:	4b05      	ldr	r3, [pc, #20]	@ (200211a4 <boot_ram+0x18>)
2002118e:	b082      	sub	sp, #8
20021190:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
20021192:	9301      	str	r3, [sp, #4]
20021194:	9b01      	ldr	r3, [sp, #4]
20021196:	b113      	cbz	r3, 2002119e <boot_ram+0x12>
20021198:	9b01      	ldr	r3, [sp, #4]
2002119a:	b002      	add	sp, #8
2002119c:	4718      	bx	r3
2002119e:	b002      	add	sp, #8
200211a0:	4770      	bx	lr
200211a2:	bf00      	nop
200211a4:	500c0000 	.word	0x500c0000

200211a8 <is_addr_in_nor>:
200211a8:	4b09      	ldr	r3, [pc, #36]	@ (200211d0 <is_addr_in_nor+0x28>)
200211aa:	4602      	mov	r2, r0
200211ac:	681b      	ldr	r3, [r3, #0]
200211ae:	b163      	cbz	r3, 200211ca <is_addr_in_nor+0x22>
200211b0:	f893 0023 	ldrb.w	r0, [r3, #35]	@ 0x23
200211b4:	b948      	cbnz	r0, 200211ca <is_addr_in_nor+0x22>
200211b6:	6919      	ldr	r1, [r3, #16]
200211b8:	4291      	cmp	r1, r2
200211ba:	d807      	bhi.n	200211cc <is_addr_in_nor+0x24>
200211bc:	695b      	ldr	r3, [r3, #20]
200211be:	4419      	add	r1, r3
200211c0:	4291      	cmp	r1, r2
200211c2:	bf94      	ite	ls
200211c4:	2000      	movls	r0, #0
200211c6:	2001      	movhi	r0, #1
200211c8:	4770      	bx	lr
200211ca:	2000      	movs	r0, #0
200211cc:	4770      	bx	lr
200211ce:	bf00      	nop
200211d0:	20046cb8 	.word	0x20046cb8

200211d4 <dfu_boot_img_in_flash>:
200211d4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200211d8:	4f5e      	ldr	r7, [pc, #376]	@ (20021354 <dfu_boot_img_in_flash+0x180>)
200211da:	1e84      	subs	r4, r0, #2
200211dc:	eb07 1300 	add.w	r3, r7, r0, lsl #4
200211e0:	eb07 2040 	add.w	r0, r7, r0, lsl #9
200211e4:	f8d3 8004 	ldr.w	r8, [r3, #4]
200211e8:	68dd      	ldr	r5, [r3, #12]
200211ea:	f8b0 3c06 	ldrh.w	r3, [r0, #3078]	@ 0xc06
200211ee:	b085      	sub	sp, #20
200211f0:	07db      	lsls	r3, r3, #31
200211f2:	f140 8095 	bpl.w	20021320 <dfu_boot_img_in_flash+0x14c>
200211f6:	f44f 7193 	mov.w	r1, #294	@ 0x126
200211fa:	f507 7082 	add.w	r0, r7, #260	@ 0x104
200211fe:	f000 fd1c 	bl	20021c3a <sifli_sigkey_pub_verify>
20021202:	b110      	cbz	r0, 2002120a <dfu_boot_img_in_flash+0x36>
20021204:	2001      	movs	r0, #1
20021206:	f000 fd65 	bl	20021cd4 <sifli_secboot_exception>
2002120a:	2c07      	cmp	r4, #7
2002120c:	f300 8093 	bgt.w	20021336 <dfu_boot_img_in_flash+0x162>
20021210:	2003      	movs	r0, #3
20021212:	f7ff fef3 	bl	20020ffc <sifli_hw_efuse_read_bank>
20021216:	4262      	negs	r2, r4
20021218:	f002 0203 	and.w	r2, r2, #3
2002121c:	f004 0303 	and.w	r3, r4, #3
20021220:	bf58      	it	pl
20021222:	4253      	negpl	r3, r2
20021224:	2b02      	cmp	r3, #2
20021226:	f200 8086 	bhi.w	20021336 <dfu_boot_img_in_flash+0x162>
2002122a:	4628      	mov	r0, r5
2002122c:	f7ff ffbc 	bl	200211a8 <is_addr_in_nor>
20021230:	f241 0308 	movw	r3, #4104	@ 0x1008
20021234:	4682      	mov	sl, r0
20021236:	ea4f 2944 	mov.w	r9, r4, lsl #9
2002123a:	f8df c12c 	ldr.w	ip, [pc, #300]	@ 20021368 <dfu_boot_img_in_flash+0x194>
2002123e:	eb07 0609 	add.w	r6, r7, r9
20021242:	441e      	add	r6, r3
20021244:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20021246:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
2002124a:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
2002124e:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
20021252:	f1ba 0f00 	cmp.w	sl, #0
20021256:	d04b      	beq.n	200212f0 <dfu_boot_img_in_flash+0x11c>
20021258:	f104 0608 	add.w	r6, r4, #8
2002125c:	f1ac 0010 	sub.w	r0, ip, #16
20021260:	0276      	lsls	r6, r6, #9
20021262:	f7ff ff07 	bl	20021074 <sifli_hw_init_xip_key>
20021266:	59ba      	ldr	r2, [r7, r6]
20021268:	f8df a0f0 	ldr.w	sl, [pc, #240]	@ 2002135c <dfu_boot_img_in_flash+0x188>
2002126c:	442a      	add	r2, r5
2002126e:	2000      	movs	r0, #0
20021270:	f8da b000 	ldr.w	fp, [sl]
20021274:	9203      	str	r2, [sp, #12]
20021276:	f7ff ff3d 	bl	200210f4 <dfu_get_counter>
2002127a:	4629      	mov	r1, r5
2002127c:	4603      	mov	r3, r0
2002127e:	9a03      	ldr	r2, [sp, #12]
20021280:	4658      	mov	r0, fp
20021282:	f002 f9de 	bl	20023642 <HAL_FLASH_NONCE_CFG>
20021286:	4629      	mov	r1, r5
20021288:	f8da 0000 	ldr.w	r0, [sl]
2002128c:	59ba      	ldr	r2, [r7, r6]
2002128e:	eba8 0305 	sub.w	r3, r8, r5
20021292:	f002 f9c5 	bl	20023620 <HAL_FLASH_ALIAS_CFG>
20021296:	2101      	movs	r1, #1
20021298:	f8da 0000 	ldr.w	r0, [sl]
2002129c:	f002 f9e9 	bl	20023672 <HAL_FLASH_AES_CFG>
200212a0:	f104 0308 	add.w	r3, r4, #8
200212a4:	f509 5081 	add.w	r0, r9, #4128	@ 0x1020
200212a8:	025b      	lsls	r3, r3, #9
200212aa:	3008      	adds	r0, #8
200212ac:	462a      	mov	r2, r5
200212ae:	58fb      	ldr	r3, [r7, r3]
200212b0:	4929      	ldr	r1, [pc, #164]	@ (20021358 <dfu_boot_img_in_flash+0x184>)
200212b2:	4438      	add	r0, r7
200212b4:	f000 fcd9 	bl	20021c6a <sifli_img_sig_hash_verify>
200212b8:	b110      	cbz	r0, 200212c0 <dfu_boot_img_in_flash+0xec>
200212ba:	2002      	movs	r0, #2
200212bc:	f000 fd0a 	bl	20021cd4 <sifli_secboot_exception>
200212c0:	f8d5 d000 	ldr.w	sp, [r5]
200212c4:	f8d5 f004 	ldr.w	pc, [r5, #4]
200212c8:	4628      	mov	r0, r5
200212ca:	f7ff ff6d 	bl	200211a8 <is_addr_in_nor>
200212ce:	2800      	cmp	r0, #0
200212d0:	d034      	beq.n	2002133c <dfu_boot_img_in_flash+0x168>
200212d2:	4822      	ldr	r0, [pc, #136]	@ (2002135c <dfu_boot_img_in_flash+0x188>)
200212d4:	3408      	adds	r4, #8
200212d6:	0264      	lsls	r4, r4, #9
200212d8:	4629      	mov	r1, r5
200212da:	593a      	ldr	r2, [r7, r4]
200212dc:	6800      	ldr	r0, [r0, #0]
200212de:	eba8 0305 	sub.w	r3, r8, r5
200212e2:	f002 f99d 	bl	20023620 <HAL_FLASH_ALIAS_CFG>
200212e6:	f8d5 d000 	ldr.w	sp, [r5]
200212ea:	f8d5 f004 	ldr.w	pc, [r5, #4]
200212ee:	e022      	b.n	20021336 <dfu_boot_img_in_flash+0x162>
200212f0:	f1ac 0010 	sub.w	r0, ip, #16
200212f4:	2220      	movs	r2, #32
200212f6:	491a      	ldr	r1, [pc, #104]	@ (20021360 <dfu_boot_img_in_flash+0x18c>)
200212f8:	f7ff fee4 	bl	200210c4 <sifli_hw_dec_key>
200212fc:	f104 0608 	add.w	r6, r4, #8
20021300:	4b18      	ldr	r3, [pc, #96]	@ (20021364 <dfu_boot_img_in_flash+0x190>)
20021302:	0276      	lsls	r6, r6, #9
20021304:	4629      	mov	r1, r5
20021306:	59ba      	ldr	r2, [r7, r6]
20021308:	4640      	mov	r0, r8
2002130a:	681b      	ldr	r3, [r3, #0]
2002130c:	4798      	blx	r3
2002130e:	f8cd a000 	str.w	sl, [sp]
20021312:	462a      	mov	r2, r5
20021314:	4629      	mov	r1, r5
20021316:	59bb      	ldr	r3, [r7, r6]
20021318:	4811      	ldr	r0, [pc, #68]	@ (20021360 <dfu_boot_img_in_flash+0x18c>)
2002131a:	f7ff ff03 	bl	20021124 <sifli_hw_dec>
2002131e:	e7bf      	b.n	200212a0 <dfu_boot_img_in_flash+0xcc>
20021320:	2c07      	cmp	r4, #7
20021322:	dc08      	bgt.n	20021336 <dfu_boot_img_in_flash+0x162>
20021324:	4262      	negs	r2, r4
20021326:	f002 0203 	and.w	r2, r2, #3
2002132a:	f004 0303 	and.w	r3, r4, #3
2002132e:	bf58      	it	pl
20021330:	4253      	negpl	r3, r2
20021332:	2b02      	cmp	r3, #2
20021334:	d9c8      	bls.n	200212c8 <dfu_boot_img_in_flash+0xf4>
20021336:	b005      	add	sp, #20
20021338:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002133c:	45a8      	cmp	r8, r5
2002133e:	d0d2      	beq.n	200212e6 <dfu_boot_img_in_flash+0x112>
20021340:	4b08      	ldr	r3, [pc, #32]	@ (20021364 <dfu_boot_img_in_flash+0x190>)
20021342:	3408      	adds	r4, #8
20021344:	0264      	lsls	r4, r4, #9
20021346:	4629      	mov	r1, r5
20021348:	4640      	mov	r0, r8
2002134a:	681b      	ldr	r3, [r3, #0]
2002134c:	593a      	ldr	r2, [r7, r4]
2002134e:	4798      	blx	r3
20021350:	e7c9      	b.n	200212e6 <dfu_boot_img_in_flash+0x112>
20021352:	bf00      	nop
20021354:	200472d8 	.word	0x200472d8
20021358:	200473dc 	.word	0x200473dc
2002135c:	20046cb8 	.word	0x20046cb8
20021360:	20047298 	.word	0x20047298
20021364:	20046cc4 	.word	0x20046cc4
20021368:	200472b8 	.word	0x200472b8

2002136c <boot_images_help>:
2002136c:	4b0d      	ldr	r3, [pc, #52]	@ (200213a4 <boot_images_help+0x38>)
2002136e:	4a0e      	ldr	r2, [pc, #56]	@ (200213a8 <boot_images_help+0x3c>)
20021370:	6819      	ldr	r1, [r3, #0]
20021372:	b510      	push	{r4, lr}
20021374:	4291      	cmp	r1, r2
20021376:	d113      	bne.n	200213a0 <boot_images_help+0x34>
20021378:	f503 5300 	add.w	r3, r3, #8192	@ 0x2000
2002137c:	f8d3 3c08 	ldr.w	r3, [r3, #3080]	@ 0xc08
20021380:	1c5a      	adds	r2, r3, #1
20021382:	d00d      	beq.n	200213a0 <boot_images_help+0x34>
20021384:	4a09      	ldr	r2, [pc, #36]	@ (200213ac <boot_images_help+0x40>)
20021386:	6814      	ldr	r4, [r2, #0]
20021388:	1b1c      	subs	r4, r3, r4
2002138a:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
2002138e:	0a64      	lsrs	r4, r4, #9
20021390:	3402      	adds	r4, #2
20021392:	f7ff faa5 	bl	200208e0 <board_init_psram>
20021396:	4620      	mov	r0, r4
20021398:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002139c:	f7ff bf1a 	b.w	200211d4 <dfu_boot_img_in_flash>
200213a0:	bd10      	pop	{r4, pc}
200213a2:	bf00      	nop
200213a4:	200472d8 	.word	0x200472d8
200213a8:	53454346 	.word	0x53454346
200213ac:	20046cb4 	.word	0x20046cb4

200213b0 <hw_preinit0>:
200213b0:	b508      	push	{r3, lr}
200213b2:	4b0e      	ldr	r3, [pc, #56]	@ (200213ec <hw_preinit0+0x3c>)
200213b4:	685b      	ldr	r3, [r3, #4]
200213b6:	b2db      	uxtb	r3, r3
200213b8:	2b06      	cmp	r3, #6
200213ba:	d80a      	bhi.n	200213d2 <hw_preinit0+0x22>
200213bc:	4a0c      	ldr	r2, [pc, #48]	@ (200213f0 <hw_preinit0+0x40>)
200213be:	6a93      	ldr	r3, [r2, #40]	@ 0x28
200213c0:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
200213c4:	f043 0306 	orr.w	r3, r3, #6
200213c8:	6293      	str	r3, [r2, #40]	@ 0x28
200213ca:	6853      	ldr	r3, [r2, #4]
200213cc:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
200213d0:	6053      	str	r3, [r2, #4]
200213d2:	2000      	movs	r0, #0
200213d4:	f000 fd77 	bl	20021ec6 <HAL_Delay_us>
200213d8:	4b06      	ldr	r3, [pc, #24]	@ (200213f4 <hw_preinit0+0x44>)
200213da:	4a07      	ldr	r2, [pc, #28]	@ (200213f8 <hw_preinit0+0x48>)
200213dc:	2000      	movs	r0, #0
200213de:	605a      	str	r2, [r3, #4]
200213e0:	f7ff fe0c 	bl	20020ffc <sifli_hw_efuse_read_bank>
200213e4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
200213e8:	f7ff bed0 	b.w	2002118c <boot_ram>
200213ec:	5000b000 	.word	0x5000b000
200213f0:	500ca000 	.word	0x500ca000
200213f4:	5000c000 	.word	0x5000c000
200213f8:	0002d08f 	.word	0x0002d08f

200213fc <entry>:
200213fc:	4c14      	ldr	r4, [pc, #80]	@ (20021450 <entry+0x54>)
200213fe:	b508      	push	{r3, lr}
20021400:	2000      	movs	r0, #0
20021402:	f000 fd60 	bl	20021ec6 <HAL_Delay_us>
20021406:	6863      	ldr	r3, [r4, #4]
20021408:	4d12      	ldr	r5, [pc, #72]	@ (20021454 <entry+0x58>)
2002140a:	b2db      	uxtb	r3, r3
2002140c:	2b06      	cmp	r3, #6
2002140e:	d90f      	bls.n	20021430 <entry+0x34>
20021410:	f7ff f886 	bl	20020520 <board_flash_power_on>
20021414:	f7fe ff74 	bl	20020300 <HAL_MspInit>
20021418:	f7ff f864 	bl	200204e4 <board_boot_from>
2002141c:	68e3      	ldr	r3, [r4, #12]
2002141e:	6028      	str	r0, [r5, #0]
20021420:	f023 0301 	bic.w	r3, r3, #1
20021424:	60e3      	str	r3, [r4, #12]
20021426:	f7ff fc6d 	bl	20020d04 <dfu_flash_init>
2002142a:	f7ff ff9f 	bl	2002136c <boot_images_help>
2002142e:	e7fe      	b.n	2002142e <entry+0x32>
20021430:	f7ff f858 	bl	200204e4 <board_boot_from>
20021434:	6028      	str	r0, [r5, #0]
20021436:	f7ff f873 	bl	20020520 <board_flash_power_on>
2002143a:	f7fe ff61 	bl	20020300 <HAL_MspInit>
2002143e:	68e3      	ldr	r3, [r4, #12]
20021440:	f023 0301 	bic.w	r3, r3, #1
20021444:	60e3      	str	r3, [r4, #12]
20021446:	f7ff fc5d 	bl	20020d04 <dfu_flash_init>
2002144a:	f7ff ff8f 	bl	2002136c <boot_images_help>
2002144e:	e7ee      	b.n	2002142e <entry+0x32>
20021450:	5000b000 	.word	0x5000b000
20021454:	20049ee8 	.word	0x20049ee8

20021458 <sdio_emmc_init>:
20021458:	b570      	push	{r4, r5, r6, lr}
2002145a:	b08c      	sub	sp, #48	@ 0x30
2002145c:	f000 f968 	bl	20021730 <sd1_init>
20021460:	4c8d      	ldr	r4, [pc, #564]	@ (20021698 <sdio_emmc_init+0x240>)
20021462:	4b8e      	ldr	r3, [pc, #568]	@ (2002169c <sdio_emmc_init+0x244>)
20021464:	2500      	movs	r5, #0
20021466:	6323      	str	r3, [r4, #48]	@ 0x30
20021468:	6b23      	ldr	r3, [r4, #48]	@ 0x30
2002146a:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
2002146e:	f043 0302 	orr.w	r3, r3, #2
20021472:	6323      	str	r3, [r4, #48]	@ 0x30
20021474:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
20021478:	62e5      	str	r5, [r4, #44]	@ 0x2c
2002147a:	6223      	str	r3, [r4, #32]
2002147c:	f000 fd23 	bl	20021ec6 <HAL_Delay_us>
20021480:	4629      	mov	r1, r5
20021482:	4628      	mov	r0, r5
20021484:	f000 f986 	bl	20021794 <sd1_send_cmd>
20021488:	2301      	movs	r3, #1
2002148a:	65e3      	str	r3, [r4, #92]	@ 0x5c
2002148c:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
2002148e:	079d      	lsls	r5, r3, #30
20021490:	d5fc      	bpl.n	2002148c <sdio_emmc_init+0x34>
20021492:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20021494:	f043 0320 	orr.w	r3, r3, #32
20021498:	63e3      	str	r3, [r4, #60]	@ 0x3c
2002149a:	4981      	ldr	r1, [pc, #516]	@ (200216a0 <sdio_emmc_init+0x248>)
2002149c:	2001      	movs	r0, #1
2002149e:	ad07      	add	r5, sp, #28
200214a0:	f000 f978 	bl	20021794 <sd1_send_cmd>
200214a4:	ab06      	add	r3, sp, #24
200214a6:	aa05      	add	r2, sp, #20
200214a8:	a904      	add	r1, sp, #16
200214aa:	f10d 000f 	add.w	r0, sp, #15
200214ae:	9500      	str	r5, [sp, #0]
200214b0:	f000 f9ae 	bl	20021810 <sd1_get_rsp>
200214b4:	2014      	movs	r0, #20
200214b6:	f000 fd06 	bl	20021ec6 <HAL_Delay_us>
200214ba:	9b04      	ldr	r3, [sp, #16]
200214bc:	2b00      	cmp	r3, #0
200214be:	daec      	bge.n	2002149a <sdio_emmc_init+0x42>
200214c0:	2014      	movs	r0, #20
200214c2:	f000 fd00 	bl	20021ec6 <HAL_Delay_us>
200214c6:	2100      	movs	r1, #0
200214c8:	2002      	movs	r0, #2
200214ca:	f000 f963 	bl	20021794 <sd1_send_cmd>
200214ce:	2801      	cmp	r0, #1
200214d0:	f000 8081 	beq.w	200215d6 <sdio_emmc_init+0x17e>
200214d4:	2802      	cmp	r0, #2
200214d6:	d07e      	beq.n	200215d6 <sdio_emmc_init+0x17e>
200214d8:	ab08      	add	r3, sp, #32
200214da:	aa0a      	add	r2, sp, #40	@ 0x28
200214dc:	a90b      	add	r1, sp, #44	@ 0x2c
200214de:	9300      	str	r3, [sp, #0]
200214e0:	f10d 000f 	add.w	r0, sp, #15
200214e4:	ab09      	add	r3, sp, #36	@ 0x24
200214e6:	f000 f993 	bl	20021810 <sd1_get_rsp>
200214ea:	2014      	movs	r0, #20
200214ec:	f000 fceb 	bl	20021ec6 <HAL_Delay_us>
200214f0:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
200214f4:	2003      	movs	r0, #3
200214f6:	f000 f94d 	bl	20021794 <sd1_send_cmd>
200214fa:	2801      	cmp	r0, #1
200214fc:	f000 80ab 	beq.w	20021656 <sdio_emmc_init+0x1fe>
20021500:	2802      	cmp	r0, #2
20021502:	f000 80aa 	beq.w	2002165a <sdio_emmc_init+0x202>
20021506:	ab06      	add	r3, sp, #24
20021508:	9500      	str	r5, [sp, #0]
2002150a:	aa05      	add	r2, sp, #20
2002150c:	a904      	add	r1, sp, #16
2002150e:	f10d 000f 	add.w	r0, sp, #15
20021512:	f000 f97d 	bl	20021810 <sd1_get_rsp>
20021516:	f89d 300f 	ldrb.w	r3, [sp, #15]
2002151a:	2b03      	cmp	r3, #3
2002151c:	f040 809f 	bne.w	2002165e <sdio_emmc_init+0x206>
20021520:	4c5d      	ldr	r4, [pc, #372]	@ (20021698 <sdio_emmc_init+0x240>)
20021522:	2014      	movs	r0, #20
20021524:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20021526:	f023 0320 	bic.w	r3, r3, #32
2002152a:	63e3      	str	r3, [r4, #60]	@ 0x3c
2002152c:	f000 fccb 	bl	20021ec6 <HAL_Delay_us>
20021530:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
20021534:	2009      	movs	r0, #9
20021536:	f000 f92d 	bl	20021794 <sd1_send_cmd>
2002153a:	2801      	cmp	r0, #1
2002153c:	f000 8091 	beq.w	20021662 <sdio_emmc_init+0x20a>
20021540:	2802      	cmp	r0, #2
20021542:	f000 8090 	beq.w	20021666 <sdio_emmc_init+0x20e>
20021546:	aa05      	add	r2, sp, #20
20021548:	a904      	add	r1, sp, #16
2002154a:	ab06      	add	r3, sp, #24
2002154c:	f10d 000f 	add.w	r0, sp, #15
20021550:	9500      	str	r5, [sp, #0]
20021552:	f000 f95d 	bl	20021810 <sd1_get_rsp>
20021556:	f44f 53b8 	mov.w	r3, #5888	@ 0x1700
2002155a:	6323      	str	r3, [r4, #48]	@ 0x30
2002155c:	6b23      	ldr	r3, [r4, #48]	@ 0x30
2002155e:	2014      	movs	r0, #20
20021560:	f043 0302 	orr.w	r3, r3, #2
20021564:	6323      	str	r3, [r4, #48]	@ 0x30
20021566:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
2002156a:	6223      	str	r3, [r4, #32]
2002156c:	2302      	movs	r3, #2
2002156e:	63e3      	str	r3, [r4, #60]	@ 0x3c
20021570:	f000 fca9 	bl	20021ec6 <HAL_Delay_us>
20021574:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
20021578:	2007      	movs	r0, #7
2002157a:	f000 f90b 	bl	20021794 <sd1_send_cmd>
2002157e:	2801      	cmp	r0, #1
20021580:	d073      	beq.n	2002166a <sdio_emmc_init+0x212>
20021582:	2802      	cmp	r0, #2
20021584:	d073      	beq.n	2002166e <sdio_emmc_init+0x216>
20021586:	ab06      	add	r3, sp, #24
20021588:	9500      	str	r5, [sp, #0]
2002158a:	aa05      	add	r2, sp, #20
2002158c:	a904      	add	r1, sp, #16
2002158e:	f10d 000f 	add.w	r0, sp, #15
20021592:	f000 f93d 	bl	20021810 <sd1_get_rsp>
20021596:	f89d 300f 	ldrb.w	r3, [sp, #15]
2002159a:	2b07      	cmp	r3, #7
2002159c:	d169      	bne.n	20021672 <sdio_emmc_init+0x21a>
2002159e:	f04f 33ff 	mov.w	r3, #4294967295
200215a2:	2101      	movs	r1, #1
200215a4:	2000      	movs	r0, #0
200215a6:	6023      	str	r3, [r4, #0]
200215a8:	f000 f942 	bl	20021830 <sd1_read>
200215ac:	2100      	movs	r1, #0
200215ae:	2008      	movs	r0, #8
200215b0:	f000 f8f0 	bl	20021794 <sd1_send_cmd>
200215b4:	2801      	cmp	r0, #1
200215b6:	d05e      	beq.n	20021676 <sdio_emmc_init+0x21e>
200215b8:	2802      	cmp	r0, #2
200215ba:	d05e      	beq.n	2002167a <sdio_emmc_init+0x222>
200215bc:	ab06      	add	r3, sp, #24
200215be:	9500      	str	r5, [sp, #0]
200215c0:	aa05      	add	r2, sp, #20
200215c2:	a904      	add	r1, sp, #16
200215c4:	f10d 000f 	add.w	r0, sp, #15
200215c8:	f000 f922 	bl	20021810 <sd1_get_rsp>
200215cc:	f89d 300f 	ldrb.w	r3, [sp, #15]
200215d0:	2b08      	cmp	r3, #8
200215d2:	d002      	beq.n	200215da <sdio_emmc_init+0x182>
200215d4:	200d      	movs	r0, #13
200215d6:	b00c      	add	sp, #48	@ 0x30
200215d8:	bd70      	pop	{r4, r5, r6, pc}
200215da:	2320      	movs	r3, #32
200215dc:	62e3      	str	r3, [r4, #44]	@ 0x2c
200215de:	f000 f937 	bl	20021850 <sd1_wait_read>
200215e2:	6823      	ldr	r3, [r4, #0]
200215e4:	0618      	lsls	r0, r3, #24
200215e6:	d4f5      	bmi.n	200215d4 <sdio_emmc_init+0x17c>
200215e8:	6823      	ldr	r3, [r4, #0]
200215ea:	0659      	lsls	r1, r3, #25
200215ec:	d447      	bmi.n	2002167e <sdio_emmc_init+0x226>
200215ee:	2680      	movs	r6, #128	@ 0x80
200215f0:	3e01      	subs	r6, #1
200215f2:	f8d4 3200 	ldr.w	r3, [r4, #512]	@ 0x200
200215f6:	d1fb      	bne.n	200215f0 <sdio_emmc_init+0x198>
200215f8:	2101      	movs	r1, #1
200215fa:	4630      	mov	r0, r6
200215fc:	f000 f918 	bl	20021830 <sd1_read>
20021600:	2014      	movs	r0, #20
20021602:	f000 fc60 	bl	20021ec6 <HAL_Delay_us>
20021606:	f04f 33ff 	mov.w	r3, #4294967295
2002160a:	4631      	mov	r1, r6
2002160c:	2011      	movs	r0, #17
2002160e:	6023      	str	r3, [r4, #0]
20021610:	f000 f8c0 	bl	20021794 <sd1_send_cmd>
20021614:	2801      	cmp	r0, #1
20021616:	d034      	beq.n	20021682 <sdio_emmc_init+0x22a>
20021618:	2802      	cmp	r0, #2
2002161a:	d034      	beq.n	20021686 <sdio_emmc_init+0x22e>
2002161c:	ab06      	add	r3, sp, #24
2002161e:	9500      	str	r5, [sp, #0]
20021620:	aa05      	add	r2, sp, #20
20021622:	a904      	add	r1, sp, #16
20021624:	f10d 000f 	add.w	r0, sp, #15
20021628:	f000 f8f2 	bl	20021810 <sd1_get_rsp>
2002162c:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021630:	2b11      	cmp	r3, #17
20021632:	d12a      	bne.n	2002168a <sdio_emmc_init+0x232>
20021634:	2320      	movs	r3, #32
20021636:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021638:	f000 f90a 	bl	20021850 <sd1_wait_read>
2002163c:	6823      	ldr	r3, [r4, #0]
2002163e:	061a      	lsls	r2, r3, #24
20021640:	d425      	bmi.n	2002168e <sdio_emmc_init+0x236>
20021642:	6823      	ldr	r3, [r4, #0]
20021644:	065b      	lsls	r3, r3, #25
20021646:	d424      	bmi.n	20021692 <sdio_emmc_init+0x23a>
20021648:	2080      	movs	r0, #128	@ 0x80
2002164a:	4b13      	ldr	r3, [pc, #76]	@ (20021698 <sdio_emmc_init+0x240>)
2002164c:	3801      	subs	r0, #1
2002164e:	f8d3 2200 	ldr.w	r2, [r3, #512]	@ 0x200
20021652:	d1fb      	bne.n	2002164c <sdio_emmc_init+0x1f4>
20021654:	e7bf      	b.n	200215d6 <sdio_emmc_init+0x17e>
20021656:	2003      	movs	r0, #3
20021658:	e7bd      	b.n	200215d6 <sdio_emmc_init+0x17e>
2002165a:	2004      	movs	r0, #4
2002165c:	e7bb      	b.n	200215d6 <sdio_emmc_init+0x17e>
2002165e:	2005      	movs	r0, #5
20021660:	e7b9      	b.n	200215d6 <sdio_emmc_init+0x17e>
20021662:	2006      	movs	r0, #6
20021664:	e7b7      	b.n	200215d6 <sdio_emmc_init+0x17e>
20021666:	2007      	movs	r0, #7
20021668:	e7b5      	b.n	200215d6 <sdio_emmc_init+0x17e>
2002166a:	2008      	movs	r0, #8
2002166c:	e7b3      	b.n	200215d6 <sdio_emmc_init+0x17e>
2002166e:	2009      	movs	r0, #9
20021670:	e7b1      	b.n	200215d6 <sdio_emmc_init+0x17e>
20021672:	200a      	movs	r0, #10
20021674:	e7af      	b.n	200215d6 <sdio_emmc_init+0x17e>
20021676:	200b      	movs	r0, #11
20021678:	e7ad      	b.n	200215d6 <sdio_emmc_init+0x17e>
2002167a:	200c      	movs	r0, #12
2002167c:	e7ab      	b.n	200215d6 <sdio_emmc_init+0x17e>
2002167e:	200e      	movs	r0, #14
20021680:	e7a9      	b.n	200215d6 <sdio_emmc_init+0x17e>
20021682:	2011      	movs	r0, #17
20021684:	e7a7      	b.n	200215d6 <sdio_emmc_init+0x17e>
20021686:	2012      	movs	r0, #18
20021688:	e7a5      	b.n	200215d6 <sdio_emmc_init+0x17e>
2002168a:	2013      	movs	r0, #19
2002168c:	e7a3      	b.n	200215d6 <sdio_emmc_init+0x17e>
2002168e:	2014      	movs	r0, #20
20021690:	e7a1      	b.n	200215d6 <sdio_emmc_init+0x17e>
20021692:	2015      	movs	r0, #21
20021694:	e79f      	b.n	200215d6 <sdio_emmc_init+0x17e>
20021696:	bf00      	nop
20021698:	50045000 	.word	0x50045000
2002169c:	00016700 	.word	0x00016700
200216a0:	40000080 	.word	0x40000080

200216a4 <emmc_read_data>:
200216a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200216a8:	4607      	mov	r7, r0
200216aa:	f04f 38ff 	mov.w	r8, #4294967295
200216ae:	b088      	sub	sp, #32
200216b0:	2000      	movs	r0, #0
200216b2:	460d      	mov	r5, r1
200216b4:	4e1d      	ldr	r6, [pc, #116]	@ (2002172c <emmc_read_data+0x88>)
200216b6:	2101      	movs	r1, #1
200216b8:	4614      	mov	r4, r2
200216ba:	f000 f8b9 	bl	20021830 <sd1_read>
200216be:	2014      	movs	r0, #20
200216c0:	f000 fc01 	bl	20021ec6 <HAL_Delay_us>
200216c4:	2011      	movs	r0, #17
200216c6:	f8c6 8000 	str.w	r8, [r6]
200216ca:	0a79      	lsrs	r1, r7, #9
200216cc:	f000 f862 	bl	20021794 <sd1_send_cmd>
200216d0:	4440      	add	r0, r8
200216d2:	b2c0      	uxtb	r0, r0
200216d4:	2801      	cmp	r0, #1
200216d6:	d803      	bhi.n	200216e0 <emmc_read_data+0x3c>
200216d8:	2000      	movs	r0, #0
200216da:	b008      	add	sp, #32
200216dc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200216e0:	ab07      	add	r3, sp, #28
200216e2:	9300      	str	r3, [sp, #0]
200216e4:	aa05      	add	r2, sp, #20
200216e6:	ab06      	add	r3, sp, #24
200216e8:	a904      	add	r1, sp, #16
200216ea:	f10d 000f 	add.w	r0, sp, #15
200216ee:	f000 f88f 	bl	20021810 <sd1_get_rsp>
200216f2:	f89d 300f 	ldrb.w	r3, [sp, #15]
200216f6:	2b11      	cmp	r3, #17
200216f8:	d1ee      	bne.n	200216d8 <emmc_read_data+0x34>
200216fa:	2320      	movs	r3, #32
200216fc:	f8c6 8000 	str.w	r8, [r6]
20021700:	62f3      	str	r3, [r6, #44]	@ 0x2c
20021702:	f000 f8a5 	bl	20021850 <sd1_wait_read>
20021706:	6833      	ldr	r3, [r6, #0]
20021708:	061a      	lsls	r2, r3, #24
2002170a:	d4e5      	bmi.n	200216d8 <emmc_read_data+0x34>
2002170c:	6833      	ldr	r3, [r6, #0]
2002170e:	065b      	lsls	r3, r3, #25
20021710:	d4e2      	bmi.n	200216d8 <emmc_read_data+0x34>
20021712:	f024 0303 	bic.w	r3, r4, #3
20021716:	442b      	add	r3, r5
20021718:	429d      	cmp	r5, r3
2002171a:	d101      	bne.n	20021720 <emmc_read_data+0x7c>
2002171c:	4620      	mov	r0, r4
2002171e:	e7dc      	b.n	200216da <emmc_read_data+0x36>
20021720:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
20021724:	f845 2b04 	str.w	r2, [r5], #4
20021728:	e7f6      	b.n	20021718 <emmc_read_data+0x74>
2002172a:	bf00      	nop
2002172c:	50045000 	.word	0x50045000

20021730 <sd1_init>:
20021730:	b510      	push	{r4, lr}
20021732:	f04f 44a0 	mov.w	r4, #1342177280	@ 0x50000000
20021736:	68e3      	ldr	r3, [r4, #12]
20021738:	2064      	movs	r0, #100	@ 0x64
2002173a:	f023 0310 	bic.w	r3, r3, #16
2002173e:	60e3      	str	r3, [r4, #12]
20021740:	f000 fbc1 	bl	20021ec6 <HAL_Delay_us>
20021744:	68e3      	ldr	r3, [r4, #12]
20021746:	4a07      	ldr	r2, [pc, #28]	@ (20021764 <sd1_init+0x34>)
20021748:	f043 0310 	orr.w	r3, r3, #16
2002174c:	60e3      	str	r3, [r4, #12]
2002174e:	6913      	ldr	r3, [r2, #16]
20021750:	f043 0302 	orr.w	r3, r3, #2
20021754:	6113      	str	r3, [r2, #16]
20021756:	f44f 7280 	mov.w	r2, #256	@ 0x100
2002175a:	4b03      	ldr	r3, [pc, #12]	@ (20021768 <sd1_init+0x38>)
2002175c:	631a      	str	r2, [r3, #48]	@ 0x30
2002175e:	2200      	movs	r2, #0
20021760:	63da      	str	r2, [r3, #60]	@ 0x3c
20021762:	bd10      	pop	{r4, pc}
20021764:	5000b000 	.word	0x5000b000
20021768:	50045000 	.word	0x50045000

2002176c <sd1_wait_cmd>:
2002176c:	4b08      	ldr	r3, [pc, #32]	@ (20021790 <sd1_wait_cmd+0x24>)
2002176e:	681a      	ldr	r2, [r3, #0]
20021770:	f012 0f0a 	tst.w	r2, #10
20021774:	d0fb      	beq.n	2002176e <sd1_wait_cmd+0x2>
20021776:	2202      	movs	r2, #2
20021778:	601a      	str	r2, [r3, #0]
2002177a:	681a      	ldr	r2, [r3, #0]
2002177c:	0712      	lsls	r2, r2, #28
2002177e:	bf5f      	itttt	pl
20021780:	6818      	ldrpl	r0, [r3, #0]
20021782:	f3c0 0080 	ubfxpl	r0, r0, #2, #1
20021786:	0040      	lslpl	r0, r0, #1
20021788:	b2c0      	uxtbpl	r0, r0
2002178a:	bf48      	it	mi
2002178c:	2001      	movmi	r0, #1
2002178e:	4770      	bx	lr
20021790:	50045000 	.word	0x50045000

20021794 <sd1_send_cmd>:
20021794:	4b0e      	ldr	r3, [pc, #56]	@ (200217d0 <sd1_send_cmd+0x3c>)
20021796:	280f      	cmp	r0, #15
20021798:	6099      	str	r1, [r3, #8]
2002179a:	ea4f 4380 	mov.w	r3, r0, lsl #18
2002179e:	d813      	bhi.n	200217c8 <sd1_send_cmd+0x34>
200217a0:	2201      	movs	r2, #1
200217a2:	f248 0111 	movw	r1, #32785	@ 0x8011
200217a6:	4082      	lsls	r2, r0
200217a8:	420a      	tst	r2, r1
200217aa:	d105      	bne.n	200217b8 <sd1_send_cmd+0x24>
200217ac:	f240 6104 	movw	r1, #1540	@ 0x604
200217b0:	420a      	tst	r2, r1
200217b2:	d009      	beq.n	200217c8 <sd1_send_cmd+0x34>
200217b4:	f443 3340 	orr.w	r3, r3, #196608	@ 0x30000
200217b8:	4a05      	ldr	r2, [pc, #20]	@ (200217d0 <sd1_send_cmd+0x3c>)
200217ba:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
200217be:	f043 0301 	orr.w	r3, r3, #1
200217c2:	6053      	str	r3, [r2, #4]
200217c4:	f7ff bfd2 	b.w	2002176c <sd1_wait_cmd>
200217c8:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
200217cc:	e7f4      	b.n	200217b8 <sd1_send_cmd+0x24>
200217ce:	bf00      	nop
200217d0:	50045000 	.word	0x50045000

200217d4 <sd1_send_acmd>:
200217d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200217d6:	4605      	mov	r5, r0
200217d8:	460f      	mov	r7, r1
200217da:	2037      	movs	r0, #55	@ 0x37
200217dc:	0411      	lsls	r1, r2, #16
200217de:	f7ff ffd9 	bl	20021794 <sd1_send_cmd>
200217e2:	4604      	mov	r4, r0
200217e4:	b968      	cbnz	r0, 20021802 <sd1_send_acmd+0x2e>
200217e6:	4b08      	ldr	r3, [pc, #32]	@ (20021808 <sd1_send_acmd+0x34>)
200217e8:	4e08      	ldr	r6, [pc, #32]	@ (2002180c <sd1_send_acmd+0x38>)
200217ea:	ea43 4385 	orr.w	r3, r3, r5, lsl #18
200217ee:	60b7      	str	r7, [r6, #8]
200217f0:	6073      	str	r3, [r6, #4]
200217f2:	f7ff ffbb 	bl	2002176c <sd1_wait_cmd>
200217f6:	2802      	cmp	r0, #2
200217f8:	d104      	bne.n	20021804 <sd1_send_acmd+0x30>
200217fa:	2d29      	cmp	r5, #41	@ 0x29
200217fc:	d102      	bne.n	20021804 <sd1_send_acmd+0x30>
200217fe:	2304      	movs	r3, #4
20021800:	6033      	str	r3, [r6, #0]
20021802:	4620      	mov	r0, r4
20021804:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20021806:	bf00      	nop
20021808:	00010101 	.word	0x00010101
2002180c:	50045000 	.word	0x50045000

20021810 <sd1_get_rsp>:
20021810:	b530      	push	{r4, r5, lr}
20021812:	4c06      	ldr	r4, [pc, #24]	@ (2002182c <sd1_get_rsp+0x1c>)
20021814:	68e5      	ldr	r5, [r4, #12]
20021816:	7005      	strb	r5, [r0, #0]
20021818:	6920      	ldr	r0, [r4, #16]
2002181a:	6008      	str	r0, [r1, #0]
2002181c:	6961      	ldr	r1, [r4, #20]
2002181e:	6011      	str	r1, [r2, #0]
20021820:	69a2      	ldr	r2, [r4, #24]
20021822:	601a      	str	r2, [r3, #0]
20021824:	69e2      	ldr	r2, [r4, #28]
20021826:	9b03      	ldr	r3, [sp, #12]
20021828:	601a      	str	r2, [r3, #0]
2002182a:	bd30      	pop	{r4, r5, pc}
2002182c:	50045000 	.word	0x50045000

20021830 <sd1_read>:
20021830:	f04f 33ff 	mov.w	r3, #4294967295
20021834:	4a04      	ldr	r2, [pc, #16]	@ (20021848 <sd1_read+0x18>)
20021836:	eb03 2341 	add.w	r3, r3, r1, lsl #9
2002183a:	6293      	str	r3, [r2, #40]	@ 0x28
2002183c:	4b03      	ldr	r3, [pc, #12]	@ (2002184c <sd1_read+0x1c>)
2002183e:	ea43 23c0 	orr.w	r3, r3, r0, lsl #11
20021842:	6253      	str	r3, [r2, #36]	@ 0x24
20021844:	4770      	bx	lr
20021846:	bf00      	nop
20021848:	50045000 	.word	0x50045000
2002184c:	01ff0301 	.word	0x01ff0301

20021850 <sd1_wait_read>:
20021850:	4b08      	ldr	r3, [pc, #32]	@ (20021874 <sd1_wait_read+0x24>)
20021852:	681a      	ldr	r2, [r3, #0]
20021854:	f012 0fe0 	tst.w	r2, #224	@ 0xe0
20021858:	d0fb      	beq.n	20021852 <sd1_wait_read+0x2>
2002185a:	2220      	movs	r2, #32
2002185c:	601a      	str	r2, [r3, #0]
2002185e:	681a      	ldr	r2, [r3, #0]
20021860:	0612      	lsls	r2, r2, #24
20021862:	bf5f      	itttt	pl
20021864:	6818      	ldrpl	r0, [r3, #0]
20021866:	f3c0 1080 	ubfxpl	r0, r0, #6, #1
2002186a:	0040      	lslpl	r0, r0, #1
2002186c:	b2c0      	uxtbpl	r0, r0
2002186e:	bf48      	it	mi
20021870:	2001      	movmi	r0, #1
20021872:	4770      	bx	lr
20021874:	50045000 	.word	0x50045000

20021878 <sdmmc1_sdnand>:
20021878:	b5f0      	push	{r4, r5, r6, r7, lr}
2002187a:	b08d      	sub	sp, #52	@ 0x34
2002187c:	f7ff ff58 	bl	20021730 <sd1_init>
20021880:	4c8f      	ldr	r4, [pc, #572]	@ (20021ac0 <sdmmc1_sdnand+0x248>)
20021882:	4b90      	ldr	r3, [pc, #576]	@ (20021ac4 <sdmmc1_sdnand+0x24c>)
20021884:	2500      	movs	r5, #0
20021886:	6323      	str	r3, [r4, #48]	@ 0x30
20021888:	6b23      	ldr	r3, [r4, #48]	@ 0x30
2002188a:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
2002188e:	f043 0302 	orr.w	r3, r3, #2
20021892:	6323      	str	r3, [r4, #48]	@ 0x30
20021894:	f44f 1380 	mov.w	r3, #1048576	@ 0x100000
20021898:	62e5      	str	r5, [r4, #44]	@ 0x2c
2002189a:	6223      	str	r3, [r4, #32]
2002189c:	f000 fb13 	bl	20021ec6 <HAL_Delay_us>
200218a0:	4629      	mov	r1, r5
200218a2:	4628      	mov	r0, r5
200218a4:	f7ff ff76 	bl	20021794 <sd1_send_cmd>
200218a8:	2301      	movs	r3, #1
200218aa:	65e3      	str	r3, [r4, #92]	@ 0x5c
200218ac:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
200218ae:	079a      	lsls	r2, r3, #30
200218b0:	d5fc      	bpl.n	200218ac <sdmmc1_sdnand+0x34>
200218b2:	2014      	movs	r0, #20
200218b4:	f000 fb07 	bl	20021ec6 <HAL_Delay_us>
200218b8:	f44f 71d5 	mov.w	r1, #426	@ 0x1aa
200218bc:	2008      	movs	r0, #8
200218be:	f7ff ff69 	bl	20021794 <sd1_send_cmd>
200218c2:	3801      	subs	r0, #1
200218c4:	b2c0      	uxtb	r0, r0
200218c6:	2801      	cmp	r0, #1
200218c8:	d802      	bhi.n	200218d0 <sdmmc1_sdnand+0x58>
200218ca:	2038      	movs	r0, #56	@ 0x38
200218cc:	b00d      	add	sp, #52	@ 0x34
200218ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
200218d0:	ac07      	add	r4, sp, #28
200218d2:	ab06      	add	r3, sp, #24
200218d4:	9400      	str	r4, [sp, #0]
200218d6:	aa05      	add	r2, sp, #20
200218d8:	a904      	add	r1, sp, #16
200218da:	f10d 000f 	add.w	r0, sp, #15
200218de:	f7ff ff97 	bl	20021810 <sd1_get_rsp>
200218e2:	f89d 300f 	ldrb.w	r3, [sp, #15]
200218e6:	2b08      	cmp	r3, #8
200218e8:	d1ef      	bne.n	200218ca <sdmmc1_sdnand+0x52>
200218ea:	9b04      	ldr	r3, [sp, #16]
200218ec:	f5b3 7fd5 	cmp.w	r3, #426	@ 0x1aa
200218f0:	d1eb      	bne.n	200218ca <sdmmc1_sdnand+0x52>
200218f2:	2014      	movs	r0, #20
200218f4:	f000 fae7 	bl	20021ec6 <HAL_Delay_us>
200218f8:	2200      	movs	r2, #0
200218fa:	2029      	movs	r0, #41	@ 0x29
200218fc:	4972      	ldr	r1, [pc, #456]	@ (20021ac8 <sdmmc1_sdnand+0x250>)
200218fe:	f7ff ff69 	bl	200217d4 <sd1_send_acmd>
20021902:	2801      	cmp	r0, #1
20021904:	f000 80d0 	beq.w	20021aa8 <sdmmc1_sdnand+0x230>
20021908:	ab06      	add	r3, sp, #24
2002190a:	9400      	str	r4, [sp, #0]
2002190c:	aa05      	add	r2, sp, #20
2002190e:	a904      	add	r1, sp, #16
20021910:	f10d 000f 	add.w	r0, sp, #15
20021914:	f7ff ff7c 	bl	20021810 <sd1_get_rsp>
20021918:	9b04      	ldr	r3, [sp, #16]
2002191a:	2b00      	cmp	r3, #0
2002191c:	db03      	blt.n	20021926 <sdmmc1_sdnand+0xae>
2002191e:	2002      	movs	r0, #2
20021920:	f000 fad1 	bl	20021ec6 <HAL_Delay_us>
20021924:	e7e5      	b.n	200218f2 <sdmmc1_sdnand+0x7a>
20021926:	2014      	movs	r0, #20
20021928:	f000 facd 	bl	20021ec6 <HAL_Delay_us>
2002192c:	2100      	movs	r1, #0
2002192e:	2002      	movs	r0, #2
20021930:	f7ff ff30 	bl	20021794 <sd1_send_cmd>
20021934:	3801      	subs	r0, #1
20021936:	b2c0      	uxtb	r0, r0
20021938:	2801      	cmp	r0, #1
2002193a:	f240 80b7 	bls.w	20021aac <sdmmc1_sdnand+0x234>
2002193e:	ab08      	add	r3, sp, #32
20021940:	aa0a      	add	r2, sp, #40	@ 0x28
20021942:	a90b      	add	r1, sp, #44	@ 0x2c
20021944:	9300      	str	r3, [sp, #0]
20021946:	f10d 000f 	add.w	r0, sp, #15
2002194a:	ab09      	add	r3, sp, #36	@ 0x24
2002194c:	f7ff ff60 	bl	20021810 <sd1_get_rsp>
20021950:	2014      	movs	r0, #20
20021952:	f000 fab8 	bl	20021ec6 <HAL_Delay_us>
20021956:	2100      	movs	r1, #0
20021958:	2003      	movs	r0, #3
2002195a:	f7ff ff1b 	bl	20021794 <sd1_send_cmd>
2002195e:	3801      	subs	r0, #1
20021960:	b2c0      	uxtb	r0, r0
20021962:	2801      	cmp	r0, #1
20021964:	d801      	bhi.n	2002196a <sdmmc1_sdnand+0xf2>
20021966:	2033      	movs	r0, #51	@ 0x33
20021968:	e7b0      	b.n	200218cc <sdmmc1_sdnand+0x54>
2002196a:	ab06      	add	r3, sp, #24
2002196c:	9400      	str	r4, [sp, #0]
2002196e:	aa05      	add	r2, sp, #20
20021970:	a904      	add	r1, sp, #16
20021972:	f10d 000f 	add.w	r0, sp, #15
20021976:	f7ff ff4b 	bl	20021810 <sd1_get_rsp>
2002197a:	f89d 300f 	ldrb.w	r3, [sp, #15]
2002197e:	2b03      	cmp	r3, #3
20021980:	d1f1      	bne.n	20021966 <sdmmc1_sdnand+0xee>
20021982:	9e04      	ldr	r6, [sp, #16]
20021984:	2014      	movs	r0, #20
20021986:	0c35      	lsrs	r5, r6, #16
20021988:	042d      	lsls	r5, r5, #16
2002198a:	f000 fa9c 	bl	20021ec6 <HAL_Delay_us>
2002198e:	4629      	mov	r1, r5
20021990:	2009      	movs	r0, #9
20021992:	f7ff feff 	bl	20021794 <sd1_send_cmd>
20021996:	3801      	subs	r0, #1
20021998:	b2c0      	uxtb	r0, r0
2002199a:	2801      	cmp	r0, #1
2002199c:	f240 8088 	bls.w	20021ab0 <sdmmc1_sdnand+0x238>
200219a0:	9400      	str	r4, [sp, #0]
200219a2:	ab06      	add	r3, sp, #24
200219a4:	aa05      	add	r2, sp, #20
200219a6:	a904      	add	r1, sp, #16
200219a8:	f10d 000f 	add.w	r0, sp, #15
200219ac:	f7ff ff30 	bl	20021810 <sd1_get_rsp>
200219b0:	e9dd 2004 	ldrd	r2, r0, [sp, #16]
200219b4:	9c06      	ldr	r4, [sp, #24]
200219b6:	9907      	ldr	r1, [sp, #28]
200219b8:	0e23      	lsrs	r3, r4, #24
200219ba:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
200219be:	0e01      	lsrs	r1, r0, #24
200219c0:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
200219c4:	9105      	str	r1, [sp, #20]
200219c6:	0e11      	lsrs	r1, r2, #24
200219c8:	9304      	str	r3, [sp, #16]
200219ca:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
200219ce:	0212      	lsls	r2, r2, #8
200219d0:	0f9b      	lsrs	r3, r3, #30
200219d2:	9106      	str	r1, [sp, #24]
200219d4:	9207      	str	r2, [sp, #28]
200219d6:	d01e      	beq.n	20021a16 <sdmmc1_sdnand+0x19e>
200219d8:	2b01      	cmp	r3, #1
200219da:	d16b      	bne.n	20021ab4 <sdmmc1_sdnand+0x23c>
200219dc:	2300      	movs	r3, #0
200219de:	4a3b      	ldr	r2, [pc, #236]	@ (20021acc <sdmmc1_sdnand+0x254>)
200219e0:	4c37      	ldr	r4, [pc, #220]	@ (20021ac0 <sdmmc1_sdnand+0x248>)
200219e2:	7013      	strb	r3, [r2, #0]
200219e4:	f44f 63a0 	mov.w	r3, #1280	@ 0x500
200219e8:	6323      	str	r3, [r4, #48]	@ 0x30
200219ea:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200219ec:	2702      	movs	r7, #2
200219ee:	f043 0302 	orr.w	r3, r3, #2
200219f2:	6323      	str	r3, [r4, #48]	@ 0x30
200219f4:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
200219f8:	2014      	movs	r0, #20
200219fa:	6223      	str	r3, [r4, #32]
200219fc:	63e7      	str	r7, [r4, #60]	@ 0x3c
200219fe:	f000 fa62 	bl	20021ec6 <HAL_Delay_us>
20021a02:	4629      	mov	r1, r5
20021a04:	2007      	movs	r0, #7
20021a06:	f7ff fec5 	bl	20021794 <sd1_send_cmd>
20021a0a:	3801      	subs	r0, #1
20021a0c:	b2c0      	uxtb	r0, r0
20021a0e:	2801      	cmp	r0, #1
20021a10:	d803      	bhi.n	20021a1a <sdmmc1_sdnand+0x1a2>
20021a12:	2037      	movs	r0, #55	@ 0x37
20021a14:	e75a      	b.n	200218cc <sdmmc1_sdnand+0x54>
20021a16:	2301      	movs	r3, #1
20021a18:	e7e1      	b.n	200219de <sdmmc1_sdnand+0x166>
20021a1a:	ad07      	add	r5, sp, #28
20021a1c:	ab06      	add	r3, sp, #24
20021a1e:	9500      	str	r5, [sp, #0]
20021a20:	aa05      	add	r2, sp, #20
20021a22:	a904      	add	r1, sp, #16
20021a24:	f10d 000f 	add.w	r0, sp, #15
20021a28:	f7ff fef2 	bl	20021810 <sd1_get_rsp>
20021a2c:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021a30:	2b07      	cmp	r3, #7
20021a32:	d1ee      	bne.n	20021a12 <sdmmc1_sdnand+0x19a>
20021a34:	2014      	movs	r0, #20
20021a36:	f000 fa46 	bl	20021ec6 <HAL_Delay_us>
20021a3a:	4639      	mov	r1, r7
20021a3c:	2006      	movs	r0, #6
20021a3e:	0c32      	lsrs	r2, r6, #16
20021a40:	f7ff fec8 	bl	200217d4 <sd1_send_acmd>
20021a44:	3801      	subs	r0, #1
20021a46:	b2c0      	uxtb	r0, r0
20021a48:	2801      	cmp	r0, #1
20021a4a:	d935      	bls.n	20021ab8 <sdmmc1_sdnand+0x240>
20021a4c:	2101      	movs	r1, #1
20021a4e:	4608      	mov	r0, r1
20021a50:	f7ff feee 	bl	20021830 <sd1_read>
20021a54:	2014      	movs	r0, #20
20021a56:	f000 fa36 	bl	20021ec6 <HAL_Delay_us>
20021a5a:	2100      	movs	r1, #0
20021a5c:	2011      	movs	r0, #17
20021a5e:	f7ff fe99 	bl	20021794 <sd1_send_cmd>
20021a62:	3801      	subs	r0, #1
20021a64:	b2c0      	uxtb	r0, r0
20021a66:	2801      	cmp	r0, #1
20021a68:	d801      	bhi.n	20021a6e <sdmmc1_sdnand+0x1f6>
20021a6a:	2052      	movs	r0, #82	@ 0x52
20021a6c:	e72e      	b.n	200218cc <sdmmc1_sdnand+0x54>
20021a6e:	ab06      	add	r3, sp, #24
20021a70:	9500      	str	r5, [sp, #0]
20021a72:	aa05      	add	r2, sp, #20
20021a74:	a904      	add	r1, sp, #16
20021a76:	f10d 000f 	add.w	r0, sp, #15
20021a7a:	f7ff fec9 	bl	20021810 <sd1_get_rsp>
20021a7e:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021a82:	2b11      	cmp	r3, #17
20021a84:	d1f1      	bne.n	20021a6a <sdmmc1_sdnand+0x1f2>
20021a86:	f04f 33ff 	mov.w	r3, #4294967295
20021a8a:	6023      	str	r3, [r4, #0]
20021a8c:	2320      	movs	r3, #32
20021a8e:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021a90:	f7ff fede 	bl	20021850 <sd1_wait_read>
20021a94:	6823      	ldr	r3, [r4, #0]
20021a96:	061b      	lsls	r3, r3, #24
20021a98:	d410      	bmi.n	20021abc <sdmmc1_sdnand+0x244>
20021a9a:	6823      	ldr	r3, [r4, #0]
20021a9c:	f013 0f40 	tst.w	r3, #64	@ 0x40
20021aa0:	bf14      	ite	ne
20021aa2:	2044      	movne	r0, #68	@ 0x44
20021aa4:	2001      	moveq	r0, #1
20021aa6:	e711      	b.n	200218cc <sdmmc1_sdnand+0x54>
20021aa8:	2034      	movs	r0, #52	@ 0x34
20021aaa:	e70f      	b.n	200218cc <sdmmc1_sdnand+0x54>
20021aac:	2032      	movs	r0, #50	@ 0x32
20021aae:	e70d      	b.n	200218cc <sdmmc1_sdnand+0x54>
20021ab0:	2039      	movs	r0, #57	@ 0x39
20021ab2:	e70b      	b.n	200218cc <sdmmc1_sdnand+0x54>
20021ab4:	2054      	movs	r0, #84	@ 0x54
20021ab6:	e709      	b.n	200218cc <sdmmc1_sdnand+0x54>
20021ab8:	2036      	movs	r0, #54	@ 0x36
20021aba:	e707      	b.n	200218cc <sdmmc1_sdnand+0x54>
20021abc:	204f      	movs	r0, #79	@ 0x4f
20021abe:	e705      	b.n	200218cc <sdmmc1_sdnand+0x54>
20021ac0:	50045000 	.word	0x50045000
20021ac4:	00016700 	.word	0x00016700
20021ac8:	40ff8000 	.word	0x40ff8000
20021acc:	20042c08 	.word	0x20042c08

20021ad0 <sd_read_data>:
20021ad0:	b570      	push	{r4, r5, r6, lr}
20021ad2:	460d      	mov	r5, r1
20021ad4:	2101      	movs	r1, #1
20021ad6:	b088      	sub	sp, #32
20021ad8:	4606      	mov	r6, r0
20021ada:	4608      	mov	r0, r1
20021adc:	4614      	mov	r4, r2
20021ade:	f7ff fea7 	bl	20021830 <sd1_read>
20021ae2:	2014      	movs	r0, #20
20021ae4:	f000 f9ef 	bl	20021ec6 <HAL_Delay_us>
20021ae8:	4b1a      	ldr	r3, [pc, #104]	@ (20021b54 <sd_read_data+0x84>)
20021aea:	781b      	ldrb	r3, [r3, #0]
20021aec:	b903      	cbnz	r3, 20021af0 <sd_read_data+0x20>
20021aee:	0a76      	lsrs	r6, r6, #9
20021af0:	4631      	mov	r1, r6
20021af2:	2011      	movs	r0, #17
20021af4:	f7ff fe4e 	bl	20021794 <sd1_send_cmd>
20021af8:	3801      	subs	r0, #1
20021afa:	b2c0      	uxtb	r0, r0
20021afc:	2801      	cmp	r0, #1
20021afe:	d802      	bhi.n	20021b06 <sd_read_data+0x36>
20021b00:	2000      	movs	r0, #0
20021b02:	b008      	add	sp, #32
20021b04:	bd70      	pop	{r4, r5, r6, pc}
20021b06:	ab07      	add	r3, sp, #28
20021b08:	9300      	str	r3, [sp, #0]
20021b0a:	aa05      	add	r2, sp, #20
20021b0c:	ab06      	add	r3, sp, #24
20021b0e:	a904      	add	r1, sp, #16
20021b10:	f10d 000f 	add.w	r0, sp, #15
20021b14:	f7ff fe7c 	bl	20021810 <sd1_get_rsp>
20021b18:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021b1c:	2b11      	cmp	r3, #17
20021b1e:	d1ef      	bne.n	20021b00 <sd_read_data+0x30>
20021b20:	f04f 33ff 	mov.w	r3, #4294967295
20021b24:	4e0c      	ldr	r6, [pc, #48]	@ (20021b58 <sd_read_data+0x88>)
20021b26:	6033      	str	r3, [r6, #0]
20021b28:	2320      	movs	r3, #32
20021b2a:	62f3      	str	r3, [r6, #44]	@ 0x2c
20021b2c:	f7ff fe90 	bl	20021850 <sd1_wait_read>
20021b30:	6833      	ldr	r3, [r6, #0]
20021b32:	061a      	lsls	r2, r3, #24
20021b34:	d4e4      	bmi.n	20021b00 <sd_read_data+0x30>
20021b36:	6833      	ldr	r3, [r6, #0]
20021b38:	065b      	lsls	r3, r3, #25
20021b3a:	d4e1      	bmi.n	20021b00 <sd_read_data+0x30>
20021b3c:	f024 0303 	bic.w	r3, r4, #3
20021b40:	442b      	add	r3, r5
20021b42:	429d      	cmp	r5, r3
20021b44:	d101      	bne.n	20021b4a <sd_read_data+0x7a>
20021b46:	4620      	mov	r0, r4
20021b48:	e7db      	b.n	20021b02 <sd_read_data+0x32>
20021b4a:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
20021b4e:	f845 2b04 	str.w	r2, [r5], #4
20021b52:	e7f6      	b.n	20021b42 <sd_read_data+0x72>
20021b54:	20042c08 	.word	0x20042c08
20021b58:	50045000 	.word	0x50045000

20021b5c <sifli_hash_calculate>:
20021b5c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20021b60:	460c      	mov	r4, r1
20021b62:	4615      	mov	r5, r2
20021b64:	4699      	mov	r9, r3
20021b66:	4680      	mov	r8, r0
20021b68:	2800      	cmp	r0, #0
20021b6a:	d03f      	beq.n	20021bec <sifli_hash_calculate+0x90>
20021b6c:	2900      	cmp	r1, #0
20021b6e:	d03d      	beq.n	20021bec <sifli_hash_calculate+0x90>
20021b70:	2a00      	cmp	r2, #0
20021b72:	d03b      	beq.n	20021bec <sifli_hash_calculate+0x90>
20021b74:	2b03      	cmp	r3, #3
20021b76:	d839      	bhi.n	20021bec <sifli_hash_calculate+0x90>
20021b78:	f000 fab8 	bl	200220ec <HAL_HASH_reset>
20021b7c:	2200      	movs	r2, #0
20021b7e:	4649      	mov	r1, r9
20021b80:	4610      	mov	r0, r2
20021b82:	f000 fabb 	bl	200220fc <HAL_HASH_init>
20021b86:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
20021b8a:	d929      	bls.n	20021be0 <sifli_hash_calculate+0x84>
20021b8c:	2600      	movs	r6, #0
20021b8e:	4637      	mov	r7, r6
20021b90:	f506 7680 	add.w	r6, r6, #256	@ 0x100
20021b94:	42a6      	cmp	r6, r4
20021b96:	bf34      	ite	cc
20021b98:	f04f 0a00 	movcc.w	sl, #0
20021b9c:	f04f 0a01 	movcs.w	sl, #1
20021ba0:	b14f      	cbz	r7, 20021bb6 <sifli_hash_calculate+0x5a>
20021ba2:	f000 faa3 	bl	200220ec <HAL_HASH_reset>
20021ba6:	42a6      	cmp	r6, r4
20021ba8:	bf2c      	ite	cs
20021baa:	463a      	movcs	r2, r7
20021bac:	2200      	movcc	r2, #0
20021bae:	4649      	mov	r1, r9
20021bb0:	4628      	mov	r0, r5
20021bb2:	f000 faa3 	bl	200220fc <HAL_HASH_init>
20021bb6:	42a6      	cmp	r6, r4
20021bb8:	bf34      	ite	cc
20021bba:	f44f 7180 	movcc.w	r1, #256	@ 0x100
20021bbe:	1be1      	subcs	r1, r4, r7
20021bc0:	4652      	mov	r2, sl
20021bc2:	eb08 0007 	add.w	r0, r8, r7
20021bc6:	f000 fa73 	bl	200220b0 <HAL_HASH_run>
20021bca:	4628      	mov	r0, r5
20021bcc:	f000 fac4 	bl	20022158 <HAL_HASH_result>
20021bd0:	42a6      	cmp	r6, r4
20021bd2:	d3dc      	bcc.n	20021b8e <sifli_hash_calculate+0x32>
20021bd4:	4628      	mov	r0, r5
20021bd6:	f000 fabf 	bl	20022158 <HAL_HASH_result>
20021bda:	2000      	movs	r0, #0
20021bdc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20021be0:	2201      	movs	r2, #1
20021be2:	4621      	mov	r1, r4
20021be4:	4640      	mov	r0, r8
20021be6:	f000 fa63 	bl	200220b0 <HAL_HASH_run>
20021bea:	e7f3      	b.n	20021bd4 <sifli_hash_calculate+0x78>
20021bec:	f04f 30ff 	mov.w	r0, #4294967295
20021bf0:	e7f4      	b.n	20021bdc <sifli_hash_calculate+0x80>

20021bf2 <sifli_hash_verify>:
20021bf2:	b5f0      	push	{r4, r5, r6, r7, lr}
20021bf4:	4605      	mov	r5, r0
20021bf6:	b089      	sub	sp, #36	@ 0x24
20021bf8:	460f      	mov	r7, r1
20021bfa:	4614      	mov	r4, r2
20021bfc:	2100      	movs	r1, #0
20021bfe:	2220      	movs	r2, #32
20021c00:	4668      	mov	r0, sp
20021c02:	461e      	mov	r6, r3
20021c04:	f008 fdd4 	bl	2002a7b0 <memset>
20021c08:	b91d      	cbnz	r5, 20021c12 <sifli_hash_verify+0x20>
20021c0a:	f04f 30ff 	mov.w	r0, #4294967295
20021c0e:	b009      	add	sp, #36	@ 0x24
20021c10:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021c12:	2c00      	cmp	r4, #0
20021c14:	d0f9      	beq.n	20021c0a <sifli_hash_verify+0x18>
20021c16:	2302      	movs	r3, #2
20021c18:	466a      	mov	r2, sp
20021c1a:	4639      	mov	r1, r7
20021c1c:	4628      	mov	r0, r5
20021c1e:	f7ff ff9d 	bl	20021b5c <sifli_hash_calculate>
20021c22:	2800      	cmp	r0, #0
20021c24:	d1f1      	bne.n	20021c0a <sifli_hash_verify+0x18>
20021c26:	4632      	mov	r2, r6
20021c28:	4621      	mov	r1, r4
20021c2a:	4668      	mov	r0, sp
20021c2c:	f008 fdb0 	bl	2002a790 <memcmp>
20021c30:	3800      	subs	r0, #0
20021c32:	bf18      	it	ne
20021c34:	2001      	movne	r0, #1
20021c36:	4240      	negs	r0, r0
20021c38:	e7e9      	b.n	20021c0e <sifli_hash_verify+0x1c>

20021c3a <sifli_sigkey_pub_verify>:
20021c3a:	2300      	movs	r3, #0
20021c3c:	b537      	push	{r0, r1, r2, r4, r5, lr}
20021c3e:	4604      	mov	r4, r0
20021c40:	460d      	mov	r5, r1
20021c42:	2208      	movs	r2, #8
20021c44:	4669      	mov	r1, sp
20021c46:	2003      	movs	r0, #3
20021c48:	e9cd 3300 	strd	r3, r3, [sp]
20021c4c:	f7ff f9ec 	bl	20021028 <sifli_hw_efuse_read>
20021c50:	2808      	cmp	r0, #8
20021c52:	4603      	mov	r3, r0
20021c54:	d106      	bne.n	20021c64 <sifli_sigkey_pub_verify+0x2a>
20021c56:	466a      	mov	r2, sp
20021c58:	4629      	mov	r1, r5
20021c5a:	4620      	mov	r0, r4
20021c5c:	f7ff ffc9 	bl	20021bf2 <sifli_hash_verify>
20021c60:	b003      	add	sp, #12
20021c62:	bd30      	pop	{r4, r5, pc}
20021c64:	f04f 30ff 	mov.w	r0, #4294967295
20021c68:	e7fa      	b.n	20021c60 <sifli_sigkey_pub_verify+0x26>

20021c6a <sifli_img_sig_hash_verify>:
20021c6a:	b5f0      	push	{r4, r5, r6, r7, lr}
20021c6c:	461f      	mov	r7, r3
20021c6e:	4616      	mov	r6, r2
20021c70:	b08d      	sub	sp, #52	@ 0x34
20021c72:	2220      	movs	r2, #32
20021c74:	4604      	mov	r4, r0
20021c76:	460d      	mov	r5, r1
20021c78:	a804      	add	r0, sp, #16
20021c7a:	2100      	movs	r1, #0
20021c7c:	f008 fd98 	bl	2002a7b0 <memset>
20021c80:	2302      	movs	r3, #2
20021c82:	4639      	mov	r1, r7
20021c84:	4630      	mov	r0, r6
20021c86:	aa04      	add	r2, sp, #16
20021c88:	f7ff ff68 	bl	20021b5c <sifli_hash_calculate>
20021c8c:	b118      	cbz	r0, 20021c96 <sifli_img_sig_hash_verify+0x2c>
20021c8e:	f04f 30ff 	mov.w	r0, #4294967295
20021c92:	b00d      	add	sp, #52	@ 0x34
20021c94:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021c96:	a802      	add	r0, sp, #8
20021c98:	f007 fae0 	bl	2002925c <mbedtls_pk_init>
20021c9c:	4629      	mov	r1, r5
20021c9e:	f44f 7293 	mov.w	r2, #294	@ 0x126
20021ca2:	a802      	add	r0, sp, #8
20021ca4:	f007 fbe6 	bl	20029474 <mbedtls_pk_parse_public_key>
20021ca8:	4601      	mov	r1, r0
20021caa:	2800      	cmp	r0, #0
20021cac:	d1ef      	bne.n	20021c8e <sifli_img_sig_hash_verify+0x24>
20021cae:	2206      	movs	r2, #6
20021cb0:	9803      	ldr	r0, [sp, #12]
20021cb2:	f007 fc88 	bl	200295c6 <mbedtls_rsa_set_padding>
20021cb6:	f44f 7380 	mov.w	r3, #256	@ 0x100
20021cba:	2106      	movs	r1, #6
20021cbc:	e9cd 4300 	strd	r4, r3, [sp]
20021cc0:	aa04      	add	r2, sp, #16
20021cc2:	2320      	movs	r3, #32
20021cc4:	a802      	add	r0, sp, #8
20021cc6:	f007 fafd 	bl	200292c4 <mbedtls_pk_verify>
20021cca:	3800      	subs	r0, #0
20021ccc:	bf18      	it	ne
20021cce:	2001      	movne	r0, #1
20021cd0:	4240      	negs	r0, r0
20021cd2:	e7de      	b.n	20021c92 <sifli_img_sig_hash_verify+0x28>

20021cd4 <sifli_secboot_exception>:
20021cd4:	2801      	cmp	r0, #1
20021cd6:	b508      	push	{r3, lr}
20021cd8:	d004      	beq.n	20021ce4 <sifli_secboot_exception+0x10>
20021cda:	2802      	cmp	r0, #2
20021cdc:	d009      	beq.n	20021cf2 <sifli_secboot_exception+0x1e>
20021cde:	2213      	movs	r2, #19
20021ce0:	4905      	ldr	r1, [pc, #20]	@ (20021cf8 <sifli_secboot_exception+0x24>)
20021ce2:	e001      	b.n	20021ce8 <sifli_secboot_exception+0x14>
20021ce4:	2217      	movs	r2, #23
20021ce6:	4905      	ldr	r1, [pc, #20]	@ (20021cfc <sifli_secboot_exception+0x28>)
20021ce8:	4805      	ldr	r0, [pc, #20]	@ (20021d00 <sifli_secboot_exception+0x2c>)
20021cea:	f7fe fad5 	bl	20020298 <boot_uart_tx>
20021cee:	e7fe      	b.n	20021cee <sifli_secboot_exception+0x1a>
20021cf0:	bd08      	pop	{r3, pc}
20021cf2:	2219      	movs	r2, #25
20021cf4:	4903      	ldr	r1, [pc, #12]	@ (20021d04 <sifli_secboot_exception+0x30>)
20021cf6:	e7f7      	b.n	20021ce8 <sifli_secboot_exception+0x14>
20021cf8:	2002a92e 	.word	0x2002a92e
20021cfc:	2002a8fc 	.word	0x2002a8fc
20021d00:	50084000 	.word	0x50084000
20021d04:	2002a914 	.word	0x2002a914

20021d08 <BSP_GetFlash1DIV>:
20021d08:	4b01      	ldr	r3, [pc, #4]	@ (20021d10 <BSP_GetFlash1DIV+0x8>)
20021d0a:	8818      	ldrh	r0, [r3, #0]
20021d0c:	4770      	bx	lr
20021d0e:	bf00      	nop
20021d10:	20042c0c 	.word	0x20042c0c

20021d14 <BSP_GetFlash2DIV>:
20021d14:	4b01      	ldr	r3, [pc, #4]	@ (20021d1c <BSP_GetFlash2DIV+0x8>)
20021d16:	8818      	ldrh	r0, [r3, #0]
20021d18:	4770      	bx	lr
20021d1a:	bf00      	nop
20021d1c:	20042c0a 	.word	0x20042c0a

20021d20 <BSP_SetFlash1DIV>:
20021d20:	4b01      	ldr	r3, [pc, #4]	@ (20021d28 <BSP_SetFlash1DIV+0x8>)
20021d22:	8018      	strh	r0, [r3, #0]
20021d24:	4770      	bx	lr
20021d26:	bf00      	nop
20021d28:	20042c0c 	.word	0x20042c0c

20021d2c <BSP_SetFlash2DIV>:
20021d2c:	4b01      	ldr	r3, [pc, #4]	@ (20021d34 <BSP_SetFlash2DIV+0x8>)
20021d2e:	8018      	strh	r0, [r3, #0]
20021d30:	4770      	bx	lr
20021d32:	bf00      	nop
20021d34:	20042c0a 	.word	0x20042c0a

20021d38 <boot_images>:
20021d38:	4770      	bx	lr

20021d3a <SystemPowerOnModeInit>:
20021d3a:	4770      	bx	lr

20021d3c <SystemInit>:
20021d3c:	b508      	push	{r3, lr}
20021d3e:	4a10      	ldr	r2, [pc, #64]	@ (20021d80 <SystemInit+0x44>)
20021d40:	4b10      	ldr	r3, [pc, #64]	@ (20021d84 <SystemInit+0x48>)
20021d42:	609a      	str	r2, [r3, #8]
20021d44:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021d48:	f042 023f 	orr.w	r2, r2, #63	@ 0x3f
20021d4c:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021d50:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021d54:	f442 0270 	orr.w	r2, r2, #15728640	@ 0xf00000
20021d58:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021d5c:	f7ff fb28 	bl	200213b0 <hw_preinit0>
20021d60:	f7fe fad4 	bl	2002030c <mpu_config>
20021d64:	4b08      	ldr	r3, [pc, #32]	@ (20021d88 <SystemInit+0x4c>)
20021d66:	681b      	ldr	r3, [r3, #0]
20021d68:	07db      	lsls	r3, r3, #31
20021d6a:	d401      	bmi.n	20021d70 <SystemInit+0x34>
20021d6c:	f7ff ffe4 	bl	20021d38 <boot_images>
20021d70:	f7fe facd 	bl	2002030e <cache_enable>
20021d74:	f7ff ffe1 	bl	20021d3a <SystemPowerOnModeInit>
20021d78:	4b04      	ldr	r3, [pc, #16]	@ (20021d8c <SystemInit+0x50>)
20021d7a:	4a05      	ldr	r2, [pc, #20]	@ (20021d90 <SystemInit+0x54>)
20021d7c:	601a      	str	r2, [r3, #0]
20021d7e:	bd08      	pop	{r3, pc}
20021d80:	20020000 	.word	0x20020000
20021d84:	e000ed00 	.word	0xe000ed00
20021d88:	5000b000 	.word	0x5000b000
20021d8c:	20042c10 	.word	0x20042c10
20021d90:	017d7840 	.word	0x017d7840

20021d94 <Reset_Handler>:
20021d94:	f8df d048 	ldr.w	sp, [pc, #72]	@ 20021de0 <AES_IRQHandler+0x2>
20021d98:	4812      	ldr	r0, [pc, #72]	@ (20021de4 <AES_IRQHandler+0x6>)
20021d9a:	f380 880a 	msr	MSPLIM, r0
20021d9e:	f7ff ffcd 	bl	20021d3c <SystemInit>
20021da2:	4c11      	ldr	r4, [pc, #68]	@ (20021de8 <AES_IRQHandler+0xa>)
20021da4:	4d11      	ldr	r5, [pc, #68]	@ (20021dec <AES_IRQHandler+0xe>)
20021da6:	42ac      	cmp	r4, r5
20021da8:	da09      	bge.n	20021dbe <Reset_Handler+0x2a>
20021daa:	6821      	ldr	r1, [r4, #0]
20021dac:	6862      	ldr	r2, [r4, #4]
20021dae:	68a3      	ldr	r3, [r4, #8]
20021db0:	3b04      	subs	r3, #4
20021db2:	bfa2      	ittt	ge
20021db4:	58c8      	ldrge	r0, [r1, r3]
20021db6:	50d0      	strge	r0, [r2, r3]
20021db8:	e7fa      	bge.n	20021db0 <Reset_Handler+0x1c>
20021dba:	340c      	adds	r4, #12
20021dbc:	e7f3      	b.n	20021da6 <Reset_Handler+0x12>
20021dbe:	4b0c      	ldr	r3, [pc, #48]	@ (20021df0 <AES_IRQHandler+0x12>)
20021dc0:	4c0c      	ldr	r4, [pc, #48]	@ (20021df4 <AES_IRQHandler+0x16>)
20021dc2:	42a3      	cmp	r3, r4
20021dc4:	da08      	bge.n	20021dd8 <Reset_Handler+0x44>
20021dc6:	6819      	ldr	r1, [r3, #0]
20021dc8:	685a      	ldr	r2, [r3, #4]
20021dca:	2000      	movs	r0, #0
20021dcc:	3a04      	subs	r2, #4
20021dce:	bfa4      	itt	ge
20021dd0:	5088      	strge	r0, [r1, r2]
20021dd2:	e7fb      	bge.n	20021dcc <Reset_Handler+0x38>
20021dd4:	3308      	adds	r3, #8
20021dd6:	e7f4      	b.n	20021dc2 <Reset_Handler+0x2e>
20021dd8:	f7ff fb10 	bl	200213fc <entry>

20021ddc <HardFault_Handler>:
20021ddc:	e7fe      	b.n	20021ddc <HardFault_Handler>

20021dde <AES_IRQHandler>:
20021dde:	e7fe      	b.n	20021dde <AES_IRQHandler>
20021de0:	20042000 	.word	0x20042000
20021de4:	20040000 	.word	0x20040000
20021de8:	2002c328 	.word	0x2002c328
20021dec:	2002c334 	.word	0x2002c334
20021df0:	2002c334 	.word	0x2002c334
20021df4:	2002c33c 	.word	0x2002c33c

20021df8 <__aeabi_unwind_cpp_pr0>:
20021df8:	2000      	movs	r0, #0
20021dfa:	4770      	bx	lr

20021dfc <HAL_GetTick>:
20021dfc:	4b01      	ldr	r3, [pc, #4]	@ (20021e04 <HAL_GetTick+0x8>)
20021dfe:	6818      	ldr	r0, [r3, #0]
20021e00:	4770      	bx	lr
20021e02:	bf00      	nop
20021e04:	20049ef0 	.word	0x20049ef0

20021e08 <HAL_Delay_us_>:
20021e08:	b513      	push	{r0, r1, r4, lr}
20021e0a:	9001      	str	r0, [sp, #4]
20021e0c:	9b01      	ldr	r3, [sp, #4]
20021e0e:	4c1a      	ldr	r4, [pc, #104]	@ (20021e78 <HAL_Delay_us_+0x70>)
20021e10:	b133      	cbz	r3, 20021e20 <HAL_Delay_us_+0x18>
20021e12:	6823      	ldr	r3, [r4, #0]
20021e14:	b123      	cbz	r3, 20021e20 <HAL_Delay_us_+0x18>
20021e16:	9b01      	ldr	r3, [sp, #4]
20021e18:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20021e1c:	d90c      	bls.n	20021e38 <HAL_Delay_us_+0x30>
20021e1e:	e7fe      	b.n	20021e1e <HAL_Delay_us_+0x16>
20021e20:	2000      	movs	r0, #0
20021e22:	f003 f88d 	bl	20024f40 <HAL_RCC_GetHCLKFreq>
20021e26:	4b15      	ldr	r3, [pc, #84]	@ (20021e7c <HAL_Delay_us_+0x74>)
20021e28:	fbb0 f0f3 	udiv	r0, r0, r3
20021e2c:	9b01      	ldr	r3, [sp, #4]
20021e2e:	6020      	str	r0, [r4, #0]
20021e30:	2b00      	cmp	r3, #0
20021e32:	d1f0      	bne.n	20021e16 <HAL_Delay_us_+0xe>
20021e34:	b002      	add	sp, #8
20021e36:	bd10      	pop	{r4, pc}
20021e38:	9b01      	ldr	r3, [sp, #4]
20021e3a:	2b00      	cmp	r3, #0
20021e3c:	d0fa      	beq.n	20021e34 <HAL_Delay_us_+0x2c>
20021e3e:	4a10      	ldr	r2, [pc, #64]	@ (20021e80 <HAL_Delay_us_+0x78>)
20021e40:	6813      	ldr	r3, [r2, #0]
20021e42:	f013 0301 	ands.w	r3, r3, #1
20021e46:	d10d      	bne.n	20021e64 <HAL_Delay_us_+0x5c>
20021e48:	480e      	ldr	r0, [pc, #56]	@ (20021e84 <HAL_Delay_us_+0x7c>)
20021e4a:	f8d0 10fc 	ldr.w	r1, [r0, #252]	@ 0xfc
20021e4e:	f041 7180 	orr.w	r1, r1, #16777216	@ 0x1000000
20021e52:	f8c0 10fc 	str.w	r1, [r0, #252]	@ 0xfc
20021e56:	6053      	str	r3, [r2, #4]
20021e58:	6813      	ldr	r3, [r2, #0]
20021e5a:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
20021e5e:	f043 0301 	orr.w	r3, r3, #1
20021e62:	6013      	str	r3, [r2, #0]
20021e64:	9b01      	ldr	r3, [sp, #4]
20021e66:	6822      	ldr	r2, [r4, #0]
20021e68:	4905      	ldr	r1, [pc, #20]	@ (20021e80 <HAL_Delay_us_+0x78>)
20021e6a:	4353      	muls	r3, r2
20021e6c:	6848      	ldr	r0, [r1, #4]
20021e6e:	684a      	ldr	r2, [r1, #4]
20021e70:	1a12      	subs	r2, r2, r0
20021e72:	429a      	cmp	r2, r3
20021e74:	d3fb      	bcc.n	20021e6e <HAL_Delay_us_+0x66>
20021e76:	e7dd      	b.n	20021e34 <HAL_Delay_us_+0x2c>
20021e78:	20049eec 	.word	0x20049eec
20021e7c:	000f4240 	.word	0x000f4240
20021e80:	e0001000 	.word	0xe0001000
20021e84:	e000ed00 	.word	0xe000ed00

20021e88 <HAL_Delay_us2_>:
20021e88:	b537      	push	{r0, r1, r2, r4, r5, lr}
20021e8a:	9001      	str	r0, [sp, #4]
20021e8c:	f04f 20e0 	mov.w	r0, #3758153728	@ 0xe000e000
20021e90:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20021e94:	6944      	ldr	r4, [r0, #20]
20021e96:	9b01      	ldr	r3, [sp, #4]
20021e98:	4363      	muls	r3, r4
20021e9a:	fbb3 f3f2 	udiv	r3, r3, r2
20021e9e:	9301      	str	r3, [sp, #4]
20021ea0:	2300      	movs	r3, #0
20021ea2:	6981      	ldr	r1, [r0, #24]
20021ea4:	6982      	ldr	r2, [r0, #24]
20021ea6:	428a      	cmp	r2, r1
20021ea8:	d0fc      	beq.n	20021ea4 <HAL_Delay_us2_+0x1c>
20021eaa:	bf25      	ittet	cs
20021eac:	1aa5      	subcs	r5, r4, r2
20021eae:	195b      	addcs	r3, r3, r5
20021eb0:	185b      	addcc	r3, r3, r1
20021eb2:	185b      	addcs	r3, r3, r1
20021eb4:	9901      	ldr	r1, [sp, #4]
20021eb6:	bf38      	it	cc
20021eb8:	1a9b      	subcc	r3, r3, r2
20021eba:	4299      	cmp	r1, r3
20021ebc:	d801      	bhi.n	20021ec2 <HAL_Delay_us2_+0x3a>
20021ebe:	b003      	add	sp, #12
20021ec0:	bd30      	pop	{r4, r5, pc}
20021ec2:	4611      	mov	r1, r2
20021ec4:	e7ee      	b.n	20021ea4 <HAL_Delay_us2_+0x1c>

20021ec6 <HAL_Delay_us>:
20021ec6:	4603      	mov	r3, r0
20021ec8:	b570      	push	{r4, r5, r6, lr}
20021eca:	b1b8      	cbz	r0, 20021efc <HAL_Delay_us+0x36>
20021ecc:	f242 7510 	movw	r5, #10000	@ 0x2710
20021ed0:	f04f 26e0 	mov.w	r6, #3758153728	@ 0xe000e000
20021ed4:	42ab      	cmp	r3, r5
20021ed6:	bf84      	itt	hi
20021ed8:	f5a3 541c 	subhi.w	r4, r3, #9984	@ 0x2700
20021edc:	f242 7310 	movwhi	r3, #10000	@ 0x2710
20021ee0:	6932      	ldr	r2, [r6, #16]
20021ee2:	bf98      	it	ls
20021ee4:	2400      	movls	r4, #0
20021ee6:	4618      	mov	r0, r3
20021ee8:	bf88      	it	hi
20021eea:	3c10      	subhi	r4, #16
20021eec:	07d3      	lsls	r3, r2, #31
20021eee:	d408      	bmi.n	20021f02 <HAL_Delay_us+0x3c>
20021ef0:	f7ff ff8a 	bl	20021e08 <HAL_Delay_us_>
20021ef4:	4623      	mov	r3, r4
20021ef6:	2c00      	cmp	r4, #0
20021ef8:	d1ec      	bne.n	20021ed4 <HAL_Delay_us+0xe>
20021efa:	e001      	b.n	20021f00 <HAL_Delay_us+0x3a>
20021efc:	f7ff ff84 	bl	20021e08 <HAL_Delay_us_>
20021f00:	bd70      	pop	{r4, r5, r6, pc}
20021f02:	f7ff ffc1 	bl	20021e88 <HAL_Delay_us2_>
20021f06:	e7f5      	b.n	20021ef4 <HAL_Delay_us+0x2e>

20021f08 <WDT_IRQHandler>:
20021f08:	4770      	bx	lr

20021f0a <DBG_Trigger_IRQHandler>:
20021f0a:	4770      	bx	lr

20021f0c <NMI_Handler>:
20021f0c:	b508      	push	{r3, lr}
20021f0e:	4b05      	ldr	r3, [pc, #20]	@ (20021f24 <NMI_Handler+0x18>)
20021f10:	6a1b      	ldr	r3, [r3, #32]
20021f12:	005b      	lsls	r3, r3, #1
20021f14:	d502      	bpl.n	20021f1c <NMI_Handler+0x10>
20021f16:	f7ff fff8 	bl	20021f0a <DBG_Trigger_IRQHandler>
20021f1a:	bd08      	pop	{r3, pc}
20021f1c:	f7ff fff4 	bl	20021f08 <WDT_IRQHandler>
20021f20:	e7fb      	b.n	20021f1a <NMI_Handler+0xe>
20021f22:	bf00      	nop
20021f24:	5000b000 	.word	0x5000b000

20021f28 <HAL_AES_run_help>:
20021f28:	b510      	push	{r4, lr}
20021f2a:	f101 4470 	add.w	r4, r1, #4026531840	@ 0xf0000000
20021f2e:	f1b4 5f80 	cmp.w	r4, #268435456	@ 0x10000000
20021f32:	4c0e      	ldr	r4, [pc, #56]	@ (20021f6c <HAL_AES_run_help+0x44>)
20021f34:	bf38      	it	cc
20021f36:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
20021f3a:	6161      	str	r1, [r4, #20]
20021f3c:	f102 4170 	add.w	r1, r2, #4026531840	@ 0xf0000000
20021f40:	f1b1 5f80 	cmp.w	r1, #268435456	@ 0x10000000
20021f44:	f103 030f 	add.w	r3, r3, #15
20021f48:	ea4f 1323 	mov.w	r3, r3, asr #4
20021f4c:	bf38      	it	cc
20021f4e:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
20021f52:	61a2      	str	r2, [r4, #24]
20021f54:	61e3      	str	r3, [r4, #28]
20021f56:	6923      	ldr	r3, [r4, #16]
20021f58:	b108      	cbz	r0, 20021f5e <HAL_AES_run_help+0x36>
20021f5a:	ea43 13c0 	orr.w	r3, r3, r0, lsl #7
20021f5e:	4a03      	ldr	r2, [pc, #12]	@ (20021f6c <HAL_AES_run_help+0x44>)
20021f60:	6123      	str	r3, [r4, #16]
20021f62:	6813      	ldr	r3, [r2, #0]
20021f64:	f043 0301 	orr.w	r3, r3, #1
20021f68:	6013      	str	r3, [r2, #0]
20021f6a:	bd10      	pop	{r4, pc}
20021f6c:	5000d000 	.word	0x5000d000

20021f70 <HAL_HASH_run_help.isra.0>:
20021f70:	f100 4370 	add.w	r3, r0, #4026531840	@ 0xf0000000
20021f74:	b510      	push	{r4, lr}
20021f76:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
20021f7a:	4c09      	ldr	r4, [pc, #36]	@ (20021fa0 <HAL_HASH_run_help.isra.0+0x30>)
20021f7c:	bf38      	it	cc
20021f7e:	f100 40a0 	addcc.w	r0, r0, #1342177280	@ 0x50000000
20021f82:	6560      	str	r0, [r4, #84]	@ 0x54
20021f84:	65a1      	str	r1, [r4, #88]	@ 0x58
20021f86:	b11a      	cbz	r2, 20021f90 <HAL_HASH_run_help.isra.0+0x20>
20021f88:	6d23      	ldr	r3, [r4, #80]	@ 0x50
20021f8a:	f043 0308 	orr.w	r3, r3, #8
20021f8e:	6523      	str	r3, [r4, #80]	@ 0x50
20021f90:	6d21      	ldr	r1, [r4, #80]	@ 0x50
20021f92:	4804      	ldr	r0, [pc, #16]	@ (20021fa4 <HAL_HASH_run_help.isra.0+0x34>)
20021f94:	f000 fd72 	bl	20022a7c <HAL_DBG_printf>
20021f98:	2304      	movs	r3, #4
20021f9a:	6023      	str	r3, [r4, #0]
20021f9c:	bd10      	pop	{r4, pc}
20021f9e:	bf00      	nop
20021fa0:	5000d000 	.word	0x5000d000
20021fa4:	2002a942 	.word	0x2002a942

20021fa8 <HAL_AES_reset>:
20021fa8:	2202      	movs	r2, #2
20021faa:	2000      	movs	r0, #0
20021fac:	4b01      	ldr	r3, [pc, #4]	@ (20021fb4 <HAL_AES_reset+0xc>)
20021fae:	601a      	str	r2, [r3, #0]
20021fb0:	6018      	str	r0, [r3, #0]
20021fb2:	4770      	bx	lr
20021fb4:	5000d000 	.word	0x5000d000

20021fb8 <HAL_AES_init>:
20021fb8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20021fba:	461f      	mov	r7, r3
20021fbc:	4b1e      	ldr	r3, [pc, #120]	@ (20022038 <HAL_AES_init+0x80>)
20021fbe:	4604      	mov	r4, r0
20021fc0:	685b      	ldr	r3, [r3, #4]
20021fc2:	4616      	mov	r6, r2
20021fc4:	07db      	lsls	r3, r3, #31
20021fc6:	d501      	bpl.n	20021fcc <HAL_AES_init+0x14>
20021fc8:	f7ff ffee 	bl	20021fa8 <HAL_AES_reset>
20021fcc:	fab4 f084 	clz	r0, r4
20021fd0:	2918      	cmp	r1, #24
20021fd2:	ea4f 1050 	mov.w	r0, r0, lsr #5
20021fd6:	ea4f 1540 	mov.w	r5, r0, lsl #5
20021fda:	d01c      	beq.n	20022016 <HAL_AES_init+0x5e>
20021fdc:	2920      	cmp	r1, #32
20021fde:	d01c      	beq.n	2002201a <HAL_AES_init+0x62>
20021fe0:	2910      	cmp	r1, #16
20021fe2:	d125      	bne.n	20022030 <HAL_AES_init+0x78>
20021fe4:	2300      	movs	r3, #0
20021fe6:	b164      	cbz	r4, 20022002 <HAL_AES_init+0x4a>
20021fe8:	4620      	mov	r0, r4
20021fea:	4a14      	ldr	r2, [pc, #80]	@ (2002203c <HAL_AES_init+0x84>)
20021fec:	f021 0103 	bic.w	r1, r1, #3
20021ff0:	4421      	add	r1, r4
20021ff2:	1b12      	subs	r2, r2, r4
20021ff4:	1814      	adds	r4, r2, r0
20021ff6:	f850 cb04 	ldr.w	ip, [r0], #4
20021ffa:	4281      	cmp	r1, r0
20021ffc:	f8c4 c000 	str.w	ip, [r4]
20022000:	d1f8      	bne.n	20021ff4 <HAL_AES_init+0x3c>
20022002:	ea47 0005 	orr.w	r0, r7, r5
20022006:	ea40 00c3 	orr.w	r0, r0, r3, lsl #3
2002200a:	4b0b      	ldr	r3, [pc, #44]	@ (20022038 <HAL_AES_init+0x80>)
2002200c:	6118      	str	r0, [r3, #16]
2002200e:	b107      	cbz	r7, 20022012 <HAL_AES_init+0x5a>
20022010:	b92e      	cbnz	r6, 2002201e <HAL_AES_init+0x66>
20022012:	2000      	movs	r0, #0
20022014:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20022016:	2301      	movs	r3, #1
20022018:	e7e5      	b.n	20021fe6 <HAL_AES_init+0x2e>
2002201a:	2302      	movs	r3, #2
2002201c:	e7e3      	b.n	20021fe6 <HAL_AES_init+0x2e>
2002201e:	6832      	ldr	r2, [r6, #0]
20022020:	621a      	str	r2, [r3, #32]
20022022:	6872      	ldr	r2, [r6, #4]
20022024:	625a      	str	r2, [r3, #36]	@ 0x24
20022026:	68b2      	ldr	r2, [r6, #8]
20022028:	629a      	str	r2, [r3, #40]	@ 0x28
2002202a:	68f2      	ldr	r2, [r6, #12]
2002202c:	62da      	str	r2, [r3, #44]	@ 0x2c
2002202e:	e7f0      	b.n	20022012 <HAL_AES_init+0x5a>
20022030:	f04f 30ff 	mov.w	r0, #4294967295
20022034:	e7ee      	b.n	20022014 <HAL_AES_init+0x5c>
20022036:	bf00      	nop
20022038:	5000d000 	.word	0x5000d000
2002203c:	5000d030 	.word	0x5000d030

20022040 <HAL_AES_run>:
20022040:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20022042:	2708      	movs	r7, #8
20022044:	4e17      	ldr	r6, [pc, #92]	@ (200220a4 <HAL_AES_run+0x64>)
20022046:	4614      	mov	r4, r2
20022048:	461d      	mov	r5, r3
2002204a:	f8c6 7088 	str.w	r7, [r6, #136]	@ 0x88
2002204e:	f3bf 8f4f 	dsb	sy
20022052:	f3bf 8f6f 	isb	sy
20022056:	2700      	movs	r7, #0
20022058:	4e13      	ldr	r6, [pc, #76]	@ (200220a8 <HAL_AES_run+0x68>)
2002205a:	60f7      	str	r7, [r6, #12]
2002205c:	f7ff ff64 	bl	20021f28 <HAL_AES_run_help>
20022060:	6873      	ldr	r3, [r6, #4]
20022062:	07db      	lsls	r3, r3, #31
20022064:	d4fc      	bmi.n	20022060 <HAL_AES_run+0x20>
20022066:	68b0      	ldr	r0, [r6, #8]
20022068:	f000 0006 	and.w	r0, r0, #6
2002206c:	3800      	subs	r0, #0
2002206e:	bf18      	it	ne
20022070:	2001      	movne	r0, #1
20022072:	f1b4 4fc0 	cmp.w	r4, #1610612736	@ 0x60000000
20022076:	d313      	bcc.n	200220a0 <HAL_AES_run+0x60>
20022078:	2d00      	cmp	r5, #0
2002207a:	dd11      	ble.n	200220a0 <HAL_AES_run+0x60>
2002207c:	f004 031f 	and.w	r3, r4, #31
20022080:	442b      	add	r3, r5
20022082:	f3bf 8f4f 	dsb	sy
20022086:	4622      	mov	r2, r4
20022088:	4c08      	ldr	r4, [pc, #32]	@ (200220ac <HAL_AES_run+0x6c>)
2002208a:	4413      	add	r3, r2
2002208c:	f8c4 225c 	str.w	r2, [r4, #604]	@ 0x25c
20022090:	3220      	adds	r2, #32
20022092:	1a99      	subs	r1, r3, r2
20022094:	2900      	cmp	r1, #0
20022096:	dcf9      	bgt.n	2002208c <HAL_AES_run+0x4c>
20022098:	f3bf 8f4f 	dsb	sy
2002209c:	f3bf 8f6f 	isb	sy
200220a0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200220a2:	bf00      	nop
200220a4:	e000e100 	.word	0xe000e100
200220a8:	5000d000 	.word	0x5000d000
200220ac:	e000ed00 	.word	0xe000ed00

200220b0 <HAL_HASH_run>:
200220b0:	b510      	push	{r4, lr}
200220b2:	2408      	movs	r4, #8
200220b4:	4b0b      	ldr	r3, [pc, #44]	@ (200220e4 <HAL_HASH_run+0x34>)
200220b6:	f8c3 4088 	str.w	r4, [r3, #136]	@ 0x88
200220ba:	f3bf 8f4f 	dsb	sy
200220be:	f3bf 8f6f 	isb	sy
200220c2:	f7ff ff55 	bl	20021f70 <HAL_HASH_run_help.isra.0>
200220c6:	4b08      	ldr	r3, [pc, #32]	@ (200220e8 <HAL_HASH_run+0x38>)
200220c8:	685a      	ldr	r2, [r3, #4]
200220ca:	0752      	lsls	r2, r2, #29
200220cc:	d4fc      	bmi.n	200220c8 <HAL_HASH_run+0x18>
200220ce:	689a      	ldr	r2, [r3, #8]
200220d0:	f002 0238 	and.w	r2, r2, #56	@ 0x38
200220d4:	609a      	str	r2, [r3, #8]
200220d6:	6898      	ldr	r0, [r3, #8]
200220d8:	f000 0030 	and.w	r0, r0, #48	@ 0x30
200220dc:	3800      	subs	r0, #0
200220de:	bf18      	it	ne
200220e0:	2001      	movne	r0, #1
200220e2:	bd10      	pop	{r4, pc}
200220e4:	e000e100 	.word	0xe000e100
200220e8:	5000d000 	.word	0x5000d000

200220ec <HAL_HASH_reset>:
200220ec:	2208      	movs	r2, #8
200220ee:	2000      	movs	r0, #0
200220f0:	4b01      	ldr	r3, [pc, #4]	@ (200220f8 <HAL_HASH_reset+0xc>)
200220f2:	601a      	str	r2, [r3, #0]
200220f4:	6018      	str	r0, [r3, #0]
200220f6:	4770      	bx	lr
200220f8:	5000d000 	.word	0x5000d000

200220fc <HAL_HASH_init>:
200220fc:	0693      	lsls	r3, r2, #26
200220fe:	b570      	push	{r4, r5, r6, lr}
20022100:	4606      	mov	r6, r0
20022102:	460c      	mov	r4, r1
20022104:	4615      	mov	r5, r2
20022106:	d11c      	bne.n	20022142 <HAL_HASH_init+0x46>
20022108:	2903      	cmp	r1, #3
2002210a:	d81a      	bhi.n	20022142 <HAL_HASH_init+0x46>
2002210c:	f7ff ffee 	bl	200220ec <HAL_HASH_reset>
20022110:	b13e      	cbz	r6, 20022122 <HAL_HASH_init+0x26>
20022112:	4b0d      	ldr	r3, [pc, #52]	@ (20022148 <HAL_HASH_init+0x4c>)
20022114:	480d      	ldr	r0, [pc, #52]	@ (2002214c <HAL_HASH_init+0x50>)
20022116:	5c5a      	ldrb	r2, [r3, r1]
20022118:	4631      	mov	r1, r6
2002211a:	f008 fb63 	bl	2002a7e4 <memcpy>
2002211e:	f044 0420 	orr.w	r4, r4, #32
20022122:	4b0b      	ldr	r3, [pc, #44]	@ (20022150 <HAL_HASH_init+0x54>)
20022124:	f044 0180 	orr.w	r1, r4, #128	@ 0x80
20022128:	6519      	str	r1, [r3, #80]	@ 0x50
2002212a:	b11d      	cbz	r5, 20022134 <HAL_HASH_init+0x38>
2002212c:	f8c3 509c 	str.w	r5, [r3, #156]	@ 0x9c
20022130:	f444 71c0 	orr.w	r1, r4, #384	@ 0x180
20022134:	4807      	ldr	r0, [pc, #28]	@ (20022154 <HAL_HASH_init+0x58>)
20022136:	462a      	mov	r2, r5
20022138:	6519      	str	r1, [r3, #80]	@ 0x50
2002213a:	f000 fc9f 	bl	20022a7c <HAL_DBG_printf>
2002213e:	2000      	movs	r0, #0
20022140:	bd70      	pop	{r4, r5, r6, pc}
20022142:	f04f 30ff 	mov.w	r0, #4294967295
20022146:	e7fb      	b.n	20022140 <HAL_HASH_init+0x44>
20022148:	2002b7d8 	.word	0x2002b7d8
2002214c:	5000d05c 	.word	0x5000d05c
20022150:	5000d000 	.word	0x5000d000
20022154:	2002a955 	.word	0x2002a955

20022158 <HAL_HASH_result>:
20022158:	b510      	push	{r4, lr}
2002215a:	4c08      	ldr	r4, [pc, #32]	@ (2002217c <HAL_HASH_result+0x24>)
2002215c:	4a08      	ldr	r2, [pc, #32]	@ (20022180 <HAL_HASH_result+0x28>)
2002215e:	6d23      	ldr	r3, [r4, #80]	@ 0x50
20022160:	f104 017c 	add.w	r1, r4, #124	@ 0x7c
20022164:	f003 0307 	and.w	r3, r3, #7
20022168:	5cd2      	ldrb	r2, [r2, r3]
2002216a:	f008 fb3b 	bl	2002a7e4 <memcpy>
2002216e:	f8d4 10a4 	ldr.w	r1, [r4, #164]	@ 0xa4
20022172:	4804      	ldr	r0, [pc, #16]	@ (20022184 <HAL_HASH_result+0x2c>)
20022174:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20022178:	f000 bc80 	b.w	20022a7c <HAL_DBG_printf>
2002217c:	5000d000 	.word	0x5000d000
20022180:	2002b7d8 	.word	0x2002b7d8
20022184:	2002a989 	.word	0x2002a989

20022188 <HAL_NVIC_SetPriority>:
20022188:	2a0f      	cmp	r2, #15
2002218a:	b530      	push	{r4, r5, lr}
2002218c:	d900      	bls.n	20022190 <HAL_NVIC_SetPriority+0x8>
2002218e:	e7fe      	b.n	2002218e <HAL_NVIC_SetPriority+0x6>
20022190:	290f      	cmp	r1, #15
20022192:	d900      	bls.n	20022196 <HAL_NVIC_SetPriority+0xe>
20022194:	e7fe      	b.n	20022194 <HAL_NVIC_SetPriority+0xc>
20022196:	4b15      	ldr	r3, [pc, #84]	@ (200221ec <HAL_NVIC_SetPriority+0x64>)
20022198:	68dc      	ldr	r4, [r3, #12]
2002219a:	f3c4 2402 	ubfx	r4, r4, #8, #3
2002219e:	f1c4 0307 	rsb	r3, r4, #7
200221a2:	1ce5      	adds	r5, r4, #3
200221a4:	2b03      	cmp	r3, #3
200221a6:	bf28      	it	cs
200221a8:	2303      	movcs	r3, #3
200221aa:	2d06      	cmp	r5, #6
200221ac:	f04f 35ff 	mov.w	r5, #4294967295
200221b0:	bf94      	ite	ls
200221b2:	2400      	movls	r4, #0
200221b4:	3c04      	subhi	r4, #4
200221b6:	fa05 f303 	lsl.w	r3, r5, r3
200221ba:	ea21 0303 	bic.w	r3, r1, r3
200221be:	40a5      	lsls	r5, r4
200221c0:	ea22 0205 	bic.w	r2, r2, r5
200221c4:	40a3      	lsls	r3, r4
200221c6:	2800      	cmp	r0, #0
200221c8:	ea43 0302 	orr.w	r3, r3, r2
200221cc:	bfac      	ite	ge
200221ce:	f100 4060 	addge.w	r0, r0, #3758096384	@ 0xe0000000
200221d2:	4a07      	ldrlt	r2, [pc, #28]	@ (200221f0 <HAL_NVIC_SetPriority+0x68>)
200221d4:	ea4f 1343 	mov.w	r3, r3, lsl #5
200221d8:	b2db      	uxtb	r3, r3
200221da:	bfab      	itete	ge
200221dc:	f500 4061 	addge.w	r0, r0, #57600	@ 0xe100
200221e0:	f000 000f 	andlt.w	r0, r0, #15
200221e4:	f880 3300 	strbge.w	r3, [r0, #768]	@ 0x300
200221e8:	5413      	strblt	r3, [r2, r0]
200221ea:	bd30      	pop	{r4, r5, pc}
200221ec:	e000ed00 	.word	0xe000ed00
200221f0:	e000ed14 	.word	0xe000ed14

200221f4 <HAL_NVIC_EnableIRQ>:
200221f4:	2800      	cmp	r0, #0
200221f6:	da00      	bge.n	200221fa <HAL_NVIC_EnableIRQ+0x6>
200221f8:	e7fe      	b.n	200221f8 <HAL_NVIC_EnableIRQ+0x4>
200221fa:	2301      	movs	r3, #1
200221fc:	0941      	lsrs	r1, r0, #5
200221fe:	4a03      	ldr	r2, [pc, #12]	@ (2002220c <HAL_NVIC_EnableIRQ+0x18>)
20022200:	f000 001f 	and.w	r0, r0, #31
20022204:	4083      	lsls	r3, r0
20022206:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
2002220a:	4770      	bx	lr
2002220c:	e000e100 	.word	0xe000e100

20022210 <HAL_NVIC_DisableIRQ>:
20022210:	2800      	cmp	r0, #0
20022212:	da00      	bge.n	20022216 <HAL_NVIC_DisableIRQ+0x6>
20022214:	e7fe      	b.n	20022214 <HAL_NVIC_DisableIRQ+0x4>
20022216:	2201      	movs	r2, #1
20022218:	4906      	ldr	r1, [pc, #24]	@ (20022234 <HAL_NVIC_DisableIRQ+0x24>)
2002221a:	0943      	lsrs	r3, r0, #5
2002221c:	f000 001f 	and.w	r0, r0, #31
20022220:	4082      	lsls	r2, r0
20022222:	3320      	adds	r3, #32
20022224:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20022228:	f3bf 8f4f 	dsb	sy
2002222c:	f3bf 8f6f 	isb	sy
20022230:	4770      	bx	lr
20022232:	bf00      	nop
20022234:	e000e100 	.word	0xe000e100

20022238 <DMA_Init>:
20022238:	2302      	movs	r3, #2
2002223a:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
2002223e:	e9d0 6502 	ldrd	r6, r5, [r0, #8]
20022242:	e9d0 9204 	ldrd	r9, r2, [r0, #16]
20022246:	f880 302d 	strb.w	r3, [r0, #45]	@ 0x2d
2002224a:	6807      	ldr	r7, [r0, #0]
2002224c:	6a43      	ldr	r3, [r0, #36]	@ 0x24
2002224e:	6981      	ldr	r1, [r0, #24]
20022250:	613b      	str	r3, [r7, #16]
20022252:	683b      	ldr	r3, [r7, #0]
20022254:	69c4      	ldr	r4, [r0, #28]
20022256:	f423 4eff 	bic.w	lr, r3, #32640	@ 0x7f80
2002225a:	ea46 0305 	orr.w	r3, r6, r5
2002225e:	ea43 0309 	orr.w	r3, r3, r9
20022262:	4313      	orrs	r3, r2
20022264:	430b      	orrs	r3, r1
20022266:	4323      	orrs	r3, r4
20022268:	6a04      	ldr	r4, [r0, #32]
2002226a:	f02e 0e70 	bic.w	lr, lr, #112	@ 0x70
2002226e:	4323      	orrs	r3, r4
20022270:	ea43 030e 	orr.w	r3, r3, lr
20022274:	f5b6 4f80 	cmp.w	r6, #16384	@ 0x4000
20022278:	603b      	str	r3, [r7, #0]
2002227a:	d01e      	beq.n	200222ba <DMA_Init+0x82>
2002227c:	f8d0 e04c 	ldr.w	lr, [r0, #76]	@ 0x4c
20022280:	6c87      	ldr	r7, [r0, #72]	@ 0x48
20022282:	f01e 0f10 	tst.w	lr, #16
20022286:	f8d0 c004 	ldr.w	ip, [r0, #4]
2002228a:	f3ce 0387 	ubfx	r3, lr, #2, #8
2002228e:	d11c      	bne.n	200222ca <DMA_Init+0x92>
20022290:	f04f 083f 	mov.w	r8, #63	@ 0x3f
20022294:	f003 0307 	and.w	r3, r3, #7
20022298:	f8d7 e0a8 	ldr.w	lr, [r7, #168]	@ 0xa8
2002229c:	00db      	lsls	r3, r3, #3
2002229e:	fa08 f803 	lsl.w	r8, r8, r3
200222a2:	ea2e 0e08 	bic.w	lr, lr, r8
200222a6:	f8c7 e0a8 	str.w	lr, [r7, #168]	@ 0xa8
200222aa:	f8d7 e0a8 	ldr.w	lr, [r7, #168]	@ 0xa8
200222ae:	fa0c f303 	lsl.w	r3, ip, r3
200222b2:	ea43 030e 	orr.w	r3, r3, lr
200222b6:	f8c7 30a8 	str.w	r3, [r7, #168]	@ 0xa8
200222ba:	f5b1 6f80 	cmp.w	r1, #1024	@ 0x400
200222be:	d01a      	beq.n	200222f6 <DMA_Init+0xbe>
200222c0:	f5b1 6f00 	cmp.w	r1, #2048	@ 0x800
200222c4:	d020      	beq.n	20022308 <DMA_Init+0xd0>
200222c6:	b1b9      	cbz	r1, 200222f8 <DMA_Init+0xc0>
200222c8:	e7fe      	b.n	200222c8 <DMA_Init+0x90>
200222ca:	f04f 083f 	mov.w	r8, #63	@ 0x3f
200222ce:	f003 0303 	and.w	r3, r3, #3
200222d2:	f8d7 e0ac 	ldr.w	lr, [r7, #172]	@ 0xac
200222d6:	00db      	lsls	r3, r3, #3
200222d8:	fa08 f803 	lsl.w	r8, r8, r3
200222dc:	ea2e 0e08 	bic.w	lr, lr, r8
200222e0:	f8c7 e0ac 	str.w	lr, [r7, #172]	@ 0xac
200222e4:	f8d7 e0ac 	ldr.w	lr, [r7, #172]	@ 0xac
200222e8:	fa0c fc03 	lsl.w	ip, ip, r3
200222ec:	ea4c 030e 	orr.w	r3, ip, lr
200222f0:	f8c7 30ac 	str.w	r3, [r7, #172]	@ 0xac
200222f4:	e7e1      	b.n	200222ba <DMA_Init+0x82>
200222f6:	2101      	movs	r1, #1
200222f8:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
200222fc:	d006      	beq.n	2002230c <DMA_Init+0xd4>
200222fe:	f5b2 7f00 	cmp.w	r2, #512	@ 0x200
20022302:	d029      	beq.n	20022358 <DMA_Init+0x120>
20022304:	b11a      	cbz	r2, 2002230e <DMA_Init+0xd6>
20022306:	e7fe      	b.n	20022306 <DMA_Init+0xce>
20022308:	2102      	movs	r1, #2
2002230a:	e7f5      	b.n	200222f8 <DMA_Init+0xc0>
2002230c:	2201      	movs	r2, #1
2002230e:	f1a9 0380 	sub.w	r3, r9, #128	@ 0x80
20022312:	425c      	negs	r4, r3
20022314:	f1a5 0740 	sub.w	r7, r5, #64	@ 0x40
20022318:	415c      	adcs	r4, r3
2002231a:	427d      	negs	r5, r7
2002231c:	417d      	adcs	r5, r7
2002231e:	2e10      	cmp	r6, #16
20022320:	bf1e      	ittt	ne
20022322:	4613      	movne	r3, r2
20022324:	460a      	movne	r2, r1
20022326:	4619      	movne	r1, r3
20022328:	f880 2067 	strb.w	r2, [r0, #103]	@ 0x67
2002232c:	f04f 0300 	mov.w	r3, #0
20022330:	f04f 0201 	mov.w	r2, #1
20022334:	6443      	str	r3, [r0, #68]	@ 0x44
20022336:	bf07      	ittee	eq
20022338:	f880 5065 	strbeq.w	r5, [r0, #101]	@ 0x65
2002233c:	f880 4064 	strbeq.w	r4, [r0, #100]	@ 0x64
20022340:	f880 5064 	strbne.w	r5, [r0, #100]	@ 0x64
20022344:	f880 4065 	strbne.w	r4, [r0, #101]	@ 0x65
20022348:	f880 1066 	strb.w	r1, [r0, #102]	@ 0x66
2002234c:	f880 202d 	strb.w	r2, [r0, #45]	@ 0x2d
20022350:	f880 302c 	strb.w	r3, [r0, #44]	@ 0x2c
20022354:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20022358:	2202      	movs	r2, #2
2002235a:	e7d8      	b.n	2002230e <DMA_Init+0xd6>

2002235c <DMA_AllocChannel>:
2002235c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002235e:	6802      	ldr	r2, [r0, #0]
20022360:	4b2b      	ldr	r3, [pc, #172]	@ (20022410 <DMA_AllocChannel+0xb4>)
20022362:	4413      	add	r3, r2
20022364:	2ba0      	cmp	r3, #160	@ 0xa0
20022366:	d904      	bls.n	20022372 <DMA_AllocChannel+0x16>
20022368:	4b2a      	ldr	r3, [pc, #168]	@ (20022414 <DMA_AllocChannel+0xb8>)
2002236a:	4413      	add	r3, r2
2002236c:	2ba0      	cmp	r3, #160	@ 0xa0
2002236e:	d90f      	bls.n	20022390 <DMA_AllocChannel+0x34>
20022370:	e7fe      	b.n	20022370 <DMA_AllocChannel+0x14>
20022372:	2632      	movs	r6, #50	@ 0x32
20022374:	f8df c0a8 	ldr.w	ip, [pc, #168]	@ 20022420 <DMA_AllocChannel+0xc4>
20022378:	4b27      	ldr	r3, [pc, #156]	@ (20022418 <DMA_AllocChannel+0xbc>)
2002237a:	f3ef 8710 	mrs	r7, PRIMASK
2002237e:	2201      	movs	r2, #1
20022380:	f382 8810 	msr	PRIMASK, r2
20022384:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
20022386:	2d1f      	cmp	r5, #31
20022388:	ea4f 0495 	mov.w	r4, r5, lsr #2
2002238c:	d905      	bls.n	2002239a <DMA_AllocChannel+0x3e>
2002238e:	e7fe      	b.n	2002238e <DMA_AllocChannel+0x32>
20022390:	2602      	movs	r6, #2
20022392:	f8df c090 	ldr.w	ip, [pc, #144]	@ 20022424 <DMA_AllocChannel+0xc8>
20022396:	4b21      	ldr	r3, [pc, #132]	@ (2002241c <DMA_AllocChannel+0xc0>)
20022398:	e7ef      	b.n	2002237a <DMA_AllocChannel+0x1e>
2002239a:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
2002239e:	f895 e004 	ldrb.w	lr, [r5, #4]
200223a2:	f1be 0f00 	cmp.w	lr, #0
200223a6:	d02e      	beq.n	20022406 <DMA_AllocChannel+0xaa>
200223a8:	f853 2034 	ldr.w	r2, [r3, r4, lsl #3]
200223ac:	4282      	cmp	r2, r0
200223ae:	d103      	bne.n	200223b8 <DMA_AllocChannel+0x5c>
200223b0:	f387 8810 	msr	PRIMASK, r7
200223b4:	2002      	movs	r0, #2
200223b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200223b8:	2200      	movs	r2, #0
200223ba:	791c      	ldrb	r4, [r3, #4]
200223bc:	461d      	mov	r5, r3
200223be:	b9e4      	cbnz	r4, 200223fa <DMA_AllocChannel+0x9e>
200223c0:	2301      	movs	r3, #1
200223c2:	712b      	strb	r3, [r5, #4]
200223c4:	2314      	movs	r3, #20
200223c6:	fb03 c302 	mla	r3, r3, r2, ip
200223ca:	4416      	add	r6, r2
200223cc:	0092      	lsls	r2, r2, #2
200223ce:	b274      	sxtb	r4, r6
200223d0:	6003      	str	r3, [r0, #0]
200223d2:	64c2      	str	r2, [r0, #76]	@ 0x4c
200223d4:	f387 8810 	msr	PRIMASK, r7
200223d8:	b121      	cbz	r1, 200223e4 <DMA_AllocChannel+0x88>
200223da:	682b      	ldr	r3, [r5, #0]
200223dc:	4283      	cmp	r3, r0
200223de:	d001      	beq.n	200223e4 <DMA_AllocChannel+0x88>
200223e0:	f7ff ff2a 	bl	20022238 <DMA_Init>
200223e4:	2200      	movs	r2, #0
200223e6:	6028      	str	r0, [r5, #0]
200223e8:	4611      	mov	r1, r2
200223ea:	4620      	mov	r0, r4
200223ec:	f7ff fecc 	bl	20022188 <HAL_NVIC_SetPriority>
200223f0:	4620      	mov	r0, r4
200223f2:	f7ff feff 	bl	200221f4 <HAL_NVIC_EnableIRQ>
200223f6:	2000      	movs	r0, #0
200223f8:	e7dd      	b.n	200223b6 <DMA_AllocChannel+0x5a>
200223fa:	3201      	adds	r2, #1
200223fc:	2a08      	cmp	r2, #8
200223fe:	f103 0308 	add.w	r3, r3, #8
20022402:	d1da      	bne.n	200223ba <DMA_AllocChannel+0x5e>
20022404:	e7d4      	b.n	200223b0 <DMA_AllocChannel+0x54>
20022406:	4434      	add	r4, r6
20022408:	712a      	strb	r2, [r5, #4]
2002240a:	b264      	sxtb	r4, r4
2002240c:	e7e2      	b.n	200223d4 <DMA_AllocChannel+0x78>
2002240e:	bf00      	nop
20022410:	aff7eff8 	.word	0xaff7eff8
20022414:	bfffeff8 	.word	0xbfffeff8
20022418:	20049f34 	.word	0x20049f34
2002241c:	20049ef4 	.word	0x20049ef4
20022420:	50081008 	.word	0x50081008
20022424:	40001008 	.word	0x40001008

20022428 <DMA_FreeChannel.isra.0>:
20022428:	b538      	push	{r3, r4, r5, lr}
2002242a:	4a13      	ldr	r2, [pc, #76]	@ (20022478 <DMA_FreeChannel.isra.0+0x50>)
2002242c:	6c83      	ldr	r3, [r0, #72]	@ 0x48
2002242e:	4293      	cmp	r3, r2
20022430:	d003      	beq.n	2002243a <DMA_FreeChannel.isra.0+0x12>
20022432:	4a12      	ldr	r2, [pc, #72]	@ (2002247c <DMA_FreeChannel.isra.0+0x54>)
20022434:	4293      	cmp	r3, r2
20022436:	d008      	beq.n	2002244a <DMA_FreeChannel.isra.0+0x22>
20022438:	e7fe      	b.n	20022438 <DMA_FreeChannel.isra.0+0x10>
2002243a:	2132      	movs	r1, #50	@ 0x32
2002243c:	4a10      	ldr	r2, [pc, #64]	@ (20022480 <DMA_FreeChannel.isra.0+0x58>)
2002243e:	6cc4      	ldr	r4, [r0, #76]	@ 0x4c
20022440:	2c1f      	cmp	r4, #31
20022442:	ea4f 0394 	mov.w	r3, r4, lsr #2
20022446:	d903      	bls.n	20022450 <DMA_FreeChannel.isra.0+0x28>
20022448:	e7fe      	b.n	20022448 <DMA_FreeChannel.isra.0+0x20>
2002244a:	2102      	movs	r1, #2
2002244c:	4a0d      	ldr	r2, [pc, #52]	@ (20022484 <DMA_FreeChannel.isra.0+0x5c>)
2002244e:	e7f6      	b.n	2002243e <DMA_FreeChannel.isra.0+0x16>
20022450:	f3ef 8410 	mrs	r4, PRIMASK
20022454:	2501      	movs	r5, #1
20022456:	f385 8810 	msr	PRIMASK, r5
2002245a:	eb02 05c3 	add.w	r5, r2, r3, lsl #3
2002245e:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
20022462:	4290      	cmp	r0, r2
20022464:	d105      	bne.n	20022472 <DMA_FreeChannel.isra.0+0x4a>
20022466:	1858      	adds	r0, r3, r1
20022468:	b240      	sxtb	r0, r0
2002246a:	f7ff fed1 	bl	20022210 <HAL_NVIC_DisableIRQ>
2002246e:	2300      	movs	r3, #0
20022470:	712b      	strb	r3, [r5, #4]
20022472:	f384 8810 	msr	PRIMASK, r4
20022476:	bd38      	pop	{r3, r4, r5, pc}
20022478:	50081000 	.word	0x50081000
2002247c:	40001000 	.word	0x40001000
20022480:	20049f34 	.word	0x20049f34
20022484:	20049ef4 	.word	0x20049ef4

20022488 <HAL_DMA_Init>:
20022488:	b538      	push	{r3, r4, r5, lr}
2002248a:	4604      	mov	r4, r0
2002248c:	2800      	cmp	r0, #0
2002248e:	d053      	beq.n	20022538 <HAL_DMA_Init+0xb0>
20022490:	6883      	ldr	r3, [r0, #8]
20022492:	f033 0210 	bics.w	r2, r3, #16
20022496:	d003      	beq.n	200224a0 <HAL_DMA_Init+0x18>
20022498:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
2002249c:	d000      	beq.n	200224a0 <HAL_DMA_Init+0x18>
2002249e:	e7fe      	b.n	2002249e <HAL_DMA_Init+0x16>
200224a0:	68e3      	ldr	r3, [r4, #12]
200224a2:	f033 0340 	bics.w	r3, r3, #64	@ 0x40
200224a6:	d000      	beq.n	200224aa <HAL_DMA_Init+0x22>
200224a8:	e7fe      	b.n	200224a8 <HAL_DMA_Init+0x20>
200224aa:	6923      	ldr	r3, [r4, #16]
200224ac:	f033 0380 	bics.w	r3, r3, #128	@ 0x80
200224b0:	d000      	beq.n	200224b4 <HAL_DMA_Init+0x2c>
200224b2:	e7fe      	b.n	200224b2 <HAL_DMA_Init+0x2a>
200224b4:	6963      	ldr	r3, [r4, #20]
200224b6:	f433 7280 	bics.w	r2, r3, #256	@ 0x100
200224ba:	d003      	beq.n	200224c4 <HAL_DMA_Init+0x3c>
200224bc:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
200224c0:	d000      	beq.n	200224c4 <HAL_DMA_Init+0x3c>
200224c2:	e7fe      	b.n	200224c2 <HAL_DMA_Init+0x3a>
200224c4:	69a3      	ldr	r3, [r4, #24]
200224c6:	f433 6280 	bics.w	r2, r3, #1024	@ 0x400
200224ca:	d003      	beq.n	200224d4 <HAL_DMA_Init+0x4c>
200224cc:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
200224d0:	d000      	beq.n	200224d4 <HAL_DMA_Init+0x4c>
200224d2:	e7fe      	b.n	200224d2 <HAL_DMA_Init+0x4a>
200224d4:	69e3      	ldr	r3, [r4, #28]
200224d6:	f033 0320 	bics.w	r3, r3, #32
200224da:	d000      	beq.n	200224de <HAL_DMA_Init+0x56>
200224dc:	e7fe      	b.n	200224dc <HAL_DMA_Init+0x54>
200224de:	6a23      	ldr	r3, [r4, #32]
200224e0:	f433 5340 	bics.w	r3, r3, #12288	@ 0x3000
200224e4:	d000      	beq.n	200224e8 <HAL_DMA_Init+0x60>
200224e6:	e7fe      	b.n	200224e6 <HAL_DMA_Init+0x5e>
200224e8:	6863      	ldr	r3, [r4, #4]
200224ea:	2b3f      	cmp	r3, #63	@ 0x3f
200224ec:	d900      	bls.n	200224f0 <HAL_DMA_Init+0x68>
200224ee:	e7fe      	b.n	200224ee <HAL_DMA_Init+0x66>
200224f0:	6822      	ldr	r2, [r4, #0]
200224f2:	4b13      	ldr	r3, [pc, #76]	@ (20022540 <HAL_DMA_Init+0xb8>)
200224f4:	4413      	add	r3, r2
200224f6:	2b8c      	cmp	r3, #140	@ 0x8c
200224f8:	d813      	bhi.n	20022522 <HAL_DMA_Init+0x9a>
200224fa:	2214      	movs	r2, #20
200224fc:	fbb3 f3f2 	udiv	r3, r3, r2
20022500:	009b      	lsls	r3, r3, #2
20022502:	64e3      	str	r3, [r4, #76]	@ 0x4c
20022504:	4b0f      	ldr	r3, [pc, #60]	@ (20022544 <HAL_DMA_Init+0xbc>)
20022506:	64a3      	str	r3, [r4, #72]	@ 0x48
20022508:	2100      	movs	r1, #0
2002250a:	4620      	mov	r0, r4
2002250c:	f7ff ff26 	bl	2002235c <DMA_AllocChannel>
20022510:	4605      	mov	r5, r0
20022512:	b998      	cbnz	r0, 2002253c <HAL_DMA_Init+0xb4>
20022514:	4620      	mov	r0, r4
20022516:	f7ff fe8f 	bl	20022238 <DMA_Init>
2002251a:	f7ff ff85 	bl	20022428 <DMA_FreeChannel.isra.0>
2002251e:	4628      	mov	r0, r5
20022520:	bd38      	pop	{r3, r4, r5, pc}
20022522:	4b09      	ldr	r3, [pc, #36]	@ (20022548 <HAL_DMA_Init+0xc0>)
20022524:	4413      	add	r3, r2
20022526:	2b8c      	cmp	r3, #140	@ 0x8c
20022528:	d8ee      	bhi.n	20022508 <HAL_DMA_Init+0x80>
2002252a:	2214      	movs	r2, #20
2002252c:	fbb3 f3f2 	udiv	r3, r3, r2
20022530:	009b      	lsls	r3, r3, #2
20022532:	64e3      	str	r3, [r4, #76]	@ 0x4c
20022534:	4b05      	ldr	r3, [pc, #20]	@ (2002254c <HAL_DMA_Init+0xc4>)
20022536:	e7e6      	b.n	20022506 <HAL_DMA_Init+0x7e>
20022538:	2501      	movs	r5, #1
2002253a:	e7f0      	b.n	2002251e <HAL_DMA_Init+0x96>
2002253c:	2502      	movs	r5, #2
2002253e:	e7ee      	b.n	2002251e <HAL_DMA_Init+0x96>
20022540:	aff7eff8 	.word	0xaff7eff8
20022544:	50081000 	.word	0x50081000
20022548:	bfffeff8 	.word	0xbfffeff8
2002254c:	40001000 	.word	0x40001000

20022550 <HAL_DMA_DeInit>:
20022550:	b510      	push	{r4, lr}
20022552:	4604      	mov	r4, r0
20022554:	2800      	cmp	r0, #0
20022556:	d04e      	beq.n	200225f6 <HAL_DMA_DeInit+0xa6>
20022558:	6802      	ldr	r2, [r0, #0]
2002255a:	6813      	ldr	r3, [r2, #0]
2002255c:	f023 0301 	bic.w	r3, r3, #1
20022560:	6013      	str	r3, [r2, #0]
20022562:	4b26      	ldr	r3, [pc, #152]	@ (200225fc <HAL_DMA_DeInit+0xac>)
20022564:	4413      	add	r3, r2
20022566:	2b8c      	cmp	r3, #140	@ 0x8c
20022568:	d82d      	bhi.n	200225c6 <HAL_DMA_DeInit+0x76>
2002256a:	2114      	movs	r1, #20
2002256c:	fbb3 f3f1 	udiv	r3, r3, r1
20022570:	009b      	lsls	r3, r3, #2
20022572:	64c3      	str	r3, [r0, #76]	@ 0x4c
20022574:	4b22      	ldr	r3, [pc, #136]	@ (20022600 <HAL_DMA_DeInit+0xb0>)
20022576:	64a3      	str	r3, [r4, #72]	@ 0x48
20022578:	2300      	movs	r3, #0
2002257a:	2101      	movs	r1, #1
2002257c:	6013      	str	r3, [r2, #0]
2002257e:	e9d4 2312 	ldrd	r2, r3, [r4, #72]	@ 0x48
20022582:	f003 001c 	and.w	r0, r3, #28
20022586:	4081      	lsls	r1, r0
20022588:	2b0f      	cmp	r3, #15
2002258a:	6051      	str	r1, [r2, #4]
2002258c:	ea4f 0193 	mov.w	r1, r3, lsr #2
20022590:	d824      	bhi.n	200225dc <HAL_DMA_DeInit+0x8c>
20022592:	203f      	movs	r0, #63	@ 0x3f
20022594:	005b      	lsls	r3, r3, #1
20022596:	f8d2 10a8 	ldr.w	r1, [r2, #168]	@ 0xa8
2002259a:	f003 0338 	and.w	r3, r3, #56	@ 0x38
2002259e:	fa00 f303 	lsl.w	r3, r0, r3
200225a2:	ea21 0303 	bic.w	r3, r1, r3
200225a6:	f8c2 30a8 	str.w	r3, [r2, #168]	@ 0xa8
200225aa:	4620      	mov	r0, r4
200225ac:	f7ff ff3c 	bl	20022428 <DMA_FreeChannel.isra.0>
200225b0:	2000      	movs	r0, #0
200225b2:	e9c4 000d 	strd	r0, r0, [r4, #52]	@ 0x34
200225b6:	e9c4 000f 	strd	r0, r0, [r4, #60]	@ 0x3c
200225ba:	6460      	str	r0, [r4, #68]	@ 0x44
200225bc:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
200225c0:	f884 002d 	strb.w	r0, [r4, #45]	@ 0x2d
200225c4:	bd10      	pop	{r4, pc}
200225c6:	4b0f      	ldr	r3, [pc, #60]	@ (20022604 <HAL_DMA_DeInit+0xb4>)
200225c8:	4413      	add	r3, r2
200225ca:	2b8c      	cmp	r3, #140	@ 0x8c
200225cc:	d8d4      	bhi.n	20022578 <HAL_DMA_DeInit+0x28>
200225ce:	2114      	movs	r1, #20
200225d0:	fbb3 f3f1 	udiv	r3, r3, r1
200225d4:	009b      	lsls	r3, r3, #2
200225d6:	64c3      	str	r3, [r0, #76]	@ 0x4c
200225d8:	4b0b      	ldr	r3, [pc, #44]	@ (20022608 <HAL_DMA_DeInit+0xb8>)
200225da:	e7cc      	b.n	20022576 <HAL_DMA_DeInit+0x26>
200225dc:	f001 0303 	and.w	r3, r1, #3
200225e0:	213f      	movs	r1, #63	@ 0x3f
200225e2:	f8d2 00ac 	ldr.w	r0, [r2, #172]	@ 0xac
200225e6:	00db      	lsls	r3, r3, #3
200225e8:	fa01 f303 	lsl.w	r3, r1, r3
200225ec:	ea20 0303 	bic.w	r3, r0, r3
200225f0:	f8c2 30ac 	str.w	r3, [r2, #172]	@ 0xac
200225f4:	e7d9      	b.n	200225aa <HAL_DMA_DeInit+0x5a>
200225f6:	2001      	movs	r0, #1
200225f8:	e7e4      	b.n	200225c4 <HAL_DMA_DeInit+0x74>
200225fa:	bf00      	nop
200225fc:	aff7eff8 	.word	0xaff7eff8
20022600:	50081000 	.word	0x50081000
20022604:	bfffeff8 	.word	0xbfffeff8
20022608:	40001000 	.word	0x40001000

2002260c <HAL_DMA_PollForTransfer>:
2002260c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
20022610:	f890 302d 	ldrb.w	r3, [r0, #45]	@ 0x2d
20022614:	4617      	mov	r7, r2
20022616:	2b02      	cmp	r3, #2
20022618:	4604      	mov	r4, r0
2002261a:	4688      	mov	r8, r1
2002261c:	b2da      	uxtb	r2, r3
2002261e:	d005      	beq.n	2002262c <HAL_DMA_PollForTransfer+0x20>
20022620:	2304      	movs	r3, #4
20022622:	6443      	str	r3, [r0, #68]	@ 0x44
20022624:	2300      	movs	r3, #0
20022626:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
2002262a:	e006      	b.n	2002263a <HAL_DMA_PollForTransfer+0x2e>
2002262c:	6803      	ldr	r3, [r0, #0]
2002262e:	681b      	ldr	r3, [r3, #0]
20022630:	0699      	lsls	r1, r3, #26
20022632:	d505      	bpl.n	20022640 <HAL_DMA_PollForTransfer+0x34>
20022634:	f44f 7380 	mov.w	r3, #256	@ 0x100
20022638:	6443      	str	r3, [r0, #68]	@ 0x44
2002263a:	2001      	movs	r0, #1
2002263c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
20022640:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
20022642:	f005 051c 	and.w	r5, r5, #28
20022646:	f1b8 0f00 	cmp.w	r8, #0
2002264a:	d123      	bne.n	20022694 <HAL_DMA_PollForTransfer+0x88>
2002264c:	fa02 f505 	lsl.w	r5, r2, r5
20022650:	f7ff fbd4 	bl	20021dfc <HAL_GetTick>
20022654:	f04f 0a08 	mov.w	sl, #8
20022658:	4681      	mov	r9, r0
2002265a:	e9d4 6312 	ldrd	r6, r3, [r4, #72]	@ 0x48
2002265e:	f003 031c 	and.w	r3, r3, #28
20022662:	fa0a f103 	lsl.w	r1, sl, r3
20022666:	6832      	ldr	r2, [r6, #0]
20022668:	ea12 0b05 	ands.w	fp, r2, r5
2002266c:	d016      	beq.n	2002269c <HAL_DMA_PollForTransfer+0x90>
2002266e:	f1b8 0f00 	cmp.w	r8, #0
20022672:	d136      	bne.n	200226e2 <HAL_DMA_PollForTransfer+0xd6>
20022674:	2202      	movs	r2, #2
20022676:	fa02 f303 	lsl.w	r3, r2, r3
2002267a:	6073      	str	r3, [r6, #4]
2002267c:	6d23      	ldr	r3, [r4, #80]	@ 0x50
2002267e:	b92b      	cbnz	r3, 2002268c <HAL_DMA_PollForTransfer+0x80>
20022680:	4620      	mov	r0, r4
20022682:	f7ff fed1 	bl	20022428 <DMA_FreeChannel.isra.0>
20022686:	2301      	movs	r3, #1
20022688:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
2002268c:	2000      	movs	r0, #0
2002268e:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
20022692:	e7d3      	b.n	2002263c <HAL_DMA_PollForTransfer+0x30>
20022694:	2304      	movs	r3, #4
20022696:	fa03 f505 	lsl.w	r5, r3, r5
2002269a:	e7d9      	b.n	20022650 <HAL_DMA_PollForTransfer+0x44>
2002269c:	6832      	ldr	r2, [r6, #0]
2002269e:	4211      	tst	r1, r2
200226a0:	d00c      	beq.n	200226bc <HAL_DMA_PollForTransfer+0xb0>
200226a2:	2501      	movs	r5, #1
200226a4:	fa05 f303 	lsl.w	r3, r5, r3
200226a8:	6073      	str	r3, [r6, #4]
200226aa:	4620      	mov	r0, r4
200226ac:	6465      	str	r5, [r4, #68]	@ 0x44
200226ae:	f7ff febb 	bl	20022428 <DMA_FreeChannel.isra.0>
200226b2:	f884 502d 	strb.w	r5, [r4, #45]	@ 0x2d
200226b6:	f884 b02c 	strb.w	fp, [r4, #44]	@ 0x2c
200226ba:	e7be      	b.n	2002263a <HAL_DMA_PollForTransfer+0x2e>
200226bc:	1c7a      	adds	r2, r7, #1
200226be:	d0d2      	beq.n	20022666 <HAL_DMA_PollForTransfer+0x5a>
200226c0:	f7ff fb9c 	bl	20021dfc <HAL_GetTick>
200226c4:	eba0 0009 	sub.w	r0, r0, r9
200226c8:	42b8      	cmp	r0, r7
200226ca:	d801      	bhi.n	200226d0 <HAL_DMA_PollForTransfer+0xc4>
200226cc:	2f00      	cmp	r7, #0
200226ce:	d1c4      	bne.n	2002265a <HAL_DMA_PollForTransfer+0x4e>
200226d0:	2320      	movs	r3, #32
200226d2:	4620      	mov	r0, r4
200226d4:	6463      	str	r3, [r4, #68]	@ 0x44
200226d6:	f7ff fea7 	bl	20022428 <DMA_FreeChannel.isra.0>
200226da:	2301      	movs	r3, #1
200226dc:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
200226e0:	e7a0      	b.n	20022624 <HAL_DMA_PollForTransfer+0x18>
200226e2:	2204      	movs	r2, #4
200226e4:	fa02 f303 	lsl.w	r3, r2, r3
200226e8:	6073      	str	r3, [r6, #4]
200226ea:	e7cf      	b.n	2002268c <HAL_DMA_PollForTransfer+0x80>

200226ec <DMA_Remap>:
200226ec:	b530      	push	{r4, r5, lr}
200226ee:	4b15      	ldr	r3, [pc, #84]	@ (20022744 <DMA_Remap+0x58>)
200226f0:	6c84      	ldr	r4, [r0, #72]	@ 0x48
200226f2:	429c      	cmp	r4, r3
200226f4:	d11b      	bne.n	2002272e <DMA_Remap+0x42>
200226f6:	6883      	ldr	r3, [r0, #8]
200226f8:	2b10      	cmp	r3, #16
200226fa:	d002      	beq.n	20022702 <DMA_Remap+0x16>
200226fc:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
20022700:	d108      	bne.n	20022714 <DMA_Remap+0x28>
20022702:	680b      	ldr	r3, [r1, #0]
20022704:	4c10      	ldr	r4, [pc, #64]	@ (20022748 <DMA_Remap+0x5c>)
20022706:	f103 4560 	add.w	r5, r3, #3758096384	@ 0xe0000000
2002270a:	42a5      	cmp	r5, r4
2002270c:	bf98      	it	ls
2002270e:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
20022712:	600b      	str	r3, [r1, #0]
20022714:	6883      	ldr	r3, [r0, #8]
20022716:	f433 4380 	bics.w	r3, r3, #16384	@ 0x4000
2002271a:	d108      	bne.n	2002272e <DMA_Remap+0x42>
2002271c:	6813      	ldr	r3, [r2, #0]
2002271e:	480a      	ldr	r0, [pc, #40]	@ (20022748 <DMA_Remap+0x5c>)
20022720:	f103 4460 	add.w	r4, r3, #3758096384	@ 0xe0000000
20022724:	4284      	cmp	r4, r0
20022726:	bf98      	it	ls
20022728:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
2002272c:	6013      	str	r3, [r2, #0]
2002272e:	680b      	ldr	r3, [r1, #0]
20022730:	f103 4270 	add.w	r2, r3, #4026531840	@ 0xf0000000
20022734:	f1b2 5f80 	cmp.w	r2, #268435456	@ 0x10000000
20022738:	bf3c      	itt	cc
2002273a:	f103 43a0 	addcc.w	r3, r3, #1342177280	@ 0x50000000
2002273e:	600b      	strcc	r3, [r1, #0]
20022740:	bd30      	pop	{r4, r5, pc}
20022742:	bf00      	nop
20022744:	40001000 	.word	0x40001000
20022748:	0007fffe 	.word	0x0007fffe

2002274c <DMA_Start>:
2002274c:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
20022750:	e9d0 b917 	ldrd	fp, r9, [r0, #92]	@ 0x5c
20022754:	f64f 76ff 	movw	r6, #65535	@ 0xffff
20022758:	6d03      	ldr	r3, [r0, #80]	@ 0x50
2002275a:	6805      	ldr	r5, [r0, #0]
2002275c:	429e      	cmp	r6, r3
2002275e:	bf28      	it	cs
20022760:	461e      	movcs	r6, r3
20022762:	1b9b      	subs	r3, r3, r6
20022764:	6503      	str	r3, [r0, #80]	@ 0x50
20022766:	682b      	ldr	r3, [r5, #0]
20022768:	f890 7066 	ldrb.w	r7, [r0, #102]	@ 0x66
2002276c:	f023 0301 	bic.w	r3, r3, #1
20022770:	f890 a067 	ldrb.w	sl, [r0, #103]	@ 0x67
20022774:	6586      	str	r6, [r0, #88]	@ 0x58
20022776:	4688      	mov	r8, r1
20022778:	602b      	str	r3, [r5, #0]
2002277a:	e9d0 2312 	ldrd	r2, r3, [r0, #72]	@ 0x48
2002277e:	f003 011c 	and.w	r1, r3, #28
20022782:	2301      	movs	r3, #1
20022784:	4604      	mov	r4, r0
20022786:	408b      	lsls	r3, r1
20022788:	6053      	str	r3, [r2, #4]
2002278a:	4669      	mov	r1, sp
2002278c:	aa01      	add	r2, sp, #4
2002278e:	606e      	str	r6, [r5, #4]
20022790:	e9cd b900 	strd	fp, r9, [sp]
20022794:	f7ff ffaa 	bl	200226ec <DMA_Remap>
20022798:	e9dd 2300 	ldrd	r2, r3, [sp]
2002279c:	68a1      	ldr	r1, [r4, #8]
2002279e:	2910      	cmp	r1, #16
200227a0:	bf0b      	itete	eq
200227a2:	60ab      	streq	r3, [r5, #8]
200227a4:	60aa      	strne	r2, [r5, #8]
200227a6:	60ea      	streq	r2, [r5, #12]
200227a8:	60eb      	strne	r3, [r5, #12]
200227aa:	f894 3064 	ldrb.w	r3, [r4, #100]	@ 0x64
200227ae:	b11b      	cbz	r3, 200227b8 <DMA_Start+0x6c>
200227b0:	fa06 f707 	lsl.w	r7, r6, r7
200227b4:	445f      	add	r7, fp
200227b6:	65e7      	str	r7, [r4, #92]	@ 0x5c
200227b8:	f894 3065 	ldrb.w	r3, [r4, #101]	@ 0x65
200227bc:	b11b      	cbz	r3, 200227c6 <DMA_Start+0x7a>
200227be:	fa06 f60a 	lsl.w	r6, r6, sl
200227c2:	444e      	add	r6, r9
200227c4:	6626      	str	r6, [r4, #96]	@ 0x60
200227c6:	f1b8 0f00 	cmp.w	r8, #0
200227ca:	d005      	beq.n	200227d8 <DMA_Start+0x8c>
200227cc:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
200227ce:	b153      	cbz	r3, 200227e6 <DMA_Start+0x9a>
200227d0:	682b      	ldr	r3, [r5, #0]
200227d2:	f043 030e 	orr.w	r3, r3, #14
200227d6:	602b      	str	r3, [r5, #0]
200227d8:	682b      	ldr	r3, [r5, #0]
200227da:	f043 0301 	orr.w	r3, r3, #1
200227de:	602b      	str	r3, [r5, #0]
200227e0:	b003      	add	sp, #12
200227e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200227e6:	682b      	ldr	r3, [r5, #0]
200227e8:	f023 0304 	bic.w	r3, r3, #4
200227ec:	602b      	str	r3, [r5, #0]
200227ee:	682b      	ldr	r3, [r5, #0]
200227f0:	f043 030a 	orr.w	r3, r3, #10
200227f4:	e7ef      	b.n	200227d6 <DMA_Start+0x8a>

200227f6 <HAL_DMA_Start>:
200227f6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200227f8:	461d      	mov	r5, r3
200227fa:	69c3      	ldr	r3, [r0, #28]
200227fc:	4604      	mov	r4, r0
200227fe:	2b20      	cmp	r3, #32
20022800:	460f      	mov	r7, r1
20022802:	4616      	mov	r6, r2
20022804:	d105      	bne.n	20022812 <HAL_DMA_Start+0x1c>
20022806:	f64f 73fe 	movw	r3, #65534	@ 0xfffe
2002280a:	1e6a      	subs	r2, r5, #1
2002280c:	429a      	cmp	r2, r3
2002280e:	d900      	bls.n	20022812 <HAL_DMA_Start+0x1c>
20022810:	e7fe      	b.n	20022810 <HAL_DMA_Start+0x1a>
20022812:	f894 302c 	ldrb.w	r3, [r4, #44]	@ 0x2c
20022816:	2b01      	cmp	r3, #1
20022818:	d00e      	beq.n	20022838 <HAL_DMA_Start+0x42>
2002281a:	2301      	movs	r3, #1
2002281c:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
20022820:	f894 302d 	ldrb.w	r3, [r4, #45]	@ 0x2d
20022824:	2b01      	cmp	r3, #1
20022826:	b2d9      	uxtb	r1, r3
20022828:	d103      	bne.n	20022832 <HAL_DMA_Start+0x3c>
2002282a:	4620      	mov	r0, r4
2002282c:	f7ff fd96 	bl	2002235c <DMA_AllocChannel>
20022830:	b120      	cbz	r0, 2002283c <HAL_DMA_Start+0x46>
20022832:	2300      	movs	r3, #0
20022834:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
20022838:	2002      	movs	r0, #2
2002283a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002283c:	2302      	movs	r3, #2
2002283e:	e9c4 5514 	strd	r5, r5, [r4, #80]	@ 0x50
20022842:	e9c4 7617 	strd	r7, r6, [r4, #92]	@ 0x5c
20022846:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
2002284a:	6460      	str	r0, [r4, #68]	@ 0x44
2002284c:	6d20      	ldr	r0, [r4, #80]	@ 0x50
2002284e:	2800      	cmp	r0, #0
20022850:	d0f3      	beq.n	2002283a <HAL_DMA_Start+0x44>
20022852:	2100      	movs	r1, #0
20022854:	4620      	mov	r0, r4
20022856:	f7ff ff79 	bl	2002274c <DMA_Start>
2002285a:	6d23      	ldr	r3, [r4, #80]	@ 0x50
2002285c:	2b00      	cmp	r3, #0
2002285e:	d0f5      	beq.n	2002284c <HAL_DMA_Start+0x56>
20022860:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20022864:	2100      	movs	r1, #0
20022866:	4620      	mov	r0, r4
20022868:	f7ff fed0 	bl	2002260c <HAL_DMA_PollForTransfer>
2002286c:	2800      	cmp	r0, #0
2002286e:	d0ed      	beq.n	2002284c <HAL_DMA_Start+0x56>
20022870:	e7e3      	b.n	2002283a <HAL_DMA_Start+0x44>
	...

20022874 <HAL_EFUSE_Read>:
20022874:	2a20      	cmp	r2, #32
20022876:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002287a:	4606      	mov	r6, r0
2002287c:	460c      	mov	r4, r1
2002287e:	4615      	mov	r5, r2
20022880:	dc30      	bgt.n	200228e4 <HAL_EFUSE_Read+0x70>
20022882:	f3c0 08c4 	ubfx	r8, r0, #3, #5
20022886:	eb08 0302 	add.w	r3, r8, r2
2002288a:	2b20      	cmp	r3, #32
2002288c:	dc2a      	bgt.n	200228e4 <HAL_EFUSE_Read+0x70>
2002288e:	0797      	lsls	r7, r2, #30
20022890:	d128      	bne.n	200228e4 <HAL_EFUSE_Read+0x70>
20022892:	f010 091f 	ands.w	r9, r0, #31
20022896:	d125      	bne.n	200228e4 <HAL_EFUSE_Read+0x70>
20022898:	4a25      	ldr	r2, [pc, #148]	@ (20022930 <HAL_EFUSE_Read+0xbc>)
2002289a:	2014      	movs	r0, #20
2002289c:	f8d2 7094 	ldr.w	r7, [r2, #148]	@ 0x94
200228a0:	0a36      	lsrs	r6, r6, #8
200228a2:	1cfb      	adds	r3, r7, #3
200228a4:	2b0e      	cmp	r3, #14
200228a6:	bf38      	it	cc
200228a8:	230e      	movcc	r3, #14
200228aa:	2b0f      	cmp	r3, #15
200228ac:	bf28      	it	cs
200228ae:	230f      	movcs	r3, #15
200228b0:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
200228b4:	f7ff fb07 	bl	20021ec6 <HAL_Delay_us>
200228b8:	4a1e      	ldr	r2, [pc, #120]	@ (20022934 <HAL_EFUSE_Read+0xc0>)
200228ba:	00b3      	lsls	r3, r6, #2
200228bc:	6013      	str	r3, [r2, #0]
200228be:	6813      	ldr	r3, [r2, #0]
200228c0:	491d      	ldr	r1, [pc, #116]	@ (20022938 <HAL_EFUSE_Read+0xc4>)
200228c2:	f043 0301 	orr.w	r3, r3, #1
200228c6:	6013      	str	r3, [r2, #0]
200228c8:	464b      	mov	r3, r9
200228ca:	4369      	muls	r1, r5
200228cc:	6890      	ldr	r0, [r2, #8]
200228ce:	07c0      	lsls	r0, r0, #31
200228d0:	d50c      	bpl.n	200228ec <HAL_EFUSE_Read+0x78>
200228d2:	6890      	ldr	r0, [r2, #8]
200228d4:	428b      	cmp	r3, r1
200228d6:	f040 0001 	orr.w	r0, r0, #1
200228da:	6090      	str	r0, [r2, #8]
200228dc:	d30a      	bcc.n	200228f4 <HAL_EFUSE_Read+0x80>
200228de:	4b14      	ldr	r3, [pc, #80]	@ (20022930 <HAL_EFUSE_Read+0xbc>)
200228e0:	f8c3 7094 	str.w	r7, [r3, #148]	@ 0x94
200228e4:	2500      	movs	r5, #0
200228e6:	4628      	mov	r0, r5
200228e8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
200228ec:	428b      	cmp	r3, r1
200228ee:	d2f0      	bcs.n	200228d2 <HAL_EFUSE_Read+0x5e>
200228f0:	3301      	adds	r3, #1
200228f2:	e7eb      	b.n	200228cc <HAL_EFUSE_Read+0x58>
200228f4:	4a11      	ldr	r2, [pc, #68]	@ (2002293c <HAL_EFUSE_Read+0xc8>)
200228f6:	f008 001c 	and.w	r0, r8, #28
200228fa:	eb00 1046 	add.w	r0, r0, r6, lsl #5
200228fe:	f025 0103 	bic.w	r1, r5, #3
20022902:	4402      	add	r2, r0
20022904:	4421      	add	r1, r4
20022906:	428c      	cmp	r4, r1
20022908:	d103      	bne.n	20022912 <HAL_EFUSE_Read+0x9e>
2002290a:	4b09      	ldr	r3, [pc, #36]	@ (20022930 <HAL_EFUSE_Read+0xbc>)
2002290c:	f8c3 7094 	str.w	r7, [r3, #148]	@ 0x94
20022910:	e7e9      	b.n	200228e6 <HAL_EFUSE_Read+0x72>
20022912:	f852 3b04 	ldr.w	r3, [r2], #4
20022916:	3404      	adds	r4, #4
20022918:	0a18      	lsrs	r0, r3, #8
2002291a:	f804 3c04 	strb.w	r3, [r4, #-4]
2002291e:	f804 0c03 	strb.w	r0, [r4, #-3]
20022922:	0c18      	lsrs	r0, r3, #16
20022924:	0e1b      	lsrs	r3, r3, #24
20022926:	f804 0c02 	strb.w	r0, [r4, #-2]
2002292a:	f804 3c01 	strb.w	r3, [r4, #-1]
2002292e:	e7ea      	b.n	20022906 <HAL_EFUSE_Read+0x92>
20022930:	500ca000 	.word	0x500ca000
20022934:	5000c000 	.word	0x5000c000
20022938:	0005dc00 	.word	0x0005dc00
2002293c:	5000c030 	.word	0x5000c030

20022940 <EXT_DMA_SetConfig>:
20022940:	b530      	push	{r4, r5, lr}
20022942:	2501      	movs	r5, #1
20022944:	6804      	ldr	r4, [r0, #0]
20022946:	6065      	str	r5, [r4, #4]
20022948:	60e3      	str	r3, [r4, #12]
2002294a:	f101 4370 	add.w	r3, r1, #4026531840	@ 0xf0000000
2002294e:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
20022952:	f102 4370 	add.w	r3, r2, #4026531840	@ 0xf0000000
20022956:	bf38      	it	cc
20022958:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
2002295c:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
20022960:	7b03      	ldrb	r3, [r0, #12]
20022962:	bf38      	it	cc
20022964:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
20022968:	6121      	str	r1, [r4, #16]
2002296a:	6162      	str	r2, [r4, #20]
2002296c:	b103      	cbz	r3, 20022970 <EXT_DMA_SetConfig+0x30>
2002296e:	e7fe      	b.n	2002296e <EXT_DMA_SetConfig+0x2e>
20022970:	bd30      	pop	{r4, r5, pc}
	...

20022974 <HAL_EXT_DMA_Init>:
20022974:	b510      	push	{r4, lr}
20022976:	b1b8      	cbz	r0, 200229a8 <HAL_EXT_DMA_Init+0x34>
20022978:	2302      	movs	r3, #2
2002297a:	4a0c      	ldr	r2, [pc, #48]	@ (200229ac <HAL_EXT_DMA_Init+0x38>)
2002297c:	7643      	strb	r3, [r0, #25]
2002297e:	6894      	ldr	r4, [r2, #8]
20022980:	e9d0 3101 	ldrd	r3, r1, [r0, #4]
20022984:	430b      	orrs	r3, r1
20022986:	490a      	ldr	r1, [pc, #40]	@ (200229b0 <HAL_EXT_DMA_Init+0x3c>)
20022988:	6002      	str	r2, [r0, #0]
2002298a:	4021      	ands	r1, r4
2002298c:	430b      	orrs	r3, r1
2002298e:	f443 6320 	orr.w	r3, r3, #2560	@ 0xa00
20022992:	6093      	str	r3, [r2, #8]
20022994:	7b03      	ldrb	r3, [r0, #12]
20022996:	b103      	cbz	r3, 2002299a <HAL_EXT_DMA_Init+0x26>
20022998:	e7fe      	b.n	20022998 <HAL_EXT_DMA_Init+0x24>
2002299a:	6213      	str	r3, [r2, #32]
2002299c:	2201      	movs	r2, #1
2002299e:	62c3      	str	r3, [r0, #44]	@ 0x2c
200229a0:	7603      	strb	r3, [r0, #24]
200229a2:	7642      	strb	r2, [r0, #25]
200229a4:	4618      	mov	r0, r3
200229a6:	bd10      	pop	{r4, pc}
200229a8:	2001      	movs	r0, #1
200229aa:	e7fc      	b.n	200229a6 <HAL_EXT_DMA_Init+0x32>
200229ac:	50001000 	.word	0x50001000
200229b0:	fff0f020 	.word	0xfff0f020

200229b4 <HAL_EXT_DMA_Start>:
200229b4:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
200229b8:	b570      	push	{r4, r5, r6, lr}
200229ba:	d304      	bcc.n	200229c6 <HAL_EXT_DMA_Start+0x12>
200229bc:	f44f 7300 	mov.w	r3, #512	@ 0x200
200229c0:	62c3      	str	r3, [r0, #44]	@ 0x2c
200229c2:	2001      	movs	r0, #1
200229c4:	bd70      	pop	{r4, r5, r6, pc}
200229c6:	7e05      	ldrb	r5, [r0, #24]
200229c8:	2d01      	cmp	r5, #1
200229ca:	d017      	beq.n	200229fc <HAL_EXT_DMA_Start+0x48>
200229cc:	2501      	movs	r5, #1
200229ce:	7605      	strb	r5, [r0, #24]
200229d0:	7e45      	ldrb	r5, [r0, #25]
200229d2:	2d01      	cmp	r5, #1
200229d4:	f04f 0500 	mov.w	r5, #0
200229d8:	d10f      	bne.n	200229fa <HAL_EXT_DMA_Start+0x46>
200229da:	2602      	movs	r6, #2
200229dc:	6804      	ldr	r4, [r0, #0]
200229de:	7646      	strb	r6, [r0, #25]
200229e0:	62c5      	str	r5, [r0, #44]	@ 0x2c
200229e2:	68a6      	ldr	r6, [r4, #8]
200229e4:	f026 0601 	bic.w	r6, r6, #1
200229e8:	60a6      	str	r6, [r4, #8]
200229ea:	f7ff ffa9 	bl	20022940 <EXT_DMA_SetConfig>
200229ee:	68a3      	ldr	r3, [r4, #8]
200229f0:	4628      	mov	r0, r5
200229f2:	f043 0301 	orr.w	r3, r3, #1
200229f6:	60a3      	str	r3, [r4, #8]
200229f8:	e7e4      	b.n	200229c4 <HAL_EXT_DMA_Start+0x10>
200229fa:	7605      	strb	r5, [r0, #24]
200229fc:	2002      	movs	r0, #2
200229fe:	e7e1      	b.n	200229c4 <HAL_EXT_DMA_Start+0x10>

20022a00 <HAL_EXT_DMA_PollForTransfer>:
20022a00:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20022a04:	7e43      	ldrb	r3, [r0, #25]
20022a06:	4604      	mov	r4, r0
20022a08:	2b02      	cmp	r3, #2
20022a0a:	460e      	mov	r6, r1
20022a0c:	4615      	mov	r5, r2
20022a0e:	d006      	beq.n	20022a1e <HAL_EXT_DMA_PollForTransfer+0x1e>
20022a10:	2304      	movs	r3, #4
20022a12:	62c3      	str	r3, [r0, #44]	@ 0x2c
20022a14:	2001      	movs	r0, #1
20022a16:	2300      	movs	r3, #0
20022a18:	7623      	strb	r3, [r4, #24]
20022a1a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20022a1e:	2900      	cmp	r1, #0
20022a20:	bf14      	ite	ne
20022a22:	f04f 0804 	movne.w	r8, #4
20022a26:	f04f 0802 	moveq.w	r8, #2
20022a2a:	f7ff f9e7 	bl	20021dfc <HAL_GetTick>
20022a2e:	4607      	mov	r7, r0
20022a30:	6823      	ldr	r3, [r4, #0]
20022a32:	681a      	ldr	r2, [r3, #0]
20022a34:	ea12 0f08 	tst.w	r2, r8
20022a38:	d006      	beq.n	20022a48 <HAL_EXT_DMA_PollForTransfer+0x48>
20022a3a:	b9e6      	cbnz	r6, 20022a76 <HAL_EXT_DMA_PollForTransfer+0x76>
20022a3c:	2202      	movs	r2, #2
20022a3e:	605a      	str	r2, [r3, #4]
20022a40:	2301      	movs	r3, #1
20022a42:	7663      	strb	r3, [r4, #25]
20022a44:	2000      	movs	r0, #0
20022a46:	e7e6      	b.n	20022a16 <HAL_EXT_DMA_PollForTransfer+0x16>
20022a48:	681a      	ldr	r2, [r3, #0]
20022a4a:	f012 0f18 	tst.w	r2, #24
20022a4e:	d004      	beq.n	20022a5a <HAL_EXT_DMA_PollForTransfer+0x5a>
20022a50:	2201      	movs	r2, #1
20022a52:	605a      	str	r2, [r3, #4]
20022a54:	62e2      	str	r2, [r4, #44]	@ 0x2c
20022a56:	7662      	strb	r2, [r4, #25]
20022a58:	e7dc      	b.n	20022a14 <HAL_EXT_DMA_PollForTransfer+0x14>
20022a5a:	1c6a      	adds	r2, r5, #1
20022a5c:	d0e9      	beq.n	20022a32 <HAL_EXT_DMA_PollForTransfer+0x32>
20022a5e:	f7ff f9cd 	bl	20021dfc <HAL_GetTick>
20022a62:	1bc0      	subs	r0, r0, r7
20022a64:	42a8      	cmp	r0, r5
20022a66:	d801      	bhi.n	20022a6c <HAL_EXT_DMA_PollForTransfer+0x6c>
20022a68:	2d00      	cmp	r5, #0
20022a6a:	d1e1      	bne.n	20022a30 <HAL_EXT_DMA_PollForTransfer+0x30>
20022a6c:	2320      	movs	r3, #32
20022a6e:	62e3      	str	r3, [r4, #44]	@ 0x2c
20022a70:	2301      	movs	r3, #1
20022a72:	7663      	strb	r3, [r4, #25]
20022a74:	e7ce      	b.n	20022a14 <HAL_EXT_DMA_PollForTransfer+0x14>
20022a76:	2204      	movs	r2, #4
20022a78:	605a      	str	r2, [r3, #4]
20022a7a:	e7e3      	b.n	20022a44 <HAL_EXT_DMA_PollForTransfer+0x44>

20022a7c <HAL_DBG_printf>:
20022a7c:	b40f      	push	{r0, r1, r2, r3}
20022a7e:	b004      	add	sp, #16
20022a80:	4770      	bx	lr
	...

20022a84 <HAL_Get_backup>:
20022a84:	4b01      	ldr	r3, [pc, #4]	@ (20022a8c <HAL_Get_backup+0x8>)
20022a86:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20022a8a:	4770      	bx	lr
20022a8c:	500cb030 	.word	0x500cb030

20022a90 <HAL_HPAON_WakeCore>:
20022a90:	2802      	cmp	r0, #2
20022a92:	b510      	push	{r4, lr}
20022a94:	d120      	bne.n	20022ad8 <HAL_HPAON_WakeCore+0x48>
20022a96:	4c11      	ldr	r4, [pc, #68]	@ (20022adc <HAL_HPAON_WakeCore+0x4c>)
20022a98:	20e6      	movs	r0, #230	@ 0xe6
20022a9a:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022a9c:	f043 0301 	orr.w	r3, r3, #1
20022aa0:	62e3      	str	r3, [r4, #44]	@ 0x2c
20022aa2:	f7ff fa10 	bl	20021ec6 <HAL_Delay_us>
20022aa6:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022aa8:	069a      	lsls	r2, r3, #26
20022aaa:	d5fc      	bpl.n	20022aa6 <HAL_HPAON_WakeCore+0x16>
20022aac:	201e      	movs	r0, #30
20022aae:	f7ff fa0a 	bl	20021ec6 <HAL_Delay_us>
20022ab2:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022ab4:	069b      	lsls	r3, r3, #26
20022ab6:	d5fc      	bpl.n	20022ab2 <HAL_HPAON_WakeCore+0x22>
20022ab8:	f3ef 8110 	mrs	r1, PRIMASK
20022abc:	2301      	movs	r3, #1
20022abe:	f383 8810 	msr	PRIMASK, r3
20022ac2:	4a07      	ldr	r2, [pc, #28]	@ (20022ae0 <HAL_HPAON_WakeCore+0x50>)
20022ac4:	7813      	ldrb	r3, [r2, #0]
20022ac6:	2b13      	cmp	r3, #19
20022ac8:	d900      	bls.n	20022acc <HAL_HPAON_WakeCore+0x3c>
20022aca:	e7fe      	b.n	20022aca <HAL_HPAON_WakeCore+0x3a>
20022acc:	3301      	adds	r3, #1
20022ace:	7013      	strb	r3, [r2, #0]
20022ad0:	f381 8810 	msr	PRIMASK, r1
20022ad4:	2000      	movs	r0, #0
20022ad6:	bd10      	pop	{r4, pc}
20022ad8:	2001      	movs	r0, #1
20022ada:	e7fc      	b.n	20022ad6 <HAL_HPAON_WakeCore+0x46>
20022adc:	500c0000 	.word	0x500c0000
20022ae0:	20049f74 	.word	0x20049f74

20022ae4 <HAL_HPAON_EnableXT48>:
20022ae4:	4b04      	ldr	r3, [pc, #16]	@ (20022af8 <HAL_HPAON_EnableXT48+0x14>)
20022ae6:	691a      	ldr	r2, [r3, #16]
20022ae8:	f042 0202 	orr.w	r2, r2, #2
20022aec:	611a      	str	r2, [r3, #16]
20022aee:	691a      	ldr	r2, [r3, #16]
20022af0:	2a00      	cmp	r2, #0
20022af2:	dafc      	bge.n	20022aee <HAL_HPAON_EnableXT48+0xa>
20022af4:	4770      	bx	lr
20022af6:	bf00      	nop
20022af8:	500c0000 	.word	0x500c0000

20022afc <HAL_HPAON_DisableXT48>:
20022afc:	4a02      	ldr	r2, [pc, #8]	@ (20022b08 <HAL_HPAON_DisableXT48+0xc>)
20022afe:	6913      	ldr	r3, [r2, #16]
20022b00:	f023 0302 	bic.w	r3, r3, #2
20022b04:	6113      	str	r3, [r2, #16]
20022b06:	4770      	bx	lr
20022b08:	500c0000 	.word	0x500c0000

20022b0c <HAL_QSPI_Init>:
20022b0c:	b510      	push	{r4, lr}
20022b0e:	b1c8      	cbz	r0, 20022b44 <HAL_QSPI_Init+0x38>
20022b10:	b1c1      	cbz	r1, 20022b44 <HAL_QSPI_Init+0x38>
20022b12:	2201      	movs	r2, #1
20022b14:	2300      	movs	r3, #0
20022b16:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
20022b1a:	684c      	ldr	r4, [r1, #4]
20022b1c:	680a      	ldr	r2, [r1, #0]
20022b1e:	f880 4020 	strb.w	r4, [r0, #32]
20022b22:	688c      	ldr	r4, [r1, #8]
20022b24:	68c9      	ldr	r1, [r1, #12]
20022b26:	6043      	str	r3, [r0, #4]
20022b28:	0509      	lsls	r1, r1, #20
20022b2a:	6141      	str	r1, [r0, #20]
20022b2c:	6002      	str	r2, [r0, #0]
20022b2e:	6104      	str	r4, [r0, #16]
20022b30:	21ff      	movs	r1, #255	@ 0xff
20022b32:	f04f 2050 	mov.w	r0, #1342197760	@ 0x50005000
20022b36:	f8c2 1084 	str.w	r1, [r2, #132]	@ 0x84
20022b3a:	6790      	str	r0, [r2, #120]	@ 0x78
20022b3c:	4618      	mov	r0, r3
20022b3e:	6211      	str	r1, [r2, #32]
20022b40:	6451      	str	r1, [r2, #68]	@ 0x44
20022b42:	bd10      	pop	{r4, pc}
20022b44:	2001      	movs	r0, #1
20022b46:	e7fc      	b.n	20022b42 <HAL_QSPI_Init+0x36>

20022b48 <HAL_FLASH_SET_AHB_RCMD>:
20022b48:	b138      	cbz	r0, 20022b5a <HAL_FLASH_SET_AHB_RCMD+0x12>
20022b4a:	6802      	ldr	r2, [r0, #0]
20022b4c:	2000      	movs	r0, #0
20022b4e:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022b50:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
20022b54:	4319      	orrs	r1, r3
20022b56:	6411      	str	r1, [r2, #64]	@ 0x40
20022b58:	4770      	bx	lr
20022b5a:	2001      	movs	r0, #1
20022b5c:	4770      	bx	lr

20022b5e <HAL_FLASH_CFG_AHB_RCMD>:
20022b5e:	b570      	push	{r4, r5, r6, lr}
20022b60:	b1c8      	cbz	r0, 20022b96 <HAL_FLASH_CFG_AHB_RCMD+0x38>
20022b62:	6805      	ldr	r5, [r0, #0]
20022b64:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022b68:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022b6c:	6cac      	ldr	r4, [r5, #72]	@ 0x48
20022b6e:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022b72:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022b76:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022b7a:	f36f 0414 	bfc	r4, #0, #21
20022b7e:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022b82:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022b86:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022b8a:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022b8e:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022b92:	4321      	orrs	r1, r4
20022b94:	64a9      	str	r1, [r5, #72]	@ 0x48
20022b96:	bd70      	pop	{r4, r5, r6, pc}

20022b98 <HAL_FLASH_SET_AHB_WCMD>:
20022b98:	b140      	cbz	r0, 20022bac <HAL_FLASH_SET_AHB_WCMD+0x14>
20022b9a:	6802      	ldr	r2, [r0, #0]
20022b9c:	2000      	movs	r0, #0
20022b9e:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022ba0:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022ba4:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
20022ba8:	6411      	str	r1, [r2, #64]	@ 0x40
20022baa:	4770      	bx	lr
20022bac:	2001      	movs	r0, #1
20022bae:	4770      	bx	lr

20022bb0 <HAL_FLASH_CFG_AHB_WCMD>:
20022bb0:	b570      	push	{r4, r5, r6, lr}
20022bb2:	b1c8      	cbz	r0, 20022be8 <HAL_FLASH_CFG_AHB_WCMD+0x38>
20022bb4:	6805      	ldr	r5, [r0, #0]
20022bb6:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022bba:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022bbe:	6d2c      	ldr	r4, [r5, #80]	@ 0x50
20022bc0:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022bc4:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022bc8:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022bcc:	f36f 0414 	bfc	r4, #0, #21
20022bd0:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022bd4:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022bd8:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022bdc:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022be0:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022be4:	4321      	orrs	r1, r4
20022be6:	6529      	str	r1, [r5, #80]	@ 0x50
20022be8:	bd70      	pop	{r4, r5, r6, pc}

20022bea <HAL_FLASH_WRITE_WORD>:
20022bea:	b118      	cbz	r0, 20022bf4 <HAL_FLASH_WRITE_WORD+0xa>
20022bec:	6803      	ldr	r3, [r0, #0]
20022bee:	2000      	movs	r0, #0
20022bf0:	6059      	str	r1, [r3, #4]
20022bf2:	4770      	bx	lr
20022bf4:	2001      	movs	r0, #1
20022bf6:	4770      	bx	lr

20022bf8 <HAL_FLASH_WRITE_DLEN>:
20022bf8:	b130      	cbz	r0, 20022c08 <HAL_FLASH_WRITE_DLEN+0x10>
20022bfa:	6803      	ldr	r3, [r0, #0]
20022bfc:	3901      	subs	r1, #1
20022bfe:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022c02:	2000      	movs	r0, #0
20022c04:	6259      	str	r1, [r3, #36]	@ 0x24
20022c06:	4770      	bx	lr
20022c08:	2001      	movs	r0, #1
20022c0a:	4770      	bx	lr

20022c0c <HAL_FLASH_WRITE_DLEN2>:
20022c0c:	b130      	cbz	r0, 20022c1c <HAL_FLASH_WRITE_DLEN2+0x10>
20022c0e:	6803      	ldr	r3, [r0, #0]
20022c10:	3901      	subs	r1, #1
20022c12:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022c16:	2000      	movs	r0, #0
20022c18:	6399      	str	r1, [r3, #56]	@ 0x38
20022c1a:	4770      	bx	lr
20022c1c:	2001      	movs	r0, #1
20022c1e:	4770      	bx	lr

20022c20 <HAL_FLASH_WRITE_ABYTE>:
20022c20:	b108      	cbz	r0, 20022c26 <HAL_FLASH_WRITE_ABYTE+0x6>
20022c22:	6803      	ldr	r3, [r0, #0]
20022c24:	6219      	str	r1, [r3, #32]
20022c26:	4770      	bx	lr

20022c28 <HAL_FLASH_IS_CMD_DONE>:
20022c28:	b118      	cbz	r0, 20022c32 <HAL_FLASH_IS_CMD_DONE+0xa>
20022c2a:	6803      	ldr	r3, [r0, #0]
20022c2c:	6918      	ldr	r0, [r3, #16]
20022c2e:	f000 0001 	and.w	r0, r0, #1
20022c32:	4770      	bx	lr

20022c34 <HAL_FLASH_CLR_CMD_DONE>:
20022c34:	b120      	cbz	r0, 20022c40 <HAL_FLASH_CLR_CMD_DONE+0xc>
20022c36:	6802      	ldr	r2, [r0, #0]
20022c38:	6953      	ldr	r3, [r2, #20]
20022c3a:	f043 0301 	orr.w	r3, r3, #1
20022c3e:	6153      	str	r3, [r2, #20]
20022c40:	4770      	bx	lr

20022c42 <HAL_FLASH_SET_CMD>:
20022c42:	b537      	push	{r0, r1, r2, r4, r5, lr}
20022c44:	460d      	mov	r5, r1
20022c46:	4604      	mov	r4, r0
20022c48:	b1e0      	cbz	r0, 20022c84 <HAL_FLASH_SET_CMD+0x42>
20022c4a:	6803      	ldr	r3, [r0, #0]
20022c4c:	61da      	str	r2, [r3, #28]
20022c4e:	6ac3      	ldr	r3, [r0, #44]	@ 0x2c
20022c50:	b15b      	cbz	r3, 20022c6a <HAL_FLASH_SET_CMD+0x28>
20022c52:	2000      	movs	r0, #0
20022c54:	4798      	blx	r3
20022c56:	2330      	movs	r3, #48	@ 0x30
20022c58:	9301      	str	r3, [sp, #4]
20022c5a:	9b01      	ldr	r3, [sp, #4]
20022c5c:	1e5a      	subs	r2, r3, #1
20022c5e:	9201      	str	r2, [sp, #4]
20022c60:	2b00      	cmp	r3, #0
20022c62:	d1fa      	bne.n	20022c5a <HAL_FLASH_SET_CMD+0x18>
20022c64:	2001      	movs	r0, #1
20022c66:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022c68:	4798      	blx	r3
20022c6a:	6823      	ldr	r3, [r4, #0]
20022c6c:	619d      	str	r5, [r3, #24]
20022c6e:	4620      	mov	r0, r4
20022c70:	f7ff ffda 	bl	20022c28 <HAL_FLASH_IS_CMD_DONE>
20022c74:	2800      	cmp	r0, #0
20022c76:	d0fa      	beq.n	20022c6e <HAL_FLASH_SET_CMD+0x2c>
20022c78:	4620      	mov	r0, r4
20022c7a:	f7ff ffdb 	bl	20022c34 <HAL_FLASH_CLR_CMD_DONE>
20022c7e:	2000      	movs	r0, #0
20022c80:	b003      	add	sp, #12
20022c82:	bd30      	pop	{r4, r5, pc}
20022c84:	2001      	movs	r0, #1
20022c86:	e7fb      	b.n	20022c80 <HAL_FLASH_SET_CMD+0x3e>

20022c88 <HAL_FLASH_CLR_STATUS>:
20022c88:	b118      	cbz	r0, 20022c92 <HAL_FLASH_CLR_STATUS+0xa>
20022c8a:	6802      	ldr	r2, [r0, #0]
20022c8c:	6953      	ldr	r3, [r2, #20]
20022c8e:	4319      	orrs	r1, r3
20022c90:	6151      	str	r1, [r2, #20]
20022c92:	4770      	bx	lr

20022c94 <HAL_FLASH_STATUS_MATCH>:
20022c94:	b118      	cbz	r0, 20022c9e <HAL_FLASH_STATUS_MATCH+0xa>
20022c96:	6803      	ldr	r3, [r0, #0]
20022c98:	6918      	ldr	r0, [r3, #16]
20022c9a:	f3c0 00c0 	ubfx	r0, r0, #3, #1
20022c9e:	4770      	bx	lr

20022ca0 <HAL_FLASH_IS_PROG_DONE>:
20022ca0:	b128      	cbz	r0, 20022cae <HAL_FLASH_IS_PROG_DONE+0xe>
20022ca2:	6803      	ldr	r3, [r0, #0]
20022ca4:	6858      	ldr	r0, [r3, #4]
20022ca6:	43c0      	mvns	r0, r0
20022ca8:	f000 0001 	and.w	r0, r0, #1
20022cac:	4770      	bx	lr
20022cae:	2001      	movs	r0, #1
20022cb0:	4770      	bx	lr

20022cb2 <HAL_FLASH_READ32>:
20022cb2:	b108      	cbz	r0, 20022cb8 <HAL_FLASH_READ32+0x6>
20022cb4:	6803      	ldr	r3, [r0, #0]
20022cb6:	6858      	ldr	r0, [r3, #4]
20022cb8:	4770      	bx	lr

20022cba <HAL_FLASH_SET_TXSLOT>:
20022cba:	b120      	cbz	r0, 20022cc6 <HAL_FLASH_SET_TXSLOT+0xc>
20022cbc:	6802      	ldr	r2, [r0, #0]
20022cbe:	6d53      	ldr	r3, [r2, #84]	@ 0x54
20022cc0:	f361 238e 	bfi	r3, r1, #10, #5
20022cc4:	6553      	str	r3, [r2, #84]	@ 0x54
20022cc6:	4770      	bx	lr

20022cc8 <HAL_FLASH_SET_CLK_rom>:
20022cc8:	b108      	cbz	r0, 20022cce <HAL_FLASH_SET_CLK_rom+0x6>
20022cca:	6803      	ldr	r3, [r0, #0]
20022ccc:	60d9      	str	r1, [r3, #12]
20022cce:	4770      	bx	lr

20022cd0 <HAL_FLASH_GET_DIV>:
20022cd0:	b110      	cbz	r0, 20022cd8 <HAL_FLASH_GET_DIV+0x8>
20022cd2:	6803      	ldr	r3, [r0, #0]
20022cd4:	68d8      	ldr	r0, [r3, #12]
20022cd6:	b2c0      	uxtb	r0, r0
20022cd8:	4770      	bx	lr

20022cda <HAL_FLASH_MANUAL_CMD>:
20022cda:	b570      	push	{r4, r5, r6, lr}
20022cdc:	b1e8      	cbz	r0, 20022d1a <HAL_FLASH_MANUAL_CMD+0x40>
20022cde:	6805      	ldr	r5, [r0, #0]
20022ce0:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022ce4:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022ce8:	6aac      	ldr	r4, [r5, #40]	@ 0x28
20022cea:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022cee:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022cf2:	f36f 0415 	bfc	r4, #0, #22
20022cf6:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022cfa:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022cfe:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022d02:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022d06:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022d0a:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022d0e:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022d12:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022d16:	4321      	orrs	r1, r4
20022d18:	62a9      	str	r1, [r5, #40]	@ 0x28
20022d1a:	bd70      	pop	{r4, r5, r6, pc}

20022d1c <HAL_FLASH_MANUAL_CMD2>:
20022d1c:	b570      	push	{r4, r5, r6, lr}
20022d1e:	b1e8      	cbz	r0, 20022d5c <HAL_FLASH_MANUAL_CMD2+0x40>
20022d20:	6805      	ldr	r5, [r0, #0]
20022d22:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022d26:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022d2a:	6bec      	ldr	r4, [r5, #60]	@ 0x3c
20022d2c:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022d30:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022d34:	f36f 0415 	bfc	r4, #0, #22
20022d38:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022d3c:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022d40:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022d44:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022d48:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022d4c:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022d50:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022d54:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022d58:	4321      	orrs	r1, r4
20022d5a:	63e9      	str	r1, [r5, #60]	@ 0x3c
20022d5c:	bd70      	pop	{r4, r5, r6, pc}
	...

20022d60 <HAL_FLASH_SET_ALIAS_RANGE>:
20022d60:	b510      	push	{r4, lr}
20022d62:	b150      	cbz	r0, 20022d7a <HAL_FLASH_SET_ALIAS_RANGE+0x1a>
20022d64:	6803      	ldr	r3, [r0, #0]
20022d66:	2000      	movs	r0, #0
20022d68:	4c05      	ldr	r4, [pc, #20]	@ (20022d80 <HAL_FLASH_SET_ALIAS_RANGE+0x20>)
20022d6a:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022d6e:	440a      	add	r2, r1
20022d70:	4022      	ands	r2, r4
20022d72:	4021      	ands	r1, r4
20022d74:	66d9      	str	r1, [r3, #108]	@ 0x6c
20022d76:	671a      	str	r2, [r3, #112]	@ 0x70
20022d78:	bd10      	pop	{r4, pc}
20022d7a:	2001      	movs	r0, #1
20022d7c:	e7fc      	b.n	20022d78 <HAL_FLASH_SET_ALIAS_RANGE+0x18>
20022d7e:	bf00      	nop
20022d80:	fffffc00 	.word	0xfffffc00

20022d84 <HAL_FLASH_SET_ALIAS_OFFSET>:
20022d84:	b128      	cbz	r0, 20022d92 <HAL_FLASH_SET_ALIAS_OFFSET+0xe>
20022d86:	6803      	ldr	r3, [r0, #0]
20022d88:	f36f 0109 	bfc	r1, #0, #10
20022d8c:	2000      	movs	r0, #0
20022d8e:	6759      	str	r1, [r3, #116]	@ 0x74
20022d90:	4770      	bx	lr
20022d92:	2001      	movs	r0, #1
20022d94:	4770      	bx	lr
	...

20022d98 <HAL_FLASH_SET_CTR>:
20022d98:	b148      	cbz	r0, 20022dae <HAL_FLASH_SET_CTR+0x16>
20022d9a:	6803      	ldr	r3, [r0, #0]
20022d9c:	4805      	ldr	r0, [pc, #20]	@ (20022db4 <HAL_FLASH_SET_CTR+0x1c>)
20022d9e:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022da2:	4001      	ands	r1, r0
20022da4:	4002      	ands	r2, r0
20022da6:	65d9      	str	r1, [r3, #92]	@ 0x5c
20022da8:	2000      	movs	r0, #0
20022daa:	661a      	str	r2, [r3, #96]	@ 0x60
20022dac:	4770      	bx	lr
20022dae:	2001      	movs	r0, #1
20022db0:	4770      	bx	lr
20022db2:	bf00      	nop
20022db4:	fffffc00 	.word	0xfffffc00

20022db8 <HAL_FLASH_SET_NONCE>:
20022db8:	b148      	cbz	r0, 20022dce <HAL_FLASH_SET_NONCE+0x16>
20022dba:	b141      	cbz	r1, 20022dce <HAL_FLASH_SET_NONCE+0x16>
20022dbc:	680b      	ldr	r3, [r1, #0]
20022dbe:	6802      	ldr	r2, [r0, #0]
20022dc0:	ba1b      	rev	r3, r3
20022dc2:	6653      	str	r3, [r2, #100]	@ 0x64
20022dc4:	684b      	ldr	r3, [r1, #4]
20022dc6:	2000      	movs	r0, #0
20022dc8:	ba1b      	rev	r3, r3
20022dca:	6693      	str	r3, [r2, #104]	@ 0x68
20022dcc:	4770      	bx	lr
20022dce:	2001      	movs	r0, #1
20022dd0:	4770      	bx	lr

20022dd2 <HAL_FLASH_SET_AES>:
20022dd2:	b158      	cbz	r0, 20022dec <HAL_FLASH_SET_AES+0x1a>
20022dd4:	6803      	ldr	r3, [r0, #0]
20022dd6:	2901      	cmp	r1, #1
20022dd8:	681a      	ldr	r2, [r3, #0]
20022dda:	d104      	bne.n	20022de6 <HAL_FLASH_SET_AES+0x14>
20022ddc:	f042 0280 	orr.w	r2, r2, #128	@ 0x80
20022de0:	2000      	movs	r0, #0
20022de2:	601a      	str	r2, [r3, #0]
20022de4:	4770      	bx	lr
20022de6:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
20022dea:	e7f9      	b.n	20022de0 <HAL_FLASH_SET_AES+0xe>
20022dec:	2001      	movs	r0, #1
20022dee:	4770      	bx	lr

20022df0 <HAL_FLASH_ENABLE_AES>:
20022df0:	b150      	cbz	r0, 20022e08 <HAL_FLASH_ENABLE_AES+0x18>
20022df2:	6803      	ldr	r3, [r0, #0]
20022df4:	681a      	ldr	r2, [r3, #0]
20022df6:	b121      	cbz	r1, 20022e02 <HAL_FLASH_ENABLE_AES+0x12>
20022df8:	f042 0240 	orr.w	r2, r2, #64	@ 0x40
20022dfc:	2000      	movs	r0, #0
20022dfe:	601a      	str	r2, [r3, #0]
20022e00:	4770      	bx	lr
20022e02:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
20022e06:	e7f9      	b.n	20022dfc <HAL_FLASH_ENABLE_AES+0xc>
20022e08:	2001      	movs	r0, #1
20022e0a:	4770      	bx	lr

20022e0c <HAL_FLASH_ENABLE_QSPI>:
20022e0c:	b150      	cbz	r0, 20022e24 <HAL_FLASH_ENABLE_QSPI+0x18>
20022e0e:	6803      	ldr	r3, [r0, #0]
20022e10:	681a      	ldr	r2, [r3, #0]
20022e12:	b121      	cbz	r1, 20022e1e <HAL_FLASH_ENABLE_QSPI+0x12>
20022e14:	f042 0201 	orr.w	r2, r2, #1
20022e18:	2000      	movs	r0, #0
20022e1a:	601a      	str	r2, [r3, #0]
20022e1c:	4770      	bx	lr
20022e1e:	f022 0201 	bic.w	r2, r2, #1
20022e22:	e7f9      	b.n	20022e18 <HAL_FLASH_ENABLE_QSPI+0xc>
20022e24:	2001      	movs	r0, #1
20022e26:	4770      	bx	lr

20022e28 <HAL_FLASH_ENABLE_OPI>:
20022e28:	b150      	cbz	r0, 20022e40 <HAL_FLASH_ENABLE_OPI+0x18>
20022e2a:	6803      	ldr	r3, [r0, #0]
20022e2c:	681a      	ldr	r2, [r3, #0]
20022e2e:	b121      	cbz	r1, 20022e3a <HAL_FLASH_ENABLE_OPI+0x12>
20022e30:	f442 1200 	orr.w	r2, r2, #2097152	@ 0x200000
20022e34:	2000      	movs	r0, #0
20022e36:	601a      	str	r2, [r3, #0]
20022e38:	4770      	bx	lr
20022e3a:	f422 1200 	bic.w	r2, r2, #2097152	@ 0x200000
20022e3e:	e7f9      	b.n	20022e34 <HAL_FLASH_ENABLE_OPI+0xc>
20022e40:	2001      	movs	r0, #1
20022e42:	4770      	bx	lr

20022e44 <HAL_FLASH_ENABLE_HYPER>:
20022e44:	b150      	cbz	r0, 20022e5c <HAL_FLASH_ENABLE_HYPER+0x18>
20022e46:	6803      	ldr	r3, [r0, #0]
20022e48:	689a      	ldr	r2, [r3, #8]
20022e4a:	b121      	cbz	r1, 20022e56 <HAL_FLASH_ENABLE_HYPER+0x12>
20022e4c:	f042 0210 	orr.w	r2, r2, #16
20022e50:	2000      	movs	r0, #0
20022e52:	609a      	str	r2, [r3, #8]
20022e54:	4770      	bx	lr
20022e56:	f022 0210 	bic.w	r2, r2, #16
20022e5a:	e7f9      	b.n	20022e50 <HAL_FLASH_ENABLE_HYPER+0xc>
20022e5c:	2001      	movs	r0, #1
20022e5e:	4770      	bx	lr

20022e60 <HAL_FLASH_ENABLE_CMD2>:
20022e60:	b150      	cbz	r0, 20022e78 <HAL_FLASH_ENABLE_CMD2+0x18>
20022e62:	6803      	ldr	r3, [r0, #0]
20022e64:	681a      	ldr	r2, [r3, #0]
20022e66:	b121      	cbz	r1, 20022e72 <HAL_FLASH_ENABLE_CMD2+0x12>
20022e68:	f442 3280 	orr.w	r2, r2, #65536	@ 0x10000
20022e6c:	2000      	movs	r0, #0
20022e6e:	601a      	str	r2, [r3, #0]
20022e70:	4770      	bx	lr
20022e72:	f422 3280 	bic.w	r2, r2, #65536	@ 0x10000
20022e76:	e7f9      	b.n	20022e6c <HAL_FLASH_ENABLE_CMD2+0xc>
20022e78:	2001      	movs	r0, #1
20022e7a:	4770      	bx	lr

20022e7c <HAL_FLASH_STAUS_MATCH_CMD2>:
20022e7c:	b150      	cbz	r0, 20022e94 <HAL_FLASH_STAUS_MATCH_CMD2+0x18>
20022e7e:	6803      	ldr	r3, [r0, #0]
20022e80:	681a      	ldr	r2, [r3, #0]
20022e82:	b121      	cbz	r1, 20022e8e <HAL_FLASH_STAUS_MATCH_CMD2+0x12>
20022e84:	f442 2280 	orr.w	r2, r2, #262144	@ 0x40000
20022e88:	2000      	movs	r0, #0
20022e8a:	601a      	str	r2, [r3, #0]
20022e8c:	4770      	bx	lr
20022e8e:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
20022e92:	e7f9      	b.n	20022e88 <HAL_FLASH_STAUS_MATCH_CMD2+0xc>
20022e94:	2001      	movs	r0, #1
20022e96:	4770      	bx	lr

20022e98 <HAL_FLASH_SET_CS_TIME>:
20022e98:	b530      	push	{r4, r5, lr}
20022e9a:	b180      	cbz	r0, 20022ebe <HAL_FLASH_SET_CS_TIME+0x26>
20022e9c:	6805      	ldr	r5, [r0, #0]
20022e9e:	f8bd 000c 	ldrh.w	r0, [sp, #12]
20022ea2:	68ac      	ldr	r4, [r5, #8]
20022ea4:	0680      	lsls	r0, r0, #26
20022ea6:	ea40 5383 	orr.w	r3, r0, r3, lsl #22
20022eaa:	2000      	movs	r0, #0
20022eac:	ea43 4181 	orr.w	r1, r3, r1, lsl #18
20022eb0:	f36f 149e 	bfc	r4, #6, #25
20022eb4:	ea41 1282 	orr.w	r2, r1, r2, lsl #6
20022eb8:	4322      	orrs	r2, r4
20022eba:	60aa      	str	r2, [r5, #8]
20022ebc:	bd30      	pop	{r4, r5, pc}
20022ebe:	2001      	movs	r0, #1
20022ec0:	e7fc      	b.n	20022ebc <HAL_FLASH_SET_CS_TIME+0x24>

20022ec2 <HAL_FLASH_SET_ROW_BOUNDARY>:
20022ec2:	b130      	cbz	r0, 20022ed2 <HAL_FLASH_SET_ROW_BOUNDARY+0x10>
20022ec4:	6802      	ldr	r2, [r0, #0]
20022ec6:	2000      	movs	r0, #0
20022ec8:	6893      	ldr	r3, [r2, #8]
20022eca:	f361 0302 	bfi	r3, r1, #0, #3
20022ece:	6093      	str	r3, [r2, #8]
20022ed0:	4770      	bx	lr
20022ed2:	2001      	movs	r0, #1
20022ed4:	4770      	bx	lr

20022ed6 <HAL_FLASH_SET_LEGACY>:
20022ed6:	b150      	cbz	r0, 20022eee <HAL_FLASH_SET_LEGACY+0x18>
20022ed8:	6803      	ldr	r3, [r0, #0]
20022eda:	689a      	ldr	r2, [r3, #8]
20022edc:	b121      	cbz	r1, 20022ee8 <HAL_FLASH_SET_LEGACY+0x12>
20022ede:	f042 0220 	orr.w	r2, r2, #32
20022ee2:	2000      	movs	r0, #0
20022ee4:	609a      	str	r2, [r3, #8]
20022ee6:	4770      	bx	lr
20022ee8:	f022 0220 	bic.w	r2, r2, #32
20022eec:	e7f9      	b.n	20022ee2 <HAL_FLASH_SET_LEGACY+0xc>
20022eee:	2001      	movs	r0, #1
20022ef0:	4770      	bx	lr

20022ef2 <HAL_FLASH_SET_DUAL_MODE>:
20022ef2:	b150      	cbz	r0, 20022f0a <HAL_FLASH_SET_DUAL_MODE+0x18>
20022ef4:	6803      	ldr	r3, [r0, #0]
20022ef6:	681a      	ldr	r2, [r3, #0]
20022ef8:	b121      	cbz	r1, 20022f04 <HAL_FLASH_SET_DUAL_MODE+0x12>
20022efa:	f042 7280 	orr.w	r2, r2, #16777216	@ 0x1000000
20022efe:	2000      	movs	r0, #0
20022f00:	601a      	str	r2, [r3, #0]
20022f02:	4770      	bx	lr
20022f04:	f022 7280 	bic.w	r2, r2, #16777216	@ 0x1000000
20022f08:	e7f9      	b.n	20022efe <HAL_FLASH_SET_DUAL_MODE+0xc>
20022f0a:	2001      	movs	r0, #1
20022f0c:	4770      	bx	lr

20022f0e <HAL_MPI_EN_FIXLAT>:
20022f0e:	b150      	cbz	r0, 20022f26 <HAL_MPI_EN_FIXLAT+0x18>
20022f10:	6803      	ldr	r3, [r0, #0]
20022f12:	689a      	ldr	r2, [r3, #8]
20022f14:	b121      	cbz	r1, 20022f20 <HAL_MPI_EN_FIXLAT+0x12>
20022f16:	f042 4200 	orr.w	r2, r2, #2147483648	@ 0x80000000
20022f1a:	2000      	movs	r0, #0
20022f1c:	609a      	str	r2, [r3, #8]
20022f1e:	4770      	bx	lr
20022f20:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20022f24:	e7f9      	b.n	20022f1a <HAL_MPI_EN_FIXLAT+0xc>
20022f26:	2001      	movs	r0, #1
20022f28:	4770      	bx	lr

20022f2a <HAL_MPI_ENABLE_DQS>:
20022f2a:	b150      	cbz	r0, 20022f42 <HAL_MPI_ENABLE_DQS+0x18>
20022f2c:	6803      	ldr	r3, [r0, #0]
20022f2e:	689a      	ldr	r2, [r3, #8]
20022f30:	b121      	cbz	r1, 20022f3c <HAL_MPI_ENABLE_DQS+0x12>
20022f32:	f042 0208 	orr.w	r2, r2, #8
20022f36:	2000      	movs	r0, #0
20022f38:	609a      	str	r2, [r3, #8]
20022f3a:	4770      	bx	lr
20022f3c:	f022 0208 	bic.w	r2, r2, #8
20022f40:	e7f9      	b.n	20022f36 <HAL_MPI_ENABLE_DQS+0xc>
20022f42:	2001      	movs	r0, #1
20022f44:	4770      	bx	lr

20022f46 <HAL_MPI_SET_DQS_DELAY>:
20022f46:	b140      	cbz	r0, 20022f5a <HAL_MPI_SET_DQS_DELAY+0x14>
20022f48:	6802      	ldr	r2, [r0, #0]
20022f4a:	2000      	movs	r0, #0
20022f4c:	6d93      	ldr	r3, [r2, #88]	@ 0x58
20022f4e:	f423 037f 	bic.w	r3, r3, #16711680	@ 0xff0000
20022f52:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
20022f56:	6591      	str	r1, [r2, #88]	@ 0x58
20022f58:	4770      	bx	lr
20022f5a:	2001      	movs	r0, #1
20022f5c:	4770      	bx	lr

20022f5e <HAL_MPI_SET_SCK>:
20022f5e:	b160      	cbz	r0, 20022f7a <HAL_MPI_SET_SCK+0x1c>
20022f60:	6800      	ldr	r0, [r0, #0]
20022f62:	0652      	lsls	r2, r2, #25
20022f64:	6d83      	ldr	r3, [r0, #88]	@ 0x58
20022f66:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
20022f6a:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20022f6e:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022f72:	4319      	orrs	r1, r3
20022f74:	6581      	str	r1, [r0, #88]	@ 0x58
20022f76:	2000      	movs	r0, #0
20022f78:	4770      	bx	lr
20022f7a:	2001      	movs	r0, #1
20022f7c:	4770      	bx	lr
	...

20022f80 <HAL_MPI_CFG_DTR>:
20022f80:	b510      	push	{r4, lr}
20022f82:	b1f0      	cbz	r0, 20022fc2 <HAL_MPI_CFG_DTR+0x42>
20022f84:	6804      	ldr	r4, [r0, #0]
20022f86:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20022f88:	b1b1      	cbz	r1, 20022fb8 <HAL_MPI_CFG_DTR+0x38>
20022f8a:	2a02      	cmp	r2, #2
20022f8c:	bf84      	itt	hi
20022f8e:	3a02      	subhi	r2, #2
20022f90:	b2d2      	uxtbhi	r2, r2
20022f92:	0213      	lsls	r3, r2, #8
20022f94:	f36f 000f 	bfc	r0, #0, #16
20022f98:	f403 43fe 	and.w	r3, r3, #32512	@ 0x7f00
20022f9c:	4303      	orrs	r3, r0
20022f9e:	0612      	lsls	r2, r2, #24
20022fa0:	bf54      	ite	pl
20022fa2:	f043 6380 	orrpl.w	r3, r3, #67108864	@ 0x4000000
20022fa6:	f043 63a0 	orrmi.w	r3, r3, #83886080	@ 0x5000000
20022faa:	f043 030a 	orr.w	r3, r3, #10
20022fae:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20022fb2:	2000      	movs	r0, #0
20022fb4:	65a3      	str	r3, [r4, #88]	@ 0x58
20022fb6:	bd10      	pop	{r4, pc}
20022fb8:	4b03      	ldr	r3, [pc, #12]	@ (20022fc8 <HAL_MPI_CFG_DTR+0x48>)
20022fba:	4003      	ands	r3, r0
20022fbc:	f043 7300 	orr.w	r3, r3, #33554432	@ 0x2000000
20022fc0:	e7f7      	b.n	20022fb2 <HAL_MPI_CFG_DTR+0x32>
20022fc2:	2001      	movs	r0, #1
20022fc4:	e7f7      	b.n	20022fb6 <HAL_MPI_CFG_DTR+0x36>
20022fc6:	bf00      	nop
20022fc8:	faff0000 	.word	0xfaff0000

20022fcc <HAL_MPI_MODIFY_RCMD_DELAY>:
20022fcc:	b130      	cbz	r0, 20022fdc <HAL_MPI_MODIFY_RCMD_DELAY+0x10>
20022fce:	6802      	ldr	r2, [r0, #0]
20022fd0:	6c93      	ldr	r3, [r2, #72]	@ 0x48
20022fd2:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20022fd6:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20022fda:	6491      	str	r1, [r2, #72]	@ 0x48
20022fdc:	4770      	bx	lr

20022fde <HAL_MPI_MODIFY_WCMD_DELAY>:
20022fde:	b130      	cbz	r0, 20022fee <HAL_MPI_MODIFY_WCMD_DELAY+0x10>
20022fe0:	6802      	ldr	r2, [r0, #0]
20022fe2:	6d13      	ldr	r3, [r2, #80]	@ 0x50
20022fe4:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20022fe8:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20022fec:	6511      	str	r1, [r2, #80]	@ 0x50
20022fee:	4770      	bx	lr

20022ff0 <HAL_FLASH_CONFIG_AHB_READ>:
20022ff0:	b5f0      	push	{r4, r5, r6, r7, lr}
20022ff2:	4605      	mov	r5, r0
20022ff4:	b085      	sub	sp, #20
20022ff6:	b3a0      	cbz	r0, 20023062 <HAL_FLASH_CONFIG_AHB_READ+0x72>
20022ff8:	68c4      	ldr	r4, [r0, #12]
20022ffa:	b1e9      	cbz	r1, 20023038 <HAL_FLASH_CONFIG_AHB_READ+0x48>
20022ffc:	f894 606a 	ldrb.w	r6, [r4, #106]	@ 0x6a
20023000:	b37e      	cbz	r6, 20023062 <HAL_FLASH_CONFIG_AHB_READ+0x72>
20023002:	f994 7072 	ldrsb.w	r7, [r4, #114]	@ 0x72
20023006:	f994 306e 	ldrsb.w	r3, [r4, #110]	@ 0x6e
2002300a:	f994 206d 	ldrsb.w	r2, [r4, #109]	@ 0x6d
2002300e:	f994 106c 	ldrsb.w	r1, [r4, #108]	@ 0x6c
20023012:	9703      	str	r7, [sp, #12]
20023014:	f994 7071 	ldrsb.w	r7, [r4, #113]	@ 0x71
20023018:	9702      	str	r7, [sp, #8]
2002301a:	f994 7070 	ldrsb.w	r7, [r4, #112]	@ 0x70
2002301e:	9701      	str	r7, [sp, #4]
20023020:	f994 406f 	ldrsb.w	r4, [r4, #111]	@ 0x6f
20023024:	9400      	str	r4, [sp, #0]
20023026:	f7ff fd9a 	bl	20022b5e <HAL_FLASH_CFG_AHB_RCMD>
2002302a:	4631      	mov	r1, r6
2002302c:	4628      	mov	r0, r5
2002302e:	f7ff fd8b 	bl	20022b48 <HAL_FLASH_SET_AHB_RCMD>
20023032:	2000      	movs	r0, #0
20023034:	b005      	add	sp, #20
20023036:	bdf0      	pop	{r4, r5, r6, r7, pc}
20023038:	f894 6046 	ldrb.w	r6, [r4, #70]	@ 0x46
2002303c:	b18e      	cbz	r6, 20023062 <HAL_FLASH_CONFIG_AHB_READ+0x72>
2002303e:	f994 704e 	ldrsb.w	r7, [r4, #78]	@ 0x4e
20023042:	f994 304a 	ldrsb.w	r3, [r4, #74]	@ 0x4a
20023046:	f994 2049 	ldrsb.w	r2, [r4, #73]	@ 0x49
2002304a:	f994 1048 	ldrsb.w	r1, [r4, #72]	@ 0x48
2002304e:	9703      	str	r7, [sp, #12]
20023050:	f994 704d 	ldrsb.w	r7, [r4, #77]	@ 0x4d
20023054:	9702      	str	r7, [sp, #8]
20023056:	f994 704c 	ldrsb.w	r7, [r4, #76]	@ 0x4c
2002305a:	9701      	str	r7, [sp, #4]
2002305c:	f994 404b 	ldrsb.w	r4, [r4, #75]	@ 0x4b
20023060:	e7e0      	b.n	20023024 <HAL_FLASH_CONFIG_AHB_READ+0x34>
20023062:	2001      	movs	r0, #1
20023064:	e7e6      	b.n	20023034 <HAL_FLASH_CONFIG_AHB_READ+0x44>

20023066 <HAL_FLASH_CONFIG_FULL_AHB_READ>:
20023066:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20023068:	4605      	mov	r5, r0
2002306a:	b3a0      	cbz	r0, 200230d6 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x70>
2002306c:	68c4      	ldr	r4, [r0, #12]
2002306e:	b1d9      	cbz	r1, 200230a8 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x42>
20023070:	f994 616e 	ldrsb.w	r6, [r4, #366]	@ 0x16e
20023074:	f994 1168 	ldrsb.w	r1, [r4, #360]	@ 0x168
20023078:	f994 316a 	ldrsb.w	r3, [r4, #362]	@ 0x16a
2002307c:	f994 2169 	ldrsb.w	r2, [r4, #361]	@ 0x169
20023080:	9603      	str	r6, [sp, #12]
20023082:	f994 616d 	ldrsb.w	r6, [r4, #365]	@ 0x16d
20023086:	9602      	str	r6, [sp, #8]
20023088:	f994 616c 	ldrsb.w	r6, [r4, #364]	@ 0x16c
2002308c:	9601      	str	r6, [sp, #4]
2002308e:	f994 616b 	ldrsb.w	r6, [r4, #363]	@ 0x16b
20023092:	9600      	str	r6, [sp, #0]
20023094:	f7ff fd63 	bl	20022b5e <HAL_FLASH_CFG_AHB_RCMD>
20023098:	f894 1166 	ldrb.w	r1, [r4, #358]	@ 0x166
2002309c:	4628      	mov	r0, r5
2002309e:	f7ff fd53 	bl	20022b48 <HAL_FLASH_SET_AHB_RCMD>
200230a2:	2000      	movs	r0, #0
200230a4:	b004      	add	sp, #16
200230a6:	bd70      	pop	{r4, r5, r6, pc}
200230a8:	f994 615c 	ldrsb.w	r6, [r4, #348]	@ 0x15c
200230ac:	f994 1156 	ldrsb.w	r1, [r4, #342]	@ 0x156
200230b0:	f994 3158 	ldrsb.w	r3, [r4, #344]	@ 0x158
200230b4:	f994 2157 	ldrsb.w	r2, [r4, #343]	@ 0x157
200230b8:	9603      	str	r6, [sp, #12]
200230ba:	f994 615b 	ldrsb.w	r6, [r4, #347]	@ 0x15b
200230be:	9602      	str	r6, [sp, #8]
200230c0:	f994 615a 	ldrsb.w	r6, [r4, #346]	@ 0x15a
200230c4:	9601      	str	r6, [sp, #4]
200230c6:	f994 6159 	ldrsb.w	r6, [r4, #345]	@ 0x159
200230ca:	9600      	str	r6, [sp, #0]
200230cc:	f7ff fd47 	bl	20022b5e <HAL_FLASH_CFG_AHB_RCMD>
200230d0:	f894 1154 	ldrb.w	r1, [r4, #340]	@ 0x154
200230d4:	e7e2      	b.n	2002309c <HAL_FLASH_CONFIG_FULL_AHB_READ+0x36>
200230d6:	2001      	movs	r0, #1
200230d8:	e7e4      	b.n	200230a4 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x3e>

200230da <HAL_FLASH_PRE_CMD>:
200230da:	b530      	push	{r4, r5, lr}
200230dc:	68c4      	ldr	r4, [r0, #12]
200230de:	b087      	sub	sp, #28
200230e0:	b304      	cbz	r4, 20023124 <HAL_FLASH_PRE_CMD+0x4a>
200230e2:	2938      	cmp	r1, #56	@ 0x38
200230e4:	d81e      	bhi.n	20023124 <HAL_FLASH_PRE_CMD+0x4a>
200230e6:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
200230ea:	440c      	add	r4, r1
200230ec:	7c23      	ldrb	r3, [r4, #16]
200230ee:	b1cb      	cbz	r3, 20023124 <HAL_FLASH_PRE_CMD+0x4a>
200230f0:	f994 5018 	ldrsb.w	r5, [r4, #24]
200230f4:	f994 3013 	ldrsb.w	r3, [r4, #19]
200230f8:	f994 2012 	ldrsb.w	r2, [r4, #18]
200230fc:	f994 1011 	ldrsb.w	r1, [r4, #17]
20023100:	9504      	str	r5, [sp, #16]
20023102:	f994 5017 	ldrsb.w	r5, [r4, #23]
20023106:	9503      	str	r5, [sp, #12]
20023108:	f994 5016 	ldrsb.w	r5, [r4, #22]
2002310c:	9502      	str	r5, [sp, #8]
2002310e:	f994 5015 	ldrsb.w	r5, [r4, #21]
20023112:	9501      	str	r5, [sp, #4]
20023114:	f994 4014 	ldrsb.w	r4, [r4, #20]
20023118:	9400      	str	r4, [sp, #0]
2002311a:	f7ff fdde 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
2002311e:	2000      	movs	r0, #0
20023120:	b007      	add	sp, #28
20023122:	bd30      	pop	{r4, r5, pc}
20023124:	2001      	movs	r0, #1
20023126:	e7fb      	b.n	20023120 <HAL_FLASH_PRE_CMD+0x46>

20023128 <HAL_FLASH_ISSUE_CMD>:
20023128:	b5f0      	push	{r4, r5, r6, r7, lr}
2002312a:	68c4      	ldr	r4, [r0, #12]
2002312c:	4605      	mov	r5, r0
2002312e:	4616      	mov	r6, r2
20023130:	b087      	sub	sp, #28
20023132:	b344      	cbz	r4, 20023186 <HAL_FLASH_ISSUE_CMD+0x5e>
20023134:	2938      	cmp	r1, #56	@ 0x38
20023136:	d826      	bhi.n	20023186 <HAL_FLASH_ISSUE_CMD+0x5e>
20023138:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
2002313c:	440c      	add	r4, r1
2002313e:	7c27      	ldrb	r7, [r4, #16]
20023140:	b30f      	cbz	r7, 20023186 <HAL_FLASH_ISSUE_CMD+0x5e>
20023142:	f994 c018 	ldrsb.w	ip, [r4, #24]
20023146:	f994 2012 	ldrsb.w	r2, [r4, #18]
2002314a:	f994 1011 	ldrsb.w	r1, [r4, #17]
2002314e:	f994 3013 	ldrsb.w	r3, [r4, #19]
20023152:	f8cd c010 	str.w	ip, [sp, #16]
20023156:	f994 c017 	ldrsb.w	ip, [r4, #23]
2002315a:	f8cd c00c 	str.w	ip, [sp, #12]
2002315e:	f994 c016 	ldrsb.w	ip, [r4, #22]
20023162:	f8cd c008 	str.w	ip, [sp, #8]
20023166:	f994 c015 	ldrsb.w	ip, [r4, #21]
2002316a:	f8cd c004 	str.w	ip, [sp, #4]
2002316e:	f994 4014 	ldrsb.w	r4, [r4, #20]
20023172:	9400      	str	r4, [sp, #0]
20023174:	f7ff fdb1 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
20023178:	4632      	mov	r2, r6
2002317a:	4639      	mov	r1, r7
2002317c:	4628      	mov	r0, r5
2002317e:	f7ff fd60 	bl	20022c42 <HAL_FLASH_SET_CMD>
20023182:	b007      	add	sp, #28
20023184:	bdf0      	pop	{r4, r5, r6, r7, pc}
20023186:	2001      	movs	r0, #1
20023188:	e7fb      	b.n	20023182 <HAL_FLASH_ISSUE_CMD+0x5a>

2002318a <HAL_FLASH_ISSUE_CMD_SEQ>:
2002318a:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
2002318e:	68c7      	ldr	r7, [r0, #12]
20023190:	4605      	mov	r5, r0
20023192:	4616      	mov	r6, r2
20023194:	b087      	sub	sp, #28
20023196:	2f00      	cmp	r7, #0
20023198:	d06b      	beq.n	20023272 <HAL_FLASH_ISSUE_CMD_SEQ+0xe8>
2002319a:	2938      	cmp	r1, #56	@ 0x38
2002319c:	d869      	bhi.n	20023272 <HAL_FLASH_ISSUE_CMD_SEQ+0xe8>
2002319e:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
200231a2:	187c      	adds	r4, r7, r1
200231a4:	f894 8010 	ldrb.w	r8, [r4, #16]
200231a8:	f1b8 0f00 	cmp.w	r8, #0
200231ac:	d061      	beq.n	20023272 <HAL_FLASH_ISSUE_CMD_SEQ+0xe8>
200231ae:	2b38      	cmp	r3, #56	@ 0x38
200231b0:	d85f      	bhi.n	20023272 <HAL_FLASH_ISSUE_CMD_SEQ+0xe8>
200231b2:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
200231b6:	441f      	add	r7, r3
200231b8:	f897 9010 	ldrb.w	r9, [r7, #16]
200231bc:	f1b9 0f00 	cmp.w	r9, #0
200231c0:	d057      	beq.n	20023272 <HAL_FLASH_ISSUE_CMD_SEQ+0xe8>
200231c2:	f994 c018 	ldrsb.w	ip, [r4, #24]
200231c6:	f994 3013 	ldrsb.w	r3, [r4, #19]
200231ca:	f994 2012 	ldrsb.w	r2, [r4, #18]
200231ce:	f994 1011 	ldrsb.w	r1, [r4, #17]
200231d2:	f8cd c010 	str.w	ip, [sp, #16]
200231d6:	f994 c017 	ldrsb.w	ip, [r4, #23]
200231da:	f8cd c00c 	str.w	ip, [sp, #12]
200231de:	f994 c016 	ldrsb.w	ip, [r4, #22]
200231e2:	f8cd c008 	str.w	ip, [sp, #8]
200231e6:	f994 c015 	ldrsb.w	ip, [r4, #21]
200231ea:	f8cd c004 	str.w	ip, [sp, #4]
200231ee:	f994 4014 	ldrsb.w	r4, [r4, #20]
200231f2:	9400      	str	r4, [sp, #0]
200231f4:	f7ff fd71 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
200231f8:	f997 0018 	ldrsb.w	r0, [r7, #24]
200231fc:	f997 2012 	ldrsb.w	r2, [r7, #18]
20023200:	f997 3013 	ldrsb.w	r3, [r7, #19]
20023204:	f997 1011 	ldrsb.w	r1, [r7, #17]
20023208:	9004      	str	r0, [sp, #16]
2002320a:	f997 0017 	ldrsb.w	r0, [r7, #23]
2002320e:	9003      	str	r0, [sp, #12]
20023210:	f997 0016 	ldrsb.w	r0, [r7, #22]
20023214:	9002      	str	r0, [sp, #8]
20023216:	f997 0015 	ldrsb.w	r0, [r7, #21]
2002321a:	9001      	str	r0, [sp, #4]
2002321c:	f997 0014 	ldrsb.w	r0, [r7, #20]
20023220:	9000      	str	r0, [sp, #0]
20023222:	4628      	mov	r0, r5
20023224:	f7ff fd7a 	bl	20022d1c <HAL_FLASH_MANUAL_CMD2>
20023228:	2300      	movs	r3, #0
2002322a:	682c      	ldr	r4, [r5, #0]
2002322c:	2101      	movs	r1, #1
2002322e:	67e3      	str	r3, [r4, #124]	@ 0x7c
20023230:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
20023232:	f8c4 902c 	str.w	r9, [r4, #44]	@ 0x2c
20023236:	4628      	mov	r0, r5
20023238:	f8c4 3080 	str.w	r3, [r4, #128]	@ 0x80
2002323c:	f7ff fe10 	bl	20022e60 <HAL_FLASH_ENABLE_CMD2>
20023240:	4628      	mov	r0, r5
20023242:	f7ff fe1b 	bl	20022e7c <HAL_FLASH_STAUS_MATCH_CMD2>
20023246:	61e6      	str	r6, [r4, #28]
20023248:	f8c4 8018 	str.w	r8, [r4, #24]
2002324c:	4628      	mov	r0, r5
2002324e:	f7ff fd21 	bl	20022c94 <HAL_FLASH_STATUS_MATCH>
20023252:	2800      	cmp	r0, #0
20023254:	d0fa      	beq.n	2002324c <HAL_FLASH_ISSUE_CMD_SEQ+0xc2>
20023256:	2109      	movs	r1, #9
20023258:	4628      	mov	r0, r5
2002325a:	f7ff fd15 	bl	20022c88 <HAL_FLASH_CLR_STATUS>
2002325e:	2100      	movs	r1, #0
20023260:	f7ff fdfe 	bl	20022e60 <HAL_FLASH_ENABLE_CMD2>
20023264:	4628      	mov	r0, r5
20023266:	f7ff fe09 	bl	20022e7c <HAL_FLASH_STAUS_MATCH_CMD2>
2002326a:	4608      	mov	r0, r1
2002326c:	b007      	add	sp, #28
2002326e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20023272:	2001      	movs	r0, #1
20023274:	e7fa      	b.n	2002326c <HAL_FLASH_ISSUE_CMD_SEQ+0xe2>

20023276 <nor_qspi_switch>:
20023276:	b570      	push	{r4, r5, r6, lr}
20023278:	4604      	mov	r4, r0
2002327a:	b3e0      	cbz	r0, 200232f6 <nor_qspi_switch+0x80>
2002327c:	68c3      	ldr	r3, [r0, #12]
2002327e:	b3d3      	cbz	r3, 200232f6 <nor_qspi_switch+0x80>
20023280:	b3c9      	cbz	r1, 200232f6 <nor_qspi_switch+0x80>
20023282:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
20023286:	2101      	movs	r1, #1
20023288:	b3b5      	cbz	r5, 200232f8 <nor_qspi_switch+0x82>
2002328a:	f7ff fcb5 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
2002328e:	2200      	movs	r2, #0
20023290:	2114      	movs	r1, #20
20023292:	4620      	mov	r0, r4
20023294:	f7ff ff48 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023298:	4620      	mov	r0, r4
2002329a:	f7ff fd0a 	bl	20022cb2 <HAL_FLASH_READ32>
2002329e:	f010 0501 	ands.w	r5, r0, #1
200232a2:	d000      	beq.n	200232a6 <nor_qspi_switch+0x30>
200232a4:	e7fe      	b.n	200232a4 <nor_qspi_switch+0x2e>
200232a6:	462a      	mov	r2, r5
200232a8:	2115      	movs	r1, #21
200232aa:	4620      	mov	r0, r4
200232ac:	f7ff ff3c 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
200232b0:	4606      	mov	r6, r0
200232b2:	b120      	cbz	r0, 200232be <nor_qspi_switch+0x48>
200232b4:	462a      	mov	r2, r5
200232b6:	4629      	mov	r1, r5
200232b8:	4620      	mov	r0, r4
200232ba:	f7ff ff35 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
200232be:	2102      	movs	r1, #2
200232c0:	4620      	mov	r0, r4
200232c2:	f7ff fc92 	bl	20022bea <HAL_FLASH_WRITE_WORD>
200232c6:	2101      	movs	r1, #1
200232c8:	4620      	mov	r0, r4
200232ca:	f7ff fc95 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
200232ce:	2200      	movs	r2, #0
200232d0:	212b      	movs	r1, #43	@ 0x2b
200232d2:	4620      	mov	r0, r4
200232d4:	f7ff ff28 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
200232d8:	b16e      	cbz	r6, 200232f6 <nor_qspi_switch+0x80>
200232da:	2101      	movs	r1, #1
200232dc:	4620      	mov	r0, r4
200232de:	f7ff fc8b 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
200232e2:	2200      	movs	r2, #0
200232e4:	2102      	movs	r1, #2
200232e6:	4620      	mov	r0, r4
200232e8:	f7ff ff1e 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
200232ec:	4620      	mov	r0, r4
200232ee:	f7ff fcd7 	bl	20022ca0 <HAL_FLASH_IS_PROG_DONE>
200232f2:	2800      	cmp	r0, #0
200232f4:	d0f5      	beq.n	200232e2 <nor_qspi_switch+0x6c>
200232f6:	bd70      	pop	{r4, r5, r6, pc}
200232f8:	f7ff fc7e 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
200232fc:	462a      	mov	r2, r5
200232fe:	2102      	movs	r1, #2
20023300:	4620      	mov	r0, r4
20023302:	f7ff ff11 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023306:	4620      	mov	r0, r4
20023308:	f7ff fcd3 	bl	20022cb2 <HAL_FLASH_READ32>
2002330c:	462a      	mov	r2, r5
2002330e:	2114      	movs	r1, #20
20023310:	4620      	mov	r0, r4
20023312:	f7ff ff09 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023316:	b910      	cbnz	r0, 2002331e <nor_qspi_switch+0xa8>
20023318:	4620      	mov	r0, r4
2002331a:	f7ff fcca 	bl	20022cb2 <HAL_FLASH_READ32>
2002331e:	68e3      	ldr	r3, [r4, #12]
20023320:	7a1b      	ldrb	r3, [r3, #8]
20023322:	b3ab      	cbz	r3, 20023390 <nor_qspi_switch+0x11a>
20023324:	2101      	movs	r1, #1
20023326:	f003 050f 	and.w	r5, r3, #15
2002332a:	091b      	lsrs	r3, r3, #4
2002332c:	fa01 f303 	lsl.w	r3, r1, r3
20023330:	b2db      	uxtb	r3, r3
20023332:	b10d      	cbz	r5, 20023338 <nor_qspi_switch+0xc2>
20023334:	461d      	mov	r5, r3
20023336:	2300      	movs	r3, #0
20023338:	2200      	movs	r2, #0
2002333a:	2115      	movs	r1, #21
2002333c:	4620      	mov	r0, r4
2002333e:	ea43 2505 	orr.w	r5, r3, r5, lsl #8
20023342:	f7ff fef1 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023346:	4606      	mov	r6, r0
20023348:	b120      	cbz	r0, 20023354 <nor_qspi_switch+0xde>
2002334a:	2200      	movs	r2, #0
2002334c:	4620      	mov	r0, r4
2002334e:	4611      	mov	r1, r2
20023350:	f7ff feea 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023354:	4629      	mov	r1, r5
20023356:	4620      	mov	r0, r4
20023358:	f7ff fc47 	bl	20022bea <HAL_FLASH_WRITE_WORD>
2002335c:	2102      	movs	r1, #2
2002335e:	4620      	mov	r0, r4
20023360:	f7ff fc4a 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
20023364:	2200      	movs	r2, #0
20023366:	2103      	movs	r1, #3
20023368:	4620      	mov	r0, r4
2002336a:	f7ff fedd 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
2002336e:	2e00      	cmp	r6, #0
20023370:	d0c1      	beq.n	200232f6 <nor_qspi_switch+0x80>
20023372:	2101      	movs	r1, #1
20023374:	4620      	mov	r0, r4
20023376:	f7ff fc3f 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
2002337a:	2200      	movs	r2, #0
2002337c:	2102      	movs	r1, #2
2002337e:	4620      	mov	r0, r4
20023380:	f7ff fed2 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023384:	4620      	mov	r0, r4
20023386:	f7ff fc8b 	bl	20022ca0 <HAL_FLASH_IS_PROG_DONE>
2002338a:	2800      	cmp	r0, #0
2002338c:	d0f5      	beq.n	2002337a <nor_qspi_switch+0x104>
2002338e:	e7b2      	b.n	200232f6 <nor_qspi_switch+0x80>
20023390:	2502      	movs	r5, #2
20023392:	e7d1      	b.n	20023338 <nor_qspi_switch+0xc2>

20023394 <HAL_FLASH_SET_QUAL_SPI>:
20023394:	b538      	push	{r3, r4, r5, lr}
20023396:	4604      	mov	r4, r0
20023398:	460d      	mov	r5, r1
2002339a:	f7ff ff6c 	bl	20023276 <nor_qspi_switch>
2002339e:	4629      	mov	r1, r5
200233a0:	4620      	mov	r0, r4
200233a2:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
200233a6:	f7ff be23 	b.w	20022ff0 <HAL_FLASH_CONFIG_AHB_READ>

200233aa <HAL_FLASH_FADDR_SET_QSPI>:
200233aa:	b538      	push	{r3, r4, r5, lr}
200233ac:	4604      	mov	r4, r0
200233ae:	460d      	mov	r5, r1
200233b0:	f7ff ff61 	bl	20023276 <nor_qspi_switch>
200233b4:	4629      	mov	r1, r5
200233b6:	4620      	mov	r0, r4
200233b8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
200233bc:	f7ff be53 	b.w	20023066 <HAL_FLASH_CONFIG_FULL_AHB_READ>

200233c0 <HAL_FLASH_GET_NOR_ID>:
200233c0:	b510      	push	{r4, lr}
200233c2:	4604      	mov	r4, r0
200233c4:	b140      	cbz	r0, 200233d8 <HAL_FLASH_GET_NOR_ID+0x18>
200233c6:	6802      	ldr	r2, [r0, #0]
200233c8:	6a93      	ldr	r3, [r2, #40]	@ 0x28
200233ca:	f36f 0315 	bfc	r3, #0, #22
200233ce:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
200233d2:	f043 0301 	orr.w	r3, r3, #1
200233d6:	6293      	str	r3, [r2, #40]	@ 0x28
200233d8:	2103      	movs	r1, #3
200233da:	4620      	mov	r0, r4
200233dc:	f7ff fc0c 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
200233e0:	2200      	movs	r2, #0
200233e2:	219f      	movs	r1, #159	@ 0x9f
200233e4:	4620      	mov	r0, r4
200233e6:	f7ff fc2c 	bl	20022c42 <HAL_FLASH_SET_CMD>
200233ea:	4620      	mov	r0, r4
200233ec:	f7ff fc61 	bl	20022cb2 <HAL_FLASH_READ32>
200233f0:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
200233f4:	bd10      	pop	{r4, pc}

200233f6 <HAL_FLASH_CLR_PROTECT>:
200233f6:	b570      	push	{r4, r5, r6, lr}
200233f8:	4604      	mov	r4, r0
200233fa:	2800      	cmp	r0, #0
200233fc:	d03e      	beq.n	2002347c <HAL_FLASH_CLR_PROTECT+0x86>
200233fe:	68c3      	ldr	r3, [r0, #12]
20023400:	2101      	movs	r1, #1
20023402:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
20023406:	2d00      	cmp	r5, #0
20023408:	d03b      	beq.n	20023482 <HAL_FLASH_CLR_PROTECT+0x8c>
2002340a:	f7ff fbf5 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
2002340e:	2200      	movs	r2, #0
20023410:	2102      	movs	r1, #2
20023412:	4620      	mov	r0, r4
20023414:	f7ff fe88 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023418:	bb88      	cbnz	r0, 2002347e <HAL_FLASH_CLR_PROTECT+0x88>
2002341a:	4620      	mov	r0, r4
2002341c:	f7ff fc49 	bl	20022cb2 <HAL_FLASH_READ32>
20023420:	b2c0      	uxtb	r0, r0
20023422:	68e3      	ldr	r3, [r4, #12]
20023424:	79dd      	ldrb	r5, [r3, #7]
20023426:	b10d      	cbz	r5, 2002342c <HAL_FLASH_CLR_PROTECT+0x36>
20023428:	ea20 0505 	bic.w	r5, r0, r5
2002342c:	2200      	movs	r2, #0
2002342e:	2115      	movs	r1, #21
20023430:	4620      	mov	r0, r4
20023432:	f7ff fe79 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023436:	4606      	mov	r6, r0
20023438:	b120      	cbz	r0, 20023444 <HAL_FLASH_CLR_PROTECT+0x4e>
2002343a:	2200      	movs	r2, #0
2002343c:	4620      	mov	r0, r4
2002343e:	4611      	mov	r1, r2
20023440:	f7ff fe72 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023444:	4629      	mov	r1, r5
20023446:	4620      	mov	r0, r4
20023448:	f7ff fbcf 	bl	20022bea <HAL_FLASH_WRITE_WORD>
2002344c:	2101      	movs	r1, #1
2002344e:	4620      	mov	r0, r4
20023450:	f7ff fbd2 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
20023454:	2200      	movs	r2, #0
20023456:	2103      	movs	r1, #3
20023458:	4620      	mov	r0, r4
2002345a:	f7ff fe65 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
2002345e:	b16e      	cbz	r6, 2002347c <HAL_FLASH_CLR_PROTECT+0x86>
20023460:	2101      	movs	r1, #1
20023462:	4620      	mov	r0, r4
20023464:	f7ff fbc8 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
20023468:	2200      	movs	r2, #0
2002346a:	2102      	movs	r1, #2
2002346c:	4620      	mov	r0, r4
2002346e:	f7ff fe5b 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023472:	4620      	mov	r0, r4
20023474:	f7ff fc14 	bl	20022ca0 <HAL_FLASH_IS_PROG_DONE>
20023478:	2800      	cmp	r0, #0
2002347a:	d0f5      	beq.n	20023468 <HAL_FLASH_CLR_PROTECT+0x72>
2002347c:	bd70      	pop	{r4, r5, r6, pc}
2002347e:	2000      	movs	r0, #0
20023480:	e7cf      	b.n	20023422 <HAL_FLASH_CLR_PROTECT+0x2c>
20023482:	f7ff fbb9 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
20023486:	462a      	mov	r2, r5
20023488:	2102      	movs	r1, #2
2002348a:	4620      	mov	r0, r4
2002348c:	f7ff fe4c 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023490:	2800      	cmp	r0, #0
20023492:	d13e      	bne.n	20023512 <HAL_FLASH_CLR_PROTECT+0x11c>
20023494:	4620      	mov	r0, r4
20023496:	f7ff fc0c 	bl	20022cb2 <HAL_FLASH_READ32>
2002349a:	b2c6      	uxtb	r6, r0
2002349c:	2200      	movs	r2, #0
2002349e:	2114      	movs	r1, #20
200234a0:	4620      	mov	r0, r4
200234a2:	f7ff fe41 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
200234a6:	b918      	cbnz	r0, 200234b0 <HAL_FLASH_CLR_PROTECT+0xba>
200234a8:	4620      	mov	r0, r4
200234aa:	f7ff fc02 	bl	20022cb2 <HAL_FLASH_READ32>
200234ae:	b2c5      	uxtb	r5, r0
200234b0:	68e3      	ldr	r3, [r4, #12]
200234b2:	79d9      	ldrb	r1, [r3, #7]
200234b4:	b109      	cbz	r1, 200234ba <HAL_FLASH_CLR_PROTECT+0xc4>
200234b6:	ea26 0101 	bic.w	r1, r6, r1
200234ba:	2200      	movs	r2, #0
200234bc:	4620      	mov	r0, r4
200234be:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
200234c2:	2115      	movs	r1, #21
200234c4:	f7ff fe30 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
200234c8:	4606      	mov	r6, r0
200234ca:	b120      	cbz	r0, 200234d6 <HAL_FLASH_CLR_PROTECT+0xe0>
200234cc:	2200      	movs	r2, #0
200234ce:	4620      	mov	r0, r4
200234d0:	4611      	mov	r1, r2
200234d2:	f7ff fe29 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
200234d6:	4629      	mov	r1, r5
200234d8:	4620      	mov	r0, r4
200234da:	f7ff fb86 	bl	20022bea <HAL_FLASH_WRITE_WORD>
200234de:	2102      	movs	r1, #2
200234e0:	4620      	mov	r0, r4
200234e2:	f7ff fb89 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
200234e6:	2200      	movs	r2, #0
200234e8:	2103      	movs	r1, #3
200234ea:	4620      	mov	r0, r4
200234ec:	f7ff fe1c 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
200234f0:	2e00      	cmp	r6, #0
200234f2:	d0c3      	beq.n	2002347c <HAL_FLASH_CLR_PROTECT+0x86>
200234f4:	2101      	movs	r1, #1
200234f6:	4620      	mov	r0, r4
200234f8:	f7ff fb7e 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
200234fc:	2200      	movs	r2, #0
200234fe:	2102      	movs	r1, #2
20023500:	4620      	mov	r0, r4
20023502:	f7ff fe11 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023506:	4620      	mov	r0, r4
20023508:	f7ff fbca 	bl	20022ca0 <HAL_FLASH_IS_PROG_DONE>
2002350c:	2800      	cmp	r0, #0
2002350e:	d0f5      	beq.n	200234fc <HAL_FLASH_CLR_PROTECT+0x106>
20023510:	e7b4      	b.n	2002347c <HAL_FLASH_CLR_PROTECT+0x86>
20023512:	462e      	mov	r6, r5
20023514:	e7c2      	b.n	2002349c <HAL_FLASH_CLR_PROTECT+0xa6>

20023516 <HAL_QSPI_SET_CLK_INV>:
20023516:	b160      	cbz	r0, 20023532 <HAL_QSPI_SET_CLK_INV+0x1c>
20023518:	6800      	ldr	r0, [r0, #0]
2002351a:	b150      	cbz	r0, 20023532 <HAL_QSPI_SET_CLK_INV+0x1c>
2002351c:	6d83      	ldr	r3, [r0, #88]	@ 0x58
2002351e:	0609      	lsls	r1, r1, #24
20023520:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
20023524:	f001 7180 	and.w	r1, r1, #16777216	@ 0x1000000
20023528:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
2002352c:	4311      	orrs	r1, r2
2002352e:	4319      	orrs	r1, r3
20023530:	6581      	str	r1, [r0, #88]	@ 0x58
20023532:	4770      	bx	lr

20023534 <HAL_FLASH_RELEASE_DPD>:
20023534:	b538      	push	{r3, r4, r5, lr}
20023536:	4604      	mov	r4, r0
20023538:	b1c8      	cbz	r0, 2002356e <HAL_FLASH_RELEASE_DPD+0x3a>
2002353a:	6803      	ldr	r3, [r0, #0]
2002353c:	21ab      	movs	r1, #171	@ 0xab
2002353e:	681d      	ldr	r5, [r3, #0]
20023540:	f015 0501 	ands.w	r5, r5, #1
20023544:	bf02      	ittt	eq
20023546:	681a      	ldreq	r2, [r3, #0]
20023548:	f042 0201 	orreq.w	r2, r2, #1
2002354c:	601a      	streq	r2, [r3, #0]
2002354e:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
20023550:	f36f 0215 	bfc	r2, #0, #22
20023554:	f042 0201 	orr.w	r2, r2, #1
20023558:	629a      	str	r2, [r3, #40]	@ 0x28
2002355a:	2200      	movs	r2, #0
2002355c:	f7ff fb71 	bl	20022c42 <HAL_FLASH_SET_CMD>
20023560:	b925      	cbnz	r5, 2002356c <HAL_FLASH_RELEASE_DPD+0x38>
20023562:	6822      	ldr	r2, [r4, #0]
20023564:	6813      	ldr	r3, [r2, #0]
20023566:	f023 0301 	bic.w	r3, r3, #1
2002356a:	6013      	str	r3, [r2, #0]
2002356c:	bd38      	pop	{r3, r4, r5, pc}
2002356e:	2001      	movs	r0, #1
20023570:	e7fc      	b.n	2002356c <HAL_FLASH_RELEASE_DPD+0x38>

20023572 <flash_handle_valid>:
20023572:	b118      	cbz	r0, 2002357c <flash_handle_valid+0xa>
20023574:	68c0      	ldr	r0, [r0, #12]
20023576:	3800      	subs	r0, #0
20023578:	bf18      	it	ne
2002357a:	2001      	movne	r0, #1
2002357c:	4770      	bx	lr

2002357e <HAL_GET_FLASH_MID>:
2002357e:	2000      	movs	r0, #0
20023580:	4770      	bx	lr

20023582 <HAL_FLASH_DMA_START>:
20023582:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20023586:	4689      	mov	r9, r1
20023588:	461d      	mov	r5, r3
2002358a:	4604      	mov	r4, r0
2002358c:	b380      	cbz	r0, 200235f0 <HAL_FLASH_DMA_START+0x6e>
2002358e:	6880      	ldr	r0, [r0, #8]
20023590:	b370      	cbz	r0, 200235f0 <HAL_FLASH_DMA_START+0x6e>
20023592:	b36b      	cbz	r3, 200235f0 <HAL_FLASH_DMA_START+0x6e>
20023594:	6823      	ldr	r3, [r4, #0]
20023596:	f853 7b04 	ldr.w	r7, [r3], #4
2002359a:	b302      	cbz	r2, 200235de <HAL_FLASH_DMA_START+0x5c>
2002359c:	4698      	mov	r8, r3
2002359e:	2300      	movs	r3, #0
200235a0:	462e      	mov	r6, r5
200235a2:	2210      	movs	r2, #16
200235a4:	4619      	mov	r1, r3
200235a6:	e9c0 3105 	strd	r3, r1, [r0, #20]
200235aa:	6082      	str	r2, [r0, #8]
200235ac:	2380      	movs	r3, #128	@ 0x80
200235ae:	2200      	movs	r2, #0
200235b0:	e9c0 2303 	strd	r2, r3, [r0, #12]
200235b4:	f7fe ffcc 	bl	20022550 <HAL_DMA_DeInit>
200235b8:	b9d8      	cbnz	r0, 200235f2 <HAL_FLASH_DMA_START+0x70>
200235ba:	68a0      	ldr	r0, [r4, #8]
200235bc:	f7fe ff64 	bl	20022488 <HAL_DMA_Init>
200235c0:	b9b8      	cbnz	r0, 200235f2 <HAL_FLASH_DMA_START+0x70>
200235c2:	6823      	ldr	r3, [r4, #0]
200235c4:	f047 0720 	orr.w	r7, r7, #32
200235c8:	3d01      	subs	r5, #1
200235ca:	601f      	str	r7, [r3, #0]
200235cc:	4642      	mov	r2, r8
200235ce:	625d      	str	r5, [r3, #36]	@ 0x24
200235d0:	4649      	mov	r1, r9
200235d2:	4633      	mov	r3, r6
200235d4:	68a0      	ldr	r0, [r4, #8]
200235d6:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200235da:	f7ff b90c 	b.w	200227f6 <HAL_DMA_Start>
200235de:	1cee      	adds	r6, r5, #3
200235e0:	4688      	mov	r8, r1
200235e2:	4699      	mov	r9, r3
200235e4:	f44f 6100 	mov.w	r1, #2048	@ 0x800
200235e8:	f44f 7300 	mov.w	r3, #512	@ 0x200
200235ec:	08b6      	lsrs	r6, r6, #2
200235ee:	e7da      	b.n	200235a6 <HAL_FLASH_DMA_START+0x24>
200235f0:	2001      	movs	r0, #1
200235f2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

200235f6 <HAL_FLASH_DMA_WAIT_DONE>:
200235f6:	b510      	push	{r4, lr}
200235f8:	460a      	mov	r2, r1
200235fa:	4604      	mov	r4, r0
200235fc:	b170      	cbz	r0, 2002361c <HAL_FLASH_DMA_WAIT_DONE+0x26>
200235fe:	6880      	ldr	r0, [r0, #8]
20023600:	b160      	cbz	r0, 2002361c <HAL_FLASH_DMA_WAIT_DONE+0x26>
20023602:	6ae1      	ldr	r1, [r4, #44]	@ 0x2c
20023604:	b111      	cbz	r1, 2002360c <HAL_FLASH_DMA_WAIT_DONE+0x16>
20023606:	f04f 32ff 	mov.w	r2, #4294967295
2002360a:	2100      	movs	r1, #0
2002360c:	f7fe fffe 	bl	2002260c <HAL_DMA_PollForTransfer>
20023610:	6822      	ldr	r2, [r4, #0]
20023612:	6813      	ldr	r3, [r2, #0]
20023614:	f023 0320 	bic.w	r3, r3, #32
20023618:	6013      	str	r3, [r2, #0]
2002361a:	bd10      	pop	{r4, pc}
2002361c:	2001      	movs	r0, #1
2002361e:	e7fc      	b.n	2002361a <HAL_FLASH_DMA_WAIT_DONE+0x24>

20023620 <HAL_FLASH_ALIAS_CFG>:
20023620:	b538      	push	{r3, r4, r5, lr}
20023622:	461d      	mov	r5, r3
20023624:	4604      	mov	r4, r0
20023626:	b158      	cbz	r0, 20023640 <HAL_FLASH_ALIAS_CFG+0x20>
20023628:	6903      	ldr	r3, [r0, #16]
2002362a:	428b      	cmp	r3, r1
2002362c:	bf98      	it	ls
2002362e:	1ac9      	subls	r1, r1, r3
20023630:	f7ff fb96 	bl	20022d60 <HAL_FLASH_SET_ALIAS_RANGE>
20023634:	4629      	mov	r1, r5
20023636:	4620      	mov	r0, r4
20023638:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
2002363c:	f7ff bba2 	b.w	20022d84 <HAL_FLASH_SET_ALIAS_OFFSET>
20023640:	bd38      	pop	{r3, r4, r5, pc}

20023642 <HAL_FLASH_NONCE_CFG>:
20023642:	b570      	push	{r4, r5, r6, lr}
20023644:	460c      	mov	r4, r1
20023646:	4615      	mov	r5, r2
20023648:	4619      	mov	r1, r3
2002364a:	4606      	mov	r6, r0
2002364c:	b180      	cbz	r0, 20023670 <HAL_FLASH_NONCE_CFG+0x2e>
2002364e:	b17b      	cbz	r3, 20023670 <HAL_FLASH_NONCE_CFG+0x2e>
20023650:	f7ff fbb2 	bl	20022db8 <HAL_FLASH_SET_NONCE>
20023654:	6933      	ldr	r3, [r6, #16]
20023656:	4630      	mov	r0, r6
20023658:	42a3      	cmp	r3, r4
2002365a:	bf98      	it	ls
2002365c:	1ae4      	subls	r4, r4, r3
2002365e:	42ab      	cmp	r3, r5
20023660:	bf98      	it	ls
20023662:	1aed      	subls	r5, r5, r3
20023664:	462a      	mov	r2, r5
20023666:	4621      	mov	r1, r4
20023668:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
2002366c:	f7ff bb94 	b.w	20022d98 <HAL_FLASH_SET_CTR>
20023670:	bd70      	pop	{r4, r5, r6, pc}

20023672 <HAL_FLASH_AES_CFG>:
20023672:	b510      	push	{r4, lr}
20023674:	4604      	mov	r4, r0
20023676:	b148      	cbz	r0, 2002368c <HAL_FLASH_AES_CFG+0x1a>
20023678:	b101      	cbz	r1, 2002367c <HAL_FLASH_AES_CFG+0xa>
2002367a:	2101      	movs	r1, #1
2002367c:	f7ff fba9 	bl	20022dd2 <HAL_FLASH_SET_AES>
20023680:	4620      	mov	r0, r4
20023682:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20023686:	2101      	movs	r1, #1
20023688:	f7ff bbb2 	b.w	20022df0 <HAL_FLASH_ENABLE_AES>
2002368c:	bd10      	pop	{r4, pc}

2002368e <nand_read_id>:
2002368e:	b510      	push	{r4, lr}
20023690:	460b      	mov	r3, r1
20023692:	4604      	mov	r4, r0
20023694:	b086      	sub	sp, #24
20023696:	b320      	cbz	r0, 200236e2 <nand_read_id+0x54>
20023698:	2908      	cmp	r1, #8
2002369a:	f04f 0100 	mov.w	r1, #0
2002369e:	f04f 0201 	mov.w	r2, #1
200236a2:	bf83      	ittte	hi
200236a4:	460b      	movhi	r3, r1
200236a6:	e9cd 1202 	strdhi	r1, r2, [sp, #8]
200236aa:	e9cd 1100 	strdhi	r1, r1, [sp]
200236ae:	e9cd 1102 	strdls	r1, r1, [sp, #8]
200236b2:	bf8e      	itee	hi
200236b4:	4619      	movhi	r1, r3
200236b6:	e9cd 1100 	strdls	r1, r1, [sp]
200236ba:	b25b      	sxtbls	r3, r3
200236bc:	9204      	str	r2, [sp, #16]
200236be:	f7ff fb0c 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
200236c2:	2103      	movs	r1, #3
200236c4:	4620      	mov	r0, r4
200236c6:	f7ff fa97 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
200236ca:	2200      	movs	r2, #0
200236cc:	219f      	movs	r1, #159	@ 0x9f
200236ce:	4620      	mov	r0, r4
200236d0:	f7ff fab7 	bl	20022c42 <HAL_FLASH_SET_CMD>
200236d4:	4620      	mov	r0, r4
200236d6:	f7ff faec 	bl	20022cb2 <HAL_FLASH_READ32>
200236da:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
200236de:	b006      	add	sp, #24
200236e0:	bd10      	pop	{r4, pc}
200236e2:	20ff      	movs	r0, #255	@ 0xff
200236e4:	e7fb      	b.n	200236de <nand_read_id+0x50>

200236e6 <HAL_NAND_CONF_ECC>:
200236e6:	b538      	push	{r3, r4, r5, lr}
200236e8:	460d      	mov	r5, r1
200236ea:	4604      	mov	r4, r0
200236ec:	b398      	cbz	r0, 20023756 <HAL_NAND_CONF_ECC+0x70>
200236ee:	68c3      	ldr	r3, [r0, #12]
200236f0:	b38b      	cbz	r3, 20023756 <HAL_NAND_CONF_ECC+0x70>
200236f2:	799a      	ldrb	r2, [r3, #6]
200236f4:	b392      	cbz	r2, 2002375c <HAL_NAND_CONF_ECC+0x76>
200236f6:	7a9b      	ldrb	r3, [r3, #10]
200236f8:	b383      	cbz	r3, 2002375c <HAL_NAND_CONF_ECC+0x76>
200236fa:	2101      	movs	r1, #1
200236fc:	f7ff fa7c 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
20023700:	68e3      	ldr	r3, [r4, #12]
20023702:	2102      	movs	r1, #2
20023704:	799a      	ldrb	r2, [r3, #6]
20023706:	4620      	mov	r0, r4
20023708:	f7ff fd0e 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
2002370c:	4620      	mov	r0, r4
2002370e:	f7ff fad0 	bl	20022cb2 <HAL_FLASH_READ32>
20023712:	68e3      	ldr	r3, [r4, #12]
20023714:	7a9b      	ldrb	r3, [r3, #10]
20023716:	b1dd      	cbz	r5, 20023750 <HAL_NAND_CONF_ECC+0x6a>
20023718:	ea43 0100 	orr.w	r1, r3, r0
2002371c:	4620      	mov	r0, r4
2002371e:	f7ff fa64 	bl	20022bea <HAL_FLASH_WRITE_WORD>
20023722:	2101      	movs	r1, #1
20023724:	4620      	mov	r0, r4
20023726:	f7ff fa67 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
2002372a:	68e3      	ldr	r3, [r4, #12]
2002372c:	2103      	movs	r1, #3
2002372e:	799a      	ldrb	r2, [r3, #6]
20023730:	4620      	mov	r0, r4
20023732:	f7ff fcf9 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023736:	68e3      	ldr	r3, [r4, #12]
20023738:	f884 5025 	strb.w	r5, [r4, #37]	@ 0x25
2002373c:	2102      	movs	r1, #2
2002373e:	799a      	ldrb	r2, [r3, #6]
20023740:	4620      	mov	r0, r4
20023742:	f7ff fcf1 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023746:	4620      	mov	r0, r4
20023748:	f7ff fab3 	bl	20022cb2 <HAL_FLASH_READ32>
2002374c:	2000      	movs	r0, #0
2002374e:	bd38      	pop	{r3, r4, r5, pc}
20023750:	ea20 0103 	bic.w	r1, r0, r3
20023754:	e7e2      	b.n	2002371c <HAL_NAND_CONF_ECC+0x36>
20023756:	f04f 30ff 	mov.w	r0, #4294967295
2002375a:	e7f8      	b.n	2002374e <HAL_NAND_CONF_ECC+0x68>
2002375c:	f06f 0001 	mvn.w	r0, #1
20023760:	e7f5      	b.n	2002374e <HAL_NAND_CONF_ECC+0x68>

20023762 <HAL_NAND_GET_ECC_STATUS>:
20023762:	b510      	push	{r4, lr}
20023764:	4604      	mov	r4, r0
20023766:	b320      	cbz	r0, 200237b2 <HAL_NAND_GET_ECC_STATUS+0x50>
20023768:	68c2      	ldr	r2, [r0, #12]
2002376a:	b31a      	cbz	r2, 200237b4 <HAL_NAND_GET_ECC_STATUS+0x52>
2002376c:	7913      	ldrb	r3, [r2, #4]
2002376e:	b31b      	cbz	r3, 200237b8 <HAL_NAND_GET_ECC_STATUS+0x56>
20023770:	79d3      	ldrb	r3, [r2, #7]
20023772:	b30b      	cbz	r3, 200237b8 <HAL_NAND_GET_ECC_STATUS+0x56>
20023774:	2101      	movs	r1, #1
20023776:	f7ff fa3f 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
2002377a:	68e3      	ldr	r3, [r4, #12]
2002377c:	2102      	movs	r1, #2
2002377e:	791a      	ldrb	r2, [r3, #4]
20023780:	4620      	mov	r0, r4
20023782:	f7ff fcd1 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023786:	4620      	mov	r0, r4
20023788:	f7ff fa93 	bl	20022cb2 <HAL_FLASH_READ32>
2002378c:	f894 2024 	ldrb.w	r2, [r4, #36]	@ 0x24
20023790:	2a3f      	cmp	r2, #63	@ 0x3f
20023792:	ea4f 1312 	mov.w	r3, r2, lsr #4
20023796:	d804      	bhi.n	200237a2 <HAL_NAND_GET_ECC_STATUS+0x40>
20023798:	2b01      	cmp	r3, #1
2002379a:	d808      	bhi.n	200237ae <HAL_NAND_GET_ECC_STATUS+0x4c>
2002379c:	f000 0030 	and.w	r0, r0, #48	@ 0x30
200237a0:	e007      	b.n	200237b2 <HAL_NAND_GET_ECC_STATUS+0x50>
200237a2:	3b04      	subs	r3, #4
200237a4:	2b01      	cmp	r3, #1
200237a6:	d8f9      	bhi.n	2002379c <HAL_NAND_GET_ECC_STATUS+0x3a>
200237a8:	f000 00f0 	and.w	r0, r0, #240	@ 0xf0
200237ac:	e001      	b.n	200237b2 <HAL_NAND_GET_ECC_STATUS+0x50>
200237ae:	f000 0070 	and.w	r0, r0, #112	@ 0x70
200237b2:	bd10      	pop	{r4, pc}
200237b4:	4610      	mov	r0, r2
200237b6:	e7fc      	b.n	200237b2 <HAL_NAND_GET_ECC_STATUS+0x50>
200237b8:	4618      	mov	r0, r3
200237ba:	e7fa      	b.n	200237b2 <HAL_NAND_GET_ECC_STATUS+0x50>

200237bc <HAL_NAND_CHECK_ECC>:
200237bc:	4603      	mov	r3, r0
200237be:	1108      	asrs	r0, r1, #4
200237c0:	b172      	cbz	r2, 200237e0 <HAL_NAND_CHECK_ECC+0x24>
200237c2:	2b06      	cmp	r3, #6
200237c4:	d80c      	bhi.n	200237e0 <HAL_NAND_CHECK_ECC+0x24>
200237c6:	e8df f003 	tbb	[pc, r3]
200237ca:	0d04      	.short	0x0d04
200237cc:	3f352e18 	.word	0x3f352e18
200237d0:	47          	.byte	0x47
200237d1:	00          	.byte	0x00
200237d2:	b128      	cbz	r0, 200237e0 <HAL_NAND_CHECK_ECC+0x24>
200237d4:	2801      	cmp	r0, #1
200237d6:	6813      	ldr	r3, [r2, #0]
200237d8:	d10a      	bne.n	200237f0 <HAL_NAND_CHECK_ECC+0x34>
200237da:	f043 0301 	orr.w	r3, r3, #1
200237de:	6013      	str	r3, [r2, #0]
200237e0:	2000      	movs	r0, #0
200237e2:	4770      	bx	lr
200237e4:	f020 0302 	bic.w	r3, r0, #2
200237e8:	2b01      	cmp	r3, #1
200237ea:	d003      	beq.n	200237f4 <HAL_NAND_CHECK_ECC+0x38>
200237ec:	b1d0      	cbz	r0, 20023824 <HAL_NAND_CHECK_ECC+0x68>
200237ee:	6813      	ldr	r3, [r2, #0]
200237f0:	4303      	orrs	r3, r0
200237f2:	e016      	b.n	20023822 <HAL_NAND_CHECK_ECC+0x66>
200237f4:	6813      	ldr	r3, [r2, #0]
200237f6:	4303      	orrs	r3, r0
200237f8:	e7f1      	b.n	200237de <HAL_NAND_CHECK_ECC+0x22>
200237fa:	2805      	cmp	r0, #5
200237fc:	d8f7      	bhi.n	200237ee <HAL_NAND_CHECK_ECC+0x32>
200237fe:	a301      	add	r3, pc, #4	@ (adr r3, 20023804 <HAL_NAND_CHECK_ECC+0x48>)
20023800:	f853 f020 	ldr.w	pc, [r3, r0, lsl #2]
20023804:	200237e1 	.word	0x200237e1
20023808:	200237f5 	.word	0x200237f5
2002380c:	2002381d 	.word	0x2002381d
20023810:	200237f5 	.word	0x200237f5
20023814:	200237ef 	.word	0x200237ef
20023818:	200237f5 	.word	0x200237f5
2002381c:	6813      	ldr	r3, [r2, #0]
2002381e:	f043 0302 	orr.w	r3, r3, #2
20023822:	6013      	str	r3, [r2, #0]
20023824:	4770      	bx	lr
20023826:	2800      	cmp	r0, #0
20023828:	d0da      	beq.n	200237e0 <HAL_NAND_CHECK_ECC+0x24>
2002382a:	1e43      	subs	r3, r0, #1
2002382c:	2b05      	cmp	r3, #5
2002382e:	6813      	ldr	r3, [r2, #0]
20023830:	d9e1      	bls.n	200237f6 <HAL_NAND_CHECK_ECC+0x3a>
20023832:	e7dd      	b.n	200237f0 <HAL_NAND_CHECK_ECC+0x34>
20023834:	07c3      	lsls	r3, r0, #31
20023836:	f000 0103 	and.w	r1, r0, #3
2002383a:	d402      	bmi.n	20023842 <HAL_NAND_CHECK_ECC+0x86>
2002383c:	2900      	cmp	r1, #0
2002383e:	d0cf      	beq.n	200237e0 <HAL_NAND_CHECK_ECC+0x24>
20023840:	e7d5      	b.n	200237ee <HAL_NAND_CHECK_ECC+0x32>
20023842:	6813      	ldr	r3, [r2, #0]
20023844:	430b      	orrs	r3, r1
20023846:	e7ca      	b.n	200237de <HAL_NAND_CHECK_ECC+0x22>
20023848:	2800      	cmp	r0, #0
2002384a:	d0c9      	beq.n	200237e0 <HAL_NAND_CHECK_ECC+0x24>
2002384c:	6813      	ldr	r3, [r2, #0]
2002384e:	2808      	cmp	r0, #8
20023850:	ea43 0300 	orr.w	r3, r3, r0
20023854:	dce5      	bgt.n	20023822 <HAL_NAND_CHECK_ECC+0x66>
20023856:	e7c2      	b.n	200237de <HAL_NAND_CHECK_ECC+0x22>
20023858:	2800      	cmp	r0, #0
2002385a:	d0c1      	beq.n	200237e0 <HAL_NAND_CHECK_ECC+0x24>
2002385c:	1e43      	subs	r3, r0, #1
2002385e:	2b01      	cmp	r3, #1
20023860:	e7e5      	b.n	2002382e <HAL_NAND_CHECK_ECC+0x72>
20023862:	bf00      	nop

20023864 <HAL_NAND_GET_ECC_RESULT>:
20023864:	b510      	push	{r4, lr}
20023866:	f890 3025 	ldrb.w	r3, [r0, #37]	@ 0x25
2002386a:	4604      	mov	r4, r0
2002386c:	b183      	cbz	r3, 20023890 <HAL_NAND_GET_ECC_RESULT+0x2c>
2002386e:	f7ff ff78 	bl	20023762 <HAL_NAND_GET_ECC_STATUS>
20023872:	4601      	mov	r1, r0
20023874:	b160      	cbz	r0, 20023890 <HAL_NAND_GET_ECC_RESULT+0x2c>
20023876:	4622      	mov	r2, r4
20023878:	6863      	ldr	r3, [r4, #4]
2002387a:	f443 4300 	orr.w	r3, r3, #32768	@ 0x8000
2002387e:	f842 3f04 	str.w	r3, [r2, #4]!
20023882:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
20023886:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002388a:	0900      	lsrs	r0, r0, #4
2002388c:	f7ff bf96 	b.w	200237bc <HAL_NAND_CHECK_ECC>
20023890:	2000      	movs	r0, #0
20023892:	bd10      	pop	{r4, pc}

20023894 <HAL_NAND_EN_QUAL>:
20023894:	b538      	push	{r3, r4, r5, lr}
20023896:	460d      	mov	r5, r1
20023898:	4604      	mov	r4, r0
2002389a:	b348      	cbz	r0, 200238f0 <HAL_NAND_EN_QUAL+0x5c>
2002389c:	68c3      	ldr	r3, [r0, #12]
2002389e:	b33b      	cbz	r3, 200238f0 <HAL_NAND_EN_QUAL+0x5c>
200238a0:	799a      	ldrb	r2, [r3, #6]
200238a2:	b10a      	cbz	r2, 200238a8 <HAL_NAND_EN_QUAL+0x14>
200238a4:	7a1b      	ldrb	r3, [r3, #8]
200238a6:	b90b      	cbnz	r3, 200238ac <HAL_NAND_EN_QUAL+0x18>
200238a8:	2000      	movs	r0, #0
200238aa:	bd38      	pop	{r3, r4, r5, pc}
200238ac:	2101      	movs	r1, #1
200238ae:	f7ff f9a3 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
200238b2:	68e3      	ldr	r3, [r4, #12]
200238b4:	2102      	movs	r1, #2
200238b6:	799a      	ldrb	r2, [r3, #6]
200238b8:	4620      	mov	r0, r4
200238ba:	f7ff fc35 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
200238be:	4620      	mov	r0, r4
200238c0:	f7ff f9f7 	bl	20022cb2 <HAL_FLASH_READ32>
200238c4:	68e3      	ldr	r3, [r4, #12]
200238c6:	7a1b      	ldrb	r3, [r3, #8]
200238c8:	b17d      	cbz	r5, 200238ea <HAL_NAND_EN_QUAL+0x56>
200238ca:	ea43 0100 	orr.w	r1, r3, r0
200238ce:	4620      	mov	r0, r4
200238d0:	f7ff f98b 	bl	20022bea <HAL_FLASH_WRITE_WORD>
200238d4:	2101      	movs	r1, #1
200238d6:	4620      	mov	r0, r4
200238d8:	f7ff f98e 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
200238dc:	68e3      	ldr	r3, [r4, #12]
200238de:	2103      	movs	r1, #3
200238e0:	4620      	mov	r0, r4
200238e2:	799a      	ldrb	r2, [r3, #6]
200238e4:	f7ff fc20 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
200238e8:	e7de      	b.n	200238a8 <HAL_NAND_EN_QUAL+0x14>
200238ea:	ea20 0103 	bic.w	r1, r0, r3
200238ee:	e7ee      	b.n	200238ce <HAL_NAND_EN_QUAL+0x3a>
200238f0:	f04f 30ff 	mov.w	r0, #4294967295
200238f4:	e7d9      	b.n	200238aa <HAL_NAND_EN_QUAL+0x16>

200238f6 <nand_clear_status>:
200238f6:	b510      	push	{r4, lr}
200238f8:	4604      	mov	r4, r0
200238fa:	2101      	movs	r1, #1
200238fc:	f7ff f97c 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
20023900:	2102      	movs	r1, #2
20023902:	4620      	mov	r0, r4
20023904:	f7ff f971 	bl	20022bea <HAL_FLASH_WRITE_WORD>
20023908:	68e3      	ldr	r3, [r4, #12]
2002390a:	2103      	movs	r1, #3
2002390c:	795a      	ldrb	r2, [r3, #5]
2002390e:	4620      	mov	r0, r4
20023910:	f7ff fc0a 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023914:	2100      	movs	r1, #0
20023916:	4620      	mov	r0, r4
20023918:	f7ff f967 	bl	20022bea <HAL_FLASH_WRITE_WORD>
2002391c:	68e3      	ldr	r3, [r4, #12]
2002391e:	2103      	movs	r1, #3
20023920:	4620      	mov	r0, r4
20023922:	795a      	ldrb	r2, [r3, #5]
20023924:	f7ff fc00 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023928:	2000      	movs	r0, #0
2002392a:	bd10      	pop	{r4, pc}

2002392c <HAL_NAND_PAGE_SIZE>:
2002392c:	b140      	cbz	r0, 20023940 <HAL_NAND_PAGE_SIZE+0x14>
2002392e:	f890 3024 	ldrb.w	r3, [r0, #36]	@ 0x24
20023932:	f013 0f01 	tst.w	r3, #1
20023936:	bf14      	ite	ne
20023938:	f44f 5080 	movne.w	r0, #4096	@ 0x1000
2002393c:	f44f 6000 	moveq.w	r0, #2048	@ 0x800
20023940:	4770      	bx	lr
	...

20023944 <HAL_NAND_READ_WITHOOB>:
20023944:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20023948:	b091      	sub	sp, #68	@ 0x44
2002394a:	460e      	mov	r6, r1
2002394c:	4692      	mov	sl, r2
2002394e:	461d      	mov	r5, r3
20023950:	4604      	mov	r4, r0
20023952:	9f1b      	ldr	r7, [sp, #108]	@ 0x6c
20023954:	b128      	cbz	r0, 20023962 <HAL_NAND_READ_WITHOOB+0x1e>
20023956:	68c3      	ldr	r3, [r0, #12]
20023958:	b11b      	cbz	r3, 20023962 <HAL_NAND_READ_WITHOOB+0x1e>
2002395a:	69c3      	ldr	r3, [r0, #28]
2002395c:	b10b      	cbz	r3, 20023962 <HAL_NAND_READ_WITHOOB+0x1e>
2002395e:	2f80      	cmp	r7, #128	@ 0x80
20023960:	d905      	bls.n	2002396e <HAL_NAND_READ_WITHOOB+0x2a>
20023962:	2301      	movs	r3, #1
20023964:	6063      	str	r3, [r4, #4]
20023966:	2000      	movs	r0, #0
20023968:	b011      	add	sp, #68	@ 0x44
2002396a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002396e:	f7ff ffdd 	bl	2002392c <HAL_NAND_PAGE_SIZE>
20023972:	f100 39ff 	add.w	r9, r0, #4294967295
20023976:	ea09 0901 	and.w	r9, r9, r1
2002397a:	eb09 0305 	add.w	r3, r9, r5
2002397e:	4283      	cmp	r3, r0
20023980:	4680      	mov	r8, r0
20023982:	d901      	bls.n	20023988 <HAL_NAND_READ_WITHOOB+0x44>
20023984:	2302      	movs	r3, #2
20023986:	e7ed      	b.n	20023964 <HAL_NAND_READ_WITHOOB+0x20>
20023988:	2300      	movs	r3, #0
2002398a:	6063      	str	r3, [r4, #4]
2002398c:	6923      	ldr	r3, [r4, #16]
2002398e:	f04f 0b00 	mov.w	fp, #0
20023992:	428b      	cmp	r3, r1
20023994:	bf98      	it	ls
20023996:	1ace      	subls	r6, r1, r3
20023998:	fbb6 f2f0 	udiv	r2, r6, r0
2002399c:	2104      	movs	r1, #4
2002399e:	4620      	mov	r0, r4
200239a0:	f7ff fbc2 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
200239a4:	2014      	movs	r0, #20
200239a6:	f7fe fa2f 	bl	20021e08 <HAL_Delay_us_>
200239aa:	2101      	movs	r1, #1
200239ac:	4620      	mov	r0, r4
200239ae:	f7ff f923 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
200239b2:	2005      	movs	r0, #5
200239b4:	f7fe fa28 	bl	20021e08 <HAL_Delay_us_>
200239b8:	68e3      	ldr	r3, [r4, #12]
200239ba:	2102      	movs	r1, #2
200239bc:	791a      	ldrb	r2, [r3, #4]
200239be:	4620      	mov	r0, r4
200239c0:	f7ff fbb2 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
200239c4:	4620      	mov	r0, r4
200239c6:	f7ff f974 	bl	20022cb2 <HAL_FLASH_READ32>
200239ca:	07c3      	lsls	r3, r0, #31
200239cc:	d4f1      	bmi.n	200239b2 <HAL_NAND_READ_WITHOOB+0x6e>
200239ce:	f1bb 0f00 	cmp.w	fp, #0
200239d2:	d102      	bne.n	200239da <HAL_NAND_READ_WITHOOB+0x96>
200239d4:	f04f 0b01 	mov.w	fp, #1
200239d8:	e7eb      	b.n	200239b2 <HAL_NAND_READ_WITHOOB+0x6e>
200239da:	4620      	mov	r0, r4
200239dc:	f7ff ff42 	bl	20023864 <HAL_NAND_GET_ECC_RESULT>
200239e0:	b118      	cbz	r0, 200239ea <HAL_NAND_READ_WITHOOB+0xa6>
200239e2:	f440 4000 	orr.w	r0, r0, #32768	@ 0x8000
200239e6:	6060      	str	r0, [r4, #4]
200239e8:	e7bd      	b.n	20023966 <HAL_NAND_READ_WITHOOB+0x22>
200239ea:	f894 2020 	ldrb.w	r2, [r4, #32]
200239ee:	68e3      	ldr	r3, [r4, #12]
200239f0:	2a00      	cmp	r2, #0
200239f2:	d140      	bne.n	20023a76 <HAL_NAND_READ_WITHOOB+0x132>
200239f4:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
200239f8:	4620      	mov	r0, r4
200239fa:	f7ff f8a5 	bl	20022b48 <HAL_FLASH_SET_AHB_RCMD>
200239fe:	68e0      	ldr	r0, [r4, #12]
20023a00:	f990 c04e 	ldrsb.w	ip, [r0, #78]	@ 0x4e
20023a04:	f990 304a 	ldrsb.w	r3, [r0, #74]	@ 0x4a
20023a08:	f990 2049 	ldrsb.w	r2, [r0, #73]	@ 0x49
20023a0c:	f990 1048 	ldrsb.w	r1, [r0, #72]	@ 0x48
20023a10:	f8cd c00c 	str.w	ip, [sp, #12]
20023a14:	f990 c04d 	ldrsb.w	ip, [r0, #77]	@ 0x4d
20023a18:	f8cd c008 	str.w	ip, [sp, #8]
20023a1c:	f990 c04c 	ldrsb.w	ip, [r0, #76]	@ 0x4c
20023a20:	f8cd c004 	str.w	ip, [sp, #4]
20023a24:	f990 004b 	ldrsb.w	r0, [r0, #75]	@ 0x4b
20023a28:	9000      	str	r0, [sp, #0]
20023a2a:	4620      	mov	r0, r4
20023a2c:	f7ff f897 	bl	20022b5e <HAL_FLASH_CFG_AHB_RCMD>
20023a30:	03b0      	lsls	r0, r6, #14
20023a32:	f8d4 b010 	ldr.w	fp, [r4, #16]
20023a36:	d504      	bpl.n	20023a42 <HAL_NAND_READ_WITHOOB+0xfe>
20023a38:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
20023a3c:	b10b      	cbz	r3, 20023a42 <HAL_NAND_READ_WITHOOB+0xfe>
20023a3e:	f44b 5b80 	orr.w	fp, fp, #4096	@ 0x1000
20023a42:	ea4a 0305 	orr.w	r3, sl, r5
20023a46:	ea43 0309 	orr.w	r3, r3, r9
20023a4a:	f013 0303 	ands.w	r3, r3, #3
20023a4e:	d102      	bne.n	20023a56 <HAL_NAND_READ_WITHOOB+0x112>
20023a50:	1e6a      	subs	r2, r5, #1
20023a52:	2afe      	cmp	r2, #254	@ 0xfe
20023a54:	d82a      	bhi.n	20023aac <HAL_NAND_READ_WITHOOB+0x168>
20023a56:	462a      	mov	r2, r5
20023a58:	4650      	mov	r0, sl
20023a5a:	eb0b 0109 	add.w	r1, fp, r9
20023a5e:	f006 fec1 	bl	2002a7e4 <memcpy>
20023a62:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20023a64:	b12b      	cbz	r3, 20023a72 <HAL_NAND_READ_WITHOOB+0x12e>
20023a66:	463a      	mov	r2, r7
20023a68:	4618      	mov	r0, r3
20023a6a:	eb0b 0108 	add.w	r1, fp, r8
20023a6e:	f006 feb9 	bl	2002a7e4 <memcpy>
20023a72:	1978      	adds	r0, r7, r5
20023a74:	e778      	b.n	20023968 <HAL_NAND_READ_WITHOOB+0x24>
20023a76:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
20023a7a:	4620      	mov	r0, r4
20023a7c:	f7ff f864 	bl	20022b48 <HAL_FLASH_SET_AHB_RCMD>
20023a80:	68e0      	ldr	r0, [r4, #12]
20023a82:	f990 c072 	ldrsb.w	ip, [r0, #114]	@ 0x72
20023a86:	f990 306e 	ldrsb.w	r3, [r0, #110]	@ 0x6e
20023a8a:	f990 206d 	ldrsb.w	r2, [r0, #109]	@ 0x6d
20023a8e:	f990 106c 	ldrsb.w	r1, [r0, #108]	@ 0x6c
20023a92:	f8cd c00c 	str.w	ip, [sp, #12]
20023a96:	f990 c071 	ldrsb.w	ip, [r0, #113]	@ 0x71
20023a9a:	f8cd c008 	str.w	ip, [sp, #8]
20023a9e:	f990 c070 	ldrsb.w	ip, [r0, #112]	@ 0x70
20023aa2:	f8cd c004 	str.w	ip, [sp, #4]
20023aa6:	f990 006f 	ldrsb.w	r0, [r0, #111]	@ 0x6f
20023aaa:	e7bd      	b.n	20023a28 <HAL_NAND_READ_WITHOOB+0xe4>
20023aac:	f1ba 0f00 	cmp.w	sl, #0
20023ab0:	d0d7      	beq.n	20023a62 <HAL_NAND_READ_WITHOOB+0x11e>
20023ab2:	491c      	ldr	r1, [pc, #112]	@ (20023b24 <HAL_NAND_READ_WITHOOB+0x1e0>)
20023ab4:	4a1c      	ldr	r2, [pc, #112]	@ (20023b28 <HAL_NAND_READ_WITHOOB+0x1e4>)
20023ab6:	a804      	add	r0, sp, #16
20023ab8:	e9cd 1205 	strd	r1, r2, [sp, #20]
20023abc:	f88d 301c 	strb.w	r3, [sp, #28]
20023ac0:	f7fe ff58 	bl	20022974 <HAL_EXT_DMA_Init>
20023ac4:	b150      	cbz	r0, 20023adc <HAL_NAND_READ_WITHOOB+0x198>
20023ac6:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20023ac8:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023acc:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
20023ad0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023ad4:	f041 4100 	orr.w	r1, r1, #2147483648	@ 0x80000000
20023ad8:	6061      	str	r1, [r4, #4]
20023ada:	e744      	b.n	20023966 <HAL_NAND_READ_WITHOOB+0x22>
20023adc:	eb0b 0109 	add.w	r1, fp, r9
20023ae0:	4652      	mov	r2, sl
20023ae2:	08ab      	lsrs	r3, r5, #2
20023ae4:	a804      	add	r0, sp, #16
20023ae6:	f7fe ff65 	bl	200229b4 <HAL_EXT_DMA_Start>
20023aea:	4601      	mov	r1, r0
20023aec:	b980      	cbnz	r0, 20023b10 <HAL_NAND_READ_WITHOOB+0x1cc>
20023aee:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20023af2:	a804      	add	r0, sp, #16
20023af4:	f7fe ff84 	bl	20022a00 <HAL_EXT_DMA_PollForTransfer>
20023af8:	2800      	cmp	r0, #0
20023afa:	d0b2      	beq.n	20023a62 <HAL_NAND_READ_WITHOOB+0x11e>
20023afc:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20023afe:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023b02:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
20023b06:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023b0a:	f041 4160 	orr.w	r1, r1, #3758096384	@ 0xe0000000
20023b0e:	e7e3      	b.n	20023ad8 <HAL_NAND_READ_WITHOOB+0x194>
20023b10:	9a0f      	ldr	r2, [sp, #60]	@ 0x3c
20023b12:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023b16:	ea40 4102 	orr.w	r1, r0, r2, lsl #16
20023b1a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023b1e:	f041 4140 	orr.w	r1, r1, #3221225472	@ 0xc0000000
20023b22:	e7d9      	b.n	20023ad8 <HAL_NAND_READ_WITHOOB+0x194>
20023b24:	000c0080 	.word	0x000c0080
20023b28:	00030040 	.word	0x00030040

20023b2c <HAL_NAND_BLOCK_SIZE>:
20023b2c:	b508      	push	{r3, lr}
20023b2e:	4602      	mov	r2, r0
20023b30:	f7ff fefc 	bl	2002392c <HAL_NAND_PAGE_SIZE>
20023b34:	b128      	cbz	r0, 20023b42 <HAL_NAND_BLOCK_SIZE+0x16>
20023b36:	f892 3024 	ldrb.w	r3, [r2, #36]	@ 0x24
20023b3a:	079b      	lsls	r3, r3, #30
20023b3c:	bf4c      	ite	mi
20023b3e:	01c0      	lslmi	r0, r0, #7
20023b40:	0180      	lslpl	r0, r0, #6
20023b42:	bd08      	pop	{r3, pc}

20023b44 <HAL_NAND_GET_BADBLK>:
20023b44:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20023b46:	4604      	mov	r4, r0
20023b48:	b910      	cbnz	r0, 20023b50 <HAL_NAND_GET_BADBLK+0xc>
20023b4a:	2000      	movs	r0, #0
20023b4c:	b004      	add	sp, #16
20023b4e:	bd10      	pop	{r4, pc}
20023b50:	69c3      	ldr	r3, [r0, #28]
20023b52:	2b00      	cmp	r3, #0
20023b54:	d0f9      	beq.n	20023b4a <HAL_NAND_GET_BADBLK+0x6>
20023b56:	f7ff ffe9 	bl	20023b2c <HAL_NAND_BLOCK_SIZE>
20023b5a:	2304      	movs	r3, #4
20023b5c:	9301      	str	r3, [sp, #4]
20023b5e:	ab03      	add	r3, sp, #12
20023b60:	9300      	str	r3, [sp, #0]
20023b62:	2300      	movs	r3, #0
20023b64:	4341      	muls	r1, r0
20023b66:	461a      	mov	r2, r3
20023b68:	4620      	mov	r0, r4
20023b6a:	f7ff feeb 	bl	20023944 <HAL_NAND_READ_WITHOOB>
20023b6e:	b140      	cbz	r0, 20023b82 <HAL_NAND_GET_BADBLK+0x3e>
20023b70:	f89d 300c 	ldrb.w	r3, [sp, #12]
20023b74:	2bff      	cmp	r3, #255	@ 0xff
20023b76:	d0e8      	beq.n	20023b4a <HAL_NAND_GET_BADBLK+0x6>
20023b78:	9803      	ldr	r0, [sp, #12]
20023b7a:	2800      	cmp	r0, #0
20023b7c:	bf08      	it	eq
20023b7e:	2001      	moveq	r0, #1
20023b80:	e7e4      	b.n	20023b4c <HAL_NAND_GET_BADBLK+0x8>
20023b82:	2001      	movs	r0, #1
20023b84:	e7e2      	b.n	20023b4c <HAL_NAND_GET_BADBLK+0x8>

20023b86 <HAL_QSPIEX_WRITE_PAGE>:
20023b86:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20023b8a:	b099      	sub	sp, #100	@ 0x64
20023b8c:	4604      	mov	r4, r0
20023b8e:	460e      	mov	r6, r1
20023b90:	4691      	mov	r9, r2
20023b92:	f7ff fcee 	bl	20023572 <flash_handle_valid>
20023b96:	b318      	cbz	r0, 20023be0 <HAL_QSPIEX_WRITE_PAGE+0x5a>
20023b98:	2b00      	cmp	r3, #0
20023b9a:	f000 80d7 	beq.w	20023d4c <HAL_QSPIEX_WRITE_PAGE+0x1c6>
20023b9e:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
20023ba2:	bf28      	it	cs
20023ba4:	f44f 7380 	movcs.w	r3, #256	@ 0x100
20023ba8:	68a1      	ldr	r1, [r4, #8]
20023baa:	461d      	mov	r5, r3
20023bac:	6962      	ldr	r2, [r4, #20]
20023bae:	f894 3020 	ldrb.w	r3, [r4, #32]
20023bb2:	2900      	cmp	r1, #0
20023bb4:	d03b      	beq.n	20023c2e <HAL_QSPIEX_WRITE_PAGE+0xa8>
20023bb6:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023bba:	d914      	bls.n	20023be6 <HAL_QSPIEX_WRITE_PAGE+0x60>
20023bbc:	2b02      	cmp	r3, #2
20023bbe:	bf14      	ite	ne
20023bc0:	2727      	movne	r7, #39	@ 0x27
20023bc2:	2728      	moveq	r7, #40	@ 0x28
20023bc4:	4639      	mov	r1, r7
20023bc6:	4620      	mov	r0, r4
20023bc8:	f7ff fa87 	bl	200230da <HAL_FLASH_PRE_CMD>
20023bcc:	4649      	mov	r1, r9
20023bce:	462b      	mov	r3, r5
20023bd0:	2201      	movs	r2, #1
20023bd2:	4620      	mov	r0, r4
20023bd4:	f7ff fcd5 	bl	20023582 <HAL_FLASH_DMA_START>
20023bd8:	4601      	mov	r1, r0
20023bda:	b148      	cbz	r0, 20023bf0 <HAL_QSPIEX_WRITE_PAGE+0x6a>
20023bdc:	2500      	movs	r5, #0
20023bde:	4628      	mov	r0, r5
20023be0:	b019      	add	sp, #100	@ 0x64
20023be2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20023be6:	2b02      	cmp	r3, #2
20023be8:	bf14      	ite	ne
20023bea:	2716      	movne	r7, #22
20023bec:	2717      	moveq	r7, #23
20023bee:	e7e9      	b.n	20023bc4 <HAL_QSPIEX_WRITE_PAGE+0x3e>
20023bf0:	4632      	mov	r2, r6
20023bf2:	4620      	mov	r0, r4
20023bf4:	f7ff fa98 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023bf8:	2101      	movs	r1, #1
20023bfa:	4620      	mov	r0, r4
20023bfc:	f7ff f806 	bl	20022c0c <HAL_FLASH_WRITE_DLEN2>
20023c00:	2301      	movs	r3, #1
20023c02:	4632      	mov	r2, r6
20023c04:	9300      	str	r3, [sp, #0]
20023c06:	4639      	mov	r1, r7
20023c08:	2302      	movs	r3, #2
20023c0a:	4620      	mov	r0, r4
20023c0c:	f7ff fabd 	bl	2002318a <HAL_FLASH_ISSUE_CMD_SEQ>
20023c10:	2800      	cmp	r0, #0
20023c12:	d1e3      	bne.n	20023bdc <HAL_QSPIEX_WRITE_PAGE+0x56>
20023c14:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
20023c18:	4620      	mov	r0, r4
20023c1a:	f7ff fcec 	bl	200235f6 <HAL_FLASH_DMA_WAIT_DONE>
20023c1e:	2800      	cmp	r0, #0
20023c20:	d1dc      	bne.n	20023bdc <HAL_QSPIEX_WRITE_PAGE+0x56>
20023c22:	6822      	ldr	r2, [r4, #0]
20023c24:	6813      	ldr	r3, [r2, #0]
20023c26:	f023 0320 	bic.w	r3, r3, #32
20023c2a:	6013      	str	r3, [r2, #0]
20023c2c:	e7d7      	b.n	20023bde <HAL_QSPIEX_WRITE_PAGE+0x58>
20023c2e:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023c32:	f240 8082 	bls.w	20023d3a <HAL_QSPIEX_WRITE_PAGE+0x1b4>
20023c36:	2b02      	cmp	r3, #2
20023c38:	bf14      	ite	ne
20023c3a:	2327      	movne	r3, #39	@ 0x27
20023c3c:	2328      	moveq	r3, #40	@ 0x28
20023c3e:	462f      	mov	r7, r5
20023c40:	f04f 0800 	mov.w	r8, #0
20023c44:	9303      	str	r3, [sp, #12]
20023c46:	f64f 7afc 	movw	sl, #65532	@ 0xfffc
20023c4a:	2f40      	cmp	r7, #64	@ 0x40
20023c4c:	bfd4      	ite	le
20023c4e:	ea0a 0a07 	andle.w	sl, sl, r7
20023c52:	f00a 0a40 	andgt.w	sl, sl, #64	@ 0x40
20023c56:	f1ba 0f00 	cmp.w	sl, #0
20023c5a:	d03f      	beq.n	20023cdc <HAL_QSPIEX_WRITE_PAGE+0x156>
20023c5c:	2200      	movs	r2, #0
20023c5e:	4620      	mov	r0, r4
20023c60:	4611      	mov	r1, r2
20023c62:	f7ff fa61 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023c66:	eb09 0308 	add.w	r3, r9, r8
20023c6a:	f10d 0c20 	add.w	ip, sp, #32
20023c6e:	f103 0e40 	add.w	lr, r3, #64	@ 0x40
20023c72:	4662      	mov	r2, ip
20023c74:	6818      	ldr	r0, [r3, #0]
20023c76:	6859      	ldr	r1, [r3, #4]
20023c78:	3308      	adds	r3, #8
20023c7a:	c203      	stmia	r2!, {r0, r1}
20023c7c:	4573      	cmp	r3, lr
20023c7e:	4694      	mov	ip, r2
20023c80:	d1f7      	bne.n	20023c72 <HAL_QSPIEX_WRITE_PAGE+0xec>
20023c82:	f04f 0b00 	mov.w	fp, #0
20023c86:	ea4f 02aa 	mov.w	r2, sl, asr #2
20023c8a:	ab08      	add	r3, sp, #32
20023c8c:	f853 1b04 	ldr.w	r1, [r3], #4
20023c90:	4620      	mov	r0, r4
20023c92:	9205      	str	r2, [sp, #20]
20023c94:	9304      	str	r3, [sp, #16]
20023c96:	f7fe ffa8 	bl	20022bea <HAL_FLASH_WRITE_WORD>
20023c9a:	9a05      	ldr	r2, [sp, #20]
20023c9c:	f10b 0b01 	add.w	fp, fp, #1
20023ca0:	4593      	cmp	fp, r2
20023ca2:	9b04      	ldr	r3, [sp, #16]
20023ca4:	d1f2      	bne.n	20023c8c <HAL_QSPIEX_WRITE_PAGE+0x106>
20023ca6:	4651      	mov	r1, sl
20023ca8:	4620      	mov	r0, r4
20023caa:	f7fe ffa5 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
20023cae:	4620      	mov	r0, r4
20023cb0:	9903      	ldr	r1, [sp, #12]
20023cb2:	eb06 0208 	add.w	r2, r6, r8
20023cb6:	f7ff fa37 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023cba:	2101      	movs	r1, #1
20023cbc:	4620      	mov	r0, r4
20023cbe:	f7fe ff9b 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
20023cc2:	2200      	movs	r2, #0
20023cc4:	2102      	movs	r1, #2
20023cc6:	4620      	mov	r0, r4
20023cc8:	f7ff fa2e 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023ccc:	4620      	mov	r0, r4
20023cce:	f7fe ffe7 	bl	20022ca0 <HAL_FLASH_IS_PROG_DONE>
20023cd2:	2800      	cmp	r0, #0
20023cd4:	d0f1      	beq.n	20023cba <HAL_QSPIEX_WRITE_PAGE+0x134>
20023cd6:	eba7 070a 	sub.w	r7, r7, sl
20023cda:	44d0      	add	r8, sl
20023cdc:	1e7b      	subs	r3, r7, #1
20023cde:	2b02      	cmp	r3, #2
20023ce0:	d830      	bhi.n	20023d44 <HAL_QSPIEX_WRITE_PAGE+0x1be>
20023ce2:	6923      	ldr	r3, [r4, #16]
20023ce4:	4446      	add	r6, r8
20023ce6:	4333      	orrs	r3, r6
20023ce8:	681b      	ldr	r3, [r3, #0]
20023cea:	463a      	mov	r2, r7
20023cec:	eb09 0108 	add.w	r1, r9, r8
20023cf0:	a807      	add	r0, sp, #28
20023cf2:	9307      	str	r3, [sp, #28]
20023cf4:	f006 fd76 	bl	2002a7e4 <memcpy>
20023cf8:	2200      	movs	r2, #0
20023cfa:	4620      	mov	r0, r4
20023cfc:	4611      	mov	r1, r2
20023cfe:	f7ff fa13 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023d02:	9907      	ldr	r1, [sp, #28]
20023d04:	4620      	mov	r0, r4
20023d06:	f7fe ff70 	bl	20022bea <HAL_FLASH_WRITE_WORD>
20023d0a:	2104      	movs	r1, #4
20023d0c:	4620      	mov	r0, r4
20023d0e:	f7fe ff73 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
20023d12:	4632      	mov	r2, r6
20023d14:	4620      	mov	r0, r4
20023d16:	9903      	ldr	r1, [sp, #12]
20023d18:	f7ff fa06 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023d1c:	2101      	movs	r1, #1
20023d1e:	4620      	mov	r0, r4
20023d20:	f7fe ff6a 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
20023d24:	2200      	movs	r2, #0
20023d26:	2102      	movs	r1, #2
20023d28:	4620      	mov	r0, r4
20023d2a:	f7ff f9fd 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023d2e:	4620      	mov	r0, r4
20023d30:	f7fe ffb6 	bl	20022ca0 <HAL_FLASH_IS_PROG_DONE>
20023d34:	2800      	cmp	r0, #0
20023d36:	d0f1      	beq.n	20023d1c <HAL_QSPIEX_WRITE_PAGE+0x196>
20023d38:	e751      	b.n	20023bde <HAL_QSPIEX_WRITE_PAGE+0x58>
20023d3a:	2b02      	cmp	r3, #2
20023d3c:	bf14      	ite	ne
20023d3e:	2316      	movne	r3, #22
20023d40:	2317      	moveq	r3, #23
20023d42:	e77c      	b.n	20023c3e <HAL_QSPIEX_WRITE_PAGE+0xb8>
20023d44:	2f00      	cmp	r7, #0
20023d46:	f73f af7e 	bgt.w	20023c46 <HAL_QSPIEX_WRITE_PAGE+0xc0>
20023d4a:	e748      	b.n	20023bde <HAL_QSPIEX_WRITE_PAGE+0x58>
20023d4c:	4618      	mov	r0, r3
20023d4e:	e747      	b.n	20023be0 <HAL_QSPIEX_WRITE_PAGE+0x5a>

20023d50 <HAL_QSPIEX_SECT_ERASE>:
20023d50:	b573      	push	{r0, r1, r4, r5, r6, lr}
20023d52:	4604      	mov	r4, r0
20023d54:	460d      	mov	r5, r1
20023d56:	f7ff fc0c 	bl	20023572 <flash_handle_valid>
20023d5a:	b1e8      	cbz	r0, 20023d98 <HAL_QSPIEX_SECT_ERASE+0x48>
20023d5c:	6963      	ldr	r3, [r4, #20]
20023d5e:	460a      	mov	r2, r1
20023d60:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023d64:	f04f 0100 	mov.w	r1, #0
20023d68:	4620      	mov	r0, r4
20023d6a:	bf94      	ite	ls
20023d6c:	261b      	movls	r6, #27
20023d6e:	2629      	movhi	r6, #41	@ 0x29
20023d70:	f7ff f9da 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20023d74:	2101      	movs	r1, #1
20023d76:	4620      	mov	r0, r4
20023d78:	f7fe ff48 	bl	20022c0c <HAL_FLASH_WRITE_DLEN2>
20023d7c:	2301      	movs	r3, #1
20023d7e:	462a      	mov	r2, r5
20023d80:	9300      	str	r3, [sp, #0]
20023d82:	4631      	mov	r1, r6
20023d84:	2302      	movs	r3, #2
20023d86:	4620      	mov	r0, r4
20023d88:	f7ff f9ff 	bl	2002318a <HAL_FLASH_ISSUE_CMD_SEQ>
20023d8c:	3800      	subs	r0, #0
20023d8e:	bf18      	it	ne
20023d90:	2001      	movne	r0, #1
20023d92:	4240      	negs	r0, r0
20023d94:	b002      	add	sp, #8
20023d96:	bd70      	pop	{r4, r5, r6, pc}
20023d98:	f04f 30ff 	mov.w	r0, #4294967295
20023d9c:	e7fa      	b.n	20023d94 <HAL_QSPIEX_SECT_ERASE+0x44>
	...

20023da0 <HAL_QSPI_GET_SRC_CLK>:
20023da0:	b508      	push	{r3, lr}
20023da2:	b1e8      	cbz	r0, 20023de0 <HAL_QSPI_GET_SRC_CLK+0x40>
20023da4:	6803      	ldr	r3, [r0, #0]
20023da6:	4a0f      	ldr	r2, [pc, #60]	@ (20023de4 <HAL_QSPI_GET_SRC_CLK+0x44>)
20023da8:	4293      	cmp	r3, r2
20023daa:	d00c      	beq.n	20023dc6 <HAL_QSPI_GET_SRC_CLK+0x26>
20023dac:	f502 5280 	add.w	r2, r2, #4096	@ 0x1000
20023db0:	4293      	cmp	r3, r2
20023db2:	d115      	bne.n	20023de0 <HAL_QSPI_GET_SRC_CLK+0x40>
20023db4:	2006      	movs	r0, #6
20023db6:	f001 f817 	bl	20024de8 <HAL_RCC_HCPU_GetClockSrc>
20023dba:	2802      	cmp	r0, #2
20023dbc:	d105      	bne.n	20023dca <HAL_QSPI_GET_SRC_CLK+0x2a>
20023dbe:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023dc2:	f001 b846 	b.w	20024e52 <HAL_RCC_HCPU_GetDLL2Freq>
20023dc6:	2004      	movs	r0, #4
20023dc8:	e7f5      	b.n	20023db6 <HAL_QSPI_GET_SRC_CLK+0x16>
20023dca:	2803      	cmp	r0, #3
20023dcc:	d103      	bne.n	20023dd6 <HAL_QSPI_GET_SRC_CLK+0x36>
20023dce:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023dd2:	f001 b841 	b.w	20024e58 <HAL_RCC_HCPU_GetDLL3Freq>
20023dd6:	2001      	movs	r0, #1
20023dd8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023ddc:	f001 b8a0 	b.w	20024f20 <HAL_RCC_GetSysCLKFreq>
20023de0:	2000      	movs	r0, #0
20023de2:	bd08      	pop	{r3, pc}
20023de4:	50041000 	.word	0x50041000

20023de8 <HAL_QSPI_GET_CLK>:
20023de8:	b538      	push	{r3, r4, r5, lr}
20023dea:	4605      	mov	r5, r0
20023dec:	b908      	cbnz	r0, 20023df2 <HAL_QSPI_GET_CLK+0xa>
20023dee:	2000      	movs	r0, #0
20023df0:	bd38      	pop	{r3, r4, r5, pc}
20023df2:	f7fe ff6d 	bl	20022cd0 <HAL_FLASH_GET_DIV>
20023df6:	4604      	mov	r4, r0
20023df8:	2800      	cmp	r0, #0
20023dfa:	d0f8      	beq.n	20023dee <HAL_QSPI_GET_CLK+0x6>
20023dfc:	4628      	mov	r0, r5
20023dfe:	f7ff ffcf 	bl	20023da0 <HAL_QSPI_GET_SRC_CLK>
20023e02:	fbb0 f0f4 	udiv	r0, r0, r4
20023e06:	e7f3      	b.n	20023df0 <HAL_QSPI_GET_CLK+0x8>

20023e08 <HAL_QSPI_READ_ID>:
20023e08:	b138      	cbz	r0, 20023e1a <HAL_QSPI_READ_ID+0x12>
20023e0a:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
20023e0e:	b113      	cbz	r3, 20023e16 <HAL_QSPI_READ_ID+0xe>
20023e10:	2100      	movs	r1, #0
20023e12:	f7ff bc3c 	b.w	2002368e <nand_read_id>
20023e16:	f7ff bad3 	b.w	200233c0 <HAL_FLASH_GET_NOR_ID>
20023e1a:	20ff      	movs	r0, #255	@ 0xff
20023e1c:	4770      	bx	lr

20023e1e <HAL_NOR_CFG_DTR>:
20023e1e:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20023e20:	4604      	mov	r4, r0
20023e22:	460a      	mov	r2, r1
20023e24:	b351      	cbz	r1, 20023e7c <HAL_NOR_CFG_DTR+0x5e>
20023e26:	68c5      	ldr	r5, [r0, #12]
20023e28:	f895 31ff 	ldrb.w	r3, [r5, #511]	@ 0x1ff
20023e2c:	2b00      	cmp	r3, #0
20023e2e:	d03b      	beq.n	20023ea8 <HAL_NOR_CFG_DTR+0x8a>
20023e30:	f890 3020 	ldrb.w	r3, [r0, #32]
20023e34:	b3c3      	cbz	r3, 20023ea8 <HAL_NOR_CFG_DTR+0x8a>
20023e36:	f995 6207 	ldrsb.w	r6, [r5, #519]	@ 0x207
20023e3a:	f995 2202 	ldrsb.w	r2, [r5, #514]	@ 0x202
20023e3e:	f995 3203 	ldrsb.w	r3, [r5, #515]	@ 0x203
20023e42:	f995 1201 	ldrsb.w	r1, [r5, #513]	@ 0x201
20023e46:	9603      	str	r6, [sp, #12]
20023e48:	f995 6206 	ldrsb.w	r6, [r5, #518]	@ 0x206
20023e4c:	9602      	str	r6, [sp, #8]
20023e4e:	f995 6205 	ldrsb.w	r6, [r5, #517]	@ 0x205
20023e52:	9601      	str	r6, [sp, #4]
20023e54:	f995 5204 	ldrsb.w	r5, [r5, #516]	@ 0x204
20023e58:	9500      	str	r5, [sp, #0]
20023e5a:	f7fe fe80 	bl	20022b5e <HAL_FLASH_CFG_AHB_RCMD>
20023e5e:	68e3      	ldr	r3, [r4, #12]
20023e60:	4620      	mov	r0, r4
20023e62:	f893 11ff 	ldrb.w	r1, [r3, #511]	@ 0x1ff
20023e66:	f7fe fe6f 	bl	20022b48 <HAL_FLASH_SET_AHB_RCMD>
20023e6a:	2101      	movs	r1, #1
20023e6c:	4620      	mov	r0, r4
20023e6e:	f894 2025 	ldrb.w	r2, [r4, #37]	@ 0x25
20023e72:	f7ff f885 	bl	20022f80 <HAL_MPI_CFG_DTR>
20023e76:	2000      	movs	r0, #0
20023e78:	b004      	add	sp, #16
20023e7a:	bd70      	pop	{r4, r5, r6, pc}
20023e7c:	f7ff f880 	bl	20022f80 <HAL_MPI_CFG_DTR>
20023e80:	6963      	ldr	r3, [r4, #20]
20023e82:	f894 1020 	ldrb.w	r1, [r4, #32]
20023e86:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023e8a:	d906      	bls.n	20023e9a <HAL_NOR_CFG_DTR+0x7c>
20023e8c:	b919      	cbnz	r1, 20023e96 <HAL_NOR_CFG_DTR+0x78>
20023e8e:	4620      	mov	r0, r4
20023e90:	f7ff f8e9 	bl	20023066 <HAL_FLASH_CONFIG_FULL_AHB_READ>
20023e94:	e7ef      	b.n	20023e76 <HAL_NOR_CFG_DTR+0x58>
20023e96:	2101      	movs	r1, #1
20023e98:	e7f9      	b.n	20023e8e <HAL_NOR_CFG_DTR+0x70>
20023e9a:	b919      	cbnz	r1, 20023ea4 <HAL_NOR_CFG_DTR+0x86>
20023e9c:	4620      	mov	r0, r4
20023e9e:	f7ff f8a7 	bl	20022ff0 <HAL_FLASH_CONFIG_AHB_READ>
20023ea2:	e7e8      	b.n	20023e76 <HAL_NOR_CFG_DTR+0x58>
20023ea4:	2101      	movs	r1, #1
20023ea6:	e7f9      	b.n	20023e9c <HAL_NOR_CFG_DTR+0x7e>
20023ea8:	2001      	movs	r0, #1
20023eaa:	e7e5      	b.n	20023e78 <HAL_NOR_CFG_DTR+0x5a>

20023eac <HAL_NOR_DTR_CAL>:
20023eac:	b510      	push	{r4, lr}
20023eae:	4604      	mov	r4, r0
20023eb0:	b1f0      	cbz	r0, 20023ef0 <HAL_NOR_DTR_CAL+0x44>
20023eb2:	6802      	ldr	r2, [r0, #0]
20023eb4:	2014      	movs	r0, #20
20023eb6:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20023eba:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
20023ebe:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20023ec2:	f7fe f800 	bl	20021ec6 <HAL_Delay_us>
20023ec6:	6823      	ldr	r3, [r4, #0]
20023ec8:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20023ecc:	05d2      	lsls	r2, r2, #23
20023ece:	d5fb      	bpl.n	20023ec8 <HAL_NOR_DTR_CAL+0x1c>
20023ed0:	f8d3 0094 	ldr.w	r0, [r3, #148]	@ 0x94
20023ed4:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20023ed8:	b2c0      	uxtb	r0, r0
20023eda:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20023ede:	f8c3 2094 	str.w	r2, [r3, #148]	@ 0x94
20023ee2:	f894 3025 	ldrb.w	r3, [r4, #37]	@ 0x25
20023ee6:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
20023eea:	4303      	orrs	r3, r0
20023eec:	f884 3025 	strb.w	r3, [r4, #37]	@ 0x25
20023ef0:	bd10      	pop	{r4, pc}
	...

20023ef4 <HAL_FLASH_Init>:
20023ef4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20023ef8:	460f      	mov	r7, r1
20023efa:	4616      	mov	r6, r2
20023efc:	4698      	mov	r8, r3
20023efe:	4604      	mov	r4, r0
20023f00:	b087      	sub	sp, #28
20023f02:	2800      	cmp	r0, #0
20023f04:	f000 80de 	beq.w	200240c4 <HAL_FLASH_Init+0x1d0>
20023f08:	2900      	cmp	r1, #0
20023f0a:	f000 80db 	beq.w	200240c4 <HAL_FLASH_Init+0x1d0>
20023f0e:	f7fe fdfd 	bl	20022b0c <HAL_QSPI_Init>
20023f12:	6820      	ldr	r0, [r4, #0]
20023f14:	f7ff fb33 	bl	2002357e <HAL_GET_FLASH_MID>
20023f18:	693b      	ldr	r3, [r7, #16]
20023f1a:	4605      	mov	r5, r0
20023f1c:	f884 3038 	strb.w	r3, [r4, #56]	@ 0x38
20023f20:	68ba      	ldr	r2, [r7, #8]
20023f22:	1e59      	subs	r1, r3, #1
20023f24:	63e2      	str	r2, [r4, #60]	@ 0x3c
20023f26:	68fa      	ldr	r2, [r7, #12]
20023f28:	424b      	negs	r3, r1
20023f2a:	ea4f 5202 	mov.w	r2, r2, lsl #20
20023f2e:	6422      	str	r2, [r4, #64]	@ 0x40
20023f30:	f04f 0202 	mov.w	r2, #2
20023f34:	f884 203a 	strb.w	r2, [r4, #58]	@ 0x3a
20023f38:	f04f 0200 	mov.w	r2, #0
20023f3c:	414b      	adcs	r3, r1
20023f3e:	f884 2024 	strb.w	r2, [r4, #36]	@ 0x24
20023f42:	f884 3023 	strb.w	r3, [r4, #35]	@ 0x23
20023f46:	60a6      	str	r6, [r4, #8]
20023f48:	2e00      	cmp	r6, #0
20023f4a:	d051      	beq.n	20023ff0 <HAL_FLASH_Init+0xfc>
20023f4c:	f1b8 0f00 	cmp.w	r8, #0
20023f50:	d04e      	beq.n	20023ff0 <HAL_FLASH_Init+0xfc>
20023f52:	f8d8 3000 	ldr.w	r3, [r8]
20023f56:	6033      	str	r3, [r6, #0]
20023f58:	f8d8 300c 	ldr.w	r3, [r8, #12]
20023f5c:	e9c6 2206 	strd	r2, r2, [r6, #24]
20023f60:	6073      	str	r3, [r6, #4]
20023f62:	2310      	movs	r3, #16
20023f64:	e9c6 3202 	strd	r3, r2, [r6, #8]
20023f68:	2380      	movs	r3, #128	@ 0x80
20023f6a:	e9c6 3204 	strd	r3, r2, [r6, #16]
20023f6e:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
20023f72:	e9c6 3208 	strd	r3, r2, [r6, #32]
20023f76:	b1c0      	cbz	r0, 20023faa <HAL_FLASH_Init+0xb6>
20023f78:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
20023f7c:	4298      	cmp	r0, r3
20023f7e:	d014      	beq.n	20023faa <HAL_FLASH_Init+0xb6>
20023f80:	2601      	movs	r6, #1
20023f82:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20023f86:	2b00      	cmp	r3, #0
20023f88:	d13d      	bne.n	20024006 <HAL_FLASH_Init+0x112>
20023f8a:	2e00      	cmp	r6, #0
20023f8c:	d15a      	bne.n	20024044 <HAL_FLASH_Init+0x150>
20023f8e:	4620      	mov	r0, r4
20023f90:	f7ff fad0 	bl	20023534 <HAL_FLASH_RELEASE_DPD>
20023f94:	4630      	mov	r0, r6
20023f96:	f7fd ff96 	bl	20021ec6 <HAL_Delay_us>
20023f9a:	2032      	movs	r0, #50	@ 0x32
20023f9c:	f7fd ff93 	bl	20021ec6 <HAL_Delay_us>
20023fa0:	4620      	mov	r0, r4
20023fa2:	f7ff ff31 	bl	20023e08 <HAL_QSPI_READ_ID>
20023fa6:	4605      	mov	r5, r0
20023fa8:	e04c      	b.n	20024044 <HAL_FLASH_Init+0x150>
20023faa:	2101      	movs	r1, #1
20023fac:	4620      	mov	r0, r4
20023fae:	f7fe fe84 	bl	20022cba <HAL_FLASH_SET_TXSLOT>
20023fb2:	4ba7      	ldr	r3, [pc, #668]	@ (20024250 <HAL_FLASH_Init+0x35c>)
20023fb4:	69a2      	ldr	r2, [r4, #24]
20023fb6:	4620      	mov	r0, r4
20023fb8:	429a      	cmp	r2, r3
20023fba:	f04f 0200 	mov.w	r2, #0
20023fbe:	bf8c      	ite	hi
20023fc0:	2101      	movhi	r1, #1
20023fc2:	4611      	movls	r1, r2
20023fc4:	f7ff faa7 	bl	20023516 <HAL_QSPI_SET_CLK_INV>
20023fc8:	4620      	mov	r0, r4
20023fca:	f89d 1038 	ldrb.w	r1, [sp, #56]	@ 0x38
20023fce:	f7fe fe7b 	bl	20022cc8 <HAL_FLASH_SET_CLK_rom>
20023fd2:	f894 3039 	ldrb.w	r3, [r4, #57]	@ 0x39
20023fd6:	b12b      	cbz	r3, 20023fe4 <HAL_FLASH_Init+0xf0>
20023fd8:	2b01      	cmp	r3, #1
20023fda:	d110      	bne.n	20023ffe <HAL_FLASH_Init+0x10a>
20023fdc:	2100      	movs	r1, #0
20023fde:	4620      	mov	r0, r4
20023fe0:	f7fe ff87 	bl	20022ef2 <HAL_FLASH_SET_DUAL_MODE>
20023fe4:	2101      	movs	r1, #1
20023fe6:	4620      	mov	r0, r4
20023fe8:	f7fe ff10 	bl	20022e0c <HAL_FLASH_ENABLE_QSPI>
20023fec:	2600      	movs	r6, #0
20023fee:	e7c8      	b.n	20023f82 <HAL_FLASH_Init+0x8e>
20023ff0:	2d00      	cmp	r5, #0
20023ff2:	d0de      	beq.n	20023fb2 <HAL_FLASH_Init+0xbe>
20023ff4:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
20023ff8:	429d      	cmp	r5, r3
20023ffa:	d1c1      	bne.n	20023f80 <HAL_FLASH_Init+0x8c>
20023ffc:	e7d9      	b.n	20023fb2 <HAL_FLASH_Init+0xbe>
20023ffe:	2b02      	cmp	r3, #2
20024000:	d1f0      	bne.n	20023fe4 <HAL_FLASH_Init+0xf0>
20024002:	2101      	movs	r1, #1
20024004:	e7eb      	b.n	20023fde <HAL_FLASH_Init+0xea>
20024006:	6822      	ldr	r2, [r4, #0]
20024008:	2700      	movs	r7, #0
2002400a:	6893      	ldr	r3, [r2, #8]
2002400c:	4639      	mov	r1, r7
2002400e:	f043 7370 	orr.w	r3, r3, #62914560	@ 0x3c00000
20024012:	6093      	str	r3, [r2, #8]
20024014:	2301      	movs	r3, #1
20024016:	463a      	mov	r2, r7
20024018:	4620      	mov	r0, r4
2002401a:	e9cd 7303 	strd	r7, r3, [sp, #12]
2002401e:	e9cd 7701 	strd	r7, r7, [sp, #4]
20024022:	463b      	mov	r3, r7
20024024:	9700      	str	r7, [sp, #0]
20024026:	f7fe fe58 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
2002402a:	463a      	mov	r2, r7
2002402c:	21ff      	movs	r1, #255	@ 0xff
2002402e:	4620      	mov	r0, r4
20024030:	f7fe fe07 	bl	20022c42 <HAL_FLASH_SET_CMD>
20024034:	4638      	mov	r0, r7
20024036:	f7fd ff46 	bl	20021ec6 <HAL_Delay_us>
2002403a:	20c8      	movs	r0, #200	@ 0xc8
2002403c:	f7fd ff43 	bl	20021ec6 <HAL_Delay_us>
20024040:	2e00      	cmp	r6, #0
20024042:	d0ad      	beq.n	20023fa0 <HAL_FLASH_Init+0xac>
20024044:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024048:	b2ef      	uxtb	r7, r5
2002404a:	f3c5 2807 	ubfx	r8, r5, #8, #8
2002404e:	6365      	str	r5, [r4, #52]	@ 0x34
20024050:	f3c5 4507 	ubfx	r5, r5, #16, #8
20024054:	4642      	mov	r2, r8
20024056:	4629      	mov	r1, r5
20024058:	4638      	mov	r0, r7
2002405a:	b3ab      	cbz	r3, 200240c8 <HAL_FLASH_Init+0x1d4>
2002405c:	f001 f968 	bl	20025330 <spi_nand_get_cmd_by_id>
20024060:	60e0      	str	r0, [r4, #12]
20024062:	bba0      	cbnz	r0, 200240ce <HAL_FLASH_Init+0x1da>
20024064:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024068:	b32b      	cbz	r3, 200240b6 <HAL_FLASH_Init+0x1c2>
2002406a:	2108      	movs	r1, #8
2002406c:	4620      	mov	r0, r4
2002406e:	f7ff fb0e 	bl	2002368e <nand_read_id>
20024072:	f3c0 2807 	ubfx	r8, r0, #8, #8
20024076:	f3c0 4507 	ubfx	r5, r0, #16, #8
2002407a:	b2c7      	uxtb	r7, r0
2002407c:	6360      	str	r0, [r4, #52]	@ 0x34
2002407e:	4642      	mov	r2, r8
20024080:	4629      	mov	r1, r5
20024082:	4638      	mov	r0, r7
20024084:	f001 f954 	bl	20025330 <spi_nand_get_cmd_by_id>
20024088:	60e0      	str	r0, [r4, #12]
2002408a:	bb00      	cbnz	r0, 200240ce <HAL_FLASH_Init+0x1da>
2002408c:	210f      	movs	r1, #15
2002408e:	4620      	mov	r0, r4
20024090:	f7ff fafd 	bl	2002368e <nand_read_id>
20024094:	f3c0 2807 	ubfx	r8, r0, #8, #8
20024098:	f3c0 4507 	ubfx	r5, r0, #16, #8
2002409c:	b2c7      	uxtb	r7, r0
2002409e:	6360      	str	r0, [r4, #52]	@ 0x34
200240a0:	4642      	mov	r2, r8
200240a2:	4629      	mov	r1, r5
200240a4:	4638      	mov	r0, r7
200240a6:	f001 f943 	bl	20025330 <spi_nand_get_cmd_by_id>
200240aa:	60e0      	str	r0, [r4, #12]
200240ac:	b978      	cbnz	r0, 200240ce <HAL_FLASH_Init+0x1da>
200240ae:	f001 f955 	bl	2002535c <spi_nand_get_default_ctable>
200240b2:	60e0      	str	r0, [r4, #12]
200240b4:	b958      	cbnz	r0, 200240ce <HAL_FLASH_Init+0x1da>
200240b6:	2100      	movs	r1, #0
200240b8:	4620      	mov	r0, r4
200240ba:	f7fe fea7 	bl	20022e0c <HAL_FLASH_ENABLE_QSPI>
200240be:	2300      	movs	r3, #0
200240c0:	e9c4 330f 	strd	r3, r3, [r4, #60]	@ 0x3c
200240c4:	2001      	movs	r0, #1
200240c6:	e04c      	b.n	20024162 <HAL_FLASH_Init+0x26e>
200240c8:	f001 f8ea 	bl	200252a0 <spi_flash_get_cmd_by_id>
200240cc:	e7c8      	b.n	20024060 <HAL_FLASH_Init+0x16c>
200240ce:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200240d2:	4642      	mov	r2, r8
200240d4:	4629      	mov	r1, r5
200240d6:	4638      	mov	r0, r7
200240d8:	2b00      	cmp	r3, #0
200240da:	d045      	beq.n	20024168 <HAL_FLASH_Init+0x274>
200240dc:	f001 f94c 	bl	20025378 <spi_nand_get_size_by_id>
200240e0:	4642      	mov	r2, r8
200240e2:	4629      	mov	r1, r5
200240e4:	4681      	mov	r9, r0
200240e6:	4638      	mov	r0, r7
200240e8:	f001 f950 	bl	2002538c <spi_nand_get_plane_select_flag>
200240ec:	4642      	mov	r2, r8
200240ee:	4629      	mov	r1, r5
200240f0:	f884 0027 	strb.w	r0, [r4, #39]	@ 0x27
200240f4:	4638      	mov	r0, r7
200240f6:	f001 f952 	bl	2002539e <spi_nand_get_big_page_flag>
200240fa:	4642      	mov	r2, r8
200240fc:	f884 0024 	strb.w	r0, [r4, #36]	@ 0x24
20024100:	4629      	mov	r1, r5
20024102:	4638      	mov	r0, r7
20024104:	f001 f954 	bl	200253b0 <spi_nand_get_ecc_mode>
20024108:	f894 3024 	ldrb.w	r3, [r4, #36]	@ 0x24
2002410c:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
20024110:	f884 3024 	strb.w	r3, [r4, #36]	@ 0x24
20024114:	f1b9 0f00 	cmp.w	r9, #0
20024118:	d003      	beq.n	20024122 <HAL_FLASH_Init+0x22e>
2002411a:	f8c4 9040 	str.w	r9, [r4, #64]	@ 0x40
2002411e:	f8c4 9014 	str.w	r9, [r4, #20]
20024122:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024126:	2b00      	cmp	r3, #0
20024128:	d173      	bne.n	20024212 <HAL_FLASH_Init+0x31e>
2002412a:	2e00      	cmp	r6, #0
2002412c:	d16e      	bne.n	2002420c <HAL_FLASH_Init+0x318>
2002412e:	4620      	mov	r0, r4
20024130:	f7ff f961 	bl	200233f6 <HAL_FLASH_CLR_PROTECT>
20024134:	6963      	ldr	r3, [r4, #20]
20024136:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
2002413a:	d938      	bls.n	200241ae <HAL_FLASH_Init+0x2ba>
2002413c:	4632      	mov	r2, r6
2002413e:	2121      	movs	r1, #33	@ 0x21
20024140:	4620      	mov	r0, r4
20024142:	f7fe fff1 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20024146:	f894 3020 	ldrb.w	r3, [r4, #32]
2002414a:	b98b      	cbnz	r3, 20024170 <HAL_FLASH_Init+0x27c>
2002414c:	4631      	mov	r1, r6
2002414e:	4620      	mov	r0, r4
20024150:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
20024154:	f7ff f929 	bl	200233aa <HAL_FLASH_FADDR_SET_QSPI>
20024158:	2107      	movs	r1, #7
2002415a:	4620      	mov	r0, r4
2002415c:	f7fe feb1 	bl	20022ec2 <HAL_FLASH_SET_ROW_BOUNDARY>
20024160:	2000      	movs	r0, #0
20024162:	b007      	add	sp, #28
20024164:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20024168:	f001 f8ae 	bl	200252c8 <spi_flash_get_size_by_id>
2002416c:	4681      	mov	r9, r0
2002416e:	e7d1      	b.n	20024114 <HAL_FLASH_Init+0x220>
20024170:	2101      	movs	r1, #1
20024172:	4620      	mov	r0, r4
20024174:	f7ff f919 	bl	200233aa <HAL_FLASH_FADDR_SET_QSPI>
20024178:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
2002417c:	f1b9 0f01 	cmp.w	r9, #1
20024180:	d1ea      	bne.n	20024158 <HAL_FLASH_Init+0x264>
20024182:	4642      	mov	r2, r8
20024184:	4629      	mov	r1, r5
20024186:	4638      	mov	r0, r7
20024188:	f001 f8a8 	bl	200252dc <spi_flash_is_support_dtr>
2002418c:	b138      	cbz	r0, 2002419e <HAL_FLASH_Init+0x2aa>
2002418e:	4620      	mov	r0, r4
20024190:	f7ff fe8c 	bl	20023eac <HAL_NOR_DTR_CAL>
20024194:	4649      	mov	r1, r9
20024196:	4620      	mov	r0, r4
20024198:	f7ff fe41 	bl	20023e1e <HAL_NOR_CFG_DTR>
2002419c:	e7dc      	b.n	20024158 <HAL_FLASH_Init+0x264>
2002419e:	4632      	mov	r2, r6
200241a0:	4631      	mov	r1, r6
200241a2:	4620      	mov	r0, r4
200241a4:	f7fe feec 	bl	20022f80 <HAL_MPI_CFG_DTR>
200241a8:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
200241ac:	e7d4      	b.n	20024158 <HAL_FLASH_Init+0x264>
200241ae:	f894 3020 	ldrb.w	r3, [r4, #32]
200241b2:	b933      	cbnz	r3, 200241c2 <HAL_FLASH_Init+0x2ce>
200241b4:	4631      	mov	r1, r6
200241b6:	4620      	mov	r0, r4
200241b8:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
200241bc:	f7ff f8ea 	bl	20023394 <HAL_FLASH_SET_QUAL_SPI>
200241c0:	e7ce      	b.n	20024160 <HAL_FLASH_Init+0x26c>
200241c2:	2101      	movs	r1, #1
200241c4:	4620      	mov	r0, r4
200241c6:	f7ff f8e5 	bl	20023394 <HAL_FLASH_SET_QUAL_SPI>
200241ca:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
200241ce:	f1b9 0f01 	cmp.w	r9, #1
200241d2:	d115      	bne.n	20024200 <HAL_FLASH_Init+0x30c>
200241d4:	4642      	mov	r2, r8
200241d6:	4629      	mov	r1, r5
200241d8:	4638      	mov	r0, r7
200241da:	f001 f87f 	bl	200252dc <spi_flash_is_support_dtr>
200241de:	b138      	cbz	r0, 200241f0 <HAL_FLASH_Init+0x2fc>
200241e0:	4620      	mov	r0, r4
200241e2:	f7ff fe63 	bl	20023eac <HAL_NOR_DTR_CAL>
200241e6:	4649      	mov	r1, r9
200241e8:	4620      	mov	r0, r4
200241ea:	f7ff fe18 	bl	20023e1e <HAL_NOR_CFG_DTR>
200241ee:	e7b7      	b.n	20024160 <HAL_FLASH_Init+0x26c>
200241f0:	4632      	mov	r2, r6
200241f2:	4631      	mov	r1, r6
200241f4:	4620      	mov	r0, r4
200241f6:	f7fe fec3 	bl	20022f80 <HAL_MPI_CFG_DTR>
200241fa:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
200241fe:	e7af      	b.n	20024160 <HAL_FLASH_Init+0x26c>
20024200:	4632      	mov	r2, r6
20024202:	4631      	mov	r1, r6
20024204:	4620      	mov	r0, r4
20024206:	f7fe febb 	bl	20022f80 <HAL_MPI_CFG_DTR>
2002420a:	e7a9      	b.n	20024160 <HAL_FLASH_Init+0x26c>
2002420c:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
20024210:	e7a6      	b.n	20024160 <HAL_FLASH_Init+0x26c>
20024212:	2101      	movs	r1, #1
20024214:	4620      	mov	r0, r4
20024216:	f7fe fcef 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
2002421a:	68e3      	ldr	r3, [r4, #12]
2002421c:	2102      	movs	r1, #2
2002421e:	791a      	ldrb	r2, [r3, #4]
20024220:	4620      	mov	r0, r4
20024222:	f7fe ff81 	bl	20023128 <HAL_FLASH_ISSUE_CMD>
20024226:	4620      	mov	r0, r4
20024228:	f7fe fd43 	bl	20022cb2 <HAL_FLASH_READ32>
2002422c:	4605      	mov	r5, r0
2002422e:	200a      	movs	r0, #10
20024230:	f7fd fe49 	bl	20021ec6 <HAL_Delay_us>
20024234:	07eb      	lsls	r3, r5, #31
20024236:	d4ec      	bmi.n	20024212 <HAL_FLASH_Init+0x31e>
20024238:	4620      	mov	r0, r4
2002423a:	f7ff fb5c 	bl	200238f6 <nand_clear_status>
2002423e:	f894 3020 	ldrb.w	r3, [r4, #32]
20024242:	2b02      	cmp	r3, #2
20024244:	d18c      	bne.n	20024160 <HAL_FLASH_Init+0x26c>
20024246:	2101      	movs	r1, #1
20024248:	4620      	mov	r0, r4
2002424a:	f7ff fb23 	bl	20023894 <HAL_NAND_EN_QUAL>
2002424e:	e787      	b.n	20024160 <HAL_FLASH_Init+0x26c>
20024250:	05f5e100 	.word	0x05f5e100

20024254 <HAL_Delay_us_psram>:
20024254:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20024256:	9001      	str	r0, [sp, #4]
20024258:	9b01      	ldr	r3, [sp, #4]
2002425a:	4c11      	ldr	r4, [pc, #68]	@ (200242a0 <HAL_Delay_us_psram+0x4c>)
2002425c:	b10b      	cbz	r3, 20024262 <HAL_Delay_us_psram+0xe>
2002425e:	6820      	ldr	r0, [r4, #0]
20024260:	b940      	cbnz	r0, 20024274 <HAL_Delay_us_psram+0x20>
20024262:	2000      	movs	r0, #0
20024264:	f000 fe6c 	bl	20024f40 <HAL_RCC_GetHCLKFreq>
20024268:	4b0e      	ldr	r3, [pc, #56]	@ (200242a4 <HAL_Delay_us_psram+0x50>)
2002426a:	fbb0 f0f3 	udiv	r0, r0, r3
2002426e:	9b01      	ldr	r3, [sp, #4]
20024270:	6020      	str	r0, [r4, #0]
20024272:	b19b      	cbz	r3, 2002429c <HAL_Delay_us_psram+0x48>
20024274:	2830      	cmp	r0, #48	@ 0x30
20024276:	bf82      	ittt	hi
20024278:	9b01      	ldrhi	r3, [sp, #4]
2002427a:	f103 33ff 	addhi.w	r3, r3, #4294967295
2002427e:	9301      	strhi	r3, [sp, #4]
20024280:	9b01      	ldr	r3, [sp, #4]
20024282:	b15b      	cbz	r3, 2002429c <HAL_Delay_us_psram+0x48>
20024284:	2205      	movs	r2, #5
20024286:	9b01      	ldr	r3, [sp, #4]
20024288:	3b01      	subs	r3, #1
2002428a:	4343      	muls	r3, r0
2002428c:	fbb3 f3f2 	udiv	r3, r3, r2
20024290:	9303      	str	r3, [sp, #12]
20024292:	9b03      	ldr	r3, [sp, #12]
20024294:	1e5a      	subs	r2, r3, #1
20024296:	9203      	str	r2, [sp, #12]
20024298:	2b00      	cmp	r3, #0
2002429a:	d1fa      	bne.n	20024292 <HAL_Delay_us_psram+0x3e>
2002429c:	b004      	add	sp, #16
2002429e:	bd10      	pop	{r4, pc}
200242a0:	20049f78 	.word	0x20049f78
200242a4:	000f4240 	.word	0x000f4240

200242a8 <HAL_MPI_OPSRAM_CAL_DELAY>:
200242a8:	b570      	push	{r4, r5, r6, lr}
200242aa:	460e      	mov	r6, r1
200242ac:	4615      	mov	r5, r2
200242ae:	4604      	mov	r4, r0
200242b0:	b348      	cbz	r0, 20024306 <HAL_MPI_OPSRAM_CAL_DELAY+0x5e>
200242b2:	2202      	movs	r2, #2
200242b4:	6803      	ldr	r3, [r0, #0]
200242b6:	2000      	movs	r0, #0
200242b8:	60da      	str	r2, [r3, #12]
200242ba:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
200242bc:	f022 7200 	bic.w	r2, r2, #33554432	@ 0x2000000
200242c0:	659a      	str	r2, [r3, #88]	@ 0x58
200242c2:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
200242c6:	f042 4200 	orr.w	r2, r2, #2147483648	@ 0x80000000
200242ca:	f8c3 2094 	str.w	r2, [r3, #148]	@ 0x94
200242ce:	f7ff ffc1 	bl	20024254 <HAL_Delay_us_psram>
200242d2:	2014      	movs	r0, #20
200242d4:	f7ff ffbe 	bl	20024254 <HAL_Delay_us_psram>
200242d8:	6820      	ldr	r0, [r4, #0]
200242da:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
200242de:	05db      	lsls	r3, r3, #23
200242e0:	d5fb      	bpl.n	200242da <HAL_MPI_OPSRAM_CAL_DELAY+0x32>
200242e2:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
200242e6:	f8d0 2094 	ldr.w	r2, [r0, #148]	@ 0x94
200242ea:	b2db      	uxtb	r3, r3
200242ec:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
200242f0:	f8c0 2094 	str.w	r2, [r0, #148]	@ 0x94
200242f4:	1e5a      	subs	r2, r3, #1
200242f6:	7032      	strb	r2, [r6, #0]
200242f8:	2201      	movs	r2, #1
200242fa:	2000      	movs	r0, #0
200242fc:	3b04      	subs	r3, #4
200242fe:	702b      	strb	r3, [r5, #0]
20024300:	6823      	ldr	r3, [r4, #0]
20024302:	60da      	str	r2, [r3, #12]
20024304:	bd70      	pop	{r4, r5, r6, pc}
20024306:	2001      	movs	r0, #1
20024308:	e7fc      	b.n	20024304 <HAL_MPI_OPSRAM_CAL_DELAY+0x5c>
	...

2002430c <HAL_SPI_PSRAM_Init>:
2002430c:	b537      	push	{r0, r1, r2, r4, r5, lr}
2002430e:	4614      	mov	r4, r2
20024310:	4605      	mov	r5, r0
20024312:	2800      	cmp	r0, #0
20024314:	d043      	beq.n	2002439e <HAL_SPI_PSRAM_Init+0x92>
20024316:	2900      	cmp	r1, #0
20024318:	d041      	beq.n	2002439e <HAL_SPI_PSRAM_Init+0x92>
2002431a:	f7fe fbf7 	bl	20022b0c <HAL_QSPI_Init>
2002431e:	4628      	mov	r0, r5
20024320:	b2e1      	uxtb	r1, r4
20024322:	f7fe fcd1 	bl	20022cc8 <HAL_FLASH_SET_CLK_rom>
20024326:	4628      	mov	r0, r5
20024328:	f7ff fd5e 	bl	20023de8 <HAL_QSPI_GET_CLK>
2002432c:	4b1d      	ldr	r3, [pc, #116]	@ (200243a4 <HAL_SPI_PSRAM_Init+0x98>)
2002432e:	4298      	cmp	r0, r3
20024330:	d930      	bls.n	20024394 <HAL_SPI_PSRAM_Init+0x88>
20024332:	4b1d      	ldr	r3, [pc, #116]	@ (200243a8 <HAL_SPI_PSRAM_Init+0x9c>)
20024334:	4298      	cmp	r0, r3
20024336:	d92f      	bls.n	20024398 <HAL_SPI_PSRAM_Init+0x8c>
20024338:	4b1c      	ldr	r3, [pc, #112]	@ (200243ac <HAL_SPI_PSRAM_Init+0xa0>)
2002433a:	4298      	cmp	r0, r3
2002433c:	d922      	bls.n	20024384 <HAL_SPI_PSRAM_Init+0x78>
2002433e:	f240 34b6 	movw	r4, #950	@ 0x3b6
20024342:	f240 4374 	movw	r3, #1140	@ 0x474
20024346:	4a1a      	ldr	r2, [pc, #104]	@ (200243b0 <HAL_SPI_PSRAM_Init+0xa4>)
20024348:	4290      	cmp	r0, r2
2002434a:	bf88      	it	hi
2002434c:	461c      	movhi	r4, r3
2002434e:	2200      	movs	r2, #0
20024350:	2101      	movs	r1, #1
20024352:	4628      	mov	r0, r5
20024354:	f7ff f8df 	bl	20023516 <HAL_QSPI_SET_CLK_INV>
20024358:	2100      	movs	r1, #0
2002435a:	4622      	mov	r2, r4
2002435c:	2302      	movs	r3, #2
2002435e:	4628      	mov	r0, r5
20024360:	9100      	str	r1, [sp, #0]
20024362:	f7fe fd99 	bl	20022e98 <HAL_FLASH_SET_CS_TIME>
20024366:	4604      	mov	r4, r0
20024368:	b948      	cbnz	r0, 2002437e <HAL_SPI_PSRAM_Init+0x72>
2002436a:	2106      	movs	r1, #6
2002436c:	4628      	mov	r0, r5
2002436e:	f7fe fda8 	bl	20022ec2 <HAL_FLASH_SET_ROW_BOUNDARY>
20024372:	4604      	mov	r4, r0
20024374:	b918      	cbnz	r0, 2002437e <HAL_SPI_PSRAM_Init+0x72>
20024376:	2101      	movs	r1, #1
20024378:	4628      	mov	r0, r5
2002437a:	f7fe fd47 	bl	20022e0c <HAL_FLASH_ENABLE_QSPI>
2002437e:	4620      	mov	r0, r4
20024380:	b003      	add	sp, #12
20024382:	bd30      	pop	{r4, r5, pc}
20024384:	4b0b      	ldr	r3, [pc, #44]	@ (200243b4 <HAL_SPI_PSRAM_Init+0xa8>)
20024386:	f44f 743e 	mov.w	r4, #760	@ 0x2f8
2002438a:	4298      	cmp	r0, r3
2002438c:	d8df      	bhi.n	2002434e <HAL_SPI_PSRAM_Init+0x42>
2002438e:	2200      	movs	r2, #0
20024390:	4611      	mov	r1, r2
20024392:	e7de      	b.n	20024352 <HAL_SPI_PSRAM_Init+0x46>
20024394:	24b4      	movs	r4, #180	@ 0xb4
20024396:	e7fa      	b.n	2002438e <HAL_SPI_PSRAM_Init+0x82>
20024398:	f44f 74be 	mov.w	r4, #380	@ 0x17c
2002439c:	e7f7      	b.n	2002438e <HAL_SPI_PSRAM_Init+0x82>
2002439e:	2401      	movs	r4, #1
200243a0:	e7ed      	b.n	2002437e <HAL_SPI_PSRAM_Init+0x72>
200243a2:	bf00      	nop
200243a4:	016e3600 	.word	0x016e3600
200243a8:	02dc6c00 	.word	0x02dc6c00
200243ac:	05b8d800 	.word	0x05b8d800
200243b0:	07270e00 	.word	0x07270e00
200243b4:	03938700 	.word	0x03938700

200243b8 <HAL_MPI_MR_WRITE>:
200243b8:	b5f0      	push	{r4, r5, r6, r7, lr}
200243ba:	460e      	mov	r6, r1
200243bc:	4617      	mov	r7, r2
200243be:	4605      	mov	r5, r0
200243c0:	b087      	sub	sp, #28
200243c2:	b1d8      	cbz	r0, 200243fc <HAL_MPI_MR_WRITE+0x44>
200243c4:	2207      	movs	r2, #7
200243c6:	2400      	movs	r4, #0
200243c8:	2303      	movs	r3, #3
200243ca:	e9cd 2203 	strd	r2, r2, [sp, #12]
200243ce:	2101      	movs	r1, #1
200243d0:	e9cd 4301 	strd	r4, r3, [sp, #4]
200243d4:	9400      	str	r4, [sp, #0]
200243d6:	4623      	mov	r3, r4
200243d8:	f7fe fc7f 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
200243dc:	2102      	movs	r1, #2
200243de:	4628      	mov	r0, r5
200243e0:	f7fe fc0a 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
200243e4:	4639      	mov	r1, r7
200243e6:	4628      	mov	r0, r5
200243e8:	f7fe fbff 	bl	20022bea <HAL_FLASH_WRITE_WORD>
200243ec:	4632      	mov	r2, r6
200243ee:	21c0      	movs	r1, #192	@ 0xc0
200243f0:	4628      	mov	r0, r5
200243f2:	f7fe fc26 	bl	20022c42 <HAL_FLASH_SET_CMD>
200243f6:	4620      	mov	r0, r4
200243f8:	b007      	add	sp, #28
200243fa:	bdf0      	pop	{r4, r5, r6, r7, pc}
200243fc:	2001      	movs	r0, #1
200243fe:	e7fb      	b.n	200243f8 <HAL_MPI_MR_WRITE+0x40>

20024400 <HAL_MPI_SET_FIXLAT>:
20024400:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
20024404:	460c      	mov	r4, r1
20024406:	4616      	mov	r6, r2
20024408:	461f      	mov	r7, r3
2002440a:	4605      	mov	r5, r0
2002440c:	2800      	cmp	r0, #0
2002440e:	d040      	beq.n	20024492 <HAL_MPI_SET_FIXLAT+0x92>
20024410:	466b      	mov	r3, sp
20024412:	4a21      	ldr	r2, [pc, #132]	@ (20024498 <HAL_MPI_SET_FIXLAT+0x98>)
20024414:	6810      	ldr	r0, [r2, #0]
20024416:	6851      	ldr	r1, [r2, #4]
20024418:	c303      	stmia	r3!, {r0, r1}
2002441a:	6890      	ldr	r0, [r2, #8]
2002441c:	68d1      	ldr	r1, [r2, #12]
2002441e:	c303      	stmia	r3!, {r0, r1}
20024420:	4628      	mov	r0, r5
20024422:	b2e1      	uxtb	r1, r4
20024424:	f7fe fd73 	bl	20022f0e <HAL_MPI_EN_FIXLAT>
20024428:	f107 0310 	add.w	r3, r7, #16
2002442c:	446b      	add	r3, sp
2002442e:	f813 8c08 	ldrb.w	r8, [r3, #-8]
20024432:	ea4f 1848 	mov.w	r8, r8, lsl #5
20024436:	fa5f f888 	uxtb.w	r8, r8
2002443a:	b30c      	cbz	r4, 20024480 <HAL_MPI_SET_FIXLAT+0x80>
2002443c:	ab04      	add	r3, sp, #16
2002443e:	eb03 0356 	add.w	r3, r3, r6, lsr #1
20024442:	f813 4c10 	ldrb.w	r4, [r3, #-16]
20024446:	00a4      	lsls	r4, r4, #2
20024448:	f044 0421 	orr.w	r4, r4, #33	@ 0x21
2002444c:	b264      	sxtb	r4, r4
2002444e:	f004 02fd 	and.w	r2, r4, #253	@ 0xfd
20024452:	2100      	movs	r1, #0
20024454:	4628      	mov	r0, r5
20024456:	f7ff ffaf 	bl	200243b8 <HAL_MPI_MR_WRITE>
2002445a:	1e71      	subs	r1, r6, #1
2002445c:	4628      	mov	r0, r5
2002445e:	b249      	sxtb	r1, r1
20024460:	f7fe fdb4 	bl	20022fcc <HAL_MPI_MODIFY_RCMD_DELAY>
20024464:	4642      	mov	r2, r8
20024466:	2104      	movs	r1, #4
20024468:	4628      	mov	r0, r5
2002446a:	f7ff ffa5 	bl	200243b8 <HAL_MPI_MR_WRITE>
2002446e:	1e79      	subs	r1, r7, #1
20024470:	4628      	mov	r0, r5
20024472:	b249      	sxtb	r1, r1
20024474:	f7fe fdb3 	bl	20022fde <HAL_MPI_MODIFY_WCMD_DELAY>
20024478:	2000      	movs	r0, #0
2002447a:	b004      	add	sp, #16
2002447c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20024480:	f106 0310 	add.w	r3, r6, #16
20024484:	446b      	add	r3, sp
20024486:	f813 4c10 	ldrb.w	r4, [r3, #-16]
2002448a:	00a4      	lsls	r4, r4, #2
2002448c:	f044 0401 	orr.w	r4, r4, #1
20024490:	e7dc      	b.n	2002444c <HAL_MPI_SET_FIXLAT+0x4c>
20024492:	2001      	movs	r0, #1
20024494:	e7f1      	b.n	2002447a <HAL_MPI_SET_FIXLAT+0x7a>
20024496:	bf00      	nop
20024498:	2002b7dc 	.word	0x2002b7dc

2002449c <HAL_LEGACY_MR_WRITE>:
2002449c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002449e:	460e      	mov	r6, r1
200244a0:	4617      	mov	r7, r2
200244a2:	4605      	mov	r5, r0
200244a4:	b087      	sub	sp, #28
200244a6:	b1d8      	cbz	r0, 200244e0 <HAL_LEGACY_MR_WRITE+0x44>
200244a8:	2207      	movs	r2, #7
200244aa:	2400      	movs	r4, #0
200244ac:	2302      	movs	r3, #2
200244ae:	e9cd 2203 	strd	r2, r2, [sp, #12]
200244b2:	2101      	movs	r1, #1
200244b4:	e9cd 4301 	strd	r4, r3, [sp, #4]
200244b8:	9400      	str	r4, [sp, #0]
200244ba:	4623      	mov	r3, r4
200244bc:	f7fe fc0d 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
200244c0:	2104      	movs	r1, #4
200244c2:	4628      	mov	r0, r5
200244c4:	f7fe fb98 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
200244c8:	4639      	mov	r1, r7
200244ca:	4628      	mov	r0, r5
200244cc:	f7fe fb8d 	bl	20022bea <HAL_FLASH_WRITE_WORD>
200244d0:	4632      	mov	r2, r6
200244d2:	21c0      	movs	r1, #192	@ 0xc0
200244d4:	4628      	mov	r0, r5
200244d6:	f7fe fbb4 	bl	20022c42 <HAL_FLASH_SET_CMD>
200244da:	4620      	mov	r0, r4
200244dc:	b007      	add	sp, #28
200244de:	bdf0      	pop	{r4, r5, r6, r7, pc}
200244e0:	2001      	movs	r0, #1
200244e2:	e7fb      	b.n	200244dc <HAL_LEGACY_MR_WRITE+0x40>

200244e4 <HAL_LEGACY_CFG_READ>:
200244e4:	b530      	push	{r4, r5, lr}
200244e6:	4605      	mov	r5, r0
200244e8:	b085      	sub	sp, #20
200244ea:	b1a0      	cbz	r0, 20024516 <HAL_LEGACY_CFG_READ+0x32>
200244ec:	2400      	movs	r4, #0
200244ee:	2107      	movs	r1, #7
200244f0:	2302      	movs	r3, #2
200244f2:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
200244f6:	e9cd 1102 	strd	r1, r1, [sp, #8]
200244fa:	0052      	lsls	r2, r2, #1
200244fc:	e9cd 4300 	strd	r4, r3, [sp]
20024500:	b252      	sxtb	r2, r2
20024502:	4623      	mov	r3, r4
20024504:	f7fe fb2b 	bl	20022b5e <HAL_FLASH_CFG_AHB_RCMD>
20024508:	4621      	mov	r1, r4
2002450a:	4628      	mov	r0, r5
2002450c:	f7fe fb1c 	bl	20022b48 <HAL_FLASH_SET_AHB_RCMD>
20024510:	4620      	mov	r0, r4
20024512:	b005      	add	sp, #20
20024514:	bd30      	pop	{r4, r5, pc}
20024516:	2001      	movs	r0, #1
20024518:	e7fb      	b.n	20024512 <HAL_LEGACY_CFG_READ+0x2e>

2002451a <HAL_LEGACY_CFG_WRITE>:
2002451a:	b530      	push	{r4, r5, lr}
2002451c:	4605      	mov	r5, r0
2002451e:	b085      	sub	sp, #20
20024520:	b190      	cbz	r0, 20024548 <HAL_LEGACY_CFG_WRITE+0x2e>
20024522:	2107      	movs	r1, #7
20024524:	2400      	movs	r4, #0
20024526:	2302      	movs	r3, #2
20024528:	e9cd 1102 	strd	r1, r1, [sp, #8]
2002452c:	e9cd 4300 	strd	r4, r3, [sp]
20024530:	4623      	mov	r3, r4
20024532:	f990 2026 	ldrsb.w	r2, [r0, #38]	@ 0x26
20024536:	f7fe fb3b 	bl	20022bb0 <HAL_FLASH_CFG_AHB_WCMD>
2002453a:	2180      	movs	r1, #128	@ 0x80
2002453c:	4628      	mov	r0, r5
2002453e:	f7fe fb2b 	bl	20022b98 <HAL_FLASH_SET_AHB_WCMD>
20024542:	4620      	mov	r0, r4
20024544:	b005      	add	sp, #20
20024546:	bd30      	pop	{r4, r5, pc}
20024548:	2001      	movs	r0, #1
2002454a:	e7fb      	b.n	20024544 <HAL_LEGACY_CFG_WRITE+0x2a>

2002454c <HAL_PSRAM_RESET>:
2002454c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002454e:	4604      	mov	r4, r0
20024550:	b087      	sub	sp, #28
20024552:	2800      	cmp	r0, #0
20024554:	d03b      	beq.n	200245ce <HAL_PSRAM_RESET+0x82>
20024556:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
2002455a:	2b05      	cmp	r3, #5
2002455c:	d034      	beq.n	200245c8 <HAL_PSRAM_RESET+0x7c>
2002455e:	3b03      	subs	r3, #3
20024560:	2b01      	cmp	r3, #1
20024562:	d82e      	bhi.n	200245c2 <HAL_PSRAM_RESET+0x76>
20024564:	2601      	movs	r6, #1
20024566:	2703      	movs	r7, #3
20024568:	2300      	movs	r3, #0
2002456a:	2507      	movs	r5, #7
2002456c:	b276      	sxtb	r6, r6
2002456e:	b27f      	sxtb	r7, r7
20024570:	461a      	mov	r2, r3
20024572:	2101      	movs	r1, #1
20024574:	4620      	mov	r0, r4
20024576:	e9cd 5503 	strd	r5, r5, [sp, #12]
2002457a:	e9cd 5701 	strd	r5, r7, [sp, #4]
2002457e:	9600      	str	r6, [sp, #0]
20024580:	f7fe fbab 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
20024584:	2200      	movs	r2, #0
20024586:	21ff      	movs	r1, #255	@ 0xff
20024588:	4620      	mov	r0, r4
2002458a:	f7fe fb5a 	bl	20022c42 <HAL_FLASH_SET_CMD>
2002458e:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024592:	2b05      	cmp	r3, #5
20024594:	d10f      	bne.n	200245b6 <HAL_PSRAM_RESET+0x6a>
20024596:	2300      	movs	r3, #0
20024598:	2101      	movs	r1, #1
2002459a:	461a      	mov	r2, r3
2002459c:	4620      	mov	r0, r4
2002459e:	e9cd 5503 	strd	r5, r5, [sp, #12]
200245a2:	e9cd 5701 	strd	r5, r7, [sp, #4]
200245a6:	9600      	str	r6, [sp, #0]
200245a8:	f7fe fb97 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
200245ac:	2200      	movs	r2, #0
200245ae:	21ff      	movs	r1, #255	@ 0xff
200245b0:	4620      	mov	r0, r4
200245b2:	f7fe fb46 	bl	20022c42 <HAL_FLASH_SET_CMD>
200245b6:	2000      	movs	r0, #0
200245b8:	f7fd fc85 	bl	20021ec6 <HAL_Delay_us>
200245bc:	2003      	movs	r0, #3
200245be:	f7fd fc82 	bl	20021ec6 <HAL_Delay_us>
200245c2:	2000      	movs	r0, #0
200245c4:	b007      	add	sp, #28
200245c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
200245c8:	2603      	movs	r6, #3
200245ca:	2702      	movs	r7, #2
200245cc:	e7cc      	b.n	20024568 <HAL_PSRAM_RESET+0x1c>
200245ce:	2001      	movs	r0, #1
200245d0:	e7f8      	b.n	200245c4 <HAL_PSRAM_RESET+0x78>
	...

200245d4 <HAL_OPI_PSRAM_Init>:
200245d4:	b530      	push	{r4, r5, lr}
200245d6:	4604      	mov	r4, r0
200245d8:	b085      	sub	sp, #20
200245da:	2800      	cmp	r0, #0
200245dc:	d06c      	beq.n	200246b8 <HAL_OPI_PSRAM_Init+0xe4>
200245de:	2900      	cmp	r1, #0
200245e0:	d06a      	beq.n	200246b8 <HAL_OPI_PSRAM_Init+0xe4>
200245e2:	f7fe fa93 	bl	20022b0c <HAL_QSPI_Init>
200245e6:	6823      	ldr	r3, [r4, #0]
200245e8:	f10d 020e 	add.w	r2, sp, #14
200245ec:	f10d 010f 	add.w	r1, sp, #15
200245f0:	4620      	mov	r0, r4
200245f2:	681d      	ldr	r5, [r3, #0]
200245f4:	f7ff fe58 	bl	200242a8 <HAL_MPI_OPSRAM_CAL_DELAY>
200245f8:	2101      	movs	r1, #1
200245fa:	4620      	mov	r0, r4
200245fc:	f7fe fb64 	bl	20022cc8 <HAL_FLASH_SET_CLK_rom>
20024600:	4620      	mov	r0, r4
20024602:	f7ff fbf1 	bl	20023de8 <HAL_QSPI_GET_CLK>
20024606:	4b2d      	ldr	r3, [pc, #180]	@ (200246bc <HAL_OPI_PSRAM_Init+0xe8>)
20024608:	f005 0501 	and.w	r5, r5, #1
2002460c:	4298      	cmp	r0, r3
2002460e:	d93e      	bls.n	2002468e <HAL_OPI_PSRAM_Init+0xba>
20024610:	f103 6337 	add.w	r3, r3, #191889408	@ 0xb700000
20024614:	f503 33d8 	add.w	r3, r3, #110592	@ 0x1b000
20024618:	4298      	cmp	r0, r3
2002461a:	d93d      	bls.n	20024698 <HAL_OPI_PSRAM_Init+0xc4>
2002461c:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
20024620:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
20024624:	4298      	cmp	r0, r3
20024626:	d93d      	bls.n	200246a4 <HAL_OPI_PSRAM_Init+0xd0>
20024628:	2107      	movs	r1, #7
2002462a:	2014      	movs	r0, #20
2002462c:	2308      	movs	r3, #8
2002462e:	f240 5232 	movw	r2, #1330	@ 0x532
20024632:	f884 1025 	strb.w	r1, [r4, #37]	@ 0x25
20024636:	f884 1026 	strb.w	r1, [r4, #38]	@ 0x26
2002463a:	2106      	movs	r1, #6
2002463c:	9000      	str	r0, [sp, #0]
2002463e:	4620      	mov	r0, r4
20024640:	f7fe fc2a 	bl	20022e98 <HAL_FLASH_SET_CS_TIME>
20024644:	2107      	movs	r1, #7
20024646:	4620      	mov	r0, r4
20024648:	f7fe fc3b 	bl	20022ec2 <HAL_FLASH_SET_ROW_BOUNDARY>
2002464c:	2101      	movs	r1, #1
2002464e:	4620      	mov	r0, r4
20024650:	f7fe fc6b 	bl	20022f2a <HAL_MPI_ENABLE_DQS>
20024654:	f89d 100e 	ldrb.w	r1, [sp, #14]
20024658:	4620      	mov	r0, r4
2002465a:	f7fe fc74 	bl	20022f46 <HAL_MPI_SET_DQS_DELAY>
2002465e:	2200      	movs	r2, #0
20024660:	f89d 100f 	ldrb.w	r1, [sp, #15]
20024664:	4620      	mov	r0, r4
20024666:	f7fe fc7a 	bl	20022f5e <HAL_MPI_SET_SCK>
2002466a:	2101      	movs	r1, #1
2002466c:	4620      	mov	r0, r4
2002466e:	f7fe fbcd 	bl	20022e0c <HAL_FLASH_ENABLE_QSPI>
20024672:	2101      	movs	r1, #1
20024674:	4620      	mov	r0, r4
20024676:	f7fe fbd7 	bl	20022e28 <HAL_FLASH_ENABLE_OPI>
2002467a:	b92d      	cbnz	r5, 20024688 <HAL_OPI_PSRAM_Init+0xb4>
2002467c:	4b10      	ldr	r3, [pc, #64]	@ (200246c0 <HAL_OPI_PSRAM_Init+0xec>)
2002467e:	681b      	ldr	r3, [r3, #0]
20024680:	f003 0303 	and.w	r3, r3, #3
20024684:	2b03      	cmp	r3, #3
20024686:	d113      	bne.n	200246b0 <HAL_OPI_PSRAM_Init+0xdc>
20024688:	2000      	movs	r0, #0
2002468a:	b005      	add	sp, #20
2002468c:	bd30      	pop	{r4, r5, pc}
2002468e:	2103      	movs	r1, #3
20024690:	2300      	movs	r3, #0
20024692:	4608      	mov	r0, r1
20024694:	22b4      	movs	r2, #180	@ 0xb4
20024696:	e7cc      	b.n	20024632 <HAL_OPI_PSRAM_Init+0x5e>
20024698:	2105      	movs	r1, #5
2002469a:	200e      	movs	r0, #14
2002469c:	2303      	movs	r3, #3
2002469e:	f240 32b6 	movw	r2, #950	@ 0x3b6
200246a2:	e7c6      	b.n	20024632 <HAL_OPI_PSRAM_Init+0x5e>
200246a4:	2106      	movs	r1, #6
200246a6:	2011      	movs	r0, #17
200246a8:	2305      	movs	r3, #5
200246aa:	f240 4274 	movw	r2, #1140	@ 0x474
200246ae:	e7c0      	b.n	20024632 <HAL_OPI_PSRAM_Init+0x5e>
200246b0:	4620      	mov	r0, r4
200246b2:	f7ff ff4b 	bl	2002454c <HAL_PSRAM_RESET>
200246b6:	e7e7      	b.n	20024688 <HAL_OPI_PSRAM_Init+0xb4>
200246b8:	2001      	movs	r0, #1
200246ba:	e7e6      	b.n	2002468a <HAL_OPI_PSRAM_Init+0xb6>
200246bc:	02dc6c01 	.word	0x02dc6c01
200246c0:	500c0000 	.word	0x500c0000

200246c4 <HAL_LEGACY_PSRAM_Init>:
200246c4:	b5f0      	push	{r4, r5, r6, r7, lr}
200246c6:	4604      	mov	r4, r0
200246c8:	b085      	sub	sp, #20
200246ca:	2800      	cmp	r0, #0
200246cc:	f000 8091 	beq.w	200247f2 <HAL_LEGACY_PSRAM_Init+0x12e>
200246d0:	2900      	cmp	r1, #0
200246d2:	f000 808e 	beq.w	200247f2 <HAL_LEGACY_PSRAM_Init+0x12e>
200246d6:	f7fe fa19 	bl	20022b0c <HAL_QSPI_Init>
200246da:	6823      	ldr	r3, [r4, #0]
200246dc:	f10d 020e 	add.w	r2, sp, #14
200246e0:	f10d 010f 	add.w	r1, sp, #15
200246e4:	4620      	mov	r0, r4
200246e6:	681e      	ldr	r6, [r3, #0]
200246e8:	f7ff fdde 	bl	200242a8 <HAL_MPI_OPSRAM_CAL_DELAY>
200246ec:	2101      	movs	r1, #1
200246ee:	4620      	mov	r0, r4
200246f0:	f7fe faea 	bl	20022cc8 <HAL_FLASH_SET_CLK_rom>
200246f4:	4620      	mov	r0, r4
200246f6:	f7ff fb77 	bl	20023de8 <HAL_QSPI_GET_CLK>
200246fa:	4b3f      	ldr	r3, [pc, #252]	@ (200247f8 <HAL_LEGACY_PSRAM_Init+0x134>)
200246fc:	4605      	mov	r5, r0
200246fe:	4298      	cmp	r0, r3
20024700:	4f3e      	ldr	r7, [pc, #248]	@ (200247fc <HAL_LEGACY_PSRAM_Init+0x138>)
20024702:	f006 0601 	and.w	r6, r6, #1
20024706:	d957      	bls.n	200247b8 <HAL_LEGACY_PSRAM_Init+0xf4>
20024708:	42b8      	cmp	r0, r7
2002470a:	d959      	bls.n	200247c0 <HAL_LEGACY_PSRAM_Init+0xfc>
2002470c:	4b3c      	ldr	r3, [pc, #240]	@ (20024800 <HAL_LEGACY_PSRAM_Init+0x13c>)
2002470e:	4298      	cmp	r0, r3
20024710:	d95b      	bls.n	200247ca <HAL_LEGACY_PSRAM_Init+0x106>
20024712:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
20024716:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
2002471a:	4298      	cmp	r0, r3
2002471c:	d85a      	bhi.n	200247d4 <HAL_LEGACY_PSRAM_Init+0x110>
2002471e:	2114      	movs	r1, #20
20024720:	2308      	movs	r3, #8
20024722:	f240 5232 	movw	r2, #1330	@ 0x532
20024726:	9100      	str	r1, [sp, #0]
20024728:	4620      	mov	r0, r4
2002472a:	2106      	movs	r1, #6
2002472c:	f7fe fbb4 	bl	20022e98 <HAL_FLASH_SET_CS_TIME>
20024730:	2107      	movs	r1, #7
20024732:	4620      	mov	r0, r4
20024734:	f7fe fbc5 	bl	20022ec2 <HAL_FLASH_SET_ROW_BOUNDARY>
20024738:	2101      	movs	r1, #1
2002473a:	4620      	mov	r0, r4
2002473c:	f7fe fbf5 	bl	20022f2a <HAL_MPI_ENABLE_DQS>
20024740:	f89d 100e 	ldrb.w	r1, [sp, #14]
20024744:	4620      	mov	r0, r4
20024746:	f7fe fbfe 	bl	20022f46 <HAL_MPI_SET_DQS_DELAY>
2002474a:	2200      	movs	r2, #0
2002474c:	f89d 100f 	ldrb.w	r1, [sp, #15]
20024750:	4620      	mov	r0, r4
20024752:	f7fe fc04 	bl	20022f5e <HAL_MPI_SET_SCK>
20024756:	2101      	movs	r1, #1
20024758:	4620      	mov	r0, r4
2002475a:	f7fe fbbc 	bl	20022ed6 <HAL_FLASH_SET_LEGACY>
2002475e:	2101      	movs	r1, #1
20024760:	4620      	mov	r0, r4
20024762:	f7fe fb53 	bl	20022e0c <HAL_FLASH_ENABLE_QSPI>
20024766:	2101      	movs	r1, #1
20024768:	4620      	mov	r0, r4
2002476a:	f7fe fb5d 	bl	20022e28 <HAL_FLASH_ENABLE_OPI>
2002476e:	b92e      	cbnz	r6, 2002477c <HAL_LEGACY_PSRAM_Init+0xb8>
20024770:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
20024774:	b913      	cbnz	r3, 2002477c <HAL_LEGACY_PSRAM_Init+0xb8>
20024776:	4620      	mov	r0, r4
20024778:	f7ff fee8 	bl	2002454c <HAL_PSRAM_RESET>
2002477c:	42bd      	cmp	r5, r7
2002477e:	d92e      	bls.n	200247de <HAL_LEGACY_PSRAM_Init+0x11a>
20024780:	4b1f      	ldr	r3, [pc, #124]	@ (20024800 <HAL_LEGACY_PSRAM_Init+0x13c>)
20024782:	429d      	cmp	r5, r3
20024784:	d930      	bls.n	200247e8 <HAL_LEGACY_PSRAM_Init+0x124>
20024786:	2206      	movs	r2, #6
20024788:	2302      	movs	r3, #2
2002478a:	2588      	movs	r5, #136	@ 0x88
2002478c:	263b      	movs	r6, #59	@ 0x3b
2002478e:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
20024792:	2101      	movs	r1, #1
20024794:	f884 2025 	strb.w	r2, [r4, #37]	@ 0x25
20024798:	4620      	mov	r0, r4
2002479a:	f7fe fbb8 	bl	20022f0e <HAL_MPI_EN_FIXLAT>
2002479e:	4632      	mov	r2, r6
200247a0:	2100      	movs	r1, #0
200247a2:	4620      	mov	r0, r4
200247a4:	f7ff fe7a 	bl	2002449c <HAL_LEGACY_MR_WRITE>
200247a8:	462a      	mov	r2, r5
200247aa:	2104      	movs	r1, #4
200247ac:	4620      	mov	r0, r4
200247ae:	f7ff fe75 	bl	2002449c <HAL_LEGACY_MR_WRITE>
200247b2:	2000      	movs	r0, #0
200247b4:	b005      	add	sp, #20
200247b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
200247b8:	2103      	movs	r1, #3
200247ba:	2300      	movs	r3, #0
200247bc:	22b4      	movs	r2, #180	@ 0xb4
200247be:	e7b2      	b.n	20024726 <HAL_LEGACY_PSRAM_Init+0x62>
200247c0:	210e      	movs	r1, #14
200247c2:	2303      	movs	r3, #3
200247c4:	f240 32b6 	movw	r2, #950	@ 0x3b6
200247c8:	e7ad      	b.n	20024726 <HAL_LEGACY_PSRAM_Init+0x62>
200247ca:	2111      	movs	r1, #17
200247cc:	2305      	movs	r3, #5
200247ce:	f240 4274 	movw	r2, #1140	@ 0x474
200247d2:	e7a8      	b.n	20024726 <HAL_LEGACY_PSRAM_Init+0x62>
200247d4:	2117      	movs	r1, #23
200247d6:	2309      	movs	r3, #9
200247d8:	f44f 62be 	mov.w	r2, #1520	@ 0x5f0
200247dc:	e7a3      	b.n	20024726 <HAL_LEGACY_PSRAM_Init+0x62>
200247de:	2204      	movs	r2, #4
200247e0:	2300      	movs	r3, #0
200247e2:	2508      	movs	r5, #8
200247e4:	2633      	movs	r6, #51	@ 0x33
200247e6:	e7d2      	b.n	2002478e <HAL_LEGACY_PSRAM_Init+0xca>
200247e8:	2205      	movs	r2, #5
200247ea:	2300      	movs	r3, #0
200247ec:	2508      	movs	r5, #8
200247ee:	2637      	movs	r6, #55	@ 0x37
200247f0:	e7cd      	b.n	2002478e <HAL_LEGACY_PSRAM_Init+0xca>
200247f2:	2001      	movs	r0, #1
200247f4:	e7de      	b.n	200247b4 <HAL_LEGACY_PSRAM_Init+0xf0>
200247f6:	bf00      	nop
200247f8:	02dc6c01 	.word	0x02dc6c01
200247fc:	0e4e1c01 	.word	0x0e4e1c01
20024800:	112a8801 	.word	0x112a8801

20024804 <HAL_HYPER_PSRAM_WriteCR>:
20024804:	b570      	push	{r4, r5, r6, lr}
20024806:	460e      	mov	r6, r1
20024808:	4615      	mov	r5, r2
2002480a:	4604      	mov	r4, r0
2002480c:	b086      	sub	sp, #24
2002480e:	b1f8      	cbz	r0, 20024850 <HAL_HYPER_PSRAM_WriteCR+0x4c>
20024810:	2207      	movs	r2, #7
20024812:	2303      	movs	r3, #3
20024814:	e9cd 2301 	strd	r2, r3, [sp, #4]
20024818:	2300      	movs	r3, #0
2002481a:	e9cd 2203 	strd	r2, r2, [sp, #12]
2002481e:	9300      	str	r3, [sp, #0]
20024820:	2101      	movs	r1, #1
20024822:	f7fe fa5a 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
20024826:	4631      	mov	r1, r6
20024828:	4620      	mov	r0, r4
2002482a:	f7fe f9f9 	bl	20022c20 <HAL_FLASH_WRITE_ABYTE>
2002482e:	2102      	movs	r1, #2
20024830:	4620      	mov	r0, r4
20024832:	f7fe f9e1 	bl	20022bf8 <HAL_FLASH_WRITE_DLEN>
20024836:	4629      	mov	r1, r5
20024838:	4620      	mov	r0, r4
2002483a:	f7fe f9d6 	bl	20022bea <HAL_FLASH_WRITE_WORD>
2002483e:	f44f 3280 	mov.w	r2, #65536	@ 0x10000
20024842:	2160      	movs	r1, #96	@ 0x60
20024844:	4620      	mov	r0, r4
20024846:	b006      	add	sp, #24
20024848:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
2002484c:	f7fe b9f9 	b.w	20022c42 <HAL_FLASH_SET_CMD>
20024850:	b006      	add	sp, #24
20024852:	bd70      	pop	{r4, r5, r6, pc}

20024854 <HAL_HYPER_PSRAM_Init>:
20024854:	b538      	push	{r3, r4, r5, lr}
20024856:	4604      	mov	r4, r0
20024858:	2201      	movs	r2, #1
2002485a:	f7ff febb 	bl	200245d4 <HAL_OPI_PSRAM_Init>
2002485e:	4620      	mov	r0, r4
20024860:	f7ff fac2 	bl	20023de8 <HAL_QSPI_GET_CLK>
20024864:	4b15      	ldr	r3, [pc, #84]	@ (200248bc <HAL_HYPER_PSRAM_Init+0x68>)
20024866:	4298      	cmp	r0, r3
20024868:	d91f      	bls.n	200248aa <HAL_HYPER_PSRAM_Init+0x56>
2002486a:	4b15      	ldr	r3, [pc, #84]	@ (200248c0 <HAL_HYPER_PSRAM_Init+0x6c>)
2002486c:	4298      	cmp	r0, r3
2002486e:	d91f      	bls.n	200248b0 <HAL_HYPER_PSRAM_Init+0x5c>
20024870:	f103 73f4 	add.w	r3, r3, #31981568	@ 0x1e80000
20024874:	f503 4390 	add.w	r3, r3, #18432	@ 0x4800
20024878:	4298      	cmp	r0, r3
2002487a:	d91c      	bls.n	200248b6 <HAL_HYPER_PSRAM_Init+0x62>
2002487c:	f242 758f 	movw	r5, #10127	@ 0x278f
20024880:	f241 738f 	movw	r3, #6031	@ 0x178f
20024884:	4a0f      	ldr	r2, [pc, #60]	@ (200248c4 <HAL_HYPER_PSRAM_Init+0x70>)
20024886:	4290      	cmp	r0, r2
20024888:	bf98      	it	ls
2002488a:	461d      	movls	r5, r3
2002488c:	2101      	movs	r1, #1
2002488e:	4620      	mov	r0, r4
20024890:	f7fe fad8 	bl	20022e44 <HAL_FLASH_ENABLE_HYPER>
20024894:	462a      	mov	r2, r5
20024896:	4620      	mov	r0, r4
20024898:	2100      	movs	r1, #0
2002489a:	f7ff ffb3 	bl	20024804 <HAL_HYPER_PSRAM_WriteCR>
2002489e:	2101      	movs	r1, #1
200248a0:	4620      	mov	r0, r4
200248a2:	f7fe fb34 	bl	20022f0e <HAL_MPI_EN_FIXLAT>
200248a6:	2000      	movs	r0, #0
200248a8:	bd38      	pop	{r3, r4, r5, pc}
200248aa:	f24e 758f 	movw	r5, #59279	@ 0xe78f
200248ae:	e7ed      	b.n	2002488c <HAL_HYPER_PSRAM_Init+0x38>
200248b0:	f24f 758f 	movw	r5, #63375	@ 0xf78f
200248b4:	e7ea      	b.n	2002488c <HAL_HYPER_PSRAM_Init+0x38>
200248b6:	f240 758f 	movw	r5, #1935	@ 0x78f
200248ba:	e7e7      	b.n	2002488c <HAL_HYPER_PSRAM_Init+0x38>
200248bc:	0a21fe81 	.word	0x0a21fe81
200248c0:	0c65d401 	.word	0x0c65d401
200248c4:	112a8801 	.word	0x112a8801

200248c8 <HAL_HYPER_CFG_READ>:
200248c8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200248ca:	b160      	cbz	r0, 200248e6 <HAL_HYPER_CFG_READ+0x1e>
200248cc:	2107      	movs	r1, #7
200248ce:	2303      	movs	r3, #3
200248d0:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
200248d4:	e9cd 1300 	strd	r1, r3, [sp]
200248d8:	3a01      	subs	r2, #1
200248da:	2300      	movs	r3, #0
200248dc:	e9cd 1102 	strd	r1, r1, [sp, #8]
200248e0:	b252      	sxtb	r2, r2
200248e2:	f7fe f93c 	bl	20022b5e <HAL_FLASH_CFG_AHB_RCMD>
200248e6:	b005      	add	sp, #20
200248e8:	f85d fb04 	ldr.w	pc, [sp], #4

200248ec <HAL_HYPER_CFG_WRITE>:
200248ec:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200248ee:	b160      	cbz	r0, 2002490a <HAL_HYPER_CFG_WRITE+0x1e>
200248f0:	2107      	movs	r1, #7
200248f2:	2303      	movs	r3, #3
200248f4:	f890 2026 	ldrb.w	r2, [r0, #38]	@ 0x26
200248f8:	e9cd 1300 	strd	r1, r3, [sp]
200248fc:	3a01      	subs	r2, #1
200248fe:	2300      	movs	r3, #0
20024900:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024904:	b252      	sxtb	r2, r2
20024906:	f7fe f953 	bl	20022bb0 <HAL_FLASH_CFG_AHB_WCMD>
2002490a:	b005      	add	sp, #20
2002490c:	f85d fb04 	ldr.w	pc, [sp], #4

20024910 <HAL_PIN_SetUartFunc.part.0>:
20024910:	108b      	asrs	r3, r1, #2
20024912:	f1a3 0248 	sub.w	r2, r3, #72	@ 0x48
20024916:	b5f0      	push	{r4, r5, r6, r7, lr}
20024918:	b2d6      	uxtb	r6, r2
2002491a:	2e04      	cmp	r6, #4
2002491c:	d849      	bhi.n	200249b2 <HAL_PIN_SetUartFunc.part.0+0xa2>
2002491e:	2e02      	cmp	r6, #2
20024920:	d810      	bhi.n	20024944 <HAL_PIN_SetUartFunc.part.0+0x34>
20024922:	4d25      	ldr	r5, [pc, #148]	@ (200249b8 <HAL_PIN_SetUartFunc.part.0+0xa8>)
20024924:	240e      	movs	r4, #14
20024926:	eb05 0582 	add.w	r5, r5, r2, lsl #2
2002492a:	f240 22b2 	movw	r2, #690	@ 0x2b2
2002492e:	eba1 0386 	sub.w	r3, r1, r6, lsl #2
20024932:	b29b      	uxth	r3, r3
20024934:	f5a3 7390 	sub.w	r3, r3, #288	@ 0x120
20024938:	2b03      	cmp	r3, #3
2002493a:	d83a      	bhi.n	200249b2 <HAL_PIN_SetUartFunc.part.0+0xa2>
2002493c:	e8df f003 	tbb	[pc, r3]
20024940:	20271a09 	.word	0x20271a09
20024944:	4d1d      	ldr	r5, [pc, #116]	@ (200249bc <HAL_PIN_SetUartFunc.part.0+0xac>)
20024946:	009b      	lsls	r3, r3, #2
20024948:	243d      	movs	r4, #61	@ 0x3d
2002494a:	f240 3221 	movw	r2, #801	@ 0x321
2002494e:	441d      	add	r5, r3
20024950:	e7ed      	b.n	2002492e <HAL_PIN_SetUartFunc.part.0+0x1e>
20024952:	2c0e      	cmp	r4, #14
20024954:	f04f 0608 	mov.w	r6, #8
20024958:	d120      	bne.n	2002499c <HAL_PIN_SetUartFunc.part.0+0x8c>
2002495a:	f44f 517c 	mov.w	r1, #16128	@ 0x3f00
2002495e:	682f      	ldr	r7, [r5, #0]
20024960:	1b03      	subs	r3, r0, r4
20024962:	40b3      	lsls	r3, r6
20024964:	407b      	eors	r3, r7
20024966:	400b      	ands	r3, r1
20024968:	4410      	add	r0, r2
2002496a:	407b      	eors	r3, r7
2002496c:	1b00      	subs	r0, r0, r4
2002496e:	602b      	str	r3, [r5, #0]
20024970:	b280      	uxth	r0, r0
20024972:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024974:	2c0e      	cmp	r4, #14
20024976:	f04f 0600 	mov.w	r6, #0
2002497a:	d112      	bne.n	200249a2 <HAL_PIN_SetUartFunc.part.0+0x92>
2002497c:	213f      	movs	r1, #63	@ 0x3f
2002497e:	e7ee      	b.n	2002495e <HAL_PIN_SetUartFunc.part.0+0x4e>
20024980:	2c0e      	cmp	r4, #14
20024982:	f04f 0610 	mov.w	r6, #16
20024986:	d10e      	bne.n	200249a6 <HAL_PIN_SetUartFunc.part.0+0x96>
20024988:	f44f 117c 	mov.w	r1, #4128768	@ 0x3f0000
2002498c:	e7e7      	b.n	2002495e <HAL_PIN_SetUartFunc.part.0+0x4e>
2002498e:	2c0e      	cmp	r4, #14
20024990:	f04f 0618 	mov.w	r6, #24
20024994:	d10a      	bne.n	200249ac <HAL_PIN_SetUartFunc.part.0+0x9c>
20024996:	f04f 517c 	mov.w	r1, #1056964608	@ 0x3f000000
2002499a:	e7e0      	b.n	2002495e <HAL_PIN_SetUartFunc.part.0+0x4e>
2002499c:	f44f 61e0 	mov.w	r1, #1792	@ 0x700
200249a0:	e7dd      	b.n	2002495e <HAL_PIN_SetUartFunc.part.0+0x4e>
200249a2:	2107      	movs	r1, #7
200249a4:	e7db      	b.n	2002495e <HAL_PIN_SetUartFunc.part.0+0x4e>
200249a6:	f44f 21e0 	mov.w	r1, #458752	@ 0x70000
200249aa:	e7d8      	b.n	2002495e <HAL_PIN_SetUartFunc.part.0+0x4e>
200249ac:	f04f 61e0 	mov.w	r1, #117440512	@ 0x7000000
200249b0:	e7d5      	b.n	2002495e <HAL_PIN_SetUartFunc.part.0+0x4e>
200249b2:	2000      	movs	r0, #0
200249b4:	e7dd      	b.n	20024972 <HAL_PIN_SetUartFunc.part.0+0x62>
200249b6:	bf00      	nop
200249b8:	5000b058 	.word	0x5000b058
200249bc:	4000ef0c 	.word	0x4000ef0c

200249c0 <HAL_PIN_SetAonPE>:
200249c0:	2a00      	cmp	r2, #0
200249c2:	d031      	beq.n	20024a28 <HAL_PIN_SetAonPE+0x68>
200249c4:	282f      	cmp	r0, #47	@ 0x2f
200249c6:	dd16      	ble.n	200249f6 <HAL_PIN_SetAonPE+0x36>
200249c8:	283a      	cmp	r0, #58	@ 0x3a
200249ca:	dc2d      	bgt.n	20024a28 <HAL_PIN_SetAonPE+0x68>
200249cc:	2301      	movs	r3, #1
200249ce:	4a17      	ldr	r2, [pc, #92]	@ (20024a2c <HAL_PIN_SetAonPE+0x6c>)
200249d0:	382a      	subs	r0, #42	@ 0x2a
200249d2:	4083      	lsls	r3, r0
200249d4:	6f10      	ldr	r0, [r2, #112]	@ 0x70
200249d6:	f011 0f20 	tst.w	r1, #32
200249da:	bf14      	ite	ne
200249dc:	4318      	orrne	r0, r3
200249de:	4398      	biceq	r0, r3
200249e0:	6710      	str	r0, [r2, #112]	@ 0x70
200249e2:	4a12      	ldr	r2, [pc, #72]	@ (20024a2c <HAL_PIN_SetAonPE+0x6c>)
200249e4:	f011 0f10 	tst.w	r1, #16
200249e8:	6ed1      	ldr	r1, [r2, #108]	@ 0x6c
200249ea:	bf14      	ite	ne
200249ec:	430b      	orrne	r3, r1
200249ee:	ea21 0303 	biceq.w	r3, r1, r3
200249f2:	66d3      	str	r3, [r2, #108]	@ 0x6c
200249f4:	4770      	bx	lr
200249f6:	3826      	subs	r0, #38	@ 0x26
200249f8:	2803      	cmp	r0, #3
200249fa:	d815      	bhi.n	20024a28 <HAL_PIN_SetAonPE+0x68>
200249fc:	4b0c      	ldr	r3, [pc, #48]	@ (20024a30 <HAL_PIN_SetAonPE+0x70>)
200249fe:	f011 0f20 	tst.w	r1, #32
20024a02:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024a06:	bf14      	ite	ne
20024a08:	f042 0210 	orrne.w	r2, r2, #16
20024a0c:	f022 0210 	biceq.w	r2, r2, #16
20024a10:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024a14:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024a18:	06c9      	lsls	r1, r1, #27
20024a1a:	bf4c      	ite	mi
20024a1c:	f042 0208 	orrmi.w	r2, r2, #8
20024a20:	f022 0208 	bicpl.w	r2, r2, #8
20024a24:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024a28:	4770      	bx	lr
20024a2a:	bf00      	nop
20024a2c:	500cb000 	.word	0x500cb000
20024a30:	500cb05c 	.word	0x500cb05c

20024a34 <HAL_PIN_Get_Base>:
20024a34:	b138      	cbz	r0, 20024a46 <HAL_PIN_Get_Base+0x12>
20024a36:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024a3a:	6893      	ldr	r3, [r2, #8]
20024a3c:	4806      	ldr	r0, [pc, #24]	@ (20024a58 <HAL_PIN_Get_Base+0x24>)
20024a3e:	f043 0304 	orr.w	r3, r3, #4
20024a42:	6093      	str	r3, [r2, #8]
20024a44:	4770      	bx	lr
20024a46:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
20024a4a:	6853      	ldr	r3, [r2, #4]
20024a4c:	4803      	ldr	r0, [pc, #12]	@ (20024a5c <HAL_PIN_Get_Base+0x28>)
20024a4e:	f043 0308 	orr.w	r3, r3, #8
20024a52:	6053      	str	r3, [r2, #4]
20024a54:	4770      	bx	lr
20024a56:	bf00      	nop
20024a58:	50003000 	.word	0x50003000
20024a5c:	40003000 	.word	0x40003000

20024a60 <HAL_PIN_Func2Idx>:
20024a60:	283b      	cmp	r0, #59	@ 0x3b
20024a62:	bfc8      	it	gt
20024a64:	383c      	subgt	r0, #60	@ 0x3c
20024a66:	0143      	lsls	r3, r0, #5
20024a68:	b152      	cbz	r2, 20024a80 <HAL_PIN_Func2Idx+0x20>
20024a6a:	4a06      	ldr	r2, [pc, #24]	@ (20024a84 <HAL_PIN_Func2Idx+0x24>)
20024a6c:	2000      	movs	r0, #0
20024a6e:	4413      	add	r3, r2
20024a70:	f833 2010 	ldrh.w	r2, [r3, r0, lsl #1]
20024a74:	428a      	cmp	r2, r1
20024a76:	d002      	beq.n	20024a7e <HAL_PIN_Func2Idx+0x1e>
20024a78:	3001      	adds	r0, #1
20024a7a:	2810      	cmp	r0, #16
20024a7c:	d1f8      	bne.n	20024a70 <HAL_PIN_Func2Idx+0x10>
20024a7e:	4770      	bx	lr
20024a80:	4a01      	ldr	r2, [pc, #4]	@ (20024a88 <HAL_PIN_Func2Idx+0x28>)
20024a82:	e7f3      	b.n	20024a6c <HAL_PIN_Func2Idx+0xc>
20024a84:	2002b078 	.word	0x2002b078
20024a88:	2002afd8 	.word	0x2002afd8

20024a8c <HAL_PIN_Set>:
20024a8c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20024a90:	4615      	mov	r5, r2
20024a92:	4604      	mov	r4, r0
20024a94:	b918      	cbnz	r0, 20024a9e <HAL_PIN_Set+0x12>
20024a96:	f04f 30ff 	mov.w	r0, #4294967295
20024a9a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20024a9e:	283a      	cmp	r0, #58	@ 0x3a
20024aa0:	bfcd      	iteet	gt
20024aa2:	2700      	movgt	r7, #0
20024aa4:	2701      	movle	r7, #1
20024aa6:	4606      	movle	r6, r0
20024aa8:	f1a0 063c 	subgt.w	r6, r0, #60	@ 0x3c
20024aac:	4638      	mov	r0, r7
20024aae:	f7ff ffc1 	bl	20024a34 <HAL_PIN_Get_Base>
20024ab2:	4680      	mov	r8, r0
20024ab4:	2f00      	cmp	r7, #0
20024ab6:	f000 80fe 	beq.w	20024cb6 <HAL_PIN_Set+0x22a>
20024aba:	f5a1 7390 	sub.w	r3, r1, #288	@ 0x120
20024abe:	b29b      	uxth	r3, r3
20024ac0:	2b0b      	cmp	r3, #11
20024ac2:	d82e      	bhi.n	20024b22 <HAL_PIN_Set+0x96>
20024ac4:	4620      	mov	r0, r4
20024ac6:	f7ff ff23 	bl	20024910 <HAL_PIN_SetUartFunc.part.0>
20024aca:	4601      	mov	r1, r0
20024acc:	463a      	mov	r2, r7
20024ace:	4620      	mov	r0, r4
20024ad0:	f7ff ffc6 	bl	20024a60 <HAL_PIN_Func2Idx>
20024ad4:	280f      	cmp	r0, #15
20024ad6:	4681      	mov	r9, r0
20024ad8:	dcdd      	bgt.n	20024a96 <HAL_PIN_Set+0xa>
20024ada:	463a      	mov	r2, r7
20024adc:	4629      	mov	r1, r5
20024ade:	4620      	mov	r0, r4
20024ae0:	f7ff ff6e 	bl	200249c0 <HAL_PIN_SetAonPE>
20024ae4:	2f00      	cmp	r7, #0
20024ae6:	f040 80ef 	bne.w	20024cc8 <HAL_PIN_Set+0x23c>
20024aea:	2c40      	cmp	r4, #64	@ 0x40
20024aec:	f340 80ec 	ble.w	20024cc8 <HAL_PIN_Set+0x23c>
20024af0:	4a7f      	ldr	r2, [pc, #508]	@ (20024cf0 <HAL_PIN_Set+0x264>)
20024af2:	06e8      	lsls	r0, r5, #27
20024af4:	f852 3024 	ldr.w	r3, [r2, r4, lsl #2]
20024af8:	ea4f 3909 	mov.w	r9, r9, lsl #12
20024afc:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024b00:	f023 0318 	bic.w	r3, r3, #24
20024b04:	bf48      	it	mi
20024b06:	f043 0308 	orrmi.w	r3, r3, #8
20024b0a:	06a9      	lsls	r1, r5, #26
20024b0c:	bf48      	it	mi
20024b0e:	f043 0310 	orrmi.w	r3, r3, #16
20024b12:	f409 49e0 	and.w	r9, r9, #28672	@ 0x7000
20024b16:	ea49 0303 	orr.w	r3, r9, r3
20024b1a:	f842 3024 	str.w	r3, [r2, r4, lsl #2]
20024b1e:	2000      	movs	r0, #0
20024b20:	e7bb      	b.n	20024a9a <HAL_PIN_Set+0xe>
20024b22:	f5a1 739c 	sub.w	r3, r1, #312	@ 0x138
20024b26:	b29b      	uxth	r3, r3
20024b28:	2b07      	cmp	r3, #7
20024b2a:	d826      	bhi.n	20024b7a <HAL_PIN_Set+0xee>
20024b2c:	104a      	asrs	r2, r1, #1
20024b2e:	3a9c      	subs	r2, #156	@ 0x9c
20024b30:	eba1 0142 	sub.w	r1, r1, r2, lsl #1
20024b34:	b289      	uxth	r1, r1
20024b36:	f5b1 7f9c 	cmp.w	r1, #312	@ 0x138
20024b3a:	d019      	beq.n	20024b70 <HAL_PIN_Set+0xe4>
20024b3c:	f240 1339 	movw	r3, #313	@ 0x139
20024b40:	4299      	cmp	r1, r3
20024b42:	f040 80bf 	bne.w	20024cc4 <HAL_PIN_Set+0x238>
20024b46:	f04f 0e08 	mov.w	lr, #8
20024b4a:	f44f 5c7c 	mov.w	ip, #16128	@ 0x3f00
20024b4e:	4969      	ldr	r1, [pc, #420]	@ (20024cf4 <HAL_PIN_Set+0x268>)
20024b50:	f1a4 030e 	sub.w	r3, r4, #14
20024b54:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024b58:	fa03 f30e 	lsl.w	r3, r3, lr
20024b5c:	4043      	eors	r3, r0
20024b5e:	ea03 030c 	and.w	r3, r3, ip
20024b62:	4043      	eors	r3, r0
20024b64:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024b68:	f504 7129 	add.w	r1, r4, #676	@ 0x2a4
20024b6c:	b289      	uxth	r1, r1
20024b6e:	e7ad      	b.n	20024acc <HAL_PIN_Set+0x40>
20024b70:	f04f 0e00 	mov.w	lr, #0
20024b74:	f04f 0c3f 	mov.w	ip, #63	@ 0x3f
20024b78:	e7e9      	b.n	20024b4e <HAL_PIN_Set+0xc2>
20024b7a:	f5a1 73ec 	sub.w	r3, r1, #472	@ 0x1d8
20024b7e:	b29a      	uxth	r2, r3
20024b80:	2a09      	cmp	r2, #9
20024b82:	d836      	bhi.n	20024bf2 <HAL_PIN_Set+0x166>
20024b84:	2205      	movs	r2, #5
20024b86:	fbb3 f3f2 	udiv	r3, r3, r2
20024b8a:	ebc3 3283 	rsb	r2, r3, r3, lsl #14
20024b8e:	ebc3 0282 	rsb	r2, r3, r2, lsl #2
20024b92:	440a      	add	r2, r1
20024b94:	b292      	uxth	r2, r2
20024b96:	f5a2 71ec 	sub.w	r1, r2, #472	@ 0x1d8
20024b9a:	b288      	uxth	r0, r1
20024b9c:	2803      	cmp	r0, #3
20024b9e:	d814      	bhi.n	20024bca <HAL_PIN_Set+0x13e>
20024ba0:	f04f 0e3f 	mov.w	lr, #63	@ 0x3f
20024ba4:	4854      	ldr	r0, [pc, #336]	@ (20024cf8 <HAL_PIN_Set+0x26c>)
20024ba6:	00c9      	lsls	r1, r1, #3
20024ba8:	f850 c023 	ldr.w	ip, [r0, r3, lsl #2]
20024bac:	f1a4 020e 	sub.w	r2, r4, #14
20024bb0:	408a      	lsls	r2, r1
20024bb2:	ea82 020c 	eor.w	r2, r2, ip
20024bb6:	fa0e f101 	lsl.w	r1, lr, r1
20024bba:	400a      	ands	r2, r1
20024bbc:	ea82 020c 	eor.w	r2, r2, ip
20024bc0:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
20024bc4:	f204 2155 	addw	r1, r4, #597	@ 0x255
20024bc8:	e7d0      	b.n	20024b6c <HAL_PIN_Set+0xe0>
20024bca:	f5b2 7fee 	cmp.w	r2, #476	@ 0x1dc
20024bce:	d179      	bne.n	20024cc4 <HAL_PIN_Set+0x238>
20024bd0:	213f      	movs	r1, #63	@ 0x3f
20024bd2:	484a      	ldr	r0, [pc, #296]	@ (20024cfc <HAL_PIN_Set+0x270>)
20024bd4:	00da      	lsls	r2, r3, #3
20024bd6:	f8d0 c06c 	ldr.w	ip, [r0, #108]	@ 0x6c
20024bda:	f1a4 030e 	sub.w	r3, r4, #14
20024bde:	4093      	lsls	r3, r2
20024be0:	ea83 030c 	eor.w	r3, r3, ip
20024be4:	fa01 f202 	lsl.w	r2, r1, r2
20024be8:	4013      	ands	r3, r2
20024bea:	ea83 030c 	eor.w	r3, r3, ip
20024bee:	66c3      	str	r3, [r0, #108]	@ 0x6c
20024bf0:	e7e8      	b.n	20024bc4 <HAL_PIN_Set+0x138>
20024bf2:	f46f 7901 	mvn.w	r9, #516	@ 0x204
20024bf6:	eb01 0209 	add.w	r2, r1, r9
20024bfa:	b293      	uxth	r3, r2
20024bfc:	2b05      	cmp	r3, #5
20024bfe:	d827      	bhi.n	20024c50 <HAL_PIN_Set+0x1c4>
20024c00:	2303      	movs	r3, #3
20024c02:	fbb2 f2f3 	udiv	r2, r2, r3
20024c06:	f46f 7e01 	mvn.w	lr, #516	@ 0x204
20024c0a:	ebc2 3382 	rsb	r3, r2, r2, lsl #14
20024c0e:	eb02 0383 	add.w	r3, r2, r3, lsl #2
20024c12:	440b      	add	r3, r1
20024c14:	b29b      	uxth	r3, r3
20024c16:	eb03 0c0e 	add.w	ip, r3, lr
20024c1a:	fa1f fc8c 	uxth.w	ip, ip
20024c1e:	f1bc 0f02 	cmp.w	ip, #2
20024c22:	d84f      	bhi.n	20024cc4 <HAL_PIN_Set+0x238>
20024c24:	00db      	lsls	r3, r3, #3
20024c26:	f5a3 5381 	sub.w	r3, r3, #4128	@ 0x1020
20024c2a:	4935      	ldr	r1, [pc, #212]	@ (20024d00 <HAL_PIN_Set+0x274>)
20024c2c:	f1a4 0e0e 	sub.w	lr, r4, #14
20024c30:	3b08      	subs	r3, #8
20024c32:	fa0e f303 	lsl.w	r3, lr, r3
20024c36:	f8df e0d8 	ldr.w	lr, [pc, #216]	@ 20024d10 <HAL_PIN_Set+0x284>
20024c3a:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024c3e:	f85e c02c 	ldr.w	ip, [lr, ip, lsl #2]
20024c42:	4043      	eors	r3, r0
20024c44:	ea03 030c 	and.w	r3, r3, ip
20024c48:	4043      	eors	r3, r0
20024c4a:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024c4e:	e7b9      	b.n	20024bc4 <HAL_PIN_Set+0x138>
20024c50:	f46f 7cf8 	mvn.w	ip, #496	@ 0x1f0
20024c54:	eb01 030c 	add.w	r3, r1, ip
20024c58:	b29a      	uxth	r2, r3
20024c5a:	2a09      	cmp	r2, #9
20024c5c:	f63f af36 	bhi.w	20024acc <HAL_PIN_Set+0x40>
20024c60:	f5b1 7ffc 	cmp.w	r1, #504	@ 0x1f8
20024c64:	d216      	bcs.n	20024c94 <HAL_PIN_Set+0x208>
20024c66:	0859      	lsrs	r1, r3, #1
20024c68:	f013 0f01 	tst.w	r3, #1
20024c6c:	4b25      	ldr	r3, [pc, #148]	@ (20024d04 <HAL_PIN_Set+0x278>)
20024c6e:	f04f 003f 	mov.w	r0, #63	@ 0x3f
20024c72:	4a25      	ldr	r2, [pc, #148]	@ (20024d08 <HAL_PIN_Set+0x27c>)
20024c74:	bf18      	it	ne
20024c76:	461a      	movne	r2, r3
20024c78:	00c9      	lsls	r1, r1, #3
20024c7a:	4088      	lsls	r0, r1
20024c7c:	f8d2 c000 	ldr.w	ip, [r2]
20024c80:	f1a4 030e 	sub.w	r3, r4, #14
20024c84:	408b      	lsls	r3, r1
20024c86:	ea83 030c 	eor.w	r3, r3, ip
20024c8a:	4003      	ands	r3, r0
20024c8c:	ea83 030c 	eor.w	r3, r3, ip
20024c90:	6013      	str	r3, [r2, #0]
20024c92:	e797      	b.n	20024bc4 <HAL_PIN_Set+0x138>
20024c94:	d007      	beq.n	20024ca6 <HAL_PIN_Set+0x21a>
20024c96:	f240 13f9 	movw	r3, #505	@ 0x1f9
20024c9a:	4299      	cmp	r1, r3
20024c9c:	d107      	bne.n	20024cae <HAL_PIN_Set+0x222>
20024c9e:	2100      	movs	r1, #0
20024ca0:	203f      	movs	r0, #63	@ 0x3f
20024ca2:	4a1a      	ldr	r2, [pc, #104]	@ (20024d0c <HAL_PIN_Set+0x280>)
20024ca4:	e7ea      	b.n	20024c7c <HAL_PIN_Set+0x1f0>
20024ca6:	2110      	movs	r1, #16
20024ca8:	f44f 107c 	mov.w	r0, #4128768	@ 0x3f0000
20024cac:	e7f9      	b.n	20024ca2 <HAL_PIN_Set+0x216>
20024cae:	2108      	movs	r1, #8
20024cb0:	f44f 507c 	mov.w	r0, #16128	@ 0x3f00
20024cb4:	e7f5      	b.n	20024ca2 <HAL_PIN_Set+0x216>
20024cb6:	f5a1 7396 	sub.w	r3, r1, #300	@ 0x12c
20024cba:	b29b      	uxth	r3, r3
20024cbc:	2b07      	cmp	r3, #7
20024cbe:	f63f af05 	bhi.w	20024acc <HAL_PIN_Set+0x40>
20024cc2:	e6ff      	b.n	20024ac4 <HAL_PIN_Set+0x38>
20024cc4:	2100      	movs	r1, #0
20024cc6:	e701      	b.n	20024acc <HAL_PIN_Set+0x40>
20024cc8:	f106 4680 	add.w	r6, r6, #1073741824	@ 0x40000000
20024ccc:	3e01      	subs	r6, #1
20024cce:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
20024cd2:	f005 0530 	and.w	r5, r5, #48	@ 0x30
20024cd6:	f009 090f 	and.w	r9, r9, #15
20024cda:	ea45 0509 	orr.w	r5, r5, r9
20024cde:	f023 033f 	bic.w	r3, r3, #63	@ 0x3f
20024ce2:	431d      	orrs	r5, r3
20024ce4:	f045 0540 	orr.w	r5, r5, #64	@ 0x40
20024ce8:	f848 5026 	str.w	r5, [r8, r6, lsl #2]
20024cec:	e717      	b.n	20024b1e <HAL_PIN_Set+0x92>
20024cee:	bf00      	nop
20024cf0:	500caf58 	.word	0x500caf58
20024cf4:	5000b048 	.word	0x5000b048
20024cf8:	5000b064 	.word	0x5000b064
20024cfc:	5000b000 	.word	0x5000b000
20024d00:	5000b070 	.word	0x5000b070
20024d04:	5000b07c 	.word	0x5000b07c
20024d08:	5000b078 	.word	0x5000b078
20024d0c:	5000b080 	.word	0x5000b080
20024d10:	2002b7ec 	.word	0x2002b7ec

20024d14 <HAL_PIN_Set_Analog>:
20024d14:	283a      	cmp	r0, #58	@ 0x3a
20024d16:	b538      	push	{r3, r4, r5, lr}
20024d18:	4604      	mov	r4, r0
20024d1a:	dd25      	ble.n	20024d68 <HAL_PIN_Set_Analog+0x54>
20024d1c:	2840      	cmp	r0, #64	@ 0x40
20024d1e:	dc16      	bgt.n	20024d4e <HAL_PIN_Set_Analog+0x3a>
20024d20:	2500      	movs	r5, #0
20024d22:	f1a0 013c 	sub.w	r1, r0, #60	@ 0x3c
20024d26:	4628      	mov	r0, r5
20024d28:	f7ff fe84 	bl	20024a34 <HAL_PIN_Get_Base>
20024d2c:	f101 4380 	add.w	r3, r1, #1073741824	@ 0x40000000
20024d30:	3b01      	subs	r3, #1
20024d32:	f850 1023 	ldr.w	r1, [r0, r3, lsl #2]
20024d36:	462a      	mov	r2, r5
20024d38:	f021 015f 	bic.w	r1, r1, #95	@ 0x5f
20024d3c:	f041 010f 	orr.w	r1, r1, #15
20024d40:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
20024d44:	2100      	movs	r1, #0
20024d46:	4620      	mov	r0, r4
20024d48:	f7ff fe3a 	bl	200249c0 <HAL_PIN_SetAonPE>
20024d4c:	e00a      	b.n	20024d64 <HAL_PIN_Set_Analog+0x50>
20024d4e:	4a08      	ldr	r2, [pc, #32]	@ (20024d70 <HAL_PIN_Set_Analog+0x5c>)
20024d50:	f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
20024d54:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024d58:	f023 030e 	bic.w	r3, r3, #14
20024d5c:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20024d60:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
20024d64:	2000      	movs	r0, #0
20024d66:	bd38      	pop	{r3, r4, r5, pc}
20024d68:	4601      	mov	r1, r0
20024d6a:	2501      	movs	r5, #1
20024d6c:	e7db      	b.n	20024d26 <HAL_PIN_Set_Analog+0x12>
20024d6e:	bf00      	nop
20024d70:	500caf58 	.word	0x500caf58

20024d74 <HAL_PMU_EnableDLL>:
20024d74:	4b05      	ldr	r3, [pc, #20]	@ (20024d8c <HAL_PMU_EnableDLL+0x18>)
20024d76:	6e9a      	ldr	r2, [r3, #104]	@ 0x68
20024d78:	b120      	cbz	r0, 20024d84 <HAL_PMU_EnableDLL+0x10>
20024d7a:	f042 0220 	orr.w	r2, r2, #32
20024d7e:	2000      	movs	r0, #0
20024d80:	669a      	str	r2, [r3, #104]	@ 0x68
20024d82:	4770      	bx	lr
20024d84:	f022 0220 	bic.w	r2, r2, #32
20024d88:	e7f9      	b.n	20024d7e <HAL_PMU_EnableDLL+0xa>
20024d8a:	bf00      	nop
20024d8c:	500ca000 	.word	0x500ca000

20024d90 <HAL_RCC_HCPU_ConfigSxModeVolt>:
20024d90:	b507      	push	{r0, r1, r2, lr}
20024d92:	4a13      	ldr	r2, [pc, #76]	@ (20024de0 <HAL_RCC_HCPU_ConfigSxModeVolt+0x50>)
20024d94:	4913      	ldr	r1, [pc, #76]	@ (20024de4 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024d96:	eb02 02c0 	add.w	r2, r2, r0, lsl #3
20024d9a:	f8d1 309c 	ldr.w	r3, [r1, #156]	@ 0x9c
20024d9e:	7892      	ldrb	r2, [r2, #2]
20024da0:	2802      	cmp	r0, #2
20024da2:	f362 0303 	bfi	r3, r2, #0, #4
20024da6:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
20024daa:	f10d 0007 	add.w	r0, sp, #7
20024dae:	d111      	bne.n	20024dd4 <HAL_RCC_HCPU_ConfigSxModeVolt+0x44>
20024db0:	f007 fa9a 	bl	2002c2e8 <HAL_PMU_GetHpsysVoutRef>
20024db4:	b110      	cbz	r0, 20024dbc <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024db6:	230b      	movs	r3, #11
20024db8:	f88d 3007 	strb.w	r3, [sp, #7]
20024dbc:	4a09      	ldr	r2, [pc, #36]	@ (20024de4 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024dbe:	f89d 1007 	ldrb.w	r1, [sp, #7]
20024dc2:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20024dc6:	f361 0303 	bfi	r3, r1, #0, #4
20024dca:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20024dce:	b003      	add	sp, #12
20024dd0:	f85d fb04 	ldr.w	pc, [sp], #4
20024dd4:	f007 fa94 	bl	2002c300 <HAL_PMU_GetHpsysVoutRef2>
20024dd8:	2800      	cmp	r0, #0
20024dda:	d0ef      	beq.n	20024dbc <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024ddc:	230d      	movs	r3, #13
20024dde:	e7eb      	b.n	20024db8 <HAL_RCC_HCPU_ConfigSxModeVolt+0x28>
20024de0:	2002b808 	.word	0x2002b808
20024de4:	500ca000 	.word	0x500ca000

20024de8 <HAL_RCC_HCPU_GetClockSrc>:
20024de8:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024dec:	280d      	cmp	r0, #13
20024dee:	6a1a      	ldr	r2, [r3, #32]
20024df0:	d80d      	bhi.n	20024e0e <HAL_RCC_HCPU_GetClockSrc+0x26>
20024df2:	f642 73f1 	movw	r3, #12273	@ 0x2ff1
20024df6:	40c3      	lsrs	r3, r0
20024df8:	f013 0f01 	tst.w	r3, #1
20024dfc:	bf0c      	ite	eq
20024dfe:	2301      	moveq	r3, #1
20024e00:	2303      	movne	r3, #3
20024e02:	4083      	lsls	r3, r0
20024e04:	4013      	ands	r3, r2
20024e06:	fa23 f000 	lsr.w	r0, r3, r0
20024e0a:	b2c0      	uxtb	r0, r0
20024e0c:	4770      	bx	lr
20024e0e:	2301      	movs	r3, #1
20024e10:	e7f7      	b.n	20024e02 <HAL_RCC_HCPU_GetClockSrc+0x1a>
	...

20024e14 <HAL_RCC_HCPU_GetDLLFreq>:
20024e14:	2801      	cmp	r0, #1
20024e16:	d003      	beq.n	20024e20 <HAL_RCC_HCPU_GetDLLFreq+0xc>
20024e18:	2802      	cmp	r0, #2
20024e1a:	d00e      	beq.n	20024e3a <HAL_RCC_HCPU_GetDLLFreq+0x26>
20024e1c:	2000      	movs	r0, #0
20024e1e:	4770      	bx	lr
20024e20:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024e24:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
20024e26:	b163      	cbz	r3, 20024e42 <HAL_RCC_HCPU_GetDLLFreq+0x2e>
20024e28:	f013 0001 	ands.w	r0, r3, #1
20024e2c:	d00a      	beq.n	20024e44 <HAL_RCC_HCPU_GetDLLFreq+0x30>
20024e2e:	4806      	ldr	r0, [pc, #24]	@ (20024e48 <HAL_RCC_HCPU_GetDLLFreq+0x34>)
20024e30:	f3c3 0383 	ubfx	r3, r3, #2, #4
20024e34:	fb03 0000 	mla	r0, r3, r0, r0
20024e38:	4770      	bx	lr
20024e3a:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024e3e:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
20024e40:	e7f1      	b.n	20024e26 <HAL_RCC_HCPU_GetDLLFreq+0x12>
20024e42:	4618      	mov	r0, r3
20024e44:	4770      	bx	lr
20024e46:	bf00      	nop
20024e48:	016e3600 	.word	0x016e3600

20024e4c <HAL_RCC_HCPU_GetDLL1Freq>:
20024e4c:	2001      	movs	r0, #1
20024e4e:	f7ff bfe1 	b.w	20024e14 <HAL_RCC_HCPU_GetDLLFreq>

20024e52 <HAL_RCC_HCPU_GetDLL2Freq>:
20024e52:	2002      	movs	r0, #2
20024e54:	f7ff bfde 	b.w	20024e14 <HAL_RCC_HCPU_GetDLLFreq>

20024e58 <HAL_RCC_HCPU_GetDLL3Freq>:
20024e58:	2000      	movs	r0, #0
20024e5a:	4770      	bx	lr

20024e5c <HAL_RCC_HCPU_EnableDLL>:
20024e5c:	4b23      	ldr	r3, [pc, #140]	@ (20024eec <HAL_RCC_HCPU_EnableDLL+0x90>)
20024e5e:	f1a1 71b7 	sub.w	r1, r1, #23986176	@ 0x16e0000
20024e62:	f5a1 5158 	sub.w	r1, r1, #13824	@ 0x3600
20024e66:	4299      	cmp	r1, r3
20024e68:	b510      	push	{r4, lr}
20024e6a:	d83c      	bhi.n	20024ee6 <HAL_RCC_HCPU_EnableDLL+0x8a>
20024e6c:	2801      	cmp	r0, #1
20024e6e:	d002      	beq.n	20024e76 <HAL_RCC_HCPU_EnableDLL+0x1a>
20024e70:	2802      	cmp	r0, #2
20024e72:	d036      	beq.n	20024ee2 <HAL_RCC_HCPU_EnableDLL+0x86>
20024e74:	e7fe      	b.n	20024e74 <HAL_RCC_HCPU_EnableDLL+0x18>
20024e76:	4c1e      	ldr	r4, [pc, #120]	@ (20024ef0 <HAL_RCC_HCPU_EnableDLL+0x94>)
20024e78:	4b1e      	ldr	r3, [pc, #120]	@ (20024ef4 <HAL_RCC_HCPU_EnableDLL+0x98>)
20024e7a:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024e7e:	0790      	lsls	r0, r2, #30
20024e80:	bf58      	it	pl
20024e82:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20024e86:	f04f 0000 	mov.w	r0, #0
20024e8a:	bf5c      	itt	pl
20024e8c:	f042 0202 	orrpl.w	r2, r2, #2
20024e90:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20024e94:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024e98:	07d2      	lsls	r2, r2, #31
20024e9a:	bf5e      	ittt	pl
20024e9c:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20024ea0:	f042 0201 	orrpl.w	r2, r2, #1
20024ea4:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20024ea8:	4a13      	ldr	r2, [pc, #76]	@ (20024ef8 <HAL_RCC_HCPU_EnableDLL+0x9c>)
20024eaa:	6823      	ldr	r3, [r4, #0]
20024eac:	fbb1 f1f2 	udiv	r1, r1, r2
20024eb0:	f023 0301 	bic.w	r3, r3, #1
20024eb4:	6023      	str	r3, [r4, #0]
20024eb6:	6823      	ldr	r3, [r4, #0]
20024eb8:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
20024ebc:	f023 033c 	bic.w	r3, r3, #60	@ 0x3c
20024ec0:	ea43 0381 	orr.w	r3, r3, r1, lsl #2
20024ec4:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
20024ec8:	f043 0301 	orr.w	r3, r3, #1
20024ecc:	6023      	str	r3, [r4, #0]
20024ece:	f7fc fffa 	bl	20021ec6 <HAL_Delay_us>
20024ed2:	200a      	movs	r0, #10
20024ed4:	f7fc fff7 	bl	20021ec6 <HAL_Delay_us>
20024ed8:	6823      	ldr	r3, [r4, #0]
20024eda:	2b00      	cmp	r3, #0
20024edc:	dafc      	bge.n	20024ed8 <HAL_RCC_HCPU_EnableDLL+0x7c>
20024ede:	2000      	movs	r0, #0
20024ee0:	bd10      	pop	{r4, pc}
20024ee2:	4c06      	ldr	r4, [pc, #24]	@ (20024efc <HAL_RCC_HCPU_EnableDLL+0xa0>)
20024ee4:	e7c8      	b.n	20024e78 <HAL_RCC_HCPU_EnableDLL+0x1c>
20024ee6:	2001      	movs	r0, #1
20024ee8:	e7fa      	b.n	20024ee0 <HAL_RCC_HCPU_EnableDLL+0x84>
20024eea:	bf00      	nop
20024eec:	15752a00 	.word	0x15752a00
20024ef0:	5000002c 	.word	0x5000002c
20024ef4:	5000b000 	.word	0x5000b000
20024ef8:	016e3600 	.word	0x016e3600
20024efc:	50000030 	.word	0x50000030

20024f00 <HAL_RCC_HCPU_EnableDLL1>:
20024f00:	4601      	mov	r1, r0
20024f02:	2001      	movs	r0, #1
20024f04:	f7ff bfaa 	b.w	20024e5c <HAL_RCC_HCPU_EnableDLL>

20024f08 <HAL_RCC_HCPU_EnableDLL2>:
20024f08:	4601      	mov	r1, r0
20024f0a:	2002      	movs	r0, #2
20024f0c:	f7ff bfa6 	b.w	20024e5c <HAL_RCC_HCPU_EnableDLL>

20024f10 <HAL_RCC_HCPU_DisableDLL1>:
20024f10:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024f14:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
20024f16:	2000      	movs	r0, #0
20024f18:	f023 0301 	bic.w	r3, r3, #1
20024f1c:	62d3      	str	r3, [r2, #44]	@ 0x2c
20024f1e:	4770      	bx	lr

20024f20 <HAL_RCC_GetSysCLKFreq>:
20024f20:	2801      	cmp	r0, #1
20024f22:	d108      	bne.n	20024f36 <HAL_RCC_GetSysCLKFreq+0x16>
20024f24:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024f28:	6a1b      	ldr	r3, [r3, #32]
20024f2a:	f003 0303 	and.w	r3, r3, #3
20024f2e:	2b03      	cmp	r3, #3
20024f30:	d101      	bne.n	20024f36 <HAL_RCC_GetSysCLKFreq+0x16>
20024f32:	f7ff bf8b 	b.w	20024e4c <HAL_RCC_HCPU_GetDLL1Freq>
20024f36:	4801      	ldr	r0, [pc, #4]	@ (20024f3c <HAL_RCC_GetSysCLKFreq+0x1c>)
20024f38:	4770      	bx	lr
20024f3a:	bf00      	nop
20024f3c:	02dc6c00 	.word	0x02dc6c00

20024f40 <HAL_RCC_GetHCLKFreq>:
20024f40:	1e02      	subs	r2, r0, #0
20024f42:	bf08      	it	eq
20024f44:	2201      	moveq	r2, #1
20024f46:	b508      	push	{r3, lr}
20024f48:	4610      	mov	r0, r2
20024f4a:	f7ff ffe9 	bl	20024f20 <HAL_RCC_GetSysCLKFreq>
20024f4e:	2a01      	cmp	r2, #1
20024f50:	d002      	beq.n	20024f58 <HAL_RCC_GetHCLKFreq+0x18>
20024f52:	2a02      	cmp	r2, #2
20024f54:	d00a      	beq.n	20024f6c <HAL_RCC_GetHCLKFreq+0x2c>
20024f56:	e7fe      	b.n	20024f56 <HAL_RCC_GetHCLKFreq+0x16>
20024f58:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024f5c:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
20024f5e:	b2db      	uxtb	r3, r3
20024f60:	2b01      	cmp	r3, #1
20024f62:	bfb8      	it	lt
20024f64:	2301      	movlt	r3, #1
20024f66:	fbb0 f0f3 	udiv	r0, r0, r3
20024f6a:	bd08      	pop	{r3, pc}
20024f6c:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
20024f70:	695b      	ldr	r3, [r3, #20]
20024f72:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
20024f76:	e7f3      	b.n	20024f60 <HAL_RCC_GetHCLKFreq+0x20>

20024f78 <HAL_RCC_HCPU_ClockSelect>:
20024f78:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024f7c:	280d      	cmp	r0, #13
20024f7e:	b510      	push	{r4, lr}
20024f80:	6a1b      	ldr	r3, [r3, #32]
20024f82:	d818      	bhi.n	20024fb6 <HAL_RCC_HCPU_ClockSelect+0x3e>
20024f84:	f642 72f1 	movw	r2, #12273	@ 0x2ff1
20024f88:	40c2      	lsrs	r2, r0
20024f8a:	f012 0f01 	tst.w	r2, #1
20024f8e:	bf0c      	ite	eq
20024f90:	2201      	moveq	r2, #1
20024f92:	2203      	movne	r2, #3
20024f94:	fa02 f400 	lsl.w	r4, r2, r0
20024f98:	4011      	ands	r1, r2
20024f9a:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024f9e:	ea23 0304 	bic.w	r3, r3, r4
20024fa2:	4081      	lsls	r1, r0
20024fa4:	430b      	orrs	r3, r1
20024fa6:	6213      	str	r3, [r2, #32]
20024fa8:	b920      	cbnz	r0, 20024fb4 <HAL_RCC_HCPU_ClockSelect+0x3c>
20024faa:	2001      	movs	r0, #1
20024fac:	f7ff ffc8 	bl	20024f40 <HAL_RCC_GetHCLKFreq>
20024fb0:	4b02      	ldr	r3, [pc, #8]	@ (20024fbc <HAL_RCC_HCPU_ClockSelect+0x44>)
20024fb2:	6018      	str	r0, [r3, #0]
20024fb4:	bd10      	pop	{r4, pc}
20024fb6:	2201      	movs	r2, #1
20024fb8:	e7ec      	b.n	20024f94 <HAL_RCC_HCPU_ClockSelect+0x1c>
20024fba:	bf00      	nop
20024fbc:	20042c10 	.word	0x20042c10

20024fc0 <HAL_RCC_HCPU_SetDiv>:
20024fc0:	2800      	cmp	r0, #0
20024fc2:	bfd8      	it	le
20024fc4:	2000      	movle	r0, #0
20024fc6:	b508      	push	{r3, lr}
20024fc8:	bfcc      	ite	gt
20024fca:	23ff      	movgt	r3, #255	@ 0xff
20024fcc:	4603      	movle	r3, r0
20024fce:	2900      	cmp	r1, #0
20024fd0:	db12      	blt.n	20024ff8 <HAL_RCC_HCPU_SetDiv+0x38>
20024fd2:	2a00      	cmp	r2, #0
20024fd4:	f443 63e0 	orr.w	r3, r3, #1792	@ 0x700
20024fd8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
20024fdc:	da0e      	bge.n	20024ffc <HAL_RCC_HCPU_SetDiv+0x3c>
20024fde:	f04f 41a0 	mov.w	r1, #1342177280	@ 0x50000000
20024fe2:	6a4a      	ldr	r2, [r1, #36]	@ 0x24
20024fe4:	ea22 0303 	bic.w	r3, r2, r3
20024fe8:	4303      	orrs	r3, r0
20024fea:	624b      	str	r3, [r1, #36]	@ 0x24
20024fec:	2001      	movs	r0, #1
20024fee:	f7ff ffa7 	bl	20024f40 <HAL_RCC_GetHCLKFreq>
20024ff2:	4b07      	ldr	r3, [pc, #28]	@ (20025010 <HAL_RCC_HCPU_SetDiv+0x50>)
20024ff4:	6018      	str	r0, [r3, #0]
20024ff6:	bd08      	pop	{r3, pc}
20024ff8:	2a00      	cmp	r2, #0
20024ffa:	db04      	blt.n	20025006 <HAL_RCC_HCPU_SetDiv+0x46>
20024ffc:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20025000:	ea40 3002 	orr.w	r0, r0, r2, lsl #12
20025004:	e7eb      	b.n	20024fde <HAL_RCC_HCPU_SetDiv+0x1e>
20025006:	2b00      	cmp	r3, #0
20025008:	d0f0      	beq.n	20024fec <HAL_RCC_HCPU_SetDiv+0x2c>
2002500a:	23ff      	movs	r3, #255	@ 0xff
2002500c:	e7e7      	b.n	20024fde <HAL_RCC_HCPU_SetDiv+0x1e>
2002500e:	bf00      	nop
20025010:	20042c10 	.word	0x20042c10

20025014 <HAL_RCC_HCPU_SwitchDvfsD2S>:
20025014:	b570      	push	{r4, r5, r6, lr}
20025016:	460c      	mov	r4, r1
20025018:	4d19      	ldr	r5, [pc, #100]	@ (20025080 <HAL_RCC_HCPU_SwitchDvfsD2S+0x6c>)
2002501a:	4606      	mov	r6, r0
2002501c:	f7ff feb8 	bl	20024d90 <HAL_RCC_HCPU_ConfigSxModeVolt>
20025020:	692b      	ldr	r3, [r5, #16]
20025022:	20fa      	movs	r0, #250	@ 0xfa
20025024:	f023 0304 	bic.w	r3, r3, #4
20025028:	612b      	str	r3, [r5, #16]
2002502a:	f7fc ff4c 	bl	20021ec6 <HAL_Delay_us>
2002502e:	2c30      	cmp	r4, #48	@ 0x30
20025030:	d80d      	bhi.n	2002504e <HAL_RCC_HCPU_SwitchDvfsD2S+0x3a>
20025032:	2100      	movs	r1, #0
20025034:	4608      	mov	r0, r1
20025036:	f7ff ff9f 	bl	20024f78 <HAL_RCC_HCPU_ClockSelect>
2002503a:	2030      	movs	r0, #48	@ 0x30
2002503c:	2204      	movs	r2, #4
2002503e:	2100      	movs	r1, #0
20025040:	fbb0 f0f4 	udiv	r0, r0, r4
20025044:	f7ff ffbc 	bl	20024fc0 <HAL_RCC_HCPU_SetDiv>
20025048:	2400      	movs	r4, #0
2002504a:	4620      	mov	r0, r4
2002504c:	bd70      	pop	{r4, r5, r6, pc}
2002504e:	f7fd fd49 	bl	20022ae4 <HAL_HPAON_EnableXT48>
20025052:	480c      	ldr	r0, [pc, #48]	@ (20025084 <HAL_RCC_HCPU_SwitchDvfsD2S+0x70>)
20025054:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
20025058:	6843      	ldr	r3, [r0, #4]
2002505a:	480b      	ldr	r0, [pc, #44]	@ (20025088 <HAL_RCC_HCPU_SwitchDvfsD2S+0x74>)
2002505c:	61eb      	str	r3, [r5, #28]
2002505e:	4360      	muls	r0, r4
20025060:	f7ff ff4e 	bl	20024f00 <HAL_RCC_HCPU_EnableDLL1>
20025064:	4604      	mov	r4, r0
20025066:	2800      	cmp	r0, #0
20025068:	d1ef      	bne.n	2002504a <HAL_RCC_HCPU_SwitchDvfsD2S+0x36>
2002506a:	2101      	movs	r1, #1
2002506c:	2206      	movs	r2, #6
2002506e:	4608      	mov	r0, r1
20025070:	f7ff ffa6 	bl	20024fc0 <HAL_RCC_HCPU_SetDiv>
20025074:	2103      	movs	r1, #3
20025076:	4620      	mov	r0, r4
20025078:	f7ff ff7e 	bl	20024f78 <HAL_RCC_HCPU_ClockSelect>
2002507c:	e7e4      	b.n	20025048 <HAL_RCC_HCPU_SwitchDvfsD2S+0x34>
2002507e:	bf00      	nop
20025080:	5000b000 	.word	0x5000b000
20025084:	2002b808 	.word	0x2002b808
20025088:	000f4240 	.word	0x000f4240

2002508c <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>:
2002508c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
20025090:	4c1d      	ldr	r4, [pc, #116]	@ (20025108 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x7c>)
20025092:	4f1e      	ldr	r7, [pc, #120]	@ (2002510c <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x80>)
20025094:	eb04 02c0 	add.w	r2, r4, r0, lsl #3
20025098:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
2002509a:	7892      	ldrb	r2, [r2, #2]
2002509c:	4605      	mov	r5, r0
2002509e:	f362 5317 	bfi	r3, r2, #20, #4
200250a2:	ea4f 08c0 	mov.w	r8, r0, lsl #3
200250a6:	633b      	str	r3, [r7, #48]	@ 0x30
200250a8:	f10d 0007 	add.w	r0, sp, #7
200250ac:	460e      	mov	r6, r1
200250ae:	f007 f91b 	bl	2002c2e8 <HAL_PMU_GetHpsysVoutRef>
200250b2:	b110      	cbz	r0, 200250ba <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x2e>
200250b4:	230b      	movs	r3, #11
200250b6:	f88d 3007 	strb.w	r3, [sp, #7]
200250ba:	f89d 1007 	ldrb.w	r1, [sp, #7]
200250be:	f914 2035 	ldrsb.w	r2, [r4, r5, lsl #3]
200250c2:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
200250c4:	440a      	add	r2, r1
200250c6:	2100      	movs	r1, #0
200250c8:	f362 0385 	bfi	r3, r2, #2, #4
200250cc:	4608      	mov	r0, r1
200250ce:	64fb      	str	r3, [r7, #76]	@ 0x4c
200250d0:	f7ff ff52 	bl	20024f78 <HAL_RCC_HCPU_ClockSelect>
200250d4:	2e30      	cmp	r6, #48	@ 0x30
200250d6:	d900      	bls.n	200250da <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4e>
200250d8:	e7fe      	b.n	200250d8 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4c>
200250da:	2030      	movs	r0, #48	@ 0x30
200250dc:	2204      	movs	r2, #4
200250de:	2100      	movs	r1, #0
200250e0:	fbb0 f0f6 	udiv	r0, r0, r6
200250e4:	f7ff ff6c 	bl	20024fc0 <HAL_RCC_HCPU_SetDiv>
200250e8:	f7ff ff12 	bl	20024f10 <HAL_RCC_HCPU_DisableDLL1>
200250ec:	f7fd fd06 	bl	20022afc <HAL_HPAON_DisableXT48>
200250f0:	4444      	add	r4, r8
200250f2:	4b07      	ldr	r3, [pc, #28]	@ (20025110 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x84>)
200250f4:	6862      	ldr	r2, [r4, #4]
200250f6:	61da      	str	r2, [r3, #28]
200250f8:	691a      	ldr	r2, [r3, #16]
200250fa:	f042 0204 	orr.w	r2, r2, #4
200250fe:	611a      	str	r2, [r3, #16]
20025100:	b002      	add	sp, #8
20025102:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20025106:	bf00      	nop
20025108:	2002b808 	.word	0x2002b808
2002510c:	500ca000 	.word	0x500ca000
20025110:	5000b000 	.word	0x5000b000

20025114 <HAL_RCC_HCPU_ConfigDvfs>:
20025114:	b570      	push	{r4, r5, r6, lr}
20025116:	4e31      	ldr	r6, [pc, #196]	@ (200251dc <HAL_RCC_HCPU_ConfigDvfs+0xc8>)
20025118:	4605      	mov	r5, r0
2002511a:	7833      	ldrb	r3, [r6, #0]
2002511c:	460c      	mov	r4, r1
2002511e:	2b01      	cmp	r3, #1
20025120:	d943      	bls.n	200251aa <HAL_RCC_HCPU_ConfigDvfs+0x96>
20025122:	3b02      	subs	r3, #2
20025124:	2b01      	cmp	r3, #1
20025126:	d902      	bls.n	2002512e <HAL_RCC_HCPU_ConfigDvfs+0x1a>
20025128:	2501      	movs	r5, #1
2002512a:	4628      	mov	r0, r5
2002512c:	bd70      	pop	{r4, r5, r6, pc}
2002512e:	4b2c      	ldr	r3, [pc, #176]	@ (200251e0 <HAL_RCC_HCPU_ConfigDvfs+0xcc>)
20025130:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
20025134:	f7ff fe8d 	bl	20024e52 <HAL_RCC_HCPU_GetDLL2Freq>
20025138:	4290      	cmp	r0, r2
2002513a:	d8f5      	bhi.n	20025128 <HAL_RCC_HCPU_ConfigDvfs+0x14>
2002513c:	2901      	cmp	r1, #1
2002513e:	d805      	bhi.n	2002514c <HAL_RCC_HCPU_ConfigDvfs+0x38>
20025140:	4629      	mov	r1, r5
20025142:	4620      	mov	r0, r4
20025144:	f7ff ffa2 	bl	2002508c <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>
20025148:	2500      	movs	r5, #0
2002514a:	e035      	b.n	200251b8 <HAL_RCC_HCPU_ConfigDvfs+0xa4>
2002514c:	2100      	movs	r1, #0
2002514e:	4608      	mov	r0, r1
20025150:	f7ff ff12 	bl	20024f78 <HAL_RCC_HCPU_ClockSelect>
20025154:	4620      	mov	r0, r4
20025156:	f7ff fe1b 	bl	20024d90 <HAL_RCC_HCPU_ConfigSxModeVolt>
2002515a:	20fa      	movs	r0, #250	@ 0xfa
2002515c:	f7fc feb3 	bl	20021ec6 <HAL_Delay_us>
20025160:	f7ff fed6 	bl	20024f10 <HAL_RCC_HCPU_DisableDLL1>
20025164:	2d30      	cmp	r5, #48	@ 0x30
20025166:	d80d      	bhi.n	20025184 <HAL_RCC_HCPU_ConfigDvfs+0x70>
20025168:	f7fd fcc8 	bl	20022afc <HAL_HPAON_DisableXT48>
2002516c:	2100      	movs	r1, #0
2002516e:	4608      	mov	r0, r1
20025170:	f7ff ff02 	bl	20024f78 <HAL_RCC_HCPU_ClockSelect>
20025174:	2204      	movs	r2, #4
20025176:	2100      	movs	r1, #0
20025178:	2030      	movs	r0, #48	@ 0x30
2002517a:	fbb0 f0f5 	udiv	r0, r0, r5
2002517e:	f7ff ff1f 	bl	20024fc0 <HAL_RCC_HCPU_SetDiv>
20025182:	e7e1      	b.n	20025148 <HAL_RCC_HCPU_ConfigDvfs+0x34>
20025184:	f7fd fcae 	bl	20022ae4 <HAL_HPAON_EnableXT48>
20025188:	4816      	ldr	r0, [pc, #88]	@ (200251e4 <HAL_RCC_HCPU_ConfigDvfs+0xd0>)
2002518a:	4368      	muls	r0, r5
2002518c:	f7ff feb8 	bl	20024f00 <HAL_RCC_HCPU_EnableDLL1>
20025190:	4605      	mov	r5, r0
20025192:	2800      	cmp	r0, #0
20025194:	d1c8      	bne.n	20025128 <HAL_RCC_HCPU_ConfigDvfs+0x14>
20025196:	2101      	movs	r1, #1
20025198:	2206      	movs	r2, #6
2002519a:	4608      	mov	r0, r1
2002519c:	f7ff ff10 	bl	20024fc0 <HAL_RCC_HCPU_SetDiv>
200251a0:	2103      	movs	r1, #3
200251a2:	4628      	mov	r0, r5
200251a4:	f7ff fee8 	bl	20024f78 <HAL_RCC_HCPU_ClockSelect>
200251a8:	e7ce      	b.n	20025148 <HAL_RCC_HCPU_ConfigDvfs+0x34>
200251aa:	2901      	cmp	r1, #1
200251ac:	d909      	bls.n	200251c2 <HAL_RCC_HCPU_ConfigDvfs+0xae>
200251ae:	4601      	mov	r1, r0
200251b0:	4620      	mov	r0, r4
200251b2:	f7ff ff2f 	bl	20025014 <HAL_RCC_HCPU_SwitchDvfsD2S>
200251b6:	4605      	mov	r5, r0
200251b8:	2000      	movs	r0, #0
200251ba:	7034      	strb	r4, [r6, #0]
200251bc:	f7fc fe83 	bl	20021ec6 <HAL_Delay_us>
200251c0:	e7b3      	b.n	2002512a <HAL_RCC_HCPU_ConfigDvfs+0x16>
200251c2:	428b      	cmp	r3, r1
200251c4:	d103      	bne.n	200251ce <HAL_RCC_HCPU_ConfigDvfs+0xba>
200251c6:	f04f 32ff 	mov.w	r2, #4294967295
200251ca:	4611      	mov	r1, r2
200251cc:	e7d4      	b.n	20025178 <HAL_RCC_HCPU_ConfigDvfs+0x64>
200251ce:	2190      	movs	r1, #144	@ 0x90
200251d0:	2002      	movs	r0, #2
200251d2:	f7ff ff1f 	bl	20025014 <HAL_RCC_HCPU_SwitchDvfsD2S>
200251d6:	2800      	cmp	r0, #0
200251d8:	d1a6      	bne.n	20025128 <HAL_RCC_HCPU_ConfigDvfs+0x14>
200251da:	e7b1      	b.n	20025140 <HAL_RCC_HCPU_ConfigDvfs+0x2c>
200251dc:	20042c14 	.word	0x20042c14
200251e0:	2002b7f8 	.word	0x2002b7f8
200251e4:	000f4240 	.word	0x000f4240

200251e8 <HAL_RCC_Reset_and_Halt_LCPU>:
200251e8:	4a13      	ldr	r2, [pc, #76]	@ (20025238 <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
200251ea:	6813      	ldr	r3, [r2, #0]
200251ec:	0759      	lsls	r1, r3, #29
200251ee:	d421      	bmi.n	20025234 <HAL_RCC_Reset_and_Halt_LCPU+0x4c>
200251f0:	6811      	ldr	r1, [r2, #0]
200251f2:	2800      	cmp	r0, #0
200251f4:	bf0c      	ite	eq
200251f6:	2301      	moveq	r3, #1
200251f8:	f04f 33ff 	movne.w	r3, #4294967295
200251fc:	f041 0104 	orr.w	r1, r1, #4
20025200:	6011      	str	r1, [r2, #0]
20025202:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
20025206:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
2002520a:	6013      	str	r3, [r2, #0]
2002520c:	6811      	ldr	r1, [r2, #0]
2002520e:	2900      	cmp	r1, #0
20025210:	d0fc      	beq.n	2002520c <HAL_RCC_Reset_and_Halt_LCPU+0x24>
20025212:	4a09      	ldr	r2, [pc, #36]	@ (20025238 <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
20025214:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20025216:	06c8      	lsls	r0, r1, #27
20025218:	d506      	bpl.n	20025228 <HAL_RCC_Reset_and_Halt_LCPU+0x40>
2002521a:	6c11      	ldr	r1, [r2, #64]	@ 0x40
2002521c:	f041 0102 	orr.w	r1, r1, #2
20025220:	6411      	str	r1, [r2, #64]	@ 0x40
20025222:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20025224:	06c9      	lsls	r1, r1, #27
20025226:	d4fc      	bmi.n	20025222 <HAL_RCC_Reset_and_Halt_LCPU+0x3a>
20025228:	f04f 4180 	mov.w	r1, #1073741824	@ 0x40000000
2002522c:	680a      	ldr	r2, [r1, #0]
2002522e:	ea22 0303 	bic.w	r3, r2, r3
20025232:	600b      	str	r3, [r1, #0]
20025234:	4770      	bx	lr
20025236:	bf00      	nop
20025238:	40040000 	.word	0x40040000

2002523c <HAL_RCC_HCPU_ConfigHCLK>:
2002523c:	28f0      	cmp	r0, #240	@ 0xf0
2002523e:	d80d      	bhi.n	2002525c <HAL_RCC_HCPU_ConfigHCLK+0x20>
20025240:	2890      	cmp	r0, #144	@ 0x90
20025242:	d807      	bhi.n	20025254 <HAL_RCC_HCPU_ConfigHCLK+0x18>
20025244:	2830      	cmp	r0, #48	@ 0x30
20025246:	d807      	bhi.n	20025258 <HAL_RCC_HCPU_ConfigHCLK+0x1c>
20025248:	2818      	cmp	r0, #24
2002524a:	bf94      	ite	ls
2002524c:	2100      	movls	r1, #0
2002524e:	2101      	movhi	r1, #1
20025250:	f7ff bf60 	b.w	20025114 <HAL_RCC_HCPU_ConfigDvfs>
20025254:	2103      	movs	r1, #3
20025256:	e7fb      	b.n	20025250 <HAL_RCC_HCPU_ConfigHCLK+0x14>
20025258:	2102      	movs	r1, #2
2002525a:	e7f9      	b.n	20025250 <HAL_RCC_HCPU_ConfigHCLK+0x14>
2002525c:	2001      	movs	r0, #1
2002525e:	4770      	bx	lr

20025260 <spi_flash_get_rdid>:
20025260:	b5f0      	push	{r4, r5, r6, r7, lr}
20025262:	4605      	mov	r5, r0
20025264:	3801      	subs	r0, #1
20025266:	b2c0      	uxtb	r0, r0
20025268:	28fd      	cmp	r0, #253	@ 0xfd
2002526a:	d808      	bhi.n	2002527e <spi_flash_get_rdid+0x1e>
2002526c:	2400      	movs	r4, #0
2002526e:	4f0b      	ldr	r7, [pc, #44]	@ (2002529c <spi_flash_get_rdid+0x3c>)
20025270:	f857 0b04 	ldr.w	r0, [r7], #4
20025274:	7806      	ldrb	r6, [r0, #0]
20025276:	b926      	cbnz	r6, 20025282 <spi_flash_get_rdid+0x22>
20025278:	3401      	adds	r4, #1
2002527a:	2c06      	cmp	r4, #6
2002527c:	d1f8      	bne.n	20025270 <spi_flash_get_rdid+0x10>
2002527e:	2000      	movs	r0, #0
20025280:	e00b      	b.n	2002529a <spi_flash_get_rdid+0x3a>
20025282:	42ae      	cmp	r6, r5
20025284:	d105      	bne.n	20025292 <spi_flash_get_rdid+0x32>
20025286:	7846      	ldrb	r6, [r0, #1]
20025288:	4296      	cmp	r6, r2
2002528a:	d102      	bne.n	20025292 <spi_flash_get_rdid+0x32>
2002528c:	7886      	ldrb	r6, [r0, #2]
2002528e:	428e      	cmp	r6, r1
20025290:	d001      	beq.n	20025296 <spi_flash_get_rdid+0x36>
20025292:	3008      	adds	r0, #8
20025294:	e7ee      	b.n	20025274 <spi_flash_get_rdid+0x14>
20025296:	b103      	cbz	r3, 2002529a <spi_flash_get_rdid+0x3a>
20025298:	701c      	strb	r4, [r3, #0]
2002529a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002529c:	20042c18 	.word	0x20042c18

200252a0 <spi_flash_get_cmd_by_id>:
200252a0:	b507      	push	{r0, r1, r2, lr}
200252a2:	f10d 0307 	add.w	r3, sp, #7
200252a6:	f7ff ffdb 	bl	20025260 <spi_flash_get_rdid>
200252aa:	4b06      	ldr	r3, [pc, #24]	@ (200252c4 <spi_flash_get_cmd_by_id+0x24>)
200252ac:	b140      	cbz	r0, 200252c0 <spi_flash_get_cmd_by_id+0x20>
200252ae:	f44f 7105 	mov.w	r1, #532	@ 0x214
200252b2:	f89d 2007 	ldrb.w	r2, [sp, #7]
200252b6:	fb01 3002 	mla	r0, r1, r2, r3
200252ba:	b003      	add	sp, #12
200252bc:	f85d fb04 	ldr.w	pc, [sp], #4
200252c0:	4618      	mov	r0, r3
200252c2:	e7fa      	b.n	200252ba <spi_flash_get_cmd_by_id+0x1a>
200252c4:	20042e30 	.word	0x20042e30

200252c8 <spi_flash_get_size_by_id>:
200252c8:	b508      	push	{r3, lr}
200252ca:	2300      	movs	r3, #0
200252cc:	f7ff ffc8 	bl	20025260 <spi_flash_get_rdid>
200252d0:	b108      	cbz	r0, 200252d6 <spi_flash_get_size_by_id+0xe>
200252d2:	6840      	ldr	r0, [r0, #4]
200252d4:	bd08      	pop	{r3, pc}
200252d6:	f44f 2000 	mov.w	r0, #524288	@ 0x80000
200252da:	e7fb      	b.n	200252d4 <spi_flash_get_size_by_id+0xc>

200252dc <spi_flash_is_support_dtr>:
200252dc:	b508      	push	{r3, lr}
200252de:	2300      	movs	r3, #0
200252e0:	f7ff ffbe 	bl	20025260 <spi_flash_get_rdid>
200252e4:	b110      	cbz	r0, 200252ec <spi_flash_is_support_dtr+0x10>
200252e6:	78c0      	ldrb	r0, [r0, #3]
200252e8:	f000 0001 	and.w	r0, r0, #1
200252ec:	bd08      	pop	{r3, pc}
	...

200252f0 <spi_nand_get_rdid>:
200252f0:	b5f0      	push	{r4, r5, r6, r7, lr}
200252f2:	4605      	mov	r5, r0
200252f4:	3801      	subs	r0, #1
200252f6:	b2c0      	uxtb	r0, r0
200252f8:	28fd      	cmp	r0, #253	@ 0xfd
200252fa:	d808      	bhi.n	2002530e <spi_nand_get_rdid+0x1e>
200252fc:	2400      	movs	r4, #0
200252fe:	4f0b      	ldr	r7, [pc, #44]	@ (2002532c <spi_nand_get_rdid+0x3c>)
20025300:	f857 0b04 	ldr.w	r0, [r7], #4
20025304:	7806      	ldrb	r6, [r0, #0]
20025306:	b926      	cbnz	r6, 20025312 <spi_nand_get_rdid+0x22>
20025308:	3401      	adds	r4, #1
2002530a:	2c06      	cmp	r4, #6
2002530c:	d1f8      	bne.n	20025300 <spi_nand_get_rdid+0x10>
2002530e:	2000      	movs	r0, #0
20025310:	e00b      	b.n	2002532a <spi_nand_get_rdid+0x3a>
20025312:	42ae      	cmp	r6, r5
20025314:	d105      	bne.n	20025322 <spi_nand_get_rdid+0x32>
20025316:	7846      	ldrb	r6, [r0, #1]
20025318:	4296      	cmp	r6, r2
2002531a:	d102      	bne.n	20025322 <spi_nand_get_rdid+0x32>
2002531c:	7886      	ldrb	r6, [r0, #2]
2002531e:	428e      	cmp	r6, r1
20025320:	d001      	beq.n	20025326 <spi_nand_get_rdid+0x36>
20025322:	3008      	adds	r0, #8
20025324:	e7ee      	b.n	20025304 <spi_nand_get_rdid+0x14>
20025326:	b103      	cbz	r3, 2002532a <spi_nand_get_rdid+0x3a>
20025328:	701c      	strb	r4, [r3, #0]
2002532a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002532c:	20043aa8 	.word	0x20043aa8

20025330 <spi_nand_get_cmd_by_id>:
20025330:	b507      	push	{r0, r1, r2, lr}
20025332:	f10d 0307 	add.w	r3, sp, #7
20025336:	f7ff ffdb 	bl	200252f0 <spi_nand_get_rdid>
2002533a:	b130      	cbz	r0, 2002534a <spi_nand_get_cmd_by_id+0x1a>
2002533c:	f44f 7205 	mov.w	r2, #532	@ 0x214
20025340:	f89d 3007 	ldrb.w	r3, [sp, #7]
20025344:	4802      	ldr	r0, [pc, #8]	@ (20025350 <spi_nand_get_cmd_by_id+0x20>)
20025346:	fb02 0003 	mla	r0, r2, r3, r0
2002534a:	b003      	add	sp, #12
2002534c:	f85d fb04 	ldr.w	pc, [sp], #4
20025350:	20043c88 	.word	0x20043c88

20025354 <HAL_GET_FLASH_DEFAUT_INX>:
20025354:	f04f 30ff 	mov.w	r0, #4294967295
20025358:	4770      	bx	lr
	...

2002535c <spi_nand_get_default_ctable>:
2002535c:	b508      	push	{r3, lr}
2002535e:	f7ff fff9 	bl	20025354 <HAL_GET_FLASH_DEFAUT_INX>
20025362:	1e03      	subs	r3, r0, #0
20025364:	bfa5      	ittet	ge
20025366:	f44f 7205 	movge.w	r2, #532	@ 0x214
2002536a:	4802      	ldrge	r0, [pc, #8]	@ (20025374 <spi_nand_get_default_ctable+0x18>)
2002536c:	2000      	movlt	r0, #0
2002536e:	fb02 0003 	mlage	r0, r2, r3, r0
20025372:	bd08      	pop	{r3, pc}
20025374:	20043c88 	.word	0x20043c88

20025378 <spi_nand_get_size_by_id>:
20025378:	b508      	push	{r3, lr}
2002537a:	2300      	movs	r3, #0
2002537c:	f7ff ffb8 	bl	200252f0 <spi_nand_get_rdid>
20025380:	b108      	cbz	r0, 20025386 <spi_nand_get_size_by_id+0xe>
20025382:	6840      	ldr	r0, [r0, #4]
20025384:	bd08      	pop	{r3, pc}
20025386:	f04f 6080 	mov.w	r0, #67108864	@ 0x4000000
2002538a:	e7fb      	b.n	20025384 <spi_nand_get_size_by_id+0xc>

2002538c <spi_nand_get_plane_select_flag>:
2002538c:	b508      	push	{r3, lr}
2002538e:	2300      	movs	r3, #0
20025390:	f7ff ffae 	bl	200252f0 <spi_nand_get_rdid>
20025394:	b110      	cbz	r0, 2002539c <spi_nand_get_plane_select_flag+0x10>
20025396:	78c0      	ldrb	r0, [r0, #3]
20025398:	f3c0 0040 	ubfx	r0, r0, #1, #1
2002539c:	bd08      	pop	{r3, pc}

2002539e <spi_nand_get_big_page_flag>:
2002539e:	b508      	push	{r3, lr}
200253a0:	2300      	movs	r3, #0
200253a2:	f7ff ffa5 	bl	200252f0 <spi_nand_get_rdid>
200253a6:	b110      	cbz	r0, 200253ae <spi_nand_get_big_page_flag+0x10>
200253a8:	78c0      	ldrb	r0, [r0, #3]
200253aa:	f3c0 0081 	ubfx	r0, r0, #2, #2
200253ae:	bd08      	pop	{r3, pc}

200253b0 <spi_nand_get_ecc_mode>:
200253b0:	b508      	push	{r3, lr}
200253b2:	2300      	movs	r3, #0
200253b4:	f7ff ff9c 	bl	200252f0 <spi_nand_get_rdid>
200253b8:	b108      	cbz	r0, 200253be <spi_nand_get_ecc_mode+0xe>
200253ba:	78c0      	ldrb	r0, [r0, #3]
200253bc:	0900      	lsrs	r0, r0, #4
200253be:	bd08      	pop	{r3, pc}

200253c0 <bbm_map_check.part.0>:
200253c0:	4b21      	ldr	r3, [pc, #132]	@ (20025448 <bbm_map_check.part.0+0x88>)
200253c2:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
200253c4:	681d      	ldr	r5, [r3, #0]
200253c6:	4b21      	ldr	r3, [pc, #132]	@ (2002544c <bbm_map_check.part.0+0x8c>)
200253c8:	4606      	mov	r6, r0
200253ca:	681f      	ldr	r7, [r3, #0]
200253cc:	2300      	movs	r3, #0
200253ce:	3d04      	subs	r5, #4
200253d0:	f100 0e1a 	add.w	lr, r0, #26
200253d4:	42ab      	cmp	r3, r5
200253d6:	db02      	blt.n	200253de <bbm_map_check.part.0+0x1e>
200253d8:	2000      	movs	r0, #0
200253da:	b003      	add	sp, #12
200253dc:	bdf0      	pop	{r4, r5, r6, r7, pc}
200253de:	8b31      	ldrh	r1, [r6, #24]
200253e0:	b321      	cbz	r1, 2002542c <bbm_map_check.part.0+0x6c>
200253e2:	8b72      	ldrh	r2, [r6, #26]
200253e4:	b33a      	cbz	r2, 20025436 <bbm_map_check.part.0+0x76>
200253e6:	42b9      	cmp	r1, r7
200253e8:	d201      	bcs.n	200253ee <bbm_map_check.part.0+0x2e>
200253ea:	4297      	cmp	r7, r2
200253ec:	d905      	bls.n	200253fa <bbm_map_check.part.0+0x3a>
200253ee:	4b18      	ldr	r3, [pc, #96]	@ (20025450 <bbm_map_check.part.0+0x90>)
200253f0:	681b      	ldr	r3, [r3, #0]
200253f2:	b10b      	cbz	r3, 200253f8 <bbm_map_check.part.0+0x38>
200253f4:	4817      	ldr	r0, [pc, #92]	@ (20025454 <bbm_map_check.part.0+0x94>)
200253f6:	4798      	blx	r3
200253f8:	e7fe      	b.n	200253f8 <bbm_map_check.part.0+0x38>
200253fa:	3301      	adds	r3, #1
200253fc:	461c      	mov	r4, r3
200253fe:	42ac      	cmp	r4, r5
20025400:	db01      	blt.n	20025406 <bbm_map_check.part.0+0x46>
20025402:	3604      	adds	r6, #4
20025404:	e7e6      	b.n	200253d4 <bbm_map_check.part.0+0x14>
20025406:	f83e c024 	ldrh.w	ip, [lr, r4, lsl #2]
2002540a:	f1bc 0f00 	cmp.w	ip, #0
2002540e:	d0f8      	beq.n	20025402 <bbm_map_check.part.0+0x42>
20025410:	4562      	cmp	r2, ip
20025412:	d109      	bne.n	20025428 <bbm_map_check.part.0+0x68>
20025414:	4b0e      	ldr	r3, [pc, #56]	@ (20025450 <bbm_map_check.part.0+0x90>)
20025416:	681d      	ldr	r5, [r3, #0]
20025418:	b12d      	cbz	r5, 20025426 <bbm_map_check.part.0+0x66>
2002541a:	3406      	adds	r4, #6
2002541c:	f830 3024 	ldrh.w	r3, [r0, r4, lsl #2]
20025420:	480d      	ldr	r0, [pc, #52]	@ (20025458 <bbm_map_check.part.0+0x98>)
20025422:	9200      	str	r2, [sp, #0]
20025424:	47a8      	blx	r5
20025426:	e7fe      	b.n	20025426 <bbm_map_check.part.0+0x66>
20025428:	3401      	adds	r4, #1
2002542a:	e7e8      	b.n	200253fe <bbm_map_check.part.0+0x3e>
2002542c:	eb00 0283 	add.w	r2, r0, r3, lsl #2
20025430:	8b52      	ldrh	r2, [r2, #26]
20025432:	2a00      	cmp	r2, #0
20025434:	d0d0      	beq.n	200253d8 <bbm_map_check.part.0+0x18>
20025436:	4a06      	ldr	r2, [pc, #24]	@ (20025450 <bbm_map_check.part.0+0x90>)
20025438:	6814      	ldr	r4, [r2, #0]
2002543a:	b124      	cbz	r4, 20025446 <bbm_map_check.part.0+0x86>
2002543c:	eb00 0383 	add.w	r3, r0, r3, lsl #2
20025440:	8b5a      	ldrh	r2, [r3, #26]
20025442:	4806      	ldr	r0, [pc, #24]	@ (2002545c <bbm_map_check.part.0+0x9c>)
20025444:	47a0      	blx	r4
20025446:	e7fe      	b.n	20025446 <bbm_map_check.part.0+0x86>
20025448:	20049f9c 	.word	0x20049f9c
2002544c:	20049fa0 	.word	0x20049fa0
20025450:	20049f8c 	.word	0x20049f8c
20025454:	2002a998 	.word	0x2002a998
20025458:	2002a9b5 	.word	0x2002a9b5
2002545c:	2002aa02 	.word	0x2002aa02

20025460 <bbm_crc_check>:
20025460:	f04f 32ff 	mov.w	r2, #4294967295
20025464:	b510      	push	{r4, lr}
20025466:	4c07      	ldr	r4, [pc, #28]	@ (20025484 <bbm_crc_check+0x24>)
20025468:	4401      	add	r1, r0
2002546a:	4288      	cmp	r0, r1
2002546c:	d101      	bne.n	20025472 <bbm_crc_check+0x12>
2002546e:	43d0      	mvns	r0, r2
20025470:	bd10      	pop	{r4, pc}
20025472:	f810 3b01 	ldrb.w	r3, [r0], #1
20025476:	4053      	eors	r3, r2
20025478:	b2db      	uxtb	r3, r3
2002547a:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
2002547e:	ea83 2212 	eor.w	r2, r3, r2, lsr #8
20025482:	e7f2      	b.n	2002546a <bbm_crc_check+0xa>
20025484:	2002b828 	.word	0x2002b828

20025488 <bbm_get_phy_blk>:
20025488:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002548a:	4b14      	ldr	r3, [pc, #80]	@ (200254dc <bbm_get_phy_blk+0x54>)
2002548c:	4601      	mov	r1, r0
2002548e:	681e      	ldr	r6, [r3, #0]
20025490:	42b0      	cmp	r0, r6
20025492:	d21e      	bcs.n	200254d2 <bbm_get_phy_blk+0x4a>
20025494:	b138      	cbz	r0, 200254a6 <bbm_get_phy_blk+0x1e>
20025496:	4b12      	ldr	r3, [pc, #72]	@ (200254e0 <bbm_get_phy_blk+0x58>)
20025498:	2200      	movs	r2, #0
2002549a:	681c      	ldr	r4, [r3, #0]
2002549c:	4b11      	ldr	r3, [pc, #68]	@ (200254e4 <bbm_get_phy_blk+0x5c>)
2002549e:	3c04      	subs	r4, #4
200254a0:	461d      	mov	r5, r3
200254a2:	4294      	cmp	r4, r2
200254a4:	dc00      	bgt.n	200254a8 <bbm_get_phy_blk+0x20>
200254a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200254a8:	8b1f      	ldrh	r7, [r3, #24]
200254aa:	428f      	cmp	r7, r1
200254ac:	d10a      	bne.n	200254c4 <bbm_get_phy_blk+0x3c>
200254ae:	eb05 0582 	add.w	r5, r5, r2, lsl #2
200254b2:	8b6a      	ldrh	r2, [r5, #26]
200254b4:	4296      	cmp	r6, r2
200254b6:	dd0f      	ble.n	200254d8 <bbm_get_phy_blk+0x50>
200254b8:	4b0b      	ldr	r3, [pc, #44]	@ (200254e8 <bbm_get_phy_blk+0x60>)
200254ba:	681b      	ldr	r3, [r3, #0]
200254bc:	b10b      	cbz	r3, 200254c2 <bbm_get_phy_blk+0x3a>
200254be:	480b      	ldr	r0, [pc, #44]	@ (200254ec <bbm_get_phy_blk+0x64>)
200254c0:	4798      	blx	r3
200254c2:	e7fe      	b.n	200254c2 <bbm_get_phy_blk+0x3a>
200254c4:	b917      	cbnz	r7, 200254cc <bbm_get_phy_blk+0x44>
200254c6:	8b5f      	ldrh	r7, [r3, #26]
200254c8:	2f00      	cmp	r7, #0
200254ca:	d0ec      	beq.n	200254a6 <bbm_get_phy_blk+0x1e>
200254cc:	3201      	adds	r2, #1
200254ce:	3304      	adds	r3, #4
200254d0:	e7e7      	b.n	200254a2 <bbm_get_phy_blk+0x1a>
200254d2:	f04f 30ff 	mov.w	r0, #4294967295
200254d6:	e7e6      	b.n	200254a6 <bbm_get_phy_blk+0x1e>
200254d8:	4610      	mov	r0, r2
200254da:	e7e4      	b.n	200254a6 <bbm_get_phy_blk+0x1e>
200254dc:	20049fa0 	.word	0x20049fa0
200254e0:	20049f9c 	.word	0x20049f9c
200254e4:	20049fa4 	.word	0x20049fa4
200254e8:	20049f8c 	.word	0x20049f8c
200254ec:	2002aa20 	.word	0x2002aa20

200254f0 <bbm_get_version_inblk>:
200254f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200254f4:	4607      	mov	r7, r0
200254f6:	4688      	mov	r8, r1
200254f8:	b087      	sub	sp, #28
200254fa:	2900      	cmp	r1, #0
200254fc:	d14b      	bne.n	20025596 <bbm_get_version_inblk+0xa6>
200254fe:	2500      	movs	r5, #0
20025500:	4628      	mov	r0, r5
20025502:	b007      	add	sp, #28
20025504:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025508:	2200      	movs	r2, #0
2002550a:	e9cd 2201 	strd	r2, r2, [sp, #4]
2002550e:	4e26      	ldr	r6, [pc, #152]	@ (200255a8 <bbm_get_version_inblk+0xb8>)
20025510:	9100      	str	r1, [sp, #0]
20025512:	4638      	mov	r0, r7
20025514:	4621      	mov	r1, r4
20025516:	6833      	ldr	r3, [r6, #0]
20025518:	f7fb fb36 	bl	20020b88 <port_read_page>
2002551c:	2800      	cmp	r0, #0
2002551e:	dd32      	ble.n	20025586 <bbm_get_version_inblk+0x96>
20025520:	6832      	ldr	r2, [r6, #0]
20025522:	6813      	ldr	r3, [r2, #0]
20025524:	455b      	cmp	r3, fp
20025526:	d123      	bne.n	20025570 <bbm_get_version_inblk+0x80>
20025528:	6856      	ldr	r6, [r2, #4]
2002552a:	f3c6 061e 	ubfx	r6, r6, #0, #31
2002552e:	42ae      	cmp	r6, r5
20025530:	dd15      	ble.n	2002555e <bbm_get_version_inblk+0x6e>
20025532:	4610      	mov	r0, r2
20025534:	2110      	movs	r1, #16
20025536:	9205      	str	r2, [sp, #20]
20025538:	f7ff ff92 	bl	20025460 <bbm_crc_check>
2002553c:	9a05      	ldr	r2, [sp, #20]
2002553e:	6913      	ldr	r3, [r2, #16]
20025540:	4283      	cmp	r3, r0
20025542:	d113      	bne.n	2002556c <bbm_get_version_inblk+0x7c>
20025544:	f8c8 4000 	str.w	r4, [r8]
20025548:	4635      	mov	r5, r6
2002554a:	3401      	adds	r4, #1
2002554c:	f8da 1000 	ldr.w	r1, [sl]
20025550:	f8d9 3000 	ldr.w	r3, [r9]
20025554:	fbb3 f3f1 	udiv	r3, r3, r1
20025558:	42a3      	cmp	r3, r4
2002555a:	d8d5      	bhi.n	20025508 <bbm_get_version_inblk+0x18>
2002555c:	e7d0      	b.n	20025500 <bbm_get_version_inblk+0x10>
2002555e:	4b13      	ldr	r3, [pc, #76]	@ (200255ac <bbm_get_version_inblk+0xbc>)
20025560:	681b      	ldr	r3, [r3, #0]
20025562:	b11b      	cbz	r3, 2002556c <bbm_get_version_inblk+0x7c>
20025564:	4632      	mov	r2, r6
20025566:	4629      	mov	r1, r5
20025568:	4811      	ldr	r0, [pc, #68]	@ (200255b0 <bbm_get_version_inblk+0xc0>)
2002556a:	4798      	blx	r3
2002556c:	462e      	mov	r6, r5
2002556e:	e7eb      	b.n	20025548 <bbm_get_version_inblk+0x58>
20025570:	1c5a      	adds	r2, r3, #1
20025572:	d0c5      	beq.n	20025500 <bbm_get_version_inblk+0x10>
20025574:	4a0d      	ldr	r2, [pc, #52]	@ (200255ac <bbm_get_version_inblk+0xbc>)
20025576:	6815      	ldr	r5, [r2, #0]
20025578:	2d00      	cmp	r5, #0
2002557a:	d0c0      	beq.n	200254fe <bbm_get_version_inblk+0xe>
2002557c:	4622      	mov	r2, r4
2002557e:	4639      	mov	r1, r7
20025580:	480c      	ldr	r0, [pc, #48]	@ (200255b4 <bbm_get_version_inblk+0xc4>)
20025582:	47a8      	blx	r5
20025584:	e7bb      	b.n	200254fe <bbm_get_version_inblk+0xe>
20025586:	4b09      	ldr	r3, [pc, #36]	@ (200255ac <bbm_get_version_inblk+0xbc>)
20025588:	681b      	ldr	r3, [r3, #0]
2002558a:	2b00      	cmp	r3, #0
2002558c:	d0ee      	beq.n	2002556c <bbm_get_version_inblk+0x7c>
2002558e:	4622      	mov	r2, r4
20025590:	4639      	mov	r1, r7
20025592:	4809      	ldr	r0, [pc, #36]	@ (200255b8 <bbm_get_version_inblk+0xc8>)
20025594:	e7e9      	b.n	2002556a <bbm_get_version_inblk+0x7a>
20025596:	2400      	movs	r4, #0
20025598:	f8df a020 	ldr.w	sl, [pc, #32]	@ 200255bc <bbm_get_version_inblk+0xcc>
2002559c:	4625      	mov	r5, r4
2002559e:	f8df 9020 	ldr.w	r9, [pc, #32]	@ 200255c0 <bbm_get_version_inblk+0xd0>
200255a2:	f8df b020 	ldr.w	fp, [pc, #32]	@ 200255c4 <bbm_get_version_inblk+0xd4>
200255a6:	e7d1      	b.n	2002554c <bbm_get_version_inblk+0x5c>
200255a8:	20049f90 	.word	0x20049f90
200255ac:	20049f8c 	.word	0x20049f8c
200255b0:	2002aa3f 	.word	0x2002aa3f
200255b4:	2002aa6c 	.word	0x2002aa6c
200255b8:	2002aa9d 	.word	0x2002aa9d
200255bc:	20044900 	.word	0x20044900
200255c0:	20044904 	.word	0x20044904
200255c4:	5366424d 	.word	0x5366424d

200255c8 <bbm_get_map_table>:
200255c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200255cc:	2801      	cmp	r0, #1
200255ce:	4607      	mov	r7, r0
200255d0:	f8df b15c 	ldr.w	fp, [pc, #348]	@ 20025730 <bbm_get_map_table+0x168>
200255d4:	b087      	sub	sp, #28
200255d6:	dd0a      	ble.n	200255ee <bbm_get_map_table+0x26>
200255d8:	f8db 3000 	ldr.w	r3, [fp]
200255dc:	b91b      	cbnz	r3, 200255e6 <bbm_get_map_table+0x1e>
200255de:	2000      	movs	r0, #0
200255e0:	b007      	add	sp, #28
200255e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200255e6:	4601      	mov	r1, r0
200255e8:	4847      	ldr	r0, [pc, #284]	@ (20025708 <bbm_get_map_table+0x140>)
200255ea:	4798      	blx	r3
200255ec:	e7f7      	b.n	200255de <bbm_get_map_table+0x16>
200255ee:	f8df 8144 	ldr.w	r8, [pc, #324]	@ 20025734 <bbm_get_map_table+0x16c>
200255f2:	2800      	cmp	r0, #0
200255f4:	d163      	bne.n	200256be <bbm_get_map_table+0xf6>
200255f6:	f8b8 6000 	ldrh.w	r6, [r8]
200255fa:	f8b8 5002 	ldrh.w	r5, [r8, #2]
200255fe:	2e00      	cmp	r6, #0
20025600:	d062      	beq.n	200256c8 <bbm_get_map_table+0x100>
20025602:	4630      	mov	r0, r6
20025604:	a904      	add	r1, sp, #16
20025606:	f7ff ff73 	bl	200254f0 <bbm_get_version_inblk>
2002560a:	4681      	mov	r9, r0
2002560c:	2d00      	cmp	r5, #0
2002560e:	d05d      	beq.n	200256cc <bbm_get_map_table+0x104>
20025610:	4628      	mov	r0, r5
20025612:	a905      	add	r1, sp, #20
20025614:	f7ff ff6c 	bl	200254f0 <bbm_get_version_inblk>
20025618:	4604      	mov	r4, r0
2002561a:	f8db a000 	ldr.w	sl, [fp]
2002561e:	f1ba 0f00 	cmp.w	sl, #0
20025622:	d005      	beq.n	20025630 <bbm_get_map_table+0x68>
20025624:	4623      	mov	r3, r4
20025626:	4632      	mov	r2, r6
20025628:	4649      	mov	r1, r9
2002562a:	4838      	ldr	r0, [pc, #224]	@ (2002570c <bbm_get_map_table+0x144>)
2002562c:	9500      	str	r5, [sp, #0]
2002562e:	47d0      	blx	sl
20025630:	45a1      	cmp	r9, r4
20025632:	d0d4      	beq.n	200255de <bbm_get_map_table+0x16>
20025634:	f04f 0200 	mov.w	r2, #0
20025638:	bf98      	it	ls
2002563a:	462e      	movls	r6, r5
2002563c:	f107 0308 	add.w	r3, r7, #8
20025640:	bf94      	ite	ls
20025642:	f828 5013 	strhls.w	r5, [r8, r3, lsl #1]
20025646:	f828 6013 	strhhi.w	r6, [r8, r3, lsl #1]
2002564a:	e9cd 2201 	strd	r2, r2, [sp, #4]
2002564e:	4b30      	ldr	r3, [pc, #192]	@ (20025710 <bbm_get_map_table+0x148>)
20025650:	bf88      	it	hi
20025652:	f8dd a010 	ldrhi.w	sl, [sp, #16]
20025656:	681b      	ldr	r3, [r3, #0]
20025658:	bf98      	it	ls
2002565a:	f8dd a014 	ldrls.w	sl, [sp, #20]
2002565e:	f8df 80d8 	ldr.w	r8, [pc, #216]	@ 20025738 <bbm_get_map_table+0x170>
20025662:	9300      	str	r3, [sp, #0]
20025664:	4651      	mov	r1, sl
20025666:	4630      	mov	r0, r6
20025668:	f8d8 3000 	ldr.w	r3, [r8]
2002566c:	bf88      	it	hi
2002566e:	464c      	movhi	r4, r9
20025670:	f7fb fa8a 	bl	20020b88 <port_read_page>
20025674:	2800      	cmp	r0, #0
20025676:	f8db 5000 	ldr.w	r5, [fp]
2002567a:	dd38      	ble.n	200256ee <bbm_get_map_table+0x126>
2002567c:	f8d8 8000 	ldr.w	r8, [r8]
20025680:	4b24      	ldr	r3, [pc, #144]	@ (20025714 <bbm_get_map_table+0x14c>)
20025682:	f8d8 2000 	ldr.w	r2, [r8]
20025686:	429a      	cmp	r2, r3
20025688:	d12b      	bne.n	200256e2 <bbm_get_map_table+0x11a>
2002568a:	2110      	movs	r1, #16
2002568c:	4640      	mov	r0, r8
2002568e:	f7ff fee7 	bl	20025460 <bbm_crc_check>
20025692:	f8d8 2010 	ldr.w	r2, [r8, #16]
20025696:	4601      	mov	r1, r0
20025698:	4282      	cmp	r2, r0
2002569a:	d11e      	bne.n	200256da <bbm_get_map_table+0x112>
2002569c:	f8d8 1004 	ldr.w	r1, [r8, #4]
200256a0:	f3c1 011e 	ubfx	r1, r1, #0, #31
200256a4:	42a1      	cmp	r1, r4
200256a6:	d113      	bne.n	200256d0 <bbm_get_map_table+0x108>
200256a8:	f44f 7202 	mov.w	r2, #520	@ 0x208
200256ac:	481a      	ldr	r0, [pc, #104]	@ (20025718 <bbm_get_map_table+0x150>)
200256ae:	4641      	mov	r1, r8
200256b0:	fb02 0007 	mla	r0, r2, r7, r0
200256b4:	f005 f896 	bl	2002a7e4 <memcpy>
200256b8:	bb0d      	cbnz	r5, 200256fe <bbm_get_map_table+0x136>
200256ba:	4620      	mov	r0, r4
200256bc:	e790      	b.n	200255e0 <bbm_get_map_table+0x18>
200256be:	f8b8 6004 	ldrh.w	r6, [r8, #4]
200256c2:	f8b8 5006 	ldrh.w	r5, [r8, #6]
200256c6:	e79a      	b.n	200255fe <bbm_get_map_table+0x36>
200256c8:	46b1      	mov	r9, r6
200256ca:	e79f      	b.n	2002560c <bbm_get_map_table+0x44>
200256cc:	462c      	mov	r4, r5
200256ce:	e7a4      	b.n	2002561a <bbm_get_map_table+0x52>
200256d0:	b115      	cbz	r5, 200256d8 <bbm_get_map_table+0x110>
200256d2:	4622      	mov	r2, r4
200256d4:	4811      	ldr	r0, [pc, #68]	@ (2002571c <bbm_get_map_table+0x154>)
200256d6:	47a8      	blx	r5
200256d8:	e7fe      	b.n	200256d8 <bbm_get_map_table+0x110>
200256da:	b10d      	cbz	r5, 200256e0 <bbm_get_map_table+0x118>
200256dc:	4810      	ldr	r0, [pc, #64]	@ (20025720 <bbm_get_map_table+0x158>)
200256de:	47a8      	blx	r5
200256e0:	e7fe      	b.n	200256e0 <bbm_get_map_table+0x118>
200256e2:	b11d      	cbz	r5, 200256ec <bbm_get_map_table+0x124>
200256e4:	4652      	mov	r2, sl
200256e6:	4631      	mov	r1, r6
200256e8:	480e      	ldr	r0, [pc, #56]	@ (20025724 <bbm_get_map_table+0x15c>)
200256ea:	47a8      	blx	r5
200256ec:	e7fe      	b.n	200256ec <bbm_get_map_table+0x124>
200256ee:	2d00      	cmp	r5, #0
200256f0:	f43f af75 	beq.w	200255de <bbm_get_map_table+0x16>
200256f4:	4652      	mov	r2, sl
200256f6:	4631      	mov	r1, r6
200256f8:	480b      	ldr	r0, [pc, #44]	@ (20025728 <bbm_get_map_table+0x160>)
200256fa:	47a8      	blx	r5
200256fc:	e76f      	b.n	200255de <bbm_get_map_table+0x16>
200256fe:	4621      	mov	r1, r4
20025700:	480a      	ldr	r0, [pc, #40]	@ (2002572c <bbm_get_map_table+0x164>)
20025702:	47a8      	blx	r5
20025704:	e7d9      	b.n	200256ba <bbm_get_map_table+0xf2>
20025706:	bf00      	nop
20025708:	2002aabb 	.word	0x2002aabb
2002570c:	2002aacf 	.word	0x2002aacf
20025710:	20044900 	.word	0x20044900
20025714:	5366424d 	.word	0x5366424d
20025718:	20049fa4 	.word	0x20049fa4
2002571c:	2002aaf5 	.word	0x2002aaf5
20025720:	2002ab3f 	.word	0x2002ab3f
20025724:	2002ab51 	.word	0x2002ab51
20025728:	2002ab86 	.word	0x2002ab86
2002572c:	2002abb2 	.word	0x2002abb2
20025730:	20049f8c 	.word	0x20049f8c
20025734:	2004a3b4 	.word	0x2004a3b4
20025738:	20049f90 	.word	0x20049f90

2002573c <bbm_get_page_num>:
2002573c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20025740:	4605      	mov	r5, r0
20025742:	2400      	movs	r4, #0
20025744:	4f13      	ldr	r7, [pc, #76]	@ (20025794 <bbm_get_page_num+0x58>)
20025746:	4e14      	ldr	r6, [pc, #80]	@ (20025798 <bbm_get_page_num+0x5c>)
20025748:	f8df 8050 	ldr.w	r8, [pc, #80]	@ 2002579c <bbm_get_page_num+0x60>
2002574c:	b085      	sub	sp, #20
2002574e:	6839      	ldr	r1, [r7, #0]
20025750:	6833      	ldr	r3, [r6, #0]
20025752:	fbb3 f3f1 	udiv	r3, r3, r1
20025756:	42a3      	cmp	r3, r4
20025758:	d802      	bhi.n	20025760 <bbm_get_page_num+0x24>
2002575a:	f04f 34ff 	mov.w	r4, #4294967295
2002575e:	e015      	b.n	2002578c <bbm_get_page_num+0x50>
20025760:	2200      	movs	r2, #0
20025762:	e9cd 2201 	strd	r2, r2, [sp, #4]
20025766:	f8df 9038 	ldr.w	r9, [pc, #56]	@ 200257a0 <bbm_get_page_num+0x64>
2002576a:	9100      	str	r1, [sp, #0]
2002576c:	4628      	mov	r0, r5
2002576e:	4621      	mov	r1, r4
20025770:	f8d9 3000 	ldr.w	r3, [r9]
20025774:	f7fb fa08 	bl	20020b88 <port_read_page>
20025778:	b120      	cbz	r0, 20025784 <bbm_get_page_num+0x48>
2002577a:	f8d9 3000 	ldr.w	r3, [r9]
2002577e:	681b      	ldr	r3, [r3, #0]
20025780:	4543      	cmp	r3, r8
20025782:	d101      	bne.n	20025788 <bbm_get_page_num+0x4c>
20025784:	3401      	adds	r4, #1
20025786:	e7e2      	b.n	2002574e <bbm_get_page_num+0x12>
20025788:	3301      	adds	r3, #1
2002578a:	d1fb      	bne.n	20025784 <bbm_get_page_num+0x48>
2002578c:	4620      	mov	r0, r4
2002578e:	b005      	add	sp, #20
20025790:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20025794:	20044900 	.word	0x20044900
20025798:	20044904 	.word	0x20044904
2002579c:	5366424d 	.word	0x5366424d
200257a0:	20049f90 	.word	0x20049f90

200257a4 <bbm_read_page>:
200257a4:	b5f0      	push	{r4, r5, r6, r7, lr}
200257a6:	4604      	mov	r4, r0
200257a8:	b085      	sub	sp, #20
200257aa:	b280      	uxth	r0, r0
200257ac:	461f      	mov	r7, r3
200257ae:	460d      	mov	r5, r1
200257b0:	4616      	mov	r6, r2
200257b2:	f7ff fe69 	bl	20025488 <bbm_get_phy_blk>
200257b6:	1c43      	adds	r3, r0, #1
200257b8:	d108      	bne.n	200257cc <bbm_read_page+0x28>
200257ba:	4b0a      	ldr	r3, [pc, #40]	@ (200257e4 <bbm_read_page+0x40>)
200257bc:	681b      	ldr	r3, [r3, #0]
200257be:	b113      	cbz	r3, 200257c6 <bbm_read_page+0x22>
200257c0:	4621      	mov	r1, r4
200257c2:	4809      	ldr	r0, [pc, #36]	@ (200257e8 <bbm_read_page+0x44>)
200257c4:	4798      	blx	r3
200257c6:	2000      	movs	r0, #0
200257c8:	b005      	add	sp, #20
200257ca:	bdf0      	pop	{r4, r5, r6, r7, pc}
200257cc:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
200257ce:	4632      	mov	r2, r6
200257d0:	9302      	str	r3, [sp, #8]
200257d2:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200257d4:	4629      	mov	r1, r5
200257d6:	9301      	str	r3, [sp, #4]
200257d8:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200257da:	9300      	str	r3, [sp, #0]
200257dc:	463b      	mov	r3, r7
200257de:	f7fb f9d3 	bl	20020b88 <port_read_page>
200257e2:	e7f1      	b.n	200257c8 <bbm_read_page+0x24>
200257e4:	20049f8c 	.word	0x20049f8c
200257e8:	2002abc5 	.word	0x2002abc5

200257ec <port_write_page>:
200257ec:	4b01      	ldr	r3, [pc, #4]	@ (200257f4 <port_write_page+0x8>)
200257ee:	6818      	ldr	r0, [r3, #0]
200257f0:	4770      	bx	lr
200257f2:	bf00      	nop
200257f4:	20044900 	.word	0x20044900

200257f8 <bbm_write_talbe.isra.0>:
200257f8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
200257fa:	4604      	mov	r4, r0
200257fc:	4608      	mov	r0, r1
200257fe:	460e      	mov	r6, r1
20025800:	f7ff ff9c 	bl	2002573c <bbm_get_page_num>
20025804:	1e05      	subs	r5, r0, #0
20025806:	db25      	blt.n	20025854 <bbm_write_talbe.isra.0+0x5c>
20025808:	4b13      	ldr	r3, [pc, #76]	@ (20025858 <bbm_write_talbe.isra.0+0x60>)
2002580a:	681a      	ldr	r2, [r3, #0]
2002580c:	4b13      	ldr	r3, [pc, #76]	@ (2002585c <bbm_write_talbe.isra.0+0x64>)
2002580e:	681b      	ldr	r3, [r3, #0]
20025810:	fbb3 f3f2 	udiv	r3, r3, r2
20025814:	429d      	cmp	r5, r3
20025816:	da1d      	bge.n	20025854 <bbm_write_talbe.isra.0+0x5c>
20025818:	4f11      	ldr	r7, [pc, #68]	@ (20025860 <bbm_write_talbe.isra.0+0x68>)
2002581a:	21ff      	movs	r1, #255	@ 0xff
2002581c:	6838      	ldr	r0, [r7, #0]
2002581e:	f004 ffc7 	bl	2002a7b0 <memset>
20025822:	4264      	negs	r4, r4
20025824:	490f      	ldr	r1, [pc, #60]	@ (20025864 <bbm_write_talbe.isra.0+0x6c>)
20025826:	f404 7402 	and.w	r4, r4, #520	@ 0x208
2002582a:	f44f 7202 	mov.w	r2, #520	@ 0x208
2002582e:	6838      	ldr	r0, [r7, #0]
20025830:	4421      	add	r1, r4
20025832:	f004 ffd7 	bl	2002a7e4 <memcpy>
20025836:	6838      	ldr	r0, [r7, #0]
20025838:	b160      	cbz	r0, 20025854 <bbm_write_talbe.isra.0+0x5c>
2002583a:	6802      	ldr	r2, [r0, #0]
2002583c:	4b0a      	ldr	r3, [pc, #40]	@ (20025868 <bbm_write_talbe.isra.0+0x70>)
2002583e:	429a      	cmp	r2, r3
20025840:	d108      	bne.n	20025854 <bbm_write_talbe.isra.0+0x5c>
20025842:	f7ff fdbd 	bl	200253c0 <bbm_map_check.part.0>
20025846:	2300      	movs	r3, #0
20025848:	9300      	str	r3, [sp, #0]
2002584a:	4629      	mov	r1, r5
2002584c:	4630      	mov	r0, r6
2002584e:	683a      	ldr	r2, [r7, #0]
20025850:	f7ff ffcc 	bl	200257ec <port_write_page>
20025854:	b003      	add	sp, #12
20025856:	bdf0      	pop	{r4, r5, r6, r7, pc}
20025858:	20044900 	.word	0x20044900
2002585c:	20044904 	.word	0x20044904
20025860:	20049f90 	.word	0x20049f90
20025864:	20049fa4 	.word	0x20049fa4
20025868:	5366424d 	.word	0x5366424d

2002586c <port_erase_block>:
2002586c:	2000      	movs	r0, #0
2002586e:	4770      	bx	lr

20025870 <bbm_init_table>:
20025870:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025874:	4c7d      	ldr	r4, [pc, #500]	@ (20025a6c <bbm_init_table+0x1fc>)
20025876:	4b7e      	ldr	r3, [pc, #504]	@ (20025a70 <bbm_init_table+0x200>)
20025878:	6822      	ldr	r2, [r4, #0]
2002587a:	b085      	sub	sp, #20
2002587c:	429a      	cmp	r2, r3
2002587e:	f000 80ef 	beq.w	20025a60 <bbm_init_table+0x1f0>
20025882:	f8d4 2208 	ldr.w	r2, [r4, #520]	@ 0x208
20025886:	429a      	cmp	r2, r3
20025888:	f000 80ea 	beq.w	20025a60 <bbm_init_table+0x1f0>
2002588c:	6023      	str	r3, [r4, #0]
2002588e:	2301      	movs	r3, #1
20025890:	6063      	str	r3, [r4, #4]
20025892:	2300      	movs	r3, #0
20025894:	f8df 9210 	ldr.w	r9, [pc, #528]	@ 20025aa8 <bbm_init_table+0x238>
20025898:	8123      	strh	r3, [r4, #8]
2002589a:	f8d9 3000 	ldr.w	r3, [r9]
2002589e:	4f75      	ldr	r7, [pc, #468]	@ (20025a74 <bbm_init_table+0x204>)
200258a0:	3b04      	subs	r3, #4
200258a2:	f8df a208 	ldr.w	sl, [pc, #520]	@ 20025aac <bbm_init_table+0x23c>
200258a6:	8163      	strh	r3, [r4, #10]
200258a8:	683b      	ldr	r3, [r7, #0]
200258aa:	f8da 5000 	ldr.w	r5, [sl]
200258ae:	3b01      	subs	r3, #1
200258b0:	4e71      	ldr	r6, [pc, #452]	@ (20025a78 <bbm_init_table+0x208>)
200258b2:	81a3      	strh	r3, [r4, #12]
200258b4:	81e5      	strh	r5, [r4, #14]
200258b6:	683b      	ldr	r3, [r7, #0]
200258b8:	429d      	cmp	r5, r3
200258ba:	db10      	blt.n	200258de <bbm_init_table+0x6e>
200258bc:	2500      	movs	r5, #0
200258be:	46a8      	mov	r8, r5
200258c0:	f8df b1b4 	ldr.w	fp, [pc, #436]	@ 20025a78 <bbm_init_table+0x208>
200258c4:	f8da 6000 	ldr.w	r6, [sl]
200258c8:	42b5      	cmp	r5, r6
200258ca:	db20      	blt.n	2002590e <bbm_init_table+0x9e>
200258cc:	8963      	ldrh	r3, [r4, #10]
200258ce:	2b00      	cmp	r3, #0
200258d0:	d14d      	bne.n	2002596e <bbm_init_table+0xfe>
200258d2:	4b69      	ldr	r3, [pc, #420]	@ (20025a78 <bbm_init_table+0x208>)
200258d4:	681b      	ldr	r3, [r3, #0]
200258d6:	b10b      	cbz	r3, 200258dc <bbm_init_table+0x6c>
200258d8:	4868      	ldr	r0, [pc, #416]	@ (20025a7c <bbm_init_table+0x20c>)
200258da:	4798      	blx	r3
200258dc:	e7fe      	b.n	200258dc <bbm_init_table+0x6c>
200258de:	4628      	mov	r0, r5
200258e0:	f7fb f9ce 	bl	20020c80 <bbm_get_bb>
200258e4:	b968      	cbnz	r0, 20025902 <bbm_init_table+0x92>
200258e6:	4628      	mov	r0, r5
200258e8:	f7ff ffc0 	bl	2002586c <port_erase_block>
200258ec:	b138      	cbz	r0, 200258fe <bbm_init_table+0x8e>
200258ee:	6833      	ldr	r3, [r6, #0]
200258f0:	b113      	cbz	r3, 200258f8 <bbm_init_table+0x88>
200258f2:	4629      	mov	r1, r5
200258f4:	4862      	ldr	r0, [pc, #392]	@ (20025a80 <bbm_init_table+0x210>)
200258f6:	4798      	blx	r3
200258f8:	8963      	ldrh	r3, [r4, #10]
200258fa:	3b01      	subs	r3, #1
200258fc:	8163      	strh	r3, [r4, #10]
200258fe:	3501      	adds	r5, #1
20025900:	e7d9      	b.n	200258b6 <bbm_init_table+0x46>
20025902:	6833      	ldr	r3, [r6, #0]
20025904:	2b00      	cmp	r3, #0
20025906:	d0f7      	beq.n	200258f8 <bbm_init_table+0x88>
20025908:	4629      	mov	r1, r5
2002590a:	485e      	ldr	r0, [pc, #376]	@ (20025a84 <bbm_init_table+0x214>)
2002590c:	e7f3      	b.n	200258f6 <bbm_init_table+0x86>
2002590e:	4628      	mov	r0, r5
20025910:	f7fb f9b6 	bl	20020c80 <bbm_get_bb>
20025914:	b348      	cbz	r0, 2002596a <bbm_init_table+0xfa>
20025916:	f8db 3000 	ldr.w	r3, [fp]
2002591a:	b113      	cbz	r3, 20025922 <bbm_init_table+0xb2>
2002591c:	4629      	mov	r1, r5
2002591e:	485a      	ldr	r0, [pc, #360]	@ (20025a88 <bbm_init_table+0x218>)
20025920:	4798      	blx	r3
20025922:	89a0      	ldrh	r0, [r4, #12]
20025924:	f7fb f9ac 	bl	20020c80 <bbm_get_bb>
20025928:	89a3      	ldrh	r3, [r4, #12]
2002592a:	4606      	mov	r6, r0
2002592c:	3b01      	subs	r3, #1
2002592e:	81a3      	strh	r3, [r4, #12]
20025930:	8963      	ldrh	r3, [r4, #10]
20025932:	3b01      	subs	r3, #1
20025934:	b29b      	uxth	r3, r3
20025936:	8163      	strh	r3, [r4, #10]
20025938:	b108      	cbz	r0, 2002593e <bbm_init_table+0xce>
2002593a:	2b00      	cmp	r3, #0
2002593c:	d1f1      	bne.n	20025922 <bbm_init_table+0xb2>
2002593e:	f8db 3000 	ldr.w	r3, [fp]
20025942:	b11b      	cbz	r3, 2002594c <bbm_init_table+0xdc>
20025944:	4642      	mov	r2, r8
20025946:	4629      	mov	r1, r5
20025948:	4850      	ldr	r0, [pc, #320]	@ (20025a8c <bbm_init_table+0x21c>)
2002594a:	4798      	blx	r3
2002594c:	b946      	cbnz	r6, 20025960 <bbm_init_table+0xf0>
2002594e:	89a2      	ldrh	r2, [r4, #12]
20025950:	f108 0306 	add.w	r3, r8, #6
20025954:	f824 5023 	strh.w	r5, [r4, r3, lsl #2]
20025958:	3201      	adds	r2, #1
2002595a:	eb04 0383 	add.w	r3, r4, r3, lsl #2
2002595e:	805a      	strh	r2, [r3, #2]
20025960:	8923      	ldrh	r3, [r4, #8]
20025962:	f108 0801 	add.w	r8, r8, #1
20025966:	3301      	adds	r3, #1
20025968:	8123      	strh	r3, [r4, #8]
2002596a:	3501      	adds	r5, #1
2002596c:	e7aa      	b.n	200258c4 <bbm_init_table+0x54>
2002596e:	2110      	movs	r1, #16
20025970:	483e      	ldr	r0, [pc, #248]	@ (20025a6c <bbm_init_table+0x1fc>)
20025972:	f7ff fd75 	bl	20025460 <bbm_crc_check>
20025976:	f8d9 1000 	ldr.w	r1, [r9]
2002597a:	6120      	str	r0, [r4, #16]
2002597c:	3904      	subs	r1, #4
2002597e:	0089      	lsls	r1, r1, #2
20025980:	4843      	ldr	r0, [pc, #268]	@ (20025a90 <bbm_init_table+0x220>)
20025982:	f7ff fd6d 	bl	20025460 <bbm_crc_check>
20025986:	f44f 7202 	mov.w	r2, #520	@ 0x208
2002598a:	4938      	ldr	r1, [pc, #224]	@ (20025a6c <bbm_init_table+0x1fc>)
2002598c:	6160      	str	r0, [r4, #20]
2002598e:	1888      	adds	r0, r1, r2
20025990:	f004 ff28 	bl	2002a7e4 <memcpy>
20025994:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025998:	2110      	movs	r1, #16
2002599a:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
2002599e:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
200259a2:	483c      	ldr	r0, [pc, #240]	@ (20025a94 <bbm_init_table+0x224>)
200259a4:	f7ff fd5c 	bl	20025460 <bbm_crc_check>
200259a8:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
200259ac:	2400      	movs	r4, #0
200259ae:	f8df 9100 	ldr.w	r9, [pc, #256]	@ 20025ab0 <bbm_init_table+0x240>
200259b2:	f8df 8100 	ldr.w	r8, [pc, #256]	@ 20025ab4 <bbm_init_table+0x244>
200259b6:	683b      	ldr	r3, [r7, #0]
200259b8:	429e      	cmp	r6, r3
200259ba:	db08      	blt.n	200259ce <bbm_init_table+0x15e>
200259bc:	2c03      	cmp	r4, #3
200259be:	dc30      	bgt.n	20025a22 <bbm_init_table+0x1b2>
200259c0:	4b2d      	ldr	r3, [pc, #180]	@ (20025a78 <bbm_init_table+0x208>)
200259c2:	681b      	ldr	r3, [r3, #0]
200259c4:	b113      	cbz	r3, 200259cc <bbm_init_table+0x15c>
200259c6:	4621      	mov	r1, r4
200259c8:	4833      	ldr	r0, [pc, #204]	@ (20025a98 <bbm_init_table+0x228>)
200259ca:	4798      	blx	r3
200259cc:	e7fe      	b.n	200259cc <bbm_init_table+0x15c>
200259ce:	4630      	mov	r0, r6
200259d0:	f7fb f956 	bl	20020c80 <bbm_get_bb>
200259d4:	4605      	mov	r5, r0
200259d6:	bb10      	cbnz	r0, 20025a1e <bbm_init_table+0x1ae>
200259d8:	f8d9 a000 	ldr.w	sl, [r9]
200259dc:	21ff      	movs	r1, #255	@ 0xff
200259de:	4652      	mov	r2, sl
200259e0:	f8d8 0000 	ldr.w	r0, [r8]
200259e4:	f004 fee4 	bl	2002a7b0 <memset>
200259e8:	e9cd 5501 	strd	r5, r5, [sp, #4]
200259ec:	f8cd a000 	str.w	sl, [sp]
200259f0:	f8d8 3000 	ldr.w	r3, [r8]
200259f4:	462a      	mov	r2, r5
200259f6:	4629      	mov	r1, r5
200259f8:	4630      	mov	r0, r6
200259fa:	f7fb f8c5 	bl	20020b88 <port_read_page>
200259fe:	f8d9 3000 	ldr.w	r3, [r9]
20025a02:	4298      	cmp	r0, r3
20025a04:	d109      	bne.n	20025a1a <bbm_init_table+0x1aa>
20025a06:	f8d8 3000 	ldr.w	r3, [r8]
20025a0a:	681b      	ldr	r3, [r3, #0]
20025a0c:	3301      	adds	r3, #1
20025a0e:	bf01      	itttt	eq
20025a10:	4b22      	ldreq	r3, [pc, #136]	@ (20025a9c <bbm_init_table+0x22c>)
20025a12:	1d22      	addeq	r2, r4, #4
20025a14:	f823 6012 	strheq.w	r6, [r3, r2, lsl #1]
20025a18:	3401      	addeq	r4, #1
20025a1a:	2c03      	cmp	r4, #3
20025a1c:	dc01      	bgt.n	20025a22 <bbm_init_table+0x1b2>
20025a1e:	3601      	adds	r6, #1
20025a20:	e7c9      	b.n	200259b6 <bbm_init_table+0x146>
20025a22:	2500      	movs	r5, #0
20025a24:	4c1d      	ldr	r4, [pc, #116]	@ (20025a9c <bbm_init_table+0x22c>)
20025a26:	2000      	movs	r0, #0
20025a28:	8921      	ldrh	r1, [r4, #8]
20025a2a:	f7ff fee5 	bl	200257f8 <bbm_write_talbe.isra.0>
20025a2e:	8923      	ldrh	r3, [r4, #8]
20025a30:	2001      	movs	r0, #1
20025a32:	8961      	ldrh	r1, [r4, #10]
20025a34:	8023      	strh	r3, [r4, #0]
20025a36:	8223      	strh	r3, [r4, #16]
20025a38:	8125      	strh	r5, [r4, #8]
20025a3a:	f7ff fedd 	bl	200257f8 <bbm_write_talbe.isra.0>
20025a3e:	8963      	ldrh	r3, [r4, #10]
20025a40:	8165      	strh	r5, [r4, #10]
20025a42:	80a3      	strh	r3, [r4, #4]
20025a44:	8263      	strh	r3, [r4, #18]
20025a46:	89a3      	ldrh	r3, [r4, #12]
20025a48:	8063      	strh	r3, [r4, #2]
20025a4a:	89e3      	ldrh	r3, [r4, #14]
20025a4c:	80e3      	strh	r3, [r4, #6]
20025a4e:	4b0a      	ldr	r3, [pc, #40]	@ (20025a78 <bbm_init_table+0x208>)
20025a50:	681b      	ldr	r3, [r3, #0]
20025a52:	b10b      	cbz	r3, 20025a58 <bbm_init_table+0x1e8>
20025a54:	4812      	ldr	r0, [pc, #72]	@ (20025aa0 <bbm_init_table+0x230>)
20025a56:	4798      	blx	r3
20025a58:	2000      	movs	r0, #0
20025a5a:	b005      	add	sp, #20
20025a5c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025a60:	4b05      	ldr	r3, [pc, #20]	@ (20025a78 <bbm_init_table+0x208>)
20025a62:	681b      	ldr	r3, [r3, #0]
20025a64:	b10b      	cbz	r3, 20025a6a <bbm_init_table+0x1fa>
20025a66:	480f      	ldr	r0, [pc, #60]	@ (20025aa4 <bbm_init_table+0x234>)
20025a68:	4798      	blx	r3
20025a6a:	e7fe      	b.n	20025a6a <bbm_init_table+0x1fa>
20025a6c:	20049fa4 	.word	0x20049fa4
20025a70:	5366424d 	.word	0x5366424d
20025a74:	20049f98 	.word	0x20049f98
20025a78:	20049f8c 	.word	0x20049f8c
20025a7c:	2002ac5a 	.word	0x2002ac5a
20025a80:	2002abe8 	.word	0x2002abe8
20025a84:	2002ac0a 	.word	0x2002ac0a
20025a88:	2002ac27 	.word	0x2002ac27
20025a8c:	2002ac46 	.word	0x2002ac46
20025a90:	20049fbc 	.word	0x20049fbc
20025a94:	2004a1ac 	.word	0x2004a1ac
20025a98:	2002ac74 	.word	0x2002ac74
20025a9c:	2004a3b4 	.word	0x2004a3b4
20025aa0:	2002ac9b 	.word	0x2002ac9b
20025aa4:	2002acb7 	.word	0x2002acb7
20025aa8:	20049f9c 	.word	0x20049f9c
20025aac:	20049fa0 	.word	0x20049fa0
20025ab0:	20044900 	.word	0x20044900
20025ab4:	20049f90 	.word	0x20049f90

20025ab8 <sif_bbm_init>:
20025ab8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025abc:	b087      	sub	sp, #28
20025abe:	2900      	cmp	r1, #0
20025ac0:	f000 8129 	beq.w	20025d16 <sif_bbm_init+0x25e>
20025ac4:	4b95      	ldr	r3, [pc, #596]	@ (20025d1c <sif_bbm_init+0x264>)
20025ac6:	681a      	ldr	r2, [r3, #0]
20025ac8:	2a01      	cmp	r2, #1
20025aca:	d108      	bne.n	20025ade <sif_bbm_init+0x26>
20025acc:	4b94      	ldr	r3, [pc, #592]	@ (20025d20 <sif_bbm_init+0x268>)
20025ace:	681b      	ldr	r3, [r3, #0]
20025ad0:	b10b      	cbz	r3, 20025ad6 <sif_bbm_init+0x1e>
20025ad2:	4894      	ldr	r0, [pc, #592]	@ (20025d24 <sif_bbm_init+0x26c>)
20025ad4:	4798      	blx	r3
20025ad6:	2000      	movs	r0, #0
20025ad8:	b007      	add	sp, #28
20025ada:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025ade:	2201      	movs	r2, #1
20025ae0:	601a      	str	r2, [r3, #0]
20025ae2:	4b91      	ldr	r3, [pc, #580]	@ (20025d28 <sif_bbm_init+0x270>)
20025ae4:	681c      	ldr	r4, [r3, #0]
20025ae6:	b904      	cbnz	r4, 20025aea <sif_bbm_init+0x32>
20025ae8:	e7fe      	b.n	20025ae8 <sif_bbm_init+0x30>
20025aea:	f8df a27c 	ldr.w	sl, [pc, #636]	@ 20025d68 <sif_bbm_init+0x2b0>
20025aee:	f8da 2000 	ldr.w	r2, [sl]
20025af2:	b902      	cbnz	r2, 20025af6 <sif_bbm_init+0x3e>
20025af4:	e7fe      	b.n	20025af4 <sif_bbm_init+0x3c>
20025af6:	fbb0 f4f4 	udiv	r4, r0, r4
20025afa:	f04f 0800 	mov.w	r8, #0
20025afe:	4a8b      	ldr	r2, [pc, #556]	@ (20025d2c <sif_bbm_init+0x274>)
20025b00:	f8df b268 	ldr.w	fp, [pc, #616]	@ 20025d6c <sif_bbm_init+0x2b4>
20025b04:	0963      	lsrs	r3, r4, #5
20025b06:	f8df 9268 	ldr.w	r9, [pc, #616]	@ 20025d70 <sif_bbm_init+0x2b8>
20025b0a:	6013      	str	r3, [r2, #0]
20025b0c:	f8cb 4000 	str.w	r4, [fp]
20025b10:	1ae4      	subs	r4, r4, r3
20025b12:	4b87      	ldr	r3, [pc, #540]	@ (20025d30 <sif_bbm_init+0x278>)
20025b14:	2218      	movs	r2, #24
20025b16:	f8c9 1000 	str.w	r1, [r9]
20025b1a:	4886      	ldr	r0, [pc, #536]	@ (20025d34 <sif_bbm_init+0x27c>)
20025b1c:	2100      	movs	r1, #0
20025b1e:	601c      	str	r4, [r3, #0]
20025b20:	f004 fe46 	bl	2002a7b0 <memset>
20025b24:	f44f 6282 	mov.w	r2, #1040	@ 0x410
20025b28:	2100      	movs	r1, #0
20025b2a:	4883      	ldr	r0, [pc, #524]	@ (20025d38 <sif_bbm_init+0x280>)
20025b2c:	f004 fe40 	bl	2002a7b0 <memset>
20025b30:	4647      	mov	r7, r8
20025b32:	4646      	mov	r6, r8
20025b34:	f8db 3000 	ldr.w	r3, [fp]
20025b38:	429c      	cmp	r4, r3
20025b3a:	db02      	blt.n	20025b42 <sif_bbm_init+0x8a>
20025b3c:	f04f 35ff 	mov.w	r5, #4294967295
20025b40:	e064      	b.n	20025c0c <sif_bbm_init+0x154>
20025b42:	4620      	mov	r0, r4
20025b44:	f7fb f89c 	bl	20020c80 <bbm_get_bb>
20025b48:	4605      	mov	r5, r0
20025b4a:	b138      	cbz	r0, 20025b5c <sif_bbm_init+0xa4>
20025b4c:	4b74      	ldr	r3, [pc, #464]	@ (20025d20 <sif_bbm_init+0x268>)
20025b4e:	681b      	ldr	r3, [r3, #0]
20025b50:	b113      	cbz	r3, 20025b58 <sif_bbm_init+0xa0>
20025b52:	487a      	ldr	r0, [pc, #488]	@ (20025d3c <sif_bbm_init+0x284>)
20025b54:	1c61      	adds	r1, r4, #1
20025b56:	4798      	blx	r3
20025b58:	3401      	adds	r4, #1
20025b5a:	e7eb      	b.n	20025b34 <sif_bbm_init+0x7c>
20025b5c:	f8da 2000 	ldr.w	r2, [sl]
20025b60:	21ff      	movs	r1, #255	@ 0xff
20025b62:	f8d9 0000 	ldr.w	r0, [r9]
20025b66:	9205      	str	r2, [sp, #20]
20025b68:	f004 fe22 	bl	2002a7b0 <memset>
20025b6c:	9a05      	ldr	r2, [sp, #20]
20025b6e:	e9cd 5501 	strd	r5, r5, [sp, #4]
20025b72:	9200      	str	r2, [sp, #0]
20025b74:	f8d9 3000 	ldr.w	r3, [r9]
20025b78:	462a      	mov	r2, r5
20025b7a:	4629      	mov	r1, r5
20025b7c:	4620      	mov	r0, r4
20025b7e:	f7fb f803 	bl	20020b88 <port_read_page>
20025b82:	f8da 3000 	ldr.w	r3, [sl]
20025b86:	4298      	cmp	r0, r3
20025b88:	d12e      	bne.n	20025be8 <sif_bbm_init+0x130>
20025b8a:	f8d9 1000 	ldr.w	r1, [r9]
20025b8e:	486c      	ldr	r0, [pc, #432]	@ (20025d40 <sif_bbm_init+0x288>)
20025b90:	680b      	ldr	r3, [r1, #0]
20025b92:	b2a2      	uxth	r2, r4
20025b94:	4283      	cmp	r3, r0
20025b96:	4b67      	ldr	r3, [pc, #412]	@ (20025d34 <sif_bbm_init+0x27c>)
20025b98:	d11f      	bne.n	20025bda <sif_bbm_init+0x122>
20025b9a:	f991 1007 	ldrsb.w	r1, [r1, #7]
20025b9e:	2900      	cmp	r1, #0
20025ba0:	bfb5      	itete	lt
20025ba2:	eb03 0147 	addlt.w	r1, r3, r7, lsl #1
20025ba6:	f823 2016 	strhge.w	r2, [r3, r6, lsl #1]
20025baa:	808a      	strhlt	r2, [r1, #4]
20025bac:	3601      	addge	r6, #1
20025bae:	bfb8      	it	lt
20025bb0:	3701      	addlt	r7, #1
20025bb2:	eb06 0208 	add.w	r2, r6, r8
20025bb6:	443a      	add	r2, r7
20025bb8:	2a03      	cmp	r2, #3
20025bba:	ddcd      	ble.n	20025b58 <sif_bbm_init+0xa0>
20025bbc:	2e00      	cmp	r6, #0
20025bbe:	f000 8081 	beq.w	20025cc4 <sif_bbm_init+0x20c>
20025bc2:	2f00      	cmp	r7, #0
20025bc4:	d07e      	beq.n	20025cc4 <sif_bbm_init+0x20c>
20025bc6:	2e01      	cmp	r6, #1
20025bc8:	d001      	beq.n	20025bce <sif_bbm_init+0x116>
20025bca:	2f01      	cmp	r7, #1
20025bcc:	d11e      	bne.n	20025c0c <sif_bbm_init+0x154>
20025bce:	8819      	ldrh	r1, [r3, #0]
20025bd0:	891a      	ldrh	r2, [r3, #8]
20025bd2:	b981      	cbnz	r1, 20025bf6 <sif_bbm_init+0x13e>
20025bd4:	801a      	strh	r2, [r3, #0]
20025bd6:	895a      	ldrh	r2, [r3, #10]
20025bd8:	e013      	b.n	20025c02 <sif_bbm_init+0x14a>
20025bda:	f108 0104 	add.w	r1, r8, #4
20025bde:	f823 2011 	strh.w	r2, [r3, r1, lsl #1]
20025be2:	f108 0801 	add.w	r8, r8, #1
20025be6:	e7e4      	b.n	20025bb2 <sif_bbm_init+0xfa>
20025be8:	4b4d      	ldr	r3, [pc, #308]	@ (20025d20 <sif_bbm_init+0x268>)
20025bea:	681b      	ldr	r3, [r3, #0]
20025bec:	2b00      	cmp	r3, #0
20025bee:	d0b3      	beq.n	20025b58 <sif_bbm_init+0xa0>
20025bf0:	4854      	ldr	r0, [pc, #336]	@ (20025d44 <sif_bbm_init+0x28c>)
20025bf2:	1c61      	adds	r1, r4, #1
20025bf4:	e7af      	b.n	20025b56 <sif_bbm_init+0x9e>
20025bf6:	8859      	ldrh	r1, [r3, #2]
20025bf8:	b909      	cbnz	r1, 20025bfe <sif_bbm_init+0x146>
20025bfa:	805a      	strh	r2, [r3, #2]
20025bfc:	e7eb      	b.n	20025bd6 <sif_bbm_init+0x11e>
20025bfe:	2a00      	cmp	r2, #0
20025c00:	d0e9      	beq.n	20025bd6 <sif_bbm_init+0x11e>
20025c02:	8899      	ldrh	r1, [r3, #4]
20025c04:	2900      	cmp	r1, #0
20025c06:	d158      	bne.n	20025cba <sif_bbm_init+0x202>
20025c08:	809a      	strh	r2, [r3, #4]
20025c0a:	2502      	movs	r5, #2
20025c0c:	f8df 9110 	ldr.w	r9, [pc, #272]	@ 20025d20 <sif_bbm_init+0x268>
20025c10:	f8d9 4000 	ldr.w	r4, [r9]
20025c14:	b124      	cbz	r4, 20025c20 <sif_bbm_init+0x168>
20025c16:	4643      	mov	r3, r8
20025c18:	463a      	mov	r2, r7
20025c1a:	4631      	mov	r1, r6
20025c1c:	484a      	ldr	r0, [pc, #296]	@ (20025d48 <sif_bbm_init+0x290>)
20025c1e:	47a0      	blx	r4
20025c20:	f8d9 3000 	ldr.w	r3, [r9]
20025c24:	b113      	cbz	r3, 20025c2c <sif_bbm_init+0x174>
20025c26:	4629      	mov	r1, r5
20025c28:	4848      	ldr	r0, [pc, #288]	@ (20025d4c <sif_bbm_init+0x294>)
20025c2a:	4798      	blx	r3
20025c2c:	f035 0002 	bics.w	r0, r5, #2
20025c30:	d164      	bne.n	20025cfc <sif_bbm_init+0x244>
20025c32:	f7ff fcc9 	bl	200255c8 <bbm_get_map_table>
20025c36:	4605      	mov	r5, r0
20025c38:	2001      	movs	r0, #1
20025c3a:	f7ff fcc5 	bl	200255c8 <bbm_get_map_table>
20025c3e:	f8d9 6000 	ldr.w	r6, [r9]
20025c42:	4604      	mov	r4, r0
20025c44:	b13e      	cbz	r6, 20025c56 <sif_bbm_init+0x19e>
20025c46:	4a3b      	ldr	r2, [pc, #236]	@ (20025d34 <sif_bbm_init+0x27c>)
20025c48:	4629      	mov	r1, r5
20025c4a:	8a53      	ldrh	r3, [r2, #18]
20025c4c:	9300      	str	r3, [sp, #0]
20025c4e:	8a12      	ldrh	r2, [r2, #16]
20025c50:	4603      	mov	r3, r0
20025c52:	483f      	ldr	r0, [pc, #252]	@ (20025d50 <sif_bbm_init+0x298>)
20025c54:	47b0      	blx	r6
20025c56:	42a5      	cmp	r5, r4
20025c58:	4c37      	ldr	r4, [pc, #220]	@ (20025d38 <sif_bbm_init+0x280>)
20025c5a:	dd35      	ble.n	20025cc8 <sif_bbm_init+0x210>
20025c5c:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025c60:	4621      	mov	r1, r4
20025c62:	18a0      	adds	r0, r4, r2
20025c64:	f004 fdbe 	bl	2002a7e4 <memcpy>
20025c68:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025c6c:	2110      	movs	r1, #16
20025c6e:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025c72:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025c76:	f504 7002 	add.w	r0, r4, #520	@ 0x208
20025c7a:	f7ff fbf1 	bl	20025460 <bbm_crc_check>
20025c7e:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
20025c82:	2001      	movs	r0, #1
20025c84:	4b2b      	ldr	r3, [pc, #172]	@ (20025d34 <sif_bbm_init+0x27c>)
20025c86:	8a59      	ldrh	r1, [r3, #18]
20025c88:	f7ff fdb6 	bl	200257f8 <bbm_write_talbe.isra.0>
20025c8c:	6822      	ldr	r2, [r4, #0]
20025c8e:	4b2c      	ldr	r3, [pc, #176]	@ (20025d40 <sif_bbm_init+0x288>)
20025c90:	429a      	cmp	r2, r3
20025c92:	d12d      	bne.n	20025cf0 <sif_bbm_init+0x238>
20025c94:	4828      	ldr	r0, [pc, #160]	@ (20025d38 <sif_bbm_init+0x280>)
20025c96:	f7ff fb93 	bl	200253c0 <bbm_map_check.part.0>
20025c9a:	f8d9 4000 	ldr.w	r4, [r9]
20025c9e:	b12c      	cbz	r4, 20025cac <sif_bbm_init+0x1f4>
20025ca0:	4b2c      	ldr	r3, [pc, #176]	@ (20025d54 <sif_bbm_init+0x29c>)
20025ca2:	4924      	ldr	r1, [pc, #144]	@ (20025d34 <sif_bbm_init+0x27c>)
20025ca4:	482c      	ldr	r0, [pc, #176]	@ (20025d58 <sif_bbm_init+0x2a0>)
20025ca6:	f5a3 7202 	sub.w	r2, r3, #520	@ 0x208
20025caa:	47a0      	blx	r4
20025cac:	f8d9 3000 	ldr.w	r3, [r9]
20025cb0:	2b00      	cmp	r3, #0
20025cb2:	f43f af10 	beq.w	20025ad6 <sif_bbm_init+0x1e>
20025cb6:	4829      	ldr	r0, [pc, #164]	@ (20025d5c <sif_bbm_init+0x2a4>)
20025cb8:	e70c      	b.n	20025ad4 <sif_bbm_init+0x1c>
20025cba:	88d9      	ldrh	r1, [r3, #6]
20025cbc:	2900      	cmp	r1, #0
20025cbe:	d1a4      	bne.n	20025c0a <sif_bbm_init+0x152>
20025cc0:	80da      	strh	r2, [r3, #6]
20025cc2:	e7a2      	b.n	20025c0a <sif_bbm_init+0x152>
20025cc4:	2501      	movs	r5, #1
20025cc6:	e7a1      	b.n	20025c0c <sif_bbm_init+0x154>
20025cc8:	dae0      	bge.n	20025c8c <sif_bbm_init+0x1d4>
20025cca:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025cce:	4620      	mov	r0, r4
20025cd0:	18a1      	adds	r1, r4, r2
20025cd2:	f004 fd87 	bl	2002a7e4 <memcpy>
20025cd6:	79e3      	ldrb	r3, [r4, #7]
20025cd8:	2110      	movs	r1, #16
20025cda:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
20025cde:	71e3      	strb	r3, [r4, #7]
20025ce0:	4620      	mov	r0, r4
20025ce2:	f7ff fbbd 	bl	20025460 <bbm_crc_check>
20025ce6:	4b13      	ldr	r3, [pc, #76]	@ (20025d34 <sif_bbm_init+0x27c>)
20025ce8:	6120      	str	r0, [r4, #16]
20025cea:	8a19      	ldrh	r1, [r3, #16]
20025cec:	2000      	movs	r0, #0
20025cee:	e7cb      	b.n	20025c88 <sif_bbm_init+0x1d0>
20025cf0:	f8d9 3000 	ldr.w	r3, [r9]
20025cf4:	b10b      	cbz	r3, 20025cfa <sif_bbm_init+0x242>
20025cf6:	481a      	ldr	r0, [pc, #104]	@ (20025d60 <sif_bbm_init+0x2a8>)
20025cf8:	4798      	blx	r3
20025cfa:	e7fe      	b.n	20025cfa <sif_bbm_init+0x242>
20025cfc:	2d01      	cmp	r5, #1
20025cfe:	d102      	bne.n	20025d06 <sif_bbm_init+0x24e>
20025d00:	f7ff fdb6 	bl	20025870 <bbm_init_table>
20025d04:	e7c9      	b.n	20025c9a <sif_bbm_init+0x1e2>
20025d06:	f8d9 3000 	ldr.w	r3, [r9]
20025d0a:	b11b      	cbz	r3, 20025d14 <sif_bbm_init+0x25c>
20025d0c:	f04f 31ff 	mov.w	r1, #4294967295
20025d10:	4814      	ldr	r0, [pc, #80]	@ (20025d64 <sif_bbm_init+0x2ac>)
20025d12:	4798      	blx	r3
20025d14:	e7fe      	b.n	20025d14 <sif_bbm_init+0x25c>
20025d16:	f04f 30ff 	mov.w	r0, #4294967295
20025d1a:	e6dd      	b.n	20025ad8 <sif_bbm_init+0x20>
20025d1c:	20049f94 	.word	0x20049f94
20025d20:	20049f8c 	.word	0x20049f8c
20025d24:	2002accb 	.word	0x2002accb
20025d28:	20044904 	.word	0x20044904
20025d2c:	20049f9c 	.word	0x20049f9c
20025d30:	20049fa0 	.word	0x20049fa0
20025d34:	2004a3b4 	.word	0x2004a3b4
20025d38:	20049fa4 	.word	0x20049fa4
20025d3c:	2002acf9 	.word	0x2002acf9
20025d40:	5366424d 	.word	0x5366424d
20025d44:	2002ad05 	.word	0x2002ad05
20025d48:	2002ad24 	.word	0x2002ad24
20025d4c:	2002ad43 	.word	0x2002ad43
20025d50:	2002ad55 	.word	0x2002ad55
20025d54:	2004a1ac 	.word	0x2004a1ac
20025d58:	2002adb0 	.word	0x2002adb0
20025d5c:	2002add4 	.word	0x2002add4
20025d60:	2002ad79 	.word	0x2002ad79
20025d64:	2002ad8f 	.word	0x2002ad8f
20025d68:	20044900 	.word	0x20044900
20025d6c:	20049f98 	.word	0x20049f98
20025d70:	20049f90 	.word	0x20049f90

20025d74 <bbm_set_page_size>:
20025d74:	4b01      	ldr	r3, [pc, #4]	@ (20025d7c <bbm_set_page_size+0x8>)
20025d76:	6018      	str	r0, [r3, #0]
20025d78:	4770      	bx	lr
20025d7a:	bf00      	nop
20025d7c:	20044900 	.word	0x20044900

20025d80 <bbm_set_blk_size>:
20025d80:	4b01      	ldr	r3, [pc, #4]	@ (20025d88 <bbm_set_blk_size+0x8>)
20025d82:	6018      	str	r0, [r3, #0]
20025d84:	4770      	bx	lr
20025d86:	bf00      	nop
20025d88:	20044904 	.word	0x20044904

20025d8c <mbedtls_md_info_from_type>:
20025d8c:	3805      	subs	r0, #5
20025d8e:	b2c0      	uxtb	r0, r0
20025d90:	2803      	cmp	r0, #3
20025d92:	bf9a      	itte	ls
20025d94:	4b02      	ldrls	r3, [pc, #8]	@ (20025da0 <mbedtls_md_info_from_type+0x14>)
20025d96:	f853 0020 	ldrls.w	r0, [r3, r0, lsl #2]
20025d9a:	2000      	movhi	r0, #0
20025d9c:	4770      	bx	lr
20025d9e:	bf00      	nop
20025da0:	2002bc28 	.word	0x2002bc28

20025da4 <mbedtls_md_get_size>:
20025da4:	b100      	cbz	r0, 20025da8 <mbedtls_md_get_size+0x4>
20025da6:	7a00      	ldrb	r0, [r0, #8]
20025da8:	4770      	bx	lr

20025daa <sha224_process_wrap>:
20025daa:	f000 b8a9 	b.w	20025f00 <mbedtls_sha256_process>

20025dae <sha224_clone_wrap>:
20025dae:	f000 b85a 	b.w	20025e66 <mbedtls_sha256_clone>

20025db2 <sha224_ctx_free>:
20025db2:	b510      	push	{r4, lr}
20025db4:	4604      	mov	r4, r0
20025db6:	f000 f84c 	bl	20025e52 <mbedtls_sha256_free>
20025dba:	4620      	mov	r0, r4
20025dbc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20025dc0:	f004 bc30 	b.w	2002a624 <free>

20025dc4 <sha224_ctx_alloc>:
20025dc4:	b510      	push	{r4, lr}
20025dc6:	216c      	movs	r1, #108	@ 0x6c
20025dc8:	2001      	movs	r0, #1
20025dca:	f004 fc0f 	bl	2002a5ec <calloc>
20025dce:	4604      	mov	r4, r0
20025dd0:	b108      	cbz	r0, 20025dd6 <sha224_ctx_alloc+0x12>
20025dd2:	f000 f83a 	bl	20025e4a <mbedtls_sha256_init>
20025dd6:	4620      	mov	r0, r4
20025dd8:	bd10      	pop	{r4, pc}

20025dda <sha224_wrap>:
20025dda:	2301      	movs	r3, #1
20025ddc:	f000 bc94 	b.w	20026708 <mbedtls_sha256>

20025de0 <sha256_wrap>:
20025de0:	2300      	movs	r3, #0
20025de2:	f000 bc91 	b.w	20026708 <mbedtls_sha256>

20025de6 <sha224_finish_wrap>:
20025de6:	f000 bc21 	b.w	2002662c <mbedtls_sha256_finish>

20025dea <sha224_update_wrap>:
20025dea:	f000 bc1b 	b.w	20026624 <mbedtls_sha256_update>

20025dee <sha224_starts_wrap>:
20025dee:	2101      	movs	r1, #1
20025df0:	f000 b83e 	b.w	20025e70 <mbedtls_sha256_starts>

20025df4 <sha256_starts_wrap>:
20025df4:	2100      	movs	r1, #0
20025df6:	f000 b83b 	b.w	20025e70 <mbedtls_sha256_starts>

20025dfa <sha384_process_wrap>:
20025dfa:	f000 bd8d 	b.w	20026918 <mbedtls_sha512_process>

20025dfe <sha384_clone_wrap>:
20025dfe:	f000 bcf5 	b.w	200267ec <mbedtls_sha512_clone>

20025e02 <sha384_ctx_free>:
20025e02:	b510      	push	{r4, lr}
20025e04:	4604      	mov	r4, r0
20025e06:	f000 fce7 	bl	200267d8 <mbedtls_sha512_free>
20025e0a:	4620      	mov	r0, r4
20025e0c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20025e10:	f004 bc08 	b.w	2002a624 <free>

20025e14 <sha384_ctx_alloc>:
20025e14:	b510      	push	{r4, lr}
20025e16:	21d8      	movs	r1, #216	@ 0xd8
20025e18:	2001      	movs	r0, #1
20025e1a:	f004 fbe7 	bl	2002a5ec <calloc>
20025e1e:	4604      	mov	r4, r0
20025e20:	b108      	cbz	r0, 20025e26 <sha384_ctx_alloc+0x12>
20025e22:	f000 fcd5 	bl	200267d0 <mbedtls_sha512_init>
20025e26:	4620      	mov	r0, r4
20025e28:	bd10      	pop	{r4, pc}

20025e2a <sha384_wrap>:
20025e2a:	2301      	movs	r3, #1
20025e2c:	f001 bbf8 	b.w	20027620 <mbedtls_sha512>

20025e30 <sha512_wrap>:
20025e30:	2300      	movs	r3, #0
20025e32:	f001 bbf5 	b.w	20027620 <mbedtls_sha512>

20025e36 <sha384_finish_wrap>:
20025e36:	f001 baed 	b.w	20027414 <mbedtls_sha512_finish>

20025e3a <sha384_update_wrap>:
20025e3a:	f001 bae6 	b.w	2002740a <mbedtls_sha512_update>

20025e3e <sha384_starts_wrap>:
20025e3e:	2101      	movs	r1, #1
20025e40:	f000 bcda 	b.w	200267f8 <mbedtls_sha512_starts>

20025e44 <sha512_starts_wrap>:
20025e44:	2100      	movs	r1, #0
20025e46:	f000 bcd7 	b.w	200267f8 <mbedtls_sha512_starts>

20025e4a <mbedtls_sha256_init>:
20025e4a:	226c      	movs	r2, #108	@ 0x6c
20025e4c:	2100      	movs	r1, #0
20025e4e:	f004 bcaf 	b.w	2002a7b0 <memset>

20025e52 <mbedtls_sha256_free>:
20025e52:	b138      	cbz	r0, 20025e64 <mbedtls_sha256_free+0x12>
20025e54:	2100      	movs	r1, #0
20025e56:	f100 036c 	add.w	r3, r0, #108	@ 0x6c
20025e5a:	4602      	mov	r2, r0
20025e5c:	3001      	adds	r0, #1
20025e5e:	4298      	cmp	r0, r3
20025e60:	7011      	strb	r1, [r2, #0]
20025e62:	d1fa      	bne.n	20025e5a <mbedtls_sha256_free+0x8>
20025e64:	4770      	bx	lr

20025e66 <mbedtls_sha256_clone>:
20025e66:	b508      	push	{r3, lr}
20025e68:	226c      	movs	r2, #108	@ 0x6c
20025e6a:	f004 fcbb 	bl	2002a7e4 <memcpy>
20025e6e:	bd08      	pop	{r3, pc}

20025e70 <mbedtls_sha256_starts>:
20025e70:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20025e74:	b1c1      	cbz	r1, 20025ea8 <mbedtls_sha256_starts+0x38>
20025e76:	f8df e078 	ldr.w	lr, [pc, #120]	@ 20025ef0 <mbedtls_sha256_starts+0x80>
20025e7a:	f8df c078 	ldr.w	ip, [pc, #120]	@ 20025ef4 <mbedtls_sha256_starts+0x84>
20025e7e:	4f10      	ldr	r7, [pc, #64]	@ (20025ec0 <mbedtls_sha256_starts+0x50>)
20025e80:	4e10      	ldr	r6, [pc, #64]	@ (20025ec4 <mbedtls_sha256_starts+0x54>)
20025e82:	4d11      	ldr	r5, [pc, #68]	@ (20025ec8 <mbedtls_sha256_starts+0x58>)
20025e84:	4c11      	ldr	r4, [pc, #68]	@ (20025ecc <mbedtls_sha256_starts+0x5c>)
20025e86:	4a12      	ldr	r2, [pc, #72]	@ (20025ed0 <mbedtls_sha256_starts+0x60>)
20025e88:	4b12      	ldr	r3, [pc, #72]	@ (20025ed4 <mbedtls_sha256_starts+0x64>)
20025e8a:	f04f 0800 	mov.w	r8, #0
20025e8e:	e9c0 ec02 	strd	lr, ip, [r0, #8]
20025e92:	e9c0 8800 	strd	r8, r8, [r0]
20025e96:	e9c0 7604 	strd	r7, r6, [r0, #16]
20025e9a:	e9c0 5406 	strd	r5, r4, [r0, #24]
20025e9e:	e9c0 2308 	strd	r2, r3, [r0, #32]
20025ea2:	6681      	str	r1, [r0, #104]	@ 0x68
20025ea4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20025ea8:	f8df e04c 	ldr.w	lr, [pc, #76]	@ 20025ef8 <mbedtls_sha256_starts+0x88>
20025eac:	f8df c04c 	ldr.w	ip, [pc, #76]	@ 20025efc <mbedtls_sha256_starts+0x8c>
20025eb0:	4f09      	ldr	r7, [pc, #36]	@ (20025ed8 <mbedtls_sha256_starts+0x68>)
20025eb2:	4e0a      	ldr	r6, [pc, #40]	@ (20025edc <mbedtls_sha256_starts+0x6c>)
20025eb4:	4d0a      	ldr	r5, [pc, #40]	@ (20025ee0 <mbedtls_sha256_starts+0x70>)
20025eb6:	4c0b      	ldr	r4, [pc, #44]	@ (20025ee4 <mbedtls_sha256_starts+0x74>)
20025eb8:	4a0b      	ldr	r2, [pc, #44]	@ (20025ee8 <mbedtls_sha256_starts+0x78>)
20025eba:	4b0c      	ldr	r3, [pc, #48]	@ (20025eec <mbedtls_sha256_starts+0x7c>)
20025ebc:	e7e5      	b.n	20025e8a <mbedtls_sha256_starts+0x1a>
20025ebe:	bf00      	nop
20025ec0:	3070dd17 	.word	0x3070dd17
20025ec4:	f70e5939 	.word	0xf70e5939
20025ec8:	ffc00b31 	.word	0xffc00b31
20025ecc:	68581511 	.word	0x68581511
20025ed0:	64f98fa7 	.word	0x64f98fa7
20025ed4:	befa4fa4 	.word	0xbefa4fa4
20025ed8:	3c6ef372 	.word	0x3c6ef372
20025edc:	a54ff53a 	.word	0xa54ff53a
20025ee0:	510e527f 	.word	0x510e527f
20025ee4:	9b05688c 	.word	0x9b05688c
20025ee8:	1f83d9ab 	.word	0x1f83d9ab
20025eec:	5be0cd19 	.word	0x5be0cd19
20025ef0:	c1059ed8 	.word	0xc1059ed8
20025ef4:	367cd507 	.word	0x367cd507
20025ef8:	6a09e667 	.word	0x6a09e667
20025efc:	bb67ae85 	.word	0xbb67ae85

20025f00 <mbedtls_sha256_process>:
20025f00:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025f04:	b0cf      	sub	sp, #316	@ 0x13c
20025f06:	aa06      	add	r2, sp, #24
20025f08:	460b      	mov	r3, r1
20025f0a:	4616      	mov	r6, r2
20025f0c:	9004      	str	r0, [sp, #16]
20025f0e:	f100 0408 	add.w	r4, r0, #8
20025f12:	f100 0728 	add.w	r7, r0, #40	@ 0x28
20025f16:	4635      	mov	r5, r6
20025f18:	6820      	ldr	r0, [r4, #0]
20025f1a:	6861      	ldr	r1, [r4, #4]
20025f1c:	3408      	adds	r4, #8
20025f1e:	c503      	stmia	r5!, {r0, r1}
20025f20:	42bc      	cmp	r4, r7
20025f22:	462e      	mov	r6, r5
20025f24:	d1f7      	bne.n	20025f16 <mbedtls_sha256_process+0x16>
20025f26:	f10d 0a38 	add.w	sl, sp, #56	@ 0x38
20025f2a:	4619      	mov	r1, r3
20025f2c:	4650      	mov	r0, sl
20025f2e:	f103 0440 	add.w	r4, r3, #64	@ 0x40
20025f32:	784b      	ldrb	r3, [r1, #1]
20025f34:	780d      	ldrb	r5, [r1, #0]
20025f36:	041b      	lsls	r3, r3, #16
20025f38:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
20025f3c:	78cd      	ldrb	r5, [r1, #3]
20025f3e:	3104      	adds	r1, #4
20025f40:	432b      	orrs	r3, r5
20025f42:	f811 5c02 	ldrb.w	r5, [r1, #-2]
20025f46:	428c      	cmp	r4, r1
20025f48:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
20025f4c:	f840 3b04 	str.w	r3, [r0], #4
20025f50:	d1ef      	bne.n	20025f32 <mbedtls_sha256_process+0x32>
20025f52:	4996      	ldr	r1, [pc, #600]	@ (200261ac <mbedtls_sha256_process+0x2ac>)
20025f54:	46d4      	mov	ip, sl
20025f56:	e9d2 e705 	ldrd	lr, r7, [r2, #20]
20025f5a:	e9d2 9600 	ldrd	r9, r6, [r2]
20025f5e:	460d      	mov	r5, r1
20025f60:	9100      	str	r1, [sp, #0]
20025f62:	f8d2 801c 	ldr.w	r8, [r2, #28]
20025f66:	f8d2 b010 	ldr.w	fp, [r2, #16]
20025f6a:	e9d2 3202 	ldrd	r3, r2, [r2, #8]
20025f6e:	6829      	ldr	r1, [r5, #0]
20025f70:	f8dc 0000 	ldr.w	r0, [ip]
20025f74:	ea4f 24fb 	mov.w	r4, fp, ror #11
20025f78:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
20025f7c:	4401      	add	r1, r0
20025f7e:	ea87 000e 	eor.w	r0, r7, lr
20025f82:	ea84 647b 	eor.w	r4, r4, fp, ror #25
20025f86:	ea00 000b 	and.w	r0, r0, fp
20025f8a:	4078      	eors	r0, r7
20025f8c:	4421      	add	r1, r4
20025f8e:	4401      	add	r1, r0
20025f90:	4441      	add	r1, r8
20025f92:	ea4f 3879 	mov.w	r8, r9, ror #13
20025f96:	ea88 08b9 	eor.w	r8, r8, r9, ror #2
20025f9a:	ea88 58b9 	eor.w	r8, r8, r9, ror #22
20025f9e:	440a      	add	r2, r1
20025fa0:	4488      	add	r8, r1
20025fa2:	ea49 0106 	orr.w	r1, r9, r6
20025fa6:	ea09 0006 	and.w	r0, r9, r6
20025faa:	4019      	ands	r1, r3
20025fac:	4301      	orrs	r1, r0
20025fae:	4488      	add	r8, r1
20025fb0:	f8dc 0004 	ldr.w	r0, [ip, #4]
20025fb4:	6869      	ldr	r1, [r5, #4]
20025fb6:	ea4f 3478 	mov.w	r4, r8, ror #13
20025fba:	4401      	add	r1, r0
20025fbc:	ea8b 000e 	eor.w	r0, fp, lr
20025fc0:	4010      	ands	r0, r2
20025fc2:	ea80 000e 	eor.w	r0, r0, lr
20025fc6:	4439      	add	r1, r7
20025fc8:	4401      	add	r1, r0
20025fca:	ea4f 20f2 	mov.w	r0, r2, ror #11
20025fce:	ea80 10b2 	eor.w	r0, r0, r2, ror #6
20025fd2:	ea80 6072 	eor.w	r0, r0, r2, ror #25
20025fd6:	ea84 04b8 	eor.w	r4, r4, r8, ror #2
20025fda:	4401      	add	r1, r0
20025fdc:	ea84 54b8 	eor.w	r4, r4, r8, ror #22
20025fe0:	440b      	add	r3, r1
20025fe2:	440c      	add	r4, r1
20025fe4:	ea48 0109 	orr.w	r1, r8, r9
20025fe8:	ea08 0009 	and.w	r0, r8, r9
20025fec:	4031      	ands	r1, r6
20025fee:	4301      	orrs	r1, r0
20025ff0:	440c      	add	r4, r1
20025ff2:	f8dc 0008 	ldr.w	r0, [ip, #8]
20025ff6:	68a9      	ldr	r1, [r5, #8]
20025ff8:	ea82 0703 	eor.w	r7, r2, r3
20025ffc:	4401      	add	r1, r0
20025ffe:	ea82 000b 	eor.w	r0, r2, fp
20026002:	4018      	ands	r0, r3
20026004:	ea80 000b 	eor.w	r0, r0, fp
20026008:	4471      	add	r1, lr
2002600a:	4401      	add	r1, r0
2002600c:	ea4f 20f3 	mov.w	r0, r3, ror #11
20026010:	ea80 10b3 	eor.w	r0, r0, r3, ror #6
20026014:	ea80 6073 	eor.w	r0, r0, r3, ror #25
20026018:	4401      	add	r1, r0
2002601a:	ea4f 3074 	mov.w	r0, r4, ror #13
2002601e:	ea80 00b4 	eor.w	r0, r0, r4, ror #2
20026022:	ea80 50b4 	eor.w	r0, r0, r4, ror #22
20026026:	eb06 0e01 	add.w	lr, r6, r1
2002602a:	4408      	add	r0, r1
2002602c:	ea48 0104 	orr.w	r1, r8, r4
20026030:	ea08 0604 	and.w	r6, r8, r4
20026034:	ea01 0109 	and.w	r1, r1, r9
20026038:	4331      	orrs	r1, r6
2002603a:	4408      	add	r0, r1
2002603c:	f8dc 600c 	ldr.w	r6, [ip, #12]
20026040:	68e9      	ldr	r1, [r5, #12]
20026042:	ea07 070e 	and.w	r7, r7, lr
20026046:	440e      	add	r6, r1
20026048:	ea4f 21fe 	mov.w	r1, lr, ror #11
2002604c:	4057      	eors	r7, r2
2002604e:	445e      	add	r6, fp
20026050:	ea81 11be 	eor.w	r1, r1, lr, ror #6
20026054:	ea81 617e 	eor.w	r1, r1, lr, ror #25
20026058:	443e      	add	r6, r7
2002605a:	440e      	add	r6, r1
2002605c:	ea4f 3170 	mov.w	r1, r0, ror #13
20026060:	ea81 01b0 	eor.w	r1, r1, r0, ror #2
20026064:	ea81 51b0 	eor.w	r1, r1, r0, ror #22
20026068:	44b1      	add	r9, r6
2002606a:	4431      	add	r1, r6
2002606c:	ea44 0600 	orr.w	r6, r4, r0
20026070:	ea04 0700 	and.w	r7, r4, r0
20026074:	ea06 0608 	and.w	r6, r6, r8
20026078:	433e      	orrs	r6, r7
2002607a:	4431      	add	r1, r6
2002607c:	f8dc 7010 	ldr.w	r7, [ip, #16]
20026080:	692e      	ldr	r6, [r5, #16]
20026082:	3520      	adds	r5, #32
20026084:	443e      	add	r6, r7
20026086:	4416      	add	r6, r2
20026088:	ea83 020e 	eor.w	r2, r3, lr
2002608c:	ea02 0209 	and.w	r2, r2, r9
20026090:	405a      	eors	r2, r3
20026092:	4416      	add	r6, r2
20026094:	ea4f 22f9 	mov.w	r2, r9, ror #11
20026098:	ea82 12b9 	eor.w	r2, r2, r9, ror #6
2002609c:	ea82 6279 	eor.w	r2, r2, r9, ror #25
200260a0:	4416      	add	r6, r2
200260a2:	ea4f 3271 	mov.w	r2, r1, ror #13
200260a6:	ea82 02b1 	eor.w	r2, r2, r1, ror #2
200260aa:	ea82 52b1 	eor.w	r2, r2, r1, ror #22
200260ae:	44b0      	add	r8, r6
200260b0:	4432      	add	r2, r6
200260b2:	ea40 0601 	orr.w	r6, r0, r1
200260b6:	ea00 0701 	and.w	r7, r0, r1
200260ba:	4026      	ands	r6, r4
200260bc:	433e      	orrs	r6, r7
200260be:	4432      	add	r2, r6
200260c0:	f8dc 7014 	ldr.w	r7, [ip, #20]
200260c4:	f855 6c0c 	ldr.w	r6, [r5, #-12]
200260c8:	f10c 0c20 	add.w	ip, ip, #32
200260cc:	443e      	add	r6, r7
200260ce:	441e      	add	r6, r3
200260d0:	ea8e 0309 	eor.w	r3, lr, r9
200260d4:	ea03 0308 	and.w	r3, r3, r8
200260d8:	ea83 030e 	eor.w	r3, r3, lr
200260dc:	441e      	add	r6, r3
200260de:	ea4f 23f8 	mov.w	r3, r8, ror #11
200260e2:	ea83 13b8 	eor.w	r3, r3, r8, ror #6
200260e6:	ea83 6378 	eor.w	r3, r3, r8, ror #25
200260ea:	441e      	add	r6, r3
200260ec:	ea4f 3372 	mov.w	r3, r2, ror #13
200260f0:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
200260f4:	19a7      	adds	r7, r4, r6
200260f6:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
200260fa:	ea41 0402 	orr.w	r4, r1, r2
200260fe:	4433      	add	r3, r6
20026100:	4004      	ands	r4, r0
20026102:	ea01 0602 	and.w	r6, r1, r2
20026106:	4334      	orrs	r4, r6
20026108:	4423      	add	r3, r4
2002610a:	f85c 6c08 	ldr.w	r6, [ip, #-8]
2002610e:	f855 4c08 	ldr.w	r4, [r5, #-8]
20026112:	4434      	add	r4, r6
20026114:	ea89 0608 	eor.w	r6, r9, r8
20026118:	403e      	ands	r6, r7
2002611a:	ea86 0609 	eor.w	r6, r6, r9
2002611e:	4474      	add	r4, lr
20026120:	4434      	add	r4, r6
20026122:	ea4f 26f7 	mov.w	r6, r7, ror #11
20026126:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
2002612a:	ea86 6677 	eor.w	r6, r6, r7, ror #25
2002612e:	4434      	add	r4, r6
20026130:	eb00 0e04 	add.w	lr, r0, r4
20026134:	ea4f 3073 	mov.w	r0, r3, ror #13
20026138:	ea80 00b3 	eor.w	r0, r0, r3, ror #2
2002613c:	ea80 50b3 	eor.w	r0, r0, r3, ror #22
20026140:	4420      	add	r0, r4
20026142:	ea42 0403 	orr.w	r4, r2, r3
20026146:	400c      	ands	r4, r1
20026148:	ea02 0603 	and.w	r6, r2, r3
2002614c:	4334      	orrs	r4, r6
2002614e:	1906      	adds	r6, r0, r4
20026150:	f855 0c04 	ldr.w	r0, [r5, #-4]
20026154:	f85c 4c04 	ldr.w	r4, [ip, #-4]
20026158:	4420      	add	r0, r4
2002615a:	ea88 0407 	eor.w	r4, r8, r7
2002615e:	ea04 040e 	and.w	r4, r4, lr
20026162:	4448      	add	r0, r9
20026164:	ea84 0408 	eor.w	r4, r4, r8
20026168:	4420      	add	r0, r4
2002616a:	ea4f 24fe 	mov.w	r4, lr, ror #11
2002616e:	ea84 14be 	eor.w	r4, r4, lr, ror #6
20026172:	ea84 647e 	eor.w	r4, r4, lr, ror #25
20026176:	4420      	add	r0, r4
20026178:	eb01 0b00 	add.w	fp, r1, r0
2002617c:	ea4f 3176 	mov.w	r1, r6, ror #13
20026180:	ea81 01b6 	eor.w	r1, r1, r6, ror #2
20026184:	ea81 51b6 	eor.w	r1, r1, r6, ror #22
20026188:	4401      	add	r1, r0
2002618a:	ea43 0006 	orr.w	r0, r3, r6
2002618e:	4010      	ands	r0, r2
20026190:	ea03 0406 	and.w	r4, r3, r6
20026194:	4320      	orrs	r0, r4
20026196:	eb01 0900 	add.w	r9, r1, r0
2002619a:	4905      	ldr	r1, [pc, #20]	@ (200261b0 <mbedtls_sha256_process+0x2b0>)
2002619c:	42a9      	cmp	r1, r5
2002619e:	f47f aee6 	bne.w	20025f6e <mbedtls_sha256_process+0x6e>
200261a2:	f10a 01c0 	add.w	r1, sl, #192	@ 0xc0
200261a6:	9105      	str	r1, [sp, #20]
200261a8:	e004      	b.n	200261b4 <mbedtls_sha256_process+0x2b4>
200261aa:	bf00      	nop
200261ac:	2002bd38 	.word	0x2002bd38
200261b0:	2002bd78 	.word	0x2002bd78
200261b4:	f8da 1038 	ldr.w	r1, [sl, #56]	@ 0x38
200261b8:	f8da 5004 	ldr.w	r5, [sl, #4]
200261bc:	ea4f 44f1 	mov.w	r4, r1, ror #19
200261c0:	ea84 4471 	eor.w	r4, r4, r1, ror #17
200261c4:	f8da 0000 	ldr.w	r0, [sl]
200261c8:	ea84 2491 	eor.w	r4, r4, r1, lsr #10
200261cc:	f8da 1024 	ldr.w	r1, [sl, #36]	@ 0x24
200261d0:	f10a 0a20 	add.w	sl, sl, #32
200261d4:	4401      	add	r1, r0
200261d6:	ea4f 40b5 	mov.w	r0, r5, ror #18
200261da:	ea80 10f5 	eor.w	r0, r0, r5, ror #7
200261de:	ea80 00d5 	eor.w	r0, r0, r5, lsr #3
200261e2:	4421      	add	r1, r4
200261e4:	4401      	add	r1, r0
200261e6:	9103      	str	r1, [sp, #12]
200261e8:	ea87 000e 	eor.w	r0, r7, lr
200261ec:	9900      	ldr	r1, [sp, #0]
200261ee:	ea4f 24fb 	mov.w	r4, fp, ror #11
200261f2:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
200261f6:	ea00 000b 	and.w	r0, r0, fp
200261fa:	ea84 647b 	eor.w	r4, r4, fp, ror #25
200261fe:	6c09      	ldr	r1, [r1, #64]	@ 0x40
20026200:	4078      	eors	r0, r7
20026202:	4420      	add	r0, r4
20026204:	4401      	add	r1, r0
20026206:	9803      	ldr	r0, [sp, #12]
20026208:	ea4f 3479 	mov.w	r4, r9, ror #13
2002620c:	4401      	add	r1, r0
2002620e:	4441      	add	r1, r8
20026210:	eb02 0801 	add.w	r8, r2, r1
20026214:	ea49 0206 	orr.w	r2, r9, r6
20026218:	f8ca 0020 	str.w	r0, [sl, #32]
2002621c:	ea84 04b9 	eor.w	r4, r4, r9, ror #2
20026220:	ea09 0006 	and.w	r0, r9, r6
20026224:	401a      	ands	r2, r3
20026226:	4302      	orrs	r2, r0
20026228:	ea84 54b9 	eor.w	r4, r4, r9, ror #22
2002622c:	4414      	add	r4, r2
2002622e:	f8da 201c 	ldr.w	r2, [sl, #28]
20026232:	440c      	add	r4, r1
20026234:	ea4f 4cf2 	mov.w	ip, r2, ror #19
20026238:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
2002623c:	f85a 1c18 	ldr.w	r1, [sl, #-24]
20026240:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
20026244:	f8da 2008 	ldr.w	r2, [sl, #8]
20026248:	18a8      	adds	r0, r5, r2
2002624a:	ea4f 42b1 	mov.w	r2, r1, ror #18
2002624e:	ea82 12f1 	eor.w	r2, r2, r1, ror #7
20026252:	ea82 02d1 	eor.w	r2, r2, r1, lsr #3
20026256:	4460      	add	r0, ip
20026258:	4410      	add	r0, r2
2002625a:	9a00      	ldr	r2, [sp, #0]
2002625c:	ea8b 050e 	eor.w	r5, fp, lr
20026260:	6c52      	ldr	r2, [r2, #68]	@ 0x44
20026262:	ea05 0508 	and.w	r5, r5, r8
20026266:	443a      	add	r2, r7
20026268:	4402      	add	r2, r0
2002626a:	ea85 050e 	eor.w	r5, r5, lr
2002626e:	4415      	add	r5, r2
20026270:	ea4f 22f8 	mov.w	r2, r8, ror #11
20026274:	ea82 12b8 	eor.w	r2, r2, r8, ror #6
20026278:	ea82 6278 	eor.w	r2, r2, r8, ror #25
2002627c:	442a      	add	r2, r5
2002627e:	4413      	add	r3, r2
20026280:	9301      	str	r3, [sp, #4]
20026282:	ea49 0504 	orr.w	r5, r9, r4
20026286:	ea4f 3374 	mov.w	r3, r4, ror #13
2002628a:	ea09 0704 	and.w	r7, r9, r4
2002628e:	ea83 03b4 	eor.w	r3, r3, r4, ror #2
20026292:	4035      	ands	r5, r6
20026294:	433d      	orrs	r5, r7
20026296:	ea83 53b4 	eor.w	r3, r3, r4, ror #22
2002629a:	442b      	add	r3, r5
2002629c:	4413      	add	r3, r2
2002629e:	9a03      	ldr	r2, [sp, #12]
200262a0:	f85a 5c14 	ldr.w	r5, [sl, #-20]
200262a4:	ea4f 4cf2 	mov.w	ip, r2, ror #19
200262a8:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
200262ac:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
200262b0:	f8da 200c 	ldr.w	r2, [sl, #12]
200262b4:	f8ca 0024 	str.w	r0, [sl, #36]	@ 0x24
200262b8:	188f      	adds	r7, r1, r2
200262ba:	ea4f 42b5 	mov.w	r2, r5, ror #18
200262be:	ea82 12f5 	eor.w	r2, r2, r5, ror #7
200262c2:	ea82 02d5 	eor.w	r2, r2, r5, lsr #3
200262c6:	4467      	add	r7, ip
200262c8:	4417      	add	r7, r2
200262ca:	9a01      	ldr	r2, [sp, #4]
200262cc:	ea8b 0108 	eor.w	r1, fp, r8
200262d0:	4011      	ands	r1, r2
200262d2:	9a00      	ldr	r2, [sp, #0]
200262d4:	ea81 010b 	eor.w	r1, r1, fp
200262d8:	6c92      	ldr	r2, [r2, #72]	@ 0x48
200262da:	f8ca 7028 	str.w	r7, [sl, #40]	@ 0x28
200262de:	4472      	add	r2, lr
200262e0:	443a      	add	r2, r7
200262e2:	eb01 0c02 	add.w	ip, r1, r2
200262e6:	9a01      	ldr	r2, [sp, #4]
200262e8:	9901      	ldr	r1, [sp, #4]
200262ea:	ea4f 22f2 	mov.w	r2, r2, ror #11
200262ee:	ea82 12b1 	eor.w	r2, r2, r1, ror #6
200262f2:	ea82 6271 	eor.w	r2, r2, r1, ror #25
200262f6:	4462      	add	r2, ip
200262f8:	18b1      	adds	r1, r6, r2
200262fa:	9102      	str	r1, [sp, #8]
200262fc:	ea44 0603 	orr.w	r6, r4, r3
20026300:	ea4f 3173 	mov.w	r1, r3, ror #13
20026304:	ea04 0c03 	and.w	ip, r4, r3
20026308:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
2002630c:	ea06 0609 	and.w	r6, r6, r9
20026310:	ea46 060c 	orr.w	r6, r6, ip
20026314:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
20026318:	4431      	add	r1, r6
2002631a:	4411      	add	r1, r2
2002631c:	ea4f 42f0 	mov.w	r2, r0, ror #19
20026320:	ea82 4270 	eor.w	r2, r2, r0, ror #17
20026324:	f85a 6c10 	ldr.w	r6, [sl, #-16]
20026328:	ea82 2090 	eor.w	r0, r2, r0, lsr #10
2002632c:	f8da 2010 	ldr.w	r2, [sl, #16]
20026330:	ea03 0e01 	and.w	lr, r3, r1
20026334:	4415      	add	r5, r2
20026336:	ea4f 42b6 	mov.w	r2, r6, ror #18
2002633a:	ea82 12f6 	eor.w	r2, r2, r6, ror #7
2002633e:	ea82 02d6 	eor.w	r2, r2, r6, lsr #3
20026342:	4405      	add	r5, r0
20026344:	4415      	add	r5, r2
20026346:	9a01      	ldr	r2, [sp, #4]
20026348:	ea88 0002 	eor.w	r0, r8, r2
2002634c:	9a02      	ldr	r2, [sp, #8]
2002634e:	4010      	ands	r0, r2
20026350:	9a00      	ldr	r2, [sp, #0]
20026352:	ea80 0008 	eor.w	r0, r0, r8
20026356:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
20026358:	f8ca 502c 	str.w	r5, [sl, #44]	@ 0x2c
2002635c:	445a      	add	r2, fp
2002635e:	442a      	add	r2, r5
20026360:	eb00 0c02 	add.w	ip, r0, r2
20026364:	9a02      	ldr	r2, [sp, #8]
20026366:	9802      	ldr	r0, [sp, #8]
20026368:	ea4f 22f2 	mov.w	r2, r2, ror #11
2002636c:	ea82 12b0 	eor.w	r2, r2, r0, ror #6
20026370:	ea82 6270 	eor.w	r2, r2, r0, ror #25
20026374:	4462      	add	r2, ip
20026376:	ea4f 3071 	mov.w	r0, r1, ror #13
2002637a:	ea43 0c01 	orr.w	ip, r3, r1
2002637e:	ea80 00b1 	eor.w	r0, r0, r1, ror #2
20026382:	ea0c 0c04 	and.w	ip, ip, r4
20026386:	ea4c 0c0e 	orr.w	ip, ip, lr
2002638a:	ea80 50b1 	eor.w	r0, r0, r1, ror #22
2002638e:	4460      	add	r0, ip
20026390:	4410      	add	r0, r2
20026392:	4491      	add	r9, r2
20026394:	ea4f 42f7 	mov.w	r2, r7, ror #19
20026398:	ea82 4277 	eor.w	r2, r2, r7, ror #17
2002639c:	f85a cc0c 	ldr.w	ip, [sl, #-12]
200263a0:	ea82 2797 	eor.w	r7, r2, r7, lsr #10
200263a4:	f8da 2014 	ldr.w	r2, [sl, #20]
200263a8:	ea01 0e00 	and.w	lr, r1, r0
200263ac:	4416      	add	r6, r2
200263ae:	ea4f 42bc 	mov.w	r2, ip, ror #18
200263b2:	ea82 12fc 	eor.w	r2, r2, ip, ror #7
200263b6:	ea82 02dc 	eor.w	r2, r2, ip, lsr #3
200263ba:	443e      	add	r6, r7
200263bc:	4416      	add	r6, r2
200263be:	e9dd 2701 	ldrd	r2, r7, [sp, #4]
200263c2:	4057      	eors	r7, r2
200263c4:	ea07 0709 	and.w	r7, r7, r9
200263c8:	4057      	eors	r7, r2
200263ca:	9a00      	ldr	r2, [sp, #0]
200263cc:	f8ca 6030 	str.w	r6, [sl, #48]	@ 0x30
200263d0:	6d12      	ldr	r2, [r2, #80]	@ 0x50
200263d2:	4432      	add	r2, r6
200263d4:	4442      	add	r2, r8
200263d6:	443a      	add	r2, r7
200263d8:	ea4f 27f9 	mov.w	r7, r9, ror #11
200263dc:	ea87 17b9 	eor.w	r7, r7, r9, ror #6
200263e0:	ea87 6779 	eor.w	r7, r7, r9, ror #25
200263e4:	4417      	add	r7, r2
200263e6:	eb04 0807 	add.w	r8, r4, r7
200263ea:	ea4f 3270 	mov.w	r2, r0, ror #13
200263ee:	ea41 0400 	orr.w	r4, r1, r0
200263f2:	ea82 02b0 	eor.w	r2, r2, r0, ror #2
200263f6:	401c      	ands	r4, r3
200263f8:	ea44 040e 	orr.w	r4, r4, lr
200263fc:	ea82 52b0 	eor.w	r2, r2, r0, ror #22
20026400:	4422      	add	r2, r4
20026402:	ea4f 44f5 	mov.w	r4, r5, ror #19
20026406:	ea84 4475 	eor.w	r4, r4, r5, ror #17
2002640a:	ea84 2495 	eor.w	r4, r4, r5, lsr #10
2002640e:	f8da 5018 	ldr.w	r5, [sl, #24]
20026412:	f85a ec08 	ldr.w	lr, [sl, #-8]
20026416:	4465      	add	r5, ip
20026418:	4425      	add	r5, r4
2002641a:	ea4f 44be 	mov.w	r4, lr, ror #18
2002641e:	ea84 14fe 	eor.w	r4, r4, lr, ror #7
20026422:	ea84 04de 	eor.w	r4, r4, lr, lsr #3
20026426:	4425      	add	r5, r4
20026428:	9c02      	ldr	r4, [sp, #8]
2002642a:	443a      	add	r2, r7
2002642c:	ea84 0709 	eor.w	r7, r4, r9
20026430:	ea07 0708 	and.w	r7, r7, r8
20026434:	ea87 0c04 	eor.w	ip, r7, r4
20026438:	9c00      	ldr	r4, [sp, #0]
2002643a:	9f01      	ldr	r7, [sp, #4]
2002643c:	6d64      	ldr	r4, [r4, #84]	@ 0x54
2002643e:	ea00 0b02 	and.w	fp, r0, r2
20026442:	442c      	add	r4, r5
20026444:	443c      	add	r4, r7
20026446:	eb0c 0704 	add.w	r7, ip, r4
2002644a:	ea4f 24f8 	mov.w	r4, r8, ror #11
2002644e:	ea84 14b8 	eor.w	r4, r4, r8, ror #6
20026452:	ea84 6478 	eor.w	r4, r4, r8, ror #25
20026456:	443c      	add	r4, r7
20026458:	191f      	adds	r7, r3, r4
2002645a:	ea40 0c02 	orr.w	ip, r0, r2
2002645e:	ea4f 3372 	mov.w	r3, r2, ror #13
20026462:	ea0c 0c01 	and.w	ip, ip, r1
20026466:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
2002646a:	ea4c 0c0b 	orr.w	ip, ip, fp
2002646e:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
20026472:	4463      	add	r3, ip
20026474:	4423      	add	r3, r4
20026476:	ea4f 44f6 	mov.w	r4, r6, ror #19
2002647a:	ea84 4476 	eor.w	r4, r4, r6, ror #17
2002647e:	ea84 2496 	eor.w	r4, r4, r6, lsr #10
20026482:	f8da 601c 	ldr.w	r6, [sl, #28]
20026486:	f85a cc04 	ldr.w	ip, [sl, #-4]
2002648a:	4476      	add	r6, lr
2002648c:	4426      	add	r6, r4
2002648e:	ea4f 44bc 	mov.w	r4, ip, ror #18
20026492:	ea84 14fc 	eor.w	r4, r4, ip, ror #7
20026496:	ea84 04dc 	eor.w	r4, r4, ip, lsr #3
2002649a:	eb06 0b04 	add.w	fp, r6, r4
2002649e:	9c00      	ldr	r4, [sp, #0]
200264a0:	9e02      	ldr	r6, [sp, #8]
200264a2:	6da4      	ldr	r4, [r4, #88]	@ 0x58
200264a4:	ea89 0e08 	eor.w	lr, r9, r8
200264a8:	445c      	add	r4, fp
200264aa:	4434      	add	r4, r6
200264ac:	ea0e 0e07 	and.w	lr, lr, r7
200264b0:	ea4f 26f7 	mov.w	r6, r7, ror #11
200264b4:	ea8e 0e09 	eor.w	lr, lr, r9
200264b8:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
200264bc:	4474      	add	r4, lr
200264be:	ea86 6677 	eor.w	r6, r6, r7, ror #25
200264c2:	4434      	add	r4, r6
200264c4:	eb01 0e04 	add.w	lr, r1, r4
200264c8:	ea42 0603 	orr.w	r6, r2, r3
200264cc:	ea4f 3173 	mov.w	r1, r3, ror #13
200264d0:	f8ca b038 	str.w	fp, [sl, #56]	@ 0x38
200264d4:	4006      	ands	r6, r0
200264d6:	ea02 0b03 	and.w	fp, r2, r3
200264da:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
200264de:	ea46 060b 	orr.w	r6, r6, fp
200264e2:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
200264e6:	4431      	add	r1, r6
200264e8:	190e      	adds	r6, r1, r4
200264ea:	ea4f 41f5 	mov.w	r1, r5, ror #19
200264ee:	ea81 4175 	eor.w	r1, r1, r5, ror #17
200264f2:	f8ca 5034 	str.w	r5, [sl, #52]	@ 0x34
200264f6:	ea81 2195 	eor.w	r1, r1, r5, lsr #10
200264fa:	9d03      	ldr	r5, [sp, #12]
200264fc:	f8da 4000 	ldr.w	r4, [sl]
20026500:	4465      	add	r5, ip
20026502:	4429      	add	r1, r5
20026504:	ea4f 45b4 	mov.w	r5, r4, ror #18
20026508:	ea85 15f4 	eor.w	r5, r5, r4, ror #7
2002650c:	ea85 05d4 	eor.w	r5, r5, r4, lsr #3
20026510:	194c      	adds	r4, r1, r5
20026512:	9900      	ldr	r1, [sp, #0]
20026514:	ea88 0507 	eor.w	r5, r8, r7
20026518:	6dc9      	ldr	r1, [r1, #92]	@ 0x5c
2002651a:	ea05 050e 	and.w	r5, r5, lr
2002651e:	4421      	add	r1, r4
20026520:	4449      	add	r1, r9
20026522:	ea85 0508 	eor.w	r5, r5, r8
20026526:	440d      	add	r5, r1
20026528:	ea4f 21fe 	mov.w	r1, lr, ror #11
2002652c:	ea81 11be 	eor.w	r1, r1, lr, ror #6
20026530:	ea81 617e 	eor.w	r1, r1, lr, ror #25
20026534:	4429      	add	r1, r5
20026536:	f8ca 403c 	str.w	r4, [sl, #60]	@ 0x3c
2002653a:	eb00 0b01 	add.w	fp, r0, r1
2002653e:	ea43 0406 	orr.w	r4, r3, r6
20026542:	ea4f 3076 	mov.w	r0, r6, ror #13
20026546:	ea80 00b6 	eor.w	r0, r0, r6, ror #2
2002654a:	4014      	ands	r4, r2
2002654c:	ea03 0506 	and.w	r5, r3, r6
20026550:	ea80 50b6 	eor.w	r0, r0, r6, ror #22
20026554:	432c      	orrs	r4, r5
20026556:	4420      	add	r0, r4
20026558:	eb00 0901 	add.w	r9, r0, r1
2002655c:	9900      	ldr	r1, [sp, #0]
2002655e:	3120      	adds	r1, #32
20026560:	9100      	str	r1, [sp, #0]
20026562:	9905      	ldr	r1, [sp, #20]
20026564:	4551      	cmp	r1, sl
20026566:	f47f ae25 	bne.w	200261b4 <mbedtls_sha256_process+0x2b4>
2002656a:	9308      	str	r3, [sp, #32]
2002656c:	9b04      	ldr	r3, [sp, #16]
2002656e:	a906      	add	r1, sp, #24
20026570:	60ca      	str	r2, [r1, #12]
20026572:	f8c1 801c 	str.w	r8, [r1, #28]
20026576:	1d1a      	adds	r2, r3, #4
20026578:	618f      	str	r7, [r1, #24]
2002657a:	3324      	adds	r3, #36	@ 0x24
2002657c:	f8c1 e014 	str.w	lr, [r1, #20]
20026580:	604e      	str	r6, [r1, #4]
20026582:	f8c1 b010 	str.w	fp, [r1, #16]
20026586:	f8c1 9000 	str.w	r9, [r1]
2002658a:	f852 0f04 	ldr.w	r0, [r2, #4]!
2002658e:	f851 4b04 	ldr.w	r4, [r1], #4
20026592:	4293      	cmp	r3, r2
20026594:	4420      	add	r0, r4
20026596:	6010      	str	r0, [r2, #0]
20026598:	d1f7      	bne.n	2002658a <mbedtls_sha256_process+0x68a>
2002659a:	b04f      	add	sp, #316	@ 0x13c
2002659c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

200265a0 <mbedtls_sha256_update.part.0>:
200265a0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
200265a4:	6803      	ldr	r3, [r0, #0]
200265a6:	4605      	mov	r5, r0
200265a8:	f003 073f 	and.w	r7, r3, #63	@ 0x3f
200265ac:	189b      	adds	r3, r3, r2
200265ae:	6003      	str	r3, [r0, #0]
200265b0:	bf28      	it	cs
200265b2:	6843      	ldrcs	r3, [r0, #4]
200265b4:	460e      	mov	r6, r1
200265b6:	bf28      	it	cs
200265b8:	3301      	addcs	r3, #1
200265ba:	4614      	mov	r4, r2
200265bc:	bf28      	it	cs
200265be:	6043      	strcs	r3, [r0, #4]
200265c0:	b197      	cbz	r7, 200265e8 <mbedtls_sha256_update.part.0+0x48>
200265c2:	f1c7 0940 	rsb	r9, r7, #64	@ 0x40
200265c6:	4591      	cmp	r9, r2
200265c8:	d80e      	bhi.n	200265e8 <mbedtls_sha256_update.part.0+0x48>
200265ca:	f100 0828 	add.w	r8, r0, #40	@ 0x28
200265ce:	464a      	mov	r2, r9
200265d0:	eb08 0007 	add.w	r0, r8, r7
200265d4:	f004 f906 	bl	2002a7e4 <memcpy>
200265d8:	3c40      	subs	r4, #64	@ 0x40
200265da:	4641      	mov	r1, r8
200265dc:	4628      	mov	r0, r5
200265de:	443c      	add	r4, r7
200265e0:	f7ff fc8e 	bl	20025f00 <mbedtls_sha256_process>
200265e4:	2700      	movs	r7, #0
200265e6:	444e      	add	r6, r9
200265e8:	46a0      	mov	r8, r4
200265ea:	eb04 0906 	add.w	r9, r4, r6
200265ee:	e004      	b.n	200265fa <mbedtls_sha256_update.part.0+0x5a>
200265f0:	4628      	mov	r0, r5
200265f2:	f7ff fc85 	bl	20025f00 <mbedtls_sha256_process>
200265f6:	f1a8 0840 	sub.w	r8, r8, #64	@ 0x40
200265fa:	f1b8 0f3f 	cmp.w	r8, #63	@ 0x3f
200265fe:	eba9 0108 	sub.w	r1, r9, r8
20026602:	d8f5      	bhi.n	200265f0 <mbedtls_sha256_update.part.0+0x50>
20026604:	f06f 033f 	mvn.w	r3, #63	@ 0x3f
20026608:	09a1      	lsrs	r1, r4, #6
2002660a:	4359      	muls	r1, r3
2002660c:	1862      	adds	r2, r4, r1
2002660e:	d007      	beq.n	20026620 <mbedtls_sha256_update.part.0+0x80>
20026610:	f105 0028 	add.w	r0, r5, #40	@ 0x28
20026614:	1a71      	subs	r1, r6, r1
20026616:	4438      	add	r0, r7
20026618:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002661c:	f004 b8e2 	b.w	2002a7e4 <memcpy>
20026620:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

20026624 <mbedtls_sha256_update>:
20026624:	b10a      	cbz	r2, 2002662a <mbedtls_sha256_update+0x6>
20026626:	f7ff bfbb 	b.w	200265a0 <mbedtls_sha256_update.part.0>
2002662a:	4770      	bx	lr

2002662c <mbedtls_sha256_finish>:
2002662c:	b537      	push	{r0, r1, r2, r4, r5, lr}
2002662e:	4604      	mov	r4, r0
20026630:	460d      	mov	r5, r1
20026632:	e9d0 2100 	ldrd	r2, r1, [r0]
20026636:	0f53      	lsrs	r3, r2, #29
20026638:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
2002663c:	ba1b      	rev	r3, r3
2002663e:	9300      	str	r3, [sp, #0]
20026640:	00d3      	lsls	r3, r2, #3
20026642:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
20026646:	2a37      	cmp	r2, #55	@ 0x37
20026648:	ba1b      	rev	r3, r3
2002664a:	bf94      	ite	ls
2002664c:	f1c2 0238 	rsbls	r2, r2, #56	@ 0x38
20026650:	f1c2 0278 	rsbhi	r2, r2, #120	@ 0x78
20026654:	492b      	ldr	r1, [pc, #172]	@ (20026704 <mbedtls_sha256_finish+0xd8>)
20026656:	9301      	str	r3, [sp, #4]
20026658:	f7ff ffe4 	bl	20026624 <mbedtls_sha256_update>
2002665c:	2208      	movs	r2, #8
2002665e:	4669      	mov	r1, sp
20026660:	4620      	mov	r0, r4
20026662:	f7ff ff9d 	bl	200265a0 <mbedtls_sha256_update.part.0>
20026666:	7ae3      	ldrb	r3, [r4, #11]
20026668:	702b      	strb	r3, [r5, #0]
2002666a:	8963      	ldrh	r3, [r4, #10]
2002666c:	706b      	strb	r3, [r5, #1]
2002666e:	68a3      	ldr	r3, [r4, #8]
20026670:	0a1b      	lsrs	r3, r3, #8
20026672:	70ab      	strb	r3, [r5, #2]
20026674:	68a3      	ldr	r3, [r4, #8]
20026676:	70eb      	strb	r3, [r5, #3]
20026678:	7be3      	ldrb	r3, [r4, #15]
2002667a:	712b      	strb	r3, [r5, #4]
2002667c:	89e3      	ldrh	r3, [r4, #14]
2002667e:	716b      	strb	r3, [r5, #5]
20026680:	68e3      	ldr	r3, [r4, #12]
20026682:	0a1b      	lsrs	r3, r3, #8
20026684:	71ab      	strb	r3, [r5, #6]
20026686:	68e3      	ldr	r3, [r4, #12]
20026688:	71eb      	strb	r3, [r5, #7]
2002668a:	7ce3      	ldrb	r3, [r4, #19]
2002668c:	722b      	strb	r3, [r5, #8]
2002668e:	8a63      	ldrh	r3, [r4, #18]
20026690:	726b      	strb	r3, [r5, #9]
20026692:	6923      	ldr	r3, [r4, #16]
20026694:	0a1b      	lsrs	r3, r3, #8
20026696:	72ab      	strb	r3, [r5, #10]
20026698:	6923      	ldr	r3, [r4, #16]
2002669a:	72eb      	strb	r3, [r5, #11]
2002669c:	7de3      	ldrb	r3, [r4, #23]
2002669e:	732b      	strb	r3, [r5, #12]
200266a0:	8ae3      	ldrh	r3, [r4, #22]
200266a2:	736b      	strb	r3, [r5, #13]
200266a4:	6963      	ldr	r3, [r4, #20]
200266a6:	0a1b      	lsrs	r3, r3, #8
200266a8:	73ab      	strb	r3, [r5, #14]
200266aa:	6963      	ldr	r3, [r4, #20]
200266ac:	73eb      	strb	r3, [r5, #15]
200266ae:	7ee3      	ldrb	r3, [r4, #27]
200266b0:	742b      	strb	r3, [r5, #16]
200266b2:	8b63      	ldrh	r3, [r4, #26]
200266b4:	746b      	strb	r3, [r5, #17]
200266b6:	69a3      	ldr	r3, [r4, #24]
200266b8:	0a1b      	lsrs	r3, r3, #8
200266ba:	74ab      	strb	r3, [r5, #18]
200266bc:	69a3      	ldr	r3, [r4, #24]
200266be:	74eb      	strb	r3, [r5, #19]
200266c0:	7fe3      	ldrb	r3, [r4, #31]
200266c2:	752b      	strb	r3, [r5, #20]
200266c4:	8be3      	ldrh	r3, [r4, #30]
200266c6:	756b      	strb	r3, [r5, #21]
200266c8:	69e3      	ldr	r3, [r4, #28]
200266ca:	0a1b      	lsrs	r3, r3, #8
200266cc:	75ab      	strb	r3, [r5, #22]
200266ce:	69e3      	ldr	r3, [r4, #28]
200266d0:	75eb      	strb	r3, [r5, #23]
200266d2:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200266d6:	762b      	strb	r3, [r5, #24]
200266d8:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
200266da:	766b      	strb	r3, [r5, #25]
200266dc:	6a23      	ldr	r3, [r4, #32]
200266de:	0a1b      	lsrs	r3, r3, #8
200266e0:	76ab      	strb	r3, [r5, #26]
200266e2:	6a23      	ldr	r3, [r4, #32]
200266e4:	76eb      	strb	r3, [r5, #27]
200266e6:	6ea3      	ldr	r3, [r4, #104]	@ 0x68
200266e8:	b94b      	cbnz	r3, 200266fe <mbedtls_sha256_finish+0xd2>
200266ea:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
200266ee:	772b      	strb	r3, [r5, #28]
200266f0:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
200266f2:	776b      	strb	r3, [r5, #29]
200266f4:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200266f6:	0a1b      	lsrs	r3, r3, #8
200266f8:	77ab      	strb	r3, [r5, #30]
200266fa:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200266fc:	77eb      	strb	r3, [r5, #31]
200266fe:	b003      	add	sp, #12
20026700:	bd30      	pop	{r4, r5, pc}
20026702:	bf00      	nop
20026704:	2002bcf8 	.word	0x2002bcf8

20026708 <mbedtls_sha256>:
20026708:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
2002670c:	461d      	mov	r5, r3
2002670e:	b09c      	sub	sp, #112	@ 0x70
20026710:	4607      	mov	r7, r0
20026712:	a801      	add	r0, sp, #4
20026714:	4688      	mov	r8, r1
20026716:	4616      	mov	r6, r2
20026718:	f7ff fb97 	bl	20025e4a <mbedtls_sha256_init>
2002671c:	b355      	cbz	r5, 20026774 <mbedtls_sha256+0x6c>
2002671e:	f8df a090 	ldr.w	sl, [pc, #144]	@ 200267b0 <mbedtls_sha256+0xa8>
20026722:	f8df 9090 	ldr.w	r9, [pc, #144]	@ 200267b4 <mbedtls_sha256+0xac>
20026726:	f8df e090 	ldr.w	lr, [pc, #144]	@ 200267b8 <mbedtls_sha256+0xb0>
2002672a:	f8df c090 	ldr.w	ip, [pc, #144]	@ 200267bc <mbedtls_sha256+0xb4>
2002672e:	4818      	ldr	r0, [pc, #96]	@ (20026790 <mbedtls_sha256+0x88>)
20026730:	4918      	ldr	r1, [pc, #96]	@ (20026794 <mbedtls_sha256+0x8c>)
20026732:	4a19      	ldr	r2, [pc, #100]	@ (20026798 <mbedtls_sha256+0x90>)
20026734:	4b19      	ldr	r3, [pc, #100]	@ (2002679c <mbedtls_sha256+0x94>)
20026736:	2400      	movs	r4, #0
20026738:	e9cd 2309 	strd	r2, r3, [sp, #36]	@ 0x24
2002673c:	e9cd 0107 	strd	r0, r1, [sp, #28]
20026740:	4642      	mov	r2, r8
20026742:	4639      	mov	r1, r7
20026744:	a801      	add	r0, sp, #4
20026746:	e9cd ec05 	strd	lr, ip, [sp, #20]
2002674a:	e9cd 4401 	strd	r4, r4, [sp, #4]
2002674e:	e9cd a903 	strd	sl, r9, [sp, #12]
20026752:	951b      	str	r5, [sp, #108]	@ 0x6c
20026754:	f7ff ff66 	bl	20026624 <mbedtls_sha256_update>
20026758:	4631      	mov	r1, r6
2002675a:	a801      	add	r0, sp, #4
2002675c:	f7ff ff66 	bl	2002662c <mbedtls_sha256_finish>
20026760:	4623      	mov	r3, r4
20026762:	4622      	mov	r2, r4
20026764:	a901      	add	r1, sp, #4
20026766:	54ca      	strb	r2, [r1, r3]
20026768:	3301      	adds	r3, #1
2002676a:	2b6c      	cmp	r3, #108	@ 0x6c
2002676c:	d1fa      	bne.n	20026764 <mbedtls_sha256+0x5c>
2002676e:	b01c      	add	sp, #112	@ 0x70
20026770:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20026774:	f8df a048 	ldr.w	sl, [pc, #72]	@ 200267c0 <mbedtls_sha256+0xb8>
20026778:	f8df 9048 	ldr.w	r9, [pc, #72]	@ 200267c4 <mbedtls_sha256+0xbc>
2002677c:	f8df e048 	ldr.w	lr, [pc, #72]	@ 200267c8 <mbedtls_sha256+0xc0>
20026780:	f8df c048 	ldr.w	ip, [pc, #72]	@ 200267cc <mbedtls_sha256+0xc4>
20026784:	4806      	ldr	r0, [pc, #24]	@ (200267a0 <mbedtls_sha256+0x98>)
20026786:	4907      	ldr	r1, [pc, #28]	@ (200267a4 <mbedtls_sha256+0x9c>)
20026788:	4a07      	ldr	r2, [pc, #28]	@ (200267a8 <mbedtls_sha256+0xa0>)
2002678a:	4b08      	ldr	r3, [pc, #32]	@ (200267ac <mbedtls_sha256+0xa4>)
2002678c:	e7d3      	b.n	20026736 <mbedtls_sha256+0x2e>
2002678e:	bf00      	nop
20026790:	ffc00b31 	.word	0xffc00b31
20026794:	68581511 	.word	0x68581511
20026798:	64f98fa7 	.word	0x64f98fa7
2002679c:	befa4fa4 	.word	0xbefa4fa4
200267a0:	510e527f 	.word	0x510e527f
200267a4:	9b05688c 	.word	0x9b05688c
200267a8:	1f83d9ab 	.word	0x1f83d9ab
200267ac:	5be0cd19 	.word	0x5be0cd19
200267b0:	c1059ed8 	.word	0xc1059ed8
200267b4:	367cd507 	.word	0x367cd507
200267b8:	3070dd17 	.word	0x3070dd17
200267bc:	f70e5939 	.word	0xf70e5939
200267c0:	6a09e667 	.word	0x6a09e667
200267c4:	bb67ae85 	.word	0xbb67ae85
200267c8:	3c6ef372 	.word	0x3c6ef372
200267cc:	a54ff53a 	.word	0xa54ff53a

200267d0 <mbedtls_sha512_init>:
200267d0:	22d8      	movs	r2, #216	@ 0xd8
200267d2:	2100      	movs	r1, #0
200267d4:	f003 bfec 	b.w	2002a7b0 <memset>

200267d8 <mbedtls_sha512_free>:
200267d8:	b138      	cbz	r0, 200267ea <mbedtls_sha512_free+0x12>
200267da:	2100      	movs	r1, #0
200267dc:	f100 03d8 	add.w	r3, r0, #216	@ 0xd8
200267e0:	4602      	mov	r2, r0
200267e2:	3001      	adds	r0, #1
200267e4:	4298      	cmp	r0, r3
200267e6:	7011      	strb	r1, [r2, #0]
200267e8:	d1fa      	bne.n	200267e0 <mbedtls_sha512_free+0x8>
200267ea:	4770      	bx	lr

200267ec <mbedtls_sha512_clone>:
200267ec:	b508      	push	{r3, lr}
200267ee:	22d8      	movs	r2, #216	@ 0xd8
200267f0:	f003 fff8 	bl	2002a7e4 <memcpy>
200267f4:	bd08      	pop	{r3, pc}
	...

200267f8 <mbedtls_sha512_starts>:
200267f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200267fc:	b381      	cbz	r1, 20026860 <mbedtls_sha512_starts+0x68>
200267fe:	f20f 0bc8 	addw	fp, pc, #200	@ 0xc8
20026802:	e9db ab00 	ldrd	sl, fp, [fp]
20026806:	f20f 09c8 	addw	r9, pc, #200	@ 0xc8
2002680a:	e9d9 8900 	ldrd	r8, r9, [r9]
2002680e:	a732      	add	r7, pc, #200	@ (adr r7, 200268d8 <mbedtls_sha512_starts+0xe0>)
20026810:	e9d7 6700 	ldrd	r6, r7, [r7]
20026814:	a532      	add	r5, pc, #200	@ (adr r5, 200268e0 <mbedtls_sha512_starts+0xe8>)
20026816:	e9d5 4500 	ldrd	r4, r5, [r5]
2002681a:	a333      	add	r3, pc, #204	@ (adr r3, 200268e8 <mbedtls_sha512_starts+0xf0>)
2002681c:	e9d3 2300 	ldrd	r2, r3, [r3]
20026820:	ed9f 5b1b 	vldr	d5, [pc, #108]	@ 20026890 <mbedtls_sha512_starts+0x98>
20026824:	ed9f 6b1c 	vldr	d6, [pc, #112]	@ 20026898 <mbedtls_sha512_starts+0xa0>
20026828:	ed9f 7b1d 	vldr	d7, [pc, #116]	@ 200268a0 <mbedtls_sha512_starts+0xa8>
2002682c:	ed9f 4b1e 	vldr	d4, [pc, #120]	@ 200268a8 <mbedtls_sha512_starts+0xb0>
20026830:	ed80 5b04 	vstr	d5, [r0, #16]
20026834:	ed80 4b00 	vstr	d4, [r0]
20026838:	ed80 4b02 	vstr	d4, [r0, #8]
2002683c:	ed80 6b06 	vstr	d6, [r0, #24]
20026840:	ed80 7b08 	vstr	d7, [r0, #32]
20026844:	e9c0 ab0a 	strd	sl, fp, [r0, #40]	@ 0x28
20026848:	e9c0 890c 	strd	r8, r9, [r0, #48]	@ 0x30
2002684c:	e9c0 670e 	strd	r6, r7, [r0, #56]	@ 0x38
20026850:	e9c0 4510 	strd	r4, r5, [r0, #64]	@ 0x40
20026854:	e9c0 2312 	strd	r2, r3, [r0, #72]	@ 0x48
20026858:	f8c0 10d0 	str.w	r1, [r0, #208]	@ 0xd0
2002685c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20026860:	ed9f 5b13 	vldr	d5, [pc, #76]	@ 200268b0 <mbedtls_sha512_starts+0xb8>
20026864:	f20f 0b88 	addw	fp, pc, #136	@ 0x88
20026868:	e9db ab00 	ldrd	sl, fp, [fp]
2002686c:	f20f 0988 	addw	r9, pc, #136	@ 0x88
20026870:	e9d9 8900 	ldrd	r8, r9, [r9]
20026874:	a722      	add	r7, pc, #136	@ (adr r7, 20026900 <mbedtls_sha512_starts+0x108>)
20026876:	e9d7 6700 	ldrd	r6, r7, [r7]
2002687a:	a523      	add	r5, pc, #140	@ (adr r5, 20026908 <mbedtls_sha512_starts+0x110>)
2002687c:	e9d5 4500 	ldrd	r4, r5, [r5]
20026880:	a323      	add	r3, pc, #140	@ (adr r3, 20026910 <mbedtls_sha512_starts+0x118>)
20026882:	e9d3 2300 	ldrd	r2, r3, [r3]
20026886:	ed9f 6b0c 	vldr	d6, [pc, #48]	@ 200268b8 <mbedtls_sha512_starts+0xc0>
2002688a:	ed9f 7b0d 	vldr	d7, [pc, #52]	@ 200268c0 <mbedtls_sha512_starts+0xc8>
2002688e:	e7cd      	b.n	2002682c <mbedtls_sha512_starts+0x34>
20026890:	c1059ed8 	.word	0xc1059ed8
20026894:	cbbb9d5d 	.word	0xcbbb9d5d
20026898:	367cd507 	.word	0x367cd507
2002689c:	629a292a 	.word	0x629a292a
200268a0:	3070dd17 	.word	0x3070dd17
200268a4:	9159015a 	.word	0x9159015a
	...
200268b0:	f3bcc908 	.word	0xf3bcc908
200268b4:	6a09e667 	.word	0x6a09e667
200268b8:	84caa73b 	.word	0x84caa73b
200268bc:	bb67ae85 	.word	0xbb67ae85
200268c0:	fe94f82b 	.word	0xfe94f82b
200268c4:	3c6ef372 	.word	0x3c6ef372
200268c8:	f70e5939 	.word	0xf70e5939
200268cc:	152fecd8 	.word	0x152fecd8
200268d0:	ffc00b31 	.word	0xffc00b31
200268d4:	67332667 	.word	0x67332667
200268d8:	68581511 	.word	0x68581511
200268dc:	8eb44a87 	.word	0x8eb44a87
200268e0:	64f98fa7 	.word	0x64f98fa7
200268e4:	db0c2e0d 	.word	0xdb0c2e0d
200268e8:	befa4fa4 	.word	0xbefa4fa4
200268ec:	47b5481d 	.word	0x47b5481d
200268f0:	5f1d36f1 	.word	0x5f1d36f1
200268f4:	a54ff53a 	.word	0xa54ff53a
200268f8:	ade682d1 	.word	0xade682d1
200268fc:	510e527f 	.word	0x510e527f
20026900:	2b3e6c1f 	.word	0x2b3e6c1f
20026904:	9b05688c 	.word	0x9b05688c
20026908:	fb41bd6b 	.word	0xfb41bd6b
2002690c:	1f83d9ab 	.word	0x1f83d9ab
20026910:	137e2179 	.word	0x137e2179
20026914:	5be0cd19 	.word	0x5be0cd19

20026918 <mbedtls_sha512_process>:
20026918:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002691c:	f5ad 7d3f 	sub.w	sp, sp, #764	@ 0x2fc
20026920:	4682      	mov	sl, r0
20026922:	a81e      	add	r0, sp, #120	@ 0x78
20026924:	4604      	mov	r4, r0
20026926:	f101 0580 	add.w	r5, r1, #128	@ 0x80
2002692a:	784b      	ldrb	r3, [r1, #1]
2002692c:	780a      	ldrb	r2, [r1, #0]
2002692e:	041b      	lsls	r3, r3, #16
20026930:	790f      	ldrb	r7, [r1, #4]
20026932:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
20026936:	79ca      	ldrb	r2, [r1, #7]
20026938:	788e      	ldrb	r6, [r1, #2]
2002693a:	ea42 6207 	orr.w	r2, r2, r7, lsl #24
2002693e:	794f      	ldrb	r7, [r1, #5]
20026940:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
20026944:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
20026948:	78ce      	ldrb	r6, [r1, #3]
2002694a:	798f      	ldrb	r7, [r1, #6]
2002694c:	3108      	adds	r1, #8
2002694e:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
20026952:	4333      	orrs	r3, r6
20026954:	428d      	cmp	r5, r1
20026956:	e9c4 2300 	strd	r2, r3, [r4]
2002695a:	f104 0408 	add.w	r4, r4, #8
2002695e:	d1e4      	bne.n	2002692a <mbedtls_sha512_process+0x12>
20026960:	4601      	mov	r1, r0
20026962:	2610      	movs	r6, #16
20026964:	e9d1 4c1c 	ldrd	r4, ip, [r1, #112]	@ 0x70
20026968:	e9d1 2502 	ldrd	r2, r5, [r1, #8]
2002696c:	468e      	mov	lr, r1
2002696e:	0ce3      	lsrs	r3, r4, #19
20026970:	ea4f 47dc 	mov.w	r7, ip, lsr #19
20026974:	ea4f 09c4 	mov.w	r9, r4, lsl #3
20026978:	ea4f 08cc 	mov.w	r8, ip, lsl #3
2002697c:	ea48 7854 	orr.w	r8, r8, r4, lsr #29
20026980:	ea43 334c 	orr.w	r3, r3, ip, lsl #13
20026984:	ea47 3744 	orr.w	r7, r7, r4, lsl #13
20026988:	ea49 795c 	orr.w	r9, r9, ip, lsr #29
2002698c:	09a4      	lsrs	r4, r4, #6
2002698e:	ea87 0708 	eor.w	r7, r7, r8
20026992:	ea44 648c 	orr.w	r4, r4, ip, lsl #26
20026996:	ea83 0309 	eor.w	r3, r3, r9
2002699a:	4063      	eors	r3, r4
2002699c:	ea87 179c 	eor.w	r7, r7, ip, lsr #6
200269a0:	e9de 4c12 	ldrd	r4, ip, [lr, #72]	@ 0x48
200269a4:	e9de 8e00 	ldrd	r8, lr, [lr]
200269a8:	eb14 0408 	adds.w	r4, r4, r8
200269ac:	eb4c 0c0e 	adc.w	ip, ip, lr
200269b0:	191b      	adds	r3, r3, r4
200269b2:	eb47 070c 	adc.w	r7, r7, ip
200269b6:	0854      	lsrs	r4, r2, #1
200269b8:	ea4f 2812 	mov.w	r8, r2, lsr #8
200269bc:	ea4f 0c55 	mov.w	ip, r5, lsr #1
200269c0:	ea4f 2e15 	mov.w	lr, r5, lsr #8
200269c4:	ea4c 7cc2 	orr.w	ip, ip, r2, lsl #31
200269c8:	ea4e 6e02 	orr.w	lr, lr, r2, lsl #24
200269cc:	ea44 74c5 	orr.w	r4, r4, r5, lsl #31
200269d0:	ea48 6805 	orr.w	r8, r8, r5, lsl #24
200269d4:	09d2      	lsrs	r2, r2, #7
200269d6:	ea84 0408 	eor.w	r4, r4, r8
200269da:	ea42 6245 	orr.w	r2, r2, r5, lsl #25
200269de:	4062      	eors	r2, r4
200269e0:	ea8c 0c0e 	eor.w	ip, ip, lr
200269e4:	189b      	adds	r3, r3, r2
200269e6:	ea8c 14d5 	eor.w	r4, ip, r5, lsr #7
200269ea:	f106 0601 	add.w	r6, r6, #1
200269ee:	eb47 0704 	adc.w	r7, r7, r4
200269f2:	3108      	adds	r1, #8
200269f4:	2e50      	cmp	r6, #80	@ 0x50
200269f6:	e9c1 371e 	strd	r3, r7, [r1, #120]	@ 0x78
200269fa:	d1b3      	bne.n	20026964 <mbedtls_sha512_process+0x4c>
200269fc:	f8da 3010 	ldr.w	r3, [sl, #16]
20026a00:	930e      	str	r3, [sp, #56]	@ 0x38
20026a02:	f8da 3014 	ldr.w	r3, [sl, #20]
20026a06:	930f      	str	r3, [sp, #60]	@ 0x3c
20026a08:	f8da 3018 	ldr.w	r3, [sl, #24]
20026a0c:	9310      	str	r3, [sp, #64]	@ 0x40
20026a0e:	f8da 301c 	ldr.w	r3, [sl, #28]
20026a12:	9311      	str	r3, [sp, #68]	@ 0x44
20026a14:	f8da 3020 	ldr.w	r3, [sl, #32]
20026a18:	9312      	str	r3, [sp, #72]	@ 0x48
20026a1a:	f8da 3024 	ldr.w	r3, [sl, #36]	@ 0x24
20026a1e:	9313      	str	r3, [sp, #76]	@ 0x4c
20026a20:	f8da 3028 	ldr.w	r3, [sl, #40]	@ 0x28
20026a24:	9314      	str	r3, [sp, #80]	@ 0x50
20026a26:	f8da 302c 	ldr.w	r3, [sl, #44]	@ 0x2c
20026a2a:	9315      	str	r3, [sp, #84]	@ 0x54
20026a2c:	f8da 3030 	ldr.w	r3, [sl, #48]	@ 0x30
20026a30:	9316      	str	r3, [sp, #88]	@ 0x58
20026a32:	f8da 3034 	ldr.w	r3, [sl, #52]	@ 0x34
20026a36:	9317      	str	r3, [sp, #92]	@ 0x5c
20026a38:	f8da 3038 	ldr.w	r3, [sl, #56]	@ 0x38
20026a3c:	9318      	str	r3, [sp, #96]	@ 0x60
20026a3e:	f8da 303c 	ldr.w	r3, [sl, #60]	@ 0x3c
20026a42:	9319      	str	r3, [sp, #100]	@ 0x64
20026a44:	f8da 3040 	ldr.w	r3, [sl, #64]	@ 0x40
20026a48:	931a      	str	r3, [sp, #104]	@ 0x68
20026a4a:	f8da 3044 	ldr.w	r3, [sl, #68]	@ 0x44
20026a4e:	931b      	str	r3, [sp, #108]	@ 0x6c
20026a50:	f8da 3048 	ldr.w	r3, [sl, #72]	@ 0x48
20026a54:	931c      	str	r3, [sp, #112]	@ 0x70
20026a56:	f8da 304c 	ldr.w	r3, [sl, #76]	@ 0x4c
20026a5a:	931d      	str	r3, [sp, #116]	@ 0x74
20026a5c:	4b0f      	ldr	r3, [pc, #60]	@ (20026a9c <mbedtls_sha512_process+0x184>)
20026a5e:	9300      	str	r3, [sp, #0]
20026a60:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
20026a62:	f8dd b054 	ldr.w	fp, [sp, #84]	@ 0x54
20026a66:	930a      	str	r3, [sp, #40]	@ 0x28
20026a68:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
20026a6a:	e9dd ce10 	ldrd	ip, lr, [sp, #64]	@ 0x40
20026a6e:	930b      	str	r3, [sp, #44]	@ 0x2c
20026a70:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20026a72:	9308      	str	r3, [sp, #32]
20026a74:	9b1b      	ldr	r3, [sp, #108]	@ 0x6c
20026a76:	9309      	str	r3, [sp, #36]	@ 0x24
20026a78:	9b18      	ldr	r3, [sp, #96]	@ 0x60
20026a7a:	9306      	str	r3, [sp, #24]
20026a7c:	9b19      	ldr	r3, [sp, #100]	@ 0x64
20026a7e:	9307      	str	r3, [sp, #28]
20026a80:	9b16      	ldr	r3, [sp, #88]	@ 0x58
20026a82:	9304      	str	r3, [sp, #16]
20026a84:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
20026a86:	9305      	str	r3, [sp, #20]
20026a88:	9b14      	ldr	r3, [sp, #80]	@ 0x50
20026a8a:	9303      	str	r3, [sp, #12]
20026a8c:	9b12      	ldr	r3, [sp, #72]	@ 0x48
20026a8e:	9301      	str	r3, [sp, #4]
20026a90:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
20026a92:	9302      	str	r3, [sp, #8]
20026a94:	e9dd 320e 	ldrd	r3, r2, [sp, #56]	@ 0x38
20026a98:	e002      	b.n	20026aa0 <mbedtls_sha512_process+0x188>
20026a9a:	bf00      	nop
20026a9c:	2002beb8 	.word	0x2002beb8
20026aa0:	9c04      	ldr	r4, [sp, #16]
20026aa2:	9e04      	ldr	r6, [sp, #16]
20026aa4:	ea4f 3894 	mov.w	r8, r4, lsr #14
20026aa8:	9c05      	ldr	r4, [sp, #20]
20026aaa:	9900      	ldr	r1, [sp, #0]
20026aac:	ea48 4884 	orr.w	r8, r8, r4, lsl #18
20026ab0:	ea4f 3994 	mov.w	r9, r4, lsr #14
20026ab4:	9c04      	ldr	r4, [sp, #16]
20026ab6:	ea49 4984 	orr.w	r9, r9, r4, lsl #18
20026aba:	0ca5      	lsrs	r5, r4, #18
20026abc:	9c05      	ldr	r4, [sp, #20]
20026abe:	ea45 3584 	orr.w	r5, r5, r4, lsl #14
20026ac2:	0ca4      	lsrs	r4, r4, #18
20026ac4:	ea44 3486 	orr.w	r4, r4, r6, lsl #14
20026ac8:	ea89 0904 	eor.w	r9, r9, r4
20026acc:	9c05      	ldr	r4, [sp, #20]
20026ace:	ea88 0805 	eor.w	r8, r8, r5
20026ad2:	05f5      	lsls	r5, r6, #23
20026ad4:	ea45 2554 	orr.w	r5, r5, r4, lsr #9
20026ad8:	05e4      	lsls	r4, r4, #23
20026ada:	ea44 2456 	orr.w	r4, r4, r6, lsr #9
20026ade:	ea88 0805 	eor.w	r8, r8, r5
20026ae2:	ea89 0904 	eor.w	r9, r9, r4
20026ae6:	e9d1 5700 	ldrd	r5, r7, [r1]
20026aea:	e9d0 6400 	ldrd	r6, r4, [r0]
20026aee:	19ad      	adds	r5, r5, r6
20026af0:	eb47 0404 	adc.w	r4, r7, r4
20026af4:	9e06      	ldr	r6, [sp, #24]
20026af6:	9f08      	ldr	r7, [sp, #32]
20026af8:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026afa:	407e      	eors	r6, r7
20026afc:	9f07      	ldr	r7, [sp, #28]
20026afe:	eb18 0505 	adds.w	r5, r8, r5
20026b02:	ea87 0701 	eor.w	r7, r7, r1
20026b06:	9904      	ldr	r1, [sp, #16]
20026b08:	eb49 0404 	adc.w	r4, r9, r4
20026b0c:	400e      	ands	r6, r1
20026b0e:	9905      	ldr	r1, [sp, #20]
20026b10:	ea4f 7813 	mov.w	r8, r3, lsr #28
20026b14:	400f      	ands	r7, r1
20026b16:	9908      	ldr	r1, [sp, #32]
20026b18:	ea4f 7983 	mov.w	r9, r3, lsl #30
20026b1c:	404e      	eors	r6, r1
20026b1e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026b20:	19ad      	adds	r5, r5, r6
20026b22:	ea87 0701 	eor.w	r7, r7, r1
20026b26:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026b28:	eb44 0407 	adc.w	r4, r4, r7
20026b2c:	186d      	adds	r5, r5, r1
20026b2e:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026b30:	ea4f 7712 	mov.w	r7, r2, lsr #28
20026b34:	eb41 0404 	adc.w	r4, r1, r4
20026b38:	9903      	ldr	r1, [sp, #12]
20026b3a:	0796      	lsls	r6, r2, #30
20026b3c:	1949      	adds	r1, r1, r5
20026b3e:	ea46 0693 	orr.w	r6, r6, r3, lsr #2
20026b42:	ea47 1703 	orr.w	r7, r7, r3, lsl #4
20026b46:	910a      	str	r1, [sp, #40]	@ 0x28
20026b48:	ea87 0706 	eor.w	r7, r7, r6
20026b4c:	eb4b 0104 	adc.w	r1, fp, r4
20026b50:	0656      	lsls	r6, r2, #25
20026b52:	ea49 0992 	orr.w	r9, r9, r2, lsr #2
20026b56:	ea46 16d3 	orr.w	r6, r6, r3, lsr #7
20026b5a:	910b      	str	r1, [sp, #44]	@ 0x2c
20026b5c:	ea48 1802 	orr.w	r8, r8, r2, lsl #4
20026b60:	9901      	ldr	r1, [sp, #4]
20026b62:	ea88 0809 	eor.w	r8, r8, r9
20026b66:	4077      	eors	r7, r6
20026b68:	ea4f 6943 	mov.w	r9, r3, lsl #25
20026b6c:	ea43 060c 	orr.w	r6, r3, ip
20026b70:	ea49 19d2 	orr.w	r9, r9, r2, lsr #7
20026b74:	400e      	ands	r6, r1
20026b76:	9902      	ldr	r1, [sp, #8]
20026b78:	ea03 0b0c 	and.w	fp, r3, ip
20026b7c:	ea88 0809 	eor.w	r8, r8, r9
20026b80:	ea42 090e 	orr.w	r9, r2, lr
20026b84:	ea09 0901 	and.w	r9, r9, r1
20026b88:	ea46 060b 	orr.w	r6, r6, fp
20026b8c:	ea02 010e 	and.w	r1, r2, lr
20026b90:	eb18 0606 	adds.w	r6, r8, r6
20026b94:	ea49 0901 	orr.w	r9, r9, r1
20026b98:	eb47 0709 	adc.w	r7, r7, r9
20026b9c:	1971      	adds	r1, r6, r5
20026b9e:	9103      	str	r1, [sp, #12]
20026ba0:	9900      	ldr	r1, [sp, #0]
20026ba2:	eb44 0b07 	adc.w	fp, r4, r7
20026ba6:	e9d0 6702 	ldrd	r6, r7, [r0, #8]
20026baa:	e9d1 4502 	ldrd	r4, r5, [r1, #8]
20026bae:	9908      	ldr	r1, [sp, #32]
20026bb0:	19a4      	adds	r4, r4, r6
20026bb2:	eb45 0507 	adc.w	r5, r5, r7
20026bb6:	1864      	adds	r4, r4, r1
20026bb8:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026bba:	9e06      	ldr	r6, [sp, #24]
20026bbc:	eb41 0505 	adc.w	r5, r1, r5
20026bc0:	9904      	ldr	r1, [sp, #16]
20026bc2:	ea81 0706 	eor.w	r7, r1, r6
20026bc6:	9905      	ldr	r1, [sp, #20]
20026bc8:	9e07      	ldr	r6, [sp, #28]
20026bca:	404e      	eors	r6, r1
20026bcc:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026bce:	400f      	ands	r7, r1
20026bd0:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026bd2:	400e      	ands	r6, r1
20026bd4:	9906      	ldr	r1, [sp, #24]
20026bd6:	404f      	eors	r7, r1
20026bd8:	9907      	ldr	r1, [sp, #28]
20026bda:	19e4      	adds	r4, r4, r7
20026bdc:	ea86 0601 	eor.w	r6, r6, r1
20026be0:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026be2:	eb45 0506 	adc.w	r5, r5, r6
20026be6:	0b8f      	lsrs	r7, r1, #14
20026be8:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026bea:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026bee:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026bf2:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026bf4:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026bf8:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026bfc:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026bfe:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026c02:	0c8e      	lsrs	r6, r1, #18
20026c04:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026c06:	ea87 0709 	eor.w	r7, r7, r9
20026c0a:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026c0e:	ea88 0806 	eor.w	r8, r8, r6
20026c12:	05ce      	lsls	r6, r1, #23
20026c14:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026c16:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026c1a:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026c1e:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026c20:	407e      	eors	r6, r7
20026c22:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026c26:	9901      	ldr	r1, [sp, #4]
20026c28:	19a4      	adds	r4, r4, r6
20026c2a:	ea88 0809 	eor.w	r8, r8, r9
20026c2e:	eb45 0808 	adc.w	r8, r5, r8
20026c32:	1909      	adds	r1, r1, r4
20026c34:	9108      	str	r1, [sp, #32]
20026c36:	9902      	ldr	r1, [sp, #8]
20026c38:	ea4f 761b 	mov.w	r6, fp, lsr #28
20026c3c:	eb41 0108 	adc.w	r1, r1, r8
20026c40:	9109      	str	r1, [sp, #36]	@ 0x24
20026c42:	9903      	ldr	r1, [sp, #12]
20026c44:	ea4f 758b 	mov.w	r5, fp, lsl #30
20026c48:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026c4c:	0f0f      	lsrs	r7, r1, #28
20026c4e:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026c52:	ea4f 7981 	mov.w	r9, r1, lsl #30
20026c56:	ea49 099b 	orr.w	r9, r9, fp, lsr #2
20026c5a:	ea47 170b 	orr.w	r7, r7, fp, lsl #4
20026c5e:	406e      	eors	r6, r5
20026c60:	ea4f 654b 	mov.w	r5, fp, lsl #25
20026c64:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20026c68:	ea87 0709 	eor.w	r7, r7, r9
20026c6c:	ea4f 6941 	mov.w	r9, r1, lsl #25
20026c70:	ea49 19db 	orr.w	r9, r9, fp, lsr #7
20026c74:	406e      	eors	r6, r5
20026c76:	ea43 0501 	orr.w	r5, r3, r1
20026c7a:	ea87 0709 	eor.w	r7, r7, r9
20026c7e:	4019      	ands	r1, r3
20026c80:	ea42 090b 	orr.w	r9, r2, fp
20026c84:	ea05 050c 	and.w	r5, r5, ip
20026c88:	ea09 090e 	and.w	r9, r9, lr
20026c8c:	430d      	orrs	r5, r1
20026c8e:	ea02 010b 	and.w	r1, r2, fp
20026c92:	197d      	adds	r5, r7, r5
20026c94:	ea49 0901 	orr.w	r9, r9, r1
20026c98:	eb46 0609 	adc.w	r6, r6, r9
20026c9c:	1929      	adds	r1, r5, r4
20026c9e:	9101      	str	r1, [sp, #4]
20026ca0:	eb48 0106 	adc.w	r1, r8, r6
20026ca4:	9102      	str	r1, [sp, #8]
20026ca6:	9900      	ldr	r1, [sp, #0]
20026ca8:	e9d0 6704 	ldrd	r6, r7, [r0, #16]
20026cac:	e9d1 4504 	ldrd	r4, r5, [r1, #16]
20026cb0:	9906      	ldr	r1, [sp, #24]
20026cb2:	19a4      	adds	r4, r4, r6
20026cb4:	eb45 0507 	adc.w	r5, r5, r7
20026cb8:	1864      	adds	r4, r4, r1
20026cba:	9907      	ldr	r1, [sp, #28]
20026cbc:	eb41 0505 	adc.w	r5, r1, r5
20026cc0:	9904      	ldr	r1, [sp, #16]
20026cc2:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
20026cc4:	ea81 0706 	eor.w	r7, r1, r6
20026cc8:	9905      	ldr	r1, [sp, #20]
20026cca:	9e0b      	ldr	r6, [sp, #44]	@ 0x2c
20026ccc:	404e      	eors	r6, r1
20026cce:	9908      	ldr	r1, [sp, #32]
20026cd0:	400f      	ands	r7, r1
20026cd2:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026cd4:	400e      	ands	r6, r1
20026cd6:	9904      	ldr	r1, [sp, #16]
20026cd8:	404f      	eors	r7, r1
20026cda:	9905      	ldr	r1, [sp, #20]
20026cdc:	19e4      	adds	r4, r4, r7
20026cde:	ea86 0601 	eor.w	r6, r6, r1
20026ce2:	9908      	ldr	r1, [sp, #32]
20026ce4:	eb45 0506 	adc.w	r5, r5, r6
20026ce8:	0b8f      	lsrs	r7, r1, #14
20026cea:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026cec:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026cf0:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026cf4:	9908      	ldr	r1, [sp, #32]
20026cf6:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026cfa:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026cfe:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026d00:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026d04:	0c8e      	lsrs	r6, r1, #18
20026d06:	9908      	ldr	r1, [sp, #32]
20026d08:	ea87 0709 	eor.w	r7, r7, r9
20026d0c:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026d10:	ea88 0806 	eor.w	r8, r8, r6
20026d14:	05ce      	lsls	r6, r1, #23
20026d16:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026d18:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026d1c:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026d20:	9908      	ldr	r1, [sp, #32]
20026d22:	407e      	eors	r6, r7
20026d24:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026d28:	19a4      	adds	r4, r4, r6
20026d2a:	ea88 0809 	eor.w	r8, r8, r9
20026d2e:	eb45 0808 	adc.w	r8, r5, r8
20026d32:	eb1c 0104 	adds.w	r1, ip, r4
20026d36:	9106      	str	r1, [sp, #24]
20026d38:	eb4e 0108 	adc.w	r1, lr, r8
20026d3c:	9107      	str	r1, [sp, #28]
20026d3e:	9901      	ldr	r1, [sp, #4]
20026d40:	0f0f      	lsrs	r7, r1, #28
20026d42:	9902      	ldr	r1, [sp, #8]
20026d44:	ea47 1701 	orr.w	r7, r7, r1, lsl #4
20026d48:	0f0e      	lsrs	r6, r1, #28
20026d4a:	9901      	ldr	r1, [sp, #4]
20026d4c:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026d50:	ea4f 7c81 	mov.w	ip, r1, lsl #30
20026d54:	9902      	ldr	r1, [sp, #8]
20026d56:	ea4c 0c91 	orr.w	ip, ip, r1, lsr #2
20026d5a:	078d      	lsls	r5, r1, #30
20026d5c:	9901      	ldr	r1, [sp, #4]
20026d5e:	ea87 070c 	eor.w	r7, r7, ip
20026d62:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026d66:	ea4f 6c41 	mov.w	ip, r1, lsl #25
20026d6a:	9902      	ldr	r1, [sp, #8]
20026d6c:	406e      	eors	r6, r5
20026d6e:	ea4c 1cd1 	orr.w	ip, ip, r1, lsr #7
20026d72:	064d      	lsls	r5, r1, #25
20026d74:	9901      	ldr	r1, [sp, #4]
20026d76:	ea87 070c 	eor.w	r7, r7, ip
20026d7a:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20026d7e:	406e      	eors	r6, r5
20026d80:	9903      	ldr	r1, [sp, #12]
20026d82:	9d01      	ldr	r5, [sp, #4]
20026d84:	430d      	orrs	r5, r1
20026d86:	9902      	ldr	r1, [sp, #8]
20026d88:	ea4b 0c01 	orr.w	ip, fp, r1
20026d8c:	ea05 0103 	and.w	r1, r5, r3
20026d90:	910c      	str	r1, [sp, #48]	@ 0x30
20026d92:	9d01      	ldr	r5, [sp, #4]
20026d94:	9903      	ldr	r1, [sp, #12]
20026d96:	ea0c 0c02 	and.w	ip, ip, r2
20026d9a:	ea01 0905 	and.w	r9, r1, r5
20026d9e:	9902      	ldr	r1, [sp, #8]
20026da0:	ea0b 0e01 	and.w	lr, fp, r1
20026da4:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026da6:	ea4c 0c0e 	orr.w	ip, ip, lr
20026daa:	ea41 0509 	orr.w	r5, r1, r9
20026dae:	9900      	ldr	r1, [sp, #0]
20026db0:	197d      	adds	r5, r7, r5
20026db2:	eb46 060c 	adc.w	r6, r6, ip
20026db6:	eb15 0904 	adds.w	r9, r5, r4
20026dba:	e9d1 4506 	ldrd	r4, r5, [r1, #24]
20026dbe:	9904      	ldr	r1, [sp, #16]
20026dc0:	eb48 0806 	adc.w	r8, r8, r6
20026dc4:	e9d0 6706 	ldrd	r6, r7, [r0, #24]
20026dc8:	19a4      	adds	r4, r4, r6
20026dca:	eb45 0507 	adc.w	r5, r5, r7
20026dce:	1864      	adds	r4, r4, r1
20026dd0:	9905      	ldr	r1, [sp, #20]
20026dd2:	9e08      	ldr	r6, [sp, #32]
20026dd4:	eb41 0505 	adc.w	r5, r1, r5
20026dd8:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026dda:	ea81 0706 	eor.w	r7, r1, r6
20026dde:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026de0:	9e09      	ldr	r6, [sp, #36]	@ 0x24
20026de2:	404e      	eors	r6, r1
20026de4:	9906      	ldr	r1, [sp, #24]
20026de6:	400f      	ands	r7, r1
20026de8:	9907      	ldr	r1, [sp, #28]
20026dea:	400e      	ands	r6, r1
20026dec:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026dee:	404f      	eors	r7, r1
20026df0:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026df2:	19e4      	adds	r4, r4, r7
20026df4:	ea86 0601 	eor.w	r6, r6, r1
20026df8:	9906      	ldr	r1, [sp, #24]
20026dfa:	eb45 0506 	adc.w	r5, r5, r6
20026dfe:	ea4f 3c91 	mov.w	ip, r1, lsr #14
20026e02:	9907      	ldr	r1, [sp, #28]
20026e04:	ea4c 4c81 	orr.w	ip, ip, r1, lsl #18
20026e08:	0b8e      	lsrs	r6, r1, #14
20026e0a:	9906      	ldr	r1, [sp, #24]
20026e0c:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20026e10:	ea4f 4e91 	mov.w	lr, r1, lsr #18
20026e14:	9907      	ldr	r1, [sp, #28]
20026e16:	ea4e 3e81 	orr.w	lr, lr, r1, lsl #14
20026e1a:	0c8f      	lsrs	r7, r1, #18
20026e1c:	9906      	ldr	r1, [sp, #24]
20026e1e:	ea8c 0c0e 	eor.w	ip, ip, lr
20026e22:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20026e26:	407e      	eors	r6, r7
20026e28:	05cf      	lsls	r7, r1, #23
20026e2a:	9907      	ldr	r1, [sp, #28]
20026e2c:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20026e30:	ea4f 5ec1 	mov.w	lr, r1, lsl #23
20026e34:	9906      	ldr	r1, [sp, #24]
20026e36:	ea8c 0707 	eor.w	r7, ip, r7
20026e3a:	ea4e 2e51 	orr.w	lr, lr, r1, lsr #9
20026e3e:	19e4      	adds	r4, r4, r7
20026e40:	ea86 060e 	eor.w	r6, r6, lr
20026e44:	eb45 0606 	adc.w	r6, r5, r6
20026e48:	191b      	adds	r3, r3, r4
20026e4a:	930c      	str	r3, [sp, #48]	@ 0x30
20026e4c:	eb42 0306 	adc.w	r3, r2, r6
20026e50:	930d      	str	r3, [sp, #52]	@ 0x34
20026e52:	ea4f 7218 	mov.w	r2, r8, lsr #28
20026e56:	ea4f 7388 	mov.w	r3, r8, lsl #30
20026e5a:	ea43 0399 	orr.w	r3, r3, r9, lsr #2
20026e5e:	ea4f 7519 	mov.w	r5, r9, lsr #28
20026e62:	ea42 1209 	orr.w	r2, r2, r9, lsl #4
20026e66:	ea4f 7789 	mov.w	r7, r9, lsl #30
20026e6a:	ea47 0798 	orr.w	r7, r7, r8, lsr #2
20026e6e:	ea45 1508 	orr.w	r5, r5, r8, lsl #4
20026e72:	405a      	eors	r2, r3
20026e74:	ea4f 6348 	mov.w	r3, r8, lsl #25
20026e78:	9902      	ldr	r1, [sp, #8]
20026e7a:	ea43 13d9 	orr.w	r3, r3, r9, lsr #7
20026e7e:	407d      	eors	r5, r7
20026e80:	ea4f 6749 	mov.w	r7, r9, lsl #25
20026e84:	ea47 17d8 	orr.w	r7, r7, r8, lsr #7
20026e88:	405a      	eors	r2, r3
20026e8a:	9b01      	ldr	r3, [sp, #4]
20026e8c:	407d      	eors	r5, r7
20026e8e:	ea41 0708 	orr.w	r7, r1, r8
20026e92:	9903      	ldr	r1, [sp, #12]
20026e94:	ea43 0309 	orr.w	r3, r3, r9
20026e98:	400b      	ands	r3, r1
20026e9a:	9901      	ldr	r1, [sp, #4]
20026e9c:	ea07 070b 	and.w	r7, r7, fp
20026ea0:	ea01 0e09 	and.w	lr, r1, r9
20026ea4:	9902      	ldr	r1, [sp, #8]
20026ea6:	ea43 030e 	orr.w	r3, r3, lr
20026eaa:	ea01 0c08 	and.w	ip, r1, r8
20026eae:	ea47 070c 	orr.w	r7, r7, ip
20026eb2:	18eb      	adds	r3, r5, r3
20026eb4:	eb42 0207 	adc.w	r2, r2, r7
20026eb8:	191b      	adds	r3, r3, r4
20026eba:	9304      	str	r3, [sp, #16]
20026ebc:	eb46 0302 	adc.w	r3, r6, r2
20026ec0:	9305      	str	r3, [sp, #20]
20026ec2:	9b00      	ldr	r3, [sp, #0]
20026ec4:	6a1b      	ldr	r3, [r3, #32]
20026ec6:	9a00      	ldr	r2, [sp, #0]
20026ec8:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026eca:	6a52      	ldr	r2, [r2, #36]	@ 0x24
20026ecc:	e9d0 4508 	ldrd	r4, r5, [r0, #32]
20026ed0:	191b      	adds	r3, r3, r4
20026ed2:	eb42 0205 	adc.w	r2, r2, r5
20026ed6:	185b      	adds	r3, r3, r1
20026ed8:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026eda:	9c06      	ldr	r4, [sp, #24]
20026edc:	eb41 0202 	adc.w	r2, r1, r2
20026ee0:	9908      	ldr	r1, [sp, #32]
20026ee2:	ea81 0504 	eor.w	r5, r1, r4
20026ee6:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026ee8:	9c07      	ldr	r4, [sp, #28]
20026eea:	404c      	eors	r4, r1
20026eec:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026eee:	400d      	ands	r5, r1
20026ef0:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026ef2:	400c      	ands	r4, r1
20026ef4:	9908      	ldr	r1, [sp, #32]
20026ef6:	404d      	eors	r5, r1
20026ef8:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026efa:	195b      	adds	r3, r3, r5
20026efc:	ea84 0401 	eor.w	r4, r4, r1
20026f00:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026f02:	eb42 0204 	adc.w	r2, r2, r4
20026f06:	0b8e      	lsrs	r6, r1, #14
20026f08:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026f0a:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20026f0e:	0b8c      	lsrs	r4, r1, #14
20026f10:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026f12:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20026f16:	0c8f      	lsrs	r7, r1, #18
20026f18:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026f1a:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20026f1e:	0c8d      	lsrs	r5, r1, #18
20026f20:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026f22:	407e      	eors	r6, r7
20026f24:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20026f28:	406c      	eors	r4, r5
20026f2a:	05cd      	lsls	r5, r1, #23
20026f2c:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026f2e:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20026f32:	05cf      	lsls	r7, r1, #23
20026f34:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026f36:	4075      	eors	r5, r6
20026f38:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20026f3c:	9903      	ldr	r1, [sp, #12]
20026f3e:	195b      	adds	r3, r3, r5
20026f40:	ea84 0407 	eor.w	r4, r4, r7
20026f44:	eb42 0204 	adc.w	r2, r2, r4
20026f48:	18c9      	adds	r1, r1, r3
20026f4a:	910a      	str	r1, [sp, #40]	@ 0x28
20026f4c:	eb4b 0102 	adc.w	r1, fp, r2
20026f50:	910b      	str	r1, [sp, #44]	@ 0x2c
20026f52:	9904      	ldr	r1, [sp, #16]
20026f54:	0f0e      	lsrs	r6, r1, #28
20026f56:	9905      	ldr	r1, [sp, #20]
20026f58:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026f5c:	0f0d      	lsrs	r5, r1, #28
20026f5e:	9904      	ldr	r1, [sp, #16]
20026f60:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
20026f64:	078f      	lsls	r7, r1, #30
20026f66:	9905      	ldr	r1, [sp, #20]
20026f68:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
20026f6c:	078c      	lsls	r4, r1, #30
20026f6e:	9904      	ldr	r1, [sp, #16]
20026f70:	407e      	eors	r6, r7
20026f72:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20026f76:	064f      	lsls	r7, r1, #25
20026f78:	9905      	ldr	r1, [sp, #20]
20026f7a:	4065      	eors	r5, r4
20026f7c:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
20026f80:	064c      	lsls	r4, r1, #25
20026f82:	9904      	ldr	r1, [sp, #16]
20026f84:	407e      	eors	r6, r7
20026f86:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
20026f8a:	4065      	eors	r5, r4
20026f8c:	ea49 0401 	orr.w	r4, r9, r1
20026f90:	9905      	ldr	r1, [sp, #20]
20026f92:	ea48 0701 	orr.w	r7, r8, r1
20026f96:	9901      	ldr	r1, [sp, #4]
20026f98:	400c      	ands	r4, r1
20026f9a:	9902      	ldr	r1, [sp, #8]
20026f9c:	400f      	ands	r7, r1
20026f9e:	9904      	ldr	r1, [sp, #16]
20026fa0:	ea09 0e01 	and.w	lr, r9, r1
20026fa4:	9905      	ldr	r1, [sp, #20]
20026fa6:	ea44 040e 	orr.w	r4, r4, lr
20026faa:	ea08 0c01 	and.w	ip, r8, r1
20026fae:	1934      	adds	r4, r6, r4
20026fb0:	ea47 070c 	orr.w	r7, r7, ip
20026fb4:	eb45 0507 	adc.w	r5, r5, r7
20026fb8:	18e3      	adds	r3, r4, r3
20026fba:	9303      	str	r3, [sp, #12]
20026fbc:	9b00      	ldr	r3, [sp, #0]
20026fbe:	eb42 0b05 	adc.w	fp, r2, r5
20026fc2:	9a00      	ldr	r2, [sp, #0]
20026fc4:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
20026fc6:	9908      	ldr	r1, [sp, #32]
20026fc8:	6ad2      	ldr	r2, [r2, #44]	@ 0x2c
20026fca:	e9d0 450a 	ldrd	r4, r5, [r0, #40]	@ 0x28
20026fce:	191b      	adds	r3, r3, r4
20026fd0:	eb42 0205 	adc.w	r2, r2, r5
20026fd4:	185b      	adds	r3, r3, r1
20026fd6:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026fd8:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
20026fda:	eb41 0202 	adc.w	r2, r1, r2
20026fde:	9906      	ldr	r1, [sp, #24]
20026fe0:	ea81 0504 	eor.w	r5, r1, r4
20026fe4:	9907      	ldr	r1, [sp, #28]
20026fe6:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
20026fe8:	404c      	eors	r4, r1
20026fea:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026fec:	400d      	ands	r5, r1
20026fee:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026ff0:	400c      	ands	r4, r1
20026ff2:	9906      	ldr	r1, [sp, #24]
20026ff4:	404d      	eors	r5, r1
20026ff6:	9907      	ldr	r1, [sp, #28]
20026ff8:	195b      	adds	r3, r3, r5
20026ffa:	ea84 0401 	eor.w	r4, r4, r1
20026ffe:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027000:	eb42 0204 	adc.w	r2, r2, r4
20027004:	0b8e      	lsrs	r6, r1, #14
20027006:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027008:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
2002700c:	0b8c      	lsrs	r4, r1, #14
2002700e:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027010:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20027014:	0c8f      	lsrs	r7, r1, #18
20027016:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027018:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
2002701c:	0c8d      	lsrs	r5, r1, #18
2002701e:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027020:	407e      	eors	r6, r7
20027022:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20027026:	406c      	eors	r4, r5
20027028:	05cd      	lsls	r5, r1, #23
2002702a:	990b      	ldr	r1, [sp, #44]	@ 0x2c
2002702c:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20027030:	05cf      	lsls	r7, r1, #23
20027032:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027034:	4075      	eors	r5, r6
20027036:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
2002703a:	9901      	ldr	r1, [sp, #4]
2002703c:	195b      	adds	r3, r3, r5
2002703e:	ea84 0407 	eor.w	r4, r4, r7
20027042:	eb42 0204 	adc.w	r2, r2, r4
20027046:	18c9      	adds	r1, r1, r3
20027048:	9108      	str	r1, [sp, #32]
2002704a:	9902      	ldr	r1, [sp, #8]
2002704c:	ea4f 751b 	mov.w	r5, fp, lsr #28
20027050:	eb41 0102 	adc.w	r1, r1, r2
20027054:	9109      	str	r1, [sp, #36]	@ 0x24
20027056:	9903      	ldr	r1, [sp, #12]
20027058:	ea4f 748b 	mov.w	r4, fp, lsl #30
2002705c:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20027060:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
20027064:	0f0e      	lsrs	r6, r1, #28
20027066:	078f      	lsls	r7, r1, #30
20027068:	4065      	eors	r5, r4
2002706a:	ea4f 644b 	mov.w	r4, fp, lsl #25
2002706e:	ea47 079b 	orr.w	r7, r7, fp, lsr #2
20027072:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
20027076:	ea46 160b 	orr.w	r6, r6, fp, lsl #4
2002707a:	407e      	eors	r6, r7
2002707c:	4065      	eors	r5, r4
2002707e:	064f      	lsls	r7, r1, #25
20027080:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
20027084:	430c      	orrs	r4, r1
20027086:	9905      	ldr	r1, [sp, #20]
20027088:	ea47 17db 	orr.w	r7, r7, fp, lsr #7
2002708c:	407e      	eors	r6, r7
2002708e:	ea41 070b 	orr.w	r7, r1, fp
20027092:	ea04 0109 	and.w	r1, r4, r9
20027096:	9101      	str	r1, [sp, #4]
20027098:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
2002709c:	ea01 0e04 	and.w	lr, r1, r4
200270a0:	9905      	ldr	r1, [sp, #20]
200270a2:	ea07 0708 	and.w	r7, r7, r8
200270a6:	ea01 0c0b 	and.w	ip, r1, fp
200270aa:	9901      	ldr	r1, [sp, #4]
200270ac:	ea47 070c 	orr.w	r7, r7, ip
200270b0:	ea41 040e 	orr.w	r4, r1, lr
200270b4:	1934      	adds	r4, r6, r4
200270b6:	eb45 0507 	adc.w	r5, r5, r7
200270ba:	18e3      	adds	r3, r4, r3
200270bc:	9301      	str	r3, [sp, #4]
200270be:	eb42 0305 	adc.w	r3, r2, r5
200270c2:	9302      	str	r3, [sp, #8]
200270c4:	9b00      	ldr	r3, [sp, #0]
200270c6:	9a00      	ldr	r2, [sp, #0]
200270c8:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
200270ca:	9906      	ldr	r1, [sp, #24]
200270cc:	6b52      	ldr	r2, [r2, #52]	@ 0x34
200270ce:	e9d0 450c 	ldrd	r4, r5, [r0, #48]	@ 0x30
200270d2:	191b      	adds	r3, r3, r4
200270d4:	eb42 0205 	adc.w	r2, r2, r5
200270d8:	185b      	adds	r3, r3, r1
200270da:	9907      	ldr	r1, [sp, #28]
200270dc:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
200270de:	eb41 0202 	adc.w	r2, r1, r2
200270e2:	990c      	ldr	r1, [sp, #48]	@ 0x30
200270e4:	ea81 0504 	eor.w	r5, r1, r4
200270e8:	990d      	ldr	r1, [sp, #52]	@ 0x34
200270ea:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
200270ec:	404c      	eors	r4, r1
200270ee:	9908      	ldr	r1, [sp, #32]
200270f0:	400d      	ands	r5, r1
200270f2:	9909      	ldr	r1, [sp, #36]	@ 0x24
200270f4:	400c      	ands	r4, r1
200270f6:	990c      	ldr	r1, [sp, #48]	@ 0x30
200270f8:	404d      	eors	r5, r1
200270fa:	990d      	ldr	r1, [sp, #52]	@ 0x34
200270fc:	195b      	adds	r3, r3, r5
200270fe:	ea84 0401 	eor.w	r4, r4, r1
20027102:	9908      	ldr	r1, [sp, #32]
20027104:	eb42 0204 	adc.w	r2, r2, r4
20027108:	0b8e      	lsrs	r6, r1, #14
2002710a:	9909      	ldr	r1, [sp, #36]	@ 0x24
2002710c:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20027110:	0b8c      	lsrs	r4, r1, #14
20027112:	9908      	ldr	r1, [sp, #32]
20027114:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20027118:	0c8f      	lsrs	r7, r1, #18
2002711a:	9909      	ldr	r1, [sp, #36]	@ 0x24
2002711c:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20027120:	0c8d      	lsrs	r5, r1, #18
20027122:	9908      	ldr	r1, [sp, #32]
20027124:	407e      	eors	r6, r7
20027126:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
2002712a:	406c      	eors	r4, r5
2002712c:	05cd      	lsls	r5, r1, #23
2002712e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027130:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20027134:	05cf      	lsls	r7, r1, #23
20027136:	9908      	ldr	r1, [sp, #32]
20027138:	4075      	eors	r5, r6
2002713a:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
2002713e:	195b      	adds	r3, r3, r5
20027140:	ea84 0407 	eor.w	r4, r4, r7
20027144:	eb42 0204 	adc.w	r2, r2, r4
20027148:	eb19 0103 	adds.w	r1, r9, r3
2002714c:	9106      	str	r1, [sp, #24]
2002714e:	eb48 0102 	adc.w	r1, r8, r2
20027152:	9107      	str	r1, [sp, #28]
20027154:	9901      	ldr	r1, [sp, #4]
20027156:	0f0e      	lsrs	r6, r1, #28
20027158:	9902      	ldr	r1, [sp, #8]
2002715a:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
2002715e:	0f0d      	lsrs	r5, r1, #28
20027160:	9901      	ldr	r1, [sp, #4]
20027162:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
20027166:	078f      	lsls	r7, r1, #30
20027168:	9902      	ldr	r1, [sp, #8]
2002716a:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
2002716e:	078c      	lsls	r4, r1, #30
20027170:	9901      	ldr	r1, [sp, #4]
20027172:	407e      	eors	r6, r7
20027174:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20027178:	064f      	lsls	r7, r1, #25
2002717a:	9902      	ldr	r1, [sp, #8]
2002717c:	4065      	eors	r5, r4
2002717e:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
20027182:	064c      	lsls	r4, r1, #25
20027184:	9901      	ldr	r1, [sp, #4]
20027186:	407e      	eors	r6, r7
20027188:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
2002718c:	4065      	eors	r5, r4
2002718e:	9903      	ldr	r1, [sp, #12]
20027190:	9c01      	ldr	r4, [sp, #4]
20027192:	430c      	orrs	r4, r1
20027194:	9902      	ldr	r1, [sp, #8]
20027196:	ea4b 0701 	orr.w	r7, fp, r1
2002719a:	9904      	ldr	r1, [sp, #16]
2002719c:	ea04 0801 	and.w	r8, r4, r1
200271a0:	9905      	ldr	r1, [sp, #20]
200271a2:	9c01      	ldr	r4, [sp, #4]
200271a4:	400f      	ands	r7, r1
200271a6:	9903      	ldr	r1, [sp, #12]
200271a8:	ea01 0e04 	and.w	lr, r1, r4
200271ac:	9902      	ldr	r1, [sp, #8]
200271ae:	ea48 040e 	orr.w	r4, r8, lr
200271b2:	ea0b 0c01 	and.w	ip, fp, r1
200271b6:	1934      	adds	r4, r6, r4
200271b8:	ea47 070c 	orr.w	r7, r7, ip
200271bc:	eb45 0507 	adc.w	r5, r5, r7
200271c0:	eb14 0c03 	adds.w	ip, r4, r3
200271c4:	9b00      	ldr	r3, [sp, #0]
200271c6:	eb42 0e05 	adc.w	lr, r2, r5
200271ca:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
200271cc:	9a00      	ldr	r2, [sp, #0]
200271ce:	e9d0 450e 	ldrd	r4, r5, [r0, #56]	@ 0x38
200271d2:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
200271d4:	191c      	adds	r4, r3, r4
200271d6:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
200271d8:	eb42 0205 	adc.w	r2, r2, r5
200271dc:	18e4      	adds	r4, r4, r3
200271de:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
200271e0:	9908      	ldr	r1, [sp, #32]
200271e2:	eb43 0202 	adc.w	r2, r3, r2
200271e6:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200271e8:	3040      	adds	r0, #64	@ 0x40
200271ea:	ea83 0501 	eor.w	r5, r3, r1
200271ee:	9909      	ldr	r1, [sp, #36]	@ 0x24
200271f0:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200271f2:	404b      	eors	r3, r1
200271f4:	9906      	ldr	r1, [sp, #24]
200271f6:	400d      	ands	r5, r1
200271f8:	9907      	ldr	r1, [sp, #28]
200271fa:	400b      	ands	r3, r1
200271fc:	990a      	ldr	r1, [sp, #40]	@ 0x28
200271fe:	404d      	eors	r5, r1
20027200:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027202:	1964      	adds	r4, r4, r5
20027204:	ea83 0301 	eor.w	r3, r3, r1
20027208:	eb42 0203 	adc.w	r2, r2, r3
2002720c:	9b06      	ldr	r3, [sp, #24]
2002720e:	9906      	ldr	r1, [sp, #24]
20027210:	0b9e      	lsrs	r6, r3, #14
20027212:	9b07      	ldr	r3, [sp, #28]
20027214:	0c8f      	lsrs	r7, r1, #18
20027216:	ea46 4683 	orr.w	r6, r6, r3, lsl #18
2002721a:	0b9b      	lsrs	r3, r3, #14
2002721c:	ea43 4381 	orr.w	r3, r3, r1, lsl #18
20027220:	9907      	ldr	r1, [sp, #28]
20027222:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20027226:	0c8d      	lsrs	r5, r1, #18
20027228:	9906      	ldr	r1, [sp, #24]
2002722a:	407e      	eors	r6, r7
2002722c:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20027230:	406b      	eors	r3, r5
20027232:	05cd      	lsls	r5, r1, #23
20027234:	9907      	ldr	r1, [sp, #28]
20027236:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
2002723a:	05cf      	lsls	r7, r1, #23
2002723c:	9906      	ldr	r1, [sp, #24]
2002723e:	4075      	eors	r5, r6
20027240:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20027244:	1964      	adds	r4, r4, r5
20027246:	ea83 0307 	eor.w	r3, r3, r7
2002724a:	eb42 0203 	adc.w	r2, r2, r3
2002724e:	9b04      	ldr	r3, [sp, #16]
20027250:	ea4f 751e 	mov.w	r5, lr, lsr #28
20027254:	191b      	adds	r3, r3, r4
20027256:	9304      	str	r3, [sp, #16]
20027258:	9b05      	ldr	r3, [sp, #20]
2002725a:	ea4f 761c 	mov.w	r6, ip, lsr #28
2002725e:	eb43 0302 	adc.w	r3, r3, r2
20027262:	9305      	str	r3, [sp, #20]
20027264:	ea4f 738e 	mov.w	r3, lr, lsl #30
20027268:	ea43 039c 	orr.w	r3, r3, ip, lsr #2
2002726c:	ea45 150c 	orr.w	r5, r5, ip, lsl #4
20027270:	ea4f 778c 	mov.w	r7, ip, lsl #30
20027274:	ea47 079e 	orr.w	r7, r7, lr, lsr #2
20027278:	405d      	eors	r5, r3
2002727a:	ea46 160e 	orr.w	r6, r6, lr, lsl #4
2002727e:	ea4f 634e 	mov.w	r3, lr, lsl #25
20027282:	9902      	ldr	r1, [sp, #8]
20027284:	407e      	eors	r6, r7
20027286:	ea43 13dc 	orr.w	r3, r3, ip, lsr #7
2002728a:	ea4f 674c 	mov.w	r7, ip, lsl #25
2002728e:	ea47 17de 	orr.w	r7, r7, lr, lsr #7
20027292:	405d      	eors	r5, r3
20027294:	9b01      	ldr	r3, [sp, #4]
20027296:	407e      	eors	r6, r7
20027298:	ea41 070e 	orr.w	r7, r1, lr
2002729c:	9903      	ldr	r1, [sp, #12]
2002729e:	ea43 030c 	orr.w	r3, r3, ip
200272a2:	400b      	ands	r3, r1
200272a4:	9901      	ldr	r1, [sp, #4]
200272a6:	ea07 070b 	and.w	r7, r7, fp
200272aa:	ea01 090c 	and.w	r9, r1, ip
200272ae:	9902      	ldr	r1, [sp, #8]
200272b0:	ea43 0309 	orr.w	r3, r3, r9
200272b4:	ea01 080e 	and.w	r8, r1, lr
200272b8:	9900      	ldr	r1, [sp, #0]
200272ba:	18f3      	adds	r3, r6, r3
200272bc:	f101 0140 	add.w	r1, r1, #64	@ 0x40
200272c0:	9100      	str	r1, [sp, #0]
200272c2:	ea47 0708 	orr.w	r7, r7, r8
200272c6:	eb45 0507 	adc.w	r5, r5, r7
200272ca:	4928      	ldr	r1, [pc, #160]	@ (2002736c <mbedtls_sha512_process+0xa54>)
200272cc:	191b      	adds	r3, r3, r4
200272ce:	9c00      	ldr	r4, [sp, #0]
200272d0:	eb42 0205 	adc.w	r2, r2, r5
200272d4:	42a1      	cmp	r1, r4
200272d6:	f47f abe3 	bne.w	20026aa0 <mbedtls_sha512_process+0x188>
200272da:	990e      	ldr	r1, [sp, #56]	@ 0x38
200272dc:	18cb      	adds	r3, r1, r3
200272de:	990f      	ldr	r1, [sp, #60]	@ 0x3c
200272e0:	eb42 0201 	adc.w	r2, r2, r1
200272e4:	e9ca 3204 	strd	r3, r2, [sl, #16]
200272e8:	9b10      	ldr	r3, [sp, #64]	@ 0x40
200272ea:	9a11      	ldr	r2, [sp, #68]	@ 0x44
200272ec:	eb13 030c 	adds.w	r3, r3, ip
200272f0:	eb4e 0202 	adc.w	r2, lr, r2
200272f4:	e9ca 3206 	strd	r3, r2, [sl, #24]
200272f8:	9a01      	ldr	r2, [sp, #4]
200272fa:	9b12      	ldr	r3, [sp, #72]	@ 0x48
200272fc:	9913      	ldr	r1, [sp, #76]	@ 0x4c
200272fe:	189b      	adds	r3, r3, r2
20027300:	9a02      	ldr	r2, [sp, #8]
20027302:	eb42 0201 	adc.w	r2, r2, r1
20027306:	e9ca 3208 	strd	r3, r2, [sl, #32]
2002730a:	9a03      	ldr	r2, [sp, #12]
2002730c:	9b14      	ldr	r3, [sp, #80]	@ 0x50
2002730e:	9917      	ldr	r1, [sp, #92]	@ 0x5c
20027310:	189b      	adds	r3, r3, r2
20027312:	9a15      	ldr	r2, [sp, #84]	@ 0x54
20027314:	eb4b 0202 	adc.w	r2, fp, r2
20027318:	e9ca 320a 	strd	r3, r2, [sl, #40]	@ 0x28
2002731c:	9a04      	ldr	r2, [sp, #16]
2002731e:	9b16      	ldr	r3, [sp, #88]	@ 0x58
20027320:	189b      	adds	r3, r3, r2
20027322:	9a05      	ldr	r2, [sp, #20]
20027324:	eb42 0201 	adc.w	r2, r2, r1
20027328:	e9ca 320c 	strd	r3, r2, [sl, #48]	@ 0x30
2002732c:	9b18      	ldr	r3, [sp, #96]	@ 0x60
2002732e:	9a06      	ldr	r2, [sp, #24]
20027330:	9919      	ldr	r1, [sp, #100]	@ 0x64
20027332:	189a      	adds	r2, r3, r2
20027334:	9b07      	ldr	r3, [sp, #28]
20027336:	eb43 0301 	adc.w	r3, r3, r1
2002733a:	e9ca 230e 	strd	r2, r3, [sl, #56]	@ 0x38
2002733e:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20027340:	9a08      	ldr	r2, [sp, #32]
20027342:	991b      	ldr	r1, [sp, #108]	@ 0x6c
20027344:	189a      	adds	r2, r3, r2
20027346:	9b09      	ldr	r3, [sp, #36]	@ 0x24
20027348:	eb43 0301 	adc.w	r3, r3, r1
2002734c:	e9ca 2310 	strd	r2, r3, [sl, #64]	@ 0x40
20027350:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
20027352:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
20027354:	991d      	ldr	r1, [sp, #116]	@ 0x74
20027356:	189a      	adds	r2, r3, r2
20027358:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
2002735a:	eb43 0301 	adc.w	r3, r3, r1
2002735e:	e9ca 2312 	strd	r2, r3, [sl, #72]	@ 0x48
20027362:	f50d 7d3f 	add.w	sp, sp, #764	@ 0x2fc
20027366:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002736a:	bf00      	nop
2002736c:	2002c138 	.word	0x2002c138

20027370 <mbedtls_sha512_update.part.0>:
20027370:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20027374:	4615      	mov	r5, r2
20027376:	e9d0 3200 	ldrd	r3, r2, [r0]
2002737a:	f003 077f 	and.w	r7, r3, #127	@ 0x7f
2002737e:	195b      	adds	r3, r3, r5
20027380:	f152 0200 	adcs.w	r2, r2, #0
20027384:	460e      	mov	r6, r1
20027386:	f04f 0100 	mov.w	r1, #0
2002738a:	bf28      	it	cs
2002738c:	2101      	movcs	r1, #1
2002738e:	4604      	mov	r4, r0
20027390:	e9c0 3200 	strd	r3, r2, [r0]
20027394:	b131      	cbz	r1, 200273a4 <mbedtls_sha512_update.part.0+0x34>
20027396:	e9d0 3202 	ldrd	r3, r2, [r0, #8]
2002739a:	3301      	adds	r3, #1
2002739c:	f142 0200 	adc.w	r2, r2, #0
200273a0:	e9c0 3202 	strd	r3, r2, [r0, #8]
200273a4:	b19f      	cbz	r7, 200273ce <mbedtls_sha512_update.part.0+0x5e>
200273a6:	f1c7 0980 	rsb	r9, r7, #128	@ 0x80
200273aa:	45a9      	cmp	r9, r5
200273ac:	d80f      	bhi.n	200273ce <mbedtls_sha512_update.part.0+0x5e>
200273ae:	f104 0850 	add.w	r8, r4, #80	@ 0x50
200273b2:	4631      	mov	r1, r6
200273b4:	464a      	mov	r2, r9
200273b6:	eb08 0007 	add.w	r0, r8, r7
200273ba:	f003 fa13 	bl	2002a7e4 <memcpy>
200273be:	3d80      	subs	r5, #128	@ 0x80
200273c0:	4641      	mov	r1, r8
200273c2:	4620      	mov	r0, r4
200273c4:	443d      	add	r5, r7
200273c6:	f7ff faa7 	bl	20026918 <mbedtls_sha512_process>
200273ca:	2700      	movs	r7, #0
200273cc:	444e      	add	r6, r9
200273ce:	46a8      	mov	r8, r5
200273d0:	eb05 0906 	add.w	r9, r5, r6
200273d4:	e004      	b.n	200273e0 <mbedtls_sha512_update.part.0+0x70>
200273d6:	4620      	mov	r0, r4
200273d8:	f7ff fa9e 	bl	20026918 <mbedtls_sha512_process>
200273dc:	f1a8 0880 	sub.w	r8, r8, #128	@ 0x80
200273e0:	f1b8 0f7f 	cmp.w	r8, #127	@ 0x7f
200273e4:	eba9 0108 	sub.w	r1, r9, r8
200273e8:	d8f5      	bhi.n	200273d6 <mbedtls_sha512_update.part.0+0x66>
200273ea:	f06f 037f 	mvn.w	r3, #127	@ 0x7f
200273ee:	09e9      	lsrs	r1, r5, #7
200273f0:	4359      	muls	r1, r3
200273f2:	186a      	adds	r2, r5, r1
200273f4:	d007      	beq.n	20027406 <mbedtls_sha512_update.part.0+0x96>
200273f6:	f104 0050 	add.w	r0, r4, #80	@ 0x50
200273fa:	1a71      	subs	r1, r6, r1
200273fc:	4438      	add	r0, r7
200273fe:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20027402:	f003 b9ef 	b.w	2002a7e4 <memcpy>
20027406:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

2002740a <mbedtls_sha512_update>:
2002740a:	b10a      	cbz	r2, 20027410 <mbedtls_sha512_update+0x6>
2002740c:	f7ff bfb0 	b.w	20027370 <mbedtls_sha512_update.part.0>
20027410:	4770      	bx	lr
	...

20027414 <mbedtls_sha512_finish>:
20027414:	b5f0      	push	{r4, r5, r6, r7, lr}
20027416:	e9d0 2300 	ldrd	r2, r3, [r0]
2002741a:	4604      	mov	r4, r0
2002741c:	460d      	mov	r5, r1
2002741e:	e9d0 6102 	ldrd	r6, r1, [r0, #8]
20027422:	00c9      	lsls	r1, r1, #3
20027424:	ea41 7156 	orr.w	r1, r1, r6, lsr #29
20027428:	b085      	sub	sp, #20
2002742a:	0e0f      	lsrs	r7, r1, #24
2002742c:	0f58      	lsrs	r0, r3, #29
2002742e:	00db      	lsls	r3, r3, #3
20027430:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
20027434:	f88d 7000 	strb.w	r7, [sp]
20027438:	0c0f      	lsrs	r7, r1, #16
2002743a:	f88d 7001 	strb.w	r7, [sp, #1]
2002743e:	f88d 1003 	strb.w	r1, [sp, #3]
20027442:	0a0f      	lsrs	r7, r1, #8
20027444:	0e19      	lsrs	r1, r3, #24
20027446:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
2002744a:	f88d 1008 	strb.w	r1, [sp, #8]
2002744e:	00d6      	lsls	r6, r2, #3
20027450:	0c19      	lsrs	r1, r3, #16
20027452:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
20027456:	2a6f      	cmp	r2, #111	@ 0x6f
20027458:	ba00      	rev	r0, r0
2002745a:	f88d 1009 	strb.w	r1, [sp, #9]
2002745e:	ea4f 2113 	mov.w	r1, r3, lsr #8
20027462:	bf94      	ite	ls
20027464:	f1c2 0270 	rsbls	r2, r2, #112	@ 0x70
20027468:	f1c2 02f0 	rsbhi	r2, r2, #240	@ 0xf0
2002746c:	9001      	str	r0, [sp, #4]
2002746e:	f88d 100a 	strb.w	r1, [sp, #10]
20027472:	4620      	mov	r0, r4
20027474:	4969      	ldr	r1, [pc, #420]	@ (2002761c <mbedtls_sha512_finish+0x208>)
20027476:	ba36      	rev	r6, r6
20027478:	f88d 300b 	strb.w	r3, [sp, #11]
2002747c:	f88d 7002 	strb.w	r7, [sp, #2]
20027480:	9603      	str	r6, [sp, #12]
20027482:	f7ff ffc2 	bl	2002740a <mbedtls_sha512_update>
20027486:	2210      	movs	r2, #16
20027488:	4669      	mov	r1, sp
2002748a:	4620      	mov	r0, r4
2002748c:	f7ff ff70 	bl	20027370 <mbedtls_sha512_update.part.0>
20027490:	7de3      	ldrb	r3, [r4, #23]
20027492:	702b      	strb	r3, [r5, #0]
20027494:	8ae3      	ldrh	r3, [r4, #22]
20027496:	706b      	strb	r3, [r5, #1]
20027498:	6963      	ldr	r3, [r4, #20]
2002749a:	0a1b      	lsrs	r3, r3, #8
2002749c:	70ab      	strb	r3, [r5, #2]
2002749e:	6963      	ldr	r3, [r4, #20]
200274a0:	70eb      	strb	r3, [r5, #3]
200274a2:	7ce3      	ldrb	r3, [r4, #19]
200274a4:	712b      	strb	r3, [r5, #4]
200274a6:	8a63      	ldrh	r3, [r4, #18]
200274a8:	716b      	strb	r3, [r5, #5]
200274aa:	6923      	ldr	r3, [r4, #16]
200274ac:	0a1b      	lsrs	r3, r3, #8
200274ae:	71ab      	strb	r3, [r5, #6]
200274b0:	6923      	ldr	r3, [r4, #16]
200274b2:	71eb      	strb	r3, [r5, #7]
200274b4:	7fe3      	ldrb	r3, [r4, #31]
200274b6:	722b      	strb	r3, [r5, #8]
200274b8:	8be3      	ldrh	r3, [r4, #30]
200274ba:	726b      	strb	r3, [r5, #9]
200274bc:	69e3      	ldr	r3, [r4, #28]
200274be:	0a1b      	lsrs	r3, r3, #8
200274c0:	72ab      	strb	r3, [r5, #10]
200274c2:	69e3      	ldr	r3, [r4, #28]
200274c4:	72eb      	strb	r3, [r5, #11]
200274c6:	7ee3      	ldrb	r3, [r4, #27]
200274c8:	732b      	strb	r3, [r5, #12]
200274ca:	8b63      	ldrh	r3, [r4, #26]
200274cc:	736b      	strb	r3, [r5, #13]
200274ce:	69a3      	ldr	r3, [r4, #24]
200274d0:	0a1b      	lsrs	r3, r3, #8
200274d2:	73ab      	strb	r3, [r5, #14]
200274d4:	69a3      	ldr	r3, [r4, #24]
200274d6:	73eb      	strb	r3, [r5, #15]
200274d8:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
200274dc:	742b      	strb	r3, [r5, #16]
200274de:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
200274e0:	746b      	strb	r3, [r5, #17]
200274e2:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200274e4:	0a1b      	lsrs	r3, r3, #8
200274e6:	74ab      	strb	r3, [r5, #18]
200274e8:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200274ea:	74eb      	strb	r3, [r5, #19]
200274ec:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200274f0:	752b      	strb	r3, [r5, #20]
200274f2:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
200274f4:	756b      	strb	r3, [r5, #21]
200274f6:	6a23      	ldr	r3, [r4, #32]
200274f8:	0a1b      	lsrs	r3, r3, #8
200274fa:	75ab      	strb	r3, [r5, #22]
200274fc:	6a23      	ldr	r3, [r4, #32]
200274fe:	75eb      	strb	r3, [r5, #23]
20027500:	f894 302f 	ldrb.w	r3, [r4, #47]	@ 0x2f
20027504:	762b      	strb	r3, [r5, #24]
20027506:	8de3      	ldrh	r3, [r4, #46]	@ 0x2e
20027508:	766b      	strb	r3, [r5, #25]
2002750a:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
2002750c:	0a1b      	lsrs	r3, r3, #8
2002750e:	76ab      	strb	r3, [r5, #26]
20027510:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20027512:	76eb      	strb	r3, [r5, #27]
20027514:	f894 302b 	ldrb.w	r3, [r4, #43]	@ 0x2b
20027518:	772b      	strb	r3, [r5, #28]
2002751a:	8d63      	ldrh	r3, [r4, #42]	@ 0x2a
2002751c:	776b      	strb	r3, [r5, #29]
2002751e:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
20027520:	0a1b      	lsrs	r3, r3, #8
20027522:	77ab      	strb	r3, [r5, #30]
20027524:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
20027526:	77eb      	strb	r3, [r5, #31]
20027528:	f894 3037 	ldrb.w	r3, [r4, #55]	@ 0x37
2002752c:	f885 3020 	strb.w	r3, [r5, #32]
20027530:	8ee3      	ldrh	r3, [r4, #54]	@ 0x36
20027532:	f885 3021 	strb.w	r3, [r5, #33]	@ 0x21
20027536:	6b63      	ldr	r3, [r4, #52]	@ 0x34
20027538:	0a1b      	lsrs	r3, r3, #8
2002753a:	f885 3022 	strb.w	r3, [r5, #34]	@ 0x22
2002753e:	6b63      	ldr	r3, [r4, #52]	@ 0x34
20027540:	f885 3023 	strb.w	r3, [r5, #35]	@ 0x23
20027544:	f894 3033 	ldrb.w	r3, [r4, #51]	@ 0x33
20027548:	f885 3024 	strb.w	r3, [r5, #36]	@ 0x24
2002754c:	8e63      	ldrh	r3, [r4, #50]	@ 0x32
2002754e:	f885 3025 	strb.w	r3, [r5, #37]	@ 0x25
20027552:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20027554:	0a1b      	lsrs	r3, r3, #8
20027556:	f885 3026 	strb.w	r3, [r5, #38]	@ 0x26
2002755a:	6b23      	ldr	r3, [r4, #48]	@ 0x30
2002755c:	f885 3027 	strb.w	r3, [r5, #39]	@ 0x27
20027560:	f894 303f 	ldrb.w	r3, [r4, #63]	@ 0x3f
20027564:	f885 3028 	strb.w	r3, [r5, #40]	@ 0x28
20027568:	8fe3      	ldrh	r3, [r4, #62]	@ 0x3e
2002756a:	f885 3029 	strb.w	r3, [r5, #41]	@ 0x29
2002756e:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20027570:	0a1b      	lsrs	r3, r3, #8
20027572:	f885 302a 	strb.w	r3, [r5, #42]	@ 0x2a
20027576:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20027578:	f885 302b 	strb.w	r3, [r5, #43]	@ 0x2b
2002757c:	f894 303b 	ldrb.w	r3, [r4, #59]	@ 0x3b
20027580:	f885 302c 	strb.w	r3, [r5, #44]	@ 0x2c
20027584:	8f63      	ldrh	r3, [r4, #58]	@ 0x3a
20027586:	f885 302d 	strb.w	r3, [r5, #45]	@ 0x2d
2002758a:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
2002758c:	0a1b      	lsrs	r3, r3, #8
2002758e:	f885 302e 	strb.w	r3, [r5, #46]	@ 0x2e
20027592:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
20027594:	f885 302f 	strb.w	r3, [r5, #47]	@ 0x2f
20027598:	f8d4 30d0 	ldr.w	r3, [r4, #208]	@ 0xd0
2002759c:	2b00      	cmp	r3, #0
2002759e:	d13b      	bne.n	20027618 <mbedtls_sha512_finish+0x204>
200275a0:	f894 3047 	ldrb.w	r3, [r4, #71]	@ 0x47
200275a4:	f885 3030 	strb.w	r3, [r5, #48]	@ 0x30
200275a8:	f8b4 3046 	ldrh.w	r3, [r4, #70]	@ 0x46
200275ac:	f885 3031 	strb.w	r3, [r5, #49]	@ 0x31
200275b0:	6c63      	ldr	r3, [r4, #68]	@ 0x44
200275b2:	0a1b      	lsrs	r3, r3, #8
200275b4:	f885 3032 	strb.w	r3, [r5, #50]	@ 0x32
200275b8:	6c63      	ldr	r3, [r4, #68]	@ 0x44
200275ba:	f885 3033 	strb.w	r3, [r5, #51]	@ 0x33
200275be:	f894 3043 	ldrb.w	r3, [r4, #67]	@ 0x43
200275c2:	f885 3034 	strb.w	r3, [r5, #52]	@ 0x34
200275c6:	f8b4 3042 	ldrh.w	r3, [r4, #66]	@ 0x42
200275ca:	f885 3035 	strb.w	r3, [r5, #53]	@ 0x35
200275ce:	6c23      	ldr	r3, [r4, #64]	@ 0x40
200275d0:	0a1b      	lsrs	r3, r3, #8
200275d2:	f885 3036 	strb.w	r3, [r5, #54]	@ 0x36
200275d6:	6c23      	ldr	r3, [r4, #64]	@ 0x40
200275d8:	f885 3037 	strb.w	r3, [r5, #55]	@ 0x37
200275dc:	f894 304f 	ldrb.w	r3, [r4, #79]	@ 0x4f
200275e0:	f885 3038 	strb.w	r3, [r5, #56]	@ 0x38
200275e4:	f8b4 304e 	ldrh.w	r3, [r4, #78]	@ 0x4e
200275e8:	f885 3039 	strb.w	r3, [r5, #57]	@ 0x39
200275ec:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
200275ee:	0a1b      	lsrs	r3, r3, #8
200275f0:	f885 303a 	strb.w	r3, [r5, #58]	@ 0x3a
200275f4:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
200275f6:	f885 303b 	strb.w	r3, [r5, #59]	@ 0x3b
200275fa:	f894 304b 	ldrb.w	r3, [r4, #75]	@ 0x4b
200275fe:	f885 303c 	strb.w	r3, [r5, #60]	@ 0x3c
20027602:	f8b4 304a 	ldrh.w	r3, [r4, #74]	@ 0x4a
20027606:	f885 303d 	strb.w	r3, [r5, #61]	@ 0x3d
2002760a:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
2002760c:	0a1b      	lsrs	r3, r3, #8
2002760e:	f885 303e 	strb.w	r3, [r5, #62]	@ 0x3e
20027612:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
20027614:	f885 303f 	strb.w	r3, [r5, #63]	@ 0x3f
20027618:	b005      	add	sp, #20
2002761a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002761c:	2002be38 	.word	0x2002be38

20027620 <mbedtls_sha512>:
20027620:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20027624:	461c      	mov	r4, r3
20027626:	b0b7      	sub	sp, #220	@ 0xdc
20027628:	4606      	mov	r6, r0
2002762a:	4668      	mov	r0, sp
2002762c:	460f      	mov	r7, r1
2002762e:	4615      	mov	r5, r2
20027630:	f7ff f8ce 	bl	200267d0 <mbedtls_sha512_init>
20027634:	2c00      	cmp	r4, #0
20027636:	d03f      	beq.n	200276b8 <mbedtls_sha512+0x98>
20027638:	f20f 0bf4 	addw	fp, pc, #244	@ 0xf4
2002763c:	e9db ab00 	ldrd	sl, fp, [fp]
20027640:	f20f 09f4 	addw	r9, pc, #244	@ 0xf4
20027644:	e9d9 8900 	ldrd	r8, r9, [r9]
20027648:	a13d      	add	r1, pc, #244	@ (adr r1, 20027740 <mbedtls_sha512+0x120>)
2002764a:	e9d1 0100 	ldrd	r0, r1, [r1]
2002764e:	a33e      	add	r3, pc, #248	@ (adr r3, 20027748 <mbedtls_sha512+0x128>)
20027650:	e9d3 2300 	ldrd	r2, r3, [r3]
20027654:	ed9f 4b24 	vldr	d4, [pc, #144]	@ 200276e8 <mbedtls_sha512+0xc8>
20027658:	ed9f 5b25 	vldr	d5, [pc, #148]	@ 200276f0 <mbedtls_sha512+0xd0>
2002765c:	ed9f 6b26 	vldr	d6, [pc, #152]	@ 200276f8 <mbedtls_sha512+0xd8>
20027660:	ed9f 7b27 	vldr	d7, [pc, #156]	@ 20027700 <mbedtls_sha512+0xe0>
20027664:	ed9f 3b28 	vldr	d3, [pc, #160]	@ 20027708 <mbedtls_sha512+0xe8>
20027668:	e9cd 2312 	strd	r2, r3, [sp, #72]	@ 0x48
2002766c:	e9cd 0110 	strd	r0, r1, [sp, #64]	@ 0x40
20027670:	463a      	mov	r2, r7
20027672:	4631      	mov	r1, r6
20027674:	4668      	mov	r0, sp
20027676:	ed8d 3b00 	vstr	d3, [sp]
2002767a:	ed8d 3b02 	vstr	d3, [sp, #8]
2002767e:	ed8d 4b04 	vstr	d4, [sp, #16]
20027682:	ed8d 5b06 	vstr	d5, [sp, #24]
20027686:	ed8d 6b08 	vstr	d6, [sp, #32]
2002768a:	ed8d 7b0a 	vstr	d7, [sp, #40]	@ 0x28
2002768e:	e9cd ab0c 	strd	sl, fp, [sp, #48]	@ 0x30
20027692:	e9cd 890e 	strd	r8, r9, [sp, #56]	@ 0x38
20027696:	9434      	str	r4, [sp, #208]	@ 0xd0
20027698:	f7ff feb7 	bl	2002740a <mbedtls_sha512_update>
2002769c:	4629      	mov	r1, r5
2002769e:	4668      	mov	r0, sp
200276a0:	f7ff feb8 	bl	20027414 <mbedtls_sha512_finish>
200276a4:	2300      	movs	r3, #0
200276a6:	461a      	mov	r2, r3
200276a8:	f80d 2003 	strb.w	r2, [sp, r3]
200276ac:	3301      	adds	r3, #1
200276ae:	2bd8      	cmp	r3, #216	@ 0xd8
200276b0:	d1fa      	bne.n	200276a8 <mbedtls_sha512+0x88>
200276b2:	b037      	add	sp, #220	@ 0xdc
200276b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200276b8:	ed9f 4b15 	vldr	d4, [pc, #84]	@ 20027710 <mbedtls_sha512+0xf0>
200276bc:	f20f 0b90 	addw	fp, pc, #144	@ 0x90
200276c0:	e9db ab00 	ldrd	sl, fp, [fp]
200276c4:	f20f 0990 	addw	r9, pc, #144	@ 0x90
200276c8:	e9d9 8900 	ldrd	r8, r9, [r9]
200276cc:	a124      	add	r1, pc, #144	@ (adr r1, 20027760 <mbedtls_sha512+0x140>)
200276ce:	e9d1 0100 	ldrd	r0, r1, [r1]
200276d2:	a325      	add	r3, pc, #148	@ (adr r3, 20027768 <mbedtls_sha512+0x148>)
200276d4:	e9d3 2300 	ldrd	r2, r3, [r3]
200276d8:	ed9f 5b0f 	vldr	d5, [pc, #60]	@ 20027718 <mbedtls_sha512+0xf8>
200276dc:	ed9f 6b10 	vldr	d6, [pc, #64]	@ 20027720 <mbedtls_sha512+0x100>
200276e0:	ed9f 7b11 	vldr	d7, [pc, #68]	@ 20027728 <mbedtls_sha512+0x108>
200276e4:	e7be      	b.n	20027664 <mbedtls_sha512+0x44>
200276e6:	bf00      	nop
200276e8:	c1059ed8 	.word	0xc1059ed8
200276ec:	cbbb9d5d 	.word	0xcbbb9d5d
200276f0:	367cd507 	.word	0x367cd507
200276f4:	629a292a 	.word	0x629a292a
200276f8:	3070dd17 	.word	0x3070dd17
200276fc:	9159015a 	.word	0x9159015a
20027700:	f70e5939 	.word	0xf70e5939
20027704:	152fecd8 	.word	0x152fecd8
	...
20027710:	f3bcc908 	.word	0xf3bcc908
20027714:	6a09e667 	.word	0x6a09e667
20027718:	84caa73b 	.word	0x84caa73b
2002771c:	bb67ae85 	.word	0xbb67ae85
20027720:	fe94f82b 	.word	0xfe94f82b
20027724:	3c6ef372 	.word	0x3c6ef372
20027728:	5f1d36f1 	.word	0x5f1d36f1
2002772c:	a54ff53a 	.word	0xa54ff53a
20027730:	ffc00b31 	.word	0xffc00b31
20027734:	67332667 	.word	0x67332667
20027738:	68581511 	.word	0x68581511
2002773c:	8eb44a87 	.word	0x8eb44a87
20027740:	64f98fa7 	.word	0x64f98fa7
20027744:	db0c2e0d 	.word	0xdb0c2e0d
20027748:	befa4fa4 	.word	0xbefa4fa4
2002774c:	47b5481d 	.word	0x47b5481d
20027750:	ade682d1 	.word	0xade682d1
20027754:	510e527f 	.word	0x510e527f
20027758:	2b3e6c1f 	.word	0x2b3e6c1f
2002775c:	9b05688c 	.word	0x9b05688c
20027760:	fb41bd6b 	.word	0xfb41bd6b
20027764:	1f83d9ab 	.word	0x1f83d9ab
20027768:	137e2179 	.word	0x137e2179
2002776c:	5be0cd19 	.word	0x5be0cd19

20027770 <mbedtls_asn1_get_len>:
20027770:	b570      	push	{r4, r5, r6, lr}
20027772:	6804      	ldr	r4, [r0, #0]
20027774:	1b0d      	subs	r5, r1, r4
20027776:	2d00      	cmp	r5, #0
20027778:	dc02      	bgt.n	20027780 <mbedtls_asn1_get_len+0x10>
2002777a:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
2002777e:	bd70      	pop	{r4, r5, r6, pc}
20027780:	f994 6000 	ldrsb.w	r6, [r4]
20027784:	7823      	ldrb	r3, [r4, #0]
20027786:	2e00      	cmp	r6, #0
20027788:	db08      	blt.n	2002779c <mbedtls_asn1_get_len+0x2c>
2002778a:	1c65      	adds	r5, r4, #1
2002778c:	6005      	str	r5, [r0, #0]
2002778e:	7823      	ldrb	r3, [r4, #0]
20027790:	6013      	str	r3, [r2, #0]
20027792:	1b49      	subs	r1, r1, r5
20027794:	4299      	cmp	r1, r3
20027796:	d3f0      	bcc.n	2002777a <mbedtls_asn1_get_len+0xa>
20027798:	2000      	movs	r0, #0
2002779a:	e7f0      	b.n	2002777e <mbedtls_asn1_get_len+0xe>
2002779c:	f003 037f 	and.w	r3, r3, #127	@ 0x7f
200277a0:	3b01      	subs	r3, #1
200277a2:	2b03      	cmp	r3, #3
200277a4:	d827      	bhi.n	200277f6 <mbedtls_asn1_get_len+0x86>
200277a6:	e8df f003 	tbb	[pc, r3]
200277aa:	0902      	.short	0x0902
200277ac:	1e12      	.short	0x1e12
200277ae:	2d01      	cmp	r5, #1
200277b0:	d0e3      	beq.n	2002777a <mbedtls_asn1_get_len+0xa>
200277b2:	7863      	ldrb	r3, [r4, #1]
200277b4:	1ca5      	adds	r5, r4, #2
200277b6:	6013      	str	r3, [r2, #0]
200277b8:	6005      	str	r5, [r0, #0]
200277ba:	e7ea      	b.n	20027792 <mbedtls_asn1_get_len+0x22>
200277bc:	2d02      	cmp	r5, #2
200277be:	dddc      	ble.n	2002777a <mbedtls_asn1_get_len+0xa>
200277c0:	f8b4 3001 	ldrh.w	r3, [r4, #1]
200277c4:	1ce5      	adds	r5, r4, #3
200277c6:	ba5b      	rev16	r3, r3
200277c8:	b29b      	uxth	r3, r3
200277ca:	6013      	str	r3, [r2, #0]
200277cc:	e7f4      	b.n	200277b8 <mbedtls_asn1_get_len+0x48>
200277ce:	2d03      	cmp	r5, #3
200277d0:	ddd3      	ble.n	2002777a <mbedtls_asn1_get_len+0xa>
200277d2:	78a3      	ldrb	r3, [r4, #2]
200277d4:	7865      	ldrb	r5, [r4, #1]
200277d6:	021b      	lsls	r3, r3, #8
200277d8:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
200277dc:	78e5      	ldrb	r5, [r4, #3]
200277de:	432b      	orrs	r3, r5
200277e0:	6013      	str	r3, [r2, #0]
200277e2:	1d25      	adds	r5, r4, #4
200277e4:	e7e8      	b.n	200277b8 <mbedtls_asn1_get_len+0x48>
200277e6:	2d04      	cmp	r5, #4
200277e8:	ddc7      	ble.n	2002777a <mbedtls_asn1_get_len+0xa>
200277ea:	f8d4 3001 	ldr.w	r3, [r4, #1]
200277ee:	1d65      	adds	r5, r4, #5
200277f0:	ba1b      	rev	r3, r3
200277f2:	6013      	str	r3, [r2, #0]
200277f4:	e7e0      	b.n	200277b8 <mbedtls_asn1_get_len+0x48>
200277f6:	f06f 0063 	mvn.w	r0, #99	@ 0x63
200277fa:	e7c0      	b.n	2002777e <mbedtls_asn1_get_len+0xe>

200277fc <mbedtls_asn1_get_tag>:
200277fc:	b470      	push	{r4, r5, r6}
200277fe:	6804      	ldr	r4, [r0, #0]
20027800:	1b0e      	subs	r6, r1, r4
20027802:	2e00      	cmp	r6, #0
20027804:	dd07      	ble.n	20027816 <mbedtls_asn1_get_tag+0x1a>
20027806:	7826      	ldrb	r6, [r4, #0]
20027808:	429e      	cmp	r6, r3
2002780a:	d108      	bne.n	2002781e <mbedtls_asn1_get_tag+0x22>
2002780c:	3401      	adds	r4, #1
2002780e:	6004      	str	r4, [r0, #0]
20027810:	bc70      	pop	{r4, r5, r6}
20027812:	f7ff bfad 	b.w	20027770 <mbedtls_asn1_get_len>
20027816:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
2002781a:	bc70      	pop	{r4, r5, r6}
2002781c:	4770      	bx	lr
2002781e:	f06f 0061 	mvn.w	r0, #97	@ 0x61
20027822:	e7fa      	b.n	2002781a <mbedtls_asn1_get_tag+0x1e>

20027824 <mbedtls_asn1_get_mpi>:
20027824:	b573      	push	{r0, r1, r4, r5, r6, lr}
20027826:	2302      	movs	r3, #2
20027828:	4615      	mov	r5, r2
2002782a:	aa01      	add	r2, sp, #4
2002782c:	4604      	mov	r4, r0
2002782e:	f7ff ffe5 	bl	200277fc <mbedtls_asn1_get_tag>
20027832:	b940      	cbnz	r0, 20027846 <mbedtls_asn1_get_mpi+0x22>
20027834:	9e01      	ldr	r6, [sp, #4]
20027836:	4628      	mov	r0, r5
20027838:	4632      	mov	r2, r6
2002783a:	6821      	ldr	r1, [r4, #0]
2002783c:	f000 fad8 	bl	20027df0 <mbedtls_mpi_read_binary>
20027840:	6823      	ldr	r3, [r4, #0]
20027842:	4433      	add	r3, r6
20027844:	6023      	str	r3, [r4, #0]
20027846:	b002      	add	sp, #8
20027848:	bd70      	pop	{r4, r5, r6, pc}

2002784a <mbedtls_asn1_get_bitstring_null>:
2002784a:	b538      	push	{r3, r4, r5, lr}
2002784c:	2303      	movs	r3, #3
2002784e:	4604      	mov	r4, r0
20027850:	4615      	mov	r5, r2
20027852:	f7ff ffd3 	bl	200277fc <mbedtls_asn1_get_tag>
20027856:	b958      	cbnz	r0, 20027870 <mbedtls_asn1_get_bitstring_null+0x26>
20027858:	6813      	ldr	r3, [r2, #0]
2002785a:	1e5a      	subs	r2, r3, #1
2002785c:	2b01      	cmp	r3, #1
2002785e:	602a      	str	r2, [r5, #0]
20027860:	d904      	bls.n	2002786c <mbedtls_asn1_get_bitstring_null+0x22>
20027862:	6823      	ldr	r3, [r4, #0]
20027864:	1c5a      	adds	r2, r3, #1
20027866:	6022      	str	r2, [r4, #0]
20027868:	781b      	ldrb	r3, [r3, #0]
2002786a:	b10b      	cbz	r3, 20027870 <mbedtls_asn1_get_bitstring_null+0x26>
2002786c:	f06f 0067 	mvn.w	r0, #103	@ 0x67
20027870:	bd38      	pop	{r3, r4, r5, pc}

20027872 <mbedtls_asn1_get_alg>:
20027872:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
20027876:	4690      	mov	r8, r2
20027878:	461e      	mov	r6, r3
2002787a:	aa01      	add	r2, sp, #4
2002787c:	2330      	movs	r3, #48	@ 0x30
2002787e:	4605      	mov	r5, r0
20027880:	4689      	mov	r9, r1
20027882:	f7ff ffbb 	bl	200277fc <mbedtls_asn1_get_tag>
20027886:	4604      	mov	r4, r0
20027888:	bb18      	cbnz	r0, 200278d2 <mbedtls_asn1_get_alg+0x60>
2002788a:	682f      	ldr	r7, [r5, #0]
2002788c:	eba9 0907 	sub.w	r9, r9, r7
20027890:	f1b9 0f00 	cmp.w	r9, #0
20027894:	dd36      	ble.n	20027904 <mbedtls_asn1_get_alg+0x92>
20027896:	4642      	mov	r2, r8
20027898:	783b      	ldrb	r3, [r7, #0]
2002789a:	4628      	mov	r0, r5
2002789c:	f842 3b04 	str.w	r3, [r2], #4
200278a0:	9b01      	ldr	r3, [sp, #4]
200278a2:	441f      	add	r7, r3
200278a4:	4639      	mov	r1, r7
200278a6:	2306      	movs	r3, #6
200278a8:	f7ff ffa8 	bl	200277fc <mbedtls_asn1_get_tag>
200278ac:	4604      	mov	r4, r0
200278ae:	b980      	cbnz	r0, 200278d2 <mbedtls_asn1_get_alg+0x60>
200278b0:	682a      	ldr	r2, [r5, #0]
200278b2:	f8d8 1004 	ldr.w	r1, [r8, #4]
200278b6:	f8c8 2008 	str.w	r2, [r8, #8]
200278ba:	1853      	adds	r3, r2, r1
200278bc:	42bb      	cmp	r3, r7
200278be:	602b      	str	r3, [r5, #0]
200278c0:	d10b      	bne.n	200278da <mbedtls_asn1_get_alg+0x68>
200278c2:	4601      	mov	r1, r0
200278c4:	f106 030c 	add.w	r3, r6, #12
200278c8:	4632      	mov	r2, r6
200278ca:	3601      	adds	r6, #1
200278cc:	42b3      	cmp	r3, r6
200278ce:	7011      	strb	r1, [r2, #0]
200278d0:	d1fa      	bne.n	200278c8 <mbedtls_asn1_get_alg+0x56>
200278d2:	4620      	mov	r0, r4
200278d4:	b003      	add	sp, #12
200278d6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
200278da:	5c51      	ldrb	r1, [r2, r1]
200278dc:	4632      	mov	r2, r6
200278de:	3301      	adds	r3, #1
200278e0:	f842 1b04 	str.w	r1, [r2], #4
200278e4:	4628      	mov	r0, r5
200278e6:	4639      	mov	r1, r7
200278e8:	602b      	str	r3, [r5, #0]
200278ea:	f7ff ff41 	bl	20027770 <mbedtls_asn1_get_len>
200278ee:	b960      	cbnz	r0, 2002790a <mbedtls_asn1_get_alg+0x98>
200278f0:	682b      	ldr	r3, [r5, #0]
200278f2:	6872      	ldr	r2, [r6, #4]
200278f4:	60b3      	str	r3, [r6, #8]
200278f6:	4413      	add	r3, r2
200278f8:	42bb      	cmp	r3, r7
200278fa:	bf18      	it	ne
200278fc:	f06f 0465 	mvnne.w	r4, #101	@ 0x65
20027900:	602b      	str	r3, [r5, #0]
20027902:	e7e6      	b.n	200278d2 <mbedtls_asn1_get_alg+0x60>
20027904:	f06f 045f 	mvn.w	r4, #95	@ 0x5f
20027908:	e7e3      	b.n	200278d2 <mbedtls_asn1_get_alg+0x60>
2002790a:	4604      	mov	r4, r0
2002790c:	e7e1      	b.n	200278d2 <mbedtls_asn1_get_alg+0x60>

2002790e <mpi_sub_hlp>:
2002790e:	2300      	movs	r3, #0
20027910:	b5f0      	push	{r4, r5, r6, r7, lr}
20027912:	461c      	mov	r4, r3
20027914:	1f16      	subs	r6, r2, #4
20027916:	4284      	cmp	r4, r0
20027918:	d103      	bne.n	20027922 <mpi_sub_hlp+0x14>
2002791a:	eb02 0284 	add.w	r2, r2, r4, lsl #2
2002791e:	b9b3      	cbnz	r3, 2002794e <mpi_sub_hlp+0x40>
20027920:	bdf0      	pop	{r4, r5, r6, r7, pc}
20027922:	f856 cf04 	ldr.w	ip, [r6, #4]!
20027926:	ebac 0503 	sub.w	r5, ip, r3
2002792a:	6035      	str	r5, [r6, #0]
2002792c:	f851 7024 	ldr.w	r7, [r1, r4, lsl #2]
20027930:	3401      	adds	r4, #1
20027932:	42bd      	cmp	r5, r7
20027934:	bf2c      	ite	cs
20027936:	f04f 0e00 	movcs.w	lr, #0
2002793a:	f04f 0e01 	movcc.w	lr, #1
2002793e:	1bed      	subs	r5, r5, r7
20027940:	459c      	cmp	ip, r3
20027942:	bf2c      	ite	cs
20027944:	4673      	movcs	r3, lr
20027946:	f10e 0301 	addcc.w	r3, lr, #1
2002794a:	6035      	str	r5, [r6, #0]
2002794c:	e7e3      	b.n	20027916 <mpi_sub_hlp+0x8>
2002794e:	6811      	ldr	r1, [r2, #0]
20027950:	1ac8      	subs	r0, r1, r3
20027952:	4299      	cmp	r1, r3
20027954:	bf2c      	ite	cs
20027956:	2300      	movcs	r3, #0
20027958:	2301      	movcc	r3, #1
2002795a:	f842 0b04 	str.w	r0, [r2], #4
2002795e:	e7de      	b.n	2002791e <mpi_sub_hlp+0x10>

20027960 <mpi_mul_hlp>:
20027960:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20027964:	4694      	mov	ip, r2
20027966:	460e      	mov	r6, r1
20027968:	4686      	mov	lr, r0
2002796a:	2500      	movs	r5, #0
2002796c:	f102 0440 	add.w	r4, r2, #64	@ 0x40
20027970:	f1be 0f0f 	cmp.w	lr, #15
20027974:	f854 7c40 	ldr.w	r7, [r4, #-64]
20027978:	f106 0640 	add.w	r6, r6, #64	@ 0x40
2002797c:	f104 0440 	add.w	r4, r4, #64	@ 0x40
20027980:	d87c      	bhi.n	20027a7c <mpi_mul_hlp+0x11c>
20027982:	f06f 080f 	mvn.w	r8, #15
20027986:	0902      	lsrs	r2, r0, #4
20027988:	fb08 0002 	mla	r0, r8, r2, r0
2002798c:	2807      	cmp	r0, #7
2002798e:	ea4f 1e82 	mov.w	lr, r2, lsl #6
20027992:	eb0c 1482 	add.w	r4, ip, r2, lsl #6
20027996:	eb01 1682 	add.w	r6, r1, r2, lsl #6
2002799a:	d95b      	bls.n	20027a54 <mpi_mul_hlp+0xf4>
2002799c:	f851 100e 	ldr.w	r1, [r1, lr]
200279a0:	3808      	subs	r0, #8
200279a2:	fba1 1203 	umull	r1, r2, r1, r3
200279a6:	1869      	adds	r1, r5, r1
200279a8:	f142 0200 	adc.w	r2, r2, #0
200279ac:	187f      	adds	r7, r7, r1
200279ae:	f84c 700e 	str.w	r7, [ip, lr]
200279b2:	6871      	ldr	r1, [r6, #4]
200279b4:	f142 0200 	adc.w	r2, r2, #0
200279b8:	fba1 5103 	umull	r5, r1, r1, r3
200279bc:	1952      	adds	r2, r2, r5
200279be:	6865      	ldr	r5, [r4, #4]
200279c0:	f141 0100 	adc.w	r1, r1, #0
200279c4:	1952      	adds	r2, r2, r5
200279c6:	6062      	str	r2, [r4, #4]
200279c8:	68b2      	ldr	r2, [r6, #8]
200279ca:	f141 0100 	adc.w	r1, r1, #0
200279ce:	fba2 5203 	umull	r5, r2, r2, r3
200279d2:	1949      	adds	r1, r1, r5
200279d4:	68a5      	ldr	r5, [r4, #8]
200279d6:	f142 0200 	adc.w	r2, r2, #0
200279da:	1949      	adds	r1, r1, r5
200279dc:	60a1      	str	r1, [r4, #8]
200279de:	68f1      	ldr	r1, [r6, #12]
200279e0:	f142 0200 	adc.w	r2, r2, #0
200279e4:	fba1 5103 	umull	r5, r1, r1, r3
200279e8:	1952      	adds	r2, r2, r5
200279ea:	68e5      	ldr	r5, [r4, #12]
200279ec:	f141 0100 	adc.w	r1, r1, #0
200279f0:	1952      	adds	r2, r2, r5
200279f2:	60e2      	str	r2, [r4, #12]
200279f4:	6932      	ldr	r2, [r6, #16]
200279f6:	f141 0100 	adc.w	r1, r1, #0
200279fa:	fba2 5203 	umull	r5, r2, r2, r3
200279fe:	1949      	adds	r1, r1, r5
20027a00:	6925      	ldr	r5, [r4, #16]
20027a02:	f142 0200 	adc.w	r2, r2, #0
20027a06:	1949      	adds	r1, r1, r5
20027a08:	6121      	str	r1, [r4, #16]
20027a0a:	6971      	ldr	r1, [r6, #20]
20027a0c:	f142 0200 	adc.w	r2, r2, #0
20027a10:	fba1 5103 	umull	r5, r1, r1, r3
20027a14:	1952      	adds	r2, r2, r5
20027a16:	6965      	ldr	r5, [r4, #20]
20027a18:	f141 0100 	adc.w	r1, r1, #0
20027a1c:	1952      	adds	r2, r2, r5
20027a1e:	6162      	str	r2, [r4, #20]
20027a20:	69b2      	ldr	r2, [r6, #24]
20027a22:	f141 0100 	adc.w	r1, r1, #0
20027a26:	fba2 5203 	umull	r5, r2, r2, r3
20027a2a:	1949      	adds	r1, r1, r5
20027a2c:	69a5      	ldr	r5, [r4, #24]
20027a2e:	f142 0200 	adc.w	r2, r2, #0
20027a32:	1949      	adds	r1, r1, r5
20027a34:	61a1      	str	r1, [r4, #24]
20027a36:	69f1      	ldr	r1, [r6, #28]
20027a38:	f142 0200 	adc.w	r2, r2, #0
20027a3c:	fba1 1503 	umull	r1, r5, r1, r3
20027a40:	1852      	adds	r2, r2, r1
20027a42:	69e1      	ldr	r1, [r4, #28]
20027a44:	f145 0500 	adc.w	r5, r5, #0
20027a48:	1852      	adds	r2, r2, r1
20027a4a:	61e2      	str	r2, [r4, #28]
20027a4c:	f145 0500 	adc.w	r5, r5, #0
20027a50:	3420      	adds	r4, #32
20027a52:	3620      	adds	r6, #32
20027a54:	4627      	mov	r7, r4
20027a56:	ea4f 0c80 	mov.w	ip, r0, lsl #2
20027a5a:	eb06 0080 	add.w	r0, r6, r0, lsl #2
20027a5e:	42b0      	cmp	r0, r6
20027a60:	f857 1b04 	ldr.w	r1, [r7], #4
20027a64:	f040 80eb 	bne.w	20027c3e <mpi_mul_hlp+0x2de>
20027a68:	4464      	add	r4, ip
20027a6a:	6823      	ldr	r3, [r4, #0]
20027a6c:	195b      	adds	r3, r3, r5
20027a6e:	f844 3b04 	str.w	r3, [r4], #4
20027a72:	f04f 0501 	mov.w	r5, #1
20027a76:	d2f8      	bcs.n	20027a6a <mpi_mul_hlp+0x10a>
20027a78:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027a7c:	f856 2c40 	ldr.w	r2, [r6, #-64]
20027a80:	f1ae 0e10 	sub.w	lr, lr, #16
20027a84:	fba2 2803 	umull	r2, r8, r2, r3
20027a88:	18aa      	adds	r2, r5, r2
20027a8a:	f148 0500 	adc.w	r5, r8, #0
20027a8e:	18ba      	adds	r2, r7, r2
20027a90:	f844 2c80 	str.w	r2, [r4, #-128]
20027a94:	f856 2c3c 	ldr.w	r2, [r6, #-60]
20027a98:	f145 0500 	adc.w	r5, r5, #0
20027a9c:	fba2 7203 	umull	r7, r2, r2, r3
20027aa0:	19ef      	adds	r7, r5, r7
20027aa2:	f854 5c7c 	ldr.w	r5, [r4, #-124]
20027aa6:	f142 0200 	adc.w	r2, r2, #0
20027aaa:	19ed      	adds	r5, r5, r7
20027aac:	f844 5c7c 	str.w	r5, [r4, #-124]
20027ab0:	f856 5c38 	ldr.w	r5, [r6, #-56]
20027ab4:	f142 0200 	adc.w	r2, r2, #0
20027ab8:	fba5 7503 	umull	r7, r5, r5, r3
20027abc:	19d7      	adds	r7, r2, r7
20027abe:	f854 2c78 	ldr.w	r2, [r4, #-120]
20027ac2:	f145 0500 	adc.w	r5, r5, #0
20027ac6:	19d2      	adds	r2, r2, r7
20027ac8:	f844 2c78 	str.w	r2, [r4, #-120]
20027acc:	f856 2c34 	ldr.w	r2, [r6, #-52]
20027ad0:	f145 0500 	adc.w	r5, r5, #0
20027ad4:	fba2 7203 	umull	r7, r2, r2, r3
20027ad8:	19ef      	adds	r7, r5, r7
20027ada:	f854 5c74 	ldr.w	r5, [r4, #-116]
20027ade:	f142 0200 	adc.w	r2, r2, #0
20027ae2:	19ed      	adds	r5, r5, r7
20027ae4:	f844 5c74 	str.w	r5, [r4, #-116]
20027ae8:	f856 5c30 	ldr.w	r5, [r6, #-48]
20027aec:	f142 0200 	adc.w	r2, r2, #0
20027af0:	fba5 7503 	umull	r7, r5, r5, r3
20027af4:	19d7      	adds	r7, r2, r7
20027af6:	f854 2c70 	ldr.w	r2, [r4, #-112]
20027afa:	f145 0500 	adc.w	r5, r5, #0
20027afe:	19d2      	adds	r2, r2, r7
20027b00:	f844 2c70 	str.w	r2, [r4, #-112]
20027b04:	f856 2c2c 	ldr.w	r2, [r6, #-44]
20027b08:	f145 0500 	adc.w	r5, r5, #0
20027b0c:	fba2 7203 	umull	r7, r2, r2, r3
20027b10:	19ef      	adds	r7, r5, r7
20027b12:	f854 5c6c 	ldr.w	r5, [r4, #-108]
20027b16:	f142 0200 	adc.w	r2, r2, #0
20027b1a:	19ed      	adds	r5, r5, r7
20027b1c:	f844 5c6c 	str.w	r5, [r4, #-108]
20027b20:	f856 5c28 	ldr.w	r5, [r6, #-40]
20027b24:	f142 0200 	adc.w	r2, r2, #0
20027b28:	fba5 7503 	umull	r7, r5, r5, r3
20027b2c:	19d7      	adds	r7, r2, r7
20027b2e:	f854 2c68 	ldr.w	r2, [r4, #-104]
20027b32:	f145 0500 	adc.w	r5, r5, #0
20027b36:	19d2      	adds	r2, r2, r7
20027b38:	f844 2c68 	str.w	r2, [r4, #-104]
20027b3c:	f856 2c24 	ldr.w	r2, [r6, #-36]
20027b40:	f145 0500 	adc.w	r5, r5, #0
20027b44:	fba2 7203 	umull	r7, r2, r2, r3
20027b48:	19ef      	adds	r7, r5, r7
20027b4a:	f854 5c64 	ldr.w	r5, [r4, #-100]
20027b4e:	f142 0200 	adc.w	r2, r2, #0
20027b52:	19ed      	adds	r5, r5, r7
20027b54:	f844 5c64 	str.w	r5, [r4, #-100]
20027b58:	f856 5c20 	ldr.w	r5, [r6, #-32]
20027b5c:	f142 0200 	adc.w	r2, r2, #0
20027b60:	fba5 7503 	umull	r7, r5, r5, r3
20027b64:	19d7      	adds	r7, r2, r7
20027b66:	f854 2c60 	ldr.w	r2, [r4, #-96]
20027b6a:	f145 0500 	adc.w	r5, r5, #0
20027b6e:	19d2      	adds	r2, r2, r7
20027b70:	f844 2c60 	str.w	r2, [r4, #-96]
20027b74:	f856 2c1c 	ldr.w	r2, [r6, #-28]
20027b78:	f145 0500 	adc.w	r5, r5, #0
20027b7c:	fba2 7203 	umull	r7, r2, r2, r3
20027b80:	19ef      	adds	r7, r5, r7
20027b82:	f854 5c5c 	ldr.w	r5, [r4, #-92]
20027b86:	f142 0200 	adc.w	r2, r2, #0
20027b8a:	19ed      	adds	r5, r5, r7
20027b8c:	f844 5c5c 	str.w	r5, [r4, #-92]
20027b90:	f856 5c18 	ldr.w	r5, [r6, #-24]
20027b94:	f142 0200 	adc.w	r2, r2, #0
20027b98:	fba5 7503 	umull	r7, r5, r5, r3
20027b9c:	19d7      	adds	r7, r2, r7
20027b9e:	f854 2c58 	ldr.w	r2, [r4, #-88]
20027ba2:	f145 0500 	adc.w	r5, r5, #0
20027ba6:	19d2      	adds	r2, r2, r7
20027ba8:	f844 2c58 	str.w	r2, [r4, #-88]
20027bac:	f856 2c14 	ldr.w	r2, [r6, #-20]
20027bb0:	f145 0500 	adc.w	r5, r5, #0
20027bb4:	fba2 7203 	umull	r7, r2, r2, r3
20027bb8:	19ef      	adds	r7, r5, r7
20027bba:	f854 5c54 	ldr.w	r5, [r4, #-84]
20027bbe:	f142 0200 	adc.w	r2, r2, #0
20027bc2:	19ed      	adds	r5, r5, r7
20027bc4:	f844 5c54 	str.w	r5, [r4, #-84]
20027bc8:	f856 5c10 	ldr.w	r5, [r6, #-16]
20027bcc:	f142 0200 	adc.w	r2, r2, #0
20027bd0:	fba5 7503 	umull	r7, r5, r5, r3
20027bd4:	19d7      	adds	r7, r2, r7
20027bd6:	f854 2c50 	ldr.w	r2, [r4, #-80]
20027bda:	f145 0500 	adc.w	r5, r5, #0
20027bde:	19d2      	adds	r2, r2, r7
20027be0:	f844 2c50 	str.w	r2, [r4, #-80]
20027be4:	f856 2c0c 	ldr.w	r2, [r6, #-12]
20027be8:	f145 0500 	adc.w	r5, r5, #0
20027bec:	fba2 7203 	umull	r7, r2, r2, r3
20027bf0:	19ef      	adds	r7, r5, r7
20027bf2:	f854 5c4c 	ldr.w	r5, [r4, #-76]
20027bf6:	f142 0200 	adc.w	r2, r2, #0
20027bfa:	19ed      	adds	r5, r5, r7
20027bfc:	f844 5c4c 	str.w	r5, [r4, #-76]
20027c00:	f856 5c08 	ldr.w	r5, [r6, #-8]
20027c04:	f142 0200 	adc.w	r2, r2, #0
20027c08:	fba5 5703 	umull	r5, r7, r5, r3
20027c0c:	1955      	adds	r5, r2, r5
20027c0e:	f854 2c48 	ldr.w	r2, [r4, #-72]
20027c12:	f147 0700 	adc.w	r7, r7, #0
20027c16:	1952      	adds	r2, r2, r5
20027c18:	f844 2c48 	str.w	r2, [r4, #-72]
20027c1c:	f856 2c04 	ldr.w	r2, [r6, #-4]
20027c20:	f147 0700 	adc.w	r7, r7, #0
20027c24:	fba2 2503 	umull	r2, r5, r2, r3
20027c28:	18bf      	adds	r7, r7, r2
20027c2a:	f854 2c44 	ldr.w	r2, [r4, #-68]
20027c2e:	f145 0500 	adc.w	r5, r5, #0
20027c32:	19d2      	adds	r2, r2, r7
20027c34:	f145 0500 	adc.w	r5, r5, #0
20027c38:	f844 2c44 	str.w	r2, [r4, #-68]
20027c3c:	e698      	b.n	20027970 <mpi_mul_hlp+0x10>
20027c3e:	f856 2b04 	ldr.w	r2, [r6], #4
20027c42:	fba2 2e03 	umull	r2, lr, r2, r3
20027c46:	18aa      	adds	r2, r5, r2
20027c48:	f14e 0500 	adc.w	r5, lr, #0
20027c4c:	1889      	adds	r1, r1, r2
20027c4e:	f145 0500 	adc.w	r5, r5, #0
20027c52:	f847 1c04 	str.w	r1, [r7, #-4]
20027c56:	e702      	b.n	20027a5e <mpi_mul_hlp+0xfe>

20027c58 <mbedtls_mpi_init>:
20027c58:	b120      	cbz	r0, 20027c64 <mbedtls_mpi_init+0xc>
20027c5a:	2300      	movs	r3, #0
20027c5c:	2201      	movs	r2, #1
20027c5e:	e9c0 2300 	strd	r2, r3, [r0]
20027c62:	6083      	str	r3, [r0, #8]
20027c64:	4770      	bx	lr

20027c66 <mbedtls_mpi_free>:
20027c66:	b510      	push	{r4, lr}
20027c68:	4604      	mov	r4, r0
20027c6a:	b168      	cbz	r0, 20027c88 <mbedtls_mpi_free+0x22>
20027c6c:	6880      	ldr	r0, [r0, #8]
20027c6e:	b130      	cbz	r0, 20027c7e <mbedtls_mpi_free+0x18>
20027c70:	4603      	mov	r3, r0
20027c72:	2100      	movs	r1, #0
20027c74:	6862      	ldr	r2, [r4, #4]
20027c76:	3a01      	subs	r2, #1
20027c78:	d207      	bcs.n	20027c8a <mbedtls_mpi_free+0x24>
20027c7a:	f002 fcd3 	bl	2002a624 <free>
20027c7e:	2300      	movs	r3, #0
20027c80:	2201      	movs	r2, #1
20027c82:	e9c4 2300 	strd	r2, r3, [r4]
20027c86:	60a3      	str	r3, [r4, #8]
20027c88:	bd10      	pop	{r4, pc}
20027c8a:	f843 1b04 	str.w	r1, [r3], #4
20027c8e:	e7f2      	b.n	20027c76 <mbedtls_mpi_free+0x10>

20027c90 <mbedtls_mpi_grow>:
20027c90:	f242 7310 	movw	r3, #10000	@ 0x2710
20027c94:	4299      	cmp	r1, r3
20027c96:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20027c9a:	4605      	mov	r5, r0
20027c9c:	460e      	mov	r6, r1
20027c9e:	d903      	bls.n	20027ca8 <mbedtls_mpi_grow+0x18>
20027ca0:	f06f 000f 	mvn.w	r0, #15
20027ca4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027ca8:	6844      	ldr	r4, [r0, #4]
20027caa:	428c      	cmp	r4, r1
20027cac:	d301      	bcc.n	20027cb2 <mbedtls_mpi_grow+0x22>
20027cae:	2000      	movs	r0, #0
20027cb0:	e7f8      	b.n	20027ca4 <mbedtls_mpi_grow+0x14>
20027cb2:	2104      	movs	r1, #4
20027cb4:	4630      	mov	r0, r6
20027cb6:	f002 fc99 	bl	2002a5ec <calloc>
20027cba:	4607      	mov	r7, r0
20027cbc:	2800      	cmp	r0, #0
20027cbe:	d0ef      	beq.n	20027ca0 <mbedtls_mpi_grow+0x10>
20027cc0:	f8d5 8008 	ldr.w	r8, [r5, #8]
20027cc4:	f1b8 0f00 	cmp.w	r8, #0
20027cc8:	d00c      	beq.n	20027ce4 <mbedtls_mpi_grow+0x54>
20027cca:	00a4      	lsls	r4, r4, #2
20027ccc:	4622      	mov	r2, r4
20027cce:	4641      	mov	r1, r8
20027cd0:	f002 fd88 	bl	2002a7e4 <memcpy>
20027cd4:	4643      	mov	r3, r8
20027cd6:	2200      	movs	r2, #0
20027cd8:	4444      	add	r4, r8
20027cda:	42a3      	cmp	r3, r4
20027cdc:	d105      	bne.n	20027cea <mbedtls_mpi_grow+0x5a>
20027cde:	4640      	mov	r0, r8
20027ce0:	f002 fca0 	bl	2002a624 <free>
20027ce4:	e9c5 6701 	strd	r6, r7, [r5, #4]
20027ce8:	e7e1      	b.n	20027cae <mbedtls_mpi_grow+0x1e>
20027cea:	f843 2b04 	str.w	r2, [r3], #4
20027cee:	e7f4      	b.n	20027cda <mbedtls_mpi_grow+0x4a>

20027cf0 <mbedtls_mpi_copy>:
20027cf0:	4288      	cmp	r0, r1
20027cf2:	b570      	push	{r4, r5, r6, lr}
20027cf4:	4605      	mov	r5, r0
20027cf6:	460e      	mov	r6, r1
20027cf8:	d003      	beq.n	20027d02 <mbedtls_mpi_copy+0x12>
20027cfa:	688b      	ldr	r3, [r1, #8]
20027cfc:	b91b      	cbnz	r3, 20027d06 <mbedtls_mpi_copy+0x16>
20027cfe:	f7ff ffb2 	bl	20027c66 <mbedtls_mpi_free>
20027d02:	2000      	movs	r0, #0
20027d04:	bd70      	pop	{r4, r5, r6, pc}
20027d06:	684a      	ldr	r2, [r1, #4]
20027d08:	3a01      	subs	r2, #1
20027d0a:	b11a      	cbz	r2, 20027d14 <mbedtls_mpi_copy+0x24>
20027d0c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
20027d10:	2900      	cmp	r1, #0
20027d12:	d0f9      	beq.n	20027d08 <mbedtls_mpi_copy+0x18>
20027d14:	6833      	ldr	r3, [r6, #0]
20027d16:	1c54      	adds	r4, r2, #1
20027d18:	4621      	mov	r1, r4
20027d1a:	4628      	mov	r0, r5
20027d1c:	602b      	str	r3, [r5, #0]
20027d1e:	f7ff ffb7 	bl	20027c90 <mbedtls_mpi_grow>
20027d22:	4601      	mov	r1, r0
20027d24:	b950      	cbnz	r0, 20027d3c <mbedtls_mpi_copy+0x4c>
20027d26:	686a      	ldr	r2, [r5, #4]
20027d28:	68a8      	ldr	r0, [r5, #8]
20027d2a:	0092      	lsls	r2, r2, #2
20027d2c:	f002 fd40 	bl	2002a7b0 <memset>
20027d30:	68b1      	ldr	r1, [r6, #8]
20027d32:	68a8      	ldr	r0, [r5, #8]
20027d34:	00a2      	lsls	r2, r4, #2
20027d36:	f002 fd55 	bl	2002a7e4 <memcpy>
20027d3a:	e7e2      	b.n	20027d02 <mbedtls_mpi_copy+0x12>
20027d3c:	f06f 000f 	mvn.w	r0, #15
20027d40:	e7e0      	b.n	20027d04 <mbedtls_mpi_copy+0x14>

20027d42 <mbedtls_mpi_lset>:
20027d42:	b570      	push	{r4, r5, r6, lr}
20027d44:	460e      	mov	r6, r1
20027d46:	2101      	movs	r1, #1
20027d48:	4604      	mov	r4, r0
20027d4a:	f7ff ffa1 	bl	20027c90 <mbedtls_mpi_grow>
20027d4e:	4605      	mov	r5, r0
20027d50:	b988      	cbnz	r0, 20027d76 <mbedtls_mpi_lset+0x34>
20027d52:	6862      	ldr	r2, [r4, #4]
20027d54:	4601      	mov	r1, r0
20027d56:	0092      	lsls	r2, r2, #2
20027d58:	68a0      	ldr	r0, [r4, #8]
20027d5a:	f002 fd29 	bl	2002a7b0 <memset>
20027d5e:	68a3      	ldr	r3, [r4, #8]
20027d60:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20027d64:	2e00      	cmp	r6, #0
20027d66:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20027d6a:	601a      	str	r2, [r3, #0]
20027d6c:	bfac      	ite	ge
20027d6e:	2301      	movge	r3, #1
20027d70:	f04f 33ff 	movlt.w	r3, #4294967295
20027d74:	6023      	str	r3, [r4, #0]
20027d76:	4628      	mov	r0, r5
20027d78:	bd70      	pop	{r4, r5, r6, pc}

20027d7a <mbedtls_mpi_lsb>:
20027d7a:	2300      	movs	r3, #0
20027d7c:	4619      	mov	r1, r3
20027d7e:	b570      	push	{r4, r5, r6, lr}
20027d80:	6844      	ldr	r4, [r0, #4]
20027d82:	428c      	cmp	r4, r1
20027d84:	d101      	bne.n	20027d8a <mbedtls_mpi_lsb+0x10>
20027d86:	2000      	movs	r0, #0
20027d88:	e008      	b.n	20027d9c <mbedtls_mpi_lsb+0x22>
20027d8a:	6882      	ldr	r2, [r0, #8]
20027d8c:	f852 5021 	ldr.w	r5, [r2, r1, lsl #2]
20027d90:	2200      	movs	r2, #0
20027d92:	fa25 f602 	lsr.w	r6, r5, r2
20027d96:	07f6      	lsls	r6, r6, #31
20027d98:	d501      	bpl.n	20027d9e <mbedtls_mpi_lsb+0x24>
20027d9a:	1898      	adds	r0, r3, r2
20027d9c:	bd70      	pop	{r4, r5, r6, pc}
20027d9e:	3201      	adds	r2, #1
20027da0:	2a20      	cmp	r2, #32
20027da2:	d1f6      	bne.n	20027d92 <mbedtls_mpi_lsb+0x18>
20027da4:	3320      	adds	r3, #32
20027da6:	3101      	adds	r1, #1
20027da8:	e7eb      	b.n	20027d82 <mbedtls_mpi_lsb+0x8>

20027daa <mbedtls_mpi_bitlen>:
20027daa:	4602      	mov	r2, r0
20027dac:	6840      	ldr	r0, [r0, #4]
20027dae:	b188      	cbz	r0, 20027dd4 <mbedtls_mpi_bitlen+0x2a>
20027db0:	6891      	ldr	r1, [r2, #8]
20027db2:	1e43      	subs	r3, r0, #1
20027db4:	b97b      	cbnz	r3, 20027dd6 <mbedtls_mpi_bitlen+0x2c>
20027db6:	461a      	mov	r2, r3
20027db8:	5889      	ldr	r1, [r1, r2]
20027dba:	2000      	movs	r0, #0
20027dbc:	f04f 4200 	mov.w	r2, #2147483648	@ 0x80000000
20027dc0:	4211      	tst	r1, r2
20027dc2:	d104      	bne.n	20027dce <mbedtls_mpi_bitlen+0x24>
20027dc4:	3001      	adds	r0, #1
20027dc6:	2820      	cmp	r0, #32
20027dc8:	ea4f 0252 	mov.w	r2, r2, lsr #1
20027dcc:	d1f8      	bne.n	20027dc0 <mbedtls_mpi_bitlen+0x16>
20027dce:	3301      	adds	r3, #1
20027dd0:	ebc0 1043 	rsb	r0, r0, r3, lsl #5
20027dd4:	4770      	bx	lr
20027dd6:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
20027dda:	009a      	lsls	r2, r3, #2
20027ddc:	2800      	cmp	r0, #0
20027dde:	d1eb      	bne.n	20027db8 <mbedtls_mpi_bitlen+0xe>
20027de0:	3b01      	subs	r3, #1
20027de2:	e7e7      	b.n	20027db4 <mbedtls_mpi_bitlen+0xa>

20027de4 <mbedtls_mpi_size>:
20027de4:	b508      	push	{r3, lr}
20027de6:	f7ff ffe0 	bl	20027daa <mbedtls_mpi_bitlen>
20027dea:	3007      	adds	r0, #7
20027dec:	08c0      	lsrs	r0, r0, #3
20027dee:	bd08      	pop	{r3, pc}

20027df0 <mbedtls_mpi_read_binary>:
20027df0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027df2:	4607      	mov	r7, r0
20027df4:	460c      	mov	r4, r1
20027df6:	4616      	mov	r6, r2
20027df8:	2500      	movs	r5, #0
20027dfa:	42b5      	cmp	r5, r6
20027dfc:	d001      	beq.n	20027e02 <mbedtls_mpi_read_binary+0x12>
20027dfe:	5d63      	ldrb	r3, [r4, r5]
20027e00:	b173      	cbz	r3, 20027e20 <mbedtls_mpi_read_binary+0x30>
20027e02:	1b71      	subs	r1, r6, r5
20027e04:	f011 0303 	ands.w	r3, r1, #3
20027e08:	bf18      	it	ne
20027e0a:	2301      	movne	r3, #1
20027e0c:	4638      	mov	r0, r7
20027e0e:	eb03 0191 	add.w	r1, r3, r1, lsr #2
20027e12:	f7ff ff3d 	bl	20027c90 <mbedtls_mpi_grow>
20027e16:	4601      	mov	r1, r0
20027e18:	b120      	cbz	r0, 20027e24 <mbedtls_mpi_read_binary+0x34>
20027e1a:	f06f 000f 	mvn.w	r0, #15
20027e1e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027e20:	3501      	adds	r5, #1
20027e22:	e7ea      	b.n	20027dfa <mbedtls_mpi_read_binary+0xa>
20027e24:	4638      	mov	r0, r7
20027e26:	f7ff ff8c 	bl	20027d42 <mbedtls_mpi_lset>
20027e2a:	2800      	cmp	r0, #0
20027e2c:	d1f5      	bne.n	20027e1a <mbedtls_mpi_read_binary+0x2a>
20027e2e:	4603      	mov	r3, r0
20027e30:	4434      	add	r4, r6
20027e32:	1af2      	subs	r2, r6, r3
20027e34:	4295      	cmp	r5, r2
20027e36:	d2f2      	bcs.n	20027e1e <mbedtls_mpi_read_binary+0x2e>
20027e38:	f8d7 e008 	ldr.w	lr, [r7, #8]
20027e3c:	f814 1d01 	ldrb.w	r1, [r4, #-1]!
20027e40:	00da      	lsls	r2, r3, #3
20027e42:	f023 0c03 	bic.w	ip, r3, #3
20027e46:	f002 0218 	and.w	r2, r2, #24
20027e4a:	4091      	lsls	r1, r2
20027e4c:	f85e 200c 	ldr.w	r2, [lr, ip]
20027e50:	3301      	adds	r3, #1
20027e52:	430a      	orrs	r2, r1
20027e54:	f84e 200c 	str.w	r2, [lr, ip]
20027e58:	e7eb      	b.n	20027e32 <mbedtls_mpi_read_binary+0x42>

20027e5a <mbedtls_mpi_write_binary>:
20027e5a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027e5c:	4615      	mov	r5, r2
20027e5e:	4607      	mov	r7, r0
20027e60:	460c      	mov	r4, r1
20027e62:	f7ff ffbf 	bl	20027de4 <mbedtls_mpi_size>
20027e66:	42a8      	cmp	r0, r5
20027e68:	4606      	mov	r6, r0
20027e6a:	d816      	bhi.n	20027e9a <mbedtls_mpi_write_binary+0x40>
20027e6c:	4620      	mov	r0, r4
20027e6e:	462a      	mov	r2, r5
20027e70:	2100      	movs	r1, #0
20027e72:	f002 fc9d 	bl	2002a7b0 <memset>
20027e76:	2300      	movs	r3, #0
20027e78:	442c      	add	r4, r5
20027e7a:	42b3      	cmp	r3, r6
20027e7c:	d101      	bne.n	20027e82 <mbedtls_mpi_write_binary+0x28>
20027e7e:	2000      	movs	r0, #0
20027e80:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027e82:	68b8      	ldr	r0, [r7, #8]
20027e84:	f023 0203 	bic.w	r2, r3, #3
20027e88:	5882      	ldr	r2, [r0, r2]
20027e8a:	00d9      	lsls	r1, r3, #3
20027e8c:	f001 0118 	and.w	r1, r1, #24
20027e90:	40ca      	lsrs	r2, r1
20027e92:	f804 2d01 	strb.w	r2, [r4, #-1]!
20027e96:	3301      	adds	r3, #1
20027e98:	e7ef      	b.n	20027e7a <mbedtls_mpi_write_binary+0x20>
20027e9a:	f06f 0007 	mvn.w	r0, #7
20027e9e:	e7ef      	b.n	20027e80 <mbedtls_mpi_write_binary+0x26>

20027ea0 <mbedtls_mpi_shift_l>:
20027ea0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027ea2:	4605      	mov	r5, r0
20027ea4:	460e      	mov	r6, r1
20027ea6:	094c      	lsrs	r4, r1, #5
20027ea8:	f001 071f 	and.w	r7, r1, #31
20027eac:	f7ff ff7d 	bl	20027daa <mbedtls_mpi_bitlen>
20027eb0:	686b      	ldr	r3, [r5, #4]
20027eb2:	4430      	add	r0, r6
20027eb4:	ebb0 1f43 	cmp.w	r0, r3, lsl #5
20027eb8:	d804      	bhi.n	20027ec4 <mbedtls_mpi_shift_l+0x24>
20027eba:	2e1f      	cmp	r6, #31
20027ebc:	d810      	bhi.n	20027ee0 <mbedtls_mpi_shift_l+0x40>
20027ebe:	bb7f      	cbnz	r7, 20027f20 <mbedtls_mpi_shift_l+0x80>
20027ec0:	2000      	movs	r0, #0
20027ec2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027ec4:	f010 011f 	ands.w	r1, r0, #31
20027ec8:	bf18      	it	ne
20027eca:	2101      	movne	r1, #1
20027ecc:	eb01 1150 	add.w	r1, r1, r0, lsr #5
20027ed0:	4628      	mov	r0, r5
20027ed2:	f7ff fedd 	bl	20027c90 <mbedtls_mpi_grow>
20027ed6:	2800      	cmp	r0, #0
20027ed8:	d0ef      	beq.n	20027eba <mbedtls_mpi_shift_l+0x1a>
20027eda:	f06f 000f 	mvn.w	r0, #15
20027ede:	e7f0      	b.n	20027ec2 <mbedtls_mpi_shift_l+0x22>
20027ee0:	f06f 0003 	mvn.w	r0, #3
20027ee4:	686a      	ldr	r2, [r5, #4]
20027ee6:	4360      	muls	r0, r4
20027ee8:	4611      	mov	r1, r2
20027eea:	0093      	lsls	r3, r2, #2
20027eec:	42a1      	cmp	r1, r4
20027eee:	f1a3 0304 	sub.w	r3, r3, #4
20027ef2:	d80c      	bhi.n	20027f0e <mbedtls_mpi_shift_l+0x6e>
20027ef4:	1aa3      	subs	r3, r4, r2
20027ef6:	4294      	cmp	r4, r2
20027ef8:	bf88      	it	hi
20027efa:	2300      	movhi	r3, #0
20027efc:	4413      	add	r3, r2
20027efe:	2200      	movs	r2, #0
20027f00:	009b      	lsls	r3, r3, #2
20027f02:	3b04      	subs	r3, #4
20027f04:	1d19      	adds	r1, r3, #4
20027f06:	d0da      	beq.n	20027ebe <mbedtls_mpi_shift_l+0x1e>
20027f08:	68a9      	ldr	r1, [r5, #8]
20027f0a:	50ca      	str	r2, [r1, r3]
20027f0c:	e7f9      	b.n	20027f02 <mbedtls_mpi_shift_l+0x62>
20027f0e:	68ae      	ldr	r6, [r5, #8]
20027f10:	3901      	subs	r1, #1
20027f12:	eb06 0c03 	add.w	ip, r6, r3
20027f16:	f85c c000 	ldr.w	ip, [ip, r0]
20027f1a:	f846 c003 	str.w	ip, [r6, r3]
20027f1e:	e7e5      	b.n	20027eec <mbedtls_mpi_shift_l+0x4c>
20027f20:	2200      	movs	r2, #0
20027f22:	686e      	ldr	r6, [r5, #4]
20027f24:	f1c7 0c20 	rsb	ip, r7, #32
20027f28:	42a6      	cmp	r6, r4
20027f2a:	d9c9      	bls.n	20027ec0 <mbedtls_mpi_shift_l+0x20>
20027f2c:	68a8      	ldr	r0, [r5, #8]
20027f2e:	f850 1024 	ldr.w	r1, [r0, r4, lsl #2]
20027f32:	fa01 f307 	lsl.w	r3, r1, r7
20027f36:	4313      	orrs	r3, r2
20027f38:	f840 3024 	str.w	r3, [r0, r4, lsl #2]
20027f3c:	fa21 f20c 	lsr.w	r2, r1, ip
20027f40:	3401      	adds	r4, #1
20027f42:	e7f1      	b.n	20027f28 <mbedtls_mpi_shift_l+0x88>

20027f44 <mbedtls_mpi_shift_r>:
20027f44:	6843      	ldr	r3, [r0, #4]
20027f46:	b4f0      	push	{r4, r5, r6, r7}
20027f48:	094e      	lsrs	r6, r1, #5
20027f4a:	42b3      	cmp	r3, r6
20027f4c:	f001 041f 	and.w	r4, r1, #31
20027f50:	d301      	bcc.n	20027f56 <mbedtls_mpi_shift_r+0x12>
20027f52:	d104      	bne.n	20027f5e <mbedtls_mpi_shift_r+0x1a>
20027f54:	b35c      	cbz	r4, 20027fae <mbedtls_mpi_shift_r+0x6a>
20027f56:	bcf0      	pop	{r4, r5, r6, r7}
20027f58:	2100      	movs	r1, #0
20027f5a:	f7ff bef2 	b.w	20027d42 <mbedtls_mpi_lset>
20027f5e:	291f      	cmp	r1, #31
20027f60:	d827      	bhi.n	20027fb2 <mbedtls_mpi_shift_r+0x6e>
20027f62:	bb04      	cbnz	r4, 20027fa6 <mbedtls_mpi_shift_r+0x62>
20027f64:	bcf0      	pop	{r4, r5, r6, r7}
20027f66:	2000      	movs	r0, #0
20027f68:	4770      	bx	lr
20027f6a:	6882      	ldr	r2, [r0, #8]
20027f6c:	5957      	ldr	r7, [r2, r5]
20027f6e:	3504      	adds	r5, #4
20027f70:	f842 7021 	str.w	r7, [r2, r1, lsl #2]
20027f74:	3101      	adds	r1, #1
20027f76:	1b9a      	subs	r2, r3, r6
20027f78:	428a      	cmp	r2, r1
20027f7a:	d8f6      	bhi.n	20027f6a <mbedtls_mpi_shift_r+0x26>
20027f7c:	2100      	movs	r1, #0
20027f7e:	4293      	cmp	r3, r2
20027f80:	d9ef      	bls.n	20027f62 <mbedtls_mpi_shift_r+0x1e>
20027f82:	6885      	ldr	r5, [r0, #8]
20027f84:	f845 1022 	str.w	r1, [r5, r2, lsl #2]
20027f88:	3201      	adds	r2, #1
20027f8a:	e7f8      	b.n	20027f7e <mbedtls_mpi_shift_r+0x3a>
20027f8c:	6886      	ldr	r6, [r0, #8]
20027f8e:	f856 5023 	ldr.w	r5, [r6, r3, lsl #2]
20027f92:	fa25 f204 	lsr.w	r2, r5, r4
20027f96:	430a      	orrs	r2, r1
20027f98:	f846 2023 	str.w	r2, [r6, r3, lsl #2]
20027f9c:	fa05 f107 	lsl.w	r1, r5, r7
20027fa0:	3b01      	subs	r3, #1
20027fa2:	d2f3      	bcs.n	20027f8c <mbedtls_mpi_shift_r+0x48>
20027fa4:	e7de      	b.n	20027f64 <mbedtls_mpi_shift_r+0x20>
20027fa6:	2100      	movs	r1, #0
20027fa8:	f1c4 0720 	rsb	r7, r4, #32
20027fac:	e7f8      	b.n	20027fa0 <mbedtls_mpi_shift_r+0x5c>
20027fae:	291f      	cmp	r1, #31
20027fb0:	d9d8      	bls.n	20027f64 <mbedtls_mpi_shift_r+0x20>
20027fb2:	2100      	movs	r1, #0
20027fb4:	00b5      	lsls	r5, r6, #2
20027fb6:	e7de      	b.n	20027f76 <mbedtls_mpi_shift_r+0x32>

20027fb8 <mbedtls_mpi_cmp_abs>:
20027fb8:	b530      	push	{r4, r5, lr}
20027fba:	6842      	ldr	r2, [r0, #4]
20027fbc:	b922      	cbnz	r2, 20027fc8 <mbedtls_mpi_cmp_abs+0x10>
20027fbe:	684b      	ldr	r3, [r1, #4]
20027fc0:	b95b      	cbnz	r3, 20027fda <mbedtls_mpi_cmp_abs+0x22>
20027fc2:	b19a      	cbz	r2, 20027fec <mbedtls_mpi_cmp_abs+0x34>
20027fc4:	2001      	movs	r0, #1
20027fc6:	e015      	b.n	20027ff4 <mbedtls_mpi_cmp_abs+0x3c>
20027fc8:	6883      	ldr	r3, [r0, #8]
20027fca:	eb03 0382 	add.w	r3, r3, r2, lsl #2
20027fce:	f853 3c04 	ldr.w	r3, [r3, #-4]
20027fd2:	2b00      	cmp	r3, #0
20027fd4:	d1f3      	bne.n	20027fbe <mbedtls_mpi_cmp_abs+0x6>
20027fd6:	3a01      	subs	r2, #1
20027fd8:	e7f0      	b.n	20027fbc <mbedtls_mpi_cmp_abs+0x4>
20027fda:	688c      	ldr	r4, [r1, #8]
20027fdc:	eb04 0583 	add.w	r5, r4, r3, lsl #2
20027fe0:	f855 5c04 	ldr.w	r5, [r5, #-4]
20027fe4:	b90d      	cbnz	r5, 20027fea <mbedtls_mpi_cmp_abs+0x32>
20027fe6:	3b01      	subs	r3, #1
20027fe8:	e7ea      	b.n	20027fc0 <mbedtls_mpi_cmp_abs+0x8>
20027fea:	b922      	cbnz	r2, 20027ff6 <mbedtls_mpi_cmp_abs+0x3e>
20027fec:	1e18      	subs	r0, r3, #0
20027fee:	bf18      	it	ne
20027ff0:	2001      	movne	r0, #1
20027ff2:	4240      	negs	r0, r0
20027ff4:	bd30      	pop	{r4, r5, pc}
20027ff6:	4293      	cmp	r3, r2
20027ff8:	d3e4      	bcc.n	20027fc4 <mbedtls_mpi_cmp_abs+0xc>
20027ffa:	d80e      	bhi.n	2002801a <mbedtls_mpi_cmp_abs+0x62>
20027ffc:	3a01      	subs	r2, #1
20027ffe:	6883      	ldr	r3, [r0, #8]
20028000:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
20028004:	f854 3022 	ldr.w	r3, [r4, r2, lsl #2]
20028008:	4299      	cmp	r1, r3
2002800a:	d8db      	bhi.n	20027fc4 <mbedtls_mpi_cmp_abs+0xc>
2002800c:	f102 32ff 	add.w	r2, r2, #4294967295
20028010:	d303      	bcc.n	2002801a <mbedtls_mpi_cmp_abs+0x62>
20028012:	1c53      	adds	r3, r2, #1
20028014:	d1f3      	bne.n	20027ffe <mbedtls_mpi_cmp_abs+0x46>
20028016:	2000      	movs	r0, #0
20028018:	e7ec      	b.n	20027ff4 <mbedtls_mpi_cmp_abs+0x3c>
2002801a:	f04f 30ff 	mov.w	r0, #4294967295
2002801e:	e7e9      	b.n	20027ff4 <mbedtls_mpi_cmp_abs+0x3c>

20028020 <mpi_montmul>:
20028020:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028024:	4615      	mov	r5, r2
20028026:	b087      	sub	sp, #28
20028028:	9305      	str	r3, [sp, #20]
2002802a:	9b10      	ldr	r3, [sp, #64]	@ 0x40
2002802c:	4606      	mov	r6, r0
2002802e:	685a      	ldr	r2, [r3, #4]
20028030:	686b      	ldr	r3, [r5, #4]
20028032:	4689      	mov	r9, r1
20028034:	3301      	adds	r3, #1
20028036:	429a      	cmp	r2, r3
20028038:	d359      	bcc.n	200280ee <mpi_montmul+0xce>
2002803a:	9b10      	ldr	r3, [sp, #64]	@ 0x40
2002803c:	6898      	ldr	r0, [r3, #8]
2002803e:	2800      	cmp	r0, #0
20028040:	d055      	beq.n	200280ee <mpi_montmul+0xce>
20028042:	0092      	lsls	r2, r2, #2
20028044:	2100      	movs	r1, #0
20028046:	f002 fbb3 	bl	2002a7b0 <memset>
2002804a:	9b10      	ldr	r3, [sp, #64]	@ 0x40
2002804c:	f8d5 8004 	ldr.w	r8, [r5, #4]
20028050:	f8d3 a008 	ldr.w	sl, [r3, #8]
20028054:	f8d9 3004 	ldr.w	r3, [r9, #4]
20028058:	46d3      	mov	fp, sl
2002805a:	4543      	cmp	r3, r8
2002805c:	bf28      	it	cs
2002805e:	4643      	movcs	r3, r8
20028060:	2400      	movs	r4, #0
20028062:	9304      	str	r3, [sp, #16]
20028064:	f108 0301 	add.w	r3, r8, #1
20028068:	009a      	lsls	r2, r3, #2
2002806a:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
2002806e:	9202      	str	r2, [sp, #8]
20028070:	9303      	str	r3, [sp, #12]
20028072:	4544      	cmp	r4, r8
20028074:	68b0      	ldr	r0, [r6, #8]
20028076:	d118      	bne.n	200280aa <mpi_montmul+0x8a>
20028078:	9b02      	ldr	r3, [sp, #8]
2002807a:	1f19      	subs	r1, r3, #4
2002807c:	461a      	mov	r2, r3
2002807e:	4451      	add	r1, sl
20028080:	f002 fbb0 	bl	2002a7e4 <memcpy>
20028084:	4629      	mov	r1, r5
20028086:	4630      	mov	r0, r6
20028088:	f7ff ff96 	bl	20027fb8 <mbedtls_mpi_cmp_abs>
2002808c:	3001      	adds	r0, #1
2002808e:	68b1      	ldr	r1, [r6, #8]
20028090:	bf0c      	ite	eq
20028092:	9b10      	ldreq	r3, [sp, #64]	@ 0x40
20028094:	460a      	movne	r2, r1
20028096:	4620      	mov	r0, r4
20028098:	bf14      	ite	ne
2002809a:	68a9      	ldrne	r1, [r5, #8]
2002809c:	689a      	ldreq	r2, [r3, #8]
2002809e:	f7ff fc36 	bl	2002790e <mpi_sub_hlp>
200280a2:	2000      	movs	r0, #0
200280a4:	b007      	add	sp, #28
200280a6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200280aa:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
200280ae:	f8d9 1008 	ldr.w	r1, [r9, #8]
200280b2:	9301      	str	r3, [sp, #4]
200280b4:	9a01      	ldr	r2, [sp, #4]
200280b6:	680b      	ldr	r3, [r1, #0]
200280b8:	f8db 7000 	ldr.w	r7, [fp]
200280bc:	9804      	ldr	r0, [sp, #16]
200280be:	fb03 7702 	mla	r7, r3, r2, r7
200280c2:	9b05      	ldr	r3, [sp, #20]
200280c4:	3401      	adds	r4, #1
200280c6:	435f      	muls	r7, r3
200280c8:	4613      	mov	r3, r2
200280ca:	465a      	mov	r2, fp
200280cc:	f7ff fc48 	bl	20027960 <mpi_mul_hlp>
200280d0:	465a      	mov	r2, fp
200280d2:	463b      	mov	r3, r7
200280d4:	4640      	mov	r0, r8
200280d6:	68a9      	ldr	r1, [r5, #8]
200280d8:	f7ff fc42 	bl	20027960 <mpi_mul_hlp>
200280dc:	2200      	movs	r2, #0
200280de:	9b01      	ldr	r3, [sp, #4]
200280e0:	f84b 3b04 	str.w	r3, [fp], #4
200280e4:	9b03      	ldr	r3, [sp, #12]
200280e6:	f843 2f04 	str.w	r2, [r3, #4]!
200280ea:	9303      	str	r3, [sp, #12]
200280ec:	e7c1      	b.n	20028072 <mpi_montmul+0x52>
200280ee:	f06f 0003 	mvn.w	r0, #3
200280f2:	e7d7      	b.n	200280a4 <mpi_montmul+0x84>

200280f4 <mbedtls_mpi_cmp_mpi>:
200280f4:	4602      	mov	r2, r0
200280f6:	b530      	push	{r4, r5, lr}
200280f8:	6843      	ldr	r3, [r0, #4]
200280fa:	b923      	cbnz	r3, 20028106 <mbedtls_mpi_cmp_mpi+0x12>
200280fc:	6848      	ldr	r0, [r1, #4]
200280fe:	b958      	cbnz	r0, 20028118 <mbedtls_mpi_cmp_mpi+0x24>
20028100:	2b00      	cmp	r3, #0
20028102:	d136      	bne.n	20028172 <mbedtls_mpi_cmp_mpi+0x7e>
20028104:	e02f      	b.n	20028166 <mbedtls_mpi_cmp_mpi+0x72>
20028106:	6890      	ldr	r0, [r2, #8]
20028108:	eb00 0083 	add.w	r0, r0, r3, lsl #2
2002810c:	f850 0c04 	ldr.w	r0, [r0, #-4]
20028110:	2800      	cmp	r0, #0
20028112:	d1f3      	bne.n	200280fc <mbedtls_mpi_cmp_mpi+0x8>
20028114:	3b01      	subs	r3, #1
20028116:	e7f0      	b.n	200280fa <mbedtls_mpi_cmp_mpi+0x6>
20028118:	688c      	ldr	r4, [r1, #8]
2002811a:	eb04 0580 	add.w	r5, r4, r0, lsl #2
2002811e:	f855 5c04 	ldr.w	r5, [r5, #-4]
20028122:	bb15      	cbnz	r5, 2002816a <mbedtls_mpi_cmp_mpi+0x76>
20028124:	3801      	subs	r0, #1
20028126:	e7ea      	b.n	200280fe <mbedtls_mpi_cmp_mpi+0xa>
20028128:	680d      	ldr	r5, [r1, #0]
2002812a:	d202      	bcs.n	20028132 <mbedtls_mpi_cmp_mpi+0x3e>
2002812c:	6808      	ldr	r0, [r1, #0]
2002812e:	4240      	negs	r0, r0
20028130:	e020      	b.n	20028174 <mbedtls_mpi_cmp_mpi+0x80>
20028132:	6810      	ldr	r0, [r2, #0]
20028134:	2800      	cmp	r0, #0
20028136:	dd03      	ble.n	20028140 <mbedtls_mpi_cmp_mpi+0x4c>
20028138:	2d00      	cmp	r5, #0
2002813a:	da07      	bge.n	2002814c <mbedtls_mpi_cmp_mpi+0x58>
2002813c:	2001      	movs	r0, #1
2002813e:	e019      	b.n	20028174 <mbedtls_mpi_cmp_mpi+0x80>
20028140:	2d00      	cmp	r5, #0
20028142:	dd03      	ble.n	2002814c <mbedtls_mpi_cmp_mpi+0x58>
20028144:	b110      	cbz	r0, 2002814c <mbedtls_mpi_cmp_mpi+0x58>
20028146:	f04f 30ff 	mov.w	r0, #4294967295
2002814a:	e013      	b.n	20028174 <mbedtls_mpi_cmp_mpi+0x80>
2002814c:	3b01      	subs	r3, #1
2002814e:	6891      	ldr	r1, [r2, #8]
20028150:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
20028154:	f854 1023 	ldr.w	r1, [r4, r3, lsl #2]
20028158:	428d      	cmp	r5, r1
2002815a:	d80b      	bhi.n	20028174 <mbedtls_mpi_cmp_mpi+0x80>
2002815c:	f103 33ff 	add.w	r3, r3, #4294967295
20028160:	d3e5      	bcc.n	2002812e <mbedtls_mpi_cmp_mpi+0x3a>
20028162:	1c59      	adds	r1, r3, #1
20028164:	d1f3      	bne.n	2002814e <mbedtls_mpi_cmp_mpi+0x5a>
20028166:	2000      	movs	r0, #0
20028168:	e004      	b.n	20028174 <mbedtls_mpi_cmp_mpi+0x80>
2002816a:	2b00      	cmp	r3, #0
2002816c:	d0de      	beq.n	2002812c <mbedtls_mpi_cmp_mpi+0x38>
2002816e:	4283      	cmp	r3, r0
20028170:	d9da      	bls.n	20028128 <mbedtls_mpi_cmp_mpi+0x34>
20028172:	6810      	ldr	r0, [r2, #0]
20028174:	bd30      	pop	{r4, r5, pc}

20028176 <mbedtls_mpi_cmp_int>:
20028176:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028178:	ea81 73e1 	eor.w	r3, r1, r1, asr #31
2002817c:	eba3 73e1 	sub.w	r3, r3, r1, asr #31
20028180:	2900      	cmp	r1, #0
20028182:	9300      	str	r3, [sp, #0]
20028184:	bfac      	ite	ge
20028186:	2301      	movge	r3, #1
20028188:	f04f 33ff 	movlt.w	r3, #4294967295
2002818c:	9301      	str	r3, [sp, #4]
2002818e:	2301      	movs	r3, #1
20028190:	a901      	add	r1, sp, #4
20028192:	9302      	str	r3, [sp, #8]
20028194:	f8cd d00c 	str.w	sp, [sp, #12]
20028198:	f7ff ffac 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
2002819c:	b005      	add	sp, #20
2002819e:	f85d fb04 	ldr.w	pc, [sp], #4

200281a2 <mbedtls_mpi_add_abs>:
200281a2:	4290      	cmp	r0, r2
200281a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200281a8:	4606      	mov	r6, r0
200281aa:	460c      	mov	r4, r1
200281ac:	4615      	mov	r5, r2
200281ae:	d002      	beq.n	200281b6 <mbedtls_mpi_add_abs+0x14>
200281b0:	4288      	cmp	r0, r1
200281b2:	d12c      	bne.n	2002820e <mbedtls_mpi_add_abs+0x6c>
200281b4:	462c      	mov	r4, r5
200281b6:	2301      	movs	r3, #1
200281b8:	6865      	ldr	r5, [r4, #4]
200281ba:	6033      	str	r3, [r6, #0]
200281bc:	bb85      	cbnz	r5, 20028220 <mbedtls_mpi_add_abs+0x7e>
200281be:	4629      	mov	r1, r5
200281c0:	4630      	mov	r0, r6
200281c2:	f7ff fd65 	bl	20027c90 <mbedtls_mpi_grow>
200281c6:	4607      	mov	r7, r0
200281c8:	bb28      	cbnz	r0, 20028216 <mbedtls_mpi_add_abs+0x74>
200281ca:	68b3      	ldr	r3, [r6, #8]
200281cc:	68a1      	ldr	r1, [r4, #8]
200281ce:	469c      	mov	ip, r3
200281d0:	4604      	mov	r4, r0
200281d2:	42a8      	cmp	r0, r5
200281d4:	d12d      	bne.n	20028232 <mbedtls_mpi_add_abs+0x90>
200281d6:	eb03 0385 	add.w	r3, r3, r5, lsl #2
200281da:	b1f4      	cbz	r4, 2002821a <mbedtls_mpi_add_abs+0x78>
200281dc:	6872      	ldr	r2, [r6, #4]
200281de:	f105 0801 	add.w	r8, r5, #1
200281e2:	42aa      	cmp	r2, r5
200281e4:	d807      	bhi.n	200281f6 <mbedtls_mpi_add_abs+0x54>
200281e6:	4641      	mov	r1, r8
200281e8:	4630      	mov	r0, r6
200281ea:	f7ff fd51 	bl	20027c90 <mbedtls_mpi_grow>
200281ee:	b990      	cbnz	r0, 20028216 <mbedtls_mpi_add_abs+0x74>
200281f0:	68b3      	ldr	r3, [r6, #8]
200281f2:	eb03 0385 	add.w	r3, r3, r5, lsl #2
200281f6:	681a      	ldr	r2, [r3, #0]
200281f8:	4645      	mov	r5, r8
200281fa:	1912      	adds	r2, r2, r4
200281fc:	bf2c      	ite	cs
200281fe:	2401      	movcs	r4, #1
20028200:	2400      	movcc	r4, #0
20028202:	3c00      	subs	r4, #0
20028204:	bf18      	it	ne
20028206:	2401      	movne	r4, #1
20028208:	f843 2b04 	str.w	r2, [r3], #4
2002820c:	e7e5      	b.n	200281da <mbedtls_mpi_add_abs+0x38>
2002820e:	f7ff fd6f 	bl	20027cf0 <mbedtls_mpi_copy>
20028212:	2800      	cmp	r0, #0
20028214:	d0ce      	beq.n	200281b4 <mbedtls_mpi_add_abs+0x12>
20028216:	f06f 070f 	mvn.w	r7, #15
2002821a:	4638      	mov	r0, r7
2002821c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20028220:	68a3      	ldr	r3, [r4, #8]
20028222:	eb03 0385 	add.w	r3, r3, r5, lsl #2
20028226:	f853 3c04 	ldr.w	r3, [r3, #-4]
2002822a:	2b00      	cmp	r3, #0
2002822c:	d1c7      	bne.n	200281be <mbedtls_mpi_add_abs+0x1c>
2002822e:	3d01      	subs	r5, #1
20028230:	e7c4      	b.n	200281bc <mbedtls_mpi_add_abs+0x1a>
20028232:	f8dc 2000 	ldr.w	r2, [ip]
20028236:	1912      	adds	r2, r2, r4
20028238:	bf2c      	ite	cs
2002823a:	f04f 0e01 	movcs.w	lr, #1
2002823e:	f04f 0e00 	movcc.w	lr, #0
20028242:	f851 4020 	ldr.w	r4, [r1, r0, lsl #2]
20028246:	3001      	adds	r0, #1
20028248:	1912      	adds	r2, r2, r4
2002824a:	f84c 2b04 	str.w	r2, [ip], #4
2002824e:	f14e 0400 	adc.w	r4, lr, #0
20028252:	e7be      	b.n	200281d2 <mbedtls_mpi_add_abs+0x30>

20028254 <mbedtls_mpi_sub_abs>:
20028254:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20028256:	460e      	mov	r6, r1
20028258:	4605      	mov	r5, r0
2002825a:	4611      	mov	r1, r2
2002825c:	4630      	mov	r0, r6
2002825e:	4614      	mov	r4, r2
20028260:	f7ff feaa 	bl	20027fb8 <mbedtls_mpi_cmp_abs>
20028264:	3001      	adds	r0, #1
20028266:	d02f      	beq.n	200282c8 <mbedtls_mpi_sub_abs+0x74>
20028268:	2300      	movs	r3, #0
2002826a:	2201      	movs	r2, #1
2002826c:	42ac      	cmp	r4, r5
2002826e:	e9cd 2301 	strd	r2, r3, [sp, #4]
20028272:	9303      	str	r3, [sp, #12]
20028274:	d10d      	bne.n	20028292 <mbedtls_mpi_sub_abs+0x3e>
20028276:	4621      	mov	r1, r4
20028278:	a801      	add	r0, sp, #4
2002827a:	f7ff fd39 	bl	20027cf0 <mbedtls_mpi_copy>
2002827e:	b138      	cbz	r0, 20028290 <mbedtls_mpi_sub_abs+0x3c>
20028280:	f06f 040f 	mvn.w	r4, #15
20028284:	a801      	add	r0, sp, #4
20028286:	f7ff fcee 	bl	20027c66 <mbedtls_mpi_free>
2002828a:	4620      	mov	r0, r4
2002828c:	b004      	add	sp, #16
2002828e:	bd70      	pop	{r4, r5, r6, pc}
20028290:	ac01      	add	r4, sp, #4
20028292:	42ae      	cmp	r6, r5
20028294:	d109      	bne.n	200282aa <mbedtls_mpi_sub_abs+0x56>
20028296:	e9d4 0101 	ldrd	r0, r1, [r4, #4]
2002829a:	2301      	movs	r3, #1
2002829c:	602b      	str	r3, [r5, #0]
2002829e:	b958      	cbnz	r0, 200282b8 <mbedtls_mpi_sub_abs+0x64>
200282a0:	68aa      	ldr	r2, [r5, #8]
200282a2:	f7ff fb34 	bl	2002790e <mpi_sub_hlp>
200282a6:	2400      	movs	r4, #0
200282a8:	e7ec      	b.n	20028284 <mbedtls_mpi_sub_abs+0x30>
200282aa:	4631      	mov	r1, r6
200282ac:	4628      	mov	r0, r5
200282ae:	f7ff fd1f 	bl	20027cf0 <mbedtls_mpi_copy>
200282b2:	2800      	cmp	r0, #0
200282b4:	d0ef      	beq.n	20028296 <mbedtls_mpi_sub_abs+0x42>
200282b6:	e7e3      	b.n	20028280 <mbedtls_mpi_sub_abs+0x2c>
200282b8:	eb01 0380 	add.w	r3, r1, r0, lsl #2
200282bc:	f853 3c04 	ldr.w	r3, [r3, #-4]
200282c0:	2b00      	cmp	r3, #0
200282c2:	d1ed      	bne.n	200282a0 <mbedtls_mpi_sub_abs+0x4c>
200282c4:	3801      	subs	r0, #1
200282c6:	e7ea      	b.n	2002829e <mbedtls_mpi_sub_abs+0x4a>
200282c8:	f06f 0409 	mvn.w	r4, #9
200282cc:	e7dd      	b.n	2002828a <mbedtls_mpi_sub_abs+0x36>

200282ce <mbedtls_mpi_add_mpi>:
200282ce:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200282d0:	680d      	ldr	r5, [r1, #0]
200282d2:	6813      	ldr	r3, [r2, #0]
200282d4:	4604      	mov	r4, r0
200282d6:	436b      	muls	r3, r5
200282d8:	460f      	mov	r7, r1
200282da:	4616      	mov	r6, r2
200282dc:	d516      	bpl.n	2002830c <mbedtls_mpi_add_mpi+0x3e>
200282de:	4611      	mov	r1, r2
200282e0:	4638      	mov	r0, r7
200282e2:	f7ff fe69 	bl	20027fb8 <mbedtls_mpi_cmp_abs>
200282e6:	3001      	adds	r0, #1
200282e8:	d007      	beq.n	200282fa <mbedtls_mpi_add_mpi+0x2c>
200282ea:	4632      	mov	r2, r6
200282ec:	4639      	mov	r1, r7
200282ee:	4620      	mov	r0, r4
200282f0:	f7ff ffb0 	bl	20028254 <mbedtls_mpi_sub_abs>
200282f4:	b900      	cbnz	r0, 200282f8 <mbedtls_mpi_add_mpi+0x2a>
200282f6:	6025      	str	r5, [r4, #0]
200282f8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200282fa:	463a      	mov	r2, r7
200282fc:	4631      	mov	r1, r6
200282fe:	4620      	mov	r0, r4
20028300:	f7ff ffa8 	bl	20028254 <mbedtls_mpi_sub_abs>
20028304:	2800      	cmp	r0, #0
20028306:	d1f7      	bne.n	200282f8 <mbedtls_mpi_add_mpi+0x2a>
20028308:	426d      	negs	r5, r5
2002830a:	e7f4      	b.n	200282f6 <mbedtls_mpi_add_mpi+0x28>
2002830c:	f7ff ff49 	bl	200281a2 <mbedtls_mpi_add_abs>
20028310:	2800      	cmp	r0, #0
20028312:	d0f0      	beq.n	200282f6 <mbedtls_mpi_add_mpi+0x28>
20028314:	f06f 000f 	mvn.w	r0, #15
20028318:	e7ee      	b.n	200282f8 <mbedtls_mpi_add_mpi+0x2a>

2002831a <mbedtls_mpi_sub_mpi>:
2002831a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002831c:	680d      	ldr	r5, [r1, #0]
2002831e:	6813      	ldr	r3, [r2, #0]
20028320:	4604      	mov	r4, r0
20028322:	436b      	muls	r3, r5
20028324:	2b00      	cmp	r3, #0
20028326:	460f      	mov	r7, r1
20028328:	4616      	mov	r6, r2
2002832a:	dd16      	ble.n	2002835a <mbedtls_mpi_sub_mpi+0x40>
2002832c:	4611      	mov	r1, r2
2002832e:	4638      	mov	r0, r7
20028330:	f7ff fe42 	bl	20027fb8 <mbedtls_mpi_cmp_abs>
20028334:	3001      	adds	r0, #1
20028336:	d007      	beq.n	20028348 <mbedtls_mpi_sub_mpi+0x2e>
20028338:	4632      	mov	r2, r6
2002833a:	4639      	mov	r1, r7
2002833c:	4620      	mov	r0, r4
2002833e:	f7ff ff89 	bl	20028254 <mbedtls_mpi_sub_abs>
20028342:	b900      	cbnz	r0, 20028346 <mbedtls_mpi_sub_mpi+0x2c>
20028344:	6025      	str	r5, [r4, #0]
20028346:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20028348:	463a      	mov	r2, r7
2002834a:	4631      	mov	r1, r6
2002834c:	4620      	mov	r0, r4
2002834e:	f7ff ff81 	bl	20028254 <mbedtls_mpi_sub_abs>
20028352:	2800      	cmp	r0, #0
20028354:	d1f7      	bne.n	20028346 <mbedtls_mpi_sub_mpi+0x2c>
20028356:	426d      	negs	r5, r5
20028358:	e7f4      	b.n	20028344 <mbedtls_mpi_sub_mpi+0x2a>
2002835a:	f7ff ff22 	bl	200281a2 <mbedtls_mpi_add_abs>
2002835e:	2800      	cmp	r0, #0
20028360:	d0f0      	beq.n	20028344 <mbedtls_mpi_sub_mpi+0x2a>
20028362:	f06f 000f 	mvn.w	r0, #15
20028366:	e7ee      	b.n	20028346 <mbedtls_mpi_sub_mpi+0x2c>

20028368 <mbedtls_mpi_sub_int>:
20028368:	b51f      	push	{r0, r1, r2, r3, r4, lr}
2002836a:	ea82 73e2 	eor.w	r3, r2, r2, asr #31
2002836e:	eba3 73e2 	sub.w	r3, r3, r2, asr #31
20028372:	2a00      	cmp	r2, #0
20028374:	9300      	str	r3, [sp, #0]
20028376:	bfac      	ite	ge
20028378:	2301      	movge	r3, #1
2002837a:	f04f 33ff 	movlt.w	r3, #4294967295
2002837e:	9301      	str	r3, [sp, #4]
20028380:	2301      	movs	r3, #1
20028382:	aa01      	add	r2, sp, #4
20028384:	9302      	str	r3, [sp, #8]
20028386:	f8cd d00c 	str.w	sp, [sp, #12]
2002838a:	f7ff ffc6 	bl	2002831a <mbedtls_mpi_sub_mpi>
2002838e:	b005      	add	sp, #20
20028390:	f85d fb04 	ldr.w	pc, [sp], #4

20028394 <mbedtls_mpi_mul_mpi>:
20028394:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20028398:	2300      	movs	r3, #0
2002839a:	4615      	mov	r5, r2
2002839c:	2201      	movs	r2, #1
2002839e:	b087      	sub	sp, #28
200283a0:	4288      	cmp	r0, r1
200283a2:	4607      	mov	r7, r0
200283a4:	460e      	mov	r6, r1
200283a6:	e9cd 2300 	strd	r2, r3, [sp]
200283aa:	e9cd 3202 	strd	r3, r2, [sp, #8]
200283ae:	e9cd 3304 	strd	r3, r3, [sp, #16]
200283b2:	d110      	bne.n	200283d6 <mbedtls_mpi_mul_mpi+0x42>
200283b4:	4668      	mov	r0, sp
200283b6:	f7ff fc9b 	bl	20027cf0 <mbedtls_mpi_copy>
200283ba:	b158      	cbz	r0, 200283d4 <mbedtls_mpi_mul_mpi+0x40>
200283bc:	f06f 090f 	mvn.w	r9, #15
200283c0:	a803      	add	r0, sp, #12
200283c2:	f7ff fc50 	bl	20027c66 <mbedtls_mpi_free>
200283c6:	4668      	mov	r0, sp
200283c8:	f7ff fc4d 	bl	20027c66 <mbedtls_mpi_free>
200283cc:	4648      	mov	r0, r9
200283ce:	b007      	add	sp, #28
200283d0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
200283d4:	466e      	mov	r6, sp
200283d6:	42af      	cmp	r7, r5
200283d8:	d106      	bne.n	200283e8 <mbedtls_mpi_mul_mpi+0x54>
200283da:	4639      	mov	r1, r7
200283dc:	a803      	add	r0, sp, #12
200283de:	f7ff fc87 	bl	20027cf0 <mbedtls_mpi_copy>
200283e2:	2800      	cmp	r0, #0
200283e4:	d1ea      	bne.n	200283bc <mbedtls_mpi_mul_mpi+0x28>
200283e6:	ad03      	add	r5, sp, #12
200283e8:	f8d6 8004 	ldr.w	r8, [r6, #4]
200283ec:	f1b8 0f00 	cmp.w	r8, #0
200283f0:	d116      	bne.n	20028420 <mbedtls_mpi_mul_mpi+0x8c>
200283f2:	686c      	ldr	r4, [r5, #4]
200283f4:	b9f4      	cbnz	r4, 20028434 <mbedtls_mpi_mul_mpi+0xa0>
200283f6:	eb08 0104 	add.w	r1, r8, r4
200283fa:	4638      	mov	r0, r7
200283fc:	f7ff fc48 	bl	20027c90 <mbedtls_mpi_grow>
20028400:	4601      	mov	r1, r0
20028402:	2800      	cmp	r0, #0
20028404:	d1da      	bne.n	200283bc <mbedtls_mpi_mul_mpi+0x28>
20028406:	4638      	mov	r0, r7
20028408:	f7ff fc9b 	bl	20027d42 <mbedtls_mpi_lset>
2002840c:	4681      	mov	r9, r0
2002840e:	2800      	cmp	r0, #0
20028410:	d1d4      	bne.n	200283bc <mbedtls_mpi_mul_mpi+0x28>
20028412:	3c01      	subs	r4, #1
20028414:	d217      	bcs.n	20028446 <mbedtls_mpi_mul_mpi+0xb2>
20028416:	6833      	ldr	r3, [r6, #0]
20028418:	682a      	ldr	r2, [r5, #0]
2002841a:	4353      	muls	r3, r2
2002841c:	603b      	str	r3, [r7, #0]
2002841e:	e7cf      	b.n	200283c0 <mbedtls_mpi_mul_mpi+0x2c>
20028420:	68b3      	ldr	r3, [r6, #8]
20028422:	eb03 0388 	add.w	r3, r3, r8, lsl #2
20028426:	f853 3c04 	ldr.w	r3, [r3, #-4]
2002842a:	2b00      	cmp	r3, #0
2002842c:	d1e1      	bne.n	200283f2 <mbedtls_mpi_mul_mpi+0x5e>
2002842e:	f108 38ff 	add.w	r8, r8, #4294967295
20028432:	e7db      	b.n	200283ec <mbedtls_mpi_mul_mpi+0x58>
20028434:	68ab      	ldr	r3, [r5, #8]
20028436:	eb03 0384 	add.w	r3, r3, r4, lsl #2
2002843a:	f853 3c04 	ldr.w	r3, [r3, #-4]
2002843e:	2b00      	cmp	r3, #0
20028440:	d1d9      	bne.n	200283f6 <mbedtls_mpi_mul_mpi+0x62>
20028442:	3c01      	subs	r4, #1
20028444:	e7d6      	b.n	200283f4 <mbedtls_mpi_mul_mpi+0x60>
20028446:	68ab      	ldr	r3, [r5, #8]
20028448:	68ba      	ldr	r2, [r7, #8]
2002844a:	4640      	mov	r0, r8
2002844c:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
20028450:	68b1      	ldr	r1, [r6, #8]
20028452:	eb02 0284 	add.w	r2, r2, r4, lsl #2
20028456:	f7ff fa83 	bl	20027960 <mpi_mul_hlp>
2002845a:	e7da      	b.n	20028412 <mbedtls_mpi_mul_mpi+0x7e>

2002845c <mbedtls_mpi_mul_int>:
2002845c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
2002845e:	2301      	movs	r3, #1
20028460:	9200      	str	r2, [sp, #0]
20028462:	aa01      	add	r2, sp, #4
20028464:	e9cd 3301 	strd	r3, r3, [sp, #4]
20028468:	f8cd d00c 	str.w	sp, [sp, #12]
2002846c:	f7ff ff92 	bl	20028394 <mbedtls_mpi_mul_mpi>
20028470:	b005      	add	sp, #20
20028472:	f85d fb04 	ldr.w	pc, [sp], #4

20028476 <mbedtls_mpi_div_mpi>:
20028476:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002847a:	b09f      	sub	sp, #124	@ 0x7c
2002847c:	e9cd 1203 	strd	r1, r2, [sp, #12]
20028480:	9005      	str	r0, [sp, #20]
20028482:	2100      	movs	r1, #0
20028484:	4618      	mov	r0, r3
20028486:	9309      	str	r3, [sp, #36]	@ 0x24
20028488:	f7ff fe75 	bl	20028176 <mbedtls_mpi_cmp_int>
2002848c:	2800      	cmp	r0, #0
2002848e:	f000 81f3 	beq.w	20028878 <mbedtls_mpi_div_mpi+0x402>
20028492:	2501      	movs	r5, #1
20028494:	2400      	movs	r4, #0
20028496:	9909      	ldr	r1, [sp, #36]	@ 0x24
20028498:	9804      	ldr	r0, [sp, #16]
2002849a:	e9cd 5418 	strd	r5, r4, [sp, #96]	@ 0x60
2002849e:	e9cd 541b 	strd	r5, r4, [sp, #108]	@ 0x6c
200284a2:	950f      	str	r5, [sp, #60]	@ 0x3c
200284a4:	9512      	str	r5, [sp, #72]	@ 0x48
200284a6:	9515      	str	r5, [sp, #84]	@ 0x54
200284a8:	9416      	str	r4, [sp, #88]	@ 0x58
200284aa:	f7ff fd85 	bl	20027fb8 <mbedtls_mpi_cmp_abs>
200284ae:	3001      	adds	r0, #1
200284b0:	d11f      	bne.n	200284f2 <mbedtls_mpi_div_mpi+0x7c>
200284b2:	9b05      	ldr	r3, [sp, #20]
200284b4:	b933      	cbnz	r3, 200284c4 <mbedtls_mpi_div_mpi+0x4e>
200284b6:	9b03      	ldr	r3, [sp, #12]
200284b8:	b9a3      	cbnz	r3, 200284e4 <mbedtls_mpi_div_mpi+0x6e>
200284ba:	2100      	movs	r1, #0
200284bc:	4608      	mov	r0, r1
200284be:	b01f      	add	sp, #124	@ 0x7c
200284c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200284c4:	4621      	mov	r1, r4
200284c6:	9805      	ldr	r0, [sp, #20]
200284c8:	f7ff fc3b 	bl	20027d42 <mbedtls_mpi_lset>
200284cc:	2800      	cmp	r0, #0
200284ce:	d0f2      	beq.n	200284b6 <mbedtls_mpi_div_mpi+0x40>
200284d0:	2400      	movs	r4, #0
200284d2:	4625      	mov	r5, r4
200284d4:	46a1      	mov	r9, r4
200284d6:	46a0      	mov	r8, r4
200284d8:	4626      	mov	r6, r4
200284da:	4627      	mov	r7, r4
200284dc:	9402      	str	r4, [sp, #8]
200284de:	f06f 010f 	mvn.w	r1, #15
200284e2:	e0ef      	b.n	200286c4 <mbedtls_mpi_div_mpi+0x24e>
200284e4:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
200284e8:	f7ff fc02 	bl	20027cf0 <mbedtls_mpi_copy>
200284ec:	2800      	cmp	r0, #0
200284ee:	d1ef      	bne.n	200284d0 <mbedtls_mpi_div_mpi+0x5a>
200284f0:	e7e3      	b.n	200284ba <mbedtls_mpi_div_mpi+0x44>
200284f2:	9904      	ldr	r1, [sp, #16]
200284f4:	a80f      	add	r0, sp, #60	@ 0x3c
200284f6:	e9cd 4410 	strd	r4, r4, [sp, #64]	@ 0x40
200284fa:	f7ff fbf9 	bl	20027cf0 <mbedtls_mpi_copy>
200284fe:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028502:	4682      	mov	sl, r0
20028504:	2800      	cmp	r0, #0
20028506:	f040 81a9 	bne.w	2002885c <mbedtls_mpi_div_mpi+0x3e6>
2002850a:	e9cd 0013 	strd	r0, r0, [sp, #76]	@ 0x4c
2002850e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20028510:	a812      	add	r0, sp, #72	@ 0x48
20028512:	f7ff fbed 	bl	20027cf0 <mbedtls_mpi_copy>
20028516:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
2002851a:	4604      	mov	r4, r0
2002851c:	2800      	cmp	r0, #0
2002851e:	f040 81a2 	bne.w	20028866 <mbedtls_mpi_div_mpi+0x3f0>
20028522:	9b04      	ldr	r3, [sp, #16]
20028524:	9017      	str	r0, [sp, #92]	@ 0x5c
20028526:	6859      	ldr	r1, [r3, #4]
20028528:	a815      	add	r0, sp, #84	@ 0x54
2002852a:	3102      	adds	r1, #2
2002852c:	9512      	str	r5, [sp, #72]	@ 0x48
2002852e:	950f      	str	r5, [sp, #60]	@ 0x3c
20028530:	f7ff fbae 	bl	20027c90 <mbedtls_mpi_grow>
20028534:	4605      	mov	r5, r0
20028536:	b118      	cbz	r0, 20028540 <mbedtls_mpi_div_mpi+0xca>
20028538:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
2002853a:	9302      	str	r3, [sp, #8]
2002853c:	4625      	mov	r5, r4
2002853e:	e7ce      	b.n	200284de <mbedtls_mpi_div_mpi+0x68>
20028540:	4601      	mov	r1, r0
20028542:	a815      	add	r0, sp, #84	@ 0x54
20028544:	f7ff fbfd 	bl	20027d42 <mbedtls_mpi_lset>
20028548:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
2002854a:	4604      	mov	r4, r0
2002854c:	9302      	str	r3, [sp, #8]
2002854e:	2800      	cmp	r0, #0
20028550:	f040 818e 	bne.w	20028870 <mbedtls_mpi_div_mpi+0x3fa>
20028554:	901a      	str	r0, [sp, #104]	@ 0x68
20028556:	2102      	movs	r1, #2
20028558:	a818      	add	r0, sp, #96	@ 0x60
2002855a:	f7ff fb99 	bl	20027c90 <mbedtls_mpi_grow>
2002855e:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028560:	2800      	cmp	r0, #0
20028562:	d1bc      	bne.n	200284de <mbedtls_mpi_div_mpi+0x68>
20028564:	901d      	str	r0, [sp, #116]	@ 0x74
20028566:	2103      	movs	r1, #3
20028568:	a81b      	add	r0, sp, #108	@ 0x6c
2002856a:	f7ff fb91 	bl	20027c90 <mbedtls_mpi_grow>
2002856e:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
20028570:	4683      	mov	fp, r0
20028572:	2800      	cmp	r0, #0
20028574:	d1b3      	bne.n	200284de <mbedtls_mpi_div_mpi+0x68>
20028576:	a812      	add	r0, sp, #72	@ 0x48
20028578:	f7ff fc17 	bl	20027daa <mbedtls_mpi_bitlen>
2002857c:	f000 001f 	and.w	r0, r0, #31
20028580:	281f      	cmp	r0, #31
20028582:	f000 808a 	beq.w	2002869a <mbedtls_mpi_div_mpi+0x224>
20028586:	f1c0 031f 	rsb	r3, r0, #31
2002858a:	4619      	mov	r1, r3
2002858c:	a80f      	add	r0, sp, #60	@ 0x3c
2002858e:	9306      	str	r3, [sp, #24]
20028590:	f7ff fc86 	bl	20027ea0 <mbedtls_mpi_shift_l>
20028594:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028598:	2800      	cmp	r0, #0
2002859a:	d1a0      	bne.n	200284de <mbedtls_mpi_div_mpi+0x68>
2002859c:	9906      	ldr	r1, [sp, #24]
2002859e:	a812      	add	r0, sp, #72	@ 0x48
200285a0:	f7ff fc7e 	bl	20027ea0 <mbedtls_mpi_shift_l>
200285a4:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200285a8:	2800      	cmp	r0, #0
200285aa:	d198      	bne.n	200284de <mbedtls_mpi_div_mpi+0x68>
200285ac:	46ba      	mov	sl, r7
200285ae:	f8cd 8020 	str.w	r8, [sp, #32]
200285b2:	eba7 0b08 	sub.w	fp, r7, r8
200285b6:	ea4f 134b 	mov.w	r3, fp, lsl #5
200285ba:	4619      	mov	r1, r3
200285bc:	a812      	add	r0, sp, #72	@ 0x48
200285be:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200285c2:	9301      	str	r3, [sp, #4]
200285c4:	f7ff fc6c 	bl	20027ea0 <mbedtls_mpi_shift_l>
200285c8:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200285cc:	2800      	cmp	r0, #0
200285ce:	d186      	bne.n	200284de <mbedtls_mpi_div_mpi+0x68>
200285d0:	ea4f 038b 	mov.w	r3, fp, lsl #2
200285d4:	930b      	str	r3, [sp, #44]	@ 0x2c
200285d6:	9b02      	ldr	r3, [sp, #8]
200285d8:	eb03 0b8b 	add.w	fp, r3, fp, lsl #2
200285dc:	a912      	add	r1, sp, #72	@ 0x48
200285de:	a80f      	add	r0, sp, #60	@ 0x3c
200285e0:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
200285e4:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200285e8:	f7ff fd84 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
200285ec:	2800      	cmp	r0, #0
200285ee:	da5a      	bge.n	200286a6 <mbedtls_mpi_div_mpi+0x230>
200285f0:	9901      	ldr	r1, [sp, #4]
200285f2:	a812      	add	r0, sp, #72	@ 0x48
200285f4:	f7ff fca6 	bl	20027f44 <mbedtls_mpi_shift_r>
200285f8:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200285fc:	2800      	cmp	r0, #0
200285fe:	f47f af6e 	bne.w	200284de <mbedtls_mpi_div_mpi+0x68>
20028602:	f10a 33ff 	add.w	r3, sl, #4294967295
20028606:	9301      	str	r3, [sp, #4]
20028608:	9b08      	ldr	r3, [sp, #32]
2002860a:	9a02      	ldr	r2, [sp, #8]
2002860c:	3b01      	subs	r3, #1
2002860e:	9307      	str	r3, [sp, #28]
20028610:	eb09 0383 	add.w	r3, r9, r3, lsl #2
20028614:	930a      	str	r3, [sp, #40]	@ 0x28
20028616:	9b08      	ldr	r3, [sp, #32]
20028618:	f103 4380 	add.w	r3, r3, #1073741824	@ 0x40000000
2002861c:	3b02      	subs	r3, #2
2002861e:	eb09 0383 	add.w	r3, r9, r3, lsl #2
20028622:	930c      	str	r3, [sp, #48]	@ 0x30
20028624:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
20028626:	4413      	add	r3, r2
20028628:	469a      	mov	sl, r3
2002862a:	9b01      	ldr	r3, [sp, #4]
2002862c:	9a07      	ldr	r2, [sp, #28]
2002862e:	4293      	cmp	r3, r2
20028630:	d862      	bhi.n	200286f8 <mbedtls_mpi_div_mpi+0x282>
20028632:	9b05      	ldr	r3, [sp, #20]
20028634:	b16b      	cbz	r3, 20028652 <mbedtls_mpi_div_mpi+0x1dc>
20028636:	4618      	mov	r0, r3
20028638:	a915      	add	r1, sp, #84	@ 0x54
2002863a:	f7ff fb59 	bl	20027cf0 <mbedtls_mpi_copy>
2002863e:	2800      	cmp	r0, #0
20028640:	f47f af4d 	bne.w	200284de <mbedtls_mpi_div_mpi+0x68>
20028644:	9b04      	ldr	r3, [sp, #16]
20028646:	9a09      	ldr	r2, [sp, #36]	@ 0x24
20028648:	681b      	ldr	r3, [r3, #0]
2002864a:	6812      	ldr	r2, [r2, #0]
2002864c:	4353      	muls	r3, r2
2002864e:	9a05      	ldr	r2, [sp, #20]
20028650:	6013      	str	r3, [r2, #0]
20028652:	9b03      	ldr	r3, [sp, #12]
20028654:	2b00      	cmp	r3, #0
20028656:	f000 810d 	beq.w	20028874 <mbedtls_mpi_div_mpi+0x3fe>
2002865a:	9906      	ldr	r1, [sp, #24]
2002865c:	a80f      	add	r0, sp, #60	@ 0x3c
2002865e:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
20028662:	f7ff fc6f 	bl	20027f44 <mbedtls_mpi_shift_r>
20028666:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
2002866a:	2800      	cmp	r0, #0
2002866c:	f47f af37 	bne.w	200284de <mbedtls_mpi_div_mpi+0x68>
20028670:	9b04      	ldr	r3, [sp, #16]
20028672:	a90f      	add	r1, sp, #60	@ 0x3c
20028674:	681b      	ldr	r3, [r3, #0]
20028676:	9803      	ldr	r0, [sp, #12]
20028678:	930f      	str	r3, [sp, #60]	@ 0x3c
2002867a:	f7ff fb39 	bl	20027cf0 <mbedtls_mpi_copy>
2002867e:	4601      	mov	r1, r0
20028680:	2800      	cmp	r0, #0
20028682:	f47f af2c 	bne.w	200284de <mbedtls_mpi_div_mpi+0x68>
20028686:	9001      	str	r0, [sp, #4]
20028688:	9803      	ldr	r0, [sp, #12]
2002868a:	f7ff fd74 	bl	20028176 <mbedtls_mpi_cmp_int>
2002868e:	9901      	ldr	r1, [sp, #4]
20028690:	b9c0      	cbnz	r0, 200286c4 <mbedtls_mpi_div_mpi+0x24e>
20028692:	2301      	movs	r3, #1
20028694:	9a03      	ldr	r2, [sp, #12]
20028696:	6013      	str	r3, [r2, #0]
20028698:	e014      	b.n	200286c4 <mbedtls_mpi_div_mpi+0x24e>
2002869a:	46ba      	mov	sl, r7
2002869c:	f8cd 8020 	str.w	r8, [sp, #32]
200286a0:	f8cd b018 	str.w	fp, [sp, #24]
200286a4:	e785      	b.n	200285b2 <mbedtls_mpi_div_mpi+0x13c>
200286a6:	f8db 2000 	ldr.w	r2, [fp]
200286aa:	a90f      	add	r1, sp, #60	@ 0x3c
200286ac:	3201      	adds	r2, #1
200286ae:	4608      	mov	r0, r1
200286b0:	f8cb 2000 	str.w	r2, [fp]
200286b4:	aa12      	add	r2, sp, #72	@ 0x48
200286b6:	f7ff fe30 	bl	2002831a <mbedtls_mpi_sub_mpi>
200286ba:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
200286be:	4601      	mov	r1, r0
200286c0:	2800      	cmp	r0, #0
200286c2:	d08b      	beq.n	200285dc <mbedtls_mpi_div_mpi+0x166>
200286c4:	a80f      	add	r0, sp, #60	@ 0x3c
200286c6:	9101      	str	r1, [sp, #4]
200286c8:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
200286cc:	f7ff facb 	bl	20027c66 <mbedtls_mpi_free>
200286d0:	a812      	add	r0, sp, #72	@ 0x48
200286d2:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200286d6:	f7ff fac6 	bl	20027c66 <mbedtls_mpi_free>
200286da:	9b02      	ldr	r3, [sp, #8]
200286dc:	a815      	add	r0, sp, #84	@ 0x54
200286de:	9317      	str	r3, [sp, #92]	@ 0x5c
200286e0:	f7ff fac1 	bl	20027c66 <mbedtls_mpi_free>
200286e4:	a818      	add	r0, sp, #96	@ 0x60
200286e6:	951a      	str	r5, [sp, #104]	@ 0x68
200286e8:	f7ff fabd 	bl	20027c66 <mbedtls_mpi_free>
200286ec:	a81b      	add	r0, sp, #108	@ 0x6c
200286ee:	941d      	str	r4, [sp, #116]	@ 0x74
200286f0:	f7ff fab9 	bl	20027c66 <mbedtls_mpi_free>
200286f4:	9901      	ldr	r1, [sp, #4]
200286f6:	e6e1      	b.n	200284bc <mbedtls_mpi_div_mpi+0x46>
200286f8:	9b01      	ldr	r3, [sp, #4]
200286fa:	ea4f 0b83 	mov.w	fp, r3, lsl #2
200286fe:	eb06 0383 	add.w	r3, r6, r3, lsl #2
20028702:	930b      	str	r3, [sp, #44]	@ 0x2c
20028704:	9b01      	ldr	r3, [sp, #4]
20028706:	f1ab 0004 	sub.w	r0, fp, #4
2002870a:	f856 1023 	ldr.w	r1, [r6, r3, lsl #2]
2002870e:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
20028710:	681a      	ldr	r2, [r3, #0]
20028712:	1833      	adds	r3, r6, r0
20028714:	4291      	cmp	r1, r2
20028716:	930d      	str	r3, [sp, #52]	@ 0x34
20028718:	d255      	bcs.n	200287c6 <mbedtls_mpi_div_mpi+0x350>
2002871a:	2300      	movs	r3, #0
2002871c:	5830      	ldr	r0, [r6, r0]
2002871e:	f001 fda5 	bl	2002a26c <__aeabi_uldivmod>
20028722:	2900      	cmp	r1, #0
20028724:	bf14      	ite	ne
20028726:	f04f 33ff 	movne.w	r3, #4294967295
2002872a:	4603      	moveq	r3, r0
2002872c:	3301      	adds	r3, #1
2002872e:	f1ab 0b08 	sub.w	fp, fp, #8
20028732:	f84a 3c04 	str.w	r3, [sl, #-4]
20028736:	44b3      	add	fp, r6
20028738:	f85a 3c04 	ldr.w	r3, [sl, #-4]
2002873c:	2100      	movs	r1, #0
2002873e:	3b01      	subs	r3, #1
20028740:	f84a 3c04 	str.w	r3, [sl, #-4]
20028744:	a818      	add	r0, sp, #96	@ 0x60
20028746:	951a      	str	r5, [sp, #104]	@ 0x68
20028748:	f7ff fafb 	bl	20027d42 <mbedtls_mpi_lset>
2002874c:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002874e:	2800      	cmp	r0, #0
20028750:	f47f aec5 	bne.w	200284de <mbedtls_mpi_div_mpi+0x68>
20028754:	9b07      	ldr	r3, [sp, #28]
20028756:	2b00      	cmp	r3, #0
20028758:	d038      	beq.n	200287cc <mbedtls_mpi_div_mpi+0x356>
2002875a:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
2002875c:	681b      	ldr	r3, [r3, #0]
2002875e:	602b      	str	r3, [r5, #0]
20028760:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
20028762:	a918      	add	r1, sp, #96	@ 0x60
20028764:	681b      	ldr	r3, [r3, #0]
20028766:	4608      	mov	r0, r1
20028768:	606b      	str	r3, [r5, #4]
2002876a:	f85a 2c04 	ldr.w	r2, [sl, #-4]
2002876e:	f7ff fe75 	bl	2002845c <mbedtls_mpi_mul_int>
20028772:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028774:	4601      	mov	r1, r0
20028776:	2800      	cmp	r0, #0
20028778:	f47f aeb1 	bne.w	200284de <mbedtls_mpi_div_mpi+0x68>
2002877c:	a81b      	add	r0, sp, #108	@ 0x6c
2002877e:	941d      	str	r4, [sp, #116]	@ 0x74
20028780:	f7ff fadf 	bl	20027d42 <mbedtls_mpi_lset>
20028784:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
20028786:	2800      	cmp	r0, #0
20028788:	f47f aea9 	bne.w	200284de <mbedtls_mpi_div_mpi+0x68>
2002878c:	9b01      	ldr	r3, [sp, #4]
2002878e:	a91b      	add	r1, sp, #108	@ 0x6c
20028790:	2b01      	cmp	r3, #1
20028792:	bf18      	it	ne
20028794:	f8db 0000 	ldrne.w	r0, [fp]
20028798:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
2002879a:	6020      	str	r0, [r4, #0]
2002879c:	681b      	ldr	r3, [r3, #0]
2002879e:	a818      	add	r0, sp, #96	@ 0x60
200287a0:	6063      	str	r3, [r4, #4]
200287a2:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200287a4:	681b      	ldr	r3, [r3, #0]
200287a6:	60a3      	str	r3, [r4, #8]
200287a8:	f7ff fca4 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
200287ac:	2800      	cmp	r0, #0
200287ae:	dcc3      	bgt.n	20028738 <mbedtls_mpi_div_mpi+0x2c2>
200287b0:	f85a 2c04 	ldr.w	r2, [sl, #-4]
200287b4:	a912      	add	r1, sp, #72	@ 0x48
200287b6:	a818      	add	r0, sp, #96	@ 0x60
200287b8:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200287bc:	f7ff fe4e 	bl	2002845c <mbedtls_mpi_mul_int>
200287c0:	b130      	cbz	r0, 200287d0 <mbedtls_mpi_div_mpi+0x35a>
200287c2:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200287c4:	e68b      	b.n	200284de <mbedtls_mpi_div_mpi+0x68>
200287c6:	f04f 33ff 	mov.w	r3, #4294967295
200287ca:	e7af      	b.n	2002872c <mbedtls_mpi_div_mpi+0x2b6>
200287cc:	9b07      	ldr	r3, [sp, #28]
200287ce:	e7c6      	b.n	2002875e <mbedtls_mpi_div_mpi+0x2e8>
200287d0:	f06f 0b1f 	mvn.w	fp, #31
200287d4:	9b08      	ldr	r3, [sp, #32]
200287d6:	a818      	add	r0, sp, #96	@ 0x60
200287d8:	fb0b fb03 	mul.w	fp, fp, r3
200287dc:	9b01      	ldr	r3, [sp, #4]
200287de:	eb0b 1b43 	add.w	fp, fp, r3, lsl #5
200287e2:	4659      	mov	r1, fp
200287e4:	f7ff fb5c 	bl	20027ea0 <mbedtls_mpi_shift_l>
200287e8:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200287ea:	2800      	cmp	r0, #0
200287ec:	f47f ae77 	bne.w	200284de <mbedtls_mpi_div_mpi+0x68>
200287f0:	a90f      	add	r1, sp, #60	@ 0x3c
200287f2:	4608      	mov	r0, r1
200287f4:	aa18      	add	r2, sp, #96	@ 0x60
200287f6:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
200287fa:	f7ff fd8e 	bl	2002831a <mbedtls_mpi_sub_mpi>
200287fe:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028802:	4601      	mov	r1, r0
20028804:	2800      	cmp	r0, #0
20028806:	f47f af5d 	bne.w	200286c4 <mbedtls_mpi_div_mpi+0x24e>
2002880a:	a80f      	add	r0, sp, #60	@ 0x3c
2002880c:	f7ff fcb3 	bl	20028176 <mbedtls_mpi_cmp_int>
20028810:	2800      	cmp	r0, #0
20028812:	da1d      	bge.n	20028850 <mbedtls_mpi_div_mpi+0x3da>
20028814:	a912      	add	r1, sp, #72	@ 0x48
20028816:	a818      	add	r0, sp, #96	@ 0x60
20028818:	f7ff fa6a 	bl	20027cf0 <mbedtls_mpi_copy>
2002881c:	2800      	cmp	r0, #0
2002881e:	d1d0      	bne.n	200287c2 <mbedtls_mpi_div_mpi+0x34c>
20028820:	4659      	mov	r1, fp
20028822:	a818      	add	r0, sp, #96	@ 0x60
20028824:	f7ff fb3c 	bl	20027ea0 <mbedtls_mpi_shift_l>
20028828:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002882a:	2800      	cmp	r0, #0
2002882c:	f47f ae57 	bne.w	200284de <mbedtls_mpi_div_mpi+0x68>
20028830:	a90f      	add	r1, sp, #60	@ 0x3c
20028832:	4608      	mov	r0, r1
20028834:	aa18      	add	r2, sp, #96	@ 0x60
20028836:	f7ff fd4a 	bl	200282ce <mbedtls_mpi_add_mpi>
2002883a:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
2002883e:	4601      	mov	r1, r0
20028840:	2800      	cmp	r0, #0
20028842:	f47f af3f 	bne.w	200286c4 <mbedtls_mpi_div_mpi+0x24e>
20028846:	f85a 3c04 	ldr.w	r3, [sl, #-4]
2002884a:	3b01      	subs	r3, #1
2002884c:	f84a 3c04 	str.w	r3, [sl, #-4]
20028850:	9b01      	ldr	r3, [sp, #4]
20028852:	f1aa 0a04 	sub.w	sl, sl, #4
20028856:	3b01      	subs	r3, #1
20028858:	9301      	str	r3, [sp, #4]
2002885a:	e6e6      	b.n	2002862a <mbedtls_mpi_div_mpi+0x1b4>
2002885c:	4625      	mov	r5, r4
2002885e:	46a1      	mov	r9, r4
20028860:	46a0      	mov	r8, r4
20028862:	9402      	str	r4, [sp, #8]
20028864:	e63b      	b.n	200284de <mbedtls_mpi_div_mpi+0x68>
20028866:	4654      	mov	r4, sl
20028868:	4655      	mov	r5, sl
2002886a:	f8cd a008 	str.w	sl, [sp, #8]
2002886e:	e636      	b.n	200284de <mbedtls_mpi_div_mpi+0x68>
20028870:	462c      	mov	r4, r5
20028872:	e663      	b.n	2002853c <mbedtls_mpi_div_mpi+0xc6>
20028874:	9903      	ldr	r1, [sp, #12]
20028876:	e725      	b.n	200286c4 <mbedtls_mpi_div_mpi+0x24e>
20028878:	f06f 010b 	mvn.w	r1, #11
2002887c:	e61e      	b.n	200284bc <mbedtls_mpi_div_mpi+0x46>

2002887e <mbedtls_mpi_mod_mpi>:
2002887e:	b570      	push	{r4, r5, r6, lr}
20028880:	4604      	mov	r4, r0
20028882:	460d      	mov	r5, r1
20028884:	4610      	mov	r0, r2
20028886:	2100      	movs	r1, #0
20028888:	4616      	mov	r6, r2
2002888a:	f7ff fc74 	bl	20028176 <mbedtls_mpi_cmp_int>
2002888e:	2800      	cmp	r0, #0
20028890:	db24      	blt.n	200288dc <mbedtls_mpi_mod_mpi+0x5e>
20028892:	462a      	mov	r2, r5
20028894:	4633      	mov	r3, r6
20028896:	4621      	mov	r1, r4
20028898:	2000      	movs	r0, #0
2002889a:	f7ff fdec 	bl	20028476 <mbedtls_mpi_div_mpi>
2002889e:	4605      	mov	r5, r0
200288a0:	b138      	cbz	r0, 200288b2 <mbedtls_mpi_mod_mpi+0x34>
200288a2:	4628      	mov	r0, r5
200288a4:	bd70      	pop	{r4, r5, r6, pc}
200288a6:	4632      	mov	r2, r6
200288a8:	4621      	mov	r1, r4
200288aa:	4620      	mov	r0, r4
200288ac:	f7ff fd0f 	bl	200282ce <mbedtls_mpi_add_mpi>
200288b0:	b990      	cbnz	r0, 200288d8 <mbedtls_mpi_mod_mpi+0x5a>
200288b2:	2100      	movs	r1, #0
200288b4:	4620      	mov	r0, r4
200288b6:	f7ff fc5e 	bl	20028176 <mbedtls_mpi_cmp_int>
200288ba:	2800      	cmp	r0, #0
200288bc:	dbf3      	blt.n	200288a6 <mbedtls_mpi_mod_mpi+0x28>
200288be:	4631      	mov	r1, r6
200288c0:	4620      	mov	r0, r4
200288c2:	f7ff fc17 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
200288c6:	2800      	cmp	r0, #0
200288c8:	dbeb      	blt.n	200288a2 <mbedtls_mpi_mod_mpi+0x24>
200288ca:	4632      	mov	r2, r6
200288cc:	4621      	mov	r1, r4
200288ce:	4620      	mov	r0, r4
200288d0:	f7ff fd23 	bl	2002831a <mbedtls_mpi_sub_mpi>
200288d4:	2800      	cmp	r0, #0
200288d6:	d0f2      	beq.n	200288be <mbedtls_mpi_mod_mpi+0x40>
200288d8:	4605      	mov	r5, r0
200288da:	e7e2      	b.n	200288a2 <mbedtls_mpi_mod_mpi+0x24>
200288dc:	f06f 0509 	mvn.w	r5, #9
200288e0:	e7df      	b.n	200288a2 <mbedtls_mpi_mod_mpi+0x24>

200288e2 <mbedtls_mpi_exp_mod>:
200288e2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200288e6:	4605      	mov	r5, r0
200288e8:	f2ad 6d54 	subw	sp, sp, #1620	@ 0x654
200288ec:	4688      	mov	r8, r1
200288ee:	4618      	mov	r0, r3
200288f0:	2100      	movs	r1, #0
200288f2:	461c      	mov	r4, r3
200288f4:	9203      	str	r2, [sp, #12]
200288f6:	f7ff fc3e 	bl	20028176 <mbedtls_mpi_cmp_int>
200288fa:	2800      	cmp	r0, #0
200288fc:	f2c0 8202 	blt.w	20028d04 <mbedtls_mpi_exp_mod+0x422>
20028900:	68a3      	ldr	r3, [r4, #8]
20028902:	681f      	ldr	r7, [r3, #0]
20028904:	f017 0301 	ands.w	r3, r7, #1
20028908:	9305      	str	r3, [sp, #20]
2002890a:	f000 81fb 	beq.w	20028d04 <mbedtls_mpi_exp_mod+0x422>
2002890e:	2100      	movs	r1, #0
20028910:	9803      	ldr	r0, [sp, #12]
20028912:	f7ff fc30 	bl	20028176 <mbedtls_mpi_cmp_int>
20028916:	2800      	cmp	r0, #0
20028918:	f2c0 81f4 	blt.w	20028d04 <mbedtls_mpi_exp_mod+0x422>
2002891c:	2100      	movs	r1, #0
2002891e:	2301      	movs	r3, #1
20028920:	f44f 62c0 	mov.w	r2, #1536	@ 0x600
20028924:	a814      	add	r0, sp, #80	@ 0x50
20028926:	e9cd 3108 	strd	r3, r1, [sp, #32]
2002892a:	e9cd 130a 	strd	r1, r3, [sp, #40]	@ 0x28
2002892e:	e9cd 110c 	strd	r1, r1, [sp, #48]	@ 0x30
20028932:	e9cd 310e 	strd	r3, r1, [sp, #56]	@ 0x38
20028936:	9110      	str	r1, [sp, #64]	@ 0x40
20028938:	f001 ff3a 	bl	2002a7b0 <memset>
2002893c:	9803      	ldr	r0, [sp, #12]
2002893e:	f7ff fa34 	bl	20027daa <mbedtls_mpi_bitlen>
20028942:	f5b0 7f28 	cmp.w	r0, #672	@ 0x2a0
20028946:	d233      	bcs.n	200289b0 <mbedtls_mpi_exp_mod+0xce>
20028948:	28ef      	cmp	r0, #239	@ 0xef
2002894a:	d833      	bhi.n	200289b4 <mbedtls_mpi_exp_mod+0xd2>
2002894c:	284f      	cmp	r0, #79	@ 0x4f
2002894e:	d833      	bhi.n	200289b8 <mbedtls_mpi_exp_mod+0xd6>
20028950:	9b05      	ldr	r3, [sp, #20]
20028952:	2818      	cmp	r0, #24
20028954:	bf34      	ite	cc
20028956:	461e      	movcc	r6, r3
20028958:	2603      	movcs	r6, #3
2002895a:	6863      	ldr	r3, [r4, #4]
2002895c:	4628      	mov	r0, r5
2002895e:	f103 0901 	add.w	r9, r3, #1
20028962:	4649      	mov	r1, r9
20028964:	f7ff f994 	bl	20027c90 <mbedtls_mpi_grow>
20028968:	b340      	cbz	r0, 200289bc <mbedtls_mpi_exp_mod+0xda>
2002896a:	f06f 090f 	mvn.w	r9, #15
2002896e:	2301      	movs	r3, #1
20028970:	1e74      	subs	r4, r6, #1
20028972:	fa03 f506 	lsl.w	r5, r3, r6
20028976:	260c      	movs	r6, #12
20028978:	fa03 f404 	lsl.w	r4, r3, r4
2002897c:	af14      	add	r7, sp, #80	@ 0x50
2002897e:	42a5      	cmp	r5, r4
20028980:	f200 81ba 	bhi.w	20028cf8 <mbedtls_mpi_exp_mod+0x416>
20028984:	a817      	add	r0, sp, #92	@ 0x5c
20028986:	f7ff f96e 	bl	20027c66 <mbedtls_mpi_free>
2002898a:	a80b      	add	r0, sp, #44	@ 0x2c
2002898c:	f7ff f96b 	bl	20027c66 <mbedtls_mpi_free>
20028990:	a80e      	add	r0, sp, #56	@ 0x38
20028992:	f7ff f968 	bl	20027c66 <mbedtls_mpi_free>
20028996:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
2002899a:	b10b      	cbz	r3, 200289a0 <mbedtls_mpi_exp_mod+0xbe>
2002899c:	689b      	ldr	r3, [r3, #8]
2002899e:	b913      	cbnz	r3, 200289a6 <mbedtls_mpi_exp_mod+0xc4>
200289a0:	a808      	add	r0, sp, #32
200289a2:	f7ff f960 	bl	20027c66 <mbedtls_mpi_free>
200289a6:	4648      	mov	r0, r9
200289a8:	f20d 6d54 	addw	sp, sp, #1620	@ 0x654
200289ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200289b0:	2606      	movs	r6, #6
200289b2:	e7d2      	b.n	2002895a <mbedtls_mpi_exp_mod+0x78>
200289b4:	2605      	movs	r6, #5
200289b6:	e7d0      	b.n	2002895a <mbedtls_mpi_exp_mod+0x78>
200289b8:	2604      	movs	r6, #4
200289ba:	e7ce      	b.n	2002895a <mbedtls_mpi_exp_mod+0x78>
200289bc:	4649      	mov	r1, r9
200289be:	a817      	add	r0, sp, #92	@ 0x5c
200289c0:	f7ff f966 	bl	20027c90 <mbedtls_mpi_grow>
200289c4:	2800      	cmp	r0, #0
200289c6:	d1d0      	bne.n	2002896a <mbedtls_mpi_exp_mod+0x88>
200289c8:	ea4f 0149 	mov.w	r1, r9, lsl #1
200289cc:	a80b      	add	r0, sp, #44	@ 0x2c
200289ce:	f7ff f95f 	bl	20027c90 <mbedtls_mpi_grow>
200289d2:	2800      	cmp	r0, #0
200289d4:	d1c9      	bne.n	2002896a <mbedtls_mpi_exp_mod+0x88>
200289d6:	f8d8 3000 	ldr.w	r3, [r8]
200289da:	9304      	str	r3, [sp, #16]
200289dc:	3301      	adds	r3, #1
200289de:	d109      	bne.n	200289f4 <mbedtls_mpi_exp_mod+0x112>
200289e0:	4641      	mov	r1, r8
200289e2:	a80e      	add	r0, sp, #56	@ 0x38
200289e4:	f7ff f984 	bl	20027cf0 <mbedtls_mpi_copy>
200289e8:	2800      	cmp	r0, #0
200289ea:	d1be      	bne.n	2002896a <mbedtls_mpi_exp_mod+0x88>
200289ec:	2301      	movs	r3, #1
200289ee:	f10d 0838 	add.w	r8, sp, #56	@ 0x38
200289f2:	930e      	str	r3, [sp, #56]	@ 0x38
200289f4:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
200289f8:	b11b      	cbz	r3, 20028a02 <mbedtls_mpi_exp_mod+0x120>
200289fa:	689b      	ldr	r3, [r3, #8]
200289fc:	2b00      	cmp	r3, #0
200289fe:	f040 80ab 	bne.w	20028b58 <mbedtls_mpi_exp_mod+0x276>
20028a02:	2101      	movs	r1, #1
20028a04:	a808      	add	r0, sp, #32
20028a06:	f7ff f99c 	bl	20027d42 <mbedtls_mpi_lset>
20028a0a:	2800      	cmp	r0, #0
20028a0c:	d1ad      	bne.n	2002896a <mbedtls_mpi_exp_mod+0x88>
20028a0e:	6861      	ldr	r1, [r4, #4]
20028a10:	a808      	add	r0, sp, #32
20028a12:	0189      	lsls	r1, r1, #6
20028a14:	f7ff fa44 	bl	20027ea0 <mbedtls_mpi_shift_l>
20028a18:	2800      	cmp	r0, #0
20028a1a:	d1a6      	bne.n	2002896a <mbedtls_mpi_exp_mod+0x88>
20028a1c:	a908      	add	r1, sp, #32
20028a1e:	4622      	mov	r2, r4
20028a20:	4608      	mov	r0, r1
20028a22:	f7ff ff2c 	bl	2002887e <mbedtls_mpi_mod_mpi>
20028a26:	4681      	mov	r9, r0
20028a28:	2800      	cmp	r0, #0
20028a2a:	d1a0      	bne.n	2002896e <mbedtls_mpi_exp_mod+0x8c>
20028a2c:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028a30:	b13b      	cbz	r3, 20028a42 <mbedtls_mpi_exp_mod+0x160>
20028a32:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
20028a36:	ab08      	add	r3, sp, #32
20028a38:	cb03      	ldmia	r3!, {r0, r1}
20028a3a:	6010      	str	r0, [r2, #0]
20028a3c:	6818      	ldr	r0, [r3, #0]
20028a3e:	6051      	str	r1, [r2, #4]
20028a40:	6090      	str	r0, [r2, #8]
20028a42:	4621      	mov	r1, r4
20028a44:	4640      	mov	r0, r8
20028a46:	f7ff fb55 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
20028a4a:	2800      	cmp	r0, #0
20028a4c:	f2c0 808d 	blt.w	20028b6a <mbedtls_mpi_exp_mod+0x288>
20028a50:	4622      	mov	r2, r4
20028a52:	4641      	mov	r1, r8
20028a54:	a817      	add	r0, sp, #92	@ 0x5c
20028a56:	f7ff ff12 	bl	2002887e <mbedtls_mpi_mod_mpi>
20028a5a:	4681      	mov	r9, r0
20028a5c:	2800      	cmp	r0, #0
20028a5e:	d186      	bne.n	2002896e <mbedtls_mpi_exp_mod+0x8c>
20028a60:	1cba      	adds	r2, r7, #2
20028a62:	0052      	lsls	r2, r2, #1
20028a64:	f002 0208 	and.w	r2, r2, #8
20028a68:	443a      	add	r2, r7
20028a6a:	fb02 f307 	mul.w	r3, r2, r7
20028a6e:	f1c3 0302 	rsb	r3, r3, #2
20028a72:	4353      	muls	r3, r2
20028a74:	fb03 f207 	mul.w	r2, r3, r7
20028a78:	f1c2 0202 	rsb	r2, r2, #2
20028a7c:	4353      	muls	r3, r2
20028a7e:	435f      	muls	r7, r3
20028a80:	3f02      	subs	r7, #2
20028a82:	437b      	muls	r3, r7
20028a84:	f10d 0b2c 	add.w	fp, sp, #44	@ 0x2c
20028a88:	4622      	mov	r2, r4
20028a8a:	f8cd b000 	str.w	fp, [sp]
20028a8e:	a908      	add	r1, sp, #32
20028a90:	a817      	add	r0, sp, #92	@ 0x5c
20028a92:	9302      	str	r3, [sp, #8]
20028a94:	f7ff fac4 	bl	20028020 <mpi_montmul>
20028a98:	2800      	cmp	r0, #0
20028a9a:	f040 80e4 	bne.w	20028c66 <mbedtls_mpi_exp_mod+0x384>
20028a9e:	4628      	mov	r0, r5
20028aa0:	a908      	add	r1, sp, #32
20028aa2:	f7ff f925 	bl	20027cf0 <mbedtls_mpi_copy>
20028aa6:	2800      	cmp	r0, #0
20028aa8:	f47f af5f 	bne.w	2002896a <mbedtls_mpi_exp_mod+0x88>
20028aac:	2301      	movs	r3, #1
20028aae:	aa07      	add	r2, sp, #28
20028ab0:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028ab4:	9307      	str	r3, [sp, #28]
20028ab6:	9213      	str	r2, [sp, #76]	@ 0x4c
20028ab8:	4628      	mov	r0, r5
20028aba:	4622      	mov	r2, r4
20028abc:	9b02      	ldr	r3, [sp, #8]
20028abe:	f8cd b000 	str.w	fp, [sp]
20028ac2:	a911      	add	r1, sp, #68	@ 0x44
20028ac4:	f7ff faac 	bl	20028020 <mpi_montmul>
20028ac8:	2800      	cmp	r0, #0
20028aca:	f040 80cc 	bne.w	20028c66 <mbedtls_mpi_exp_mod+0x384>
20028ace:	2e01      	cmp	r6, #1
20028ad0:	d153      	bne.n	20028b7a <mbedtls_mpi_exp_mod+0x298>
20028ad2:	f04f 0900 	mov.w	r9, #0
20028ad6:	464f      	mov	r7, r9
20028ad8:	46ca      	mov	sl, r9
20028ada:	46c8      	mov	r8, r9
20028adc:	9b03      	ldr	r3, [sp, #12]
20028ade:	f8d3 b004 	ldr.w	fp, [r3, #4]
20028ae2:	f1ba 0f00 	cmp.w	sl, #0
20028ae6:	f040 80a1 	bne.w	20028c2c <mbedtls_mpi_exp_mod+0x34a>
20028aea:	f1bb 0f00 	cmp.w	fp, #0
20028aee:	f040 8099 	bne.w	20028c24 <mbedtls_mpi_exp_mod+0x342>
20028af2:	f04f 0a01 	mov.w	sl, #1
20028af6:	f10d 092c 	add.w	r9, sp, #44	@ 0x2c
20028afa:	fa0a fa06 	lsl.w	sl, sl, r6
20028afe:	45bb      	cmp	fp, r7
20028b00:	f040 80dd 	bne.w	20028cbe <mbedtls_mpi_exp_mod+0x3dc>
20028b04:	2301      	movs	r3, #1
20028b06:	aa07      	add	r2, sp, #28
20028b08:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028b0c:	9307      	str	r3, [sp, #28]
20028b0e:	9213      	str	r2, [sp, #76]	@ 0x4c
20028b10:	f8cd 9000 	str.w	r9, [sp]
20028b14:	4622      	mov	r2, r4
20028b16:	4628      	mov	r0, r5
20028b18:	9b02      	ldr	r3, [sp, #8]
20028b1a:	a911      	add	r1, sp, #68	@ 0x44
20028b1c:	f7ff fa80 	bl	20028020 <mpi_montmul>
20028b20:	4681      	mov	r9, r0
20028b22:	2800      	cmp	r0, #0
20028b24:	f040 809f 	bne.w	20028c66 <mbedtls_mpi_exp_mod+0x384>
20028b28:	9b04      	ldr	r3, [sp, #16]
20028b2a:	3301      	adds	r3, #1
20028b2c:	f47f af1f 	bne.w	2002896e <mbedtls_mpi_exp_mod+0x8c>
20028b30:	9b03      	ldr	r3, [sp, #12]
20028b32:	685b      	ldr	r3, [r3, #4]
20028b34:	2b00      	cmp	r3, #0
20028b36:	f43f af1a 	beq.w	2002896e <mbedtls_mpi_exp_mod+0x8c>
20028b3a:	9b03      	ldr	r3, [sp, #12]
20028b3c:	689b      	ldr	r3, [r3, #8]
20028b3e:	681b      	ldr	r3, [r3, #0]
20028b40:	07db      	lsls	r3, r3, #31
20028b42:	f57f af14 	bpl.w	2002896e <mbedtls_mpi_exp_mod+0x8c>
20028b46:	9b04      	ldr	r3, [sp, #16]
20028b48:	462a      	mov	r2, r5
20028b4a:	4621      	mov	r1, r4
20028b4c:	4628      	mov	r0, r5
20028b4e:	602b      	str	r3, [r5, #0]
20028b50:	f7ff fbbd 	bl	200282ce <mbedtls_mpi_add_mpi>
20028b54:	4681      	mov	r9, r0
20028b56:	e70a      	b.n	2002896e <mbedtls_mpi_exp_mod+0x8c>
20028b58:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
20028b5c:	ab08      	add	r3, sp, #32
20028b5e:	6810      	ldr	r0, [r2, #0]
20028b60:	6851      	ldr	r1, [r2, #4]
20028b62:	c303      	stmia	r3!, {r0, r1}
20028b64:	6890      	ldr	r0, [r2, #8]
20028b66:	6018      	str	r0, [r3, #0]
20028b68:	e76b      	b.n	20028a42 <mbedtls_mpi_exp_mod+0x160>
20028b6a:	4641      	mov	r1, r8
20028b6c:	a817      	add	r0, sp, #92	@ 0x5c
20028b6e:	f7ff f8bf 	bl	20027cf0 <mbedtls_mpi_copy>
20028b72:	2800      	cmp	r0, #0
20028b74:	f43f af74 	beq.w	20028a60 <mbedtls_mpi_exp_mod+0x17e>
20028b78:	e6f7      	b.n	2002896a <mbedtls_mpi_exp_mod+0x88>
20028b7a:	f04f 0a0c 	mov.w	sl, #12
20028b7e:	1e77      	subs	r7, r6, #1
20028b80:	6861      	ldr	r1, [r4, #4]
20028b82:	fa0a fa07 	lsl.w	sl, sl, r7
20028b86:	f10d 0950 	add.w	r9, sp, #80	@ 0x50
20028b8a:	44d1      	add	r9, sl
20028b8c:	4648      	mov	r0, r9
20028b8e:	3101      	adds	r1, #1
20028b90:	f7ff f87e 	bl	20027c90 <mbedtls_mpi_grow>
20028b94:	2800      	cmp	r0, #0
20028b96:	f47f aee8 	bne.w	2002896a <mbedtls_mpi_exp_mod+0x88>
20028b9a:	4648      	mov	r0, r9
20028b9c:	a917      	add	r1, sp, #92	@ 0x5c
20028b9e:	f7ff f8a7 	bl	20027cf0 <mbedtls_mpi_copy>
20028ba2:	2800      	cmp	r0, #0
20028ba4:	f47f aee1 	bne.w	2002896a <mbedtls_mpi_exp_mod+0x88>
20028ba8:	4680      	mov	r8, r0
20028baa:	4622      	mov	r2, r4
20028bac:	4649      	mov	r1, r9
20028bae:	4648      	mov	r0, r9
20028bb0:	9b02      	ldr	r3, [sp, #8]
20028bb2:	f8cd b000 	str.w	fp, [sp]
20028bb6:	f7ff fa33 	bl	20028020 <mpi_montmul>
20028bba:	2800      	cmp	r0, #0
20028bbc:	d153      	bne.n	20028c66 <mbedtls_mpi_exp_mod+0x384>
20028bbe:	f108 0801 	add.w	r8, r8, #1
20028bc2:	45b8      	cmp	r8, r7
20028bc4:	d3f1      	bcc.n	20028baa <mbedtls_mpi_exp_mod+0x2c8>
20028bc6:	f04f 0801 	mov.w	r8, #1
20028bca:	f10d 0b50 	add.w	fp, sp, #80	@ 0x50
20028bce:	fa08 f707 	lsl.w	r7, r8, r7
20028bd2:	4447      	add	r7, r8
20028bd4:	44d3      	add	fp, sl
20028bd6:	fa08 f806 	lsl.w	r8, r8, r6
20028bda:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
20028bde:	45b8      	cmp	r8, r7
20028be0:	f67f af77 	bls.w	20028ad2 <mbedtls_mpi_exp_mod+0x1f0>
20028be4:	6861      	ldr	r1, [r4, #4]
20028be6:	f10b 090c 	add.w	r9, fp, #12
20028bea:	4648      	mov	r0, r9
20028bec:	3101      	adds	r1, #1
20028bee:	f7ff f84f 	bl	20027c90 <mbedtls_mpi_grow>
20028bf2:	2800      	cmp	r0, #0
20028bf4:	f47f aeb9 	bne.w	2002896a <mbedtls_mpi_exp_mod+0x88>
20028bf8:	4659      	mov	r1, fp
20028bfa:	4648      	mov	r0, r9
20028bfc:	f7ff f878 	bl	20027cf0 <mbedtls_mpi_copy>
20028c00:	2800      	cmp	r0, #0
20028c02:	f47f aeb2 	bne.w	2002896a <mbedtls_mpi_exp_mod+0x88>
20028c06:	4622      	mov	r2, r4
20028c08:	4648      	mov	r0, r9
20028c0a:	9b02      	ldr	r3, [sp, #8]
20028c0c:	f8cd a000 	str.w	sl, [sp]
20028c10:	a917      	add	r1, sp, #92	@ 0x5c
20028c12:	f7ff fa05 	bl	20028020 <mpi_montmul>
20028c16:	bb30      	cbnz	r0, 20028c66 <mbedtls_mpi_exp_mod+0x384>
20028c18:	46cb      	mov	fp, r9
20028c1a:	3701      	adds	r7, #1
20028c1c:	e7df      	b.n	20028bde <mbedtls_mpi_exp_mod+0x2fc>
20028c1e:	f04f 0902 	mov.w	r9, #2
20028c22:	e75e      	b.n	20028ae2 <mbedtls_mpi_exp_mod+0x200>
20028c24:	f04f 0a20 	mov.w	sl, #32
20028c28:	f10b 3bff 	add.w	fp, fp, #4294967295
20028c2c:	9b03      	ldr	r3, [sp, #12]
20028c2e:	f10a 3aff 	add.w	sl, sl, #4294967295
20028c32:	689b      	ldr	r3, [r3, #8]
20028c34:	f853 302b 	ldr.w	r3, [r3, fp, lsl #2]
20028c38:	fa23 f30a 	lsr.w	r3, r3, sl
20028c3c:	f013 0301 	ands.w	r3, r3, #1
20028c40:	d114      	bne.n	20028c6c <mbedtls_mpi_exp_mod+0x38a>
20028c42:	f1b9 0f00 	cmp.w	r9, #0
20028c46:	f43f af4c 	beq.w	20028ae2 <mbedtls_mpi_exp_mod+0x200>
20028c4a:	f1b9 0f01 	cmp.w	r9, #1
20028c4e:	d10d      	bne.n	20028c6c <mbedtls_mpi_exp_mod+0x38a>
20028c50:	ab0b      	add	r3, sp, #44	@ 0x2c
20028c52:	9300      	str	r3, [sp, #0]
20028c54:	4622      	mov	r2, r4
20028c56:	4629      	mov	r1, r5
20028c58:	4628      	mov	r0, r5
20028c5a:	9b02      	ldr	r3, [sp, #8]
20028c5c:	f7ff f9e0 	bl	20028020 <mpi_montmul>
20028c60:	2800      	cmp	r0, #0
20028c62:	f43f af3e 	beq.w	20028ae2 <mbedtls_mpi_exp_mod+0x200>
20028c66:	f06f 0903 	mvn.w	r9, #3
20028c6a:	e680      	b.n	2002896e <mbedtls_mpi_exp_mod+0x8c>
20028c6c:	3701      	adds	r7, #1
20028c6e:	1bf2      	subs	r2, r6, r7
20028c70:	4093      	lsls	r3, r2
20028c72:	42be      	cmp	r6, r7
20028c74:	ea48 0803 	orr.w	r8, r8, r3
20028c78:	d1d1      	bne.n	20028c1e <mbedtls_mpi_exp_mod+0x33c>
20028c7a:	f04f 0900 	mov.w	r9, #0
20028c7e:	ab0b      	add	r3, sp, #44	@ 0x2c
20028c80:	9300      	str	r3, [sp, #0]
20028c82:	4622      	mov	r2, r4
20028c84:	4629      	mov	r1, r5
20028c86:	4628      	mov	r0, r5
20028c88:	9b02      	ldr	r3, [sp, #8]
20028c8a:	f7ff f9c9 	bl	20028020 <mpi_montmul>
20028c8e:	2800      	cmp	r0, #0
20028c90:	d1e9      	bne.n	20028c66 <mbedtls_mpi_exp_mod+0x384>
20028c92:	f109 0901 	add.w	r9, r9, #1
20028c96:	454f      	cmp	r7, r9
20028c98:	d8f1      	bhi.n	20028c7e <mbedtls_mpi_exp_mod+0x39c>
20028c9a:	200c      	movs	r0, #12
20028c9c:	ab0b      	add	r3, sp, #44	@ 0x2c
20028c9e:	a914      	add	r1, sp, #80	@ 0x50
20028ca0:	fb00 1108 	mla	r1, r0, r8, r1
20028ca4:	9300      	str	r3, [sp, #0]
20028ca6:	4622      	mov	r2, r4
20028ca8:	4628      	mov	r0, r5
20028caa:	9b02      	ldr	r3, [sp, #8]
20028cac:	f7ff f9b8 	bl	20028020 <mpi_montmul>
20028cb0:	4607      	mov	r7, r0
20028cb2:	2800      	cmp	r0, #0
20028cb4:	d1d7      	bne.n	20028c66 <mbedtls_mpi_exp_mod+0x384>
20028cb6:	4680      	mov	r8, r0
20028cb8:	f8dd 9014 	ldr.w	r9, [sp, #20]
20028cbc:	e711      	b.n	20028ae2 <mbedtls_mpi_exp_mod+0x200>
20028cbe:	4622      	mov	r2, r4
20028cc0:	4629      	mov	r1, r5
20028cc2:	4628      	mov	r0, r5
20028cc4:	9b02      	ldr	r3, [sp, #8]
20028cc6:	f8cd 9000 	str.w	r9, [sp]
20028cca:	f7ff f9a9 	bl	20028020 <mpi_montmul>
20028cce:	2800      	cmp	r0, #0
20028cd0:	d1c9      	bne.n	20028c66 <mbedtls_mpi_exp_mod+0x384>
20028cd2:	ea4f 0848 	mov.w	r8, r8, lsl #1
20028cd6:	ea18 0f0a 	tst.w	r8, sl
20028cda:	d102      	bne.n	20028ce2 <mbedtls_mpi_exp_mod+0x400>
20028cdc:	f10b 0b01 	add.w	fp, fp, #1
20028ce0:	e70d      	b.n	20028afe <mbedtls_mpi_exp_mod+0x21c>
20028ce2:	4622      	mov	r2, r4
20028ce4:	4628      	mov	r0, r5
20028ce6:	9b02      	ldr	r3, [sp, #8]
20028ce8:	f8cd 9000 	str.w	r9, [sp]
20028cec:	a917      	add	r1, sp, #92	@ 0x5c
20028cee:	f7ff f997 	bl	20028020 <mpi_montmul>
20028cf2:	2800      	cmp	r0, #0
20028cf4:	d0f2      	beq.n	20028cdc <mbedtls_mpi_exp_mod+0x3fa>
20028cf6:	e7b6      	b.n	20028c66 <mbedtls_mpi_exp_mod+0x384>
20028cf8:	fb06 7004 	mla	r0, r6, r4, r7
20028cfc:	f7fe ffb3 	bl	20027c66 <mbedtls_mpi_free>
20028d00:	3401      	adds	r4, #1
20028d02:	e63c      	b.n	2002897e <mbedtls_mpi_exp_mod+0x9c>
20028d04:	f06f 0903 	mvn.w	r9, #3
20028d08:	e64d      	b.n	200289a6 <mbedtls_mpi_exp_mod+0xc4>

20028d0a <mbedtls_mpi_gcd>:
20028d0a:	b570      	push	{r4, r5, r6, lr}
20028d0c:	2300      	movs	r3, #0
20028d0e:	2401      	movs	r4, #1
20028d10:	b086      	sub	sp, #24
20028d12:	4606      	mov	r6, r0
20028d14:	4668      	mov	r0, sp
20028d16:	4615      	mov	r5, r2
20028d18:	e9cd 4300 	strd	r4, r3, [sp]
20028d1c:	e9cd 3402 	strd	r3, r4, [sp, #8]
20028d20:	e9cd 3304 	strd	r3, r3, [sp, #16]
20028d24:	f7fe ffe4 	bl	20027cf0 <mbedtls_mpi_copy>
20028d28:	b150      	cbz	r0, 20028d40 <mbedtls_mpi_gcd+0x36>
20028d2a:	f06f 040f 	mvn.w	r4, #15
20028d2e:	4668      	mov	r0, sp
20028d30:	f7fe ff99 	bl	20027c66 <mbedtls_mpi_free>
20028d34:	a803      	add	r0, sp, #12
20028d36:	f7fe ff96 	bl	20027c66 <mbedtls_mpi_free>
20028d3a:	4620      	mov	r0, r4
20028d3c:	b006      	add	sp, #24
20028d3e:	bd70      	pop	{r4, r5, r6, pc}
20028d40:	4629      	mov	r1, r5
20028d42:	a803      	add	r0, sp, #12
20028d44:	f7fe ffd4 	bl	20027cf0 <mbedtls_mpi_copy>
20028d48:	2800      	cmp	r0, #0
20028d4a:	d1ee      	bne.n	20028d2a <mbedtls_mpi_gcd+0x20>
20028d4c:	4668      	mov	r0, sp
20028d4e:	f7ff f814 	bl	20027d7a <mbedtls_mpi_lsb>
20028d52:	4605      	mov	r5, r0
20028d54:	a803      	add	r0, sp, #12
20028d56:	f7ff f810 	bl	20027d7a <mbedtls_mpi_lsb>
20028d5a:	4285      	cmp	r5, r0
20028d5c:	bf28      	it	cs
20028d5e:	4605      	movcs	r5, r0
20028d60:	4668      	mov	r0, sp
20028d62:	4629      	mov	r1, r5
20028d64:	f7ff f8ee 	bl	20027f44 <mbedtls_mpi_shift_r>
20028d68:	2800      	cmp	r0, #0
20028d6a:	d1de      	bne.n	20028d2a <mbedtls_mpi_gcd+0x20>
20028d6c:	4629      	mov	r1, r5
20028d6e:	a803      	add	r0, sp, #12
20028d70:	f7ff f8e8 	bl	20027f44 <mbedtls_mpi_shift_r>
20028d74:	2800      	cmp	r0, #0
20028d76:	d1d8      	bne.n	20028d2a <mbedtls_mpi_gcd+0x20>
20028d78:	9403      	str	r4, [sp, #12]
20028d7a:	9400      	str	r4, [sp, #0]
20028d7c:	2100      	movs	r1, #0
20028d7e:	4668      	mov	r0, sp
20028d80:	f7ff f9f9 	bl	20028176 <mbedtls_mpi_cmp_int>
20028d84:	b968      	cbnz	r0, 20028da2 <mbedtls_mpi_gcd+0x98>
20028d86:	4629      	mov	r1, r5
20028d88:	a803      	add	r0, sp, #12
20028d8a:	f7ff f889 	bl	20027ea0 <mbedtls_mpi_shift_l>
20028d8e:	2800      	cmp	r0, #0
20028d90:	d1cb      	bne.n	20028d2a <mbedtls_mpi_gcd+0x20>
20028d92:	4630      	mov	r0, r6
20028d94:	a903      	add	r1, sp, #12
20028d96:	f7fe ffab 	bl	20027cf0 <mbedtls_mpi_copy>
20028d9a:	4604      	mov	r4, r0
20028d9c:	2800      	cmp	r0, #0
20028d9e:	d0c6      	beq.n	20028d2e <mbedtls_mpi_gcd+0x24>
20028da0:	e7c3      	b.n	20028d2a <mbedtls_mpi_gcd+0x20>
20028da2:	4668      	mov	r0, sp
20028da4:	f7fe ffe9 	bl	20027d7a <mbedtls_mpi_lsb>
20028da8:	4601      	mov	r1, r0
20028daa:	4668      	mov	r0, sp
20028dac:	f7ff f8ca 	bl	20027f44 <mbedtls_mpi_shift_r>
20028db0:	2800      	cmp	r0, #0
20028db2:	d1ba      	bne.n	20028d2a <mbedtls_mpi_gcd+0x20>
20028db4:	a803      	add	r0, sp, #12
20028db6:	f7fe ffe0 	bl	20027d7a <mbedtls_mpi_lsb>
20028dba:	4601      	mov	r1, r0
20028dbc:	a803      	add	r0, sp, #12
20028dbe:	f7ff f8c1 	bl	20027f44 <mbedtls_mpi_shift_r>
20028dc2:	2800      	cmp	r0, #0
20028dc4:	d1b1      	bne.n	20028d2a <mbedtls_mpi_gcd+0x20>
20028dc6:	4668      	mov	r0, sp
20028dc8:	a903      	add	r1, sp, #12
20028dca:	f7ff f993 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
20028dce:	2800      	cmp	r0, #0
20028dd0:	db0e      	blt.n	20028df0 <mbedtls_mpi_gcd+0xe6>
20028dd2:	4669      	mov	r1, sp
20028dd4:	4668      	mov	r0, sp
20028dd6:	aa03      	add	r2, sp, #12
20028dd8:	f7ff fa3c 	bl	20028254 <mbedtls_mpi_sub_abs>
20028ddc:	4604      	mov	r4, r0
20028dde:	2800      	cmp	r0, #0
20028de0:	d1a5      	bne.n	20028d2e <mbedtls_mpi_gcd+0x24>
20028de2:	2101      	movs	r1, #1
20028de4:	4668      	mov	r0, sp
20028de6:	f7ff f8ad 	bl	20027f44 <mbedtls_mpi_shift_r>
20028dea:	2800      	cmp	r0, #0
20028dec:	d0c6      	beq.n	20028d7c <mbedtls_mpi_gcd+0x72>
20028dee:	e79c      	b.n	20028d2a <mbedtls_mpi_gcd+0x20>
20028df0:	a903      	add	r1, sp, #12
20028df2:	466a      	mov	r2, sp
20028df4:	4608      	mov	r0, r1
20028df6:	f7ff fa2d 	bl	20028254 <mbedtls_mpi_sub_abs>
20028dfa:	4604      	mov	r4, r0
20028dfc:	2800      	cmp	r0, #0
20028dfe:	d196      	bne.n	20028d2e <mbedtls_mpi_gcd+0x24>
20028e00:	2101      	movs	r1, #1
20028e02:	a803      	add	r0, sp, #12
20028e04:	e7ef      	b.n	20028de6 <mbedtls_mpi_gcd+0xdc>

20028e06 <mbedtls_mpi_fill_random>:
20028e06:	b570      	push	{r4, r5, r6, lr}
20028e08:	f5b1 6f80 	cmp.w	r1, #1024	@ 0x400
20028e0c:	4605      	mov	r5, r0
20028e0e:	460c      	mov	r4, r1
20028e10:	4616      	mov	r6, r2
20028e12:	4618      	mov	r0, r3
20028e14:	f5ad 6d80 	sub.w	sp, sp, #1024	@ 0x400
20028e18:	d80f      	bhi.n	20028e3a <mbedtls_mpi_fill_random+0x34>
20028e1a:	460a      	mov	r2, r1
20028e1c:	4669      	mov	r1, sp
20028e1e:	47b0      	blx	r6
20028e20:	b940      	cbnz	r0, 20028e34 <mbedtls_mpi_fill_random+0x2e>
20028e22:	4622      	mov	r2, r4
20028e24:	4669      	mov	r1, sp
20028e26:	4628      	mov	r0, r5
20028e28:	f7fe ffe2 	bl	20027df0 <mbedtls_mpi_read_binary>
20028e2c:	2800      	cmp	r0, #0
20028e2e:	bf18      	it	ne
20028e30:	f06f 000f 	mvnne.w	r0, #15
20028e34:	f50d 6d80 	add.w	sp, sp, #1024	@ 0x400
20028e38:	bd70      	pop	{r4, r5, r6, pc}
20028e3a:	f06f 0003 	mvn.w	r0, #3
20028e3e:	e7f9      	b.n	20028e34 <mbedtls_mpi_fill_random+0x2e>

20028e40 <mbedtls_mpi_inv_mod>:
20028e40:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028e44:	b09f      	sub	sp, #124	@ 0x7c
20028e46:	9001      	str	r0, [sp, #4]
20028e48:	460f      	mov	r7, r1
20028e4a:	4610      	mov	r0, r2
20028e4c:	2101      	movs	r1, #1
20028e4e:	4692      	mov	sl, r2
20028e50:	f7ff f991 	bl	20028176 <mbedtls_mpi_cmp_int>
20028e54:	2800      	cmp	r0, #0
20028e56:	f340 81b5 	ble.w	200291c4 <mbedtls_mpi_inv_mod+0x384>
20028e5a:	2500      	movs	r5, #0
20028e5c:	2601      	movs	r6, #1
20028e5e:	4652      	mov	r2, sl
20028e60:	4639      	mov	r1, r7
20028e62:	a803      	add	r0, sp, #12
20028e64:	e9cd 6506 	strd	r6, r5, [sp, #24]
20028e68:	e9cd 5608 	strd	r5, r6, [sp, #32]
20028e6c:	e9cd 650c 	strd	r6, r5, [sp, #48]	@ 0x30
20028e70:	e9cd 650f 	strd	r6, r5, [sp, #60]	@ 0x3c
20028e74:	e9cd 6503 	strd	r6, r5, [sp, #12]
20028e78:	e9cd 6512 	strd	r6, r5, [sp, #72]	@ 0x48
20028e7c:	e9cd 5614 	strd	r5, r6, [sp, #80]	@ 0x50
20028e80:	e9cd 6518 	strd	r6, r5, [sp, #96]	@ 0x60
20028e84:	e9cd 651b 	strd	r6, r5, [sp, #108]	@ 0x6c
20028e88:	950a      	str	r5, [sp, #40]	@ 0x28
20028e8a:	9505      	str	r5, [sp, #20]
20028e8c:	9516      	str	r5, [sp, #88]	@ 0x58
20028e8e:	f7ff ff3c 	bl	20028d0a <mbedtls_mpi_gcd>
20028e92:	4604      	mov	r4, r0
20028e94:	2800      	cmp	r0, #0
20028e96:	f040 8182 	bne.w	2002919e <mbedtls_mpi_inv_mod+0x35e>
20028e9a:	4631      	mov	r1, r6
20028e9c:	a803      	add	r0, sp, #12
20028e9e:	f7ff f96a 	bl	20028176 <mbedtls_mpi_cmp_int>
20028ea2:	4605      	mov	r5, r0
20028ea4:	2800      	cmp	r0, #0
20028ea6:	f040 8171 	bne.w	2002918c <mbedtls_mpi_inv_mod+0x34c>
20028eaa:	4652      	mov	r2, sl
20028eac:	4639      	mov	r1, r7
20028eae:	a806      	add	r0, sp, #24
20028eb0:	f7ff fce5 	bl	2002887e <mbedtls_mpi_mod_mpi>
20028eb4:	4604      	mov	r4, r0
20028eb6:	2800      	cmp	r0, #0
20028eb8:	f040 8171 	bne.w	2002919e <mbedtls_mpi_inv_mod+0x35e>
20028ebc:	900b      	str	r0, [sp, #44]	@ 0x2c
20028ebe:	a906      	add	r1, sp, #24
20028ec0:	a809      	add	r0, sp, #36	@ 0x24
20028ec2:	f7fe ff15 	bl	20027cf0 <mbedtls_mpi_copy>
20028ec6:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20028eca:	b920      	cbnz	r0, 20028ed6 <mbedtls_mpi_inv_mod+0x96>
20028ecc:	4651      	mov	r1, sl
20028ece:	a812      	add	r0, sp, #72	@ 0x48
20028ed0:	f7fe ff0e 	bl	20027cf0 <mbedtls_mpi_copy>
20028ed4:	b130      	cbz	r0, 20028ee4 <mbedtls_mpi_inv_mod+0xa4>
20028ed6:	f04f 0b00 	mov.w	fp, #0
20028eda:	465d      	mov	r5, fp
20028edc:	46d8      	mov	r8, fp
20028ede:	465e      	mov	r6, fp
20028ee0:	465f      	mov	r7, fp
20028ee2:	e0f5      	b.n	200290d0 <mbedtls_mpi_inv_mod+0x290>
20028ee4:	9017      	str	r0, [sp, #92]	@ 0x5c
20028ee6:	4651      	mov	r1, sl
20028ee8:	a815      	add	r0, sp, #84	@ 0x54
20028eea:	f7fe ff01 	bl	20027cf0 <mbedtls_mpi_copy>
20028eee:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
20028ef2:	2800      	cmp	r0, #0
20028ef4:	f040 8159 	bne.w	200291aa <mbedtls_mpi_inv_mod+0x36a>
20028ef8:	4631      	mov	r1, r6
20028efa:	900e      	str	r0, [sp, #56]	@ 0x38
20028efc:	a80c      	add	r0, sp, #48	@ 0x30
20028efe:	f7fe ff20 	bl	20027d42 <mbedtls_mpi_lset>
20028f02:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20028f04:	4601      	mov	r1, r0
20028f06:	2800      	cmp	r0, #0
20028f08:	f040 8152 	bne.w	200291b0 <mbedtls_mpi_inv_mod+0x370>
20028f0c:	9011      	str	r0, [sp, #68]	@ 0x44
20028f0e:	a80f      	add	r0, sp, #60	@ 0x3c
20028f10:	f7fe ff17 	bl	20027d42 <mbedtls_mpi_lset>
20028f14:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20028f16:	4683      	mov	fp, r0
20028f18:	2800      	cmp	r0, #0
20028f1a:	f040 814d 	bne.w	200291b8 <mbedtls_mpi_inv_mod+0x378>
20028f1e:	4601      	mov	r1, r0
20028f20:	901a      	str	r0, [sp, #104]	@ 0x68
20028f22:	a818      	add	r0, sp, #96	@ 0x60
20028f24:	f7fe ff0d 	bl	20027d42 <mbedtls_mpi_lset>
20028f28:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028f2a:	2800      	cmp	r0, #0
20028f2c:	f040 8147 	bne.w	200291be <mbedtls_mpi_inv_mod+0x37e>
20028f30:	2101      	movs	r1, #1
20028f32:	a81b      	add	r0, sp, #108	@ 0x6c
20028f34:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20028f38:	f7fe ff03 	bl	20027d42 <mbedtls_mpi_lset>
20028f3c:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
20028f40:	2800      	cmp	r0, #0
20028f42:	f040 80c5 	bne.w	200290d0 <mbedtls_mpi_inv_mod+0x290>
20028f46:	f8d9 2000 	ldr.w	r2, [r9]
20028f4a:	07d0      	lsls	r0, r2, #31
20028f4c:	d554      	bpl.n	20028ff8 <mbedtls_mpi_inv_mod+0x1b8>
20028f4e:	f8d8 2000 	ldr.w	r2, [r8]
20028f52:	07d3      	lsls	r3, r2, #31
20028f54:	f140 8083 	bpl.w	2002905e <mbedtls_mpi_inv_mod+0x21e>
20028f58:	a915      	add	r1, sp, #84	@ 0x54
20028f5a:	a809      	add	r0, sp, #36	@ 0x24
20028f5c:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20028f60:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
20028f64:	f7ff f8c6 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
20028f68:	2800      	cmp	r0, #0
20028f6a:	f2c0 80b4 	blt.w	200290d6 <mbedtls_mpi_inv_mod+0x296>
20028f6e:	a909      	add	r1, sp, #36	@ 0x24
20028f70:	4608      	mov	r0, r1
20028f72:	aa15      	add	r2, sp, #84	@ 0x54
20028f74:	f7ff f9d1 	bl	2002831a <mbedtls_mpi_sub_mpi>
20028f78:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20028f7c:	4604      	mov	r4, r0
20028f7e:	2800      	cmp	r0, #0
20028f80:	f040 80d1 	bne.w	20029126 <mbedtls_mpi_inv_mod+0x2e6>
20028f84:	a90c      	add	r1, sp, #48	@ 0x30
20028f86:	4608      	mov	r0, r1
20028f88:	aa18      	add	r2, sp, #96	@ 0x60
20028f8a:	970e      	str	r7, [sp, #56]	@ 0x38
20028f8c:	951a      	str	r5, [sp, #104]	@ 0x68
20028f8e:	f7ff f9c4 	bl	2002831a <mbedtls_mpi_sub_mpi>
20028f92:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20028f94:	4604      	mov	r4, r0
20028f96:	2800      	cmp	r0, #0
20028f98:	f040 80c5 	bne.w	20029126 <mbedtls_mpi_inv_mod+0x2e6>
20028f9c:	a90f      	add	r1, sp, #60	@ 0x3c
20028f9e:	4608      	mov	r0, r1
20028fa0:	aa1b      	add	r2, sp, #108	@ 0x6c
20028fa2:	9611      	str	r6, [sp, #68]	@ 0x44
20028fa4:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20028fa8:	f7ff f9b7 	bl	2002831a <mbedtls_mpi_sub_mpi>
20028fac:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20028fae:	4604      	mov	r4, r0
20028fb0:	2800      	cmp	r0, #0
20028fb2:	f040 80b8 	bne.w	20029126 <mbedtls_mpi_inv_mod+0x2e6>
20028fb6:	2100      	movs	r1, #0
20028fb8:	a809      	add	r0, sp, #36	@ 0x24
20028fba:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20028fbe:	f7ff f8da 	bl	20028176 <mbedtls_mpi_cmp_int>
20028fc2:	2800      	cmp	r0, #0
20028fc4:	d1bf      	bne.n	20028f46 <mbedtls_mpi_inv_mod+0x106>
20028fc6:	2100      	movs	r1, #0
20028fc8:	a818      	add	r0, sp, #96	@ 0x60
20028fca:	951a      	str	r5, [sp, #104]	@ 0x68
20028fcc:	f7ff f8d3 	bl	20028176 <mbedtls_mpi_cmp_int>
20028fd0:	2800      	cmp	r0, #0
20028fd2:	f2c0 809e 	blt.w	20029112 <mbedtls_mpi_inv_mod+0x2d2>
20028fd6:	4651      	mov	r1, sl
20028fd8:	a818      	add	r0, sp, #96	@ 0x60
20028fda:	951a      	str	r5, [sp, #104]	@ 0x68
20028fdc:	f7ff f88a 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
20028fe0:	2800      	cmp	r0, #0
20028fe2:	f280 80c8 	bge.w	20029176 <mbedtls_mpi_inv_mod+0x336>
20028fe6:	9801      	ldr	r0, [sp, #4]
20028fe8:	a918      	add	r1, sp, #96	@ 0x60
20028fea:	f7fe fe81 	bl	20027cf0 <mbedtls_mpi_copy>
20028fee:	1e04      	subs	r4, r0, #0
20028ff0:	bf18      	it	ne
20028ff2:	f06f 040f 	mvnne.w	r4, #15
20028ff6:	e096      	b.n	20029126 <mbedtls_mpi_inv_mod+0x2e6>
20028ff8:	2101      	movs	r1, #1
20028ffa:	a809      	add	r0, sp, #36	@ 0x24
20028ffc:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20029000:	f7fe ffa0 	bl	20027f44 <mbedtls_mpi_shift_r>
20029004:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20029008:	2800      	cmp	r0, #0
2002900a:	d161      	bne.n	200290d0 <mbedtls_mpi_inv_mod+0x290>
2002900c:	683a      	ldr	r2, [r7, #0]
2002900e:	07d3      	lsls	r3, r2, #31
20029010:	d402      	bmi.n	20029018 <mbedtls_mpi_inv_mod+0x1d8>
20029012:	6832      	ldr	r2, [r6, #0]
20029014:	07d4      	lsls	r4, r2, #31
20029016:	d513      	bpl.n	20029040 <mbedtls_mpi_inv_mod+0x200>
20029018:	a90c      	add	r1, sp, #48	@ 0x30
2002901a:	4608      	mov	r0, r1
2002901c:	aa12      	add	r2, sp, #72	@ 0x48
2002901e:	970e      	str	r7, [sp, #56]	@ 0x38
20029020:	f7ff f955 	bl	200282ce <mbedtls_mpi_add_mpi>
20029024:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20029026:	4604      	mov	r4, r0
20029028:	2800      	cmp	r0, #0
2002902a:	d17c      	bne.n	20029126 <mbedtls_mpi_inv_mod+0x2e6>
2002902c:	a90f      	add	r1, sp, #60	@ 0x3c
2002902e:	4608      	mov	r0, r1
20029030:	aa06      	add	r2, sp, #24
20029032:	9611      	str	r6, [sp, #68]	@ 0x44
20029034:	f7ff f971 	bl	2002831a <mbedtls_mpi_sub_mpi>
20029038:	9e11      	ldr	r6, [sp, #68]	@ 0x44
2002903a:	4604      	mov	r4, r0
2002903c:	2800      	cmp	r0, #0
2002903e:	d172      	bne.n	20029126 <mbedtls_mpi_inv_mod+0x2e6>
20029040:	2101      	movs	r1, #1
20029042:	a80c      	add	r0, sp, #48	@ 0x30
20029044:	970e      	str	r7, [sp, #56]	@ 0x38
20029046:	f7fe ff7d 	bl	20027f44 <mbedtls_mpi_shift_r>
2002904a:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
2002904c:	2800      	cmp	r0, #0
2002904e:	d13f      	bne.n	200290d0 <mbedtls_mpi_inv_mod+0x290>
20029050:	2101      	movs	r1, #1
20029052:	a80f      	add	r0, sp, #60	@ 0x3c
20029054:	9611      	str	r6, [sp, #68]	@ 0x44
20029056:	f7fe ff75 	bl	20027f44 <mbedtls_mpi_shift_r>
2002905a:	9e11      	ldr	r6, [sp, #68]	@ 0x44
2002905c:	e770      	b.n	20028f40 <mbedtls_mpi_inv_mod+0x100>
2002905e:	2101      	movs	r1, #1
20029060:	a815      	add	r0, sp, #84	@ 0x54
20029062:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
20029066:	f7fe ff6d 	bl	20027f44 <mbedtls_mpi_shift_r>
2002906a:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
2002906e:	2800      	cmp	r0, #0
20029070:	d12e      	bne.n	200290d0 <mbedtls_mpi_inv_mod+0x290>
20029072:	682a      	ldr	r2, [r5, #0]
20029074:	07d1      	lsls	r1, r2, #31
20029076:	d403      	bmi.n	20029080 <mbedtls_mpi_inv_mod+0x240>
20029078:	f8db 2000 	ldr.w	r2, [fp]
2002907c:	07d2      	lsls	r2, r2, #31
2002907e:	d515      	bpl.n	200290ac <mbedtls_mpi_inv_mod+0x26c>
20029080:	a918      	add	r1, sp, #96	@ 0x60
20029082:	4608      	mov	r0, r1
20029084:	aa12      	add	r2, sp, #72	@ 0x48
20029086:	951a      	str	r5, [sp, #104]	@ 0x68
20029088:	f7ff f921 	bl	200282ce <mbedtls_mpi_add_mpi>
2002908c:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002908e:	4604      	mov	r4, r0
20029090:	2800      	cmp	r0, #0
20029092:	d148      	bne.n	20029126 <mbedtls_mpi_inv_mod+0x2e6>
20029094:	a91b      	add	r1, sp, #108	@ 0x6c
20029096:	4608      	mov	r0, r1
20029098:	aa06      	add	r2, sp, #24
2002909a:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
2002909e:	f7ff f93c 	bl	2002831a <mbedtls_mpi_sub_mpi>
200290a2:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
200290a6:	4604      	mov	r4, r0
200290a8:	2800      	cmp	r0, #0
200290aa:	d13c      	bne.n	20029126 <mbedtls_mpi_inv_mod+0x2e6>
200290ac:	2101      	movs	r1, #1
200290ae:	a818      	add	r0, sp, #96	@ 0x60
200290b0:	951a      	str	r5, [sp, #104]	@ 0x68
200290b2:	f7fe ff47 	bl	20027f44 <mbedtls_mpi_shift_r>
200290b6:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200290b8:	b950      	cbnz	r0, 200290d0 <mbedtls_mpi_inv_mod+0x290>
200290ba:	2101      	movs	r1, #1
200290bc:	a81b      	add	r0, sp, #108	@ 0x6c
200290be:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
200290c2:	f7fe ff3f 	bl	20027f44 <mbedtls_mpi_shift_r>
200290c6:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
200290ca:	2800      	cmp	r0, #0
200290cc:	f43f af3f 	beq.w	20028f4e <mbedtls_mpi_inv_mod+0x10e>
200290d0:	f06f 040f 	mvn.w	r4, #15
200290d4:	e027      	b.n	20029126 <mbedtls_mpi_inv_mod+0x2e6>
200290d6:	a915      	add	r1, sp, #84	@ 0x54
200290d8:	4608      	mov	r0, r1
200290da:	aa09      	add	r2, sp, #36	@ 0x24
200290dc:	f7ff f91d 	bl	2002831a <mbedtls_mpi_sub_mpi>
200290e0:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
200290e4:	4604      	mov	r4, r0
200290e6:	b9f0      	cbnz	r0, 20029126 <mbedtls_mpi_inv_mod+0x2e6>
200290e8:	a918      	add	r1, sp, #96	@ 0x60
200290ea:	4608      	mov	r0, r1
200290ec:	aa0c      	add	r2, sp, #48	@ 0x30
200290ee:	951a      	str	r5, [sp, #104]	@ 0x68
200290f0:	970e      	str	r7, [sp, #56]	@ 0x38
200290f2:	f7ff f912 	bl	2002831a <mbedtls_mpi_sub_mpi>
200290f6:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200290f8:	4604      	mov	r4, r0
200290fa:	b9a0      	cbnz	r0, 20029126 <mbedtls_mpi_inv_mod+0x2e6>
200290fc:	a91b      	add	r1, sp, #108	@ 0x6c
200290fe:	4608      	mov	r0, r1
20029100:	aa0f      	add	r2, sp, #60	@ 0x3c
20029102:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029106:	9611      	str	r6, [sp, #68]	@ 0x44
20029108:	f7ff f907 	bl	2002831a <mbedtls_mpi_sub_mpi>
2002910c:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
20029110:	e74d      	b.n	20028fae <mbedtls_mpi_inv_mod+0x16e>
20029112:	a918      	add	r1, sp, #96	@ 0x60
20029114:	4652      	mov	r2, sl
20029116:	4608      	mov	r0, r1
20029118:	f7ff f8d9 	bl	200282ce <mbedtls_mpi_add_mpi>
2002911c:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002911e:	4604      	mov	r4, r0
20029120:	2800      	cmp	r0, #0
20029122:	f43f af50 	beq.w	20028fc6 <mbedtls_mpi_inv_mod+0x186>
20029126:	a806      	add	r0, sp, #24
20029128:	f7fe fd9d 	bl	20027c66 <mbedtls_mpi_free>
2002912c:	a809      	add	r0, sp, #36	@ 0x24
2002912e:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20029132:	f7fe fd98 	bl	20027c66 <mbedtls_mpi_free>
20029136:	a80c      	add	r0, sp, #48	@ 0x30
20029138:	970e      	str	r7, [sp, #56]	@ 0x38
2002913a:	f7fe fd94 	bl	20027c66 <mbedtls_mpi_free>
2002913e:	a80f      	add	r0, sp, #60	@ 0x3c
20029140:	9611      	str	r6, [sp, #68]	@ 0x44
20029142:	f7fe fd90 	bl	20027c66 <mbedtls_mpi_free>
20029146:	a803      	add	r0, sp, #12
20029148:	f7fe fd8d 	bl	20027c66 <mbedtls_mpi_free>
2002914c:	a812      	add	r0, sp, #72	@ 0x48
2002914e:	f7fe fd8a 	bl	20027c66 <mbedtls_mpi_free>
20029152:	a815      	add	r0, sp, #84	@ 0x54
20029154:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
20029158:	f7fe fd85 	bl	20027c66 <mbedtls_mpi_free>
2002915c:	a818      	add	r0, sp, #96	@ 0x60
2002915e:	951a      	str	r5, [sp, #104]	@ 0x68
20029160:	f7fe fd81 	bl	20027c66 <mbedtls_mpi_free>
20029164:	a81b      	add	r0, sp, #108	@ 0x6c
20029166:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
2002916a:	f7fe fd7c 	bl	20027c66 <mbedtls_mpi_free>
2002916e:	4620      	mov	r0, r4
20029170:	b01f      	add	sp, #124	@ 0x7c
20029172:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029176:	a918      	add	r1, sp, #96	@ 0x60
20029178:	4652      	mov	r2, sl
2002917a:	4608      	mov	r0, r1
2002917c:	f7ff f8cd 	bl	2002831a <mbedtls_mpi_sub_mpi>
20029180:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029182:	4604      	mov	r4, r0
20029184:	2800      	cmp	r0, #0
20029186:	f43f af26 	beq.w	20028fd6 <mbedtls_mpi_inv_mod+0x196>
2002918a:	e7cc      	b.n	20029126 <mbedtls_mpi_inv_mod+0x2e6>
2002918c:	46a3      	mov	fp, r4
2002918e:	4625      	mov	r5, r4
20029190:	46a0      	mov	r8, r4
20029192:	4626      	mov	r6, r4
20029194:	4627      	mov	r7, r4
20029196:	46a1      	mov	r9, r4
20029198:	f06f 040d 	mvn.w	r4, #13
2002919c:	e7c3      	b.n	20029126 <mbedtls_mpi_inv_mod+0x2e6>
2002919e:	46ab      	mov	fp, r5
200291a0:	46a8      	mov	r8, r5
200291a2:	462e      	mov	r6, r5
200291a4:	462f      	mov	r7, r5
200291a6:	46a9      	mov	r9, r5
200291a8:	e7bd      	b.n	20029126 <mbedtls_mpi_inv_mod+0x2e6>
200291aa:	46a3      	mov	fp, r4
200291ac:	4625      	mov	r5, r4
200291ae:	e696      	b.n	20028ede <mbedtls_mpi_inv_mod+0x9e>
200291b0:	46a3      	mov	fp, r4
200291b2:	4625      	mov	r5, r4
200291b4:	4626      	mov	r6, r4
200291b6:	e78b      	b.n	200290d0 <mbedtls_mpi_inv_mod+0x290>
200291b8:	46a3      	mov	fp, r4
200291ba:	4625      	mov	r5, r4
200291bc:	e788      	b.n	200290d0 <mbedtls_mpi_inv_mod+0x290>
200291be:	f04f 0b00 	mov.w	fp, #0
200291c2:	e785      	b.n	200290d0 <mbedtls_mpi_inv_mod+0x290>
200291c4:	f06f 0403 	mvn.w	r4, #3
200291c8:	e7d1      	b.n	2002916e <mbedtls_mpi_inv_mod+0x32e>
	...

200291cc <mbedtls_oid_get_pk_alg>:
200291cc:	b570      	push	{r4, r5, r6, lr}
200291ce:	460e      	mov	r6, r1
200291d0:	4605      	mov	r5, r0
200291d2:	b110      	cbz	r0, 200291da <mbedtls_oid_get_pk_alg+0xe>
200291d4:	4c09      	ldr	r4, [pc, #36]	@ (200291fc <mbedtls_oid_get_pk_alg+0x30>)
200291d6:	6820      	ldr	r0, [r4, #0]
200291d8:	b910      	cbnz	r0, 200291e0 <mbedtls_oid_get_pk_alg+0x14>
200291da:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
200291de:	bd70      	pop	{r4, r5, r6, pc}
200291e0:	686b      	ldr	r3, [r5, #4]
200291e2:	6862      	ldr	r2, [r4, #4]
200291e4:	429a      	cmp	r2, r3
200291e6:	d103      	bne.n	200291f0 <mbedtls_oid_get_pk_alg+0x24>
200291e8:	68a9      	ldr	r1, [r5, #8]
200291ea:	f001 fad1 	bl	2002a790 <memcmp>
200291ee:	b108      	cbz	r0, 200291f4 <mbedtls_oid_get_pk_alg+0x28>
200291f0:	3414      	adds	r4, #20
200291f2:	e7f0      	b.n	200291d6 <mbedtls_oid_get_pk_alg+0xa>
200291f4:	7c23      	ldrb	r3, [r4, #16]
200291f6:	7033      	strb	r3, [r6, #0]
200291f8:	e7f1      	b.n	200291de <mbedtls_oid_get_pk_alg+0x12>
200291fa:	bf00      	nop
200291fc:	2002c19c 	.word	0x2002c19c

20029200 <mbedtls_oid_get_md_alg>:
20029200:	b570      	push	{r4, r5, r6, lr}
20029202:	460e      	mov	r6, r1
20029204:	4605      	mov	r5, r0
20029206:	b110      	cbz	r0, 2002920e <mbedtls_oid_get_md_alg+0xe>
20029208:	4c09      	ldr	r4, [pc, #36]	@ (20029230 <mbedtls_oid_get_md_alg+0x30>)
2002920a:	6820      	ldr	r0, [r4, #0]
2002920c:	b910      	cbnz	r0, 20029214 <mbedtls_oid_get_md_alg+0x14>
2002920e:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
20029212:	bd70      	pop	{r4, r5, r6, pc}
20029214:	686b      	ldr	r3, [r5, #4]
20029216:	6862      	ldr	r2, [r4, #4]
20029218:	429a      	cmp	r2, r3
2002921a:	d103      	bne.n	20029224 <mbedtls_oid_get_md_alg+0x24>
2002921c:	68a9      	ldr	r1, [r5, #8]
2002921e:	f001 fab7 	bl	2002a790 <memcmp>
20029222:	b108      	cbz	r0, 20029228 <mbedtls_oid_get_md_alg+0x28>
20029224:	3414      	adds	r4, #20
20029226:	e7f0      	b.n	2002920a <mbedtls_oid_get_md_alg+0xa>
20029228:	7c23      	ldrb	r3, [r4, #16]
2002922a:	7033      	strb	r3, [r6, #0]
2002922c:	e7f1      	b.n	20029212 <mbedtls_oid_get_md_alg+0x12>
2002922e:	bf00      	nop
20029230:	2002c138 	.word	0x2002c138

20029234 <mbedtls_oid_get_oid_by_md>:
20029234:	b530      	push	{r4, r5, lr}
20029236:	4b08      	ldr	r3, [pc, #32]	@ (20029258 <mbedtls_oid_get_oid_by_md+0x24>)
20029238:	681c      	ldr	r4, [r3, #0]
2002923a:	b914      	cbnz	r4, 20029242 <mbedtls_oid_get_oid_by_md+0xe>
2002923c:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
20029240:	e006      	b.n	20029250 <mbedtls_oid_get_oid_by_md+0x1c>
20029242:	7c1d      	ldrb	r5, [r3, #16]
20029244:	4285      	cmp	r5, r0
20029246:	d104      	bne.n	20029252 <mbedtls_oid_get_oid_by_md+0x1e>
20029248:	2000      	movs	r0, #0
2002924a:	685b      	ldr	r3, [r3, #4]
2002924c:	600c      	str	r4, [r1, #0]
2002924e:	6013      	str	r3, [r2, #0]
20029250:	bd30      	pop	{r4, r5, pc}
20029252:	3314      	adds	r3, #20
20029254:	e7f0      	b.n	20029238 <mbedtls_oid_get_oid_by_md+0x4>
20029256:	bf00      	nop
20029258:	2002c138 	.word	0x2002c138

2002925c <mbedtls_pk_init>:
2002925c:	b110      	cbz	r0, 20029264 <mbedtls_pk_init+0x8>
2002925e:	2300      	movs	r3, #0
20029260:	e9c0 3300 	strd	r3, r3, [r0]
20029264:	4770      	bx	lr

20029266 <mbedtls_pk_free>:
20029266:	b510      	push	{r4, lr}
20029268:	4604      	mov	r4, r0
2002926a:	b160      	cbz	r0, 20029286 <mbedtls_pk_free+0x20>
2002926c:	6803      	ldr	r3, [r0, #0]
2002926e:	b153      	cbz	r3, 20029286 <mbedtls_pk_free+0x20>
20029270:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
20029272:	6840      	ldr	r0, [r0, #4]
20029274:	4798      	blx	r3
20029276:	2100      	movs	r1, #0
20029278:	f104 0308 	add.w	r3, r4, #8
2002927c:	4622      	mov	r2, r4
2002927e:	3401      	adds	r4, #1
20029280:	429c      	cmp	r4, r3
20029282:	7011      	strb	r1, [r2, #0]
20029284:	d1fa      	bne.n	2002927c <mbedtls_pk_free+0x16>
20029286:	bd10      	pop	{r4, pc}

20029288 <mbedtls_pk_info_from_type>:
20029288:	2801      	cmp	r0, #1
2002928a:	4802      	ldr	r0, [pc, #8]	@ (20029294 <mbedtls_pk_info_from_type+0xc>)
2002928c:	bf18      	it	ne
2002928e:	2000      	movne	r0, #0
20029290:	4770      	bx	lr
20029292:	bf00      	nop
20029294:	2002c1ec 	.word	0x2002c1ec

20029298 <mbedtls_pk_setup>:
20029298:	b570      	push	{r4, r5, r6, lr}
2002929a:	460e      	mov	r6, r1
2002929c:	4605      	mov	r5, r0
2002929e:	b148      	cbz	r0, 200292b4 <mbedtls_pk_setup+0x1c>
200292a0:	b141      	cbz	r1, 200292b4 <mbedtls_pk_setup+0x1c>
200292a2:	6804      	ldr	r4, [r0, #0]
200292a4:	b934      	cbnz	r4, 200292b4 <mbedtls_pk_setup+0x1c>
200292a6:	6a4b      	ldr	r3, [r1, #36]	@ 0x24
200292a8:	4798      	blx	r3
200292aa:	6068      	str	r0, [r5, #4]
200292ac:	b120      	cbz	r0, 200292b8 <mbedtls_pk_setup+0x20>
200292ae:	4620      	mov	r0, r4
200292b0:	602e      	str	r6, [r5, #0]
200292b2:	bd70      	pop	{r4, r5, r6, pc}
200292b4:	4801      	ldr	r0, [pc, #4]	@ (200292bc <mbedtls_pk_setup+0x24>)
200292b6:	e7fc      	b.n	200292b2 <mbedtls_pk_setup+0x1a>
200292b8:	4801      	ldr	r0, [pc, #4]	@ (200292c0 <mbedtls_pk_setup+0x28>)
200292ba:	e7fa      	b.n	200292b2 <mbedtls_pk_setup+0x1a>
200292bc:	ffffc180 	.word	0xffffc180
200292c0:	ffffc080 	.word	0xffffc080

200292c4 <mbedtls_pk_verify>:
200292c4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200292c8:	460d      	mov	r5, r1
200292ca:	e9dd 8908 	ldrd	r8, r9, [sp, #32]
200292ce:	4616      	mov	r6, r2
200292d0:	4604      	mov	r4, r0
200292d2:	b910      	cbnz	r0, 200292da <mbedtls_pk_verify+0x16>
200292d4:	480e      	ldr	r0, [pc, #56]	@ (20029310 <mbedtls_pk_verify+0x4c>)
200292d6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
200292da:	6802      	ldr	r2, [r0, #0]
200292dc:	2a00      	cmp	r2, #0
200292de:	d0f9      	beq.n	200292d4 <mbedtls_pk_verify+0x10>
200292e0:	b93b      	cbnz	r3, 200292f2 <mbedtls_pk_verify+0x2e>
200292e2:	4608      	mov	r0, r1
200292e4:	f7fc fd52 	bl	20025d8c <mbedtls_md_info_from_type>
200292e8:	2800      	cmp	r0, #0
200292ea:	d0f3      	beq.n	200292d4 <mbedtls_pk_verify+0x10>
200292ec:	f7fc fd5a 	bl	20025da4 <mbedtls_md_get_size>
200292f0:	4603      	mov	r3, r0
200292f2:	6822      	ldr	r2, [r4, #0]
200292f4:	6917      	ldr	r7, [r2, #16]
200292f6:	b147      	cbz	r7, 2002930a <mbedtls_pk_verify+0x46>
200292f8:	e9cd 8908 	strd	r8, r9, [sp, #32]
200292fc:	4632      	mov	r2, r6
200292fe:	4629      	mov	r1, r5
20029300:	46bc      	mov	ip, r7
20029302:	6860      	ldr	r0, [r4, #4]
20029304:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20029308:	4760      	bx	ip
2002930a:	4802      	ldr	r0, [pc, #8]	@ (20029314 <mbedtls_pk_verify+0x50>)
2002930c:	e7e3      	b.n	200292d6 <mbedtls_pk_verify+0x12>
2002930e:	bf00      	nop
20029310:	ffffc180 	.word	0xffffc180
20029314:	ffffc100 	.word	0xffffc100

20029318 <pk_get_pk_alg>:
20029318:	b530      	push	{r4, r5, lr}
2002931a:	4615      	mov	r5, r2
2002931c:	2200      	movs	r2, #0
2002931e:	b085      	sub	sp, #20
20029320:	e9c3 2200 	strd	r2, r2, [r3]
20029324:	609a      	str	r2, [r3, #8]
20029326:	aa01      	add	r2, sp, #4
20029328:	461c      	mov	r4, r3
2002932a:	f7fe faa2 	bl	20027872 <mbedtls_asn1_get_alg>
2002932e:	b118      	cbz	r0, 20029338 <pk_get_pk_alg+0x20>
20029330:	f5a0 506a 	sub.w	r0, r0, #14976	@ 0x3a80
20029334:	b005      	add	sp, #20
20029336:	bd30      	pop	{r4, r5, pc}
20029338:	4629      	mov	r1, r5
2002933a:	a801      	add	r0, sp, #4
2002933c:	f7ff ff46 	bl	200291cc <mbedtls_oid_get_pk_alg>
20029340:	b960      	cbnz	r0, 2002935c <pk_get_pk_alg+0x44>
20029342:	782b      	ldrb	r3, [r5, #0]
20029344:	2b01      	cmp	r3, #1
20029346:	d1f5      	bne.n	20029334 <pk_get_pk_alg+0x1c>
20029348:	6823      	ldr	r3, [r4, #0]
2002934a:	2b05      	cmp	r3, #5
2002934c:	d000      	beq.n	20029350 <pk_get_pk_alg+0x38>
2002934e:	b93b      	cbnz	r3, 20029360 <pk_get_pk_alg+0x48>
20029350:	6862      	ldr	r2, [r4, #4]
20029352:	4b04      	ldr	r3, [pc, #16]	@ (20029364 <pk_get_pk_alg+0x4c>)
20029354:	2a00      	cmp	r2, #0
20029356:	bf18      	it	ne
20029358:	4618      	movne	r0, r3
2002935a:	e7eb      	b.n	20029334 <pk_get_pk_alg+0x1c>
2002935c:	4802      	ldr	r0, [pc, #8]	@ (20029368 <pk_get_pk_alg+0x50>)
2002935e:	e7e9      	b.n	20029334 <pk_get_pk_alg+0x1c>
20029360:	4800      	ldr	r0, [pc, #0]	@ (20029364 <pk_get_pk_alg+0x4c>)
20029362:	e7e7      	b.n	20029334 <pk_get_pk_alg+0x1c>
20029364:	ffffc580 	.word	0xffffc580
20029368:	ffffc380 	.word	0xffffc380

2002936c <mbedtls_pk_parse_subpubkey>:
2002936c:	2300      	movs	r3, #0
2002936e:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
20029372:	b087      	sub	sp, #28
20029374:	4690      	mov	r8, r2
20029376:	f88d 3003 	strb.w	r3, [sp, #3]
2002937a:	aa01      	add	r2, sp, #4
2002937c:	2330      	movs	r3, #48	@ 0x30
2002937e:	4606      	mov	r6, r0
20029380:	f7fe fa3c 	bl	200277fc <mbedtls_asn1_get_tag>
20029384:	b128      	cbz	r0, 20029392 <mbedtls_pk_parse_subpubkey+0x26>
20029386:	f5a0 5474 	sub.w	r4, r0, #15616	@ 0x3d00
2002938a:	4620      	mov	r0, r4
2002938c:	b007      	add	sp, #28
2002938e:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
20029392:	9b01      	ldr	r3, [sp, #4]
20029394:	6837      	ldr	r7, [r6, #0]
20029396:	4630      	mov	r0, r6
20029398:	441f      	add	r7, r3
2002939a:	4639      	mov	r1, r7
2002939c:	ab03      	add	r3, sp, #12
2002939e:	f10d 0203 	add.w	r2, sp, #3
200293a2:	f7ff ffb9 	bl	20029318 <pk_get_pk_alg>
200293a6:	4604      	mov	r4, r0
200293a8:	2800      	cmp	r0, #0
200293aa:	d1ee      	bne.n	2002938a <mbedtls_pk_parse_subpubkey+0x1e>
200293ac:	4639      	mov	r1, r7
200293ae:	4630      	mov	r0, r6
200293b0:	aa01      	add	r2, sp, #4
200293b2:	f7fe fa4a 	bl	2002784a <mbedtls_asn1_get_bitstring_null>
200293b6:	b110      	cbz	r0, 200293be <mbedtls_pk_parse_subpubkey+0x52>
200293b8:	f5a0 546c 	sub.w	r4, r0, #15104	@ 0x3b00
200293bc:	e7e5      	b.n	2002938a <mbedtls_pk_parse_subpubkey+0x1e>
200293be:	6833      	ldr	r3, [r6, #0]
200293c0:	9a01      	ldr	r2, [sp, #4]
200293c2:	4413      	add	r3, r2
200293c4:	429f      	cmp	r7, r3
200293c6:	d14b      	bne.n	20029460 <mbedtls_pk_parse_subpubkey+0xf4>
200293c8:	f89d 0003 	ldrb.w	r0, [sp, #3]
200293cc:	f7ff ff5c 	bl	20029288 <mbedtls_pk_info_from_type>
200293d0:	4601      	mov	r1, r0
200293d2:	2800      	cmp	r0, #0
200293d4:	d046      	beq.n	20029464 <mbedtls_pk_parse_subpubkey+0xf8>
200293d6:	4640      	mov	r0, r8
200293d8:	f7ff ff5e 	bl	20029298 <mbedtls_pk_setup>
200293dc:	4604      	mov	r4, r0
200293de:	2800      	cmp	r0, #0
200293e0:	d1d3      	bne.n	2002938a <mbedtls_pk_parse_subpubkey+0x1e>
200293e2:	f89d 3003 	ldrb.w	r3, [sp, #3]
200293e6:	2b01      	cmp	r3, #1
200293e8:	d138      	bne.n	2002945c <mbedtls_pk_parse_subpubkey+0xf0>
200293ea:	2330      	movs	r3, #48	@ 0x30
200293ec:	4639      	mov	r1, r7
200293ee:	4630      	mov	r0, r6
200293f0:	aa02      	add	r2, sp, #8
200293f2:	f8d8 5004 	ldr.w	r5, [r8, #4]
200293f6:	f7fe fa01 	bl	200277fc <mbedtls_asn1_get_tag>
200293fa:	b138      	cbz	r0, 2002940c <mbedtls_pk_parse_subpubkey+0xa0>
200293fc:	f5a0 556c 	sub.w	r5, r0, #15104	@ 0x3b00
20029400:	bb3d      	cbnz	r5, 20029452 <mbedtls_pk_parse_subpubkey+0xe6>
20029402:	6833      	ldr	r3, [r6, #0]
20029404:	42bb      	cmp	r3, r7
20029406:	d0c0      	beq.n	2002938a <mbedtls_pk_parse_subpubkey+0x1e>
20029408:	4d17      	ldr	r5, [pc, #92]	@ (20029468 <mbedtls_pk_parse_subpubkey+0xfc>)
2002940a:	e022      	b.n	20029452 <mbedtls_pk_parse_subpubkey+0xe6>
2002940c:	6833      	ldr	r3, [r6, #0]
2002940e:	9a02      	ldr	r2, [sp, #8]
20029410:	4413      	add	r3, r2
20029412:	429f      	cmp	r7, r3
20029414:	d1f8      	bne.n	20029408 <mbedtls_pk_parse_subpubkey+0x9c>
20029416:	f105 0a08 	add.w	sl, r5, #8
2002941a:	4652      	mov	r2, sl
2002941c:	4639      	mov	r1, r7
2002941e:	4630      	mov	r0, r6
20029420:	f7fe fa00 	bl	20027824 <mbedtls_asn1_get_mpi>
20029424:	2800      	cmp	r0, #0
20029426:	d1e9      	bne.n	200293fc <mbedtls_pk_parse_subpubkey+0x90>
20029428:	4639      	mov	r1, r7
2002942a:	4630      	mov	r0, r6
2002942c:	f105 0214 	add.w	r2, r5, #20
20029430:	f7fe f9f8 	bl	20027824 <mbedtls_asn1_get_mpi>
20029434:	2800      	cmp	r0, #0
20029436:	d1e1      	bne.n	200293fc <mbedtls_pk_parse_subpubkey+0x90>
20029438:	6833      	ldr	r3, [r6, #0]
2002943a:	429f      	cmp	r7, r3
2002943c:	d1e4      	bne.n	20029408 <mbedtls_pk_parse_subpubkey+0x9c>
2002943e:	4628      	mov	r0, r5
20029440:	f000 f8c4 	bl	200295cc <mbedtls_rsa_check_pubkey>
20029444:	b920      	cbnz	r0, 20029450 <mbedtls_pk_parse_subpubkey+0xe4>
20029446:	4650      	mov	r0, sl
20029448:	f7fe fccc 	bl	20027de4 <mbedtls_mpi_size>
2002944c:	6068      	str	r0, [r5, #4]
2002944e:	e7d8      	b.n	20029402 <mbedtls_pk_parse_subpubkey+0x96>
20029450:	4d06      	ldr	r5, [pc, #24]	@ (2002946c <mbedtls_pk_parse_subpubkey+0x100>)
20029452:	4640      	mov	r0, r8
20029454:	f7ff ff07 	bl	20029266 <mbedtls_pk_free>
20029458:	462c      	mov	r4, r5
2002945a:	e796      	b.n	2002938a <mbedtls_pk_parse_subpubkey+0x1e>
2002945c:	4d04      	ldr	r5, [pc, #16]	@ (20029470 <mbedtls_pk_parse_subpubkey+0x104>)
2002945e:	e7f8      	b.n	20029452 <mbedtls_pk_parse_subpubkey+0xe6>
20029460:	4c01      	ldr	r4, [pc, #4]	@ (20029468 <mbedtls_pk_parse_subpubkey+0xfc>)
20029462:	e792      	b.n	2002938a <mbedtls_pk_parse_subpubkey+0x1e>
20029464:	4c02      	ldr	r4, [pc, #8]	@ (20029470 <mbedtls_pk_parse_subpubkey+0x104>)
20029466:	e790      	b.n	2002938a <mbedtls_pk_parse_subpubkey+0x1e>
20029468:	ffffc49a 	.word	0xffffc49a
2002946c:	ffffc500 	.word	0xffffc500
20029470:	ffffc380 	.word	0xffffc380

20029474 <mbedtls_pk_parse_public_key>:
20029474:	4613      	mov	r3, r2
20029476:	b507      	push	{r0, r1, r2, lr}
20029478:	4602      	mov	r2, r0
2002947a:	9101      	str	r1, [sp, #4]
2002947c:	a801      	add	r0, sp, #4
2002947e:	4419      	add	r1, r3
20029480:	f7ff ff74 	bl	2002936c <mbedtls_pk_parse_subpubkey>
20029484:	b003      	add	sp, #12
20029486:	f85d fb04 	ldr.w	pc, [sp], #4

2002948a <rsa_can_do>:
2002948a:	2801      	cmp	r0, #1
2002948c:	d002      	beq.n	20029494 <rsa_can_do+0xa>
2002948e:	1f83      	subs	r3, r0, #6
20029490:	4258      	negs	r0, r3
20029492:	4158      	adcs	r0, r3
20029494:	4770      	bx	lr

20029496 <rsa_get_bitlen>:
20029496:	6840      	ldr	r0, [r0, #4]
20029498:	00c0      	lsls	r0, r0, #3
2002949a:	4770      	bx	lr

2002949c <rsa_debug>:
2002949c:	2301      	movs	r3, #1
2002949e:	4a06      	ldr	r2, [pc, #24]	@ (200294b8 <rsa_debug+0x1c>)
200294a0:	700b      	strb	r3, [r1, #0]
200294a2:	730b      	strb	r3, [r1, #12]
200294a4:	4b05      	ldr	r3, [pc, #20]	@ (200294bc <rsa_debug+0x20>)
200294a6:	604a      	str	r2, [r1, #4]
200294a8:	f100 0208 	add.w	r2, r0, #8
200294ac:	3014      	adds	r0, #20
200294ae:	608a      	str	r2, [r1, #8]
200294b0:	610b      	str	r3, [r1, #16]
200294b2:	6148      	str	r0, [r1, #20]
200294b4:	4770      	bx	lr
200294b6:	bf00      	nop
200294b8:	2002afcc 	.word	0x2002afcc
200294bc:	2002afd2 	.word	0x2002afd2

200294c0 <rsa_free_wrap>:
200294c0:	b510      	push	{r4, lr}
200294c2:	4604      	mov	r4, r0
200294c4:	f000 fe9a 	bl	2002a1fc <mbedtls_rsa_free>
200294c8:	4620      	mov	r0, r4
200294ca:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200294ce:	f001 b8a9 	b.w	2002a624 <free>

200294d2 <rsa_alloc_wrap>:
200294d2:	b510      	push	{r4, lr}
200294d4:	21ac      	movs	r1, #172	@ 0xac
200294d6:	2001      	movs	r0, #1
200294d8:	f001 f888 	bl	2002a5ec <calloc>
200294dc:	4604      	mov	r4, r0
200294de:	b118      	cbz	r0, 200294e8 <rsa_alloc_wrap+0x16>
200294e0:	2200      	movs	r2, #0
200294e2:	4611      	mov	r1, r2
200294e4:	f000 f864 	bl	200295b0 <mbedtls_rsa_init>
200294e8:	4620      	mov	r0, r4
200294ea:	bd10      	pop	{r4, pc}

200294ec <rsa_check_pair_wrap>:
200294ec:	f000 b99e 	b.w	2002982c <mbedtls_rsa_check_pub_priv>

200294f0 <rsa_encrypt_wrap>:
200294f0:	b4f0      	push	{r4, r5, r6, r7}
200294f2:	9f04      	ldr	r7, [sp, #16]
200294f4:	6846      	ldr	r6, [r0, #4]
200294f6:	460d      	mov	r5, r1
200294f8:	603e      	str	r6, [r7, #0]
200294fa:	9f05      	ldr	r7, [sp, #20]
200294fc:	4614      	mov	r4, r2
200294fe:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
20029502:	42be      	cmp	r6, r7
20029504:	d806      	bhi.n	20029514 <rsa_encrypt_wrap+0x24>
20029506:	e9cd 5305 	strd	r5, r3, [sp, #20]
2002950a:	9404      	str	r4, [sp, #16]
2002950c:	2300      	movs	r3, #0
2002950e:	bcf0      	pop	{r4, r5, r6, r7}
20029510:	f000 bbe4 	b.w	20029cdc <mbedtls_rsa_pkcs1_encrypt>
20029514:	4801      	ldr	r0, [pc, #4]	@ (2002951c <rsa_encrypt_wrap+0x2c>)
20029516:	bcf0      	pop	{r4, r5, r6, r7}
20029518:	4770      	bx	lr
2002951a:	bf00      	nop
2002951c:	ffffbc00 	.word	0xffffbc00

20029520 <rsa_decrypt_wrap>:
20029520:	b4f0      	push	{r4, r5, r6, r7}
20029522:	4617      	mov	r7, r2
20029524:	e9dd 5604 	ldrd	r5, r6, [sp, #16]
20029528:	f8d0 c004 	ldr.w	ip, [r0, #4]
2002952c:	460c      	mov	r4, r1
2002952e:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
20029532:	45bc      	cmp	ip, r7
20029534:	d107      	bne.n	20029546 <rsa_decrypt_wrap+0x26>
20029536:	e9cd 3606 	strd	r3, r6, [sp, #24]
2002953a:	e9cd 5404 	strd	r5, r4, [sp, #16]
2002953e:	bcf0      	pop	{r4, r5, r6, r7}
20029540:	2301      	movs	r3, #1
20029542:	f000 bc71 	b.w	20029e28 <mbedtls_rsa_pkcs1_decrypt>
20029546:	4801      	ldr	r0, [pc, #4]	@ (2002954c <rsa_decrypt_wrap+0x2c>)
20029548:	bcf0      	pop	{r4, r5, r6, r7}
2002954a:	4770      	bx	lr
2002954c:	ffffbf80 	.word	0xffffbf80

20029550 <rsa_sign_wrap>:
20029550:	b4f0      	push	{r4, r5, r6, r7}
20029552:	460c      	mov	r4, r1
20029554:	4615      	mov	r5, r2
20029556:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
2002955a:	6847      	ldr	r7, [r0, #4]
2002955c:	9e05      	ldr	r6, [sp, #20]
2002955e:	6037      	str	r7, [r6, #0]
20029560:	9e04      	ldr	r6, [sp, #16]
20029562:	e9cd 4304 	strd	r4, r3, [sp, #16]
20029566:	e9cd 5606 	strd	r5, r6, [sp, #24]
2002956a:	bcf0      	pop	{r4, r5, r6, r7}
2002956c:	2301      	movs	r3, #1
2002956e:	f000 bd3d 	b.w	20029fec <mbedtls_rsa_pkcs1_sign>
	...

20029574 <rsa_verify_wrap>:
20029574:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20029576:	9d09      	ldr	r5, [sp, #36]	@ 0x24
20029578:	6846      	ldr	r6, [r0, #4]
2002957a:	4604      	mov	r4, r0
2002957c:	42ae      	cmp	r6, r5
2002957e:	d811      	bhi.n	200295a4 <rsa_verify_wrap+0x30>
20029580:	e9cd 1300 	strd	r1, r3, [sp]
20029584:	2300      	movs	r3, #0
20029586:	9e08      	ldr	r6, [sp, #32]
20029588:	4619      	mov	r1, r3
2002958a:	e9cd 2602 	strd	r2, r6, [sp, #8]
2002958e:	461a      	mov	r2, r3
20029590:	f000 fe1c 	bl	2002a1cc <mbedtls_rsa_pkcs1_verify>
20029594:	b920      	cbnz	r0, 200295a0 <rsa_verify_wrap+0x2c>
20029596:	6862      	ldr	r2, [r4, #4]
20029598:	4b03      	ldr	r3, [pc, #12]	@ (200295a8 <rsa_verify_wrap+0x34>)
2002959a:	42aa      	cmp	r2, r5
2002959c:	bf38      	it	cc
2002959e:	4618      	movcc	r0, r3
200295a0:	b004      	add	sp, #16
200295a2:	bd70      	pop	{r4, r5, r6, pc}
200295a4:	4801      	ldr	r0, [pc, #4]	@ (200295ac <rsa_verify_wrap+0x38>)
200295a6:	e7fb      	b.n	200295a0 <rsa_verify_wrap+0x2c>
200295a8:	ffffc700 	.word	0xffffc700
200295ac:	ffffbc80 	.word	0xffffbc80

200295b0 <mbedtls_rsa_init>:
200295b0:	b570      	push	{r4, r5, r6, lr}
200295b2:	4604      	mov	r4, r0
200295b4:	460e      	mov	r6, r1
200295b6:	4615      	mov	r5, r2
200295b8:	2100      	movs	r1, #0
200295ba:	22ac      	movs	r2, #172	@ 0xac
200295bc:	f001 f8f8 	bl	2002a7b0 <memset>
200295c0:	e9c4 6529 	strd	r6, r5, [r4, #164]	@ 0xa4
200295c4:	bd70      	pop	{r4, r5, r6, pc}

200295c6 <mbedtls_rsa_set_padding>:
200295c6:	e9c0 1229 	strd	r1, r2, [r0, #164]	@ 0xa4
200295ca:	4770      	bx	lr

200295cc <mbedtls_rsa_check_pubkey>:
200295cc:	6902      	ldr	r2, [r0, #16]
200295ce:	b538      	push	{r3, r4, r5, lr}
200295d0:	4604      	mov	r4, r0
200295d2:	b10a      	cbz	r2, 200295d8 <mbedtls_rsa_check_pubkey+0xc>
200295d4:	69c3      	ldr	r3, [r0, #28]
200295d6:	b90b      	cbnz	r3, 200295dc <mbedtls_rsa_check_pubkey+0x10>
200295d8:	4811      	ldr	r0, [pc, #68]	@ (20029620 <mbedtls_rsa_check_pubkey+0x54>)
200295da:	bd38      	pop	{r3, r4, r5, pc}
200295dc:	6812      	ldr	r2, [r2, #0]
200295de:	07d2      	lsls	r2, r2, #31
200295e0:	d5fa      	bpl.n	200295d8 <mbedtls_rsa_check_pubkey+0xc>
200295e2:	681b      	ldr	r3, [r3, #0]
200295e4:	07db      	lsls	r3, r3, #31
200295e6:	d5f7      	bpl.n	200295d8 <mbedtls_rsa_check_pubkey+0xc>
200295e8:	f100 0508 	add.w	r5, r0, #8
200295ec:	4628      	mov	r0, r5
200295ee:	f7fe fbdc 	bl	20027daa <mbedtls_mpi_bitlen>
200295f2:	287f      	cmp	r0, #127	@ 0x7f
200295f4:	d9f0      	bls.n	200295d8 <mbedtls_rsa_check_pubkey+0xc>
200295f6:	4628      	mov	r0, r5
200295f8:	f7fe fbd7 	bl	20027daa <mbedtls_mpi_bitlen>
200295fc:	f5b0 5f00 	cmp.w	r0, #8192	@ 0x2000
20029600:	d8ea      	bhi.n	200295d8 <mbedtls_rsa_check_pubkey+0xc>
20029602:	3414      	adds	r4, #20
20029604:	4620      	mov	r0, r4
20029606:	f7fe fbd0 	bl	20027daa <mbedtls_mpi_bitlen>
2002960a:	2801      	cmp	r0, #1
2002960c:	d9e4      	bls.n	200295d8 <mbedtls_rsa_check_pubkey+0xc>
2002960e:	4629      	mov	r1, r5
20029610:	4620      	mov	r0, r4
20029612:	f7fe fd6f 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
20029616:	2800      	cmp	r0, #0
20029618:	dade      	bge.n	200295d8 <mbedtls_rsa_check_pubkey+0xc>
2002961a:	2000      	movs	r0, #0
2002961c:	e7dd      	b.n	200295da <mbedtls_rsa_check_pubkey+0xe>
2002961e:	bf00      	nop
20029620:	ffffbe00 	.word	0xffffbe00

20029624 <mbedtls_rsa_check_privkey>:
20029624:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20029628:	b0a9      	sub	sp, #164	@ 0xa4
2002962a:	4605      	mov	r5, r0
2002962c:	f7ff ffce 	bl	200295cc <mbedtls_rsa_check_pubkey>
20029630:	b120      	cbz	r0, 2002963c <mbedtls_rsa_check_privkey+0x18>
20029632:	4c7d      	ldr	r4, [pc, #500]	@ (20029828 <mbedtls_rsa_check_privkey+0x204>)
20029634:	4620      	mov	r0, r4
20029636:	b029      	add	sp, #164	@ 0xa4
20029638:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
2002963c:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
2002963e:	2b00      	cmp	r3, #0
20029640:	d0f7      	beq.n	20029632 <mbedtls_rsa_check_privkey+0xe>
20029642:	6c2b      	ldr	r3, [r5, #64]	@ 0x40
20029644:	2b00      	cmp	r3, #0
20029646:	d0f4      	beq.n	20029632 <mbedtls_rsa_check_privkey+0xe>
20029648:	6aab      	ldr	r3, [r5, #40]	@ 0x28
2002964a:	2b00      	cmp	r3, #0
2002964c:	d0f1      	beq.n	20029632 <mbedtls_rsa_check_privkey+0xe>
2002964e:	a801      	add	r0, sp, #4
20029650:	f7fe fb02 	bl	20027c58 <mbedtls_mpi_init>
20029654:	a804      	add	r0, sp, #16
20029656:	f7fe faff 	bl	20027c58 <mbedtls_mpi_init>
2002965a:	a807      	add	r0, sp, #28
2002965c:	f7fe fafc 	bl	20027c58 <mbedtls_mpi_init>
20029660:	a80a      	add	r0, sp, #40	@ 0x28
20029662:	f7fe faf9 	bl	20027c58 <mbedtls_mpi_init>
20029666:	a80d      	add	r0, sp, #52	@ 0x34
20029668:	f7fe faf6 	bl	20027c58 <mbedtls_mpi_init>
2002966c:	a810      	add	r0, sp, #64	@ 0x40
2002966e:	f7fe faf3 	bl	20027c58 <mbedtls_mpi_init>
20029672:	a813      	add	r0, sp, #76	@ 0x4c
20029674:	f7fe faf0 	bl	20027c58 <mbedtls_mpi_init>
20029678:	a816      	add	r0, sp, #88	@ 0x58
2002967a:	f7fe faed 	bl	20027c58 <mbedtls_mpi_init>
2002967e:	a819      	add	r0, sp, #100	@ 0x64
20029680:	f7fe faea 	bl	20027c58 <mbedtls_mpi_init>
20029684:	a81c      	add	r0, sp, #112	@ 0x70
20029686:	f7fe fae7 	bl	20027c58 <mbedtls_mpi_init>
2002968a:	a81f      	add	r0, sp, #124	@ 0x7c
2002968c:	f7fe fae4 	bl	20027c58 <mbedtls_mpi_init>
20029690:	a822      	add	r0, sp, #136	@ 0x88
20029692:	f7fe fae1 	bl	20027c58 <mbedtls_mpi_init>
20029696:	f105 072c 	add.w	r7, r5, #44	@ 0x2c
2002969a:	a825      	add	r0, sp, #148	@ 0x94
2002969c:	f105 0638 	add.w	r6, r5, #56	@ 0x38
200296a0:	f7fe fada 	bl	20027c58 <mbedtls_mpi_init>
200296a4:	4632      	mov	r2, r6
200296a6:	4639      	mov	r1, r7
200296a8:	a801      	add	r0, sp, #4
200296aa:	f7fe fe73 	bl	20028394 <mbedtls_mpi_mul_mpi>
200296ae:	4604      	mov	r4, r0
200296b0:	2800      	cmp	r0, #0
200296b2:	d15e      	bne.n	20029772 <mbedtls_rsa_check_privkey+0x14e>
200296b4:	f105 0820 	add.w	r8, r5, #32
200296b8:	f105 0914 	add.w	r9, r5, #20
200296bc:	464a      	mov	r2, r9
200296be:	4641      	mov	r1, r8
200296c0:	a804      	add	r0, sp, #16
200296c2:	f7fe fe67 	bl	20028394 <mbedtls_mpi_mul_mpi>
200296c6:	4604      	mov	r4, r0
200296c8:	2800      	cmp	r0, #0
200296ca:	d152      	bne.n	20029772 <mbedtls_rsa_check_privkey+0x14e>
200296cc:	2201      	movs	r2, #1
200296ce:	4639      	mov	r1, r7
200296d0:	a807      	add	r0, sp, #28
200296d2:	f7fe fe49 	bl	20028368 <mbedtls_mpi_sub_int>
200296d6:	4604      	mov	r4, r0
200296d8:	2800      	cmp	r0, #0
200296da:	d14a      	bne.n	20029772 <mbedtls_rsa_check_privkey+0x14e>
200296dc:	2201      	movs	r2, #1
200296de:	4631      	mov	r1, r6
200296e0:	a80a      	add	r0, sp, #40	@ 0x28
200296e2:	f7fe fe41 	bl	20028368 <mbedtls_mpi_sub_int>
200296e6:	4604      	mov	r4, r0
200296e8:	2800      	cmp	r0, #0
200296ea:	d142      	bne.n	20029772 <mbedtls_rsa_check_privkey+0x14e>
200296ec:	aa0a      	add	r2, sp, #40	@ 0x28
200296ee:	a907      	add	r1, sp, #28
200296f0:	a80d      	add	r0, sp, #52	@ 0x34
200296f2:	f7fe fe4f 	bl	20028394 <mbedtls_mpi_mul_mpi>
200296f6:	4604      	mov	r4, r0
200296f8:	2800      	cmp	r0, #0
200296fa:	d13a      	bne.n	20029772 <mbedtls_rsa_check_privkey+0x14e>
200296fc:	4649      	mov	r1, r9
200296fe:	aa0d      	add	r2, sp, #52	@ 0x34
20029700:	a813      	add	r0, sp, #76	@ 0x4c
20029702:	f7ff fb02 	bl	20028d0a <mbedtls_mpi_gcd>
20029706:	4604      	mov	r4, r0
20029708:	2800      	cmp	r0, #0
2002970a:	d132      	bne.n	20029772 <mbedtls_rsa_check_privkey+0x14e>
2002970c:	aa0a      	add	r2, sp, #40	@ 0x28
2002970e:	a907      	add	r1, sp, #28
20029710:	a816      	add	r0, sp, #88	@ 0x58
20029712:	f7ff fafa 	bl	20028d0a <mbedtls_mpi_gcd>
20029716:	4604      	mov	r4, r0
20029718:	bb58      	cbnz	r0, 20029772 <mbedtls_rsa_check_privkey+0x14e>
2002971a:	ab16      	add	r3, sp, #88	@ 0x58
2002971c:	aa0d      	add	r2, sp, #52	@ 0x34
2002971e:	a91c      	add	r1, sp, #112	@ 0x70
20029720:	a819      	add	r0, sp, #100	@ 0x64
20029722:	f7fe fea8 	bl	20028476 <mbedtls_mpi_div_mpi>
20029726:	4604      	mov	r4, r0
20029728:	bb18      	cbnz	r0, 20029772 <mbedtls_rsa_check_privkey+0x14e>
2002972a:	aa19      	add	r2, sp, #100	@ 0x64
2002972c:	a904      	add	r1, sp, #16
2002972e:	a810      	add	r0, sp, #64	@ 0x40
20029730:	f7ff f8a5 	bl	2002887e <mbedtls_mpi_mod_mpi>
20029734:	4604      	mov	r4, r0
20029736:	b9e0      	cbnz	r0, 20029772 <mbedtls_rsa_check_privkey+0x14e>
20029738:	4641      	mov	r1, r8
2002973a:	aa07      	add	r2, sp, #28
2002973c:	a81f      	add	r0, sp, #124	@ 0x7c
2002973e:	f7ff f89e 	bl	2002887e <mbedtls_mpi_mod_mpi>
20029742:	4604      	mov	r4, r0
20029744:	b9a8      	cbnz	r0, 20029772 <mbedtls_rsa_check_privkey+0x14e>
20029746:	4641      	mov	r1, r8
20029748:	aa0a      	add	r2, sp, #40	@ 0x28
2002974a:	a822      	add	r0, sp, #136	@ 0x88
2002974c:	f7ff f897 	bl	2002887e <mbedtls_mpi_mod_mpi>
20029750:	4604      	mov	r4, r0
20029752:	b970      	cbnz	r0, 20029772 <mbedtls_rsa_check_privkey+0x14e>
20029754:	463a      	mov	r2, r7
20029756:	4631      	mov	r1, r6
20029758:	a825      	add	r0, sp, #148	@ 0x94
2002975a:	f7ff fb71 	bl	20028e40 <mbedtls_mpi_inv_mod>
2002975e:	4604      	mov	r4, r0
20029760:	b938      	cbnz	r0, 20029772 <mbedtls_rsa_check_privkey+0x14e>
20029762:	f105 0108 	add.w	r1, r5, #8
20029766:	a801      	add	r0, sp, #4
20029768:	f7fe fcc4 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
2002976c:	2800      	cmp	r0, #0
2002976e:	d031      	beq.n	200297d4 <mbedtls_rsa_check_privkey+0x1b0>
20029770:	4c2d      	ldr	r4, [pc, #180]	@ (20029828 <mbedtls_rsa_check_privkey+0x204>)
20029772:	a801      	add	r0, sp, #4
20029774:	f7fe fa77 	bl	20027c66 <mbedtls_mpi_free>
20029778:	a804      	add	r0, sp, #16
2002977a:	f7fe fa74 	bl	20027c66 <mbedtls_mpi_free>
2002977e:	a807      	add	r0, sp, #28
20029780:	f7fe fa71 	bl	20027c66 <mbedtls_mpi_free>
20029784:	a80a      	add	r0, sp, #40	@ 0x28
20029786:	f7fe fa6e 	bl	20027c66 <mbedtls_mpi_free>
2002978a:	a80d      	add	r0, sp, #52	@ 0x34
2002978c:	f7fe fa6b 	bl	20027c66 <mbedtls_mpi_free>
20029790:	a810      	add	r0, sp, #64	@ 0x40
20029792:	f7fe fa68 	bl	20027c66 <mbedtls_mpi_free>
20029796:	a813      	add	r0, sp, #76	@ 0x4c
20029798:	f7fe fa65 	bl	20027c66 <mbedtls_mpi_free>
2002979c:	a816      	add	r0, sp, #88	@ 0x58
2002979e:	f7fe fa62 	bl	20027c66 <mbedtls_mpi_free>
200297a2:	a819      	add	r0, sp, #100	@ 0x64
200297a4:	f7fe fa5f 	bl	20027c66 <mbedtls_mpi_free>
200297a8:	a81c      	add	r0, sp, #112	@ 0x70
200297aa:	f7fe fa5c 	bl	20027c66 <mbedtls_mpi_free>
200297ae:	a81f      	add	r0, sp, #124	@ 0x7c
200297b0:	f7fe fa59 	bl	20027c66 <mbedtls_mpi_free>
200297b4:	a822      	add	r0, sp, #136	@ 0x88
200297b6:	f7fe fa56 	bl	20027c66 <mbedtls_mpi_free>
200297ba:	a825      	add	r0, sp, #148	@ 0x94
200297bc:	f7fe fa53 	bl	20027c66 <mbedtls_mpi_free>
200297c0:	f514 4f84 	cmn.w	r4, #16896	@ 0x4200
200297c4:	f43f af35 	beq.w	20029632 <mbedtls_rsa_check_privkey+0xe>
200297c8:	2c00      	cmp	r4, #0
200297ca:	f43f af33 	beq.w	20029634 <mbedtls_rsa_check_privkey+0x10>
200297ce:	f5a4 4484 	sub.w	r4, r4, #16896	@ 0x4200
200297d2:	e72f      	b.n	20029634 <mbedtls_rsa_check_privkey+0x10>
200297d4:	f105 0144 	add.w	r1, r5, #68	@ 0x44
200297d8:	a81f      	add	r0, sp, #124	@ 0x7c
200297da:	f7fe fc8b 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
200297de:	2800      	cmp	r0, #0
200297e0:	d1c6      	bne.n	20029770 <mbedtls_rsa_check_privkey+0x14c>
200297e2:	f105 0150 	add.w	r1, r5, #80	@ 0x50
200297e6:	a822      	add	r0, sp, #136	@ 0x88
200297e8:	f7fe fc84 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
200297ec:	2800      	cmp	r0, #0
200297ee:	d1bf      	bne.n	20029770 <mbedtls_rsa_check_privkey+0x14c>
200297f0:	f105 015c 	add.w	r1, r5, #92	@ 0x5c
200297f4:	a825      	add	r0, sp, #148	@ 0x94
200297f6:	f7fe fc7d 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
200297fa:	2800      	cmp	r0, #0
200297fc:	d1b8      	bne.n	20029770 <mbedtls_rsa_check_privkey+0x14c>
200297fe:	2100      	movs	r1, #0
20029800:	a81c      	add	r0, sp, #112	@ 0x70
20029802:	f7fe fcb8 	bl	20028176 <mbedtls_mpi_cmp_int>
20029806:	2800      	cmp	r0, #0
20029808:	d1b2      	bne.n	20029770 <mbedtls_rsa_check_privkey+0x14c>
2002980a:	2101      	movs	r1, #1
2002980c:	a810      	add	r0, sp, #64	@ 0x40
2002980e:	f7fe fcb2 	bl	20028176 <mbedtls_mpi_cmp_int>
20029812:	2800      	cmp	r0, #0
20029814:	d1ac      	bne.n	20029770 <mbedtls_rsa_check_privkey+0x14c>
20029816:	2101      	movs	r1, #1
20029818:	a813      	add	r0, sp, #76	@ 0x4c
2002981a:	f7fe fcac 	bl	20028176 <mbedtls_mpi_cmp_int>
2002981e:	4604      	mov	r4, r0
20029820:	2800      	cmp	r0, #0
20029822:	d1a5      	bne.n	20029770 <mbedtls_rsa_check_privkey+0x14c>
20029824:	e7a5      	b.n	20029772 <mbedtls_rsa_check_privkey+0x14e>
20029826:	bf00      	nop
20029828:	ffffbe00 	.word	0xffffbe00

2002982c <mbedtls_rsa_check_pub_priv>:
2002982c:	b538      	push	{r3, r4, r5, lr}
2002982e:	4605      	mov	r5, r0
20029830:	460c      	mov	r4, r1
20029832:	f7ff fecb 	bl	200295cc <mbedtls_rsa_check_pubkey>
20029836:	b918      	cbnz	r0, 20029840 <mbedtls_rsa_check_pub_priv+0x14>
20029838:	4620      	mov	r0, r4
2002983a:	f7ff fef3 	bl	20029624 <mbedtls_rsa_check_privkey>
2002983e:	b108      	cbz	r0, 20029844 <mbedtls_rsa_check_pub_priv+0x18>
20029840:	4809      	ldr	r0, [pc, #36]	@ (20029868 <mbedtls_rsa_check_pub_priv+0x3c>)
20029842:	bd38      	pop	{r3, r4, r5, pc}
20029844:	f104 0108 	add.w	r1, r4, #8
20029848:	f105 0008 	add.w	r0, r5, #8
2002984c:	f7fe fc52 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
20029850:	2800      	cmp	r0, #0
20029852:	d1f5      	bne.n	20029840 <mbedtls_rsa_check_pub_priv+0x14>
20029854:	f104 0114 	add.w	r1, r4, #20
20029858:	f105 0014 	add.w	r0, r5, #20
2002985c:	f7fe fc4a 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
20029860:	2800      	cmp	r0, #0
20029862:	d0ee      	beq.n	20029842 <mbedtls_rsa_check_pub_priv+0x16>
20029864:	e7ec      	b.n	20029840 <mbedtls_rsa_check_pub_priv+0x14>
20029866:	bf00      	nop
20029868:	ffffbe00 	.word	0xffffbe00

2002986c <mbedtls_rsa_public>:
2002986c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002986e:	460c      	mov	r4, r1
20029870:	4605      	mov	r5, r0
20029872:	b087      	sub	sp, #28
20029874:	a803      	add	r0, sp, #12
20029876:	4616      	mov	r6, r2
20029878:	f7fe f9ee 	bl	20027c58 <mbedtls_mpi_init>
2002987c:	4621      	mov	r1, r4
2002987e:	686a      	ldr	r2, [r5, #4]
20029880:	a803      	add	r0, sp, #12
20029882:	f7fe fab5 	bl	20027df0 <mbedtls_mpi_read_binary>
20029886:	4604      	mov	r4, r0
20029888:	b9d0      	cbnz	r0, 200298c0 <mbedtls_rsa_public+0x54>
2002988a:	f105 0408 	add.w	r4, r5, #8
2002988e:	4621      	mov	r1, r4
20029890:	a803      	add	r0, sp, #12
20029892:	f7fe fc2f 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
20029896:	2800      	cmp	r0, #0
20029898:	da1b      	bge.n	200298d2 <mbedtls_rsa_public+0x66>
2002989a:	f105 0368 	add.w	r3, r5, #104	@ 0x68
2002989e:	a903      	add	r1, sp, #12
200298a0:	686f      	ldr	r7, [r5, #4]
200298a2:	4608      	mov	r0, r1
200298a4:	9300      	str	r3, [sp, #0]
200298a6:	f105 0214 	add.w	r2, r5, #20
200298aa:	4623      	mov	r3, r4
200298ac:	f7ff f819 	bl	200288e2 <mbedtls_mpi_exp_mod>
200298b0:	4604      	mov	r4, r0
200298b2:	b928      	cbnz	r0, 200298c0 <mbedtls_rsa_public+0x54>
200298b4:	463a      	mov	r2, r7
200298b6:	4631      	mov	r1, r6
200298b8:	a803      	add	r0, sp, #12
200298ba:	f7fe face 	bl	20027e5a <mbedtls_mpi_write_binary>
200298be:	4604      	mov	r4, r0
200298c0:	a803      	add	r0, sp, #12
200298c2:	f7fe f9d0 	bl	20027c66 <mbedtls_mpi_free>
200298c6:	b10c      	cbz	r4, 200298cc <mbedtls_rsa_public+0x60>
200298c8:	f5a4 4485 	sub.w	r4, r4, #17024	@ 0x4280
200298cc:	4620      	mov	r0, r4
200298ce:	b007      	add	sp, #28
200298d0:	bdf0      	pop	{r4, r5, r6, r7, pc}
200298d2:	f06f 0403 	mvn.w	r4, #3
200298d6:	e7f3      	b.n	200298c0 <mbedtls_rsa_public+0x54>

200298d8 <mbedtls_rsa_private>:
200298d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200298dc:	461e      	mov	r6, r3
200298de:	6b43      	ldr	r3, [r0, #52]	@ 0x34
200298e0:	4604      	mov	r4, r0
200298e2:	460d      	mov	r5, r1
200298e4:	4617      	mov	r7, r2
200298e6:	b09d      	sub	sp, #116	@ 0x74
200298e8:	2b00      	cmp	r3, #0
200298ea:	f000 8179 	beq.w	20029be0 <mbedtls_rsa_private+0x308>
200298ee:	6c03      	ldr	r3, [r0, #64]	@ 0x40
200298f0:	2b00      	cmp	r3, #0
200298f2:	f000 8175 	beq.w	20029be0 <mbedtls_rsa_private+0x308>
200298f6:	6a83      	ldr	r3, [r0, #40]	@ 0x28
200298f8:	2b00      	cmp	r3, #0
200298fa:	f000 8171 	beq.w	20029be0 <mbedtls_rsa_private+0x308>
200298fe:	a804      	add	r0, sp, #16
20029900:	f7fe f9aa 	bl	20027c58 <mbedtls_mpi_init>
20029904:	a807      	add	r0, sp, #28
20029906:	f7fe f9a7 	bl	20027c58 <mbedtls_mpi_init>
2002990a:	a80a      	add	r0, sp, #40	@ 0x28
2002990c:	f7fe f9a4 	bl	20027c58 <mbedtls_mpi_init>
20029910:	a80d      	add	r0, sp, #52	@ 0x34
20029912:	f7fe f9a1 	bl	20027c58 <mbedtls_mpi_init>
20029916:	a810      	add	r0, sp, #64	@ 0x40
20029918:	f7fe f99e 	bl	20027c58 <mbedtls_mpi_init>
2002991c:	a813      	add	r0, sp, #76	@ 0x4c
2002991e:	f7fe f99b 	bl	20027c58 <mbedtls_mpi_init>
20029922:	b12d      	cbz	r5, 20029930 <mbedtls_rsa_private+0x58>
20029924:	a816      	add	r0, sp, #88	@ 0x58
20029926:	f7fe f997 	bl	20027c58 <mbedtls_mpi_init>
2002992a:	a819      	add	r0, sp, #100	@ 0x64
2002992c:	f7fe f994 	bl	20027c58 <mbedtls_mpi_init>
20029930:	4631      	mov	r1, r6
20029932:	6862      	ldr	r2, [r4, #4]
20029934:	a804      	add	r0, sp, #16
20029936:	f7fe fa5b 	bl	20027df0 <mbedtls_mpi_read_binary>
2002993a:	4603      	mov	r3, r0
2002993c:	2800      	cmp	r0, #0
2002993e:	f040 80e0 	bne.w	20029b02 <mbedtls_rsa_private+0x22a>
20029942:	f104 0608 	add.w	r6, r4, #8
20029946:	4631      	mov	r1, r6
20029948:	a804      	add	r0, sp, #16
2002994a:	f7fe fbd3 	bl	200280f4 <mbedtls_mpi_cmp_mpi>
2002994e:	2800      	cmp	r0, #0
20029950:	f280 8143 	bge.w	20029bda <mbedtls_rsa_private+0x302>
20029954:	f104 0a44 	add.w	sl, r4, #68	@ 0x44
20029958:	f104 0950 	add.w	r9, r4, #80	@ 0x50
2002995c:	2d00      	cmp	r5, #0
2002995e:	f000 8089 	beq.w	20029a74 <mbedtls_rsa_private+0x19c>
20029962:	f8d4 30a0 	ldr.w	r3, [r4, #160]	@ 0xa0
20029966:	2b00      	cmp	r3, #0
20029968:	f000 80f4 	beq.w	20029b54 <mbedtls_rsa_private+0x27c>
2002996c:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
20029970:	4642      	mov	r2, r8
20029972:	4641      	mov	r1, r8
20029974:	4640      	mov	r0, r8
20029976:	f7fe fd0d 	bl	20028394 <mbedtls_mpi_mul_mpi>
2002997a:	4603      	mov	r3, r0
2002997c:	2800      	cmp	r0, #0
2002997e:	f040 80c0 	bne.w	20029b02 <mbedtls_rsa_private+0x22a>
20029982:	4632      	mov	r2, r6
20029984:	4641      	mov	r1, r8
20029986:	4640      	mov	r0, r8
20029988:	f7fe ff79 	bl	2002887e <mbedtls_mpi_mod_mpi>
2002998c:	4603      	mov	r3, r0
2002998e:	2800      	cmp	r0, #0
20029990:	f040 80b7 	bne.w	20029b02 <mbedtls_rsa_private+0x22a>
20029994:	f104 0898 	add.w	r8, r4, #152	@ 0x98
20029998:	4642      	mov	r2, r8
2002999a:	4641      	mov	r1, r8
2002999c:	4640      	mov	r0, r8
2002999e:	f7fe fcf9 	bl	20028394 <mbedtls_mpi_mul_mpi>
200299a2:	4603      	mov	r3, r0
200299a4:	2800      	cmp	r0, #0
200299a6:	f040 80ac 	bne.w	20029b02 <mbedtls_rsa_private+0x22a>
200299aa:	4632      	mov	r2, r6
200299ac:	4641      	mov	r1, r8
200299ae:	4640      	mov	r0, r8
200299b0:	f7fe ff65 	bl	2002887e <mbedtls_mpi_mod_mpi>
200299b4:	4603      	mov	r3, r0
200299b6:	2800      	cmp	r0, #0
200299b8:	f040 80a3 	bne.w	20029b02 <mbedtls_rsa_private+0x22a>
200299bc:	a904      	add	r1, sp, #16
200299be:	4608      	mov	r0, r1
200299c0:	f104 028c 	add.w	r2, r4, #140	@ 0x8c
200299c4:	f7fe fce6 	bl	20028394 <mbedtls_mpi_mul_mpi>
200299c8:	4603      	mov	r3, r0
200299ca:	2800      	cmp	r0, #0
200299cc:	f040 8099 	bne.w	20029b02 <mbedtls_rsa_private+0x22a>
200299d0:	a904      	add	r1, sp, #16
200299d2:	4632      	mov	r2, r6
200299d4:	4608      	mov	r0, r1
200299d6:	f7fe ff52 	bl	2002887e <mbedtls_mpi_mod_mpi>
200299da:	4603      	mov	r3, r0
200299dc:	2800      	cmp	r0, #0
200299de:	f040 8090 	bne.w	20029b02 <mbedtls_rsa_private+0x22a>
200299e2:	2201      	movs	r2, #1
200299e4:	f104 012c 	add.w	r1, r4, #44	@ 0x2c
200299e8:	a80d      	add	r0, sp, #52	@ 0x34
200299ea:	f7fe fcbd 	bl	20028368 <mbedtls_mpi_sub_int>
200299ee:	4603      	mov	r3, r0
200299f0:	2800      	cmp	r0, #0
200299f2:	f040 8086 	bne.w	20029b02 <mbedtls_rsa_private+0x22a>
200299f6:	2201      	movs	r2, #1
200299f8:	f104 0138 	add.w	r1, r4, #56	@ 0x38
200299fc:	a810      	add	r0, sp, #64	@ 0x40
200299fe:	f7fe fcb3 	bl	20028368 <mbedtls_mpi_sub_int>
20029a02:	4603      	mov	r3, r0
20029a04:	2800      	cmp	r0, #0
20029a06:	d17c      	bne.n	20029b02 <mbedtls_rsa_private+0x22a>
20029a08:	463b      	mov	r3, r7
20029a0a:	462a      	mov	r2, r5
20029a0c:	211c      	movs	r1, #28
20029a0e:	a813      	add	r0, sp, #76	@ 0x4c
20029a10:	f7ff f9f9 	bl	20028e06 <mbedtls_mpi_fill_random>
20029a14:	4603      	mov	r3, r0
20029a16:	2800      	cmp	r0, #0
20029a18:	d173      	bne.n	20029b02 <mbedtls_rsa_private+0x22a>
20029a1a:	aa13      	add	r2, sp, #76	@ 0x4c
20029a1c:	a90d      	add	r1, sp, #52	@ 0x34
20029a1e:	a816      	add	r0, sp, #88	@ 0x58
20029a20:	f7fe fcb8 	bl	20028394 <mbedtls_mpi_mul_mpi>
20029a24:	4603      	mov	r3, r0
20029a26:	2800      	cmp	r0, #0
20029a28:	d16b      	bne.n	20029b02 <mbedtls_rsa_private+0x22a>
20029a2a:	a916      	add	r1, sp, #88	@ 0x58
20029a2c:	4652      	mov	r2, sl
20029a2e:	4608      	mov	r0, r1
20029a30:	f7fe fc4d 	bl	200282ce <mbedtls_mpi_add_mpi>
20029a34:	4603      	mov	r3, r0
20029a36:	2800      	cmp	r0, #0
20029a38:	d163      	bne.n	20029b02 <mbedtls_rsa_private+0x22a>
20029a3a:	463b      	mov	r3, r7
20029a3c:	462a      	mov	r2, r5
20029a3e:	211c      	movs	r1, #28
20029a40:	a813      	add	r0, sp, #76	@ 0x4c
20029a42:	f7ff f9e0 	bl	20028e06 <mbedtls_mpi_fill_random>
20029a46:	4603      	mov	r3, r0
20029a48:	2800      	cmp	r0, #0
20029a4a:	d15a      	bne.n	20029b02 <mbedtls_rsa_private+0x22a>
20029a4c:	aa13      	add	r2, sp, #76	@ 0x4c
20029a4e:	a910      	add	r1, sp, #64	@ 0x40
20029a50:	a819      	add	r0, sp, #100	@ 0x64
20029a52:	f7fe fc9f 	bl	20028394 <mbedtls_mpi_mul_mpi>
20029a56:	4603      	mov	r3, r0
20029a58:	2800      	cmp	r0, #0
20029a5a:	d152      	bne.n	20029b02 <mbedtls_rsa_private+0x22a>
20029a5c:	a919      	add	r1, sp, #100	@ 0x64
20029a5e:	464a      	mov	r2, r9
20029a60:	4608      	mov	r0, r1
20029a62:	f7fe fc34 	bl	200282ce <mbedtls_mpi_add_mpi>
20029a66:	4603      	mov	r3, r0
20029a68:	2800      	cmp	r0, #0
20029a6a:	d14a      	bne.n	20029b02 <mbedtls_rsa_private+0x22a>
20029a6c:	f10d 0964 	add.w	r9, sp, #100	@ 0x64
20029a70:	f10d 0a58 	add.w	sl, sp, #88	@ 0x58
20029a74:	f104 0374 	add.w	r3, r4, #116	@ 0x74
20029a78:	f104 082c 	add.w	r8, r4, #44	@ 0x2c
20029a7c:	9300      	str	r3, [sp, #0]
20029a7e:	4652      	mov	r2, sl
20029a80:	4643      	mov	r3, r8
20029a82:	a904      	add	r1, sp, #16
20029a84:	a807      	add	r0, sp, #28
20029a86:	f7fe ff2c 	bl	200288e2 <mbedtls_mpi_exp_mod>
20029a8a:	4603      	mov	r3, r0
20029a8c:	2800      	cmp	r0, #0
20029a8e:	d138      	bne.n	20029b02 <mbedtls_rsa_private+0x22a>
20029a90:	f104 0380 	add.w	r3, r4, #128	@ 0x80
20029a94:	f104 0738 	add.w	r7, r4, #56	@ 0x38
20029a98:	9300      	str	r3, [sp, #0]
20029a9a:	464a      	mov	r2, r9
20029a9c:	463b      	mov	r3, r7
20029a9e:	a904      	add	r1, sp, #16
20029aa0:	a80a      	add	r0, sp, #40	@ 0x28
20029aa2:	f7fe ff1e 	bl	200288e2 <mbedtls_mpi_exp_mod>
20029aa6:	4603      	mov	r3, r0
20029aa8:	bb58      	cbnz	r0, 20029b02 <mbedtls_rsa_private+0x22a>
20029aaa:	aa0a      	add	r2, sp, #40	@ 0x28
20029aac:	a907      	add	r1, sp, #28
20029aae:	a804      	add	r0, sp, #16
20029ab0:	f7fe fc33 	bl	2002831a <mbedtls_mpi_sub_mpi>
20029ab4:	4603      	mov	r3, r0
20029ab6:	bb20      	cbnz	r0, 20029b02 <mbedtls_rsa_private+0x22a>
20029ab8:	f104 025c 	add.w	r2, r4, #92	@ 0x5c
20029abc:	a904      	add	r1, sp, #16
20029abe:	a807      	add	r0, sp, #28
20029ac0:	f7fe fc68 	bl	20028394 <mbedtls_mpi_mul_mpi>
20029ac4:	4603      	mov	r3, r0
20029ac6:	b9e0      	cbnz	r0, 20029b02 <mbedtls_rsa_private+0x22a>
20029ac8:	4642      	mov	r2, r8
20029aca:	a907      	add	r1, sp, #28
20029acc:	a804      	add	r0, sp, #16
20029ace:	f7fe fed6 	bl	2002887e <mbedtls_mpi_mod_mpi>
20029ad2:	4603      	mov	r3, r0
20029ad4:	b9a8      	cbnz	r0, 20029b02 <mbedtls_rsa_private+0x22a>
20029ad6:	463a      	mov	r2, r7
20029ad8:	a904      	add	r1, sp, #16
20029ada:	a807      	add	r0, sp, #28
20029adc:	f7fe fc5a 	bl	20028394 <mbedtls_mpi_mul_mpi>
20029ae0:	4603      	mov	r3, r0
20029ae2:	b970      	cbnz	r0, 20029b02 <mbedtls_rsa_private+0x22a>
20029ae4:	aa07      	add	r2, sp, #28
20029ae6:	a90a      	add	r1, sp, #40	@ 0x28
20029ae8:	a804      	add	r0, sp, #16
20029aea:	f7fe fbf0 	bl	200282ce <mbedtls_mpi_add_mpi>
20029aee:	4603      	mov	r3, r0
20029af0:	b938      	cbnz	r0, 20029b02 <mbedtls_rsa_private+0x22a>
20029af2:	2d00      	cmp	r5, #0
20029af4:	d15f      	bne.n	20029bb6 <mbedtls_rsa_private+0x2de>
20029af6:	6862      	ldr	r2, [r4, #4]
20029af8:	9926      	ldr	r1, [sp, #152]	@ 0x98
20029afa:	a804      	add	r0, sp, #16
20029afc:	f7fe f9ad 	bl	20027e5a <mbedtls_mpi_write_binary>
20029b00:	4603      	mov	r3, r0
20029b02:	a804      	add	r0, sp, #16
20029b04:	9303      	str	r3, [sp, #12]
20029b06:	f7fe f8ae 	bl	20027c66 <mbedtls_mpi_free>
20029b0a:	a807      	add	r0, sp, #28
20029b0c:	f7fe f8ab 	bl	20027c66 <mbedtls_mpi_free>
20029b10:	a80a      	add	r0, sp, #40	@ 0x28
20029b12:	f7fe f8a8 	bl	20027c66 <mbedtls_mpi_free>
20029b16:	a80d      	add	r0, sp, #52	@ 0x34
20029b18:	f7fe f8a5 	bl	20027c66 <mbedtls_mpi_free>
20029b1c:	a810      	add	r0, sp, #64	@ 0x40
20029b1e:	f7fe f8a2 	bl	20027c66 <mbedtls_mpi_free>
20029b22:	a813      	add	r0, sp, #76	@ 0x4c
20029b24:	f7fe f89f 	bl	20027c66 <mbedtls_mpi_free>
20029b28:	9b03      	ldr	r3, [sp, #12]
20029b2a:	b135      	cbz	r5, 20029b3a <mbedtls_rsa_private+0x262>
20029b2c:	a816      	add	r0, sp, #88	@ 0x58
20029b2e:	f7fe f89a 	bl	20027c66 <mbedtls_mpi_free>
20029b32:	a819      	add	r0, sp, #100	@ 0x64
20029b34:	f7fe f897 	bl	20027c66 <mbedtls_mpi_free>
20029b38:	9b03      	ldr	r3, [sp, #12]
20029b3a:	b10b      	cbz	r3, 20029b40 <mbedtls_rsa_private+0x268>
20029b3c:	f5a3 4386 	sub.w	r3, r3, #17152	@ 0x4300
20029b40:	4618      	mov	r0, r3
20029b42:	b01d      	add	sp, #116	@ 0x74
20029b44:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029b48:	9b03      	ldr	r3, [sp, #12]
20029b4a:	3b01      	subs	r3, #1
20029b4c:	9303      	str	r3, [sp, #12]
20029b4e:	d107      	bne.n	20029b60 <mbedtls_rsa_private+0x288>
20029b50:	4b24      	ldr	r3, [pc, #144]	@ (20029be4 <mbedtls_rsa_private+0x30c>)
20029b52:	e7d6      	b.n	20029b02 <mbedtls_rsa_private+0x22a>
20029b54:	230b      	movs	r3, #11
20029b56:	f104 0b98 	add.w	fp, r4, #152	@ 0x98
20029b5a:	9303      	str	r3, [sp, #12]
20029b5c:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
20029b60:	6861      	ldr	r1, [r4, #4]
20029b62:	463b      	mov	r3, r7
20029b64:	462a      	mov	r2, r5
20029b66:	4658      	mov	r0, fp
20029b68:	3901      	subs	r1, #1
20029b6a:	f7ff f94c 	bl	20028e06 <mbedtls_mpi_fill_random>
20029b6e:	4603      	mov	r3, r0
20029b70:	2800      	cmp	r0, #0
20029b72:	d1c6      	bne.n	20029b02 <mbedtls_rsa_private+0x22a>
20029b74:	4632      	mov	r2, r6
20029b76:	4659      	mov	r1, fp
20029b78:	4640      	mov	r0, r8
20029b7a:	f7ff f8c6 	bl	20028d0a <mbedtls_mpi_gcd>
20029b7e:	4603      	mov	r3, r0
20029b80:	2800      	cmp	r0, #0
20029b82:	d1be      	bne.n	20029b02 <mbedtls_rsa_private+0x22a>
20029b84:	2101      	movs	r1, #1
20029b86:	4640      	mov	r0, r8
20029b88:	f7fe faf5 	bl	20028176 <mbedtls_mpi_cmp_int>
20029b8c:	2800      	cmp	r0, #0
20029b8e:	d1db      	bne.n	20029b48 <mbedtls_rsa_private+0x270>
20029b90:	4632      	mov	r2, r6
20029b92:	4659      	mov	r1, fp
20029b94:	4640      	mov	r0, r8
20029b96:	f7ff f953 	bl	20028e40 <mbedtls_mpi_inv_mod>
20029b9a:	4603      	mov	r3, r0
20029b9c:	2800      	cmp	r0, #0
20029b9e:	d1b0      	bne.n	20029b02 <mbedtls_rsa_private+0x22a>
20029ba0:	f104 0368 	add.w	r3, r4, #104	@ 0x68
20029ba4:	9300      	str	r3, [sp, #0]
20029ba6:	4641      	mov	r1, r8
20029ba8:	4633      	mov	r3, r6
20029baa:	4640      	mov	r0, r8
20029bac:	f104 0214 	add.w	r2, r4, #20
20029bb0:	f7fe fe97 	bl	200288e2 <mbedtls_mpi_exp_mod>
20029bb4:	e6fe      	b.n	200299b4 <mbedtls_rsa_private+0xdc>
20029bb6:	a904      	add	r1, sp, #16
20029bb8:	4608      	mov	r0, r1
20029bba:	f104 0298 	add.w	r2, r4, #152	@ 0x98
20029bbe:	f7fe fbe9 	bl	20028394 <mbedtls_mpi_mul_mpi>
20029bc2:	4603      	mov	r3, r0
20029bc4:	2800      	cmp	r0, #0
20029bc6:	d19c      	bne.n	20029b02 <mbedtls_rsa_private+0x22a>
20029bc8:	a904      	add	r1, sp, #16
20029bca:	4632      	mov	r2, r6
20029bcc:	4608      	mov	r0, r1
20029bce:	f7fe fe56 	bl	2002887e <mbedtls_mpi_mod_mpi>
20029bd2:	4603      	mov	r3, r0
20029bd4:	2800      	cmp	r0, #0
20029bd6:	d08e      	beq.n	20029af6 <mbedtls_rsa_private+0x21e>
20029bd8:	e793      	b.n	20029b02 <mbedtls_rsa_private+0x22a>
20029bda:	f06f 0303 	mvn.w	r3, #3
20029bde:	e790      	b.n	20029b02 <mbedtls_rsa_private+0x22a>
20029be0:	4b01      	ldr	r3, [pc, #4]	@ (20029be8 <mbedtls_rsa_private+0x310>)
20029be2:	e7ad      	b.n	20029b40 <mbedtls_rsa_private+0x268>
20029be4:	ffffbb80 	.word	0xffffbb80
20029be8:	ffffbf80 	.word	0xffffbf80

20029bec <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>:
20029bec:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029bf0:	4698      	mov	r8, r3
20029bf2:	e9dd a30c 	ldrd	sl, r3, [sp, #48]	@ 0x30
20029bf6:	f1b8 0f01 	cmp.w	r8, #1
20029bfa:	4606      	mov	r6, r0
20029bfc:	460f      	mov	r7, r1
20029bfe:	4691      	mov	r9, r2
20029c00:	9d0e      	ldr	r5, [sp, #56]	@ 0x38
20029c02:	d103      	bne.n	20029c0c <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x20>
20029c04:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
20029c08:	2a00      	cmp	r2, #0
20029c0a:	d162      	bne.n	20029cd2 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c0c:	2f00      	cmp	r7, #0
20029c0e:	d060      	beq.n	20029cd2 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c10:	2b00      	cmp	r3, #0
20029c12:	d05e      	beq.n	20029cd2 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c14:	2d00      	cmp	r5, #0
20029c16:	d05c      	beq.n	20029cd2 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c18:	f11a 0f0c 	cmn.w	sl, #12
20029c1c:	6874      	ldr	r4, [r6, #4]
20029c1e:	d858      	bhi.n	20029cd2 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c20:	f10a 020b 	add.w	r2, sl, #11
20029c24:	42a2      	cmp	r2, r4
20029c26:	d854      	bhi.n	20029cd2 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c28:	4629      	mov	r1, r5
20029c2a:	2200      	movs	r2, #0
20029c2c:	eba4 040a 	sub.w	r4, r4, sl
20029c30:	3c03      	subs	r4, #3
20029c32:	f801 2b02 	strb.w	r2, [r1], #2
20029c36:	f1b8 0f00 	cmp.w	r8, #0
20029c3a:	d131      	bne.n	20029ca0 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xb4>
20029c3c:	2202      	movs	r2, #2
20029c3e:	4414      	add	r4, r2
20029c40:	706a      	strb	r2, [r5, #1]
20029c42:	442c      	add	r4, r5
20029c44:	42a1      	cmp	r1, r4
20029c46:	d112      	bne.n	20029c6e <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x82>
20029c48:	2200      	movs	r2, #0
20029c4a:	4620      	mov	r0, r4
20029c4c:	4619      	mov	r1, r3
20029c4e:	f800 2b01 	strb.w	r2, [r0], #1
20029c52:	4652      	mov	r2, sl
20029c54:	f000 fdc6 	bl	2002a7e4 <memcpy>
20029c58:	f1b8 0f00 	cmp.w	r8, #0
20029c5c:	d12f      	bne.n	20029cbe <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xd2>
20029c5e:	462a      	mov	r2, r5
20029c60:	4629      	mov	r1, r5
20029c62:	4630      	mov	r0, r6
20029c64:	b003      	add	sp, #12
20029c66:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029c6a:	f7ff bdff 	b.w	2002986c <mbedtls_rsa_public>
20029c6e:	f04f 0b64 	mov.w	fp, #100	@ 0x64
20029c72:	2201      	movs	r2, #1
20029c74:	4648      	mov	r0, r9
20029c76:	9301      	str	r3, [sp, #4]
20029c78:	9100      	str	r1, [sp, #0]
20029c7a:	47b8      	blx	r7
20029c7c:	9900      	ldr	r1, [sp, #0]
20029c7e:	9b01      	ldr	r3, [sp, #4]
20029c80:	780a      	ldrb	r2, [r1, #0]
20029c82:	b94a      	cbnz	r2, 20029c98 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xac>
20029c84:	f1bb 0b01 	subs.w	fp, fp, #1
20029c88:	d001      	beq.n	20029c8e <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029c8a:	2800      	cmp	r0, #0
20029c8c:	d0f1      	beq.n	20029c72 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x86>
20029c8e:	f5a0 4089 	sub.w	r0, r0, #17536	@ 0x4480
20029c92:	b003      	add	sp, #12
20029c94:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029c98:	2800      	cmp	r0, #0
20029c9a:	d1f8      	bne.n	20029c8e <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029c9c:	3101      	adds	r1, #1
20029c9e:	e7d1      	b.n	20029c44 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x58>
20029ca0:	2001      	movs	r0, #1
20029ca2:	462a      	mov	r2, r5
20029ca4:	f04f 0cff 	mov.w	ip, #255	@ 0xff
20029ca8:	f802 0f01 	strb.w	r0, [r2, #1]!
20029cac:	1820      	adds	r0, r4, r0
20029cae:	4428      	add	r0, r5
20029cb0:	4282      	cmp	r2, r0
20029cb2:	d101      	bne.n	20029cb8 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xcc>
20029cb4:	440c      	add	r4, r1
20029cb6:	e7c7      	b.n	20029c48 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x5c>
20029cb8:	f802 cf01 	strb.w	ip, [r2, #1]!
20029cbc:	e7f8      	b.n	20029cb0 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xc4>
20029cbe:	462b      	mov	r3, r5
20029cc0:	464a      	mov	r2, r9
20029cc2:	4639      	mov	r1, r7
20029cc4:	4630      	mov	r0, r6
20029cc6:	950c      	str	r5, [sp, #48]	@ 0x30
20029cc8:	b003      	add	sp, #12
20029cca:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029cce:	f7ff be03 	b.w	200298d8 <mbedtls_rsa_private>
20029cd2:	4801      	ldr	r0, [pc, #4]	@ (20029cd8 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xec>)
20029cd4:	e7dd      	b.n	20029c92 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa6>
20029cd6:	bf00      	nop
20029cd8:	ffffbf80 	.word	0xffffbf80

20029cdc <mbedtls_rsa_pkcs1_encrypt>:
20029cdc:	b4f0      	push	{r4, r5, r6, r7}
20029cde:	f8d0 70a4 	ldr.w	r7, [r0, #164]	@ 0xa4
20029ce2:	9e06      	ldr	r6, [sp, #24]
20029ce4:	e9dd 4504 	ldrd	r4, r5, [sp, #16]
20029ce8:	b92f      	cbnz	r7, 20029cf6 <mbedtls_rsa_pkcs1_encrypt+0x1a>
20029cea:	e9cd 5605 	strd	r5, r6, [sp, #20]
20029cee:	9404      	str	r4, [sp, #16]
20029cf0:	bcf0      	pop	{r4, r5, r6, r7}
20029cf2:	f7ff bf7b 	b.w	20029bec <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>
20029cf6:	4801      	ldr	r0, [pc, #4]	@ (20029cfc <mbedtls_rsa_pkcs1_encrypt+0x20>)
20029cf8:	bcf0      	pop	{r4, r5, r6, r7}
20029cfa:	4770      	bx	lr
20029cfc:	ffffbf00 	.word	0xffffbf00

20029d00 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>:
20029d00:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20029d04:	4698      	mov	r8, r3
20029d06:	f5ad 6d81 	sub.w	sp, sp, #1032	@ 0x408
20029d0a:	f1b8 0f01 	cmp.w	r8, #1
20029d0e:	f8dd 3424 	ldr.w	r3, [sp, #1060]	@ 0x424
20029d12:	d103      	bne.n	20029d1c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x1c>
20029d14:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029d18:	2c00      	cmp	r4, #0
20029d1a:	d17c      	bne.n	20029e16 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029d1c:	6845      	ldr	r5, [r0, #4]
20029d1e:	f1a5 0410 	sub.w	r4, r5, #16
20029d22:	f5b4 7f7c 	cmp.w	r4, #1008	@ 0x3f0
20029d26:	d876      	bhi.n	20029e16 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029d28:	ae02      	add	r6, sp, #8
20029d2a:	f1b8 0f00 	cmp.w	r8, #0
20029d2e:	d153      	bne.n	20029dd8 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xd8>
20029d30:	4632      	mov	r2, r6
20029d32:	4619      	mov	r1, r3
20029d34:	f7ff fd9a 	bl	2002986c <mbedtls_rsa_public>
20029d38:	4604      	mov	r4, r0
20029d3a:	2800      	cmp	r0, #0
20029d3c:	d140      	bne.n	20029dc0 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029d3e:	f1b8 0f01 	cmp.w	r8, #1
20029d42:	7831      	ldrb	r1, [r6, #0]
20029d44:	7872      	ldrb	r2, [r6, #1]
20029d46:	f1a5 0703 	sub.w	r7, r5, #3
20029d4a:	d149      	bne.n	20029de0 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xe0>
20029d4c:	f082 0202 	eor.w	r2, r2, #2
20029d50:	ea41 0302 	orr.w	r3, r1, r2
20029d54:	4684      	mov	ip, r0
20029d56:	4686      	mov	lr, r0
20029d58:	4602      	mov	r2, r0
20029d5a:	f10d 0109 	add.w	r1, sp, #9
20029d5e:	f811 0f01 	ldrb.w	r0, [r1, #1]!
20029d62:	f10e 0e01 	add.w	lr, lr, #1
20029d66:	f1c0 0800 	rsb	r8, r0, #0
20029d6a:	ea40 0008 	orr.w	r0, r0, r8
20029d6e:	f3c0 10c0 	ubfx	r0, r0, #7, #1
20029d72:	f080 0001 	eor.w	r0, r0, #1
20029d76:	ea4c 0c00 	orr.w	ip, ip, r0
20029d7a:	f1cc 0000 	rsb	r0, ip, #0
20029d7e:	ea4c 0000 	orr.w	r0, ip, r0
20029d82:	f3c0 10c0 	ubfx	r0, r0, #7, #1
20029d86:	f080 0001 	eor.w	r0, r0, #1
20029d8a:	45be      	cmp	lr, r7
20029d8c:	4402      	add	r2, r0
20029d8e:	d3e6      	bcc.n	20029d5e <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x5e>
20029d90:	f10d 000a 	add.w	r0, sp, #10
20029d94:	1881      	adds	r1, r0, r2
20029d96:	5c80      	ldrb	r0, [r0, r2]
20029d98:	3101      	adds	r1, #1
20029d9a:	4303      	orrs	r3, r0
20029d9c:	2a07      	cmp	r2, #7
20029d9e:	bf98      	it	ls
20029da0:	f043 0301 	orrls.w	r3, r3, #1
20029da4:	bb9b      	cbnz	r3, 20029e0e <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x10e>
20029da6:	1b8b      	subs	r3, r1, r6
20029da8:	1aea      	subs	r2, r5, r3
20029daa:	f8dd 342c 	ldr.w	r3, [sp, #1068]	@ 0x42c
20029dae:	429a      	cmp	r2, r3
20029db0:	d82f      	bhi.n	20029e12 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x112>
20029db2:	f8dd 3420 	ldr.w	r3, [sp, #1056]	@ 0x420
20029db6:	f8dd 0428 	ldr.w	r0, [sp, #1064]	@ 0x428
20029dba:	601a      	str	r2, [r3, #0]
20029dbc:	f000 fd12 	bl	2002a7e4 <memcpy>
20029dc0:	2300      	movs	r3, #0
20029dc2:	461a      	mov	r2, r3
20029dc4:	54f2      	strb	r2, [r6, r3]
20029dc6:	3301      	adds	r3, #1
20029dc8:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
20029dcc:	d1fa      	bne.n	20029dc4 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc4>
20029dce:	4620      	mov	r0, r4
20029dd0:	f50d 6d81 	add.w	sp, sp, #1032	@ 0x408
20029dd4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20029dd8:	9600      	str	r6, [sp, #0]
20029dda:	f7ff fd7d 	bl	200298d8 <mbedtls_rsa_private>
20029dde:	e7ab      	b.n	20029d38 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x38>
20029de0:	f082 0201 	eor.w	r2, r2, #1
20029de4:	ea41 0302 	orr.w	r3, r1, r2
20029de8:	4684      	mov	ip, r0
20029dea:	4602      	mov	r2, r0
20029dec:	f10d 0109 	add.w	r1, sp, #9
20029df0:	f811 ef01 	ldrb.w	lr, [r1, #1]!
20029df4:	3001      	adds	r0, #1
20029df6:	f1be 0fff 	cmp.w	lr, #255	@ 0xff
20029dfa:	bf18      	it	ne
20029dfc:	f04c 0c01 	orrne.w	ip, ip, #1
20029e00:	42b8      	cmp	r0, r7
20029e02:	f08c 0e01 	eor.w	lr, ip, #1
20029e06:	fa52 f28e 	uxtab	r2, r2, lr
20029e0a:	d3f1      	bcc.n	20029df0 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xf0>
20029e0c:	e7c0      	b.n	20029d90 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x90>
20029e0e:	4c03      	ldr	r4, [pc, #12]	@ (20029e1c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x11c>)
20029e10:	e7d6      	b.n	20029dc0 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029e12:	4c03      	ldr	r4, [pc, #12]	@ (20029e20 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x120>)
20029e14:	e7d4      	b.n	20029dc0 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029e16:	4c03      	ldr	r4, [pc, #12]	@ (20029e24 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x124>)
20029e18:	e7d9      	b.n	20029dce <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xce>
20029e1a:	bf00      	nop
20029e1c:	ffffbf00 	.word	0xffffbf00
20029e20:	ffffbc00 	.word	0xffffbc00
20029e24:	ffffbf80 	.word	0xffffbf80

20029e28 <mbedtls_rsa_pkcs1_decrypt>:
20029e28:	b4f0      	push	{r4, r5, r6, r7}
20029e2a:	f8d0 c0a4 	ldr.w	ip, [r0, #164]	@ 0xa4
20029e2e:	e9dd 4504 	ldrd	r4, r5, [sp, #16]
20029e32:	e9dd 6706 	ldrd	r6, r7, [sp, #24]
20029e36:	f1bc 0f00 	cmp.w	ip, #0
20029e3a:	d106      	bne.n	20029e4a <mbedtls_rsa_pkcs1_decrypt+0x22>
20029e3c:	e9cd 6706 	strd	r6, r7, [sp, #24]
20029e40:	e9cd 4504 	strd	r4, r5, [sp, #16]
20029e44:	bcf0      	pop	{r4, r5, r6, r7}
20029e46:	f7ff bf5b 	b.w	20029d00 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>
20029e4a:	4801      	ldr	r0, [pc, #4]	@ (20029e50 <mbedtls_rsa_pkcs1_decrypt+0x28>)
20029e4c:	bcf0      	pop	{r4, r5, r6, r7}
20029e4e:	4770      	bx	lr
20029e50:	ffffbf00 	.word	0xffffbf00

20029e54 <mbedtls_rsa_rsassa_pkcs1_v15_sign>:
20029e54:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029e58:	4692      	mov	sl, r2
20029e5a:	2200      	movs	r2, #0
20029e5c:	b089      	sub	sp, #36	@ 0x24
20029e5e:	2b01      	cmp	r3, #1
20029e60:	4604      	mov	r4, r0
20029e62:	461f      	mov	r7, r3
20029e64:	e9cd 2206 	strd	r2, r2, [sp, #24]
20029e68:	f89d 8048 	ldrb.w	r8, [sp, #72]	@ 0x48
20029e6c:	f8dd 904c 	ldr.w	r9, [sp, #76]	@ 0x4c
20029e70:	9e15      	ldr	r6, [sp, #84]	@ 0x54
20029e72:	9102      	str	r1, [sp, #8]
20029e74:	d107      	bne.n	20029e86 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
20029e76:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
20029e7a:	b122      	cbz	r2, 20029e86 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
20029e7c:	4d59      	ldr	r5, [pc, #356]	@ (20029fe4 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x190>)
20029e7e:	4628      	mov	r0, r5
20029e80:	b009      	add	sp, #36	@ 0x24
20029e82:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029e86:	f8d4 b004 	ldr.w	fp, [r4, #4]
20029e8a:	f1ab 0503 	sub.w	r5, fp, #3
20029e8e:	f1b8 0f00 	cmp.w	r8, #0
20029e92:	d014      	beq.n	20029ebe <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x6a>
20029e94:	4640      	mov	r0, r8
20029e96:	f7fb ff79 	bl	20025d8c <mbedtls_md_info_from_type>
20029e9a:	4681      	mov	r9, r0
20029e9c:	2800      	cmp	r0, #0
20029e9e:	d0ed      	beq.n	20029e7c <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029ea0:	4640      	mov	r0, r8
20029ea2:	aa06      	add	r2, sp, #24
20029ea4:	a907      	add	r1, sp, #28
20029ea6:	f7ff f9c5 	bl	20029234 <mbedtls_oid_get_oid_by_md>
20029eaa:	2800      	cmp	r0, #0
20029eac:	d1e6      	bne.n	20029e7c <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029eae:	9a06      	ldr	r2, [sp, #24]
20029eb0:	4648      	mov	r0, r9
20029eb2:	1aaa      	subs	r2, r5, r2
20029eb4:	f1a2 050a 	sub.w	r5, r2, #10
20029eb8:	f7fb ff74 	bl	20025da4 <mbedtls_md_get_size>
20029ebc:	4681      	mov	r9, r0
20029ebe:	eba5 0209 	sub.w	r2, r5, r9
20029ec2:	2a07      	cmp	r2, #7
20029ec4:	d9da      	bls.n	20029e7c <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029ec6:	4593      	cmp	fp, r2
20029ec8:	d3d8      	bcc.n	20029e7c <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029eca:	46b3      	mov	fp, r6
20029ecc:	2500      	movs	r5, #0
20029ece:	2101      	movs	r1, #1
20029ed0:	f80b 5b02 	strb.w	r5, [fp], #2
20029ed4:	4658      	mov	r0, fp
20029ed6:	7071      	strb	r1, [r6, #1]
20029ed8:	21ff      	movs	r1, #255	@ 0xff
20029eda:	9203      	str	r2, [sp, #12]
20029edc:	f000 fc68 	bl	2002a7b0 <memset>
20029ee0:	9a03      	ldr	r2, [sp, #12]
20029ee2:	eb0b 0002 	add.w	r0, fp, r2
20029ee6:	f80b 5002 	strb.w	r5, [fp, r2]
20029eea:	f1b8 0f00 	cmp.w	r8, #0
20029eee:	d10c      	bne.n	20029f0a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xb6>
20029ef0:	464a      	mov	r2, r9
20029ef2:	9914      	ldr	r1, [sp, #80]	@ 0x50
20029ef4:	3001      	adds	r0, #1
20029ef6:	f000 fc75 	bl	2002a7e4 <memcpy>
20029efa:	bb8f      	cbnz	r7, 20029f60 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x10c>
20029efc:	4632      	mov	r2, r6
20029efe:	4631      	mov	r1, r6
20029f00:	4620      	mov	r0, r4
20029f02:	f7ff fcb3 	bl	2002986c <mbedtls_rsa_public>
20029f06:	4605      	mov	r5, r0
20029f08:	e7b9      	b.n	20029e7e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
20029f0a:	2130      	movs	r1, #48	@ 0x30
20029f0c:	7041      	strb	r1, [r0, #1]
20029f0e:	9a06      	ldr	r2, [sp, #24]
20029f10:	70c1      	strb	r1, [r0, #3]
20029f12:	3208      	adds	r2, #8
20029f14:	fa52 f289 	uxtab	r2, r2, r9
20029f18:	7082      	strb	r2, [r0, #2]
20029f1a:	9a06      	ldr	r2, [sp, #24]
20029f1c:	f100 0807 	add.w	r8, r0, #7
20029f20:	b2d1      	uxtb	r1, r2
20029f22:	f101 0c04 	add.w	ip, r1, #4
20029f26:	f880 c004 	strb.w	ip, [r0, #4]
20029f2a:	f04f 0c06 	mov.w	ip, #6
20029f2e:	7181      	strb	r1, [r0, #6]
20029f30:	f880 c005 	strb.w	ip, [r0, #5]
20029f34:	9907      	ldr	r1, [sp, #28]
20029f36:	4640      	mov	r0, r8
20029f38:	9203      	str	r2, [sp, #12]
20029f3a:	f000 fc53 	bl	2002a7e4 <memcpy>
20029f3e:	2105      	movs	r1, #5
20029f40:	9a03      	ldr	r2, [sp, #12]
20029f42:	fa5f fb89 	uxtb.w	fp, r9
20029f46:	eb08 0002 	add.w	r0, r8, r2
20029f4a:	f808 1002 	strb.w	r1, [r8, r2]
20029f4e:	2204      	movs	r2, #4
20029f50:	7045      	strb	r5, [r0, #1]
20029f52:	7082      	strb	r2, [r0, #2]
20029f54:	f880 b003 	strb.w	fp, [r0, #3]
20029f58:	464a      	mov	r2, r9
20029f5a:	9914      	ldr	r1, [sp, #80]	@ 0x50
20029f5c:	3004      	adds	r0, #4
20029f5e:	e7ca      	b.n	20029ef6 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xa2>
20029f60:	6865      	ldr	r5, [r4, #4]
20029f62:	2001      	movs	r0, #1
20029f64:	4629      	mov	r1, r5
20029f66:	f000 fb41 	bl	2002a5ec <calloc>
20029f6a:	4607      	mov	r7, r0
20029f6c:	b140      	cbz	r0, 20029f80 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x12c>
20029f6e:	4629      	mov	r1, r5
20029f70:	2001      	movs	r0, #1
20029f72:	f000 fb3b 	bl	2002a5ec <calloc>
20029f76:	4680      	mov	r8, r0
20029f78:	b928      	cbnz	r0, 20029f86 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x132>
20029f7a:	4638      	mov	r0, r7
20029f7c:	f000 fb52 	bl	2002a624 <free>
20029f80:	f06f 050f 	mvn.w	r5, #15
20029f84:	e77b      	b.n	20029e7e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
20029f86:	4633      	mov	r3, r6
20029f88:	4652      	mov	r2, sl
20029f8a:	4620      	mov	r0, r4
20029f8c:	9902      	ldr	r1, [sp, #8]
20029f8e:	9700      	str	r7, [sp, #0]
20029f90:	f7ff fca2 	bl	200298d8 <mbedtls_rsa_private>
20029f94:	4605      	mov	r5, r0
20029f96:	b9a0      	cbnz	r0, 20029fc2 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
20029f98:	4642      	mov	r2, r8
20029f9a:	4639      	mov	r1, r7
20029f9c:	4620      	mov	r0, r4
20029f9e:	f7ff fc65 	bl	2002986c <mbedtls_rsa_public>
20029fa2:	4605      	mov	r5, r0
20029fa4:	b968      	cbnz	r0, 20029fc2 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
20029fa6:	4601      	mov	r1, r0
20029fa8:	4603      	mov	r3, r0
20029faa:	6862      	ldr	r2, [r4, #4]
20029fac:	429a      	cmp	r2, r3
20029fae:	d10f      	bne.n	20029fd0 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x17c>
20029fb0:	f88d 1017 	strb.w	r1, [sp, #23]
20029fb4:	f89d 3017 	ldrb.w	r3, [sp, #23]
20029fb8:	b98b      	cbnz	r3, 20029fde <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x18a>
20029fba:	4639      	mov	r1, r7
20029fbc:	4630      	mov	r0, r6
20029fbe:	f000 fc11 	bl	2002a7e4 <memcpy>
20029fc2:	4638      	mov	r0, r7
20029fc4:	f000 fb2e 	bl	2002a624 <free>
20029fc8:	4640      	mov	r0, r8
20029fca:	f000 fb2b 	bl	2002a624 <free>
20029fce:	e756      	b.n	20029e7e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
20029fd0:	f818 0003 	ldrb.w	r0, [r8, r3]
20029fd4:	5cf4      	ldrb	r4, [r6, r3]
20029fd6:	3301      	adds	r3, #1
20029fd8:	4060      	eors	r0, r4
20029fda:	4301      	orrs	r1, r0
20029fdc:	e7e6      	b.n	20029fac <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x158>
20029fde:	4d02      	ldr	r5, [pc, #8]	@ (20029fe8 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x194>)
20029fe0:	e7ef      	b.n	20029fc2 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
20029fe2:	bf00      	nop
20029fe4:	ffffbf80 	.word	0xffffbf80
20029fe8:	ffffbd00 	.word	0xffffbd00

20029fec <mbedtls_rsa_pkcs1_sign>:
20029fec:	b4f0      	push	{r4, r5, r6, r7}
20029fee:	f8d0 c0a4 	ldr.w	ip, [r0, #164]	@ 0xa4
20029ff2:	f89d 4010 	ldrb.w	r4, [sp, #16]
20029ff6:	9f07      	ldr	r7, [sp, #28]
20029ff8:	e9dd 5605 	ldrd	r5, r6, [sp, #20]
20029ffc:	f1bc 0f00 	cmp.w	ip, #0
2002a000:	d106      	bne.n	2002a010 <mbedtls_rsa_pkcs1_sign+0x24>
2002a002:	e9cd 6706 	strd	r6, r7, [sp, #24]
2002a006:	e9cd 4504 	strd	r4, r5, [sp, #16]
2002a00a:	bcf0      	pop	{r4, r5, r6, r7}
2002a00c:	f7ff bf22 	b.w	20029e54 <mbedtls_rsa_rsassa_pkcs1_v15_sign>
2002a010:	4801      	ldr	r0, [pc, #4]	@ (2002a018 <mbedtls_rsa_pkcs1_sign+0x2c>)
2002a012:	bcf0      	pop	{r4, r5, r6, r7}
2002a014:	4770      	bx	lr
2002a016:	bf00      	nop
2002a018:	ffffbf00 	.word	0xffffbf00

2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify>:
2002a01c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a020:	461c      	mov	r4, r3
2002a022:	f2ad 4d2c 	subw	sp, sp, #1068	@ 0x42c
2002a026:	f89d 3450 	ldrb.w	r3, [sp, #1104]	@ 0x450
2002a02a:	2c01      	cmp	r4, #1
2002a02c:	9303      	str	r3, [sp, #12]
2002a02e:	f8dd 8454 	ldr.w	r8, [sp, #1108]	@ 0x454
2002a032:	f8dd 345c 	ldr.w	r3, [sp, #1116]	@ 0x45c
2002a036:	d108      	bne.n	2002a04a <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
2002a038:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a03c:	b12d      	cbz	r5, 2002a04a <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
2002a03e:	4d60      	ldr	r5, [pc, #384]	@ (2002a1c0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a4>)
2002a040:	4628      	mov	r0, r5
2002a042:	f20d 4d2c 	addw	sp, sp, #1068	@ 0x42c
2002a046:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a04a:	6846      	ldr	r6, [r0, #4]
2002a04c:	f1a6 0510 	sub.w	r5, r6, #16
2002a050:	f5b5 7f7c 	cmp.w	r5, #1008	@ 0x3f0
2002a054:	d8f3      	bhi.n	2002a03e <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
2002a056:	af0a      	add	r7, sp, #40	@ 0x28
2002a058:	b954      	cbnz	r4, 2002a070 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x54>
2002a05a:	463a      	mov	r2, r7
2002a05c:	4619      	mov	r1, r3
2002a05e:	f7ff fc05 	bl	2002986c <mbedtls_rsa_public>
2002a062:	4605      	mov	r5, r0
2002a064:	2800      	cmp	r0, #0
2002a066:	d1eb      	bne.n	2002a040 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a068:	783b      	ldrb	r3, [r7, #0]
2002a06a:	b12b      	cbz	r3, 2002a078 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x5c>
2002a06c:	4d55      	ldr	r5, [pc, #340]	@ (2002a1c4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a8>)
2002a06e:	e7e7      	b.n	2002a040 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a070:	9700      	str	r7, [sp, #0]
2002a072:	f7ff fc31 	bl	200298d8 <mbedtls_rsa_private>
2002a076:	e7f4      	b.n	2002a062 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x46>
2002a078:	787b      	ldrb	r3, [r7, #1]
2002a07a:	ac06      	add	r4, sp, #24
2002a07c:	f10d 002a 	add.w	r0, sp, #42	@ 0x2a
2002a080:	2b01      	cmp	r3, #1
2002a082:	6020      	str	r0, [r4, #0]
2002a084:	d1f2      	bne.n	2002a06c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a086:	1e73      	subs	r3, r6, #1
2002a088:	443b      	add	r3, r7
2002a08a:	7802      	ldrb	r2, [r0, #0]
2002a08c:	b992      	cbnz	r2, 2002a0b4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x98>
2002a08e:	3001      	adds	r0, #1
2002a090:	1bc7      	subs	r7, r0, r7
2002a092:	2f0a      	cmp	r7, #10
2002a094:	6020      	str	r0, [r4, #0]
2002a096:	dde9      	ble.n	2002a06c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a098:	1bf6      	subs	r6, r6, r7
2002a09a:	4546      	cmp	r6, r8
2002a09c:	d112      	bne.n	2002a0c4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a09e:	9b03      	ldr	r3, [sp, #12]
2002a0a0:	b983      	cbnz	r3, 2002a0c4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a0a2:	4642      	mov	r2, r8
2002a0a4:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a0a8:	f000 fb72 	bl	2002a790 <memcmp>
2002a0ac:	2800      	cmp	r0, #0
2002a0ae:	d0c7      	beq.n	2002a040 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a0b0:	4d45      	ldr	r5, [pc, #276]	@ (2002a1c8 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1ac>)
2002a0b2:	e7c5      	b.n	2002a040 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a0b4:	4298      	cmp	r0, r3
2002a0b6:	d2d9      	bcs.n	2002a06c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a0b8:	2aff      	cmp	r2, #255	@ 0xff
2002a0ba:	f100 0001 	add.w	r0, r0, #1
2002a0be:	d1d5      	bne.n	2002a06c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a0c0:	6020      	str	r0, [r4, #0]
2002a0c2:	e7e2      	b.n	2002a08a <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x6e>
2002a0c4:	9803      	ldr	r0, [sp, #12]
2002a0c6:	f7fb fe61 	bl	20025d8c <mbedtls_md_info_from_type>
2002a0ca:	2800      	cmp	r0, #0
2002a0cc:	d0b7      	beq.n	2002a03e <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
2002a0ce:	f7fb fe69 	bl	20025da4 <mbedtls_md_get_size>
2002a0d2:	f8d4 a000 	ldr.w	sl, [r4]
2002a0d6:	af05      	add	r7, sp, #20
2002a0d8:	eb0a 0806 	add.w	r8, sl, r6
2002a0dc:	4681      	mov	r9, r0
2002a0de:	2330      	movs	r3, #48	@ 0x30
2002a0e0:	463a      	mov	r2, r7
2002a0e2:	4641      	mov	r1, r8
2002a0e4:	4620      	mov	r0, r4
2002a0e6:	f7fd fb89 	bl	200277fc <mbedtls_asn1_get_tag>
2002a0ea:	2800      	cmp	r0, #0
2002a0ec:	d1e0      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a0ee:	f8d4 b000 	ldr.w	fp, [r4]
2002a0f2:	f10a 0a02 	add.w	sl, sl, #2
2002a0f6:	45d3      	cmp	fp, sl
2002a0f8:	d1da      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a0fa:	683b      	ldr	r3, [r7, #0]
2002a0fc:	3302      	adds	r3, #2
2002a0fe:	42b3      	cmp	r3, r6
2002a100:	d1d6      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a102:	2330      	movs	r3, #48	@ 0x30
2002a104:	463a      	mov	r2, r7
2002a106:	4641      	mov	r1, r8
2002a108:	4620      	mov	r0, r4
2002a10a:	f7fd fb77 	bl	200277fc <mbedtls_asn1_get_tag>
2002a10e:	2800      	cmp	r0, #0
2002a110:	d1ce      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a112:	f8d4 a000 	ldr.w	sl, [r4]
2002a116:	f10b 0b02 	add.w	fp, fp, #2
2002a11a:	45da      	cmp	sl, fp
2002a11c:	d1c8      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a11e:	683b      	ldr	r3, [r7, #0]
2002a120:	3306      	adds	r3, #6
2002a122:	444b      	add	r3, r9
2002a124:	42b3      	cmp	r3, r6
2002a126:	d1c3      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a128:	2306      	movs	r3, #6
2002a12a:	4641      	mov	r1, r8
2002a12c:	4620      	mov	r0, r4
2002a12e:	aa08      	add	r2, sp, #32
2002a130:	ae07      	add	r6, sp, #28
2002a132:	f7fd fb63 	bl	200277fc <mbedtls_asn1_get_tag>
2002a136:	2800      	cmp	r0, #0
2002a138:	d1ba      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a13a:	6823      	ldr	r3, [r4, #0]
2002a13c:	f10a 0a02 	add.w	sl, sl, #2
2002a140:	4553      	cmp	r3, sl
2002a142:	d1b5      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a144:	9a08      	ldr	r2, [sp, #32]
2002a146:	f10d 0a13 	add.w	sl, sp, #19
2002a14a:	9309      	str	r3, [sp, #36]	@ 0x24
2002a14c:	4651      	mov	r1, sl
2002a14e:	4413      	add	r3, r2
2002a150:	4630      	mov	r0, r6
2002a152:	6023      	str	r3, [r4, #0]
2002a154:	f7ff f854 	bl	20029200 <mbedtls_oid_get_md_alg>
2002a158:	2800      	cmp	r0, #0
2002a15a:	d1a9      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a15c:	f89d 3013 	ldrb.w	r3, [sp, #19]
2002a160:	9a03      	ldr	r2, [sp, #12]
2002a162:	4293      	cmp	r3, r2
2002a164:	d1a4      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a166:	2305      	movs	r3, #5
2002a168:	463a      	mov	r2, r7
2002a16a:	4641      	mov	r1, r8
2002a16c:	4620      	mov	r0, r4
2002a16e:	f8d4 a000 	ldr.w	sl, [r4]
2002a172:	f7fd fb43 	bl	200277fc <mbedtls_asn1_get_tag>
2002a176:	2800      	cmp	r0, #0
2002a178:	d19a      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a17a:	6826      	ldr	r6, [r4, #0]
2002a17c:	f10a 0a02 	add.w	sl, sl, #2
2002a180:	4556      	cmp	r6, sl
2002a182:	d195      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a184:	2304      	movs	r3, #4
2002a186:	463a      	mov	r2, r7
2002a188:	4641      	mov	r1, r8
2002a18a:	4620      	mov	r0, r4
2002a18c:	f7fd fb36 	bl	200277fc <mbedtls_asn1_get_tag>
2002a190:	2800      	cmp	r0, #0
2002a192:	d18d      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a194:	6824      	ldr	r4, [r4, #0]
2002a196:	3602      	adds	r6, #2
2002a198:	42b4      	cmp	r4, r6
2002a19a:	d189      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a19c:	683b      	ldr	r3, [r7, #0]
2002a19e:	454b      	cmp	r3, r9
2002a1a0:	d186      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1a2:	464a      	mov	r2, r9
2002a1a4:	4620      	mov	r0, r4
2002a1a6:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a1aa:	f000 faf1 	bl	2002a790 <memcmp>
2002a1ae:	2800      	cmp	r0, #0
2002a1b0:	f47f af7e 	bne.w	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1b4:	444c      	add	r4, r9
2002a1b6:	45a0      	cmp	r8, r4
2002a1b8:	f43f af42 	beq.w	2002a040 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a1bc:	e778      	b.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1be:	bf00      	nop
2002a1c0:	ffffbf80 	.word	0xffffbf80
2002a1c4:	ffffbf00 	.word	0xffffbf00
2002a1c8:	ffffbc80 	.word	0xffffbc80

2002a1cc <mbedtls_rsa_pkcs1_verify>:
2002a1cc:	b4f0      	push	{r4, r5, r6, r7}
2002a1ce:	f8d0 c0a4 	ldr.w	ip, [r0, #164]	@ 0xa4
2002a1d2:	f89d 4010 	ldrb.w	r4, [sp, #16]
2002a1d6:	9f07      	ldr	r7, [sp, #28]
2002a1d8:	e9dd 5605 	ldrd	r5, r6, [sp, #20]
2002a1dc:	f1bc 0f00 	cmp.w	ip, #0
2002a1e0:	d106      	bne.n	2002a1f0 <mbedtls_rsa_pkcs1_verify+0x24>
2002a1e2:	e9cd 6706 	strd	r6, r7, [sp, #24]
2002a1e6:	e9cd 4504 	strd	r4, r5, [sp, #16]
2002a1ea:	bcf0      	pop	{r4, r5, r6, r7}
2002a1ec:	f7ff bf16 	b.w	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify>
2002a1f0:	4801      	ldr	r0, [pc, #4]	@ (2002a1f8 <mbedtls_rsa_pkcs1_verify+0x2c>)
2002a1f2:	bcf0      	pop	{r4, r5, r6, r7}
2002a1f4:	4770      	bx	lr
2002a1f6:	bf00      	nop
2002a1f8:	ffffbf00 	.word	0xffffbf00

2002a1fc <mbedtls_rsa_free>:
2002a1fc:	b510      	push	{r4, lr}
2002a1fe:	4604      	mov	r4, r0
2002a200:	308c      	adds	r0, #140	@ 0x8c
2002a202:	f7fd fd30 	bl	20027c66 <mbedtls_mpi_free>
2002a206:	f104 0098 	add.w	r0, r4, #152	@ 0x98
2002a20a:	f7fd fd2c 	bl	20027c66 <mbedtls_mpi_free>
2002a20e:	f104 0080 	add.w	r0, r4, #128	@ 0x80
2002a212:	f7fd fd28 	bl	20027c66 <mbedtls_mpi_free>
2002a216:	f104 0074 	add.w	r0, r4, #116	@ 0x74
2002a21a:	f7fd fd24 	bl	20027c66 <mbedtls_mpi_free>
2002a21e:	f104 0068 	add.w	r0, r4, #104	@ 0x68
2002a222:	f7fd fd20 	bl	20027c66 <mbedtls_mpi_free>
2002a226:	f104 005c 	add.w	r0, r4, #92	@ 0x5c
2002a22a:	f7fd fd1c 	bl	20027c66 <mbedtls_mpi_free>
2002a22e:	f104 0050 	add.w	r0, r4, #80	@ 0x50
2002a232:	f7fd fd18 	bl	20027c66 <mbedtls_mpi_free>
2002a236:	f104 0044 	add.w	r0, r4, #68	@ 0x44
2002a23a:	f7fd fd14 	bl	20027c66 <mbedtls_mpi_free>
2002a23e:	f104 0038 	add.w	r0, r4, #56	@ 0x38
2002a242:	f7fd fd10 	bl	20027c66 <mbedtls_mpi_free>
2002a246:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
2002a24a:	f7fd fd0c 	bl	20027c66 <mbedtls_mpi_free>
2002a24e:	f104 0020 	add.w	r0, r4, #32
2002a252:	f7fd fd08 	bl	20027c66 <mbedtls_mpi_free>
2002a256:	f104 0014 	add.w	r0, r4, #20
2002a25a:	f7fd fd04 	bl	20027c66 <mbedtls_mpi_free>
2002a25e:	f104 0008 	add.w	r0, r4, #8
2002a262:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002a266:	f7fd bcfe 	b.w	20027c66 <mbedtls_mpi_free>
	...

2002a26c <__aeabi_uldivmod>:
2002a26c:	b953      	cbnz	r3, 2002a284 <__aeabi_uldivmod+0x18>
2002a26e:	b94a      	cbnz	r2, 2002a284 <__aeabi_uldivmod+0x18>
2002a270:	2900      	cmp	r1, #0
2002a272:	bf08      	it	eq
2002a274:	2800      	cmpeq	r0, #0
2002a276:	bf1c      	itt	ne
2002a278:	f04f 31ff 	movne.w	r1, #4294967295
2002a27c:	f04f 30ff 	movne.w	r0, #4294967295
2002a280:	f000 b9b2 	b.w	2002a5e8 <__aeabi_idiv0>
2002a284:	f1ad 0c08 	sub.w	ip, sp, #8
2002a288:	e96d ce04 	strd	ip, lr, [sp, #-16]!
2002a28c:	f000 f806 	bl	2002a29c <__udivmoddi4>
2002a290:	f8dd e004 	ldr.w	lr, [sp, #4]
2002a294:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
2002a298:	b004      	add	sp, #16
2002a29a:	4770      	bx	lr

2002a29c <__udivmoddi4>:
2002a29c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a2a0:	468c      	mov	ip, r1
2002a2a2:	9e09      	ldr	r6, [sp, #36]	@ 0x24
2002a2a4:	4604      	mov	r4, r0
2002a2a6:	460f      	mov	r7, r1
2002a2a8:	2b00      	cmp	r3, #0
2002a2aa:	d148      	bne.n	2002a33e <__udivmoddi4+0xa2>
2002a2ac:	428a      	cmp	r2, r1
2002a2ae:	4615      	mov	r5, r2
2002a2b0:	d95e      	bls.n	2002a370 <__udivmoddi4+0xd4>
2002a2b2:	fab2 f382 	clz	r3, r2
2002a2b6:	b13b      	cbz	r3, 2002a2c8 <__udivmoddi4+0x2c>
2002a2b8:	f1c3 0220 	rsb	r2, r3, #32
2002a2bc:	409f      	lsls	r7, r3
2002a2be:	409d      	lsls	r5, r3
2002a2c0:	409c      	lsls	r4, r3
2002a2c2:	fa20 f202 	lsr.w	r2, r0, r2
2002a2c6:	4317      	orrs	r7, r2
2002a2c8:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a2cc:	fa1f fc85 	uxth.w	ip, r5
2002a2d0:	0c22      	lsrs	r2, r4, #16
2002a2d2:	fbb7 f1fe 	udiv	r1, r7, lr
2002a2d6:	fb0e 7711 	mls	r7, lr, r1, r7
2002a2da:	fb01 f00c 	mul.w	r0, r1, ip
2002a2de:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
2002a2e2:	4290      	cmp	r0, r2
2002a2e4:	d907      	bls.n	2002a2f6 <__udivmoddi4+0x5a>
2002a2e6:	18aa      	adds	r2, r5, r2
2002a2e8:	f101 37ff 	add.w	r7, r1, #4294967295
2002a2ec:	d202      	bcs.n	2002a2f4 <__udivmoddi4+0x58>
2002a2ee:	4290      	cmp	r0, r2
2002a2f0:	f200 8158 	bhi.w	2002a5a4 <__udivmoddi4+0x308>
2002a2f4:	4639      	mov	r1, r7
2002a2f6:	1a12      	subs	r2, r2, r0
2002a2f8:	b2a4      	uxth	r4, r4
2002a2fa:	fbb2 f0fe 	udiv	r0, r2, lr
2002a2fe:	fb0e 2210 	mls	r2, lr, r0, r2
2002a302:	fb00 fc0c 	mul.w	ip, r0, ip
2002a306:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a30a:	45a4      	cmp	ip, r4
2002a30c:	d90b      	bls.n	2002a326 <__udivmoddi4+0x8a>
2002a30e:	192c      	adds	r4, r5, r4
2002a310:	f100 32ff 	add.w	r2, r0, #4294967295
2002a314:	bf2c      	ite	cs
2002a316:	2701      	movcs	r7, #1
2002a318:	2700      	movcc	r7, #0
2002a31a:	45a4      	cmp	ip, r4
2002a31c:	d902      	bls.n	2002a324 <__udivmoddi4+0x88>
2002a31e:	2f00      	cmp	r7, #0
2002a320:	f000 8143 	beq.w	2002a5aa <__udivmoddi4+0x30e>
2002a324:	4610      	mov	r0, r2
2002a326:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
2002a32a:	eba4 040c 	sub.w	r4, r4, ip
2002a32e:	2100      	movs	r1, #0
2002a330:	b11e      	cbz	r6, 2002a33a <__udivmoddi4+0x9e>
2002a332:	40dc      	lsrs	r4, r3
2002a334:	2300      	movs	r3, #0
2002a336:	e9c6 4300 	strd	r4, r3, [r6]
2002a33a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a33e:	428b      	cmp	r3, r1
2002a340:	d906      	bls.n	2002a350 <__udivmoddi4+0xb4>
2002a342:	b10e      	cbz	r6, 2002a348 <__udivmoddi4+0xac>
2002a344:	e9c6 0100 	strd	r0, r1, [r6]
2002a348:	2100      	movs	r1, #0
2002a34a:	4608      	mov	r0, r1
2002a34c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a350:	fab3 f183 	clz	r1, r3
2002a354:	2900      	cmp	r1, #0
2002a356:	d151      	bne.n	2002a3fc <__udivmoddi4+0x160>
2002a358:	4563      	cmp	r3, ip
2002a35a:	f0c0 8116 	bcc.w	2002a58a <__udivmoddi4+0x2ee>
2002a35e:	4282      	cmp	r2, r0
2002a360:	f240 8113 	bls.w	2002a58a <__udivmoddi4+0x2ee>
2002a364:	4608      	mov	r0, r1
2002a366:	2e00      	cmp	r6, #0
2002a368:	d0e7      	beq.n	2002a33a <__udivmoddi4+0x9e>
2002a36a:	e9c6 4700 	strd	r4, r7, [r6]
2002a36e:	e7e4      	b.n	2002a33a <__udivmoddi4+0x9e>
2002a370:	2a00      	cmp	r2, #0
2002a372:	f000 80af 	beq.w	2002a4d4 <__udivmoddi4+0x238>
2002a376:	fab2 f382 	clz	r3, r2
2002a37a:	2b00      	cmp	r3, #0
2002a37c:	f040 80c2 	bne.w	2002a504 <__udivmoddi4+0x268>
2002a380:	1a8a      	subs	r2, r1, r2
2002a382:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a386:	b2af      	uxth	r7, r5
2002a388:	2101      	movs	r1, #1
2002a38a:	0c20      	lsrs	r0, r4, #16
2002a38c:	fbb2 fcfe 	udiv	ip, r2, lr
2002a390:	fb0e 221c 	mls	r2, lr, ip, r2
2002a394:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
2002a398:	fb07 f00c 	mul.w	r0, r7, ip
2002a39c:	4290      	cmp	r0, r2
2002a39e:	d90e      	bls.n	2002a3be <__udivmoddi4+0x122>
2002a3a0:	18aa      	adds	r2, r5, r2
2002a3a2:	f10c 38ff 	add.w	r8, ip, #4294967295
2002a3a6:	bf2c      	ite	cs
2002a3a8:	f04f 0901 	movcs.w	r9, #1
2002a3ac:	f04f 0900 	movcc.w	r9, #0
2002a3b0:	4290      	cmp	r0, r2
2002a3b2:	d903      	bls.n	2002a3bc <__udivmoddi4+0x120>
2002a3b4:	f1b9 0f00 	cmp.w	r9, #0
2002a3b8:	f000 80f0 	beq.w	2002a59c <__udivmoddi4+0x300>
2002a3bc:	46c4      	mov	ip, r8
2002a3be:	1a12      	subs	r2, r2, r0
2002a3c0:	b2a4      	uxth	r4, r4
2002a3c2:	fbb2 f0fe 	udiv	r0, r2, lr
2002a3c6:	fb0e 2210 	mls	r2, lr, r0, r2
2002a3ca:	fb00 f707 	mul.w	r7, r0, r7
2002a3ce:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a3d2:	42a7      	cmp	r7, r4
2002a3d4:	d90e      	bls.n	2002a3f4 <__udivmoddi4+0x158>
2002a3d6:	192c      	adds	r4, r5, r4
2002a3d8:	f100 32ff 	add.w	r2, r0, #4294967295
2002a3dc:	bf2c      	ite	cs
2002a3de:	f04f 0e01 	movcs.w	lr, #1
2002a3e2:	f04f 0e00 	movcc.w	lr, #0
2002a3e6:	42a7      	cmp	r7, r4
2002a3e8:	d903      	bls.n	2002a3f2 <__udivmoddi4+0x156>
2002a3ea:	f1be 0f00 	cmp.w	lr, #0
2002a3ee:	f000 80d2 	beq.w	2002a596 <__udivmoddi4+0x2fa>
2002a3f2:	4610      	mov	r0, r2
2002a3f4:	1be4      	subs	r4, r4, r7
2002a3f6:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
2002a3fa:	e799      	b.n	2002a330 <__udivmoddi4+0x94>
2002a3fc:	f1c1 0520 	rsb	r5, r1, #32
2002a400:	408b      	lsls	r3, r1
2002a402:	fa0c f401 	lsl.w	r4, ip, r1
2002a406:	fa00 f901 	lsl.w	r9, r0, r1
2002a40a:	fa22 f705 	lsr.w	r7, r2, r5
2002a40e:	fa2c fc05 	lsr.w	ip, ip, r5
2002a412:	408a      	lsls	r2, r1
2002a414:	431f      	orrs	r7, r3
2002a416:	fa20 f305 	lsr.w	r3, r0, r5
2002a41a:	0c38      	lsrs	r0, r7, #16
2002a41c:	4323      	orrs	r3, r4
2002a41e:	fa1f fe87 	uxth.w	lr, r7
2002a422:	0c1c      	lsrs	r4, r3, #16
2002a424:	fbbc f8f0 	udiv	r8, ip, r0
2002a428:	fb00 cc18 	mls	ip, r0, r8, ip
2002a42c:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
2002a430:	fb08 fc0e 	mul.w	ip, r8, lr
2002a434:	45a4      	cmp	ip, r4
2002a436:	d90e      	bls.n	2002a456 <__udivmoddi4+0x1ba>
2002a438:	193c      	adds	r4, r7, r4
2002a43a:	f108 3aff 	add.w	sl, r8, #4294967295
2002a43e:	bf2c      	ite	cs
2002a440:	f04f 0b01 	movcs.w	fp, #1
2002a444:	f04f 0b00 	movcc.w	fp, #0
2002a448:	45a4      	cmp	ip, r4
2002a44a:	d903      	bls.n	2002a454 <__udivmoddi4+0x1b8>
2002a44c:	f1bb 0f00 	cmp.w	fp, #0
2002a450:	f000 80b8 	beq.w	2002a5c4 <__udivmoddi4+0x328>
2002a454:	46d0      	mov	r8, sl
2002a456:	eba4 040c 	sub.w	r4, r4, ip
2002a45a:	fa1f fc83 	uxth.w	ip, r3
2002a45e:	fbb4 f3f0 	udiv	r3, r4, r0
2002a462:	fb00 4413 	mls	r4, r0, r3, r4
2002a466:	fb03 fe0e 	mul.w	lr, r3, lr
2002a46a:	ea4c 4404 	orr.w	r4, ip, r4, lsl #16
2002a46e:	45a6      	cmp	lr, r4
2002a470:	d90e      	bls.n	2002a490 <__udivmoddi4+0x1f4>
2002a472:	193c      	adds	r4, r7, r4
2002a474:	f103 30ff 	add.w	r0, r3, #4294967295
2002a478:	bf2c      	ite	cs
2002a47a:	f04f 0c01 	movcs.w	ip, #1
2002a47e:	f04f 0c00 	movcc.w	ip, #0
2002a482:	45a6      	cmp	lr, r4
2002a484:	d903      	bls.n	2002a48e <__udivmoddi4+0x1f2>
2002a486:	f1bc 0f00 	cmp.w	ip, #0
2002a48a:	f000 809f 	beq.w	2002a5cc <__udivmoddi4+0x330>
2002a48e:	4603      	mov	r3, r0
2002a490:	ea43 4008 	orr.w	r0, r3, r8, lsl #16
2002a494:	eba4 040e 	sub.w	r4, r4, lr
2002a498:	fba0 ec02 	umull	lr, ip, r0, r2
2002a49c:	4564      	cmp	r4, ip
2002a49e:	4673      	mov	r3, lr
2002a4a0:	46e0      	mov	r8, ip
2002a4a2:	d302      	bcc.n	2002a4aa <__udivmoddi4+0x20e>
2002a4a4:	d107      	bne.n	2002a4b6 <__udivmoddi4+0x21a>
2002a4a6:	45f1      	cmp	r9, lr
2002a4a8:	d205      	bcs.n	2002a4b6 <__udivmoddi4+0x21a>
2002a4aa:	ebbe 0302 	subs.w	r3, lr, r2
2002a4ae:	eb6c 0c07 	sbc.w	ip, ip, r7
2002a4b2:	3801      	subs	r0, #1
2002a4b4:	46e0      	mov	r8, ip
2002a4b6:	b15e      	cbz	r6, 2002a4d0 <__udivmoddi4+0x234>
2002a4b8:	ebb9 0203 	subs.w	r2, r9, r3
2002a4bc:	eb64 0408 	sbc.w	r4, r4, r8
2002a4c0:	fa04 f505 	lsl.w	r5, r4, r5
2002a4c4:	fa22 f301 	lsr.w	r3, r2, r1
2002a4c8:	40cc      	lsrs	r4, r1
2002a4ca:	431d      	orrs	r5, r3
2002a4cc:	e9c6 5400 	strd	r5, r4, [r6]
2002a4d0:	2100      	movs	r1, #0
2002a4d2:	e732      	b.n	2002a33a <__udivmoddi4+0x9e>
2002a4d4:	0842      	lsrs	r2, r0, #1
2002a4d6:	462f      	mov	r7, r5
2002a4d8:	084b      	lsrs	r3, r1, #1
2002a4da:	46ac      	mov	ip, r5
2002a4dc:	ea42 72c1 	orr.w	r2, r2, r1, lsl #31
2002a4e0:	46ae      	mov	lr, r5
2002a4e2:	07c4      	lsls	r4, r0, #31
2002a4e4:	0c11      	lsrs	r1, r2, #16
2002a4e6:	b292      	uxth	r2, r2
2002a4e8:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
2002a4ec:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a4f0:	fbb1 f1f5 	udiv	r1, r1, r5
2002a4f4:	fbb3 f0f5 	udiv	r0, r3, r5
2002a4f8:	231f      	movs	r3, #31
2002a4fa:	eba2 020c 	sub.w	r2, r2, ip
2002a4fe:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
2002a502:	e742      	b.n	2002a38a <__udivmoddi4+0xee>
2002a504:	409d      	lsls	r5, r3
2002a506:	f1c3 0220 	rsb	r2, r3, #32
2002a50a:	4099      	lsls	r1, r3
2002a50c:	409c      	lsls	r4, r3
2002a50e:	fa2c fc02 	lsr.w	ip, ip, r2
2002a512:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a516:	fa20 f202 	lsr.w	r2, r0, r2
2002a51a:	b2af      	uxth	r7, r5
2002a51c:	fbbc f8fe 	udiv	r8, ip, lr
2002a520:	430a      	orrs	r2, r1
2002a522:	fb0e cc18 	mls	ip, lr, r8, ip
2002a526:	0c11      	lsrs	r1, r2, #16
2002a528:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
2002a52c:	fb08 fc07 	mul.w	ip, r8, r7
2002a530:	458c      	cmp	ip, r1
2002a532:	d950      	bls.n	2002a5d6 <__udivmoddi4+0x33a>
2002a534:	1869      	adds	r1, r5, r1
2002a536:	f108 30ff 	add.w	r0, r8, #4294967295
2002a53a:	bf2c      	ite	cs
2002a53c:	f04f 0901 	movcs.w	r9, #1
2002a540:	f04f 0900 	movcc.w	r9, #0
2002a544:	458c      	cmp	ip, r1
2002a546:	d902      	bls.n	2002a54e <__udivmoddi4+0x2b2>
2002a548:	f1b9 0f00 	cmp.w	r9, #0
2002a54c:	d030      	beq.n	2002a5b0 <__udivmoddi4+0x314>
2002a54e:	eba1 010c 	sub.w	r1, r1, ip
2002a552:	fbb1 f8fe 	udiv	r8, r1, lr
2002a556:	fb08 fc07 	mul.w	ip, r8, r7
2002a55a:	fb0e 1118 	mls	r1, lr, r8, r1
2002a55e:	b292      	uxth	r2, r2
2002a560:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a564:	4562      	cmp	r2, ip
2002a566:	d234      	bcs.n	2002a5d2 <__udivmoddi4+0x336>
2002a568:	18aa      	adds	r2, r5, r2
2002a56a:	f108 31ff 	add.w	r1, r8, #4294967295
2002a56e:	bf2c      	ite	cs
2002a570:	f04f 0901 	movcs.w	r9, #1
2002a574:	f04f 0900 	movcc.w	r9, #0
2002a578:	4562      	cmp	r2, ip
2002a57a:	d2be      	bcs.n	2002a4fa <__udivmoddi4+0x25e>
2002a57c:	f1b9 0f00 	cmp.w	r9, #0
2002a580:	d1bb      	bne.n	2002a4fa <__udivmoddi4+0x25e>
2002a582:	f1a8 0102 	sub.w	r1, r8, #2
2002a586:	442a      	add	r2, r5
2002a588:	e7b7      	b.n	2002a4fa <__udivmoddi4+0x25e>
2002a58a:	1a84      	subs	r4, r0, r2
2002a58c:	eb6c 0203 	sbc.w	r2, ip, r3
2002a590:	2001      	movs	r0, #1
2002a592:	4617      	mov	r7, r2
2002a594:	e6e7      	b.n	2002a366 <__udivmoddi4+0xca>
2002a596:	442c      	add	r4, r5
2002a598:	3802      	subs	r0, #2
2002a59a:	e72b      	b.n	2002a3f4 <__udivmoddi4+0x158>
2002a59c:	f1ac 0c02 	sub.w	ip, ip, #2
2002a5a0:	442a      	add	r2, r5
2002a5a2:	e70c      	b.n	2002a3be <__udivmoddi4+0x122>
2002a5a4:	3902      	subs	r1, #2
2002a5a6:	442a      	add	r2, r5
2002a5a8:	e6a5      	b.n	2002a2f6 <__udivmoddi4+0x5a>
2002a5aa:	442c      	add	r4, r5
2002a5ac:	3802      	subs	r0, #2
2002a5ae:	e6ba      	b.n	2002a326 <__udivmoddi4+0x8a>
2002a5b0:	eba5 0c0c 	sub.w	ip, r5, ip
2002a5b4:	f1a8 0002 	sub.w	r0, r8, #2
2002a5b8:	4461      	add	r1, ip
2002a5ba:	fbb1 f8fe 	udiv	r8, r1, lr
2002a5be:	fb08 fc07 	mul.w	ip, r8, r7
2002a5c2:	e7ca      	b.n	2002a55a <__udivmoddi4+0x2be>
2002a5c4:	f1a8 0802 	sub.w	r8, r8, #2
2002a5c8:	443c      	add	r4, r7
2002a5ca:	e744      	b.n	2002a456 <__udivmoddi4+0x1ba>
2002a5cc:	3b02      	subs	r3, #2
2002a5ce:	443c      	add	r4, r7
2002a5d0:	e75e      	b.n	2002a490 <__udivmoddi4+0x1f4>
2002a5d2:	4641      	mov	r1, r8
2002a5d4:	e791      	b.n	2002a4fa <__udivmoddi4+0x25e>
2002a5d6:	eba1 010c 	sub.w	r1, r1, ip
2002a5da:	4640      	mov	r0, r8
2002a5dc:	fbb1 f8fe 	udiv	r8, r1, lr
2002a5e0:	fb08 fc07 	mul.w	ip, r8, r7
2002a5e4:	e7b9      	b.n	2002a55a <__udivmoddi4+0x2be>
2002a5e6:	bf00      	nop

2002a5e8 <__aeabi_idiv0>:
2002a5e8:	4770      	bx	lr
2002a5ea:	bf00      	nop

2002a5ec <calloc>:
2002a5ec:	4b02      	ldr	r3, [pc, #8]	@ (2002a5f8 <calloc+0xc>)
2002a5ee:	460a      	mov	r2, r1
2002a5f0:	4601      	mov	r1, r0
2002a5f2:	6818      	ldr	r0, [r3, #0]
2002a5f4:	f000 b802 	b.w	2002a5fc <_calloc_r>
2002a5f8:	20044908 	.word	0x20044908

2002a5fc <_calloc_r>:
2002a5fc:	b570      	push	{r4, r5, r6, lr}
2002a5fe:	fba1 5402 	umull	r5, r4, r1, r2
2002a602:	b934      	cbnz	r4, 2002a612 <_calloc_r+0x16>
2002a604:	4629      	mov	r1, r5
2002a606:	f000 f837 	bl	2002a678 <_malloc_r>
2002a60a:	4606      	mov	r6, r0
2002a60c:	b928      	cbnz	r0, 2002a61a <_calloc_r+0x1e>
2002a60e:	4630      	mov	r0, r6
2002a610:	bd70      	pop	{r4, r5, r6, pc}
2002a612:	220c      	movs	r2, #12
2002a614:	2600      	movs	r6, #0
2002a616:	6002      	str	r2, [r0, #0]
2002a618:	e7f9      	b.n	2002a60e <_calloc_r+0x12>
2002a61a:	462a      	mov	r2, r5
2002a61c:	4621      	mov	r1, r4
2002a61e:	f000 f8c7 	bl	2002a7b0 <memset>
2002a622:	e7f4      	b.n	2002a60e <_calloc_r+0x12>

2002a624 <free>:
2002a624:	4b02      	ldr	r3, [pc, #8]	@ (2002a630 <free+0xc>)
2002a626:	4601      	mov	r1, r0
2002a628:	6818      	ldr	r0, [r3, #0]
2002a62a:	f000 b8e9 	b.w	2002a800 <_free_r>
2002a62e:	bf00      	nop
2002a630:	20044908 	.word	0x20044908

2002a634 <sbrk_aligned>:
2002a634:	b570      	push	{r4, r5, r6, lr}
2002a636:	4e0f      	ldr	r6, [pc, #60]	@ (2002a674 <sbrk_aligned+0x40>)
2002a638:	460c      	mov	r4, r1
2002a63a:	4605      	mov	r5, r0
2002a63c:	6831      	ldr	r1, [r6, #0]
2002a63e:	b911      	cbnz	r1, 2002a646 <sbrk_aligned+0x12>
2002a640:	f000 f8be 	bl	2002a7c0 <_sbrk_r>
2002a644:	6030      	str	r0, [r6, #0]
2002a646:	4621      	mov	r1, r4
2002a648:	4628      	mov	r0, r5
2002a64a:	f000 f8b9 	bl	2002a7c0 <_sbrk_r>
2002a64e:	1c43      	adds	r3, r0, #1
2002a650:	d103      	bne.n	2002a65a <sbrk_aligned+0x26>
2002a652:	f04f 34ff 	mov.w	r4, #4294967295
2002a656:	4620      	mov	r0, r4
2002a658:	bd70      	pop	{r4, r5, r6, pc}
2002a65a:	1cc4      	adds	r4, r0, #3
2002a65c:	f024 0403 	bic.w	r4, r4, #3
2002a660:	42a0      	cmp	r0, r4
2002a662:	d0f8      	beq.n	2002a656 <sbrk_aligned+0x22>
2002a664:	1a21      	subs	r1, r4, r0
2002a666:	4628      	mov	r0, r5
2002a668:	f000 f8aa 	bl	2002a7c0 <_sbrk_r>
2002a66c:	3001      	adds	r0, #1
2002a66e:	d1f2      	bne.n	2002a656 <sbrk_aligned+0x22>
2002a670:	e7ef      	b.n	2002a652 <sbrk_aligned+0x1e>
2002a672:	bf00      	nop
2002a674:	2004a3cc 	.word	0x2004a3cc

2002a678 <_malloc_r>:
2002a678:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002a67c:	1ccd      	adds	r5, r1, #3
2002a67e:	4606      	mov	r6, r0
2002a680:	f025 0503 	bic.w	r5, r5, #3
2002a684:	3508      	adds	r5, #8
2002a686:	2d0c      	cmp	r5, #12
2002a688:	bf38      	it	cc
2002a68a:	250c      	movcc	r5, #12
2002a68c:	2d00      	cmp	r5, #0
2002a68e:	db01      	blt.n	2002a694 <_malloc_r+0x1c>
2002a690:	42a9      	cmp	r1, r5
2002a692:	d904      	bls.n	2002a69e <_malloc_r+0x26>
2002a694:	230c      	movs	r3, #12
2002a696:	6033      	str	r3, [r6, #0]
2002a698:	2000      	movs	r0, #0
2002a69a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
2002a69e:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 2002a774 <_malloc_r+0xfc>
2002a6a2:	f000 f869 	bl	2002a778 <__malloc_lock>
2002a6a6:	f8d8 3000 	ldr.w	r3, [r8]
2002a6aa:	461c      	mov	r4, r3
2002a6ac:	bb44      	cbnz	r4, 2002a700 <_malloc_r+0x88>
2002a6ae:	4629      	mov	r1, r5
2002a6b0:	4630      	mov	r0, r6
2002a6b2:	f7ff ffbf 	bl	2002a634 <sbrk_aligned>
2002a6b6:	1c43      	adds	r3, r0, #1
2002a6b8:	4604      	mov	r4, r0
2002a6ba:	d158      	bne.n	2002a76e <_malloc_r+0xf6>
2002a6bc:	f8d8 4000 	ldr.w	r4, [r8]
2002a6c0:	4627      	mov	r7, r4
2002a6c2:	2f00      	cmp	r7, #0
2002a6c4:	d143      	bne.n	2002a74e <_malloc_r+0xd6>
2002a6c6:	2c00      	cmp	r4, #0
2002a6c8:	d04b      	beq.n	2002a762 <_malloc_r+0xea>
2002a6ca:	6823      	ldr	r3, [r4, #0]
2002a6cc:	4639      	mov	r1, r7
2002a6ce:	4630      	mov	r0, r6
2002a6d0:	eb04 0903 	add.w	r9, r4, r3
2002a6d4:	f000 f874 	bl	2002a7c0 <_sbrk_r>
2002a6d8:	4581      	cmp	r9, r0
2002a6da:	d142      	bne.n	2002a762 <_malloc_r+0xea>
2002a6dc:	6821      	ldr	r1, [r4, #0]
2002a6de:	4630      	mov	r0, r6
2002a6e0:	1a6d      	subs	r5, r5, r1
2002a6e2:	4629      	mov	r1, r5
2002a6e4:	f7ff ffa6 	bl	2002a634 <sbrk_aligned>
2002a6e8:	3001      	adds	r0, #1
2002a6ea:	d03a      	beq.n	2002a762 <_malloc_r+0xea>
2002a6ec:	6823      	ldr	r3, [r4, #0]
2002a6ee:	442b      	add	r3, r5
2002a6f0:	6023      	str	r3, [r4, #0]
2002a6f2:	f8d8 3000 	ldr.w	r3, [r8]
2002a6f6:	685a      	ldr	r2, [r3, #4]
2002a6f8:	bb62      	cbnz	r2, 2002a754 <_malloc_r+0xdc>
2002a6fa:	f8c8 7000 	str.w	r7, [r8]
2002a6fe:	e00f      	b.n	2002a720 <_malloc_r+0xa8>
2002a700:	6822      	ldr	r2, [r4, #0]
2002a702:	1b52      	subs	r2, r2, r5
2002a704:	d420      	bmi.n	2002a748 <_malloc_r+0xd0>
2002a706:	2a0b      	cmp	r2, #11
2002a708:	d917      	bls.n	2002a73a <_malloc_r+0xc2>
2002a70a:	1961      	adds	r1, r4, r5
2002a70c:	42a3      	cmp	r3, r4
2002a70e:	6025      	str	r5, [r4, #0]
2002a710:	bf18      	it	ne
2002a712:	6059      	strne	r1, [r3, #4]
2002a714:	6863      	ldr	r3, [r4, #4]
2002a716:	bf08      	it	eq
2002a718:	f8c8 1000 	streq.w	r1, [r8]
2002a71c:	5162      	str	r2, [r4, r5]
2002a71e:	604b      	str	r3, [r1, #4]
2002a720:	4630      	mov	r0, r6
2002a722:	f000 f82f 	bl	2002a784 <__malloc_unlock>
2002a726:	f104 000b 	add.w	r0, r4, #11
2002a72a:	1d23      	adds	r3, r4, #4
2002a72c:	f020 0007 	bic.w	r0, r0, #7
2002a730:	1ac2      	subs	r2, r0, r3
2002a732:	bf1c      	itt	ne
2002a734:	1a1b      	subne	r3, r3, r0
2002a736:	50a3      	strne	r3, [r4, r2]
2002a738:	e7af      	b.n	2002a69a <_malloc_r+0x22>
2002a73a:	6862      	ldr	r2, [r4, #4]
2002a73c:	42a3      	cmp	r3, r4
2002a73e:	bf0c      	ite	eq
2002a740:	f8c8 2000 	streq.w	r2, [r8]
2002a744:	605a      	strne	r2, [r3, #4]
2002a746:	e7eb      	b.n	2002a720 <_malloc_r+0xa8>
2002a748:	4623      	mov	r3, r4
2002a74a:	6864      	ldr	r4, [r4, #4]
2002a74c:	e7ae      	b.n	2002a6ac <_malloc_r+0x34>
2002a74e:	463c      	mov	r4, r7
2002a750:	687f      	ldr	r7, [r7, #4]
2002a752:	e7b6      	b.n	2002a6c2 <_malloc_r+0x4a>
2002a754:	461a      	mov	r2, r3
2002a756:	685b      	ldr	r3, [r3, #4]
2002a758:	42a3      	cmp	r3, r4
2002a75a:	d1fb      	bne.n	2002a754 <_malloc_r+0xdc>
2002a75c:	2300      	movs	r3, #0
2002a75e:	6053      	str	r3, [r2, #4]
2002a760:	e7de      	b.n	2002a720 <_malloc_r+0xa8>
2002a762:	230c      	movs	r3, #12
2002a764:	4630      	mov	r0, r6
2002a766:	6033      	str	r3, [r6, #0]
2002a768:	f000 f80c 	bl	2002a784 <__malloc_unlock>
2002a76c:	e794      	b.n	2002a698 <_malloc_r+0x20>
2002a76e:	6005      	str	r5, [r0, #0]
2002a770:	e7d6      	b.n	2002a720 <_malloc_r+0xa8>
2002a772:	bf00      	nop
2002a774:	2004a3d0 	.word	0x2004a3d0

2002a778 <__malloc_lock>:
2002a778:	4801      	ldr	r0, [pc, #4]	@ (2002a780 <__malloc_lock+0x8>)
2002a77a:	f000 b831 	b.w	2002a7e0 <__retarget_lock_acquire_recursive>
2002a77e:	bf00      	nop
2002a780:	2004a510 	.word	0x2004a510

2002a784 <__malloc_unlock>:
2002a784:	4801      	ldr	r0, [pc, #4]	@ (2002a78c <__malloc_unlock+0x8>)
2002a786:	f000 b82c 	b.w	2002a7e2 <__retarget_lock_release_recursive>
2002a78a:	bf00      	nop
2002a78c:	2004a510 	.word	0x2004a510

2002a790 <memcmp>:
2002a790:	3901      	subs	r1, #1
2002a792:	4402      	add	r2, r0
2002a794:	b510      	push	{r4, lr}
2002a796:	4290      	cmp	r0, r2
2002a798:	d101      	bne.n	2002a79e <memcmp+0xe>
2002a79a:	2000      	movs	r0, #0
2002a79c:	e005      	b.n	2002a7aa <memcmp+0x1a>
2002a79e:	7803      	ldrb	r3, [r0, #0]
2002a7a0:	f811 4f01 	ldrb.w	r4, [r1, #1]!
2002a7a4:	42a3      	cmp	r3, r4
2002a7a6:	d001      	beq.n	2002a7ac <memcmp+0x1c>
2002a7a8:	1b18      	subs	r0, r3, r4
2002a7aa:	bd10      	pop	{r4, pc}
2002a7ac:	3001      	adds	r0, #1
2002a7ae:	e7f2      	b.n	2002a796 <memcmp+0x6>

2002a7b0 <memset>:
2002a7b0:	4402      	add	r2, r0
2002a7b2:	4603      	mov	r3, r0
2002a7b4:	4293      	cmp	r3, r2
2002a7b6:	d100      	bne.n	2002a7ba <memset+0xa>
2002a7b8:	4770      	bx	lr
2002a7ba:	f803 1b01 	strb.w	r1, [r3], #1
2002a7be:	e7f9      	b.n	2002a7b4 <memset+0x4>

2002a7c0 <_sbrk_r>:
2002a7c0:	b538      	push	{r3, r4, r5, lr}
2002a7c2:	2300      	movs	r3, #0
2002a7c4:	4d05      	ldr	r5, [pc, #20]	@ (2002a7dc <_sbrk_r+0x1c>)
2002a7c6:	4604      	mov	r4, r0
2002a7c8:	4608      	mov	r0, r1
2002a7ca:	602b      	str	r3, [r5, #0]
2002a7cc:	f000 f862 	bl	2002a894 <_sbrk>
2002a7d0:	1c43      	adds	r3, r0, #1
2002a7d2:	d102      	bne.n	2002a7da <_sbrk_r+0x1a>
2002a7d4:	682b      	ldr	r3, [r5, #0]
2002a7d6:	b103      	cbz	r3, 2002a7da <_sbrk_r+0x1a>
2002a7d8:	6023      	str	r3, [r4, #0]
2002a7da:	bd38      	pop	{r3, r4, r5, pc}
2002a7dc:	2004a50c 	.word	0x2004a50c

2002a7e0 <__retarget_lock_acquire_recursive>:
2002a7e0:	4770      	bx	lr

2002a7e2 <__retarget_lock_release_recursive>:
2002a7e2:	4770      	bx	lr

2002a7e4 <memcpy>:
2002a7e4:	440a      	add	r2, r1
2002a7e6:	1e43      	subs	r3, r0, #1
2002a7e8:	4291      	cmp	r1, r2
2002a7ea:	d100      	bne.n	2002a7ee <memcpy+0xa>
2002a7ec:	4770      	bx	lr
2002a7ee:	b510      	push	{r4, lr}
2002a7f0:	f811 4b01 	ldrb.w	r4, [r1], #1
2002a7f4:	4291      	cmp	r1, r2
2002a7f6:	f803 4f01 	strb.w	r4, [r3, #1]!
2002a7fa:	d1f9      	bne.n	2002a7f0 <memcpy+0xc>
2002a7fc:	bd10      	pop	{r4, pc}
	...

2002a800 <_free_r>:
2002a800:	b538      	push	{r3, r4, r5, lr}
2002a802:	4605      	mov	r5, r0
2002a804:	2900      	cmp	r1, #0
2002a806:	d041      	beq.n	2002a88c <_free_r+0x8c>
2002a808:	f851 3c04 	ldr.w	r3, [r1, #-4]
2002a80c:	1f0c      	subs	r4, r1, #4
2002a80e:	2b00      	cmp	r3, #0
2002a810:	bfb8      	it	lt
2002a812:	18e4      	addlt	r4, r4, r3
2002a814:	f7ff ffb0 	bl	2002a778 <__malloc_lock>
2002a818:	4a1d      	ldr	r2, [pc, #116]	@ (2002a890 <_free_r+0x90>)
2002a81a:	6813      	ldr	r3, [r2, #0]
2002a81c:	b933      	cbnz	r3, 2002a82c <_free_r+0x2c>
2002a81e:	6063      	str	r3, [r4, #4]
2002a820:	6014      	str	r4, [r2, #0]
2002a822:	4628      	mov	r0, r5
2002a824:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
2002a828:	f7ff bfac 	b.w	2002a784 <__malloc_unlock>
2002a82c:	42a3      	cmp	r3, r4
2002a82e:	d908      	bls.n	2002a842 <_free_r+0x42>
2002a830:	6820      	ldr	r0, [r4, #0]
2002a832:	1821      	adds	r1, r4, r0
2002a834:	428b      	cmp	r3, r1
2002a836:	bf01      	itttt	eq
2002a838:	6819      	ldreq	r1, [r3, #0]
2002a83a:	685b      	ldreq	r3, [r3, #4]
2002a83c:	1809      	addeq	r1, r1, r0
2002a83e:	6021      	streq	r1, [r4, #0]
2002a840:	e7ed      	b.n	2002a81e <_free_r+0x1e>
2002a842:	461a      	mov	r2, r3
2002a844:	685b      	ldr	r3, [r3, #4]
2002a846:	b10b      	cbz	r3, 2002a84c <_free_r+0x4c>
2002a848:	42a3      	cmp	r3, r4
2002a84a:	d9fa      	bls.n	2002a842 <_free_r+0x42>
2002a84c:	6811      	ldr	r1, [r2, #0]
2002a84e:	1850      	adds	r0, r2, r1
2002a850:	42a0      	cmp	r0, r4
2002a852:	d10b      	bne.n	2002a86c <_free_r+0x6c>
2002a854:	6820      	ldr	r0, [r4, #0]
2002a856:	4401      	add	r1, r0
2002a858:	1850      	adds	r0, r2, r1
2002a85a:	6011      	str	r1, [r2, #0]
2002a85c:	4283      	cmp	r3, r0
2002a85e:	d1e0      	bne.n	2002a822 <_free_r+0x22>
2002a860:	6818      	ldr	r0, [r3, #0]
2002a862:	685b      	ldr	r3, [r3, #4]
2002a864:	4408      	add	r0, r1
2002a866:	6053      	str	r3, [r2, #4]
2002a868:	6010      	str	r0, [r2, #0]
2002a86a:	e7da      	b.n	2002a822 <_free_r+0x22>
2002a86c:	d902      	bls.n	2002a874 <_free_r+0x74>
2002a86e:	230c      	movs	r3, #12
2002a870:	602b      	str	r3, [r5, #0]
2002a872:	e7d6      	b.n	2002a822 <_free_r+0x22>
2002a874:	6820      	ldr	r0, [r4, #0]
2002a876:	1821      	adds	r1, r4, r0
2002a878:	428b      	cmp	r3, r1
2002a87a:	bf02      	ittt	eq
2002a87c:	6819      	ldreq	r1, [r3, #0]
2002a87e:	685b      	ldreq	r3, [r3, #4]
2002a880:	1809      	addeq	r1, r1, r0
2002a882:	6063      	str	r3, [r4, #4]
2002a884:	bf08      	it	eq
2002a886:	6021      	streq	r1, [r4, #0]
2002a888:	6054      	str	r4, [r2, #4]
2002a88a:	e7ca      	b.n	2002a822 <_free_r+0x22>
2002a88c:	bd38      	pop	{r3, r4, r5, pc}
2002a88e:	bf00      	nop
2002a890:	2004a3d0 	.word	0x2004a3d0

2002a894 <_sbrk>:
2002a894:	4a05      	ldr	r2, [pc, #20]	@ (2002a8ac <_sbrk+0x18>)
2002a896:	4603      	mov	r3, r0
2002a898:	6810      	ldr	r0, [r2, #0]
2002a89a:	b110      	cbz	r0, 2002a8a2 <_sbrk+0xe>
2002a89c:	4403      	add	r3, r0
2002a89e:	6013      	str	r3, [r2, #0]
2002a8a0:	4770      	bx	lr
2002a8a2:	4803      	ldr	r0, [pc, #12]	@ (2002a8b0 <_sbrk+0x1c>)
2002a8a4:	4403      	add	r3, r0
2002a8a6:	6013      	str	r3, [r2, #0]
2002a8a8:	4770      	bx	lr
2002a8aa:	bf00      	nop
2002a8ac:	2004a514 	.word	0x2004a514
2002a8b0:	20042000 	.word	0x20042000
2002a8b4:	50041000 	.word	0x50041000
2002a8b8:	00000002 	.word	0x00000002
2002a8bc:	10000000 	.word	0x10000000
2002a8c0:	00000004 	.word	0x00000004
2002a8c4:	00000000 	.word	0x00000000
2002a8c8:	50081008 	.word	0x50081008
2002a8cc:	00000000 	.word	0x00000000
2002a8d0:	00000032 	.word	0x00000032
2002a8d4:	00000000 	.word	0x00000000
2002a8d8:	50042000 	.word	0x50042000
2002a8dc:	00000002 	.word	0x00000002
2002a8e0:	12000000 	.word	0x12000000
2002a8e4:	00000004 	.word	0x00000004
2002a8e8:	00000000 	.word	0x00000000
2002a8ec:	5008101c 	.word	0x5008101c
2002a8f0:	00000000 	.word	0x00000000
2002a8f4:	00000033 	.word	0x00000033
2002a8f8:	00000001 	.word	0x00000001
2002a8fc:	62636573 	.word	0x62636573
2002a900:	20746f6f 	.word	0x20746f6f
2002a904:	6b676973 	.word	0x6b676973
2002a908:	70207965 	.word	0x70207965
2002a90c:	65206275 	.word	0x65206275
2002a910:	00217272 	.word	0x00217272
2002a914:	62636573 	.word	0x62636573
2002a918:	20746f6f 	.word	0x20746f6f
2002a91c:	20676d69 	.word	0x20676d69
2002a920:	68736168 	.word	0x68736168
2002a924:	67697320 	.word	0x67697320
2002a928:	72726520 	.word	0x72726520
2002a92c:	65730021 	.word	0x65730021
2002a930:	6f6f6263 	.word	0x6f6f6263
2002a934:	78652074 	.word	0x78652074
2002a938:	20747063 	.word	0x20747063
2002a93c:	6c6c756e 	.word	0x6c6c756e
2002a940:	41480021 	.word	0x41480021
2002a944:	535f4853 	.word	0x535f4853
2002a948:	49545445 	.word	0x49545445
2002a94c:	253d474e 	.word	0x253d474e
2002a950:	0a583830 	.word	0x0a583830
2002a954:	616f4c00 	.word	0x616f4c00
2002a958:	56492064 	.word	0x56492064
2002a95c:	646e6120 	.word	0x646e6120
2002a960:	6e656c20 	.word	0x6e656c20
2002a964:	20687467 	.word	0x20687467
2002a968:	48534148 	.word	0x48534148
2002a96c:	5445535f 	.word	0x5445535f
2002a970:	474e4954 	.word	0x474e4954
2002a974:	3830253d 	.word	0x3830253d
2002a978:	69202c58 	.word	0x69202c58
2002a97c:	656c2076 	.word	0x656c2076
2002a980:	6874676e 	.word	0x6874676e
2002a984:	0a64253d 	.word	0x0a64253d
2002a988:	73655200 	.word	0x73655200
2002a98c:	20746c75 	.word	0x20746c75
2002a990:	3d6e656c 	.word	0x3d6e656c
2002a994:	000a6425 	.word	0x000a6425
2002a998:	2070614d 	.word	0x2070614d
2002a99c:	6f727265 	.word	0x6f727265
2002a9a0:	6c203a72 	.word	0x6c203a72
2002a9a4:	6369676f 	.word	0x6369676f
2002a9a8:	2c642520 	.word	0x2c642520
2002a9ac:	79687020 	.word	0x79687020
2002a9b0:	0a642520 	.word	0x0a642520
2002a9b4:	52524500 	.word	0x52524500
2002a9b8:	2032203a 	.word	0x2032203a
2002a9bc:	69676f6c 	.word	0x69676f6c
2002a9c0:	6c622063 	.word	0x6c622063
2002a9c4:	736b636f 	.word	0x736b636f
2002a9c8:	70616d20 	.word	0x70616d20
2002a9cc:	206f7420 	.word	0x206f7420
2002a9d0:	656d6173 	.word	0x656d6173
2002a9d4:	6b6c6220 	.word	0x6b6c6220
2002a9d8:	6f6c203a 	.word	0x6f6c203a
2002a9dc:	30636967 	.word	0x30636967
2002a9e0:	2c642520 	.word	0x2c642520
2002a9e4:	79687020 	.word	0x79687020
2002a9e8:	64252030 	.word	0x64252030
2002a9ec:	6f6c202c 	.word	0x6f6c202c
2002a9f0:	31636967 	.word	0x31636967
2002a9f4:	2c642520 	.word	0x2c642520
2002a9f8:	79687020 	.word	0x79687020
2002a9fc:	64252031 	.word	0x64252031
2002aa00:	614d000a 	.word	0x614d000a
2002aa04:	72652070 	.word	0x72652070
2002aa08:	30726f72 	.word	0x30726f72
2002aa0c:	6f6c203a 	.word	0x6f6c203a
2002aa10:	20636967 	.word	0x20636967
2002aa14:	202c6425 	.word	0x202c6425
2002aa18:	20796870 	.word	0x20796870
2002aa1c:	000a6425 	.word	0x000a6425
2002aa20:	20746547 	.word	0x20746547
2002aa24:	2070616d 	.word	0x2070616d
2002aa28:	636f6c62 	.word	0x636f6c62
2002aa2c:	7265206b 	.word	0x7265206b
2002aa30:	20726f72 	.word	0x20726f72
2002aa34:	2d206425 	.word	0x2d206425
2002aa38:	25203e2d 	.word	0x25203e2d
2002aa3c:	42000a64 	.word	0x42000a64
2002aa40:	76204d42 	.word	0x76204d42
2002aa44:	69737265 	.word	0x69737265
2002aa48:	6e206e6f 	.word	0x6e206e6f
2002aa4c:	6920746f 	.word	0x6920746f
2002aa50:	6572636e 	.word	0x6572636e
2002aa54:	64657361 	.word	0x64657361
2002aa58:	7270203a 	.word	0x7270203a
2002aa5c:	25207665 	.word	0x25207665
2002aa60:	63202c64 	.word	0x63202c64
2002aa64:	20727275 	.word	0x20727275
2002aa68:	000a6425 	.word	0x000a6425
2002aa6c:	41544144 	.word	0x41544144
2002aa70:	746f6e20 	.word	0x746f6e20
2002aa74:	61657220 	.word	0x61657220
2002aa78:	616e6f73 	.word	0x616e6f73
2002aa7c:	20656c62 	.word	0x20656c62
2002aa80:	42206e69 	.word	0x42206e69
2002aa84:	62204d42 	.word	0x62204d42
2002aa88:	25206b6c 	.word	0x25206b6c
2002aa8c:	61702064 	.word	0x61702064
2002aa90:	25206567 	.word	0x25206567
2002aa94:	30203a64 	.word	0x30203a64
2002aa98:	0a782578 	.word	0x0a782578
2002aa9c:	61655200 	.word	0x61655200
2002aaa0:	62622064 	.word	0x62622064
2002aaa4:	6c62206d 	.word	0x6c62206d
2002aaa8:	6425206b 	.word	0x6425206b
2002aaac:	67617020 	.word	0x67617020
2002aab0:	64252065 	.word	0x64252065
2002aab4:	69616620 	.word	0x69616620
2002aab8:	49000a6c 	.word	0x49000a6c
2002aabc:	6c61766e 	.word	0x6c61766e
2002aac0:	42206469 	.word	0x42206469
2002aac4:	49204d42 	.word	0x49204d42
2002aac8:	25205844 	.word	0x25205844
2002aacc:	56000a64 	.word	0x56000a64
2002aad0:	64252031 	.word	0x64252031
2002aad4:	206e6920 	.word	0x206e6920
2002aad8:	636f6c62 	.word	0x636f6c62
2002aadc:	6425206b 	.word	0x6425206b
2002aae0:	3256202c 	.word	0x3256202c
2002aae4:	20642520 	.word	0x20642520
2002aae8:	62206e69 	.word	0x62206e69
2002aaec:	6b636f6c 	.word	0x6b636f6c
2002aaf0:	0a642520 	.word	0x0a642520
2002aaf4:	6d615300 	.word	0x6d615300
2002aaf8:	69687465 	.word	0x69687465
2002aafc:	6d20676e 	.word	0x6d20676e
2002ab00:	20747375 	.word	0x20747375
2002ab04:	77206562 	.word	0x77206562
2002ab08:	676e6f72 	.word	0x676e6f72
2002ab0c:	6567202c 	.word	0x6567202c
2002ab10:	656e2074 	.word	0x656e2074
2002ab14:	65762077 	.word	0x65762077
2002ab18:	6f697372 	.word	0x6f697372
2002ab1c:	6425206e 	.word	0x6425206e
2002ab20:	206f6420 	.word	0x206f6420
2002ab24:	20746f6e 	.word	0x20746f6e
2002ab28:	656d6173 	.word	0x656d6173
2002ab2c:	206f7420 	.word	0x206f7420
2002ab30:	76657270 	.word	0x76657270
2002ab34:	65686320 	.word	0x65686320
2002ab38:	25206b63 	.word	0x25206b63
2002ab3c:	43000a64 	.word	0x43000a64
2002ab40:	63204352 	.word	0x63204352
2002ab44:	6b636568 	.word	0x6b636568
2002ab48:	72726520 	.word	0x72726520
2002ab4c:	0a20726f 	.word	0x0a20726f
2002ab50:	61655200 	.word	0x61655200
2002ab54:	62622064 	.word	0x62622064
2002ab58:	6c62206d 	.word	0x6c62206d
2002ab5c:	6425206b 	.word	0x6425206b
2002ab60:	67617020 	.word	0x67617020
2002ab64:	64252065 	.word	0x64252065
2002ab68:	74616420 	.word	0x74616420
2002ab6c:	6f6e2061 	.word	0x6f6e2061
2002ab70:	72772074 	.word	0x72772074
2002ab74:	20657469 	.word	0x20657469
2002ab78:	20726f66 	.word	0x20726f66
2002ab7c:	20646e32 	.word	0x20646e32
2002ab80:	656d6974 	.word	0x656d6974
2002ab84:	6552000a 	.word	0x6552000a
2002ab88:	62206461 	.word	0x62206461
2002ab8c:	62206d62 	.word	0x62206d62
2002ab90:	25206b6c 	.word	0x25206b6c
2002ab94:	61702064 	.word	0x61702064
2002ab98:	25206567 	.word	0x25206567
2002ab9c:	61662064 	.word	0x61662064
2002aba0:	66206c69 	.word	0x66206c69
2002aba4:	3220726f 	.word	0x3220726f
2002aba8:	7420646e 	.word	0x7420646e
2002abac:	3f656d69 	.word	0x3f656d69
2002abb0:	614c000a 	.word	0x614c000a
2002abb4:	74736574 	.word	0x74736574
2002abb8:	72657620 	.word	0x72657620
2002abbc:	6e6f6973 	.word	0x6e6f6973
2002abc0:	0a642520 	.word	0x0a642520
2002abc4:	74654700 	.word	0x74654700
2002abc8:	79687020 	.word	0x79687020
2002abcc:	6b6c6220 	.word	0x6b6c6220
2002abd0:	726f6620 	.word	0x726f6620
2002abd4:	20642520 	.word	0x20642520
2002abd8:	6c696166 	.word	0x6c696166
2002abdc:	65687720 	.word	0x65687720
2002abe0:	6572206e 	.word	0x6572206e
2002abe4:	000a6461 	.word	0x000a6461
2002abe8:	636f6c42 	.word	0x636f6c42
2002abec:	6425206b 	.word	0x6425206b
2002abf0:	61726520 	.word	0x61726520
2002abf4:	66206573 	.word	0x66206573
2002abf8:	2c6c6961 	.word	0x2c6c6961
2002abfc:	72616d20 	.word	0x72616d20
2002ac00:	7361206b 	.word	0x7361206b
2002ac04:	64616220 	.word	0x64616220
2002ac08:	6c42000a 	.word	0x6c42000a
2002ac0c:	206b636f 	.word	0x206b636f
2002ac10:	63206425 	.word	0x63206425
2002ac14:	6b636568 	.word	0x6b636568
2002ac18:	20736120 	.word	0x20736120
2002ac1c:	20646162 	.word	0x20646162
2002ac20:	636f6c62 	.word	0x636f6c62
2002ac24:	42000a6b 	.word	0x42000a6b
2002ac28:	6b636f6c 	.word	0x6b636f6c
2002ac2c:	20642520 	.word	0x20642520
2002ac30:	62207369 	.word	0x62207369
2002ac34:	69206461 	.word	0x69206461
2002ac38:	7375206e 	.word	0x7375206e
2002ac3c:	62207265 	.word	0x62207265
2002ac40:	6b636f6c 	.word	0x6b636f6c
2002ac44:	6162000a 	.word	0x6162000a
2002ac48:	64252064 	.word	0x64252064
2002ac4c:	6572202c 	.word	0x6572202c
2002ac50:	63616c70 	.word	0x63616c70
2002ac54:	64252065 	.word	0x64252065
2002ac58:	6f4e000a 	.word	0x6f4e000a
2002ac5c:	63616220 	.word	0x63616220
2002ac60:	2070756b 	.word	0x2070756b
2002ac64:	636f6c62 	.word	0x636f6c62
2002ac68:	6e61206b 	.word	0x6e61206b
2002ac6c:	6f6d2079 	.word	0x6f6d2079
2002ac70:	000a6572 	.word	0x000a6572
2002ac74:	74706d65 	.word	0x74706d65
2002ac78:	61742079 	.word	0x61742079
2002ac7c:	20656c62 	.word	0x20656c62
2002ac80:	6e206425 	.word	0x6e206425
2002ac84:	6520746f 	.word	0x6520746f
2002ac88:	67756f6e 	.word	0x67756f6e
2002ac8c:	6f662068 	.word	0x6f662068
2002ac90:	6e692072 	.word	0x6e692072
2002ac94:	61697469 	.word	0x61697469
2002ac98:	55000a6c 	.word	0x55000a6c
2002ac9c:	74616470 	.word	0x74616470
2002aca0:	61742065 	.word	0x61742065
2002aca4:	20656c62 	.word	0x20656c62
2002aca8:	66206f74 	.word	0x66206f74
2002acac:	6873616c 	.word	0x6873616c
2002acb0:	6e6f6420 	.word	0x6e6f6420
2002acb4:	49000a65 	.word	0x49000a65
2002acb8:	6974696e 	.word	0x6974696e
2002acbc:	74206c61 	.word	0x74206c61
2002acc0:	656c6261 	.word	0x656c6261
2002acc4:	69616620 	.word	0x69616620
2002acc8:	42000a6c 	.word	0x42000a6c
2002accc:	69204d42 	.word	0x69204d42
2002acd0:	6974696e 	.word	0x6974696e
2002acd4:	7a696c61 	.word	0x7a696c61
2002acd8:	62206465 	.word	0x62206465
2002acdc:	726f6665 	.word	0x726f6665
2002ace0:	64202c65 	.word	0x64202c65
2002ace4:	6f6e206f 	.word	0x6f6e206f
2002ace8:	6e692074 	.word	0x6e692074
2002acec:	61207469 	.word	0x61207469
2002acf0:	6d20796e 	.word	0x6d20796e
2002acf4:	0a65726f 	.word	0x0a65726f
2002acf8:	54454400 	.word	0x54454400
2002acfc:	20642520 	.word	0x20642520
2002ad00:	0a646162 	.word	0x0a646162
2002ad04:	4b4c4200 	.word	0x4b4c4200
2002ad08:	20642520 	.word	0x20642520
2002ad0c:	64616572 	.word	0x64616572
2002ad10:	69616620 	.word	0x69616620
2002ad14:	6d202c6c 	.word	0x6d202c6c
2002ad18:	206b7261 	.word	0x206b7261
2002ad1c:	62207361 	.word	0x62207361
2002ad20:	000a6461 	.word	0x000a6461
2002ad24:	20746564 	.word	0x20746564
2002ad28:	206d6262 	.word	0x206d6262
2002ad2c:	6c626174 	.word	0x6c626174
2002ad30:	69772065 	.word	0x69772065
2002ad34:	25206874 	.word	0x25206874
2002ad38:	25202c64 	.word	0x25202c64
2002ad3c:	25202c64 	.word	0x25202c64
2002ad40:	64000a64 	.word	0x64000a64
2002ad44:	63657465 	.word	0x63657465
2002ad48:	65722074 	.word	0x65722074
2002ad4c:	746c7573 	.word	0x746c7573
2002ad50:	0a642520 	.word	0x0a642520
2002ad54:	20317600 	.word	0x20317600
2002ad58:	69206425 	.word	0x69206425
2002ad5c:	6c62206e 	.word	0x6c62206e
2002ad60:	6425206b 	.word	0x6425206b
2002ad64:	3276202c 	.word	0x3276202c
2002ad68:	20642520 	.word	0x20642520
2002ad6c:	62206e69 	.word	0x62206e69
2002ad70:	6b636f6c 	.word	0x6b636f6c
2002ad74:	0a642520 	.word	0x0a642520
2002ad78:	65684300 	.word	0x65684300
2002ad7c:	62206b63 	.word	0x62206b63
2002ad80:	74206d62 	.word	0x74206d62
2002ad84:	656c6261 	.word	0x656c6261
2002ad88:	69616620 	.word	0x69616620
2002ad8c:	64000a6c 	.word	0x64000a6c
2002ad90:	63657465 	.word	0x63657465
2002ad94:	65722074 	.word	0x65722074
2002ad98:	746c7573 	.word	0x746c7573
2002ad9c:	20642520 	.word	0x20642520
2002ada0:	20746f6e 	.word	0x20746f6e
2002ada4:	73616572 	.word	0x73616572
2002ada8:	62616e6f 	.word	0x62616e6f
2002adac:	000a656c 	.word	0x000a656c
2002adb0:	204d4242 	.word	0x204d4242
2002adb4:	3a4d454d 	.word	0x3a4d454d
2002adb8:	78746320 	.word	0x78746320
2002adbc:	2c702520 	.word	0x2c702520
2002adc0:	70616d20 	.word	0x70616d20
2002adc4:	70252031 	.word	0x70252031
2002adc8:	616d202c 	.word	0x616d202c
2002adcc:	25203270 	.word	0x25203270
2002add0:	000a2070 	.word	0x000a2070
2002add4:	5f666973 	.word	0x5f666973
2002add8:	5f6d6262 	.word	0x5f6d6262
2002addc:	74696e69 	.word	0x74696e69
2002ade0:	6e6f6420 	.word	0x6e6f6420
2002ade4:	53000a65 	.word	0x53000a65
2002ade8:	31354148 	.word	0x31354148
2002adec:	48530032 	.word	0x48530032
2002adf0:	34383341 	.word	0x34383341
2002adf4:	41485300 	.word	0x41485300
2002adf8:	00363532 	.word	0x00363532
2002adfc:	32414853 	.word	0x32414853
2002ae00:	60003432 	.word	0x60003432
2002ae04:	65014886 	.word	0x65014886
2002ae08:	04020403 	.word	0x04020403
2002ae0c:	2d646900 	.word	0x2d646900
2002ae10:	32616873 	.word	0x32616873
2002ae14:	60003432 	.word	0x60003432
2002ae18:	65014886 	.word	0x65014886
2002ae1c:	01020403 	.word	0x01020403
2002ae20:	2d646900 	.word	0x2d646900
2002ae24:	32616873 	.word	0x32616873
2002ae28:	60003635 	.word	0x60003635
2002ae2c:	65014886 	.word	0x65014886
2002ae30:	02020403 	.word	0x02020403
2002ae34:	2d646900 	.word	0x2d646900
2002ae38:	33616873 	.word	0x33616873
2002ae3c:	60003438 	.word	0x60003438
2002ae40:	65014886 	.word	0x65014886
2002ae44:	03020403 	.word	0x03020403
2002ae48:	2d646900 	.word	0x2d646900
2002ae4c:	35616873 	.word	0x35616873
2002ae50:	2b003231 	.word	0x2b003231
2002ae54:	0702030e 	.word	0x0702030e
2002ae58:	73656400 	.word	0x73656400
2002ae5c:	00434243 	.word	0x00434243
2002ae60:	2d534544 	.word	0x2d534544
2002ae64:	00434243 	.word	0x00434243
2002ae68:	8648862a 	.word	0x8648862a
2002ae6c:	07030df7 	.word	0x07030df7
2002ae70:	73656400 	.word	0x73656400
2002ae74:	6564652d 	.word	0x6564652d
2002ae78:	62632d33 	.word	0x62632d33
2002ae7c:	45440063 	.word	0x45440063
2002ae80:	44452d53 	.word	0x44452d53
2002ae84:	432d3345 	.word	0x432d3345
2002ae88:	2a004342 	.word	0x2a004342
2002ae8c:	f7864886 	.word	0xf7864886
2002ae90:	0101010d 	.word	0x0101010d
2002ae94:	61737200 	.word	0x61737200
2002ae98:	72636e45 	.word	0x72636e45
2002ae9c:	69747079 	.word	0x69747079
2002aea0:	52006e6f 	.word	0x52006e6f
2002aea4:	2a004153 	.word	0x2a004153
2002aea8:	3dce4886 	.word	0x3dce4886
2002aeac:	69000102 	.word	0x69000102
2002aeb0:	63652d64 	.word	0x63652d64
2002aeb4:	6c627550 	.word	0x6c627550
2002aeb8:	654b6369 	.word	0x654b6369
2002aebc:	65470079 	.word	0x65470079
2002aec0:	6972656e 	.word	0x6972656e
2002aec4:	43452063 	.word	0x43452063
2002aec8:	79656b20 	.word	0x79656b20
2002aecc:	04812b00 	.word	0x04812b00
2002aed0:	69000c01 	.word	0x69000c01
2002aed4:	63652d64 	.word	0x63652d64
2002aed8:	45004844 	.word	0x45004844
2002aedc:	656b2043 	.word	0x656b2043
2002aee0:	6f662079 	.word	0x6f662079
2002aee4:	43452072 	.word	0x43452072
2002aee8:	2a004844 	.word	0x2a004844
2002aeec:	f7864886 	.word	0xf7864886
2002aef0:	0e01010d 	.word	0x0e01010d
2002aef4:	61687300 	.word	0x61687300
2002aef8:	57343232 	.word	0x57343232
2002aefc:	52687469 	.word	0x52687469
2002af00:	6e454153 	.word	0x6e454153
2002af04:	70797263 	.word	0x70797263
2002af08:	6e6f6974 	.word	0x6e6f6974
2002af0c:	41535200 	.word	0x41535200
2002af10:	74697720 	.word	0x74697720
2002af14:	48532068 	.word	0x48532068
2002af18:	32322d41 	.word	0x32322d41
2002af1c:	862a0034 	.word	0x862a0034
2002af20:	0df78648 	.word	0x0df78648
2002af24:	000b0101 	.word	0x000b0101
2002af28:	32616873 	.word	0x32616873
2002af2c:	69573635 	.word	0x69573635
2002af30:	53526874 	.word	0x53526874
2002af34:	636e4541 	.word	0x636e4541
2002af38:	74707972 	.word	0x74707972
2002af3c:	006e6f69 	.word	0x006e6f69
2002af40:	20415352 	.word	0x20415352
2002af44:	68746977 	.word	0x68746977
2002af48:	41485320 	.word	0x41485320
2002af4c:	3635322d 	.word	0x3635322d
2002af50:	48862a00 	.word	0x48862a00
2002af54:	010df786 	.word	0x010df786
2002af58:	73000c01 	.word	0x73000c01
2002af5c:	38336168 	.word	0x38336168
2002af60:	74695734 	.word	0x74695734
2002af64:	41535268 	.word	0x41535268
2002af68:	72636e45 	.word	0x72636e45
2002af6c:	69747079 	.word	0x69747079
2002af70:	52006e6f 	.word	0x52006e6f
2002af74:	77204153 	.word	0x77204153
2002af78:	20687469 	.word	0x20687469
2002af7c:	2d414853 	.word	0x2d414853
2002af80:	00343833 	.word	0x00343833
2002af84:	8648862a 	.word	0x8648862a
2002af88:	01010df7 	.word	0x01010df7
2002af8c:	6873000d 	.word	0x6873000d
2002af90:	32313561 	.word	0x32313561
2002af94:	68746957 	.word	0x68746957
2002af98:	45415352 	.word	0x45415352
2002af9c:	7972636e 	.word	0x7972636e
2002afa0:	6f697470 	.word	0x6f697470
2002afa4:	5352006e 	.word	0x5352006e
2002afa8:	69772041 	.word	0x69772041
2002afac:	53206874 	.word	0x53206874
2002afb0:	352d4148 	.word	0x352d4148
2002afb4:	2a003231 	.word	0x2a003231
2002afb8:	f7864886 	.word	0xf7864886
2002afbc:	0a01010d 	.word	0x0a01010d
2002afc0:	41535200 	.word	0x41535200
2002afc4:	2d415353 	.word	0x2d415353
2002afc8:	00535350 	.word	0x00535350
2002afcc:	2e617372 	.word	0x2e617372
2002afd0:	7372004e 	.word	0x7372004e
2002afd4:	00452e61 	.word	0x00452e61

2002afd8 <pin_pad_func_lcpu>:
	...
2002aff8:	032100b2 00000301 00000000 024b023b     ..!.........;.K.
2002b008:	00000237 00000000 00000000 00000000     7...............
2002b018:	032200b3 00000302 00000000 024b023c     ..".........<.K.
2002b028:	00000238 00000000 00000000 00000000     8...............
2002b038:	032300b4 00000303 00000000 024b023d     ..#.........=.K.
2002b048:	0000023a 00000000 00000000 00000000     :...............
2002b058:	032400b5 00000304 00000000 024b023e     ..$.........>.K.
2002b068:	00000239 00000000 00000000 00000000     9...............

2002b078 <pin_pad_func_hcpu>:
	...
2002b098:	000400f2 00000000 000b0000 00000000     ................
	...
2002b0b8:	000900f3 00000000 00030000 00000000     ................
	...
2002b0d8:	000a00f4 00000000 000a0000 00000000     ................
	...
2002b0f8:	000b00f5 00000000 000b0000 00000000     ................
	...
2002b118:	000c00f6 00000000 00030000 00000000     ................
	...
2002b138:	000300f7 000d0000 00000009 00000000     ................
	...
2002b158:	000200f8 000e0000 0000000b 00000000     ................
	...
2002b178:	000100f9 000f0000 0009000a 00000000     ................
	...
2002b198:	000d00fa 00100000 000c0003 00000000     ................
	...
2002b1b8:	000e00fb 00060000 00010001 00000000     ................
	...
2002b1d8:	000f00fc 00010000 000c000c 00000000     ................
	...
2002b1f8:	001000fd 00030000 00090000 00000000     ................
	...
2002b218:	000500fe 00000006 00000000 00000000     ................
	...
2002b238:	01540052 00000000 026302b2 016a0000     R.T.......c...j.
	...
2002b258:	00000053 00000000 026402b3 00000000     S.........d.....
	...
2002b278:	01550054 01c60000 026502b4 016b019a     T.U.......e...k.
2002b288:	023b0000 02270000 00000000 00000000     ..;...'.........
2002b298:	014e0055 01c80000 026602b5 015f0199     U.N.......f..._.
2002b2a8:	023c0000 02280000 00000000 00000000     ..<...(.........
2002b2b8:	014f0056 01c70000 026702b6 015e0197     V.O.......g...^.
2002b2c8:	023d0000 02290000 00000000 00000000     ..=...).........
2002b2d8:	01500057 01c40000 026802b7 01680195     W.P.......h...h.
2002b2e8:	023e0000 022a0000 00000000 00000000     ..>...*.........
2002b2f8:	01510058 01c50000 026902b8 01690194     X.Q.......i...i.
2002b308:	023f0000 022b0000 00000000 00000000     ..?...+.........
2002b318:	01520059 01d40000 026a02b9 01600192     Y.R.......j...`.
2002b328:	02400000 022c0000 00000000 00000000     ..@...,.........
2002b338:	0153005a 01d50000 026b02ba 01610191     Z.S.......k...a.
2002b348:	02410000 0000023a 00000000 00000000     ..A.:...........
2002b358:	0000005b 00000000 026c02bb 00000000     [.........l.....
2002b368:	02420000 00000239 00000000 00000000     ..B.9...........
2002b378:	0000005c 00000000 026d02bc 00000000     \.........m.....
	...
2002b398:	0000005d 00000000 026e02bd 00000000     ].........n.....
2002b3a8:	01d30000 02210237 00000000 00000000     ....7.!.........
2002b3b8:	001b005e 000001b7 026f02be 00000000     ^.........o.....
2002b3c8:	00000000 02220238 00000000 00000000     ....8.".........
2002b3d8:	0022005f 000001b8 027002bf 00000000     _.".......p.....
2002b3e8:	00000000 02230000 00000000 00000000     ......#.........
2002b3f8:	00230060 000001b2 027102c0 00000000     `.#.......q.....
2002b408:	00000000 02240000 00000000 00000000     ......$.........
2002b418:	00210061 000001b4 027202c1 00000000     a.!.......r.....
2002b428:	00000000 02250000 00000000 00000000     ......%.........
2002b438:	00190062 000001b5 027302c2 00000000     b.........s.....
2002b448:	00000000 02260000 00000000 00000000     ......&.........
2002b458:	00240063 000001b6 027402c3 00000000     c.$.......t.....
	...
2002b478:	00000064 0000021a 027502c4 00000000     d.........u.....
	...
2002b498:	00000065 00000219 027602c5 00000000     e.........v.....
	...
2002b4b8:	00000066 00000000 027702c6 00000000     f.........w.....
2002b4c8:	024b0000 00000000 00000000 00000000     ..K.............
2002b4d8:	00000067 00000000 027802c7 00000000     g.........x.....
	...
2002b4f8:	00000068 01d40000 027902c8 00000000     h.........y.....
	...
2002b518:	00000069 01d50000 027a02c9 00000000     i.........z.....
	...
2002b538:	0000006a 01c60149 027b02ca 00000000     j...I.....{.....
	...
2002b558:	0000006b 01c80148 027c02cb 00000000     k...H.....|.....
	...
2002b578:	0000006c 00000000 027d02cc 00000000     l.........}.....
	...
2002b598:	0000006d 00000000 027e02cd 00000000     m.........~.....
	...
2002b5b8:	0000006e 01c70146 027f02ce 00000000     n...F...........
	...
2002b5d8:	0000006f 01c40147 028002cf 00000000     o...G...........
	...
2002b5f8:	00000070 01c50000 028102d0 00000000     p...............
	...
2002b618:	00000071 00000000 028202d1 00000000     q...............
2002b628:	02430000 00000000 00000000 00000000     ..C.............
2002b638:	00000072 00000000 028302d2 00000000     r...............
	...
2002b658:	00000073 00000000 028402d3 00000000     s...............
	...
2002b678:	00000074 00000000 028502d4 00000000     t...............
	...
2002b698:	00000075 00000000 028602d5 00000000     u...............
	...
2002b6b8:	00000076 00000000 028702d6 00000000     v...............
	...
2002b6d8:	00000077 0000014d 028802d7 01620000     w...M.........b.
2002b6e8:	02440000 00000000 00000000 00000000     ..D.............
2002b6f8:	00000078 0000014c 028902d8 00000000     x...L...........
	...
2002b718:	00000079 0000014a 028a02d9 01630190     y...J.........c.
2002b728:	02450000 022f0000 00000000 00000000     ..E.../.........
2002b738:	0000007a 0000014b 028b02da 0164018f     z...K.........d.
2002b748:	02460000 02300000 00000000 00000000     ..F...0.........
2002b758:	0000007b 00000000 028c02db 01650193     {.............e.
2002b768:	02470000 02310000 00000000 00000000     ..G...1.........
2002b778:	0000007c 00000000 028d02dc 01660196     |.............f.
2002b788:	02480000 02320000 00000000 00000000     ..H...2.........
2002b798:	0000007d 00000000 028e02dd 01670198     }.............g.
2002b7a8:	02490000 02330000 00000000 00000000     ..I...3.........
2002b7b8:	0000007e 00000000 028f02de 00000000     ~...............
2002b7c8:	024a0000 02340000 00000000 00000000     ..J...4.........

2002b7d8 <HASH_SIZE>:
2002b7d8:	20202014 00000000 04030201 00000000     .   ............
2002b7e8:	01060204                                ....

2002b7ec <CSWTCH.47>:
2002b7ec:	0000003f 00003f00 003f0000              ?....?....?.

2002b7f8 <hpsys_dll2_limit>:
	...
2002b800:	112a8800 112a8800                       ..*...*.

2002b808 <hpsys_dvfs_config>:
2002b808:	000906fb 00100330 000a08fd 00110331     ....0.......1...
2002b818:	000d0b00 00130213 000f0d02 00130213     ................

2002b828 <crc32tab>:
2002b828:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
2002b838:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
2002b848:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
2002b858:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
2002b868:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
2002b878:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
2002b888:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
2002b898:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
2002b8a8:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
2002b8b8:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
2002b8c8:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
2002b8d8:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
2002b8e8:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
2002b8f8:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
2002b908:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
2002b918:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
2002b928:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
2002b938:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
2002b948:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
2002b958:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
2002b968:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
2002b978:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
2002b988:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
2002b998:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
2002b9a8:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
2002b9b8:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
2002b9c8:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
2002b9d8:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
2002b9e8:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
2002b9f8:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
2002ba08:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
2002ba18:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
2002ba28:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
2002ba38:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
2002ba48:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
2002ba58:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
2002ba68:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
2002ba78:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
2002ba88:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
2002ba98:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
2002baa8:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
2002bab8:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
2002bac8:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
2002bad8:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
2002bae8:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
2002baf8:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
2002bb08:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
2002bb18:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
2002bb28:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
2002bb38:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
2002bb48:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
2002bb58:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
2002bb68:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
2002bb78:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
2002bb88:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
2002bb98:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
2002bba8:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
2002bbb8:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
2002bbc8:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
2002bbd8:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
2002bbe8:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
2002bbf8:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
2002bc08:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
2002bc18:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

2002bc28 <CSWTCH.5>:
2002bc28:	2002bcc8 2002bc98 2002bc68 2002bc38     ... ... h.. 8.. 

2002bc38 <mbedtls_sha512_info>:
2002bc38:	00000008 2002ade7 00000040 00000080     ....... @.......
2002bc48:	20025e45 20025e3b 20025e37 20025e31     E^. ;^. 7^. 1^. 
2002bc58:	20025e15 20025e03 20025dff 20025dfb     .^. .^. .]. .]. 

2002bc68 <mbedtls_sha384_info>:
2002bc68:	00000007 2002adee 00000030 00000080     ....... 0.......
2002bc78:	20025e3f 20025e3b 20025e37 20025e2b     ?^. ;^. 7^. +^. 
2002bc88:	20025e15 20025e03 20025dff 20025dfb     .^. .^. .]. .]. 

2002bc98 <mbedtls_sha256_info>:
2002bc98:	00000006 2002adf5 00000020 00000040     .......  ...@...
2002bca8:	20025df5 20025deb 20025de7 20025de1     .]. .]. .]. .]. 
2002bcb8:	20025dc5 20025db3 20025daf 20025dab     .]. .]. .]. .]. 

2002bcc8 <mbedtls_sha224_info>:
2002bcc8:	00000005 2002adfc 0000001c 00000040     ....... ....@...
2002bcd8:	20025def 20025deb 20025de7 20025ddb     .]. .]. .]. .]. 
2002bce8:	20025dc5 20025db3 20025daf 20025dab     .]. .]. .]. .]. 

2002bcf8 <sha256_padding>:
2002bcf8:	00000080 00000000 00000000 00000000     ................
	...

2002bd38 <K>:
2002bd38:	428a2f98 71374491 b5c0fbcf e9b5dba5     ./.B.D7q........
2002bd48:	3956c25b 59f111f1 923f82a4 ab1c5ed5     [.V9...Y..?..^..
2002bd58:	d807aa98 12835b01 243185be 550c7dc3     .....[....1$.}.U
2002bd68:	72be5d74 80deb1fe 9bdc06a7 c19bf174     t].r........t...
2002bd78:	e49b69c1 efbe4786 0fc19dc6 240ca1cc     .i...G.........$
2002bd88:	2de92c6f 4a7484aa 5cb0a9dc 76f988da     o,.-..tJ...\...v
2002bd98:	983e5152 a831c66d b00327c8 bf597fc7     RQ>.m.1..'....Y.
2002bda8:	c6e00bf3 d5a79147 06ca6351 14292967     ....G...Qc..g)).
2002bdb8:	27b70a85 2e1b2138 4d2c6dfc 53380d13     ...'8!...m,M..8S
2002bdc8:	650a7354 766a0abb 81c2c92e 92722c85     Ts.e..jv.....,r.
2002bdd8:	a2bfe8a1 a81a664b c24b8b70 c76c51a3     ....Kf..p.K..Ql.
2002bde8:	d192e819 d6990624 f40e3585 106aa070     ....$....5..p.j.
2002bdf8:	19a4c116 1e376c08 2748774c 34b0bcb5     .....l7.LwH'...4
2002be08:	391c0cb3 4ed8aa4a 5b9cca4f 682e6ff3     ...9J..NO..[.o.h
2002be18:	748f82ee 78a5636f 84c87814 8cc70208     ...toc.x.x......
2002be28:	90befffa a4506ceb bef9a3f7 c67178f2     .....lP......xq.

2002be38 <sha512_padding>:
2002be38:	00000080 00000000 00000000 00000000     ................
	...

2002beb8 <K>:
2002beb8:	d728ae22 428a2f98 23ef65cd 71374491     ".(../.B.e.#.D7q
2002bec8:	ec4d3b2f b5c0fbcf 8189dbbc e9b5dba5     /;M.............
2002bed8:	f348b538 3956c25b b605d019 59f111f1     8.H.[.V9.......Y
2002bee8:	af194f9b 923f82a4 da6d8118 ab1c5ed5     .O....?...m..^..
2002bef8:	a3030242 d807aa98 45706fbe 12835b01     B........opE.[..
2002bf08:	4ee4b28c 243185be d5ffb4e2 550c7dc3     ...N..1$.....}.U
2002bf18:	f27b896f 72be5d74 3b1696b1 80deb1fe     o.{.t].r...;....
2002bf28:	25c71235 9bdc06a7 cf692694 c19bf174     5..%.....&i.t...
2002bf38:	9ef14ad2 e49b69c1 384f25e3 efbe4786     .J...i...%O8.G..
2002bf48:	8b8cd5b5 0fc19dc6 77ac9c65 240ca1cc     ........e..w...$
2002bf58:	592b0275 2de92c6f 6ea6e483 4a7484aa     u.+Yo,.-...n..tJ
2002bf68:	bd41fbd4 5cb0a9dc 831153b5 76f988da     ..A....\.S.....v
2002bf78:	ee66dfab 983e5152 2db43210 a831c66d     ..f.RQ>..2.-m.1.
2002bf88:	98fb213f b00327c8 beef0ee4 bf597fc7     ?!...'........Y.
2002bf98:	3da88fc2 c6e00bf3 930aa725 d5a79147     ...=....%...G...
2002bfa8:	e003826f 06ca6351 0a0e6e70 14292967     o...Qc..pn..g)).
2002bfb8:	46d22ffc 27b70a85 5c26c926 2e1b2138     ./.F...'&.&\8!..
2002bfc8:	5ac42aed 4d2c6dfc 9d95b3df 53380d13     .*.Z.m,M......8S
2002bfd8:	8baf63de 650a7354 3c77b2a8 766a0abb     .c..Ts.e..w<..jv
2002bfe8:	47edaee6 81c2c92e 1482353b 92722c85     ...G....;5...,r.
2002bff8:	4cf10364 a2bfe8a1 bc423001 a81a664b     d..L.....0B.Kf..
2002c008:	d0f89791 c24b8b70 0654be30 c76c51a3     ....p.K.0.T..Ql.
2002c018:	d6ef5218 d192e819 5565a910 d6990624     .R........eU$...
2002c028:	5771202a f40e3585 32bbd1b8 106aa070     * qW.5.....2p.j.
2002c038:	b8d2d0c8 19a4c116 5141ab53 1e376c08     ........S.AQ.l7.
2002c048:	df8eeb99 2748774c e19b48a8 34b0bcb5     ....LwH'.H.....4
2002c058:	c5c95a63 391c0cb3 e3418acb 4ed8aa4a     cZ.....9..A.J..N
2002c068:	7763e373 5b9cca4f d6b2b8a3 682e6ff3     s.cwO..[.....o.h
2002c078:	5defb2fc 748f82ee 43172f60 78a5636f     ...]...t`/.Coc.x
2002c088:	a1f0ab72 84c87814 1a6439ec 8cc70208     r....x...9d.....
2002c098:	23631e28 90befffa de82bde9 a4506ceb     (.c#.........lP.
2002c0a8:	b2c67915 bef9a3f7 e372532b c67178f2     .y......+Sr..xq.
2002c0b8:	ea26619c ca273ece 21c0c207 d186b8c7     .a&..>'....!....
2002c0c8:	cde0eb1e eada7dd6 ee6ed178 f57d4f7f     .....}..x.n..O}.
2002c0d8:	72176fba 06f067aa a2c898a6 0a637dc5     .o.r.g.......}c.
2002c0e8:	bef90dae 113f9804 131c471b 1b710b35     ......?..G..5.q.
2002c0f8:	23047d84 28db77f5 40c72493 32caab7b     .}.#.w.(.$.@{..2
2002c108:	15c9bebc 3c9ebe0a 9c100d4c 431d67c4     .......<L....g.C
2002c118:	cb3e42b6 4cc5d4be fc657e2a 597f299c     .B>....L*~e..).Y
2002c128:	3ad6faec 5fcb6fab 4a475817 6c44198c     ...:.o._.XGJ..Dl

2002c138 <oid_md_alg>:
2002c138:	2002ae03 00000009 2002ae0d 2002af16     ... ....... ... 
2002c148:	00000005 2002ae17 00000009 2002ae21     ....... ....!.. 
2002c158:	2002af49 00000006 2002ae2b 00000009     I.. ....+.. ....
2002c168:	2002ae35 2002af7c 00000007 2002ae3f     5.. |.. ....?.. 
2002c178:	00000009 2002ae49 2002afaf 00000008     ....I.. ... ....
	...

2002c19c <oid_pk_alg>:
2002c19c:	2002ae8b 00000009 2002ae95 2002aea3     ... ....... ... 
2002c1ac:	00000001 2002aea7 00000007 2002aeaf     ....... ....... 
2002c1bc:	2002aebe 00000002 2002aecd 00000005     ... ....... ....
2002c1cc:	2002aed3 2002aedb 00000003 00000000     ... ... ........
	...

2002c1ec <mbedtls_rsa_info>:
2002c1ec:	00000001 2002aea3 20029497 2002948b     ....... ... ... 
2002c1fc:	20029575 20029551 20029521 200294f1     u.. Q.. !.. ... 
2002c20c:	200294ed 200294d3 200294c1 2002949d     ... ... ... ... 

2002c21c <_init>:
2002c21c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c21e:	bf00      	nop
2002c220:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c222:	bc08      	pop	{r3}
2002c224:	469e      	mov	lr, r3
2002c226:	4770      	bx	lr

2002c228 <_fini>:
2002c228:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c22a:	bf00      	nop
2002c22c:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c22e:	bc08      	pop	{r3}
2002c230:	469e      	mov	lr, r3
2002c232:	4770      	bx	lr

2002c234 <__EH_FRAME_BEGIN__>:
2002c234:	0000 0000                                   ....

Disassembly of section .l1_ret_text_HAL_PMU_ConfigPeriLdo:

2002c238 <HAL_PMU_ConfigPeriLdo>:
2002c238:	b538      	push	{r3, r4, r5, lr}
2002c23a:	4c13      	ldr	r4, [pc, #76]	@ (2002c288 <HAL_PMU_ConfigPeriLdo+0x50>)
2002c23c:	b118      	cbz	r0, 2002c246 <HAL_PMU_ConfigPeriLdo+0xe>
2002c23e:	6863      	ldr	r3, [r4, #4]
2002c240:	b2db      	uxtb	r3, r3
2002c242:	2b07      	cmp	r3, #7
2002c244:	d01c      	beq.n	2002c280 <HAL_PMU_ConfigPeriLdo+0x48>
2002c246:	6863      	ldr	r3, [r4, #4]
2002c248:	b2db      	uxtb	r3, r3
2002c24a:	2b07      	cmp	r3, #7
2002c24c:	d018      	beq.n	2002c280 <HAL_PMU_ConfigPeriLdo+0x48>
2002c24e:	2810      	cmp	r0, #16
2002c250:	d818      	bhi.n	2002c284 <HAL_PMU_ConfigPeriLdo+0x4c>
2002c252:	4b0e      	ldr	r3, [pc, #56]	@ (2002c28c <HAL_PMU_ConfigPeriLdo+0x54>)
2002c254:	40c3      	lsrs	r3, r0
2002c256:	07db      	lsls	r3, r3, #31
2002c258:	d514      	bpl.n	2002c284 <HAL_PMU_ConfigPeriLdo+0x4c>
2002c25a:	2900      	cmp	r1, #0
2002c25c:	f04f 0421 	mov.w	r4, #33	@ 0x21
2002c260:	bf0c      	ite	eq
2002c262:	2120      	moveq	r1, #32
2002c264:	2101      	movne	r1, #1
2002c266:	4d0a      	ldr	r5, [pc, #40]	@ (2002c290 <HAL_PMU_ConfigPeriLdo+0x58>)
2002c268:	4084      	lsls	r4, r0
2002c26a:	6deb      	ldr	r3, [r5, #92]	@ 0x5c
2002c26c:	4081      	lsls	r1, r0
2002c26e:	ea23 0304 	bic.w	r3, r3, r4
2002c272:	430b      	orrs	r3, r1
2002c274:	65eb      	str	r3, [r5, #92]	@ 0x5c
2002c276:	b11a      	cbz	r2, 2002c280 <HAL_PMU_ConfigPeriLdo+0x48>
2002c278:	f241 3088 	movw	r0, #5000	@ 0x1388
2002c27c:	f7f5 fe23 	bl	20021ec6 <HAL_Delay_us>
2002c280:	2000      	movs	r0, #0
2002c282:	bd38      	pop	{r3, r4, r5, pc}
2002c284:	2001      	movs	r0, #1
2002c286:	e7fc      	b.n	2002c282 <HAL_PMU_ConfigPeriLdo+0x4a>
2002c288:	5000b000 	.word	0x5000b000
2002c28c:	00010101 	.word	0x00010101
2002c290:	500ca000 	.word	0x500ca000

Disassembly of section .l1_ret_text_HAL_PMU_Reboot:

2002c294 <HAL_PMU_Reboot>:
2002c294:	b508      	push	{r3, lr}
2002c296:	f3ef 8310 	mrs	r3, PRIMASK
2002c29a:	2401      	movs	r4, #1
2002c29c:	f384 8810 	msr	PRIMASK, r4
2002c2a0:	2002      	movs	r0, #2
2002c2a2:	f7f6 fbf5 	bl	20022a90 <HAL_HPAON_WakeCore>
2002c2a6:	4620      	mov	r0, r4
2002c2a8:	f7f8 ff9e 	bl	200251e8 <HAL_RCC_Reset_and_Halt_LCPU>
2002c2ac:	4622      	mov	r2, r4
2002c2ae:	2100      	movs	r1, #0
2002c2b0:	2008      	movs	r0, #8
2002c2b2:	4c0b      	ldr	r4, [pc, #44]	@ (2002c2e0 <HAL_PMU_Reboot+0x4c>)
2002c2b4:	f7ff ffc0 	bl	2002c238 <HAL_PMU_ConfigPeriLdo>
2002c2b8:	f44f 50fa 	mov.w	r0, #8000	@ 0x1f40
2002c2bc:	f7f5 fda4 	bl	20021e08 <HAL_Delay_us_>
2002c2c0:	6823      	ldr	r3, [r4, #0]
2002c2c2:	075b      	lsls	r3, r3, #29
2002c2c4:	d506      	bpl.n	2002c2d4 <HAL_PMU_Reboot+0x40>
2002c2c6:	6823      	ldr	r3, [r4, #0]
2002c2c8:	4806      	ldr	r0, [pc, #24]	@ (2002c2e4 <HAL_PMU_Reboot+0x50>)
2002c2ca:	f023 0304 	bic.w	r3, r3, #4
2002c2ce:	6023      	str	r3, [r4, #0]
2002c2d0:	f7f5 fdf9 	bl	20021ec6 <HAL_Delay_us>
2002c2d4:	6823      	ldr	r3, [r4, #0]
2002c2d6:	f043 0304 	orr.w	r3, r3, #4
2002c2da:	6023      	str	r3, [r4, #0]
2002c2dc:	e7fe      	b.n	2002c2dc <HAL_PMU_Reboot+0x48>
2002c2de:	bf00      	nop
2002c2e0:	500ca000 	.word	0x500ca000
2002c2e4:	000186a0 	.word	0x000186a0

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef:

2002c2e8 <HAL_PMU_GetHpsysVoutRef>:
2002c2e8:	4b04      	ldr	r3, [pc, #16]	@ (2002c2fc <HAL_PMU_GetHpsysVoutRef+0x14>)
2002c2ea:	781a      	ldrb	r2, [r3, #0]
2002c2ec:	b122      	cbz	r2, 2002c2f8 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c2ee:	b118      	cbz	r0, 2002c2f8 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c2f0:	78db      	ldrb	r3, [r3, #3]
2002c2f2:	7003      	strb	r3, [r0, #0]
2002c2f4:	2000      	movs	r0, #0
2002c2f6:	4770      	bx	lr
2002c2f8:	2001      	movs	r0, #1
2002c2fa:	4770      	bx	lr
2002c2fc:	20049f7c 	.word	0x20049f7c

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef2:

2002c300 <HAL_PMU_GetHpsysVoutRef2>:
2002c300:	4b04      	ldr	r3, [pc, #16]	@ (2002c314 <HAL_PMU_GetHpsysVoutRef2+0x14>)
2002c302:	781a      	ldrb	r2, [r3, #0]
2002c304:	b122      	cbz	r2, 2002c310 <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c306:	b118      	cbz	r0, 2002c310 <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c308:	7b5b      	ldrb	r3, [r3, #13]
2002c30a:	7003      	strb	r3, [r0, #0]
2002c30c:	2000      	movs	r0, #0
2002c30e:	4770      	bx	lr
2002c310:	2001      	movs	r0, #1
2002c312:	4770      	bx	lr
2002c314:	20049f7c 	.word	0x20049f7c
