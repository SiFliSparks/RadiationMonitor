
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
20020270:	2002c28c 	.word	0x2002c28c

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
20020294:	2002c28c 	.word	0x2002c28c

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
200202ea:	f00c f80b 	bl	2002c304 <HAL_PMU_Reboot>
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
2002031a:	f004 fbef 	bl	20024afc <HAL_PIN_Set>
2002031e:	2301      	movs	r3, #1
20020320:	2200      	movs	r2, #0
20020322:	4619      	mov	r1, r3
20020324:	200a      	movs	r0, #10
20020326:	f004 fbe9 	bl	20024afc <HAL_PIN_Set>
2002032a:	2301      	movs	r3, #1
2002032c:	2210      	movs	r2, #16
2002032e:	2109      	movs	r1, #9
20020330:	2008      	movs	r0, #8
20020332:	f004 fbe3 	bl	20024afc <HAL_PIN_Set>
20020336:	2301      	movs	r3, #1
20020338:	2210      	movs	r2, #16
2002033a:	210a      	movs	r1, #10
2002033c:	2003      	movs	r0, #3
2002033e:	f004 fbdd 	bl	20024afc <HAL_PIN_Set>
20020342:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020346:	2301      	movs	r3, #1
20020348:	2200      	movs	r2, #0
2002034a:	210c      	movs	r1, #12
2002034c:	200b      	movs	r0, #11
2002034e:	f004 bbd5 	b.w	20024afc <HAL_PIN_Set>

20020352 <board_pinmux_mpi1_puya_ext>:
20020352:	b510      	push	{r4, lr}
20020354:	4604      	mov	r4, r0
20020356:	2101      	movs	r1, #1
20020358:	2005      	movs	r0, #5
2002035a:	f004 fd13 	bl	20024d84 <HAL_PIN_Set_Analog>
2002035e:	2101      	movs	r1, #1
20020360:	2006      	movs	r0, #6
20020362:	f004 fd0f 	bl	20024d84 <HAL_PIN_Set_Analog>
20020366:	2101      	movs	r1, #1
20020368:	2007      	movs	r0, #7
2002036a:	f004 fd0b 	bl	20024d84 <HAL_PIN_Set_Analog>
2002036e:	2101      	movs	r1, #1
20020370:	2009      	movs	r0, #9
20020372:	f004 fd07 	bl	20024d84 <HAL_PIN_Set_Analog>
20020376:	2101      	movs	r1, #1
20020378:	200c      	movs	r0, #12
2002037a:	f004 fd03 	bl	20024d84 <HAL_PIN_Set_Analog>
2002037e:	2101      	movs	r1, #1
20020380:	200d      	movs	r0, #13
20020382:	f004 fcff 	bl	20024d84 <HAL_PIN_Set_Analog>
20020386:	2101      	movs	r1, #1
20020388:	b154      	cbz	r4, 200203a0 <board_pinmux_mpi1_puya_ext+0x4e>
2002038a:	4608      	mov	r0, r1
2002038c:	f004 fcfa 	bl	20024d84 <HAL_PIN_Set_Analog>
20020390:	2301      	movs	r3, #1
20020392:	2230      	movs	r2, #48	@ 0x30
20020394:	210b      	movs	r1, #11
20020396:	2004      	movs	r0, #4
20020398:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002039c:	f004 bbae 	b.w	20024afc <HAL_PIN_Set>
200203a0:	2004      	movs	r0, #4
200203a2:	f004 fcef 	bl	20024d84 <HAL_PIN_Set_Analog>
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
200203ba:	f004 fb9f 	bl	20024afc <HAL_PIN_Set>
200203be:	2301      	movs	r3, #1
200203c0:	2200      	movs	r2, #0
200203c2:	4619      	mov	r1, r3
200203c4:	200a      	movs	r0, #10
200203c6:	f004 fb99 	bl	20024afc <HAL_PIN_Set>
200203ca:	2301      	movs	r3, #1
200203cc:	2210      	movs	r2, #16
200203ce:	2109      	movs	r1, #9
200203d0:	200c      	movs	r0, #12
200203d2:	f004 fb93 	bl	20024afc <HAL_PIN_Set>
200203d6:	2301      	movs	r3, #1
200203d8:	2210      	movs	r2, #16
200203da:	210a      	movs	r1, #10
200203dc:	2003      	movs	r0, #3
200203de:	f004 fb8d 	bl	20024afc <HAL_PIN_Set>
200203e2:	2301      	movs	r3, #1
200203e4:	2230      	movs	r2, #48	@ 0x30
200203e6:	210b      	movs	r1, #11
200203e8:	4618      	mov	r0, r3
200203ea:	f004 fb87 	bl	20024afc <HAL_PIN_Set>
200203ee:	2301      	movs	r3, #1
200203f0:	2230      	movs	r2, #48	@ 0x30
200203f2:	210c      	movs	r1, #12
200203f4:	2009      	movs	r0, #9
200203f6:	f004 fb81 	bl	20024afc <HAL_PIN_Set>
200203fa:	2101      	movs	r1, #1
200203fc:	2002      	movs	r0, #2
200203fe:	f004 fcc1 	bl	20024d84 <HAL_PIN_Set_Analog>
20020402:	2101      	movs	r1, #1
20020404:	2004      	movs	r0, #4
20020406:	f004 fcbd 	bl	20024d84 <HAL_PIN_Set_Analog>
2002040a:	2101      	movs	r1, #1
2002040c:	2006      	movs	r0, #6
2002040e:	f004 fcb9 	bl	20024d84 <HAL_PIN_Set_Analog>
20020412:	2101      	movs	r1, #1
20020414:	2007      	movs	r0, #7
20020416:	f004 fcb5 	bl	20024d84 <HAL_PIN_Set_Analog>
2002041a:	2101      	movs	r1, #1
2002041c:	2008      	movs	r0, #8
2002041e:	f004 fcb1 	bl	20024d84 <HAL_PIN_Set_Analog>
20020422:	2101      	movs	r1, #1
20020424:	200b      	movs	r0, #11
20020426:	f004 fcad 	bl	20024d84 <HAL_PIN_Set_Analog>
2002042a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002042e:	2101      	movs	r1, #1
20020430:	200d      	movs	r0, #13
20020432:	f004 bca7 	b.w	20024d84 <HAL_PIN_Set_Analog>

20020436 <board_pinmux_mpi2>:
20020436:	b510      	push	{r4, lr}
20020438:	2301      	movs	r3, #1
2002043a:	2200      	movs	r2, #0
2002043c:	2119      	movs	r1, #25
2002043e:	201e      	movs	r0, #30
20020440:	f004 fb5c 	bl	20024afc <HAL_PIN_Set>
20020444:	2301      	movs	r3, #1
20020446:	2200      	movs	r2, #0
20020448:	211b      	movs	r1, #27
2002044a:	201a      	movs	r0, #26
2002044c:	f004 fb56 	bl	20024afc <HAL_PIN_Set>
20020450:	2301      	movs	r3, #1
20020452:	2210      	movs	r2, #16
20020454:	2121      	movs	r1, #33	@ 0x21
20020456:	201d      	movs	r0, #29
20020458:	f004 fb50 	bl	20024afc <HAL_PIN_Set>
2002045c:	2301      	movs	r3, #1
2002045e:	2210      	movs	r2, #16
20020460:	2122      	movs	r1, #34	@ 0x22
20020462:	201b      	movs	r0, #27
20020464:	f004 fb4a 	bl	20024afc <HAL_PIN_Set>
20020468:	2301      	movs	r3, #1
2002046a:	2230      	movs	r2, #48	@ 0x30
2002046c:	2123      	movs	r1, #35	@ 0x23
2002046e:	201c      	movs	r0, #28
20020470:	f004 fb44 	bl	20024afc <HAL_PIN_Set>
20020474:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020478:	2301      	movs	r3, #1
2002047a:	2230      	movs	r2, #48	@ 0x30
2002047c:	2124      	movs	r1, #36	@ 0x24
2002047e:	201f      	movs	r0, #31
20020480:	f004 bb3c 	b.w	20024afc <HAL_PIN_Set>

20020484 <board_pinmux_sd>:
20020484:	b510      	push	{r4, lr}
20020486:	2301      	movs	r3, #1
20020488:	2230      	movs	r2, #48	@ 0x30
2002048a:	f44f 71da 	mov.w	r1, #436	@ 0x1b4
2002048e:	201d      	movs	r0, #29
20020490:	f004 fb34 	bl	20024afc <HAL_PIN_Set>
20020494:	2014      	movs	r0, #20
20020496:	f001 fd14 	bl	20021ec2 <HAL_Delay_us>
2002049a:	2301      	movs	r3, #1
2002049c:	2200      	movs	r2, #0
2002049e:	f44f 71d9 	mov.w	r1, #434	@ 0x1b2
200204a2:	201c      	movs	r0, #28
200204a4:	f004 fb2a 	bl	20024afc <HAL_PIN_Set>
200204a8:	2301      	movs	r3, #1
200204aa:	2230      	movs	r2, #48	@ 0x30
200204ac:	f240 11b5 	movw	r1, #437	@ 0x1b5
200204b0:	201e      	movs	r0, #30
200204b2:	f004 fb23 	bl	20024afc <HAL_PIN_Set>
200204b6:	2301      	movs	r3, #1
200204b8:	2230      	movs	r2, #48	@ 0x30
200204ba:	f44f 71db 	mov.w	r1, #438	@ 0x1b6
200204be:	201f      	movs	r0, #31
200204c0:	f004 fb1c 	bl	20024afc <HAL_PIN_Set>
200204c4:	2301      	movs	r3, #1
200204c6:	2230      	movs	r2, #48	@ 0x30
200204c8:	f240 11b7 	movw	r1, #439	@ 0x1b7
200204cc:	201a      	movs	r0, #26
200204ce:	f004 fb15 	bl	20024afc <HAL_PIN_Set>
200204d2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200204d6:	2301      	movs	r3, #1
200204d8:	2230      	movs	r2, #48	@ 0x30
200204da:	f44f 71dc 	mov.w	r1, #440	@ 0x1b8
200204de:	201b      	movs	r0, #27
200204e0:	f004 bb0c 	b.w	20024afc <HAL_PIN_Set>

200204e4 <board_boot_from>:
200204e4:	b510      	push	{r4, lr}
200204e6:	4b0d      	ldr	r3, [pc, #52]	@ (2002051c <board_boot_from+0x38>)
200204e8:	685b      	ldr	r3, [r3, #4]
200204ea:	f3c3 2302 	ubfx	r3, r3, #8, #3
200204ee:	2b07      	cmp	r3, #7
200204f0:	d10c      	bne.n	2002050c <board_boot_from+0x28>
200204f2:	2400      	movs	r4, #0
200204f4:	3401      	adds	r4, #1
200204f6:	2101      	movs	r1, #1
200204f8:	4620      	mov	r0, r4
200204fa:	f004 fc43 	bl	20024d84 <HAL_PIN_Set_Analog>
200204fe:	2c0d      	cmp	r4, #13
20020500:	d1f8      	bne.n	200204f4 <board_boot_from+0x10>
20020502:	2000      	movs	r0, #0
20020504:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020508:	f002 bac0 	b.w	20022a8c <HAL_Get_backup>
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
2002052c:	f004 fae6 	bl	20024afc <HAL_PIN_Set>
20020530:	2301      	movs	r3, #1
20020532:	2210      	movs	r2, #16
20020534:	210a      	movs	r1, #10
20020536:	2003      	movs	r0, #3
20020538:	f004 fae0 	bl	20024afc <HAL_PIN_Set>
2002053c:	2301      	movs	r3, #1
2002053e:	2210      	movs	r2, #16
20020540:	210b      	movs	r1, #11
20020542:	2004      	movs	r0, #4
20020544:	f004 fada 	bl	20024afc <HAL_PIN_Set>
20020548:	2301      	movs	r3, #1
2002054a:	2210      	movs	r2, #16
2002054c:	210c      	movs	r1, #12
2002054e:	2005      	movs	r0, #5
20020550:	f004 fad4 	bl	20024afc <HAL_PIN_Set>
20020554:	2301      	movs	r3, #1
20020556:	2210      	movs	r2, #16
20020558:	210d      	movs	r1, #13
2002055a:	2006      	movs	r0, #6
2002055c:	f004 face 	bl	20024afc <HAL_PIN_Set>
20020560:	2301      	movs	r3, #1
20020562:	2210      	movs	r2, #16
20020564:	210e      	movs	r1, #14
20020566:	2007      	movs	r0, #7
20020568:	f004 fac8 	bl	20024afc <HAL_PIN_Set>
2002056c:	2301      	movs	r3, #1
2002056e:	2210      	movs	r2, #16
20020570:	210f      	movs	r1, #15
20020572:	2008      	movs	r0, #8
20020574:	f004 fac2 	bl	20024afc <HAL_PIN_Set>
20020578:	2210      	movs	r2, #16
2002057a:	2301      	movs	r3, #1
2002057c:	4611      	mov	r1, r2
2002057e:	2009      	movs	r0, #9
20020580:	f004 fabc 	bl	20024afc <HAL_PIN_Set>
20020584:	2301      	movs	r3, #1
20020586:	2210      	movs	r2, #16
20020588:	2106      	movs	r1, #6
2002058a:	200a      	movs	r0, #10
2002058c:	f004 fab6 	bl	20024afc <HAL_PIN_Set>
20020590:	2301      	movs	r3, #1
20020592:	2200      	movs	r2, #0
20020594:	4619      	mov	r1, r3
20020596:	200b      	movs	r0, #11
20020598:	f004 fab0 	bl	20024afc <HAL_PIN_Set>
2002059c:	2301      	movs	r3, #1
2002059e:	2200      	movs	r2, #0
200205a0:	2103      	movs	r1, #3
200205a2:	200c      	movs	r0, #12
200205a4:	f004 faaa 	bl	20024afc <HAL_PIN_Set>
200205a8:	2101      	movs	r1, #1
200205aa:	4608      	mov	r0, r1
200205ac:	f004 fbea 	bl	20024d84 <HAL_PIN_Set_Analog>
200205b0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
200205b4:	2101      	movs	r1, #1
200205b6:	200d      	movs	r0, #13
200205b8:	f004 bbe4 	b.w	20024d84 <HAL_PIN_Set_Analog>

200205bc <board_pinmux_psram_func1_2_4>:
200205bc:	b510      	push	{r4, lr}
200205be:	2301      	movs	r3, #1
200205c0:	4604      	mov	r4, r0
200205c2:	2210      	movs	r2, #16
200205c4:	2109      	movs	r1, #9
200205c6:	2002      	movs	r0, #2
200205c8:	f004 fa98 	bl	20024afc <HAL_PIN_Set>
200205cc:	2301      	movs	r3, #1
200205ce:	2210      	movs	r2, #16
200205d0:	210a      	movs	r1, #10
200205d2:	2003      	movs	r0, #3
200205d4:	f004 fa92 	bl	20024afc <HAL_PIN_Set>
200205d8:	2301      	movs	r3, #1
200205da:	2210      	movs	r2, #16
200205dc:	210b      	movs	r1, #11
200205de:	2004      	movs	r0, #4
200205e0:	f004 fa8c 	bl	20024afc <HAL_PIN_Set>
200205e4:	2301      	movs	r3, #1
200205e6:	2210      	movs	r2, #16
200205e8:	210c      	movs	r1, #12
200205ea:	2005      	movs	r0, #5
200205ec:	f004 fa86 	bl	20024afc <HAL_PIN_Set>
200205f0:	2301      	movs	r3, #1
200205f2:	2210      	movs	r2, #16
200205f4:	210d      	movs	r1, #13
200205f6:	2009      	movs	r0, #9
200205f8:	f004 fa80 	bl	20024afc <HAL_PIN_Set>
200205fc:	2301      	movs	r3, #1
200205fe:	2210      	movs	r2, #16
20020600:	210e      	movs	r1, #14
20020602:	200a      	movs	r0, #10
20020604:	f004 fa7a 	bl	20024afc <HAL_PIN_Set>
20020608:	2301      	movs	r3, #1
2002060a:	2210      	movs	r2, #16
2002060c:	210f      	movs	r1, #15
2002060e:	200b      	movs	r0, #11
20020610:	f004 fa74 	bl	20024afc <HAL_PIN_Set>
20020614:	2210      	movs	r2, #16
20020616:	2301      	movs	r3, #1
20020618:	4611      	mov	r1, r2
2002061a:	200c      	movs	r0, #12
2002061c:	f004 fa6e 	bl	20024afc <HAL_PIN_Set>
20020620:	2301      	movs	r3, #1
20020622:	2200      	movs	r2, #0
20020624:	4619      	mov	r1, r3
20020626:	2008      	movs	r0, #8
20020628:	f004 fa68 	bl	20024afc <HAL_PIN_Set>
2002062c:	2301      	movs	r3, #1
2002062e:	2200      	movs	r2, #0
20020630:	2103      	movs	r1, #3
20020632:	2006      	movs	r0, #6
20020634:	f004 fa62 	bl	20024afc <HAL_PIN_Set>
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
2002064c:	f004 fa56 	bl	20024afc <HAL_PIN_Set>
20020650:	4621      	mov	r1, r4
20020652:	4620      	mov	r0, r4
20020654:	f004 fb96 	bl	20024d84 <HAL_PIN_Set_Analog>
20020658:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002065c:	2101      	movs	r1, #1
2002065e:	2007      	movs	r0, #7
20020660:	f004 bb90 	b.w	20024d84 <HAL_PIN_Set_Analog>
20020664:	2301      	movs	r3, #1
20020666:	2210      	movs	r2, #16
20020668:	2104      	movs	r1, #4
2002066a:	4618      	mov	r0, r3
2002066c:	f004 fa46 	bl	20024afc <HAL_PIN_Set>
20020670:	2301      	movs	r3, #1
20020672:	2210      	movs	r2, #16
20020674:	2105      	movs	r1, #5
20020676:	200d      	movs	r0, #13
20020678:	f004 fa40 	bl	20024afc <HAL_PIN_Set>
2002067c:	4621      	mov	r1, r4
2002067e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020682:	2301      	movs	r3, #1
20020684:	2200      	movs	r2, #0
20020686:	2007      	movs	r0, #7
20020688:	f004 ba38 	b.w	20024afc <HAL_PIN_Set>
2002068c:	2106      	movs	r1, #6
2002068e:	2301      	movs	r3, #1
20020690:	2200      	movs	r2, #0
20020692:	200d      	movs	r0, #13
20020694:	f004 fa32 	bl	20024afc <HAL_PIN_Set>
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
200206aa:	f004 fa27 	bl	20024afc <HAL_PIN_Set>
200206ae:	2301      	movs	r3, #1
200206b0:	2200      	movs	r2, #0
200206b2:	2103      	movs	r1, #3
200206b4:	2009      	movs	r0, #9
200206b6:	f004 fa21 	bl	20024afc <HAL_PIN_Set>
200206ba:	2301      	movs	r3, #1
200206bc:	2210      	movs	r2, #16
200206be:	2109      	movs	r1, #9
200206c0:	2006      	movs	r0, #6
200206c2:	f004 fa1b 	bl	20024afc <HAL_PIN_Set>
200206c6:	2301      	movs	r3, #1
200206c8:	2210      	movs	r2, #16
200206ca:	210a      	movs	r1, #10
200206cc:	2008      	movs	r0, #8
200206ce:	f004 fa15 	bl	20024afc <HAL_PIN_Set>
200206d2:	2301      	movs	r3, #1
200206d4:	2230      	movs	r2, #48	@ 0x30
200206d6:	210b      	movs	r1, #11
200206d8:	2007      	movs	r0, #7
200206da:	f004 fa0f 	bl	20024afc <HAL_PIN_Set>
200206de:	2301      	movs	r3, #1
200206e0:	2230      	movs	r2, #48	@ 0x30
200206e2:	210c      	movs	r1, #12
200206e4:	200b      	movs	r0, #11
200206e6:	f004 fa09 	bl	20024afc <HAL_PIN_Set>
200206ea:	2101      	movs	r1, #1
200206ec:	4608      	mov	r0, r1
200206ee:	f004 fb49 	bl	20024d84 <HAL_PIN_Set_Analog>
200206f2:	2101      	movs	r1, #1
200206f4:	2002      	movs	r0, #2
200206f6:	f004 fb45 	bl	20024d84 <HAL_PIN_Set_Analog>
200206fa:	2101      	movs	r1, #1
200206fc:	2003      	movs	r0, #3
200206fe:	f004 fb41 	bl	20024d84 <HAL_PIN_Set_Analog>
20020702:	2101      	movs	r1, #1
20020704:	2004      	movs	r0, #4
20020706:	f004 fb3d 	bl	20024d84 <HAL_PIN_Set_Analog>
2002070a:	2101      	movs	r1, #1
2002070c:	2005      	movs	r0, #5
2002070e:	f004 fb39 	bl	20024d84 <HAL_PIN_Set_Analog>
20020712:	2101      	movs	r1, #1
20020714:	200c      	movs	r0, #12
20020716:	f004 fb35 	bl	20024d84 <HAL_PIN_Set_Analog>
2002071a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002071e:	2101      	movs	r1, #1
20020720:	200d      	movs	r0, #13
20020722:	f004 bb2f 	b.w	20024d84 <HAL_PIN_Set_Analog>

20020726 <bootloader_switch_clock>:
20020726:	2102      	movs	r1, #2
20020728:	2004      	movs	r0, #4
2002072a:	f004 bc5d 	b.w	20024fe8 <HAL_RCC_HCPU_ClockSelect>
	...

20020730 <boot_psram_init>:
20020730:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20020734:	2400      	movs	r4, #0
20020736:	b08a      	sub	sp, #40	@ 0x28
20020738:	4605      	mov	r5, r0
2002073a:	2230      	movs	r2, #48	@ 0x30
2002073c:	4621      	mov	r1, r4
2002073e:	4863      	ldr	r0, [pc, #396]	@ (200208cc <boot_psram_init+0x19c>)
20020740:	f00a f860 	bl	2002a804 <memset>
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
20020774:	f001 fac6 	bl	20021d04 <BSP_GetFlash1DIV>
20020778:	a905      	add	r1, sp, #20
2002077a:	4602      	mov	r2, r0
2002077c:	4853      	ldr	r0, [pc, #332]	@ (200208cc <boot_psram_init+0x19c>)
2002077e:	f003 ff61 	bl	20024644 <HAL_OPI_PSRAM_Init>
20020782:	462a      	mov	r2, r5
20020784:	2108      	movs	r1, #8
20020786:	4851      	ldr	r0, [pc, #324]	@ (200208cc <boot_psram_init+0x19c>)
20020788:	f003 fe4e 	bl	20024428 <HAL_MPI_MR_WRITE>
2002078c:	484f      	ldr	r0, [pc, #316]	@ (200208cc <boot_psram_init+0x19c>)
2002078e:	f003 fb59 	bl	20023e44 <HAL_QSPI_GET_CLK>
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
200207dc:	f002 f9c6 	bl	20022b6c <HAL_FLASH_CFG_AHB_RCMD>
200207e0:	4631      	mov	r1, r6
200207e2:	483a      	ldr	r0, [pc, #232]	@ (200208cc <boot_psram_init+0x19c>)
200207e4:	f002 f9b7 	bl	20022b56 <HAL_FLASH_SET_AHB_RCMD>
200207e8:	1e62      	subs	r2, r4, #1
200207ea:	4633      	mov	r3, r6
200207ec:	b252      	sxtb	r2, r2
200207ee:	4629      	mov	r1, r5
200207f0:	4836      	ldr	r0, [pc, #216]	@ (200208cc <boot_psram_init+0x19c>)
200207f2:	e9cd 5502 	strd	r5, r5, [sp, #8]
200207f6:	e9cd 6800 	strd	r6, r8, [sp]
200207fa:	f002 f9e0 	bl	20022bbe <HAL_FLASH_CFG_AHB_WCMD>
200207fe:	2180      	movs	r1, #128	@ 0x80
20020800:	4832      	ldr	r0, [pc, #200]	@ (200208cc <boot_psram_init+0x19c>)
20020802:	f002 f9d0 	bl	20022ba6 <HAL_FLASH_SET_AHB_WCMD>
20020806:	4623      	mov	r3, r4
20020808:	463a      	mov	r2, r7
2002080a:	2101      	movs	r1, #1
2002080c:	482f      	ldr	r0, [pc, #188]	@ (200208cc <boot_psram_init+0x19c>)
2002080e:	f003 fe2f 	bl	20024470 <HAL_MPI_SET_FIXLAT>
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
2002083e:	f001 fa61 	bl	20021d04 <BSP_GetFlash1DIV>
20020842:	a905      	add	r1, sp, #20
20020844:	4602      	mov	r2, r0
20020846:	4821      	ldr	r0, [pc, #132]	@ (200208cc <boot_psram_init+0x19c>)
20020848:	f003 ff74 	bl	20024734 <HAL_LEGACY_PSRAM_Init>
2002084c:	481f      	ldr	r0, [pc, #124]	@ (200208cc <boot_psram_init+0x19c>)
2002084e:	f003 fe81 	bl	20024554 <HAL_LEGACY_CFG_READ>
20020852:	481e      	ldr	r0, [pc, #120]	@ (200208cc <boot_psram_init+0x19c>)
20020854:	f003 fe99 	bl	2002458a <HAL_LEGACY_CFG_WRITE>
20020858:	e7db      	b.n	20020812 <boot_psram_init+0xe2>
2002085a:	2d06      	cmp	r5, #6
2002085c:	d10d      	bne.n	2002087a <boot_psram_init+0x14a>
2002085e:	f001 fa51 	bl	20021d04 <BSP_GetFlash1DIV>
20020862:	a905      	add	r1, sp, #20
20020864:	4602      	mov	r2, r0
20020866:	4819      	ldr	r0, [pc, #100]	@ (200208cc <boot_psram_init+0x19c>)
20020868:	f004 f82c 	bl	200248c4 <HAL_HYPER_PSRAM_Init>
2002086c:	4817      	ldr	r0, [pc, #92]	@ (200208cc <boot_psram_init+0x19c>)
2002086e:	f004 f863 	bl	20024938 <HAL_HYPER_CFG_READ>
20020872:	4816      	ldr	r0, [pc, #88]	@ (200208cc <boot_psram_init+0x19c>)
20020874:	f004 f872 	bl	2002495c <HAL_HYPER_CFG_WRITE>
20020878:	e7cb      	b.n	20020812 <boot_psram_init+0xe2>
2002087a:	f001 fa43 	bl	20021d04 <BSP_GetFlash1DIV>
2002087e:	2500      	movs	r5, #0
20020880:	2403      	movs	r4, #3
20020882:	2701      	movs	r7, #1
20020884:	2602      	movs	r6, #2
20020886:	4602      	mov	r2, r0
20020888:	a905      	add	r1, sp, #20
2002088a:	4810      	ldr	r0, [pc, #64]	@ (200208cc <boot_psram_init+0x19c>)
2002088c:	f003 fd76 	bl	2002437c <HAL_SPI_PSRAM_Init>
20020890:	462b      	mov	r3, r5
20020892:	2206      	movs	r2, #6
20020894:	4621      	mov	r1, r4
20020896:	e9cd 4702 	strd	r4, r7, [sp, #8]
2002089a:	e9cd 5600 	strd	r5, r6, [sp]
2002089e:	480b      	ldr	r0, [pc, #44]	@ (200208cc <boot_psram_init+0x19c>)
200208a0:	f002 f964 	bl	20022b6c <HAL_FLASH_CFG_AHB_RCMD>
200208a4:	21eb      	movs	r1, #235	@ 0xeb
200208a6:	4809      	ldr	r0, [pc, #36]	@ (200208cc <boot_psram_init+0x19c>)
200208a8:	f002 f955 	bl	20022b56 <HAL_FLASH_SET_AHB_RCMD>
200208ac:	4621      	mov	r1, r4
200208ae:	462b      	mov	r3, r5
200208b0:	462a      	mov	r2, r5
200208b2:	e9cd 4702 	strd	r4, r7, [sp, #8]
200208b6:	e9cd 5600 	strd	r5, r6, [sp]
200208ba:	4804      	ldr	r0, [pc, #16]	@ (200208cc <boot_psram_init+0x19c>)
200208bc:	f002 f97f 	bl	20022bbe <HAL_FLASH_CFG_AHB_WCMD>
200208c0:	2138      	movs	r1, #56	@ 0x38
200208c2:	4802      	ldr	r0, [pc, #8]	@ (200208cc <boot_psram_init+0x19c>)
200208c4:	f002 f96f 	bl	20022ba6 <HAL_FLASH_SET_AHB_WCMD>
200208c8:	e7a3      	b.n	20020812 <boot_psram_init+0xe2>
200208ca:	bf00      	nop
200208cc:	2004497c 	.word	0x2004497c
200208d0:	50041000 	.word	0x50041000
200208d4:	07de2901 	.word	0x07de2901
200208d8:	13c9eb01 	.word	0x13c9eb01
200208dc:	17d78401 	.word	0x17d78401

200208e0 <board_init_psram>:
200208e0:	b510      	push	{r4, lr}
200208e2:	4b15      	ldr	r3, [pc, #84]	@ (20020938 <board_init_psram+0x58>)
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
20020904:	f00b fcc4 	bl	2002c290 <HAL_PMU_ConfigPeriLdo>
20020908:	2001      	movs	r0, #1
2002090a:	f7ff ff0c 	bl	20020726 <bootloader_switch_clock>
2002090e:	2002      	movs	r0, #2
20020910:	f001 fa04 	bl	20021d1c <BSP_SetFlash1DIV>
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
20020940:	f103 0644 	add.w	r6, r3, #68	@ 0x44
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
2002097a:	f003 fa17 	bl	20023dac <HAL_QSPIEX_SECT_ERASE>
2002097e:	2800      	cmp	r0, #0
20020980:	d1e8      	bne.n	20020954 <erase_nor+0x18>
20020982:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
20020986:	e7f3      	b.n	20020970 <erase_nor+0x34>
20020988:	f04f 30ff 	mov.w	r0, #4294967295
2002098c:	e7e3      	b.n	20020956 <erase_nor+0x1a>
2002098e:	f06f 0001 	mvn.w	r0, #1
20020992:	e7e0      	b.n	20020956 <erase_nor+0x1a>
20020994:	20046ecc 	.word	0x20046ecc

20020998 <write_nor>:
20020998:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002099c:	4b20      	ldr	r3, [pc, #128]	@ (20020a20 <write_nor+0x88>)
2002099e:	460f      	mov	r7, r1
200209a0:	f103 0844 	add.w	r8, r3, #68	@ 0x44
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
200209e0:	f003 f8ff 	bl	20023be2 <HAL_QSPIEX_WRITE_PAGE>
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
20020a0c:	f003 f8e9 	bl	20023be2 <HAL_QSPIEX_WRITE_PAGE>
20020a10:	4581      	cmp	r9, r0
20020a12:	d1d0      	bne.n	200209b6 <write_nor+0x1e>
20020a14:	444d      	add	r5, r9
20020a16:	444f      	add	r7, r9
20020a18:	eba4 0409 	sub.w	r4, r4, r9
20020a1c:	e7e7      	b.n	200209ee <write_nor+0x56>
20020a1e:	bf00      	nop
20020a20:	20046ecc 	.word	0x20046ecc

20020a24 <read_nor>:
20020a24:	460b      	mov	r3, r1
20020a26:	b510      	push	{r4, lr}
20020a28:	4614      	mov	r4, r2
20020a2a:	4601      	mov	r1, r0
20020a2c:	4618      	mov	r0, r3
20020a2e:	f009 ff03 	bl	2002a838 <memcpy>
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
20020a9a:	f004 febb 	bl	20025814 <bbm_read_page>
20020a9e:	4548      	cmp	r0, r9
20020aa0:	d1dd      	bne.n	20020a5e <read_nand+0x26>
20020aa2:	4406      	add	r6, r0
20020aa4:	1a2d      	subs	r5, r5, r0
20020aa6:	4404      	add	r4, r0
20020aa8:	e7d8      	b.n	20020a5c <read_nand+0x24>
20020aaa:	bf00      	nop
20020aac:	20046cb4 	.word	0x20046cb4
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
20020aec:	f000 ffee 	bl	20021acc <sd_read_data>
20020af0:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020af4:	f020 0001 	bic.w	r0, r0, #1
20020af8:	463a      	mov	r2, r7
20020afa:	4908      	ldr	r1, [pc, #32]	@ (20020b1c <read_sdnand+0x64>)
20020afc:	4428      	add	r0, r5
20020afe:	f009 fe9b 	bl	2002a838 <memcpy>
20020b02:	4620      	mov	r0, r4
20020b04:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b08:	4640      	mov	r0, r8
20020b0a:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b0e:	f000 ffdd 	bl	20021acc <sd_read_data>
20020b12:	f5a7 7700 	sub.w	r7, r7, #512	@ 0x200
20020b16:	f508 7800 	add.w	r8, r8, #512	@ 0x200
20020b1a:	e7d7      	b.n	20020acc <read_sdnand+0x14>
20020b1c:	20046ab0 	.word	0x20046ab0

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
20020b54:	f000 fda4 	bl	200216a0 <emmc_read_data>
20020b58:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b5c:	f020 0001 	bic.w	r0, r0, #1
20020b60:	463a      	mov	r2, r7
20020b62:	4908      	ldr	r1, [pc, #32]	@ (20020b84 <read_sdemmc+0x64>)
20020b64:	4428      	add	r0, r5
20020b66:	f009 fe67 	bl	2002a838 <memcpy>
20020b6a:	4620      	mov	r0, r4
20020b6c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b70:	4640      	mov	r0, r8
20020b72:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b76:	f000 fd93 	bl	200216a0 <emmc_read_data>
20020b7a:	f5a7 7700 	sub.w	r7, r7, #512	@ 0x200
20020b7e:	f508 7800 	add.w	r8, r8, #512	@ 0x200
20020b82:	e7d7      	b.n	20020b34 <read_sdemmc+0x14>
20020b84:	20046ab0 	.word	0x20046ab0

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
20020bee:	6d64      	ldr	r4, [r4, #84]	@ 0x54
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
20020c1e:	f894 806b 	ldrb.w	r8, [r4, #107]	@ 0x6b
20020c22:	f1b8 0f00 	cmp.w	r8, #0
20020c26:	d015      	beq.n	20020c54 <port_read_page+0xcc>
20020c28:	6d64      	ldr	r4, [r4, #84]	@ 0x54
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
20020c66:	f002 be9b 	b.w	200239a0 <HAL_NAND_READ_WITHOOB>
20020c6a:	bf00      	nop
20020c6c:	20042c00 	.word	0x20042c00
20020c70:	20046ecc 	.word	0x20046ecc
20020c74:	20046f10 	.word	0x20046f10
20020c78:	20042c04 	.word	0x20042c04
20020c7c:	e000ed00 	.word	0xe000ed00

20020c80 <bbm_get_bb>:
20020c80:	b410      	push	{r4}
20020c82:	4b1c      	ldr	r3, [pc, #112]	@ (20020cf4 <bbm_get_bb+0x74>)
20020c84:	4601      	mov	r1, r0
20020c86:	6818      	ldr	r0, [r3, #0]
20020c88:	3080      	adds	r0, #128	@ 0x80
20020c8a:	2800      	cmp	r0, #0
20020c8c:	dd12      	ble.n	20020cb4 <bbm_get_bb+0x34>
20020c8e:	4b1a      	ldr	r3, [pc, #104]	@ (20020cf8 <bbm_get_bb+0x78>)
20020c90:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
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
20020cba:	f893 206b 	ldrb.w	r2, [r3, #107]	@ 0x6b
20020cbe:	b1a2      	cbz	r2, 20020cea <bbm_get_bb+0x6a>
20020cc0:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
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
20020cf0:	f002 bf56 	b.w	20023ba0 <HAL_NAND_GET_BADBLK>
20020cf4:	20042c04 	.word	0x20042c04
20020cf8:	20046ecc 	.word	0x20046ecc
20020cfc:	e000ed00 	.word	0xe000ed00
20020d00:	20046f10 	.word	0x20046f10

20020d04 <dfu_flash_init>:
20020d04:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020d08:	b08c      	sub	sp, #48	@ 0x30
20020d0a:	f001 feef 	bl	20022aec <HAL_HPAON_EnableXT48>
20020d0e:	2101      	movs	r1, #1
20020d10:	2000      	movs	r0, #0
20020d12:	f004 f969 	bl	20024fe8 <HAL_RCC_HCPU_ClockSelect>
20020d16:	2101      	movs	r1, #1
20020d18:	200c      	movs	r0, #12
20020d1a:	f004 f965 	bl	20024fe8 <HAL_RCC_HCPU_ClockSelect>
20020d1e:	2001      	movs	r0, #1
20020d20:	f004 f860 	bl	20024de4 <HAL_PMU_EnableDLL>
20020d24:	4f97      	ldr	r7, [pc, #604]	@ (20020f84 <dfu_flash_init+0x280>)
20020d26:	2090      	movs	r0, #144	@ 0x90
20020d28:	f004 fac0 	bl	200252ac <HAL_RCC_HCPU_ConfigHCLK>
20020d2c:	2000      	movs	r0, #0
20020d2e:	f001 f8c8 	bl	20021ec2 <HAL_Delay_us>
20020d32:	683b      	ldr	r3, [r7, #0]
20020d34:	4d94      	ldr	r5, [pc, #592]	@ (20020f88 <dfu_flash_init+0x284>)
20020d36:	3b01      	subs	r3, #1
20020d38:	2b05      	cmp	r3, #5
20020d3a:	f200 8113 	bhi.w	20020f64 <dfu_flash_init+0x260>
20020d3e:	e8df f013 	tbh	[pc, r3, lsl #1]
20020d42:	0006      	.short	0x0006
20020d44:	00780006 	.word	0x00780006
20020d48:	00ee0078 	.word	0x00ee0078
20020d4c:	0102      	.short	0x0102
20020d4e:	488f      	ldr	r0, [pc, #572]	@ (20020f8c <dfu_flash_init+0x288>)
20020d50:	f004 f912 	bl	20024f78 <HAL_RCC_HCPU_EnableDLL2>
20020d54:	4c8e      	ldr	r4, [pc, #568]	@ (20020f90 <dfu_flash_init+0x28c>)
20020d56:	2006      	movs	r0, #6
20020d58:	f000 ffe0 	bl	20021d1c <BSP_SetFlash1DIV>
20020d5c:	ae07      	add	r6, sp, #28
20020d5e:	2102      	movs	r1, #2
20020d60:	2004      	movs	r0, #4
20020d62:	f004 f941 	bl	20024fe8 <HAL_RCC_HCPU_ClockSelect>
20020d66:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020d68:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020d6a:	f854 3b04 	ldr.w	r3, [r4], #4
20020d6e:	6033      	str	r3, [r6, #0]
20020d70:	ae03      	add	r6, sp, #12
20020d72:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020d76:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020d7a:	2301      	movs	r3, #1
20020d7c:	4c85      	ldr	r4, [pc, #532]	@ (20020f94 <dfu_flash_init+0x290>)
20020d7e:	f884 3035 	strb.w	r3, [r4, #53]	@ 0x35
20020d82:	2300      	movs	r3, #0
20020d84:	9308      	str	r3, [sp, #32]
20020d86:	683b      	ldr	r3, [r7, #0]
20020d88:	2b01      	cmp	r3, #1
20020d8a:	d14d      	bne.n	20020e28 <dfu_flash_init+0x124>
20020d8c:	f7ff fac0 	bl	20020310 <board_pinmux_mpi1_puya_base>
20020d90:	f000 ffb8 	bl	20021d04 <BSP_GetFlash1DIV>
20020d94:	4633      	mov	r3, r6
20020d96:	9000      	str	r0, [sp, #0]
20020d98:	4a7f      	ldr	r2, [pc, #508]	@ (20020f98 <dfu_flash_init+0x294>)
20020d9a:	487e      	ldr	r0, [pc, #504]	@ (20020f94 <dfu_flash_init+0x290>)
20020d9c:	a907      	add	r1, sp, #28
20020d9e:	f003 f8d7 	bl	20023f50 <HAL_FLASH_Init>
20020da2:	683e      	ldr	r6, [r7, #0]
20020da4:	2e01      	cmp	r6, #1
20020da6:	d10d      	bne.n	20020dc4 <dfu_flash_init+0xc0>
20020da8:	6b20      	ldr	r0, [r4, #48]	@ 0x30
20020daa:	4b7c      	ldr	r3, [pc, #496]	@ (20020f9c <dfu_flash_init+0x298>)
20020dac:	1ac3      	subs	r3, r0, r3
20020dae:	4258      	negs	r0, r3
20020db0:	4158      	adcs	r0, r3
20020db2:	f7ff face 	bl	20020352 <board_pinmux_mpi1_puya_ext>
20020db6:	4631      	mov	r1, r6
20020db8:	4876      	ldr	r0, [pc, #472]	@ (20020f94 <dfu_flash_init+0x290>)
20020dba:	f002 fb02 	bl	200233c2 <HAL_FLASH_SET_QUAL_SPI>
20020dbe:	2302      	movs	r3, #2
20020dc0:	f884 3020 	strb.w	r3, [r4, #32]
20020dc4:	4b76      	ldr	r3, [pc, #472]	@ (20020fa0 <dfu_flash_init+0x29c>)
20020dc6:	4a77      	ldr	r2, [pc, #476]	@ (20020fa4 <dfu_flash_init+0x2a0>)
20020dc8:	602b      	str	r3, [r5, #0]
20020dca:	4b77      	ldr	r3, [pc, #476]	@ (20020fa8 <dfu_flash_init+0x2a4>)
20020dcc:	601a      	str	r2, [r3, #0]
20020dce:	4b77      	ldr	r3, [pc, #476]	@ (20020fac <dfu_flash_init+0x2a8>)
20020dd0:	4a77      	ldr	r2, [pc, #476]	@ (20020fb0 <dfu_flash_init+0x2ac>)
20020dd2:	601a      	str	r2, [r3, #0]
20020dd4:	4b77      	ldr	r3, [pc, #476]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020dd6:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
20020dd8:	601a      	str	r2, [r3, #0]
20020dda:	4b77      	ldr	r3, [pc, #476]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020ddc:	601c      	str	r4, [r3, #0]
20020dde:	2405      	movs	r4, #5
20020de0:	f8df 81d8 	ldr.w	r8, [pc, #472]	@ 20020fbc <dfu_flash_init+0x2b8>
20020de4:	4e73      	ldr	r6, [pc, #460]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020de6:	f8df 9208 	ldr.w	r9, [pc, #520]	@ 20020ff0 <dfu_flash_init+0x2ec>
20020dea:	682b      	ldr	r3, [r5, #0]
20020dec:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020df0:	4972      	ldr	r1, [pc, #456]	@ (20020fbc <dfu_flash_init+0x2b8>)
20020df2:	6830      	ldr	r0, [r6, #0]
20020df4:	4798      	blx	r3
20020df6:	f8d8 3000 	ldr.w	r3, [r8]
20020dfa:	454b      	cmp	r3, r9
20020dfc:	f040 80b6 	bne.w	20020f6c <dfu_flash_init+0x268>
20020e00:	683b      	ldr	r3, [r7, #0]
20020e02:	2b04      	cmp	r3, #4
20020e04:	f040 8085 	bne.w	20020f12 <dfu_flash_init+0x20e>
20020e08:	f8d8 30a4 	ldr.w	r3, [r8, #164]	@ 0xa4
20020e0c:	1e5a      	subs	r2, r3, #1
20020e0e:	3203      	adds	r2, #3
20020e10:	d87f      	bhi.n	20020f12 <dfu_flash_init+0x20e>
20020e12:	4a6b      	ldr	r2, [pc, #428]	@ (20020fc0 <dfu_flash_init+0x2bc>)
20020e14:	4969      	ldr	r1, [pc, #420]	@ (20020fbc <dfu_flash_init+0x2b8>)
20020e16:	6013      	str	r3, [r2, #0]
20020e18:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020e1c:	682b      	ldr	r3, [r5, #0]
20020e1e:	6830      	ldr	r0, [r6, #0]
20020e20:	b00c      	add	sp, #48	@ 0x30
20020e22:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020e26:	4718      	bx	r3
20020e28:	f7ff fac2 	bl	200203b0 <board_pinmux_mpi1_gd>
20020e2c:	2302      	movs	r3, #2
20020e2e:	9308      	str	r3, [sp, #32]
20020e30:	e7ae      	b.n	20020d90 <dfu_flash_init+0x8c>
20020e32:	4856      	ldr	r0, [pc, #344]	@ (20020f8c <dfu_flash_init+0x288>)
20020e34:	f004 f8a0 	bl	20024f78 <HAL_RCC_HCPU_EnableDLL2>
20020e38:	4c62      	ldr	r4, [pc, #392]	@ (20020fc4 <dfu_flash_init+0x2c0>)
20020e3a:	2006      	movs	r0, #6
20020e3c:	f000 ff74 	bl	20021d28 <BSP_SetFlash2DIV>
20020e40:	ae07      	add	r6, sp, #28
20020e42:	2102      	movs	r1, #2
20020e44:	2006      	movs	r0, #6
20020e46:	f004 f8cf 	bl	20024fe8 <HAL_RCC_HCPU_ClockSelect>
20020e4a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020e4c:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020e4e:	f854 3b04 	ldr.w	r3, [r4], #4
20020e52:	f8d7 8000 	ldr.w	r8, [r7]
20020e56:	6033      	str	r3, [r6, #0]
20020e58:	ae03      	add	r6, sp, #12
20020e5a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020e5e:	f1b8 0903 	subs.w	r9, r8, #3
20020e62:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020e66:	bf18      	it	ne
20020e68:	f04f 0901 	movne.w	r9, #1
20020e6c:	f7ff fae3 	bl	20020436 <board_pinmux_mpi2>
20020e70:	2302      	movs	r3, #2
20020e72:	f1b8 0f03 	cmp.w	r8, #3
20020e76:	4c47      	ldr	r4, [pc, #284]	@ (20020f94 <dfu_flash_init+0x290>)
20020e78:	9308      	str	r3, [sp, #32]
20020e7a:	d04d      	beq.n	20020f18 <dfu_flash_init+0x214>
20020e7c:	4b52      	ldr	r3, [pc, #328]	@ (20020fc8 <dfu_flash_init+0x2c4>)
20020e7e:	602b      	str	r3, [r5, #0]
20020e80:	9b09      	ldr	r3, [sp, #36]	@ 0x24
20020e82:	f103 43a0 	add.w	r3, r3, #1342177280	@ 0x50000000
20020e86:	9309      	str	r3, [sp, #36]	@ 0x24
20020e88:	2301      	movs	r3, #1
20020e8a:	930b      	str	r3, [sp, #44]	@ 0x2c
20020e8c:	4b4f      	ldr	r3, [pc, #316]	@ (20020fcc <dfu_flash_init+0x2c8>)
20020e8e:	6623      	str	r3, [r4, #96]	@ 0x60
20020e90:	f04f 0a01 	mov.w	sl, #1
20020e94:	2000      	movs	r0, #0
20020e96:	f001 f814 	bl	20021ec2 <HAL_Delay_us>
20020e9a:	f884 a079 	strb.w	sl, [r4, #121]	@ 0x79
20020e9e:	f884 9078 	strb.w	r9, [r4, #120]	@ 0x78
20020ea2:	f000 ff35 	bl	20021d10 <BSP_GetFlash2DIV>
20020ea6:	4633      	mov	r3, r6
20020ea8:	9000      	str	r0, [sp, #0]
20020eaa:	4a49      	ldr	r2, [pc, #292]	@ (20020fd0 <dfu_flash_init+0x2cc>)
20020eac:	4849      	ldr	r0, [pc, #292]	@ (20020fd4 <dfu_flash_init+0x2d0>)
20020eae:	a907      	add	r1, sp, #28
20020eb0:	f003 f84e 	bl	20023f50 <HAL_FLASH_Init>
20020eb4:	4e47      	ldr	r6, [pc, #284]	@ (20020fd4 <dfu_flash_init+0x2d0>)
20020eb6:	bb18      	cbnz	r0, 20020f00 <dfu_flash_init+0x1fc>
20020eb8:	f1b8 0f03 	cmp.w	r8, #3
20020ebc:	d020      	beq.n	20020f00 <dfu_flash_init+0x1fc>
20020ebe:	4630      	mov	r0, r6
20020ec0:	f002 fd62 	bl	20023988 <HAL_NAND_PAGE_SIZE>
20020ec4:	f8df 90f8 	ldr.w	r9, [pc, #248]	@ 20020fc0 <dfu_flash_init+0x2bc>
20020ec8:	f8df 8128 	ldr.w	r8, [pc, #296]	@ 20020ff4 <dfu_flash_init+0x2f0>
20020ecc:	f8c9 0000 	str.w	r0, [r9]
20020ed0:	4630      	mov	r0, r6
20020ed2:	f002 fe59 	bl	20023b88 <HAL_NAND_BLOCK_SIZE>
20020ed6:	4651      	mov	r1, sl
20020ed8:	f8c8 0000 	str.w	r0, [r8]
20020edc:	4630      	mov	r0, r6
20020ede:	f884 a06a 	strb.w	sl, [r4, #106]	@ 0x6a
20020ee2:	f002 fc2e 	bl	20023742 <HAL_NAND_CONF_ECC>
20020ee6:	f8d9 0000 	ldr.w	r0, [r9]
20020eea:	f004 ff7b 	bl	20025de4 <bbm_set_page_size>
20020eee:	f8d8 0000 	ldr.w	r0, [r8]
20020ef2:	f004 ff7d 	bl	20025df0 <bbm_set_blk_size>
20020ef6:	4938      	ldr	r1, [pc, #224]	@ (20020fd8 <dfu_flash_init+0x2d4>)
20020ef8:	f8d4 0080 	ldr.w	r0, [r4, #128]	@ 0x80
20020efc:	f004 fe14 	bl	20025b28 <sif_bbm_init>
20020f00:	4b2c      	ldr	r3, [pc, #176]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020f02:	6fe2      	ldr	r2, [r4, #124]	@ 0x7c
20020f04:	601a      	str	r2, [r3, #0]
20020f06:	4b2c      	ldr	r3, [pc, #176]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020f08:	601e      	str	r6, [r3, #0]
20020f0a:	682b      	ldr	r3, [r5, #0]
20020f0c:	2b00      	cmp	r3, #0
20020f0e:	f47f af66 	bne.w	20020dde <dfu_flash_init+0xda>
20020f12:	b00c      	add	sp, #48	@ 0x30
20020f14:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20020f18:	4b21      	ldr	r3, [pc, #132]	@ (20020fa0 <dfu_flash_init+0x29c>)
20020f1a:	602b      	str	r3, [r5, #0]
20020f1c:	e7b8      	b.n	20020e90 <dfu_flash_init+0x18c>
20020f1e:	481b      	ldr	r0, [pc, #108]	@ (20020f8c <dfu_flash_init+0x288>)
20020f20:	f004 f82a 	bl	20024f78 <HAL_RCC_HCPU_EnableDLL2>
20020f24:	f7ff faae 	bl	20020484 <board_pinmux_sd>
20020f28:	f000 fca4 	bl	20021874 <sdmmc1_sdnand>
20020f2c:	2801      	cmp	r0, #1
20020f2e:	d001      	beq.n	20020f34 <dfu_flash_init+0x230>
20020f30:	f7ff f9be 	bl	200202b0 <boot_error>
20020f34:	4b29      	ldr	r3, [pc, #164]	@ (20020fdc <dfu_flash_init+0x2d8>)
20020f36:	4a2a      	ldr	r2, [pc, #168]	@ (20020fe0 <dfu_flash_init+0x2dc>)
20020f38:	602b      	str	r3, [r5, #0]
20020f3a:	4b1e      	ldr	r3, [pc, #120]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020f3c:	601a      	str	r2, [r3, #0]
20020f3e:	2200      	movs	r2, #0
20020f40:	4b1d      	ldr	r3, [pc, #116]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020f42:	601a      	str	r2, [r3, #0]
20020f44:	e74b      	b.n	20020dde <dfu_flash_init+0xda>
20020f46:	4811      	ldr	r0, [pc, #68]	@ (20020f8c <dfu_flash_init+0x288>)
20020f48:	f004 f816 	bl	20024f78 <HAL_RCC_HCPU_EnableDLL2>
20020f4c:	f7ff fa9a 	bl	20020484 <board_pinmux_sd>
20020f50:	f000 fa80 	bl	20021454 <sdio_emmc_init>
20020f54:	4b23      	ldr	r3, [pc, #140]	@ (20020fe4 <dfu_flash_init+0x2e0>)
20020f56:	6018      	str	r0, [r3, #0]
20020f58:	b110      	cbz	r0, 20020f60 <dfu_flash_init+0x25c>
20020f5a:	b2c0      	uxtb	r0, r0
20020f5c:	f7ff f9a8 	bl	200202b0 <boot_error>
20020f60:	4b21      	ldr	r3, [pc, #132]	@ (20020fe8 <dfu_flash_init+0x2e4>)
20020f62:	e7e8      	b.n	20020f36 <dfu_flash_init+0x232>
20020f64:	2053      	movs	r0, #83	@ 0x53
20020f66:	f7ff f9a3 	bl	200202b0 <boot_error>
20020f6a:	e7ce      	b.n	20020f0a <dfu_flash_init+0x206>
20020f6c:	481f      	ldr	r0, [pc, #124]	@ (20020fec <dfu_flash_init+0x2e8>)
20020f6e:	f000 ffa8 	bl	20021ec2 <HAL_Delay_us>
20020f72:	3c01      	subs	r4, #1
20020f74:	f47f af39 	bne.w	20020dea <dfu_flash_init+0xe6>
20020f78:	2043      	movs	r0, #67	@ 0x43
20020f7a:	b00c      	add	sp, #48	@ 0x30
20020f7c:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020f80:	f7ff b996 	b.w	200202b0 <boot_error>
20020f84:	20049ed0 	.word	0x20049ed0
20020f88:	20046cc0 	.word	0x20046cc0
20020f8c:	112a8800 	.word	0x112a8800
20020f90:	2002a908 	.word	0x2002a908
20020f94:	20046ecc 	.word	0x20046ecc
20020f98:	20046cc4 	.word	0x20046cc4
20020f9c:	00176085 	.word	0x00176085
20020fa0:	20020a25 	.word	0x20020a25
20020fa4:	20020999 	.word	0x20020999
20020fa8:	20046cbc 	.word	0x20046cbc
20020fac:	20046cb8 	.word	0x20046cb8
20020fb0:	2002093d 	.word	0x2002093d
20020fb4:	20046cb0 	.word	0x20046cb0
20020fb8:	20046cb4 	.word	0x20046cb4
20020fbc:	200472c0 	.word	0x200472c0
20020fc0:	20042c04 	.word	0x20042c04
20020fc4:	2002a92c 	.word	0x2002a92c
20020fc8:	20020a39 	.word	0x20020a39
20020fcc:	20045a30 	.word	0x20045a30
20020fd0:	20046d2c 	.word	0x20046d2c
20020fd4:	20046f10 	.word	0x20046f10
20020fd8:	200449b0 	.word	0x200449b0
20020fdc:	20020ab9 	.word	0x20020ab9
20020fe0:	62001000 	.word	0x62001000
20020fe4:	200449ac 	.word	0x200449ac
20020fe8:	20020b21 	.word	0x20020b21
20020fec:	000f4240 	.word	0x000f4240
20020ff0:	53454346 	.word	0x53454346
20020ff4:	20042c00 	.word	0x20042c00

20020ff8 <sifli_hw_efuse_read_bank>:
20020ff8:	2803      	cmp	r0, #3
20020ffa:	b508      	push	{r3, lr}
20020ffc:	d80c      	bhi.n	20021018 <sifli_hw_efuse_read_bank+0x20>
20020ffe:	0200      	lsls	r0, r0, #8
20021000:	2220      	movs	r2, #32
20021002:	4907      	ldr	r1, [pc, #28]	@ (20021020 <sifli_hw_efuse_read_bank+0x28>)
20021004:	f400 407f 	and.w	r0, r0, #65280	@ 0xff00
20021008:	f001 fc34 	bl	20022874 <HAL_EFUSE_Read>
2002100c:	2800      	cmp	r0, #0
2002100e:	bf0c      	ite	eq
20021010:	f06f 0001 	mvneq.w	r0, #1
20021014:	2000      	movne	r0, #0
20021016:	bd08      	pop	{r3, pc}
20021018:	f04f 30ff 	mov.w	r0, #4294967295
2002101c:	e7fb      	b.n	20021016 <sifli_hw_efuse_read_bank+0x1e>
2002101e:	bf00      	nop
20021020:	20047240 	.word	0x20047240

20021024 <sifli_hw_efuse_read>:
20021024:	b513      	push	{r0, r1, r4, lr}
20021026:	3801      	subs	r0, #1
20021028:	460c      	mov	r4, r1
2002102a:	2803      	cmp	r0, #3
2002102c:	d81e      	bhi.n	2002106c <sifli_hw_efuse_read+0x48>
2002102e:	e8df f000 	tbb	[pc, r0]
20021032:	0c02      	.short	0x0c02
20021034:	1009      	.short	0x1009
20021036:	2210      	movs	r2, #16
20021038:	2000      	movs	r0, #0
2002103a:	b002      	add	sp, #8
2002103c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20021040:	f001 bc18 	b.w	20022874 <HAL_EFUSE_Read>
20021044:	2208      	movs	r2, #8
20021046:	2080      	movs	r0, #128	@ 0x80
20021048:	e7f7      	b.n	2002103a <sifli_hw_efuse_read+0x16>
2002104a:	2220      	movs	r2, #32
2002104c:	f44f 7040 	mov.w	r0, #768	@ 0x300
20021050:	e7f3      	b.n	2002103a <sifli_hw_efuse_read+0x16>
20021052:	2204      	movs	r2, #4
20021054:	20c0      	movs	r0, #192	@ 0xc0
20021056:	eb0d 0102 	add.w	r1, sp, r2
2002105a:	f001 fc0b 	bl	20022874 <HAL_EFUSE_Read>
2002105e:	2804      	cmp	r0, #4
20021060:	d104      	bne.n	2002106c <sifli_hw_efuse_read+0x48>
20021062:	2001      	movs	r0, #1
20021064:	9b01      	ldr	r3, [sp, #4]
20021066:	7023      	strb	r3, [r4, #0]
20021068:	b002      	add	sp, #8
2002106a:	bd10      	pop	{r4, pc}
2002106c:	2000      	movs	r0, #0
2002106e:	e7fb      	b.n	20021068 <sifli_hw_efuse_read+0x44>

20021070 <sifli_hw_init_xip_key>:
20021070:	b538      	push	{r3, r4, r5, lr}
20021072:	4605      	mov	r5, r0
20021074:	4c0f      	ldr	r4, [pc, #60]	@ (200210b4 <sifli_hw_init_xip_key+0x44>)
20021076:	2210      	movs	r2, #16
20021078:	68e3      	ldr	r3, [r4, #12]
2002107a:	490f      	ldr	r1, [pc, #60]	@ (200210b8 <sifli_hw_init_xip_key+0x48>)
2002107c:	f043 0301 	orr.w	r3, r3, #1
20021080:	60e3      	str	r3, [r4, #12]
20021082:	2001      	movs	r0, #1
20021084:	f7ff ffce 	bl	20021024 <sifli_hw_efuse_read>
20021088:	2220      	movs	r2, #32
2002108a:	2100      	movs	r1, #0
2002108c:	480b      	ldr	r0, [pc, #44]	@ (200210bc <sifli_hw_init_xip_key+0x4c>)
2002108e:	f009 fbb9 	bl	2002a804 <memset>
20021092:	2302      	movs	r3, #2
20021094:	2120      	movs	r1, #32
20021096:	4a08      	ldr	r2, [pc, #32]	@ (200210b8 <sifli_hw_init_xip_key+0x48>)
20021098:	2000      	movs	r0, #0
2002109a:	f000 ff8b 	bl	20021fb4 <HAL_AES_init>
2002109e:	2320      	movs	r3, #32
200210a0:	4629      	mov	r1, r5
200210a2:	2000      	movs	r0, #0
200210a4:	4a05      	ldr	r2, [pc, #20]	@ (200210bc <sifli_hw_init_xip_key+0x4c>)
200210a6:	f000 ffc9 	bl	2002203c <HAL_AES_run>
200210aa:	68e3      	ldr	r3, [r4, #12]
200210ac:	f023 0301 	bic.w	r3, r3, #1
200210b0:	60e3      	str	r3, [r4, #12]
200210b2:	bd38      	pop	{r3, r4, r5, pc}
200210b4:	5000b000 	.word	0x5000b000
200210b8:	20047270 	.word	0x20047270
200210bc:	20047220 	.word	0x20047220

200210c0 <sifli_hw_dec_key>:
200210c0:	b538      	push	{r3, r4, r5, lr}
200210c2:	4604      	mov	r4, r0
200210c4:	460d      	mov	r5, r1
200210c6:	2210      	movs	r2, #16
200210c8:	4908      	ldr	r1, [pc, #32]	@ (200210ec <sifli_hw_dec_key+0x2c>)
200210ca:	2001      	movs	r0, #1
200210cc:	f7ff ffaa 	bl	20021024 <sifli_hw_efuse_read>
200210d0:	2302      	movs	r3, #2
200210d2:	2120      	movs	r1, #32
200210d4:	4a05      	ldr	r2, [pc, #20]	@ (200210ec <sifli_hw_dec_key+0x2c>)
200210d6:	2000      	movs	r0, #0
200210d8:	f000 ff6c 	bl	20021fb4 <HAL_AES_init>
200210dc:	2320      	movs	r3, #32
200210de:	462a      	mov	r2, r5
200210e0:	4621      	mov	r1, r4
200210e2:	2000      	movs	r0, #0
200210e4:	f000 ffaa 	bl	2002203c <HAL_AES_run>
200210e8:	2000      	movs	r0, #0
200210ea:	bd38      	pop	{r3, r4, r5, pc}
200210ec:	20047270 	.word	0x20047270

200210f0 <dfu_get_counter>:
200210f0:	b538      	push	{r3, r4, r5, lr}
200210f2:	4d0a      	ldr	r5, [pc, #40]	@ (2002111c <dfu_get_counter+0x2c>)
200210f4:	4604      	mov	r4, r0
200210f6:	2208      	movs	r2, #8
200210f8:	4629      	mov	r1, r5
200210fa:	2003      	movs	r0, #3
200210fc:	f7ff ff92 	bl	20021024 <sifli_hw_efuse_read>
20021100:	2300      	movs	r3, #0
20021102:	e9c5 3302 	strd	r3, r3, [r5, #8]
20021106:	230f      	movs	r3, #15
20021108:	0924      	lsrs	r4, r4, #4
2002110a:	b12c      	cbz	r4, 20021118 <dfu_get_counter+0x28>
2002110c:	54ec      	strb	r4, [r5, r3]
2002110e:	3b01      	subs	r3, #1
20021110:	2b0b      	cmp	r3, #11
20021112:	ea4f 2414 	mov.w	r4, r4, lsr #8
20021116:	d1f8      	bne.n	2002110a <dfu_get_counter+0x1a>
20021118:	4800      	ldr	r0, [pc, #0]	@ (2002111c <dfu_get_counter+0x2c>)
2002111a:	bd38      	pop	{r3, r4, r5, pc}
2002111c:	20047260 	.word	0x20047260

20021120 <sifli_hw_dec>:
20021120:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20021124:	4680      	mov	r8, r0
20021126:	4689      	mov	r9, r1
20021128:	4692      	mov	sl, r2
2002112a:	2100      	movs	r1, #0
2002112c:	f44f 7200 	mov.w	r2, #512	@ 0x200
20021130:	4814      	ldr	r0, [pc, #80]	@ (20021184 <sifli_hw_dec+0x64>)
20021132:	461e      	mov	r6, r3
20021134:	9f08      	ldr	r7, [sp, #32]
20021136:	2400      	movs	r4, #0
20021138:	f009 fb64 	bl	2002a804 <memset>
2002113c:	42a6      	cmp	r6, r4
2002113e:	d802      	bhi.n	20021146 <sifli_hw_dec+0x26>
20021140:	4620      	mov	r0, r4
20021142:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20021146:	1b35      	subs	r5, r6, r4
20021148:	f5b5 7f00 	cmp.w	r5, #512	@ 0x200
2002114c:	bf28      	it	cs
2002114e:	f44f 7500 	movcs.w	r5, #512	@ 0x200
20021152:	eb09 0104 	add.w	r1, r9, r4
20021156:	462a      	mov	r2, r5
20021158:	480a      	ldr	r0, [pc, #40]	@ (20021184 <sifli_hw_dec+0x64>)
2002115a:	f009 fb6d 	bl	2002a838 <memcpy>
2002115e:	19e0      	adds	r0, r4, r7
20021160:	f7ff ffc6 	bl	200210f0 <dfu_get_counter>
20021164:	2301      	movs	r3, #1
20021166:	4602      	mov	r2, r0
20021168:	2120      	movs	r1, #32
2002116a:	4640      	mov	r0, r8
2002116c:	f000 ff22 	bl	20021fb4 <HAL_AES_init>
20021170:	eb0a 0204 	add.w	r2, sl, r4
20021174:	462b      	mov	r3, r5
20021176:	2000      	movs	r0, #0
20021178:	4902      	ldr	r1, [pc, #8]	@ (20021184 <sifli_hw_dec+0x64>)
2002117a:	f000 ff5f 	bl	2002203c <HAL_AES_run>
2002117e:	442c      	add	r4, r5
20021180:	e7dc      	b.n	2002113c <sifli_hw_dec+0x1c>
20021182:	bf00      	nop
20021184:	20047020 	.word	0x20047020

20021188 <boot_ram>:
20021188:	4b05      	ldr	r3, [pc, #20]	@ (200211a0 <boot_ram+0x18>)
2002118a:	b082      	sub	sp, #8
2002118c:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
2002118e:	9301      	str	r3, [sp, #4]
20021190:	9b01      	ldr	r3, [sp, #4]
20021192:	b113      	cbz	r3, 2002119a <boot_ram+0x12>
20021194:	9b01      	ldr	r3, [sp, #4]
20021196:	b002      	add	sp, #8
20021198:	4718      	bx	r3
2002119a:	b002      	add	sp, #8
2002119c:	4770      	bx	lr
2002119e:	bf00      	nop
200211a0:	500c0000 	.word	0x500c0000

200211a4 <is_addr_in_nor>:
200211a4:	4b09      	ldr	r3, [pc, #36]	@ (200211cc <is_addr_in_nor+0x28>)
200211a6:	4602      	mov	r2, r0
200211a8:	681b      	ldr	r3, [r3, #0]
200211aa:	b163      	cbz	r3, 200211c6 <is_addr_in_nor+0x22>
200211ac:	f893 0023 	ldrb.w	r0, [r3, #35]	@ 0x23
200211b0:	b948      	cbnz	r0, 200211c6 <is_addr_in_nor+0x22>
200211b2:	6919      	ldr	r1, [r3, #16]
200211b4:	4291      	cmp	r1, r2
200211b6:	d807      	bhi.n	200211c8 <is_addr_in_nor+0x24>
200211b8:	695b      	ldr	r3, [r3, #20]
200211ba:	4419      	add	r1, r3
200211bc:	4291      	cmp	r1, r2
200211be:	bf94      	ite	ls
200211c0:	2000      	movls	r0, #0
200211c2:	2001      	movhi	r0, #1
200211c4:	4770      	bx	lr
200211c6:	2000      	movs	r0, #0
200211c8:	4770      	bx	lr
200211ca:	bf00      	nop
200211cc:	20046cb4 	.word	0x20046cb4

200211d0 <dfu_boot_img_in_flash>:
200211d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200211d4:	4f5e      	ldr	r7, [pc, #376]	@ (20021350 <dfu_boot_img_in_flash+0x180>)
200211d6:	1e84      	subs	r4, r0, #2
200211d8:	eb07 1300 	add.w	r3, r7, r0, lsl #4
200211dc:	eb07 2040 	add.w	r0, r7, r0, lsl #9
200211e0:	f8d3 8004 	ldr.w	r8, [r3, #4]
200211e4:	68dd      	ldr	r5, [r3, #12]
200211e6:	f8b0 3c06 	ldrh.w	r3, [r0, #3078]	@ 0xc06
200211ea:	b085      	sub	sp, #20
200211ec:	07db      	lsls	r3, r3, #31
200211ee:	f140 8095 	bpl.w	2002131c <dfu_boot_img_in_flash+0x14c>
200211f2:	f44f 7193 	mov.w	r1, #294	@ 0x126
200211f6:	f507 7082 	add.w	r0, r7, #260	@ 0x104
200211fa:	f000 fd1c 	bl	20021c36 <sifli_sigkey_pub_verify>
200211fe:	b110      	cbz	r0, 20021206 <dfu_boot_img_in_flash+0x36>
20021200:	2001      	movs	r0, #1
20021202:	f000 fd65 	bl	20021cd0 <sifli_secboot_exception>
20021206:	2c07      	cmp	r4, #7
20021208:	f300 8093 	bgt.w	20021332 <dfu_boot_img_in_flash+0x162>
2002120c:	2003      	movs	r0, #3
2002120e:	f7ff fef3 	bl	20020ff8 <sifli_hw_efuse_read_bank>
20021212:	4262      	negs	r2, r4
20021214:	f002 0203 	and.w	r2, r2, #3
20021218:	f004 0303 	and.w	r3, r4, #3
2002121c:	bf58      	it	pl
2002121e:	4253      	negpl	r3, r2
20021220:	2b02      	cmp	r3, #2
20021222:	f200 8086 	bhi.w	20021332 <dfu_boot_img_in_flash+0x162>
20021226:	4628      	mov	r0, r5
20021228:	f7ff ffbc 	bl	200211a4 <is_addr_in_nor>
2002122c:	f241 0308 	movw	r3, #4104	@ 0x1008
20021230:	4682      	mov	sl, r0
20021232:	ea4f 2944 	mov.w	r9, r4, lsl #9
20021236:	f8df c12c 	ldr.w	ip, [pc, #300]	@ 20021364 <dfu_boot_img_in_flash+0x194>
2002123a:	eb07 0609 	add.w	r6, r7, r9
2002123e:	441e      	add	r6, r3
20021240:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20021242:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
20021246:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
2002124a:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
2002124e:	f1ba 0f00 	cmp.w	sl, #0
20021252:	d04b      	beq.n	200212ec <dfu_boot_img_in_flash+0x11c>
20021254:	f104 0608 	add.w	r6, r4, #8
20021258:	f1ac 0010 	sub.w	r0, ip, #16
2002125c:	0276      	lsls	r6, r6, #9
2002125e:	f7ff ff07 	bl	20021070 <sifli_hw_init_xip_key>
20021262:	59ba      	ldr	r2, [r7, r6]
20021264:	f8df a0f0 	ldr.w	sl, [pc, #240]	@ 20021358 <dfu_boot_img_in_flash+0x188>
20021268:	442a      	add	r2, r5
2002126a:	2000      	movs	r0, #0
2002126c:	f8da b000 	ldr.w	fp, [sl]
20021270:	9203      	str	r2, [sp, #12]
20021272:	f7ff ff3d 	bl	200210f0 <dfu_get_counter>
20021276:	4629      	mov	r1, r5
20021278:	4603      	mov	r3, r0
2002127a:	9a03      	ldr	r2, [sp, #12]
2002127c:	4658      	mov	r0, fp
2002127e:	f002 fa0e 	bl	2002369e <HAL_FLASH_NONCE_CFG>
20021282:	4629      	mov	r1, r5
20021284:	f8da 0000 	ldr.w	r0, [sl]
20021288:	59ba      	ldr	r2, [r7, r6]
2002128a:	eba8 0305 	sub.w	r3, r8, r5
2002128e:	f002 f9f5 	bl	2002367c <HAL_FLASH_ALIAS_CFG>
20021292:	2101      	movs	r1, #1
20021294:	f8da 0000 	ldr.w	r0, [sl]
20021298:	f002 fa19 	bl	200236ce <HAL_FLASH_AES_CFG>
2002129c:	f104 0308 	add.w	r3, r4, #8
200212a0:	f509 5081 	add.w	r0, r9, #4128	@ 0x1020
200212a4:	025b      	lsls	r3, r3, #9
200212a6:	3008      	adds	r0, #8
200212a8:	462a      	mov	r2, r5
200212aa:	58fb      	ldr	r3, [r7, r3]
200212ac:	4929      	ldr	r1, [pc, #164]	@ (20021354 <dfu_boot_img_in_flash+0x184>)
200212ae:	4438      	add	r0, r7
200212b0:	f000 fcd9 	bl	20021c66 <sifli_img_sig_hash_verify>
200212b4:	b110      	cbz	r0, 200212bc <dfu_boot_img_in_flash+0xec>
200212b6:	2002      	movs	r0, #2
200212b8:	f000 fd0a 	bl	20021cd0 <sifli_secboot_exception>
200212bc:	f8d5 d000 	ldr.w	sp, [r5]
200212c0:	f8d5 f004 	ldr.w	pc, [r5, #4]
200212c4:	4628      	mov	r0, r5
200212c6:	f7ff ff6d 	bl	200211a4 <is_addr_in_nor>
200212ca:	2800      	cmp	r0, #0
200212cc:	d034      	beq.n	20021338 <dfu_boot_img_in_flash+0x168>
200212ce:	4822      	ldr	r0, [pc, #136]	@ (20021358 <dfu_boot_img_in_flash+0x188>)
200212d0:	3408      	adds	r4, #8
200212d2:	0264      	lsls	r4, r4, #9
200212d4:	4629      	mov	r1, r5
200212d6:	593a      	ldr	r2, [r7, r4]
200212d8:	6800      	ldr	r0, [r0, #0]
200212da:	eba8 0305 	sub.w	r3, r8, r5
200212de:	f002 f9cd 	bl	2002367c <HAL_FLASH_ALIAS_CFG>
200212e2:	f8d5 d000 	ldr.w	sp, [r5]
200212e6:	f8d5 f004 	ldr.w	pc, [r5, #4]
200212ea:	e022      	b.n	20021332 <dfu_boot_img_in_flash+0x162>
200212ec:	f1ac 0010 	sub.w	r0, ip, #16
200212f0:	2220      	movs	r2, #32
200212f2:	491a      	ldr	r1, [pc, #104]	@ (2002135c <dfu_boot_img_in_flash+0x18c>)
200212f4:	f7ff fee4 	bl	200210c0 <sifli_hw_dec_key>
200212f8:	f104 0608 	add.w	r6, r4, #8
200212fc:	4b18      	ldr	r3, [pc, #96]	@ (20021360 <dfu_boot_img_in_flash+0x190>)
200212fe:	0276      	lsls	r6, r6, #9
20021300:	4629      	mov	r1, r5
20021302:	59ba      	ldr	r2, [r7, r6]
20021304:	4640      	mov	r0, r8
20021306:	681b      	ldr	r3, [r3, #0]
20021308:	4798      	blx	r3
2002130a:	f8cd a000 	str.w	sl, [sp]
2002130e:	462a      	mov	r2, r5
20021310:	4629      	mov	r1, r5
20021312:	59bb      	ldr	r3, [r7, r6]
20021314:	4811      	ldr	r0, [pc, #68]	@ (2002135c <dfu_boot_img_in_flash+0x18c>)
20021316:	f7ff ff03 	bl	20021120 <sifli_hw_dec>
2002131a:	e7bf      	b.n	2002129c <dfu_boot_img_in_flash+0xcc>
2002131c:	2c07      	cmp	r4, #7
2002131e:	dc08      	bgt.n	20021332 <dfu_boot_img_in_flash+0x162>
20021320:	4262      	negs	r2, r4
20021322:	f002 0203 	and.w	r2, r2, #3
20021326:	f004 0303 	and.w	r3, r4, #3
2002132a:	bf58      	it	pl
2002132c:	4253      	negpl	r3, r2
2002132e:	2b02      	cmp	r3, #2
20021330:	d9c8      	bls.n	200212c4 <dfu_boot_img_in_flash+0xf4>
20021332:	b005      	add	sp, #20
20021334:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20021338:	45a8      	cmp	r8, r5
2002133a:	d0d2      	beq.n	200212e2 <dfu_boot_img_in_flash+0x112>
2002133c:	4b08      	ldr	r3, [pc, #32]	@ (20021360 <dfu_boot_img_in_flash+0x190>)
2002133e:	3408      	adds	r4, #8
20021340:	0264      	lsls	r4, r4, #9
20021342:	4629      	mov	r1, r5
20021344:	4640      	mov	r0, r8
20021346:	681b      	ldr	r3, [r3, #0]
20021348:	593a      	ldr	r2, [r7, r4]
2002134a:	4798      	blx	r3
2002134c:	e7c9      	b.n	200212e2 <dfu_boot_img_in_flash+0x112>
2002134e:	bf00      	nop
20021350:	200472c0 	.word	0x200472c0
20021354:	200473c4 	.word	0x200473c4
20021358:	20046cb4 	.word	0x20046cb4
2002135c:	20047280 	.word	0x20047280
20021360:	20046cc0 	.word	0x20046cc0
20021364:	200472a0 	.word	0x200472a0

20021368 <boot_images_help>:
20021368:	b510      	push	{r4, lr}
2002136a:	4b0d      	ldr	r3, [pc, #52]	@ (200213a0 <boot_images_help+0x38>)
2002136c:	4a0d      	ldr	r2, [pc, #52]	@ (200213a4 <boot_images_help+0x3c>)
2002136e:	6819      	ldr	r1, [r3, #0]
20021370:	4291      	cmp	r1, r2
20021372:	d113      	bne.n	2002139c <boot_images_help+0x34>
20021374:	f503 5300 	add.w	r3, r3, #8192	@ 0x2000
20021378:	f8d3 3c08 	ldr.w	r3, [r3, #3080]	@ 0xc08
2002137c:	1c5a      	adds	r2, r3, #1
2002137e:	d00d      	beq.n	2002139c <boot_images_help+0x34>
20021380:	4a09      	ldr	r2, [pc, #36]	@ (200213a8 <boot_images_help+0x40>)
20021382:	6814      	ldr	r4, [r2, #0]
20021384:	1b1c      	subs	r4, r3, r4
20021386:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
2002138a:	0a64      	lsrs	r4, r4, #9
2002138c:	3402      	adds	r4, #2
2002138e:	f7ff faa7 	bl	200208e0 <board_init_psram>
20021392:	4620      	mov	r0, r4
20021394:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20021398:	f7ff bf1a 	b.w	200211d0 <dfu_boot_img_in_flash>
2002139c:	bd10      	pop	{r4, pc}
2002139e:	bf00      	nop
200213a0:	200472c0 	.word	0x200472c0
200213a4:	53454346 	.word	0x53454346
200213a8:	20046cb0 	.word	0x20046cb0

200213ac <hw_preinit0>:
200213ac:	b508      	push	{r3, lr}
200213ae:	4b0e      	ldr	r3, [pc, #56]	@ (200213e8 <hw_preinit0+0x3c>)
200213b0:	685b      	ldr	r3, [r3, #4]
200213b2:	b2db      	uxtb	r3, r3
200213b4:	2b06      	cmp	r3, #6
200213b6:	d80a      	bhi.n	200213ce <hw_preinit0+0x22>
200213b8:	4a0c      	ldr	r2, [pc, #48]	@ (200213ec <hw_preinit0+0x40>)
200213ba:	6a93      	ldr	r3, [r2, #40]	@ 0x28
200213bc:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
200213c0:	f043 0306 	orr.w	r3, r3, #6
200213c4:	6293      	str	r3, [r2, #40]	@ 0x28
200213c6:	6853      	ldr	r3, [r2, #4]
200213c8:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
200213cc:	6053      	str	r3, [r2, #4]
200213ce:	2000      	movs	r0, #0
200213d0:	f000 fd77 	bl	20021ec2 <HAL_Delay_us>
200213d4:	4b06      	ldr	r3, [pc, #24]	@ (200213f0 <hw_preinit0+0x44>)
200213d6:	4a07      	ldr	r2, [pc, #28]	@ (200213f4 <hw_preinit0+0x48>)
200213d8:	2000      	movs	r0, #0
200213da:	605a      	str	r2, [r3, #4]
200213dc:	f7ff fe0c 	bl	20020ff8 <sifli_hw_efuse_read_bank>
200213e0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
200213e4:	f7ff bed0 	b.w	20021188 <boot_ram>
200213e8:	5000b000 	.word	0x5000b000
200213ec:	500ca000 	.word	0x500ca000
200213f0:	5000c000 	.word	0x5000c000
200213f4:	0002d08f 	.word	0x0002d08f

200213f8 <entry>:
200213f8:	4c14      	ldr	r4, [pc, #80]	@ (2002144c <entry+0x54>)
200213fa:	b508      	push	{r3, lr}
200213fc:	2000      	movs	r0, #0
200213fe:	f000 fd60 	bl	20021ec2 <HAL_Delay_us>
20021402:	6863      	ldr	r3, [r4, #4]
20021404:	4d12      	ldr	r5, [pc, #72]	@ (20021450 <entry+0x58>)
20021406:	b2db      	uxtb	r3, r3
20021408:	2b06      	cmp	r3, #6
2002140a:	d90f      	bls.n	2002142c <entry+0x34>
2002140c:	f7ff f888 	bl	20020520 <board_flash_power_on>
20021410:	f7fe ff76 	bl	20020300 <HAL_MspInit>
20021414:	f7ff f866 	bl	200204e4 <board_boot_from>
20021418:	6028      	str	r0, [r5, #0]
2002141a:	68e3      	ldr	r3, [r4, #12]
2002141c:	f023 0301 	bic.w	r3, r3, #1
20021420:	60e3      	str	r3, [r4, #12]
20021422:	f7ff fc6f 	bl	20020d04 <dfu_flash_init>
20021426:	f7ff ff9f 	bl	20021368 <boot_images_help>
2002142a:	e7fe      	b.n	2002142a <entry+0x32>
2002142c:	f7ff f85a 	bl	200204e4 <board_boot_from>
20021430:	6028      	str	r0, [r5, #0]
20021432:	f7ff f875 	bl	20020520 <board_flash_power_on>
20021436:	f7fe ff63 	bl	20020300 <HAL_MspInit>
2002143a:	68e3      	ldr	r3, [r4, #12]
2002143c:	f023 0301 	bic.w	r3, r3, #1
20021440:	60e3      	str	r3, [r4, #12]
20021442:	f7ff fc5f 	bl	20020d04 <dfu_flash_init>
20021446:	f7ff ff8f 	bl	20021368 <boot_images_help>
2002144a:	e7ee      	b.n	2002142a <entry+0x32>
2002144c:	5000b000 	.word	0x5000b000
20021450:	20049ed0 	.word	0x20049ed0

20021454 <sdio_emmc_init>:
20021454:	b570      	push	{r4, r5, r6, lr}
20021456:	b08c      	sub	sp, #48	@ 0x30
20021458:	f000 f968 	bl	2002172c <sd1_init>
2002145c:	4c8d      	ldr	r4, [pc, #564]	@ (20021694 <sdio_emmc_init+0x240>)
2002145e:	4b8e      	ldr	r3, [pc, #568]	@ (20021698 <sdio_emmc_init+0x244>)
20021460:	2500      	movs	r5, #0
20021462:	6323      	str	r3, [r4, #48]	@ 0x30
20021464:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021466:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
2002146a:	f043 0302 	orr.w	r3, r3, #2
2002146e:	6323      	str	r3, [r4, #48]	@ 0x30
20021470:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
20021474:	62e5      	str	r5, [r4, #44]	@ 0x2c
20021476:	6223      	str	r3, [r4, #32]
20021478:	f000 fd23 	bl	20021ec2 <HAL_Delay_us>
2002147c:	4629      	mov	r1, r5
2002147e:	4628      	mov	r0, r5
20021480:	f000 f986 	bl	20021790 <sd1_send_cmd>
20021484:	2301      	movs	r3, #1
20021486:	65e3      	str	r3, [r4, #92]	@ 0x5c
20021488:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
2002148a:	079d      	lsls	r5, r3, #30
2002148c:	d5fc      	bpl.n	20021488 <sdio_emmc_init+0x34>
2002148e:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20021490:	f043 0320 	orr.w	r3, r3, #32
20021494:	63e3      	str	r3, [r4, #60]	@ 0x3c
20021496:	4981      	ldr	r1, [pc, #516]	@ (2002169c <sdio_emmc_init+0x248>)
20021498:	2001      	movs	r0, #1
2002149a:	ad07      	add	r5, sp, #28
2002149c:	f000 f978 	bl	20021790 <sd1_send_cmd>
200214a0:	ab06      	add	r3, sp, #24
200214a2:	aa05      	add	r2, sp, #20
200214a4:	a904      	add	r1, sp, #16
200214a6:	f10d 000f 	add.w	r0, sp, #15
200214aa:	9500      	str	r5, [sp, #0]
200214ac:	f000 f9ae 	bl	2002180c <sd1_get_rsp>
200214b0:	2014      	movs	r0, #20
200214b2:	f000 fd06 	bl	20021ec2 <HAL_Delay_us>
200214b6:	9b04      	ldr	r3, [sp, #16]
200214b8:	2b00      	cmp	r3, #0
200214ba:	daec      	bge.n	20021496 <sdio_emmc_init+0x42>
200214bc:	2014      	movs	r0, #20
200214be:	f000 fd00 	bl	20021ec2 <HAL_Delay_us>
200214c2:	2100      	movs	r1, #0
200214c4:	2002      	movs	r0, #2
200214c6:	f000 f963 	bl	20021790 <sd1_send_cmd>
200214ca:	2801      	cmp	r0, #1
200214cc:	f000 8081 	beq.w	200215d2 <sdio_emmc_init+0x17e>
200214d0:	2802      	cmp	r0, #2
200214d2:	d07e      	beq.n	200215d2 <sdio_emmc_init+0x17e>
200214d4:	ab08      	add	r3, sp, #32
200214d6:	aa0a      	add	r2, sp, #40	@ 0x28
200214d8:	a90b      	add	r1, sp, #44	@ 0x2c
200214da:	9300      	str	r3, [sp, #0]
200214dc:	f10d 000f 	add.w	r0, sp, #15
200214e0:	ab09      	add	r3, sp, #36	@ 0x24
200214e2:	f000 f993 	bl	2002180c <sd1_get_rsp>
200214e6:	2014      	movs	r0, #20
200214e8:	f000 fceb 	bl	20021ec2 <HAL_Delay_us>
200214ec:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
200214f0:	2003      	movs	r0, #3
200214f2:	f000 f94d 	bl	20021790 <sd1_send_cmd>
200214f6:	2801      	cmp	r0, #1
200214f8:	f000 80ab 	beq.w	20021652 <sdio_emmc_init+0x1fe>
200214fc:	2802      	cmp	r0, #2
200214fe:	f000 80aa 	beq.w	20021656 <sdio_emmc_init+0x202>
20021502:	ab06      	add	r3, sp, #24
20021504:	9500      	str	r5, [sp, #0]
20021506:	aa05      	add	r2, sp, #20
20021508:	a904      	add	r1, sp, #16
2002150a:	f10d 000f 	add.w	r0, sp, #15
2002150e:	f000 f97d 	bl	2002180c <sd1_get_rsp>
20021512:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021516:	2b03      	cmp	r3, #3
20021518:	f040 809f 	bne.w	2002165a <sdio_emmc_init+0x206>
2002151c:	4c5d      	ldr	r4, [pc, #372]	@ (20021694 <sdio_emmc_init+0x240>)
2002151e:	2014      	movs	r0, #20
20021520:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20021522:	f023 0320 	bic.w	r3, r3, #32
20021526:	63e3      	str	r3, [r4, #60]	@ 0x3c
20021528:	f000 fccb 	bl	20021ec2 <HAL_Delay_us>
2002152c:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
20021530:	2009      	movs	r0, #9
20021532:	f000 f92d 	bl	20021790 <sd1_send_cmd>
20021536:	2801      	cmp	r0, #1
20021538:	f000 8091 	beq.w	2002165e <sdio_emmc_init+0x20a>
2002153c:	2802      	cmp	r0, #2
2002153e:	f000 8090 	beq.w	20021662 <sdio_emmc_init+0x20e>
20021542:	aa05      	add	r2, sp, #20
20021544:	a904      	add	r1, sp, #16
20021546:	ab06      	add	r3, sp, #24
20021548:	f10d 000f 	add.w	r0, sp, #15
2002154c:	9500      	str	r5, [sp, #0]
2002154e:	f000 f95d 	bl	2002180c <sd1_get_rsp>
20021552:	f44f 53b8 	mov.w	r3, #5888	@ 0x1700
20021556:	6323      	str	r3, [r4, #48]	@ 0x30
20021558:	6b23      	ldr	r3, [r4, #48]	@ 0x30
2002155a:	2014      	movs	r0, #20
2002155c:	f043 0302 	orr.w	r3, r3, #2
20021560:	6323      	str	r3, [r4, #48]	@ 0x30
20021562:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
20021566:	6223      	str	r3, [r4, #32]
20021568:	2302      	movs	r3, #2
2002156a:	63e3      	str	r3, [r4, #60]	@ 0x3c
2002156c:	f000 fca9 	bl	20021ec2 <HAL_Delay_us>
20021570:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
20021574:	2007      	movs	r0, #7
20021576:	f000 f90b 	bl	20021790 <sd1_send_cmd>
2002157a:	2801      	cmp	r0, #1
2002157c:	d073      	beq.n	20021666 <sdio_emmc_init+0x212>
2002157e:	2802      	cmp	r0, #2
20021580:	d073      	beq.n	2002166a <sdio_emmc_init+0x216>
20021582:	ab06      	add	r3, sp, #24
20021584:	9500      	str	r5, [sp, #0]
20021586:	aa05      	add	r2, sp, #20
20021588:	a904      	add	r1, sp, #16
2002158a:	f10d 000f 	add.w	r0, sp, #15
2002158e:	f000 f93d 	bl	2002180c <sd1_get_rsp>
20021592:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021596:	2b07      	cmp	r3, #7
20021598:	d169      	bne.n	2002166e <sdio_emmc_init+0x21a>
2002159a:	f04f 33ff 	mov.w	r3, #4294967295
2002159e:	2101      	movs	r1, #1
200215a0:	2000      	movs	r0, #0
200215a2:	6023      	str	r3, [r4, #0]
200215a4:	f000 f942 	bl	2002182c <sd1_read>
200215a8:	2100      	movs	r1, #0
200215aa:	2008      	movs	r0, #8
200215ac:	f000 f8f0 	bl	20021790 <sd1_send_cmd>
200215b0:	2801      	cmp	r0, #1
200215b2:	d05e      	beq.n	20021672 <sdio_emmc_init+0x21e>
200215b4:	2802      	cmp	r0, #2
200215b6:	d05e      	beq.n	20021676 <sdio_emmc_init+0x222>
200215b8:	ab06      	add	r3, sp, #24
200215ba:	9500      	str	r5, [sp, #0]
200215bc:	aa05      	add	r2, sp, #20
200215be:	a904      	add	r1, sp, #16
200215c0:	f10d 000f 	add.w	r0, sp, #15
200215c4:	f000 f922 	bl	2002180c <sd1_get_rsp>
200215c8:	f89d 300f 	ldrb.w	r3, [sp, #15]
200215cc:	2b08      	cmp	r3, #8
200215ce:	d002      	beq.n	200215d6 <sdio_emmc_init+0x182>
200215d0:	200d      	movs	r0, #13
200215d2:	b00c      	add	sp, #48	@ 0x30
200215d4:	bd70      	pop	{r4, r5, r6, pc}
200215d6:	2320      	movs	r3, #32
200215d8:	62e3      	str	r3, [r4, #44]	@ 0x2c
200215da:	f000 f937 	bl	2002184c <sd1_wait_read>
200215de:	6823      	ldr	r3, [r4, #0]
200215e0:	0618      	lsls	r0, r3, #24
200215e2:	d4f5      	bmi.n	200215d0 <sdio_emmc_init+0x17c>
200215e4:	6823      	ldr	r3, [r4, #0]
200215e6:	0659      	lsls	r1, r3, #25
200215e8:	d447      	bmi.n	2002167a <sdio_emmc_init+0x226>
200215ea:	2680      	movs	r6, #128	@ 0x80
200215ec:	3e01      	subs	r6, #1
200215ee:	f8d4 3200 	ldr.w	r3, [r4, #512]	@ 0x200
200215f2:	d1fb      	bne.n	200215ec <sdio_emmc_init+0x198>
200215f4:	2101      	movs	r1, #1
200215f6:	4630      	mov	r0, r6
200215f8:	f000 f918 	bl	2002182c <sd1_read>
200215fc:	2014      	movs	r0, #20
200215fe:	f000 fc60 	bl	20021ec2 <HAL_Delay_us>
20021602:	f04f 33ff 	mov.w	r3, #4294967295
20021606:	4631      	mov	r1, r6
20021608:	2011      	movs	r0, #17
2002160a:	6023      	str	r3, [r4, #0]
2002160c:	f000 f8c0 	bl	20021790 <sd1_send_cmd>
20021610:	2801      	cmp	r0, #1
20021612:	d034      	beq.n	2002167e <sdio_emmc_init+0x22a>
20021614:	2802      	cmp	r0, #2
20021616:	d034      	beq.n	20021682 <sdio_emmc_init+0x22e>
20021618:	ab06      	add	r3, sp, #24
2002161a:	9500      	str	r5, [sp, #0]
2002161c:	aa05      	add	r2, sp, #20
2002161e:	a904      	add	r1, sp, #16
20021620:	f10d 000f 	add.w	r0, sp, #15
20021624:	f000 f8f2 	bl	2002180c <sd1_get_rsp>
20021628:	f89d 300f 	ldrb.w	r3, [sp, #15]
2002162c:	2b11      	cmp	r3, #17
2002162e:	d12a      	bne.n	20021686 <sdio_emmc_init+0x232>
20021630:	2320      	movs	r3, #32
20021632:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021634:	f000 f90a 	bl	2002184c <sd1_wait_read>
20021638:	6823      	ldr	r3, [r4, #0]
2002163a:	061a      	lsls	r2, r3, #24
2002163c:	d425      	bmi.n	2002168a <sdio_emmc_init+0x236>
2002163e:	6823      	ldr	r3, [r4, #0]
20021640:	065b      	lsls	r3, r3, #25
20021642:	d424      	bmi.n	2002168e <sdio_emmc_init+0x23a>
20021644:	2080      	movs	r0, #128	@ 0x80
20021646:	4b13      	ldr	r3, [pc, #76]	@ (20021694 <sdio_emmc_init+0x240>)
20021648:	3801      	subs	r0, #1
2002164a:	f8d3 2200 	ldr.w	r2, [r3, #512]	@ 0x200
2002164e:	d1fb      	bne.n	20021648 <sdio_emmc_init+0x1f4>
20021650:	e7bf      	b.n	200215d2 <sdio_emmc_init+0x17e>
20021652:	2003      	movs	r0, #3
20021654:	e7bd      	b.n	200215d2 <sdio_emmc_init+0x17e>
20021656:	2004      	movs	r0, #4
20021658:	e7bb      	b.n	200215d2 <sdio_emmc_init+0x17e>
2002165a:	2005      	movs	r0, #5
2002165c:	e7b9      	b.n	200215d2 <sdio_emmc_init+0x17e>
2002165e:	2006      	movs	r0, #6
20021660:	e7b7      	b.n	200215d2 <sdio_emmc_init+0x17e>
20021662:	2007      	movs	r0, #7
20021664:	e7b5      	b.n	200215d2 <sdio_emmc_init+0x17e>
20021666:	2008      	movs	r0, #8
20021668:	e7b3      	b.n	200215d2 <sdio_emmc_init+0x17e>
2002166a:	2009      	movs	r0, #9
2002166c:	e7b1      	b.n	200215d2 <sdio_emmc_init+0x17e>
2002166e:	200a      	movs	r0, #10
20021670:	e7af      	b.n	200215d2 <sdio_emmc_init+0x17e>
20021672:	200b      	movs	r0, #11
20021674:	e7ad      	b.n	200215d2 <sdio_emmc_init+0x17e>
20021676:	200c      	movs	r0, #12
20021678:	e7ab      	b.n	200215d2 <sdio_emmc_init+0x17e>
2002167a:	200e      	movs	r0, #14
2002167c:	e7a9      	b.n	200215d2 <sdio_emmc_init+0x17e>
2002167e:	2011      	movs	r0, #17
20021680:	e7a7      	b.n	200215d2 <sdio_emmc_init+0x17e>
20021682:	2012      	movs	r0, #18
20021684:	e7a5      	b.n	200215d2 <sdio_emmc_init+0x17e>
20021686:	2013      	movs	r0, #19
20021688:	e7a3      	b.n	200215d2 <sdio_emmc_init+0x17e>
2002168a:	2014      	movs	r0, #20
2002168c:	e7a1      	b.n	200215d2 <sdio_emmc_init+0x17e>
2002168e:	2015      	movs	r0, #21
20021690:	e79f      	b.n	200215d2 <sdio_emmc_init+0x17e>
20021692:	bf00      	nop
20021694:	50045000 	.word	0x50045000
20021698:	00016700 	.word	0x00016700
2002169c:	40000080 	.word	0x40000080

200216a0 <emmc_read_data>:
200216a0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200216a4:	4607      	mov	r7, r0
200216a6:	f04f 38ff 	mov.w	r8, #4294967295
200216aa:	b088      	sub	sp, #32
200216ac:	2000      	movs	r0, #0
200216ae:	460d      	mov	r5, r1
200216b0:	4e1d      	ldr	r6, [pc, #116]	@ (20021728 <emmc_read_data+0x88>)
200216b2:	2101      	movs	r1, #1
200216b4:	4614      	mov	r4, r2
200216b6:	f000 f8b9 	bl	2002182c <sd1_read>
200216ba:	2014      	movs	r0, #20
200216bc:	f000 fc01 	bl	20021ec2 <HAL_Delay_us>
200216c0:	2011      	movs	r0, #17
200216c2:	f8c6 8000 	str.w	r8, [r6]
200216c6:	0a79      	lsrs	r1, r7, #9
200216c8:	f000 f862 	bl	20021790 <sd1_send_cmd>
200216cc:	4440      	add	r0, r8
200216ce:	b2c0      	uxtb	r0, r0
200216d0:	2801      	cmp	r0, #1
200216d2:	d803      	bhi.n	200216dc <emmc_read_data+0x3c>
200216d4:	2000      	movs	r0, #0
200216d6:	b008      	add	sp, #32
200216d8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200216dc:	ab07      	add	r3, sp, #28
200216de:	9300      	str	r3, [sp, #0]
200216e0:	aa05      	add	r2, sp, #20
200216e2:	ab06      	add	r3, sp, #24
200216e4:	a904      	add	r1, sp, #16
200216e6:	f10d 000f 	add.w	r0, sp, #15
200216ea:	f000 f88f 	bl	2002180c <sd1_get_rsp>
200216ee:	f89d 300f 	ldrb.w	r3, [sp, #15]
200216f2:	2b11      	cmp	r3, #17
200216f4:	d1ee      	bne.n	200216d4 <emmc_read_data+0x34>
200216f6:	2320      	movs	r3, #32
200216f8:	f8c6 8000 	str.w	r8, [r6]
200216fc:	62f3      	str	r3, [r6, #44]	@ 0x2c
200216fe:	f000 f8a5 	bl	2002184c <sd1_wait_read>
20021702:	6833      	ldr	r3, [r6, #0]
20021704:	061a      	lsls	r2, r3, #24
20021706:	d4e5      	bmi.n	200216d4 <emmc_read_data+0x34>
20021708:	6833      	ldr	r3, [r6, #0]
2002170a:	065b      	lsls	r3, r3, #25
2002170c:	d4e2      	bmi.n	200216d4 <emmc_read_data+0x34>
2002170e:	f024 0303 	bic.w	r3, r4, #3
20021712:	442b      	add	r3, r5
20021714:	429d      	cmp	r5, r3
20021716:	d101      	bne.n	2002171c <emmc_read_data+0x7c>
20021718:	4620      	mov	r0, r4
2002171a:	e7dc      	b.n	200216d6 <emmc_read_data+0x36>
2002171c:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
20021720:	f845 2b04 	str.w	r2, [r5], #4
20021724:	e7f6      	b.n	20021714 <emmc_read_data+0x74>
20021726:	bf00      	nop
20021728:	50045000 	.word	0x50045000

2002172c <sd1_init>:
2002172c:	b510      	push	{r4, lr}
2002172e:	f04f 44a0 	mov.w	r4, #1342177280	@ 0x50000000
20021732:	68e3      	ldr	r3, [r4, #12]
20021734:	2064      	movs	r0, #100	@ 0x64
20021736:	f023 0310 	bic.w	r3, r3, #16
2002173a:	60e3      	str	r3, [r4, #12]
2002173c:	f000 fbc1 	bl	20021ec2 <HAL_Delay_us>
20021740:	68e3      	ldr	r3, [r4, #12]
20021742:	4a07      	ldr	r2, [pc, #28]	@ (20021760 <sd1_init+0x34>)
20021744:	f043 0310 	orr.w	r3, r3, #16
20021748:	60e3      	str	r3, [r4, #12]
2002174a:	6913      	ldr	r3, [r2, #16]
2002174c:	f043 0302 	orr.w	r3, r3, #2
20021750:	6113      	str	r3, [r2, #16]
20021752:	f44f 7280 	mov.w	r2, #256	@ 0x100
20021756:	4b03      	ldr	r3, [pc, #12]	@ (20021764 <sd1_init+0x38>)
20021758:	631a      	str	r2, [r3, #48]	@ 0x30
2002175a:	2200      	movs	r2, #0
2002175c:	63da      	str	r2, [r3, #60]	@ 0x3c
2002175e:	bd10      	pop	{r4, pc}
20021760:	5000b000 	.word	0x5000b000
20021764:	50045000 	.word	0x50045000

20021768 <sd1_wait_cmd>:
20021768:	4b08      	ldr	r3, [pc, #32]	@ (2002178c <sd1_wait_cmd+0x24>)
2002176a:	681a      	ldr	r2, [r3, #0]
2002176c:	f012 0f0a 	tst.w	r2, #10
20021770:	d0fb      	beq.n	2002176a <sd1_wait_cmd+0x2>
20021772:	2202      	movs	r2, #2
20021774:	601a      	str	r2, [r3, #0]
20021776:	681a      	ldr	r2, [r3, #0]
20021778:	0712      	lsls	r2, r2, #28
2002177a:	bf5f      	itttt	pl
2002177c:	6818      	ldrpl	r0, [r3, #0]
2002177e:	f3c0 0080 	ubfxpl	r0, r0, #2, #1
20021782:	0040      	lslpl	r0, r0, #1
20021784:	b2c0      	uxtbpl	r0, r0
20021786:	bf48      	it	mi
20021788:	2001      	movmi	r0, #1
2002178a:	4770      	bx	lr
2002178c:	50045000 	.word	0x50045000

20021790 <sd1_send_cmd>:
20021790:	4b0e      	ldr	r3, [pc, #56]	@ (200217cc <sd1_send_cmd+0x3c>)
20021792:	280f      	cmp	r0, #15
20021794:	6099      	str	r1, [r3, #8]
20021796:	ea4f 4380 	mov.w	r3, r0, lsl #18
2002179a:	d813      	bhi.n	200217c4 <sd1_send_cmd+0x34>
2002179c:	2201      	movs	r2, #1
2002179e:	f248 0111 	movw	r1, #32785	@ 0x8011
200217a2:	4082      	lsls	r2, r0
200217a4:	420a      	tst	r2, r1
200217a6:	d105      	bne.n	200217b4 <sd1_send_cmd+0x24>
200217a8:	f240 6104 	movw	r1, #1540	@ 0x604
200217ac:	420a      	tst	r2, r1
200217ae:	d009      	beq.n	200217c4 <sd1_send_cmd+0x34>
200217b0:	f443 3340 	orr.w	r3, r3, #196608	@ 0x30000
200217b4:	4a05      	ldr	r2, [pc, #20]	@ (200217cc <sd1_send_cmd+0x3c>)
200217b6:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
200217ba:	f043 0301 	orr.w	r3, r3, #1
200217be:	6053      	str	r3, [r2, #4]
200217c0:	f7ff bfd2 	b.w	20021768 <sd1_wait_cmd>
200217c4:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
200217c8:	e7f4      	b.n	200217b4 <sd1_send_cmd+0x24>
200217ca:	bf00      	nop
200217cc:	50045000 	.word	0x50045000

200217d0 <sd1_send_acmd>:
200217d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200217d2:	4605      	mov	r5, r0
200217d4:	460f      	mov	r7, r1
200217d6:	2037      	movs	r0, #55	@ 0x37
200217d8:	0411      	lsls	r1, r2, #16
200217da:	f7ff ffd9 	bl	20021790 <sd1_send_cmd>
200217de:	4604      	mov	r4, r0
200217e0:	b968      	cbnz	r0, 200217fe <sd1_send_acmd+0x2e>
200217e2:	4b08      	ldr	r3, [pc, #32]	@ (20021804 <sd1_send_acmd+0x34>)
200217e4:	4e08      	ldr	r6, [pc, #32]	@ (20021808 <sd1_send_acmd+0x38>)
200217e6:	ea43 4385 	orr.w	r3, r3, r5, lsl #18
200217ea:	60b7      	str	r7, [r6, #8]
200217ec:	6073      	str	r3, [r6, #4]
200217ee:	f7ff ffbb 	bl	20021768 <sd1_wait_cmd>
200217f2:	2802      	cmp	r0, #2
200217f4:	d104      	bne.n	20021800 <sd1_send_acmd+0x30>
200217f6:	2d29      	cmp	r5, #41	@ 0x29
200217f8:	d102      	bne.n	20021800 <sd1_send_acmd+0x30>
200217fa:	2304      	movs	r3, #4
200217fc:	6033      	str	r3, [r6, #0]
200217fe:	4620      	mov	r0, r4
20021800:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20021802:	bf00      	nop
20021804:	00010101 	.word	0x00010101
20021808:	50045000 	.word	0x50045000

2002180c <sd1_get_rsp>:
2002180c:	b530      	push	{r4, r5, lr}
2002180e:	4c06      	ldr	r4, [pc, #24]	@ (20021828 <sd1_get_rsp+0x1c>)
20021810:	68e5      	ldr	r5, [r4, #12]
20021812:	7005      	strb	r5, [r0, #0]
20021814:	6920      	ldr	r0, [r4, #16]
20021816:	6008      	str	r0, [r1, #0]
20021818:	6961      	ldr	r1, [r4, #20]
2002181a:	6011      	str	r1, [r2, #0]
2002181c:	69a2      	ldr	r2, [r4, #24]
2002181e:	601a      	str	r2, [r3, #0]
20021820:	69e2      	ldr	r2, [r4, #28]
20021822:	9b03      	ldr	r3, [sp, #12]
20021824:	601a      	str	r2, [r3, #0]
20021826:	bd30      	pop	{r4, r5, pc}
20021828:	50045000 	.word	0x50045000

2002182c <sd1_read>:
2002182c:	f04f 33ff 	mov.w	r3, #4294967295
20021830:	4a04      	ldr	r2, [pc, #16]	@ (20021844 <sd1_read+0x18>)
20021832:	eb03 2341 	add.w	r3, r3, r1, lsl #9
20021836:	6293      	str	r3, [r2, #40]	@ 0x28
20021838:	4b03      	ldr	r3, [pc, #12]	@ (20021848 <sd1_read+0x1c>)
2002183a:	ea43 23c0 	orr.w	r3, r3, r0, lsl #11
2002183e:	6253      	str	r3, [r2, #36]	@ 0x24
20021840:	4770      	bx	lr
20021842:	bf00      	nop
20021844:	50045000 	.word	0x50045000
20021848:	01ff0301 	.word	0x01ff0301

2002184c <sd1_wait_read>:
2002184c:	4b08      	ldr	r3, [pc, #32]	@ (20021870 <sd1_wait_read+0x24>)
2002184e:	681a      	ldr	r2, [r3, #0]
20021850:	f012 0fe0 	tst.w	r2, #224	@ 0xe0
20021854:	d0fb      	beq.n	2002184e <sd1_wait_read+0x2>
20021856:	2220      	movs	r2, #32
20021858:	601a      	str	r2, [r3, #0]
2002185a:	681a      	ldr	r2, [r3, #0]
2002185c:	0612      	lsls	r2, r2, #24
2002185e:	bf5f      	itttt	pl
20021860:	6818      	ldrpl	r0, [r3, #0]
20021862:	f3c0 1080 	ubfxpl	r0, r0, #6, #1
20021866:	0040      	lslpl	r0, r0, #1
20021868:	b2c0      	uxtbpl	r0, r0
2002186a:	bf48      	it	mi
2002186c:	2001      	movmi	r0, #1
2002186e:	4770      	bx	lr
20021870:	50045000 	.word	0x50045000

20021874 <sdmmc1_sdnand>:
20021874:	b5f0      	push	{r4, r5, r6, r7, lr}
20021876:	b08d      	sub	sp, #52	@ 0x34
20021878:	f7ff ff58 	bl	2002172c <sd1_init>
2002187c:	4c8f      	ldr	r4, [pc, #572]	@ (20021abc <sdmmc1_sdnand+0x248>)
2002187e:	4b90      	ldr	r3, [pc, #576]	@ (20021ac0 <sdmmc1_sdnand+0x24c>)
20021880:	2500      	movs	r5, #0
20021882:	6323      	str	r3, [r4, #48]	@ 0x30
20021884:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021886:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
2002188a:	f043 0302 	orr.w	r3, r3, #2
2002188e:	6323      	str	r3, [r4, #48]	@ 0x30
20021890:	f44f 1380 	mov.w	r3, #1048576	@ 0x100000
20021894:	62e5      	str	r5, [r4, #44]	@ 0x2c
20021896:	6223      	str	r3, [r4, #32]
20021898:	f000 fb13 	bl	20021ec2 <HAL_Delay_us>
2002189c:	4629      	mov	r1, r5
2002189e:	4628      	mov	r0, r5
200218a0:	f7ff ff76 	bl	20021790 <sd1_send_cmd>
200218a4:	2301      	movs	r3, #1
200218a6:	65e3      	str	r3, [r4, #92]	@ 0x5c
200218a8:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
200218aa:	079a      	lsls	r2, r3, #30
200218ac:	d5fc      	bpl.n	200218a8 <sdmmc1_sdnand+0x34>
200218ae:	2014      	movs	r0, #20
200218b0:	f000 fb07 	bl	20021ec2 <HAL_Delay_us>
200218b4:	f44f 71d5 	mov.w	r1, #426	@ 0x1aa
200218b8:	2008      	movs	r0, #8
200218ba:	f7ff ff69 	bl	20021790 <sd1_send_cmd>
200218be:	3801      	subs	r0, #1
200218c0:	b2c0      	uxtb	r0, r0
200218c2:	2801      	cmp	r0, #1
200218c4:	d802      	bhi.n	200218cc <sdmmc1_sdnand+0x58>
200218c6:	2038      	movs	r0, #56	@ 0x38
200218c8:	b00d      	add	sp, #52	@ 0x34
200218ca:	bdf0      	pop	{r4, r5, r6, r7, pc}
200218cc:	ac07      	add	r4, sp, #28
200218ce:	ab06      	add	r3, sp, #24
200218d0:	9400      	str	r4, [sp, #0]
200218d2:	aa05      	add	r2, sp, #20
200218d4:	a904      	add	r1, sp, #16
200218d6:	f10d 000f 	add.w	r0, sp, #15
200218da:	f7ff ff97 	bl	2002180c <sd1_get_rsp>
200218de:	f89d 300f 	ldrb.w	r3, [sp, #15]
200218e2:	2b08      	cmp	r3, #8
200218e4:	d1ef      	bne.n	200218c6 <sdmmc1_sdnand+0x52>
200218e6:	9b04      	ldr	r3, [sp, #16]
200218e8:	f5b3 7fd5 	cmp.w	r3, #426	@ 0x1aa
200218ec:	d1eb      	bne.n	200218c6 <sdmmc1_sdnand+0x52>
200218ee:	2014      	movs	r0, #20
200218f0:	f000 fae7 	bl	20021ec2 <HAL_Delay_us>
200218f4:	2200      	movs	r2, #0
200218f6:	2029      	movs	r0, #41	@ 0x29
200218f8:	4972      	ldr	r1, [pc, #456]	@ (20021ac4 <sdmmc1_sdnand+0x250>)
200218fa:	f7ff ff69 	bl	200217d0 <sd1_send_acmd>
200218fe:	2801      	cmp	r0, #1
20021900:	f000 80d0 	beq.w	20021aa4 <sdmmc1_sdnand+0x230>
20021904:	ab06      	add	r3, sp, #24
20021906:	9400      	str	r4, [sp, #0]
20021908:	aa05      	add	r2, sp, #20
2002190a:	a904      	add	r1, sp, #16
2002190c:	f10d 000f 	add.w	r0, sp, #15
20021910:	f7ff ff7c 	bl	2002180c <sd1_get_rsp>
20021914:	9b04      	ldr	r3, [sp, #16]
20021916:	2b00      	cmp	r3, #0
20021918:	db03      	blt.n	20021922 <sdmmc1_sdnand+0xae>
2002191a:	2002      	movs	r0, #2
2002191c:	f000 fad1 	bl	20021ec2 <HAL_Delay_us>
20021920:	e7e5      	b.n	200218ee <sdmmc1_sdnand+0x7a>
20021922:	2014      	movs	r0, #20
20021924:	f000 facd 	bl	20021ec2 <HAL_Delay_us>
20021928:	2100      	movs	r1, #0
2002192a:	2002      	movs	r0, #2
2002192c:	f7ff ff30 	bl	20021790 <sd1_send_cmd>
20021930:	3801      	subs	r0, #1
20021932:	b2c0      	uxtb	r0, r0
20021934:	2801      	cmp	r0, #1
20021936:	f240 80b7 	bls.w	20021aa8 <sdmmc1_sdnand+0x234>
2002193a:	ab08      	add	r3, sp, #32
2002193c:	aa0a      	add	r2, sp, #40	@ 0x28
2002193e:	a90b      	add	r1, sp, #44	@ 0x2c
20021940:	9300      	str	r3, [sp, #0]
20021942:	f10d 000f 	add.w	r0, sp, #15
20021946:	ab09      	add	r3, sp, #36	@ 0x24
20021948:	f7ff ff60 	bl	2002180c <sd1_get_rsp>
2002194c:	2014      	movs	r0, #20
2002194e:	f000 fab8 	bl	20021ec2 <HAL_Delay_us>
20021952:	2100      	movs	r1, #0
20021954:	2003      	movs	r0, #3
20021956:	f7ff ff1b 	bl	20021790 <sd1_send_cmd>
2002195a:	3801      	subs	r0, #1
2002195c:	b2c0      	uxtb	r0, r0
2002195e:	2801      	cmp	r0, #1
20021960:	d801      	bhi.n	20021966 <sdmmc1_sdnand+0xf2>
20021962:	2033      	movs	r0, #51	@ 0x33
20021964:	e7b0      	b.n	200218c8 <sdmmc1_sdnand+0x54>
20021966:	ab06      	add	r3, sp, #24
20021968:	9400      	str	r4, [sp, #0]
2002196a:	aa05      	add	r2, sp, #20
2002196c:	a904      	add	r1, sp, #16
2002196e:	f10d 000f 	add.w	r0, sp, #15
20021972:	f7ff ff4b 	bl	2002180c <sd1_get_rsp>
20021976:	f89d 300f 	ldrb.w	r3, [sp, #15]
2002197a:	2b03      	cmp	r3, #3
2002197c:	d1f1      	bne.n	20021962 <sdmmc1_sdnand+0xee>
2002197e:	9e04      	ldr	r6, [sp, #16]
20021980:	2014      	movs	r0, #20
20021982:	0c35      	lsrs	r5, r6, #16
20021984:	042d      	lsls	r5, r5, #16
20021986:	f000 fa9c 	bl	20021ec2 <HAL_Delay_us>
2002198a:	4629      	mov	r1, r5
2002198c:	2009      	movs	r0, #9
2002198e:	f7ff feff 	bl	20021790 <sd1_send_cmd>
20021992:	3801      	subs	r0, #1
20021994:	b2c0      	uxtb	r0, r0
20021996:	2801      	cmp	r0, #1
20021998:	f240 8088 	bls.w	20021aac <sdmmc1_sdnand+0x238>
2002199c:	9400      	str	r4, [sp, #0]
2002199e:	ab06      	add	r3, sp, #24
200219a0:	aa05      	add	r2, sp, #20
200219a2:	a904      	add	r1, sp, #16
200219a4:	f10d 000f 	add.w	r0, sp, #15
200219a8:	f7ff ff30 	bl	2002180c <sd1_get_rsp>
200219ac:	e9dd 2004 	ldrd	r2, r0, [sp, #16]
200219b0:	9c06      	ldr	r4, [sp, #24]
200219b2:	9907      	ldr	r1, [sp, #28]
200219b4:	0e23      	lsrs	r3, r4, #24
200219b6:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
200219ba:	0e01      	lsrs	r1, r0, #24
200219bc:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
200219c0:	9105      	str	r1, [sp, #20]
200219c2:	0e11      	lsrs	r1, r2, #24
200219c4:	9304      	str	r3, [sp, #16]
200219c6:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
200219ca:	0212      	lsls	r2, r2, #8
200219cc:	0f9b      	lsrs	r3, r3, #30
200219ce:	9106      	str	r1, [sp, #24]
200219d0:	9207      	str	r2, [sp, #28]
200219d2:	d01e      	beq.n	20021a12 <sdmmc1_sdnand+0x19e>
200219d4:	2b01      	cmp	r3, #1
200219d6:	d16b      	bne.n	20021ab0 <sdmmc1_sdnand+0x23c>
200219d8:	2300      	movs	r3, #0
200219da:	4a3b      	ldr	r2, [pc, #236]	@ (20021ac8 <sdmmc1_sdnand+0x254>)
200219dc:	4c37      	ldr	r4, [pc, #220]	@ (20021abc <sdmmc1_sdnand+0x248>)
200219de:	7013      	strb	r3, [r2, #0]
200219e0:	f44f 63a0 	mov.w	r3, #1280	@ 0x500
200219e4:	6323      	str	r3, [r4, #48]	@ 0x30
200219e6:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200219e8:	2702      	movs	r7, #2
200219ea:	f043 0302 	orr.w	r3, r3, #2
200219ee:	6323      	str	r3, [r4, #48]	@ 0x30
200219f0:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
200219f4:	2014      	movs	r0, #20
200219f6:	6223      	str	r3, [r4, #32]
200219f8:	63e7      	str	r7, [r4, #60]	@ 0x3c
200219fa:	f000 fa62 	bl	20021ec2 <HAL_Delay_us>
200219fe:	4629      	mov	r1, r5
20021a00:	2007      	movs	r0, #7
20021a02:	f7ff fec5 	bl	20021790 <sd1_send_cmd>
20021a06:	3801      	subs	r0, #1
20021a08:	b2c0      	uxtb	r0, r0
20021a0a:	2801      	cmp	r0, #1
20021a0c:	d803      	bhi.n	20021a16 <sdmmc1_sdnand+0x1a2>
20021a0e:	2037      	movs	r0, #55	@ 0x37
20021a10:	e75a      	b.n	200218c8 <sdmmc1_sdnand+0x54>
20021a12:	2301      	movs	r3, #1
20021a14:	e7e1      	b.n	200219da <sdmmc1_sdnand+0x166>
20021a16:	ad07      	add	r5, sp, #28
20021a18:	ab06      	add	r3, sp, #24
20021a1a:	9500      	str	r5, [sp, #0]
20021a1c:	aa05      	add	r2, sp, #20
20021a1e:	a904      	add	r1, sp, #16
20021a20:	f10d 000f 	add.w	r0, sp, #15
20021a24:	f7ff fef2 	bl	2002180c <sd1_get_rsp>
20021a28:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021a2c:	2b07      	cmp	r3, #7
20021a2e:	d1ee      	bne.n	20021a0e <sdmmc1_sdnand+0x19a>
20021a30:	2014      	movs	r0, #20
20021a32:	f000 fa46 	bl	20021ec2 <HAL_Delay_us>
20021a36:	4639      	mov	r1, r7
20021a38:	2006      	movs	r0, #6
20021a3a:	0c32      	lsrs	r2, r6, #16
20021a3c:	f7ff fec8 	bl	200217d0 <sd1_send_acmd>
20021a40:	3801      	subs	r0, #1
20021a42:	b2c0      	uxtb	r0, r0
20021a44:	2801      	cmp	r0, #1
20021a46:	d935      	bls.n	20021ab4 <sdmmc1_sdnand+0x240>
20021a48:	2101      	movs	r1, #1
20021a4a:	4608      	mov	r0, r1
20021a4c:	f7ff feee 	bl	2002182c <sd1_read>
20021a50:	2014      	movs	r0, #20
20021a52:	f000 fa36 	bl	20021ec2 <HAL_Delay_us>
20021a56:	2100      	movs	r1, #0
20021a58:	2011      	movs	r0, #17
20021a5a:	f7ff fe99 	bl	20021790 <sd1_send_cmd>
20021a5e:	3801      	subs	r0, #1
20021a60:	b2c0      	uxtb	r0, r0
20021a62:	2801      	cmp	r0, #1
20021a64:	d801      	bhi.n	20021a6a <sdmmc1_sdnand+0x1f6>
20021a66:	2052      	movs	r0, #82	@ 0x52
20021a68:	e72e      	b.n	200218c8 <sdmmc1_sdnand+0x54>
20021a6a:	ab06      	add	r3, sp, #24
20021a6c:	9500      	str	r5, [sp, #0]
20021a6e:	aa05      	add	r2, sp, #20
20021a70:	a904      	add	r1, sp, #16
20021a72:	f10d 000f 	add.w	r0, sp, #15
20021a76:	f7ff fec9 	bl	2002180c <sd1_get_rsp>
20021a7a:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021a7e:	2b11      	cmp	r3, #17
20021a80:	d1f1      	bne.n	20021a66 <sdmmc1_sdnand+0x1f2>
20021a82:	f04f 33ff 	mov.w	r3, #4294967295
20021a86:	6023      	str	r3, [r4, #0]
20021a88:	2320      	movs	r3, #32
20021a8a:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021a8c:	f7ff fede 	bl	2002184c <sd1_wait_read>
20021a90:	6823      	ldr	r3, [r4, #0]
20021a92:	061b      	lsls	r3, r3, #24
20021a94:	d410      	bmi.n	20021ab8 <sdmmc1_sdnand+0x244>
20021a96:	6823      	ldr	r3, [r4, #0]
20021a98:	f013 0f40 	tst.w	r3, #64	@ 0x40
20021a9c:	bf14      	ite	ne
20021a9e:	2044      	movne	r0, #68	@ 0x44
20021aa0:	2001      	moveq	r0, #1
20021aa2:	e711      	b.n	200218c8 <sdmmc1_sdnand+0x54>
20021aa4:	2034      	movs	r0, #52	@ 0x34
20021aa6:	e70f      	b.n	200218c8 <sdmmc1_sdnand+0x54>
20021aa8:	2032      	movs	r0, #50	@ 0x32
20021aaa:	e70d      	b.n	200218c8 <sdmmc1_sdnand+0x54>
20021aac:	2039      	movs	r0, #57	@ 0x39
20021aae:	e70b      	b.n	200218c8 <sdmmc1_sdnand+0x54>
20021ab0:	2054      	movs	r0, #84	@ 0x54
20021ab2:	e709      	b.n	200218c8 <sdmmc1_sdnand+0x54>
20021ab4:	2036      	movs	r0, #54	@ 0x36
20021ab6:	e707      	b.n	200218c8 <sdmmc1_sdnand+0x54>
20021ab8:	204f      	movs	r0, #79	@ 0x4f
20021aba:	e705      	b.n	200218c8 <sdmmc1_sdnand+0x54>
20021abc:	50045000 	.word	0x50045000
20021ac0:	00016700 	.word	0x00016700
20021ac4:	40ff8000 	.word	0x40ff8000
20021ac8:	20042c08 	.word	0x20042c08

20021acc <sd_read_data>:
20021acc:	b570      	push	{r4, r5, r6, lr}
20021ace:	460d      	mov	r5, r1
20021ad0:	2101      	movs	r1, #1
20021ad2:	b088      	sub	sp, #32
20021ad4:	4606      	mov	r6, r0
20021ad6:	4608      	mov	r0, r1
20021ad8:	4614      	mov	r4, r2
20021ada:	f7ff fea7 	bl	2002182c <sd1_read>
20021ade:	2014      	movs	r0, #20
20021ae0:	f000 f9ef 	bl	20021ec2 <HAL_Delay_us>
20021ae4:	4b1a      	ldr	r3, [pc, #104]	@ (20021b50 <sd_read_data+0x84>)
20021ae6:	781b      	ldrb	r3, [r3, #0]
20021ae8:	b903      	cbnz	r3, 20021aec <sd_read_data+0x20>
20021aea:	0a76      	lsrs	r6, r6, #9
20021aec:	4631      	mov	r1, r6
20021aee:	2011      	movs	r0, #17
20021af0:	f7ff fe4e 	bl	20021790 <sd1_send_cmd>
20021af4:	3801      	subs	r0, #1
20021af6:	b2c0      	uxtb	r0, r0
20021af8:	2801      	cmp	r0, #1
20021afa:	d802      	bhi.n	20021b02 <sd_read_data+0x36>
20021afc:	2000      	movs	r0, #0
20021afe:	b008      	add	sp, #32
20021b00:	bd70      	pop	{r4, r5, r6, pc}
20021b02:	ab07      	add	r3, sp, #28
20021b04:	9300      	str	r3, [sp, #0]
20021b06:	aa05      	add	r2, sp, #20
20021b08:	ab06      	add	r3, sp, #24
20021b0a:	a904      	add	r1, sp, #16
20021b0c:	f10d 000f 	add.w	r0, sp, #15
20021b10:	f7ff fe7c 	bl	2002180c <sd1_get_rsp>
20021b14:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021b18:	2b11      	cmp	r3, #17
20021b1a:	d1ef      	bne.n	20021afc <sd_read_data+0x30>
20021b1c:	f04f 33ff 	mov.w	r3, #4294967295
20021b20:	4e0c      	ldr	r6, [pc, #48]	@ (20021b54 <sd_read_data+0x88>)
20021b22:	6033      	str	r3, [r6, #0]
20021b24:	2320      	movs	r3, #32
20021b26:	62f3      	str	r3, [r6, #44]	@ 0x2c
20021b28:	f7ff fe90 	bl	2002184c <sd1_wait_read>
20021b2c:	6833      	ldr	r3, [r6, #0]
20021b2e:	061a      	lsls	r2, r3, #24
20021b30:	d4e4      	bmi.n	20021afc <sd_read_data+0x30>
20021b32:	6833      	ldr	r3, [r6, #0]
20021b34:	065b      	lsls	r3, r3, #25
20021b36:	d4e1      	bmi.n	20021afc <sd_read_data+0x30>
20021b38:	f024 0303 	bic.w	r3, r4, #3
20021b3c:	442b      	add	r3, r5
20021b3e:	429d      	cmp	r5, r3
20021b40:	d101      	bne.n	20021b46 <sd_read_data+0x7a>
20021b42:	4620      	mov	r0, r4
20021b44:	e7db      	b.n	20021afe <sd_read_data+0x32>
20021b46:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
20021b4a:	f845 2b04 	str.w	r2, [r5], #4
20021b4e:	e7f6      	b.n	20021b3e <sd_read_data+0x72>
20021b50:	20042c08 	.word	0x20042c08
20021b54:	50045000 	.word	0x50045000

20021b58 <sifli_hash_calculate>:
20021b58:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20021b5c:	460c      	mov	r4, r1
20021b5e:	4615      	mov	r5, r2
20021b60:	4699      	mov	r9, r3
20021b62:	4680      	mov	r8, r0
20021b64:	2800      	cmp	r0, #0
20021b66:	d03f      	beq.n	20021be8 <sifli_hash_calculate+0x90>
20021b68:	2900      	cmp	r1, #0
20021b6a:	d03d      	beq.n	20021be8 <sifli_hash_calculate+0x90>
20021b6c:	2a00      	cmp	r2, #0
20021b6e:	d03b      	beq.n	20021be8 <sifli_hash_calculate+0x90>
20021b70:	2b03      	cmp	r3, #3
20021b72:	d839      	bhi.n	20021be8 <sifli_hash_calculate+0x90>
20021b74:	f000 fab8 	bl	200220e8 <HAL_HASH_reset>
20021b78:	2200      	movs	r2, #0
20021b7a:	4649      	mov	r1, r9
20021b7c:	4610      	mov	r0, r2
20021b7e:	f000 fabb 	bl	200220f8 <HAL_HASH_init>
20021b82:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
20021b86:	d929      	bls.n	20021bdc <sifli_hash_calculate+0x84>
20021b88:	2600      	movs	r6, #0
20021b8a:	4637      	mov	r7, r6
20021b8c:	f506 7680 	add.w	r6, r6, #256	@ 0x100
20021b90:	42a6      	cmp	r6, r4
20021b92:	bf34      	ite	cc
20021b94:	f04f 0a00 	movcc.w	sl, #0
20021b98:	f04f 0a01 	movcs.w	sl, #1
20021b9c:	b14f      	cbz	r7, 20021bb2 <sifli_hash_calculate+0x5a>
20021b9e:	f000 faa3 	bl	200220e8 <HAL_HASH_reset>
20021ba2:	42a6      	cmp	r6, r4
20021ba4:	bf2c      	ite	cs
20021ba6:	463a      	movcs	r2, r7
20021ba8:	2200      	movcc	r2, #0
20021baa:	4649      	mov	r1, r9
20021bac:	4628      	mov	r0, r5
20021bae:	f000 faa3 	bl	200220f8 <HAL_HASH_init>
20021bb2:	42a6      	cmp	r6, r4
20021bb4:	bf34      	ite	cc
20021bb6:	f44f 7180 	movcc.w	r1, #256	@ 0x100
20021bba:	1be1      	subcs	r1, r4, r7
20021bbc:	4652      	mov	r2, sl
20021bbe:	eb08 0007 	add.w	r0, r8, r7
20021bc2:	f000 fa73 	bl	200220ac <HAL_HASH_run>
20021bc6:	4628      	mov	r0, r5
20021bc8:	f000 fac4 	bl	20022154 <HAL_HASH_result>
20021bcc:	42a6      	cmp	r6, r4
20021bce:	d3dc      	bcc.n	20021b8a <sifli_hash_calculate+0x32>
20021bd0:	4628      	mov	r0, r5
20021bd2:	f000 fabf 	bl	20022154 <HAL_HASH_result>
20021bd6:	2000      	movs	r0, #0
20021bd8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20021bdc:	2201      	movs	r2, #1
20021bde:	4621      	mov	r1, r4
20021be0:	4640      	mov	r0, r8
20021be2:	f000 fa63 	bl	200220ac <HAL_HASH_run>
20021be6:	e7f3      	b.n	20021bd0 <sifli_hash_calculate+0x78>
20021be8:	f04f 30ff 	mov.w	r0, #4294967295
20021bec:	e7f4      	b.n	20021bd8 <sifli_hash_calculate+0x80>

20021bee <sifli_hash_verify>:
20021bee:	b5f0      	push	{r4, r5, r6, r7, lr}
20021bf0:	4605      	mov	r5, r0
20021bf2:	b089      	sub	sp, #36	@ 0x24
20021bf4:	460f      	mov	r7, r1
20021bf6:	4614      	mov	r4, r2
20021bf8:	2100      	movs	r1, #0
20021bfa:	2220      	movs	r2, #32
20021bfc:	4668      	mov	r0, sp
20021bfe:	461e      	mov	r6, r3
20021c00:	f008 fe00 	bl	2002a804 <memset>
20021c04:	b91d      	cbnz	r5, 20021c0e <sifli_hash_verify+0x20>
20021c06:	f04f 30ff 	mov.w	r0, #4294967295
20021c0a:	b009      	add	sp, #36	@ 0x24
20021c0c:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021c0e:	2c00      	cmp	r4, #0
20021c10:	d0f9      	beq.n	20021c06 <sifli_hash_verify+0x18>
20021c12:	2302      	movs	r3, #2
20021c14:	466a      	mov	r2, sp
20021c16:	4639      	mov	r1, r7
20021c18:	4628      	mov	r0, r5
20021c1a:	f7ff ff9d 	bl	20021b58 <sifli_hash_calculate>
20021c1e:	2800      	cmp	r0, #0
20021c20:	d1f1      	bne.n	20021c06 <sifli_hash_verify+0x18>
20021c22:	4632      	mov	r2, r6
20021c24:	4621      	mov	r1, r4
20021c26:	4668      	mov	r0, sp
20021c28:	f008 fddc 	bl	2002a7e4 <memcmp>
20021c2c:	3800      	subs	r0, #0
20021c2e:	bf18      	it	ne
20021c30:	2001      	movne	r0, #1
20021c32:	4240      	negs	r0, r0
20021c34:	e7e9      	b.n	20021c0a <sifli_hash_verify+0x1c>

20021c36 <sifli_sigkey_pub_verify>:
20021c36:	2300      	movs	r3, #0
20021c38:	b537      	push	{r0, r1, r2, r4, r5, lr}
20021c3a:	4604      	mov	r4, r0
20021c3c:	460d      	mov	r5, r1
20021c3e:	2208      	movs	r2, #8
20021c40:	4669      	mov	r1, sp
20021c42:	2003      	movs	r0, #3
20021c44:	e9cd 3300 	strd	r3, r3, [sp]
20021c48:	f7ff f9ec 	bl	20021024 <sifli_hw_efuse_read>
20021c4c:	2808      	cmp	r0, #8
20021c4e:	4603      	mov	r3, r0
20021c50:	d106      	bne.n	20021c60 <sifli_sigkey_pub_verify+0x2a>
20021c52:	466a      	mov	r2, sp
20021c54:	4629      	mov	r1, r5
20021c56:	4620      	mov	r0, r4
20021c58:	f7ff ffc9 	bl	20021bee <sifli_hash_verify>
20021c5c:	b003      	add	sp, #12
20021c5e:	bd30      	pop	{r4, r5, pc}
20021c60:	f04f 30ff 	mov.w	r0, #4294967295
20021c64:	e7fa      	b.n	20021c5c <sifli_sigkey_pub_verify+0x26>

20021c66 <sifli_img_sig_hash_verify>:
20021c66:	b5f0      	push	{r4, r5, r6, r7, lr}
20021c68:	461f      	mov	r7, r3
20021c6a:	4616      	mov	r6, r2
20021c6c:	b08d      	sub	sp, #52	@ 0x34
20021c6e:	2220      	movs	r2, #32
20021c70:	4604      	mov	r4, r0
20021c72:	460d      	mov	r5, r1
20021c74:	a804      	add	r0, sp, #16
20021c76:	2100      	movs	r1, #0
20021c78:	f008 fdc4 	bl	2002a804 <memset>
20021c7c:	2302      	movs	r3, #2
20021c7e:	4639      	mov	r1, r7
20021c80:	4630      	mov	r0, r6
20021c82:	aa04      	add	r2, sp, #16
20021c84:	f7ff ff68 	bl	20021b58 <sifli_hash_calculate>
20021c88:	b118      	cbz	r0, 20021c92 <sifli_img_sig_hash_verify+0x2c>
20021c8a:	f04f 30ff 	mov.w	r0, #4294967295
20021c8e:	b00d      	add	sp, #52	@ 0x34
20021c90:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021c92:	a802      	add	r0, sp, #8
20021c94:	f007 fb2a 	bl	200292ec <mbedtls_pk_init>
20021c98:	4629      	mov	r1, r5
20021c9a:	f44f 7293 	mov.w	r2, #294	@ 0x126
20021c9e:	a802      	add	r0, sp, #8
20021ca0:	f007 fc30 	bl	20029504 <mbedtls_pk_parse_public_key>
20021ca4:	4601      	mov	r1, r0
20021ca6:	2800      	cmp	r0, #0
20021ca8:	d1ef      	bne.n	20021c8a <sifli_img_sig_hash_verify+0x24>
20021caa:	2206      	movs	r2, #6
20021cac:	9803      	ldr	r0, [sp, #12]
20021cae:	f007 fcd0 	bl	20029652 <mbedtls_rsa_set_padding>
20021cb2:	f44f 7380 	mov.w	r3, #256	@ 0x100
20021cb6:	2106      	movs	r1, #6
20021cb8:	e9cd 4300 	strd	r4, r3, [sp]
20021cbc:	aa04      	add	r2, sp, #16
20021cbe:	2320      	movs	r3, #32
20021cc0:	a802      	add	r0, sp, #8
20021cc2:	f007 fb47 	bl	20029354 <mbedtls_pk_verify>
20021cc6:	3800      	subs	r0, #0
20021cc8:	bf18      	it	ne
20021cca:	2001      	movne	r0, #1
20021ccc:	4240      	negs	r0, r0
20021cce:	e7de      	b.n	20021c8e <sifli_img_sig_hash_verify+0x28>

20021cd0 <sifli_secboot_exception>:
20021cd0:	2801      	cmp	r0, #1
20021cd2:	b508      	push	{r3, lr}
20021cd4:	d004      	beq.n	20021ce0 <sifli_secboot_exception+0x10>
20021cd6:	2802      	cmp	r0, #2
20021cd8:	d009      	beq.n	20021cee <sifli_secboot_exception+0x1e>
20021cda:	2213      	movs	r2, #19
20021cdc:	4905      	ldr	r1, [pc, #20]	@ (20021cf4 <sifli_secboot_exception+0x24>)
20021cde:	e001      	b.n	20021ce4 <sifli_secboot_exception+0x14>
20021ce0:	2217      	movs	r2, #23
20021ce2:	4905      	ldr	r1, [pc, #20]	@ (20021cf8 <sifli_secboot_exception+0x28>)
20021ce4:	4805      	ldr	r0, [pc, #20]	@ (20021cfc <sifli_secboot_exception+0x2c>)
20021ce6:	f7fe fad7 	bl	20020298 <boot_uart_tx>
20021cea:	e7fe      	b.n	20021cea <sifli_secboot_exception+0x1a>
20021cec:	bd08      	pop	{r3, pc}
20021cee:	2219      	movs	r2, #25
20021cf0:	4903      	ldr	r1, [pc, #12]	@ (20021d00 <sifli_secboot_exception+0x30>)
20021cf2:	e7f7      	b.n	20021ce4 <sifli_secboot_exception+0x14>
20021cf4:	2002a982 	.word	0x2002a982
20021cf8:	2002a950 	.word	0x2002a950
20021cfc:	50084000 	.word	0x50084000
20021d00:	2002a968 	.word	0x2002a968

20021d04 <BSP_GetFlash1DIV>:
20021d04:	4b01      	ldr	r3, [pc, #4]	@ (20021d0c <BSP_GetFlash1DIV+0x8>)
20021d06:	8818      	ldrh	r0, [r3, #0]
20021d08:	4770      	bx	lr
20021d0a:	bf00      	nop
20021d0c:	20042c0c 	.word	0x20042c0c

20021d10 <BSP_GetFlash2DIV>:
20021d10:	4b01      	ldr	r3, [pc, #4]	@ (20021d18 <BSP_GetFlash2DIV+0x8>)
20021d12:	8818      	ldrh	r0, [r3, #0]
20021d14:	4770      	bx	lr
20021d16:	bf00      	nop
20021d18:	20042c0a 	.word	0x20042c0a

20021d1c <BSP_SetFlash1DIV>:
20021d1c:	4b01      	ldr	r3, [pc, #4]	@ (20021d24 <BSP_SetFlash1DIV+0x8>)
20021d1e:	8018      	strh	r0, [r3, #0]
20021d20:	4770      	bx	lr
20021d22:	bf00      	nop
20021d24:	20042c0c 	.word	0x20042c0c

20021d28 <BSP_SetFlash2DIV>:
20021d28:	4b01      	ldr	r3, [pc, #4]	@ (20021d30 <BSP_SetFlash2DIV+0x8>)
20021d2a:	8018      	strh	r0, [r3, #0]
20021d2c:	4770      	bx	lr
20021d2e:	bf00      	nop
20021d30:	20042c0a 	.word	0x20042c0a

20021d34 <boot_images>:
20021d34:	4770      	bx	lr

20021d36 <SystemPowerOnModeInit>:
20021d36:	4770      	bx	lr

20021d38 <SystemInit>:
20021d38:	b508      	push	{r3, lr}
20021d3a:	4a10      	ldr	r2, [pc, #64]	@ (20021d7c <SystemInit+0x44>)
20021d3c:	4b10      	ldr	r3, [pc, #64]	@ (20021d80 <SystemInit+0x48>)
20021d3e:	609a      	str	r2, [r3, #8]
20021d40:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021d44:	f042 023f 	orr.w	r2, r2, #63	@ 0x3f
20021d48:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021d4c:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021d50:	f442 0270 	orr.w	r2, r2, #15728640	@ 0xf00000
20021d54:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021d58:	f7ff fb28 	bl	200213ac <hw_preinit0>
20021d5c:	f7fe fad6 	bl	2002030c <mpu_config>
20021d60:	4b08      	ldr	r3, [pc, #32]	@ (20021d84 <SystemInit+0x4c>)
20021d62:	681b      	ldr	r3, [r3, #0]
20021d64:	07db      	lsls	r3, r3, #31
20021d66:	d401      	bmi.n	20021d6c <SystemInit+0x34>
20021d68:	f7ff ffe4 	bl	20021d34 <boot_images>
20021d6c:	f7fe facf 	bl	2002030e <cache_enable>
20021d70:	f7ff ffe1 	bl	20021d36 <SystemPowerOnModeInit>
20021d74:	4b04      	ldr	r3, [pc, #16]	@ (20021d88 <SystemInit+0x50>)
20021d76:	4a05      	ldr	r2, [pc, #20]	@ (20021d8c <SystemInit+0x54>)
20021d78:	601a      	str	r2, [r3, #0]
20021d7a:	bd08      	pop	{r3, pc}
20021d7c:	20020000 	.word	0x20020000
20021d80:	e000ed00 	.word	0xe000ed00
20021d84:	5000b000 	.word	0x5000b000
20021d88:	20042c10 	.word	0x20042c10
20021d8c:	017d7840 	.word	0x017d7840

20021d90 <Reset_Handler>:
20021d90:	f8df d048 	ldr.w	sp, [pc, #72]	@ 20021ddc <AES_IRQHandler+0x2>
20021d94:	4812      	ldr	r0, [pc, #72]	@ (20021de0 <AES_IRQHandler+0x6>)
20021d96:	f380 880a 	msr	MSPLIM, r0
20021d9a:	f7ff ffcd 	bl	20021d38 <SystemInit>
20021d9e:	4c11      	ldr	r4, [pc, #68]	@ (20021de4 <AES_IRQHandler+0xa>)
20021da0:	4d11      	ldr	r5, [pc, #68]	@ (20021de8 <AES_IRQHandler+0xe>)
20021da2:	42ac      	cmp	r4, r5
20021da4:	da09      	bge.n	20021dba <Reset_Handler+0x2a>
20021da6:	6821      	ldr	r1, [r4, #0]
20021da8:	6862      	ldr	r2, [r4, #4]
20021daa:	68a3      	ldr	r3, [r4, #8]
20021dac:	3b04      	subs	r3, #4
20021dae:	bfa2      	ittt	ge
20021db0:	58c8      	ldrge	r0, [r1, r3]
20021db2:	50d0      	strge	r0, [r2, r3]
20021db4:	e7fa      	bge.n	20021dac <Reset_Handler+0x1c>
20021db6:	340c      	adds	r4, #12
20021db8:	e7f3      	b.n	20021da2 <Reset_Handler+0x12>
20021dba:	4b0c      	ldr	r3, [pc, #48]	@ (20021dec <AES_IRQHandler+0x12>)
20021dbc:	4c0c      	ldr	r4, [pc, #48]	@ (20021df0 <AES_IRQHandler+0x16>)
20021dbe:	42a3      	cmp	r3, r4
20021dc0:	da08      	bge.n	20021dd4 <Reset_Handler+0x44>
20021dc2:	6819      	ldr	r1, [r3, #0]
20021dc4:	685a      	ldr	r2, [r3, #4]
20021dc6:	2000      	movs	r0, #0
20021dc8:	3a04      	subs	r2, #4
20021dca:	bfa4      	itt	ge
20021dcc:	5088      	strge	r0, [r1, r2]
20021dce:	e7fb      	bge.n	20021dc8 <Reset_Handler+0x38>
20021dd0:	3308      	adds	r3, #8
20021dd2:	e7f4      	b.n	20021dbe <Reset_Handler+0x2e>
20021dd4:	f7ff fb10 	bl	200213f8 <entry>

20021dd8 <HardFault_Handler>:
20021dd8:	e7fe      	b.n	20021dd8 <HardFault_Handler>

20021dda <AES_IRQHandler>:
20021dda:	e7fe      	b.n	20021dda <AES_IRQHandler>
20021ddc:	20042000 	.word	0x20042000
20021de0:	20040000 	.word	0x20040000
20021de4:	2002c3c0 	.word	0x2002c3c0
20021de8:	2002c3cc 	.word	0x2002c3cc
20021dec:	2002c3cc 	.word	0x2002c3cc
20021df0:	2002c3d4 	.word	0x2002c3d4

20021df4 <__aeabi_unwind_cpp_pr0>:
20021df4:	2000      	movs	r0, #0
20021df6:	4770      	bx	lr

20021df8 <HAL_GetTick>:
20021df8:	4b01      	ldr	r3, [pc, #4]	@ (20021e00 <HAL_GetTick+0x8>)
20021dfa:	6818      	ldr	r0, [r3, #0]
20021dfc:	4770      	bx	lr
20021dfe:	bf00      	nop
20021e00:	20049ed8 	.word	0x20049ed8

20021e04 <HAL_Delay_us_>:
20021e04:	b513      	push	{r0, r1, r4, lr}
20021e06:	9001      	str	r0, [sp, #4]
20021e08:	9b01      	ldr	r3, [sp, #4]
20021e0a:	4c1a      	ldr	r4, [pc, #104]	@ (20021e74 <HAL_Delay_us_+0x70>)
20021e0c:	b133      	cbz	r3, 20021e1c <HAL_Delay_us_+0x18>
20021e0e:	6823      	ldr	r3, [r4, #0]
20021e10:	b123      	cbz	r3, 20021e1c <HAL_Delay_us_+0x18>
20021e12:	9b01      	ldr	r3, [sp, #4]
20021e14:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20021e18:	d90c      	bls.n	20021e34 <HAL_Delay_us_+0x30>
20021e1a:	e7fe      	b.n	20021e1a <HAL_Delay_us_+0x16>
20021e1c:	2000      	movs	r0, #0
20021e1e:	f003 f8c7 	bl	20024fb0 <HAL_RCC_GetHCLKFreq>
20021e22:	4b15      	ldr	r3, [pc, #84]	@ (20021e78 <HAL_Delay_us_+0x74>)
20021e24:	fbb0 f0f3 	udiv	r0, r0, r3
20021e28:	9b01      	ldr	r3, [sp, #4]
20021e2a:	6020      	str	r0, [r4, #0]
20021e2c:	2b00      	cmp	r3, #0
20021e2e:	d1f0      	bne.n	20021e12 <HAL_Delay_us_+0xe>
20021e30:	b002      	add	sp, #8
20021e32:	bd10      	pop	{r4, pc}
20021e34:	9b01      	ldr	r3, [sp, #4]
20021e36:	2b00      	cmp	r3, #0
20021e38:	d0fa      	beq.n	20021e30 <HAL_Delay_us_+0x2c>
20021e3a:	4a10      	ldr	r2, [pc, #64]	@ (20021e7c <HAL_Delay_us_+0x78>)
20021e3c:	6813      	ldr	r3, [r2, #0]
20021e3e:	f013 0301 	ands.w	r3, r3, #1
20021e42:	d10d      	bne.n	20021e60 <HAL_Delay_us_+0x5c>
20021e44:	480e      	ldr	r0, [pc, #56]	@ (20021e80 <HAL_Delay_us_+0x7c>)
20021e46:	f8d0 10fc 	ldr.w	r1, [r0, #252]	@ 0xfc
20021e4a:	f041 7180 	orr.w	r1, r1, #16777216	@ 0x1000000
20021e4e:	f8c0 10fc 	str.w	r1, [r0, #252]	@ 0xfc
20021e52:	6053      	str	r3, [r2, #4]
20021e54:	6813      	ldr	r3, [r2, #0]
20021e56:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
20021e5a:	f043 0301 	orr.w	r3, r3, #1
20021e5e:	6013      	str	r3, [r2, #0]
20021e60:	9b01      	ldr	r3, [sp, #4]
20021e62:	6822      	ldr	r2, [r4, #0]
20021e64:	4905      	ldr	r1, [pc, #20]	@ (20021e7c <HAL_Delay_us_+0x78>)
20021e66:	4353      	muls	r3, r2
20021e68:	6848      	ldr	r0, [r1, #4]
20021e6a:	684a      	ldr	r2, [r1, #4]
20021e6c:	1a12      	subs	r2, r2, r0
20021e6e:	429a      	cmp	r2, r3
20021e70:	d3fb      	bcc.n	20021e6a <HAL_Delay_us_+0x66>
20021e72:	e7dd      	b.n	20021e30 <HAL_Delay_us_+0x2c>
20021e74:	20049ed4 	.word	0x20049ed4
20021e78:	000f4240 	.word	0x000f4240
20021e7c:	e0001000 	.word	0xe0001000
20021e80:	e000ed00 	.word	0xe000ed00

20021e84 <HAL_Delay_us2_>:
20021e84:	b537      	push	{r0, r1, r2, r4, r5, lr}
20021e86:	9001      	str	r0, [sp, #4]
20021e88:	f04f 20e0 	mov.w	r0, #3758153728	@ 0xe000e000
20021e8c:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20021e90:	6944      	ldr	r4, [r0, #20]
20021e92:	9b01      	ldr	r3, [sp, #4]
20021e94:	4363      	muls	r3, r4
20021e96:	fbb3 f3f2 	udiv	r3, r3, r2
20021e9a:	9301      	str	r3, [sp, #4]
20021e9c:	2300      	movs	r3, #0
20021e9e:	6981      	ldr	r1, [r0, #24]
20021ea0:	6982      	ldr	r2, [r0, #24]
20021ea2:	428a      	cmp	r2, r1
20021ea4:	d0fc      	beq.n	20021ea0 <HAL_Delay_us2_+0x1c>
20021ea6:	bf25      	ittet	cs
20021ea8:	1aa5      	subcs	r5, r4, r2
20021eaa:	195b      	addcs	r3, r3, r5
20021eac:	185b      	addcc	r3, r3, r1
20021eae:	185b      	addcs	r3, r3, r1
20021eb0:	9901      	ldr	r1, [sp, #4]
20021eb2:	bf38      	it	cc
20021eb4:	1a9b      	subcc	r3, r3, r2
20021eb6:	4299      	cmp	r1, r3
20021eb8:	d801      	bhi.n	20021ebe <HAL_Delay_us2_+0x3a>
20021eba:	b003      	add	sp, #12
20021ebc:	bd30      	pop	{r4, r5, pc}
20021ebe:	4611      	mov	r1, r2
20021ec0:	e7ee      	b.n	20021ea0 <HAL_Delay_us2_+0x1c>

20021ec2 <HAL_Delay_us>:
20021ec2:	4603      	mov	r3, r0
20021ec4:	b570      	push	{r4, r5, r6, lr}
20021ec6:	b1b8      	cbz	r0, 20021ef8 <HAL_Delay_us+0x36>
20021ec8:	f242 7510 	movw	r5, #10000	@ 0x2710
20021ecc:	f04f 26e0 	mov.w	r6, #3758153728	@ 0xe000e000
20021ed0:	42ab      	cmp	r3, r5
20021ed2:	bf84      	itt	hi
20021ed4:	f5a3 541c 	subhi.w	r4, r3, #9984	@ 0x2700
20021ed8:	f242 7310 	movwhi	r3, #10000	@ 0x2710
20021edc:	6932      	ldr	r2, [r6, #16]
20021ede:	bf98      	it	ls
20021ee0:	2400      	movls	r4, #0
20021ee2:	4618      	mov	r0, r3
20021ee4:	bf88      	it	hi
20021ee6:	3c10      	subhi	r4, #16
20021ee8:	07d3      	lsls	r3, r2, #31
20021eea:	d408      	bmi.n	20021efe <HAL_Delay_us+0x3c>
20021eec:	f7ff ff8a 	bl	20021e04 <HAL_Delay_us_>
20021ef0:	4623      	mov	r3, r4
20021ef2:	2c00      	cmp	r4, #0
20021ef4:	d1ec      	bne.n	20021ed0 <HAL_Delay_us+0xe>
20021ef6:	e001      	b.n	20021efc <HAL_Delay_us+0x3a>
20021ef8:	f7ff ff84 	bl	20021e04 <HAL_Delay_us_>
20021efc:	bd70      	pop	{r4, r5, r6, pc}
20021efe:	f7ff ffc1 	bl	20021e84 <HAL_Delay_us2_>
20021f02:	e7f5      	b.n	20021ef0 <HAL_Delay_us+0x2e>

20021f04 <WDT_IRQHandler>:
20021f04:	4770      	bx	lr

20021f06 <DBG_Trigger_IRQHandler>:
20021f06:	4770      	bx	lr

20021f08 <NMI_Handler>:
20021f08:	b508      	push	{r3, lr}
20021f0a:	4b05      	ldr	r3, [pc, #20]	@ (20021f20 <NMI_Handler+0x18>)
20021f0c:	6a1b      	ldr	r3, [r3, #32]
20021f0e:	005b      	lsls	r3, r3, #1
20021f10:	d502      	bpl.n	20021f18 <NMI_Handler+0x10>
20021f12:	f7ff fff8 	bl	20021f06 <DBG_Trigger_IRQHandler>
20021f16:	bd08      	pop	{r3, pc}
20021f18:	f7ff fff4 	bl	20021f04 <WDT_IRQHandler>
20021f1c:	e7fb      	b.n	20021f16 <NMI_Handler+0xe>
20021f1e:	bf00      	nop
20021f20:	5000b000 	.word	0x5000b000

20021f24 <HAL_AES_run_help>:
20021f24:	b510      	push	{r4, lr}
20021f26:	f101 4470 	add.w	r4, r1, #4026531840	@ 0xf0000000
20021f2a:	f1b4 5f80 	cmp.w	r4, #268435456	@ 0x10000000
20021f2e:	4c0e      	ldr	r4, [pc, #56]	@ (20021f68 <HAL_AES_run_help+0x44>)
20021f30:	bf38      	it	cc
20021f32:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
20021f36:	6161      	str	r1, [r4, #20]
20021f38:	f102 4170 	add.w	r1, r2, #4026531840	@ 0xf0000000
20021f3c:	f1b1 5f80 	cmp.w	r1, #268435456	@ 0x10000000
20021f40:	f103 030f 	add.w	r3, r3, #15
20021f44:	ea4f 1323 	mov.w	r3, r3, asr #4
20021f48:	bf38      	it	cc
20021f4a:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
20021f4e:	61a2      	str	r2, [r4, #24]
20021f50:	61e3      	str	r3, [r4, #28]
20021f52:	6923      	ldr	r3, [r4, #16]
20021f54:	b108      	cbz	r0, 20021f5a <HAL_AES_run_help+0x36>
20021f56:	ea43 13c0 	orr.w	r3, r3, r0, lsl #7
20021f5a:	4a03      	ldr	r2, [pc, #12]	@ (20021f68 <HAL_AES_run_help+0x44>)
20021f5c:	6123      	str	r3, [r4, #16]
20021f5e:	6813      	ldr	r3, [r2, #0]
20021f60:	f043 0301 	orr.w	r3, r3, #1
20021f64:	6013      	str	r3, [r2, #0]
20021f66:	bd10      	pop	{r4, pc}
20021f68:	5000d000 	.word	0x5000d000

20021f6c <HAL_HASH_run_help.isra.0>:
20021f6c:	f100 4370 	add.w	r3, r0, #4026531840	@ 0xf0000000
20021f70:	b510      	push	{r4, lr}
20021f72:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
20021f76:	4c09      	ldr	r4, [pc, #36]	@ (20021f9c <HAL_HASH_run_help.isra.0+0x30>)
20021f78:	bf38      	it	cc
20021f7a:	f100 40a0 	addcc.w	r0, r0, #1342177280	@ 0x50000000
20021f7e:	6560      	str	r0, [r4, #84]	@ 0x54
20021f80:	65a1      	str	r1, [r4, #88]	@ 0x58
20021f82:	b11a      	cbz	r2, 20021f8c <HAL_HASH_run_help.isra.0+0x20>
20021f84:	6d23      	ldr	r3, [r4, #80]	@ 0x50
20021f86:	f043 0308 	orr.w	r3, r3, #8
20021f8a:	6523      	str	r3, [r4, #80]	@ 0x50
20021f8c:	6d21      	ldr	r1, [r4, #80]	@ 0x50
20021f8e:	4804      	ldr	r0, [pc, #16]	@ (20021fa0 <HAL_HASH_run_help.isra.0+0x34>)
20021f90:	f000 fd79 	bl	20022a86 <HAL_DBG_printf>
20021f94:	2304      	movs	r3, #4
20021f96:	6023      	str	r3, [r4, #0]
20021f98:	bd10      	pop	{r4, pc}
20021f9a:	bf00      	nop
20021f9c:	5000d000 	.word	0x5000d000
20021fa0:	2002a996 	.word	0x2002a996

20021fa4 <HAL_AES_reset>:
20021fa4:	2202      	movs	r2, #2
20021fa6:	2000      	movs	r0, #0
20021fa8:	4b01      	ldr	r3, [pc, #4]	@ (20021fb0 <HAL_AES_reset+0xc>)
20021faa:	601a      	str	r2, [r3, #0]
20021fac:	6018      	str	r0, [r3, #0]
20021fae:	4770      	bx	lr
20021fb0:	5000d000 	.word	0x5000d000

20021fb4 <HAL_AES_init>:
20021fb4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20021fb6:	461f      	mov	r7, r3
20021fb8:	4b1e      	ldr	r3, [pc, #120]	@ (20022034 <HAL_AES_init+0x80>)
20021fba:	4604      	mov	r4, r0
20021fbc:	685b      	ldr	r3, [r3, #4]
20021fbe:	4616      	mov	r6, r2
20021fc0:	07db      	lsls	r3, r3, #31
20021fc2:	d501      	bpl.n	20021fc8 <HAL_AES_init+0x14>
20021fc4:	f7ff ffee 	bl	20021fa4 <HAL_AES_reset>
20021fc8:	fab4 f084 	clz	r0, r4
20021fcc:	2918      	cmp	r1, #24
20021fce:	ea4f 1050 	mov.w	r0, r0, lsr #5
20021fd2:	ea4f 1540 	mov.w	r5, r0, lsl #5
20021fd6:	d01c      	beq.n	20022012 <HAL_AES_init+0x5e>
20021fd8:	2920      	cmp	r1, #32
20021fda:	d01c      	beq.n	20022016 <HAL_AES_init+0x62>
20021fdc:	2910      	cmp	r1, #16
20021fde:	d125      	bne.n	2002202c <HAL_AES_init+0x78>
20021fe0:	2300      	movs	r3, #0
20021fe2:	b164      	cbz	r4, 20021ffe <HAL_AES_init+0x4a>
20021fe4:	4620      	mov	r0, r4
20021fe6:	4a14      	ldr	r2, [pc, #80]	@ (20022038 <HAL_AES_init+0x84>)
20021fe8:	f021 0103 	bic.w	r1, r1, #3
20021fec:	4421      	add	r1, r4
20021fee:	1b12      	subs	r2, r2, r4
20021ff0:	1814      	adds	r4, r2, r0
20021ff2:	f850 cb04 	ldr.w	ip, [r0], #4
20021ff6:	4281      	cmp	r1, r0
20021ff8:	f8c4 c000 	str.w	ip, [r4]
20021ffc:	d1f8      	bne.n	20021ff0 <HAL_AES_init+0x3c>
20021ffe:	ea47 0005 	orr.w	r0, r7, r5
20022002:	ea40 00c3 	orr.w	r0, r0, r3, lsl #3
20022006:	4b0b      	ldr	r3, [pc, #44]	@ (20022034 <HAL_AES_init+0x80>)
20022008:	6118      	str	r0, [r3, #16]
2002200a:	b107      	cbz	r7, 2002200e <HAL_AES_init+0x5a>
2002200c:	b92e      	cbnz	r6, 2002201a <HAL_AES_init+0x66>
2002200e:	2000      	movs	r0, #0
20022010:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20022012:	2301      	movs	r3, #1
20022014:	e7e5      	b.n	20021fe2 <HAL_AES_init+0x2e>
20022016:	2302      	movs	r3, #2
20022018:	e7e3      	b.n	20021fe2 <HAL_AES_init+0x2e>
2002201a:	6832      	ldr	r2, [r6, #0]
2002201c:	621a      	str	r2, [r3, #32]
2002201e:	6872      	ldr	r2, [r6, #4]
20022020:	625a      	str	r2, [r3, #36]	@ 0x24
20022022:	68b2      	ldr	r2, [r6, #8]
20022024:	629a      	str	r2, [r3, #40]	@ 0x28
20022026:	68f2      	ldr	r2, [r6, #12]
20022028:	62da      	str	r2, [r3, #44]	@ 0x2c
2002202a:	e7f0      	b.n	2002200e <HAL_AES_init+0x5a>
2002202c:	f04f 30ff 	mov.w	r0, #4294967295
20022030:	e7ee      	b.n	20022010 <HAL_AES_init+0x5c>
20022032:	bf00      	nop
20022034:	5000d000 	.word	0x5000d000
20022038:	5000d030 	.word	0x5000d030

2002203c <HAL_AES_run>:
2002203c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002203e:	2708      	movs	r7, #8
20022040:	4e17      	ldr	r6, [pc, #92]	@ (200220a0 <HAL_AES_run+0x64>)
20022042:	4614      	mov	r4, r2
20022044:	461d      	mov	r5, r3
20022046:	f8c6 7088 	str.w	r7, [r6, #136]	@ 0x88
2002204a:	f3bf 8f4f 	dsb	sy
2002204e:	f3bf 8f6f 	isb	sy
20022052:	2700      	movs	r7, #0
20022054:	4e13      	ldr	r6, [pc, #76]	@ (200220a4 <HAL_AES_run+0x68>)
20022056:	60f7      	str	r7, [r6, #12]
20022058:	f7ff ff64 	bl	20021f24 <HAL_AES_run_help>
2002205c:	6873      	ldr	r3, [r6, #4]
2002205e:	07db      	lsls	r3, r3, #31
20022060:	d4fc      	bmi.n	2002205c <HAL_AES_run+0x20>
20022062:	68b0      	ldr	r0, [r6, #8]
20022064:	f000 0006 	and.w	r0, r0, #6
20022068:	3800      	subs	r0, #0
2002206a:	bf18      	it	ne
2002206c:	2001      	movne	r0, #1
2002206e:	f1b4 4fc0 	cmp.w	r4, #1610612736	@ 0x60000000
20022072:	d313      	bcc.n	2002209c <HAL_AES_run+0x60>
20022074:	2d00      	cmp	r5, #0
20022076:	dd11      	ble.n	2002209c <HAL_AES_run+0x60>
20022078:	f004 031f 	and.w	r3, r4, #31
2002207c:	442b      	add	r3, r5
2002207e:	f3bf 8f4f 	dsb	sy
20022082:	4622      	mov	r2, r4
20022084:	4c08      	ldr	r4, [pc, #32]	@ (200220a8 <HAL_AES_run+0x6c>)
20022086:	4413      	add	r3, r2
20022088:	f8c4 225c 	str.w	r2, [r4, #604]	@ 0x25c
2002208c:	3220      	adds	r2, #32
2002208e:	1a99      	subs	r1, r3, r2
20022090:	2900      	cmp	r1, #0
20022092:	dcf9      	bgt.n	20022088 <HAL_AES_run+0x4c>
20022094:	f3bf 8f4f 	dsb	sy
20022098:	f3bf 8f6f 	isb	sy
2002209c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002209e:	bf00      	nop
200220a0:	e000e100 	.word	0xe000e100
200220a4:	5000d000 	.word	0x5000d000
200220a8:	e000ed00 	.word	0xe000ed00

200220ac <HAL_HASH_run>:
200220ac:	b510      	push	{r4, lr}
200220ae:	2408      	movs	r4, #8
200220b0:	4b0b      	ldr	r3, [pc, #44]	@ (200220e0 <HAL_HASH_run+0x34>)
200220b2:	f8c3 4088 	str.w	r4, [r3, #136]	@ 0x88
200220b6:	f3bf 8f4f 	dsb	sy
200220ba:	f3bf 8f6f 	isb	sy
200220be:	f7ff ff55 	bl	20021f6c <HAL_HASH_run_help.isra.0>
200220c2:	4b08      	ldr	r3, [pc, #32]	@ (200220e4 <HAL_HASH_run+0x38>)
200220c4:	685a      	ldr	r2, [r3, #4]
200220c6:	0752      	lsls	r2, r2, #29
200220c8:	d4fc      	bmi.n	200220c4 <HAL_HASH_run+0x18>
200220ca:	689a      	ldr	r2, [r3, #8]
200220cc:	f002 0238 	and.w	r2, r2, #56	@ 0x38
200220d0:	609a      	str	r2, [r3, #8]
200220d2:	6898      	ldr	r0, [r3, #8]
200220d4:	f000 0030 	and.w	r0, r0, #48	@ 0x30
200220d8:	3800      	subs	r0, #0
200220da:	bf18      	it	ne
200220dc:	2001      	movne	r0, #1
200220de:	bd10      	pop	{r4, pc}
200220e0:	e000e100 	.word	0xe000e100
200220e4:	5000d000 	.word	0x5000d000

200220e8 <HAL_HASH_reset>:
200220e8:	2208      	movs	r2, #8
200220ea:	2000      	movs	r0, #0
200220ec:	4b01      	ldr	r3, [pc, #4]	@ (200220f4 <HAL_HASH_reset+0xc>)
200220ee:	601a      	str	r2, [r3, #0]
200220f0:	6018      	str	r0, [r3, #0]
200220f2:	4770      	bx	lr
200220f4:	5000d000 	.word	0x5000d000

200220f8 <HAL_HASH_init>:
200220f8:	0693      	lsls	r3, r2, #26
200220fa:	b570      	push	{r4, r5, r6, lr}
200220fc:	4606      	mov	r6, r0
200220fe:	460c      	mov	r4, r1
20022100:	4615      	mov	r5, r2
20022102:	d11c      	bne.n	2002213e <HAL_HASH_init+0x46>
20022104:	2903      	cmp	r1, #3
20022106:	d81a      	bhi.n	2002213e <HAL_HASH_init+0x46>
20022108:	f7ff ffee 	bl	200220e8 <HAL_HASH_reset>
2002210c:	b13e      	cbz	r6, 2002211e <HAL_HASH_init+0x26>
2002210e:	4b0d      	ldr	r3, [pc, #52]	@ (20022144 <HAL_HASH_init+0x4c>)
20022110:	480d      	ldr	r0, [pc, #52]	@ (20022148 <HAL_HASH_init+0x50>)
20022112:	5c5a      	ldrb	r2, [r3, r1]
20022114:	4631      	mov	r1, r6
20022116:	f008 fb8f 	bl	2002a838 <memcpy>
2002211a:	f044 0420 	orr.w	r4, r4, #32
2002211e:	4b0b      	ldr	r3, [pc, #44]	@ (2002214c <HAL_HASH_init+0x54>)
20022120:	f044 0180 	orr.w	r1, r4, #128	@ 0x80
20022124:	6519      	str	r1, [r3, #80]	@ 0x50
20022126:	b11d      	cbz	r5, 20022130 <HAL_HASH_init+0x38>
20022128:	f8c3 509c 	str.w	r5, [r3, #156]	@ 0x9c
2002212c:	f444 71c0 	orr.w	r1, r4, #384	@ 0x180
20022130:	4807      	ldr	r0, [pc, #28]	@ (20022150 <HAL_HASH_init+0x58>)
20022132:	462a      	mov	r2, r5
20022134:	6519      	str	r1, [r3, #80]	@ 0x50
20022136:	f000 fca6 	bl	20022a86 <HAL_DBG_printf>
2002213a:	2000      	movs	r0, #0
2002213c:	bd70      	pop	{r4, r5, r6, pc}
2002213e:	f04f 30ff 	mov.w	r0, #4294967295
20022142:	e7fb      	b.n	2002213c <HAL_HASH_init+0x44>
20022144:	2002b82c 	.word	0x2002b82c
20022148:	5000d05c 	.word	0x5000d05c
2002214c:	5000d000 	.word	0x5000d000
20022150:	2002a9a9 	.word	0x2002a9a9

20022154 <HAL_HASH_result>:
20022154:	b510      	push	{r4, lr}
20022156:	4c08      	ldr	r4, [pc, #32]	@ (20022178 <HAL_HASH_result+0x24>)
20022158:	4a08      	ldr	r2, [pc, #32]	@ (2002217c <HAL_HASH_result+0x28>)
2002215a:	6d23      	ldr	r3, [r4, #80]	@ 0x50
2002215c:	f104 017c 	add.w	r1, r4, #124	@ 0x7c
20022160:	f003 0307 	and.w	r3, r3, #7
20022164:	5cd2      	ldrb	r2, [r2, r3]
20022166:	f008 fb67 	bl	2002a838 <memcpy>
2002216a:	f8d4 10a4 	ldr.w	r1, [r4, #164]	@ 0xa4
2002216e:	4804      	ldr	r0, [pc, #16]	@ (20022180 <HAL_HASH_result+0x2c>)
20022170:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20022174:	f000 bc87 	b.w	20022a86 <HAL_DBG_printf>
20022178:	5000d000 	.word	0x5000d000
2002217c:	2002b82c 	.word	0x2002b82c
20022180:	2002a9dd 	.word	0x2002a9dd

20022184 <HAL_NVIC_SetPriority>:
20022184:	2a0f      	cmp	r2, #15
20022186:	b530      	push	{r4, r5, lr}
20022188:	d900      	bls.n	2002218c <HAL_NVIC_SetPriority+0x8>
2002218a:	e7fe      	b.n	2002218a <HAL_NVIC_SetPriority+0x6>
2002218c:	290f      	cmp	r1, #15
2002218e:	d900      	bls.n	20022192 <HAL_NVIC_SetPriority+0xe>
20022190:	e7fe      	b.n	20022190 <HAL_NVIC_SetPriority+0xc>
20022192:	4b15      	ldr	r3, [pc, #84]	@ (200221e8 <HAL_NVIC_SetPriority+0x64>)
20022194:	68dc      	ldr	r4, [r3, #12]
20022196:	f3c4 2402 	ubfx	r4, r4, #8, #3
2002219a:	f1c4 0307 	rsb	r3, r4, #7
2002219e:	1ce5      	adds	r5, r4, #3
200221a0:	2b03      	cmp	r3, #3
200221a2:	bf28      	it	cs
200221a4:	2303      	movcs	r3, #3
200221a6:	2d06      	cmp	r5, #6
200221a8:	f04f 35ff 	mov.w	r5, #4294967295
200221ac:	bf94      	ite	ls
200221ae:	2400      	movls	r4, #0
200221b0:	3c04      	subhi	r4, #4
200221b2:	fa05 f303 	lsl.w	r3, r5, r3
200221b6:	ea21 0303 	bic.w	r3, r1, r3
200221ba:	40a5      	lsls	r5, r4
200221bc:	ea22 0205 	bic.w	r2, r2, r5
200221c0:	40a3      	lsls	r3, r4
200221c2:	2800      	cmp	r0, #0
200221c4:	ea43 0302 	orr.w	r3, r3, r2
200221c8:	bfac      	ite	ge
200221ca:	f100 4060 	addge.w	r0, r0, #3758096384	@ 0xe0000000
200221ce:	4a07      	ldrlt	r2, [pc, #28]	@ (200221ec <HAL_NVIC_SetPriority+0x68>)
200221d0:	ea4f 1343 	mov.w	r3, r3, lsl #5
200221d4:	b2db      	uxtb	r3, r3
200221d6:	bfab      	itete	ge
200221d8:	f500 4061 	addge.w	r0, r0, #57600	@ 0xe100
200221dc:	f000 000f 	andlt.w	r0, r0, #15
200221e0:	f880 3300 	strbge.w	r3, [r0, #768]	@ 0x300
200221e4:	5413      	strblt	r3, [r2, r0]
200221e6:	bd30      	pop	{r4, r5, pc}
200221e8:	e000ed00 	.word	0xe000ed00
200221ec:	e000ed14 	.word	0xe000ed14

200221f0 <HAL_NVIC_EnableIRQ>:
200221f0:	2800      	cmp	r0, #0
200221f2:	da00      	bge.n	200221f6 <HAL_NVIC_EnableIRQ+0x6>
200221f4:	e7fe      	b.n	200221f4 <HAL_NVIC_EnableIRQ+0x4>
200221f6:	2301      	movs	r3, #1
200221f8:	0941      	lsrs	r1, r0, #5
200221fa:	4a03      	ldr	r2, [pc, #12]	@ (20022208 <HAL_NVIC_EnableIRQ+0x18>)
200221fc:	f000 001f 	and.w	r0, r0, #31
20022200:	4083      	lsls	r3, r0
20022202:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
20022206:	4770      	bx	lr
20022208:	e000e100 	.word	0xe000e100

2002220c <HAL_NVIC_DisableIRQ>:
2002220c:	2800      	cmp	r0, #0
2002220e:	da00      	bge.n	20022212 <HAL_NVIC_DisableIRQ+0x6>
20022210:	e7fe      	b.n	20022210 <HAL_NVIC_DisableIRQ+0x4>
20022212:	2201      	movs	r2, #1
20022214:	4906      	ldr	r1, [pc, #24]	@ (20022230 <HAL_NVIC_DisableIRQ+0x24>)
20022216:	0943      	lsrs	r3, r0, #5
20022218:	f000 001f 	and.w	r0, r0, #31
2002221c:	4082      	lsls	r2, r0
2002221e:	3320      	adds	r3, #32
20022220:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20022224:	f3bf 8f4f 	dsb	sy
20022228:	f3bf 8f6f 	isb	sy
2002222c:	4770      	bx	lr
2002222e:	bf00      	nop
20022230:	e000e100 	.word	0xe000e100

20022234 <DMA_Init>:
20022234:	2302      	movs	r3, #2
20022236:	b530      	push	{r4, r5, lr}
20022238:	6a42      	ldr	r2, [r0, #36]	@ 0x24
2002223a:	f880 302d 	strb.w	r3, [r0, #45]	@ 0x2d
2002223e:	6803      	ldr	r3, [r0, #0]
20022240:	611a      	str	r2, [r3, #16]
20022242:	e9d0 3402 	ldrd	r3, r4, [r0, #8]
20022246:	4323      	orrs	r3, r4
20022248:	6904      	ldr	r4, [r0, #16]
2002224a:	6801      	ldr	r1, [r0, #0]
2002224c:	4323      	orrs	r3, r4
2002224e:	6944      	ldr	r4, [r0, #20]
20022250:	680a      	ldr	r2, [r1, #0]
20022252:	4323      	orrs	r3, r4
20022254:	6984      	ldr	r4, [r0, #24]
20022256:	f36f 120e 	bfc	r2, #4, #11
2002225a:	4323      	orrs	r3, r4
2002225c:	69c4      	ldr	r4, [r0, #28]
2002225e:	4323      	orrs	r3, r4
20022260:	6a04      	ldr	r4, [r0, #32]
20022262:	4323      	orrs	r3, r4
20022264:	4313      	orrs	r3, r2
20022266:	600b      	str	r3, [r1, #0]
20022268:	6883      	ldr	r3, [r0, #8]
2002226a:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
2002226e:	d018      	beq.n	200222a2 <DMA_Init+0x6e>
20022270:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
20022272:	6c82      	ldr	r2, [r0, #72]	@ 0x48
20022274:	f3c1 0387 	ubfx	r3, r1, #2, #8
20022278:	06c9      	lsls	r1, r1, #27
2002227a:	d41b      	bmi.n	200222b4 <DMA_Init+0x80>
2002227c:	243f      	movs	r4, #63	@ 0x3f
2002227e:	f003 0307 	and.w	r3, r3, #7
20022282:	f8d2 10a8 	ldr.w	r1, [r2, #168]	@ 0xa8
20022286:	00db      	lsls	r3, r3, #3
20022288:	409c      	lsls	r4, r3
2002228a:	ea21 0104 	bic.w	r1, r1, r4
2002228e:	f8c2 10a8 	str.w	r1, [r2, #168]	@ 0xa8
20022292:	6c81      	ldr	r1, [r0, #72]	@ 0x48
20022294:	6842      	ldr	r2, [r0, #4]
20022296:	f8d1 40a8 	ldr.w	r4, [r1, #168]	@ 0xa8
2002229a:	409a      	lsls	r2, r3
2002229c:	4322      	orrs	r2, r4
2002229e:	f8c1 20a8 	str.w	r2, [r1, #168]	@ 0xa8
200222a2:	6982      	ldr	r2, [r0, #24]
200222a4:	f5b2 6f80 	cmp.w	r2, #1024	@ 0x400
200222a8:	d018      	beq.n	200222dc <DMA_Init+0xa8>
200222aa:	f5b2 6f00 	cmp.w	r2, #2048	@ 0x800
200222ae:	d01f      	beq.n	200222f0 <DMA_Init+0xbc>
200222b0:	b1aa      	cbz	r2, 200222de <DMA_Init+0xaa>
200222b2:	e7fe      	b.n	200222b2 <DMA_Init+0x7e>
200222b4:	243f      	movs	r4, #63	@ 0x3f
200222b6:	f003 0303 	and.w	r3, r3, #3
200222ba:	f8d2 10ac 	ldr.w	r1, [r2, #172]	@ 0xac
200222be:	00db      	lsls	r3, r3, #3
200222c0:	409c      	lsls	r4, r3
200222c2:	ea21 0104 	bic.w	r1, r1, r4
200222c6:	f8c2 10ac 	str.w	r1, [r2, #172]	@ 0xac
200222ca:	6c81      	ldr	r1, [r0, #72]	@ 0x48
200222cc:	6842      	ldr	r2, [r0, #4]
200222ce:	f8d1 40ac 	ldr.w	r4, [r1, #172]	@ 0xac
200222d2:	409a      	lsls	r2, r3
200222d4:	4322      	orrs	r2, r4
200222d6:	f8c1 20ac 	str.w	r2, [r1, #172]	@ 0xac
200222da:	e7e2      	b.n	200222a2 <DMA_Init+0x6e>
200222dc:	2201      	movs	r2, #1
200222de:	6943      	ldr	r3, [r0, #20]
200222e0:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
200222e4:	d006      	beq.n	200222f4 <DMA_Init+0xc0>
200222e6:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
200222ea:	d02b      	beq.n	20022344 <DMA_Init+0x110>
200222ec:	b11b      	cbz	r3, 200222f6 <DMA_Init+0xc2>
200222ee:	e7fe      	b.n	200222ee <DMA_Init+0xba>
200222f0:	2202      	movs	r2, #2
200222f2:	e7f4      	b.n	200222de <DMA_Init+0xaa>
200222f4:	2301      	movs	r3, #1
200222f6:	6901      	ldr	r1, [r0, #16]
200222f8:	f1a1 0480 	sub.w	r4, r1, #128	@ 0x80
200222fc:	4261      	negs	r1, r4
200222fe:	4161      	adcs	r1, r4
20022300:	68c4      	ldr	r4, [r0, #12]
20022302:	f1a4 0540 	sub.w	r5, r4, #64	@ 0x40
20022306:	426c      	negs	r4, r5
20022308:	416c      	adcs	r4, r5
2002230a:	6885      	ldr	r5, [r0, #8]
2002230c:	2d10      	cmp	r5, #16
2002230e:	bf1f      	itttt	ne
20022310:	f880 1065 	strbne.w	r1, [r0, #101]	@ 0x65
20022314:	4619      	movne	r1, r3
20022316:	4613      	movne	r3, r2
20022318:	460a      	movne	r2, r1
2002231a:	f880 3067 	strb.w	r3, [r0, #103]	@ 0x67
2002231e:	f880 2066 	strb.w	r2, [r0, #102]	@ 0x66
20022322:	f04f 0300 	mov.w	r3, #0
20022326:	f04f 0201 	mov.w	r2, #1
2002232a:	6443      	str	r3, [r0, #68]	@ 0x44
2002232c:	bf06      	itte	eq
2002232e:	f880 4065 	strbeq.w	r4, [r0, #101]	@ 0x65
20022332:	f880 1064 	strbeq.w	r1, [r0, #100]	@ 0x64
20022336:	f880 4064 	strbne.w	r4, [r0, #100]	@ 0x64
2002233a:	f880 202d 	strb.w	r2, [r0, #45]	@ 0x2d
2002233e:	f880 302c 	strb.w	r3, [r0, #44]	@ 0x2c
20022342:	bd30      	pop	{r4, r5, pc}
20022344:	2302      	movs	r3, #2
20022346:	e7d6      	b.n	200222f6 <DMA_Init+0xc2>

20022348 <DMA_AllocChannel>:
20022348:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002234a:	4b2c      	ldr	r3, [pc, #176]	@ (200223fc <DMA_AllocChannel+0xb4>)
2002234c:	6802      	ldr	r2, [r0, #0]
2002234e:	4413      	add	r3, r2
20022350:	2ba0      	cmp	r3, #160	@ 0xa0
20022352:	d904      	bls.n	2002235e <DMA_AllocChannel+0x16>
20022354:	4b2a      	ldr	r3, [pc, #168]	@ (20022400 <DMA_AllocChannel+0xb8>)
20022356:	4413      	add	r3, r2
20022358:	2ba0      	cmp	r3, #160	@ 0xa0
2002235a:	d90f      	bls.n	2002237c <DMA_AllocChannel+0x34>
2002235c:	e7fe      	b.n	2002235c <DMA_AllocChannel+0x14>
2002235e:	2632      	movs	r6, #50	@ 0x32
20022360:	f8df c0a8 	ldr.w	ip, [pc, #168]	@ 2002240c <DMA_AllocChannel+0xc4>
20022364:	4b27      	ldr	r3, [pc, #156]	@ (20022404 <DMA_AllocChannel+0xbc>)
20022366:	f3ef 8710 	mrs	r7, PRIMASK
2002236a:	2201      	movs	r2, #1
2002236c:	f382 8810 	msr	PRIMASK, r2
20022370:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
20022372:	2d1f      	cmp	r5, #31
20022374:	ea4f 0495 	mov.w	r4, r5, lsr #2
20022378:	d905      	bls.n	20022386 <DMA_AllocChannel+0x3e>
2002237a:	e7fe      	b.n	2002237a <DMA_AllocChannel+0x32>
2002237c:	2602      	movs	r6, #2
2002237e:	f8df c090 	ldr.w	ip, [pc, #144]	@ 20022410 <DMA_AllocChannel+0xc8>
20022382:	4b21      	ldr	r3, [pc, #132]	@ (20022408 <DMA_AllocChannel+0xc0>)
20022384:	e7ef      	b.n	20022366 <DMA_AllocChannel+0x1e>
20022386:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
2002238a:	f895 e004 	ldrb.w	lr, [r5, #4]
2002238e:	f1be 0f00 	cmp.w	lr, #0
20022392:	d02e      	beq.n	200223f2 <DMA_AllocChannel+0xaa>
20022394:	f853 2034 	ldr.w	r2, [r3, r4, lsl #3]
20022398:	4282      	cmp	r2, r0
2002239a:	d103      	bne.n	200223a4 <DMA_AllocChannel+0x5c>
2002239c:	f387 8810 	msr	PRIMASK, r7
200223a0:	2002      	movs	r0, #2
200223a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200223a4:	2200      	movs	r2, #0
200223a6:	791c      	ldrb	r4, [r3, #4]
200223a8:	461d      	mov	r5, r3
200223aa:	b9e4      	cbnz	r4, 200223e6 <DMA_AllocChannel+0x9e>
200223ac:	2301      	movs	r3, #1
200223ae:	712b      	strb	r3, [r5, #4]
200223b0:	2314      	movs	r3, #20
200223b2:	fb03 c302 	mla	r3, r3, r2, ip
200223b6:	4416      	add	r6, r2
200223b8:	0092      	lsls	r2, r2, #2
200223ba:	b274      	sxtb	r4, r6
200223bc:	6003      	str	r3, [r0, #0]
200223be:	64c2      	str	r2, [r0, #76]	@ 0x4c
200223c0:	f387 8810 	msr	PRIMASK, r7
200223c4:	b121      	cbz	r1, 200223d0 <DMA_AllocChannel+0x88>
200223c6:	682b      	ldr	r3, [r5, #0]
200223c8:	4283      	cmp	r3, r0
200223ca:	d001      	beq.n	200223d0 <DMA_AllocChannel+0x88>
200223cc:	f7ff ff32 	bl	20022234 <DMA_Init>
200223d0:	2200      	movs	r2, #0
200223d2:	6028      	str	r0, [r5, #0]
200223d4:	4611      	mov	r1, r2
200223d6:	4620      	mov	r0, r4
200223d8:	f7ff fed4 	bl	20022184 <HAL_NVIC_SetPriority>
200223dc:	4620      	mov	r0, r4
200223de:	f7ff ff07 	bl	200221f0 <HAL_NVIC_EnableIRQ>
200223e2:	2000      	movs	r0, #0
200223e4:	e7dd      	b.n	200223a2 <DMA_AllocChannel+0x5a>
200223e6:	3201      	adds	r2, #1
200223e8:	2a08      	cmp	r2, #8
200223ea:	f103 0308 	add.w	r3, r3, #8
200223ee:	d1da      	bne.n	200223a6 <DMA_AllocChannel+0x5e>
200223f0:	e7d4      	b.n	2002239c <DMA_AllocChannel+0x54>
200223f2:	4434      	add	r4, r6
200223f4:	712a      	strb	r2, [r5, #4]
200223f6:	b264      	sxtb	r4, r4
200223f8:	e7e2      	b.n	200223c0 <DMA_AllocChannel+0x78>
200223fa:	bf00      	nop
200223fc:	aff7eff8 	.word	0xaff7eff8
20022400:	bfffeff8 	.word	0xbfffeff8
20022404:	20049f1c 	.word	0x20049f1c
20022408:	20049edc 	.word	0x20049edc
2002240c:	50081008 	.word	0x50081008
20022410:	40001008 	.word	0x40001008

20022414 <DMA_FreeChannel.isra.0>:
20022414:	b538      	push	{r3, r4, r5, lr}
20022416:	4a13      	ldr	r2, [pc, #76]	@ (20022464 <DMA_FreeChannel.isra.0+0x50>)
20022418:	6c83      	ldr	r3, [r0, #72]	@ 0x48
2002241a:	4293      	cmp	r3, r2
2002241c:	d003      	beq.n	20022426 <DMA_FreeChannel.isra.0+0x12>
2002241e:	4a12      	ldr	r2, [pc, #72]	@ (20022468 <DMA_FreeChannel.isra.0+0x54>)
20022420:	4293      	cmp	r3, r2
20022422:	d008      	beq.n	20022436 <DMA_FreeChannel.isra.0+0x22>
20022424:	e7fe      	b.n	20022424 <DMA_FreeChannel.isra.0+0x10>
20022426:	2132      	movs	r1, #50	@ 0x32
20022428:	4a10      	ldr	r2, [pc, #64]	@ (2002246c <DMA_FreeChannel.isra.0+0x58>)
2002242a:	6cc4      	ldr	r4, [r0, #76]	@ 0x4c
2002242c:	2c1f      	cmp	r4, #31
2002242e:	ea4f 0394 	mov.w	r3, r4, lsr #2
20022432:	d903      	bls.n	2002243c <DMA_FreeChannel.isra.0+0x28>
20022434:	e7fe      	b.n	20022434 <DMA_FreeChannel.isra.0+0x20>
20022436:	2102      	movs	r1, #2
20022438:	4a0d      	ldr	r2, [pc, #52]	@ (20022470 <DMA_FreeChannel.isra.0+0x5c>)
2002243a:	e7f6      	b.n	2002242a <DMA_FreeChannel.isra.0+0x16>
2002243c:	f3ef 8410 	mrs	r4, PRIMASK
20022440:	2501      	movs	r5, #1
20022442:	f385 8810 	msr	PRIMASK, r5
20022446:	eb02 05c3 	add.w	r5, r2, r3, lsl #3
2002244a:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
2002244e:	4290      	cmp	r0, r2
20022450:	d105      	bne.n	2002245e <DMA_FreeChannel.isra.0+0x4a>
20022452:	1858      	adds	r0, r3, r1
20022454:	b240      	sxtb	r0, r0
20022456:	f7ff fed9 	bl	2002220c <HAL_NVIC_DisableIRQ>
2002245a:	2300      	movs	r3, #0
2002245c:	712b      	strb	r3, [r5, #4]
2002245e:	f384 8810 	msr	PRIMASK, r4
20022462:	bd38      	pop	{r3, r4, r5, pc}
20022464:	50081000 	.word	0x50081000
20022468:	40001000 	.word	0x40001000
2002246c:	20049f1c 	.word	0x20049f1c
20022470:	20049edc 	.word	0x20049edc

20022474 <HAL_DMA_Init>:
20022474:	b538      	push	{r3, r4, r5, lr}
20022476:	4604      	mov	r4, r0
20022478:	2800      	cmp	r0, #0
2002247a:	d053      	beq.n	20022524 <HAL_DMA_Init+0xb0>
2002247c:	6883      	ldr	r3, [r0, #8]
2002247e:	f033 0210 	bics.w	r2, r3, #16
20022482:	d003      	beq.n	2002248c <HAL_DMA_Init+0x18>
20022484:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
20022488:	d000      	beq.n	2002248c <HAL_DMA_Init+0x18>
2002248a:	e7fe      	b.n	2002248a <HAL_DMA_Init+0x16>
2002248c:	68e3      	ldr	r3, [r4, #12]
2002248e:	f033 0340 	bics.w	r3, r3, #64	@ 0x40
20022492:	d000      	beq.n	20022496 <HAL_DMA_Init+0x22>
20022494:	e7fe      	b.n	20022494 <HAL_DMA_Init+0x20>
20022496:	6923      	ldr	r3, [r4, #16]
20022498:	f033 0380 	bics.w	r3, r3, #128	@ 0x80
2002249c:	d000      	beq.n	200224a0 <HAL_DMA_Init+0x2c>
2002249e:	e7fe      	b.n	2002249e <HAL_DMA_Init+0x2a>
200224a0:	6963      	ldr	r3, [r4, #20]
200224a2:	f433 7280 	bics.w	r2, r3, #256	@ 0x100
200224a6:	d003      	beq.n	200224b0 <HAL_DMA_Init+0x3c>
200224a8:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
200224ac:	d000      	beq.n	200224b0 <HAL_DMA_Init+0x3c>
200224ae:	e7fe      	b.n	200224ae <HAL_DMA_Init+0x3a>
200224b0:	69a3      	ldr	r3, [r4, #24]
200224b2:	f433 6280 	bics.w	r2, r3, #1024	@ 0x400
200224b6:	d003      	beq.n	200224c0 <HAL_DMA_Init+0x4c>
200224b8:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
200224bc:	d000      	beq.n	200224c0 <HAL_DMA_Init+0x4c>
200224be:	e7fe      	b.n	200224be <HAL_DMA_Init+0x4a>
200224c0:	69e3      	ldr	r3, [r4, #28]
200224c2:	f033 0320 	bics.w	r3, r3, #32
200224c6:	d000      	beq.n	200224ca <HAL_DMA_Init+0x56>
200224c8:	e7fe      	b.n	200224c8 <HAL_DMA_Init+0x54>
200224ca:	6a23      	ldr	r3, [r4, #32]
200224cc:	f433 5340 	bics.w	r3, r3, #12288	@ 0x3000
200224d0:	d000      	beq.n	200224d4 <HAL_DMA_Init+0x60>
200224d2:	e7fe      	b.n	200224d2 <HAL_DMA_Init+0x5e>
200224d4:	6863      	ldr	r3, [r4, #4]
200224d6:	2b3f      	cmp	r3, #63	@ 0x3f
200224d8:	d900      	bls.n	200224dc <HAL_DMA_Init+0x68>
200224da:	e7fe      	b.n	200224da <HAL_DMA_Init+0x66>
200224dc:	6822      	ldr	r2, [r4, #0]
200224de:	4b13      	ldr	r3, [pc, #76]	@ (2002252c <HAL_DMA_Init+0xb8>)
200224e0:	4413      	add	r3, r2
200224e2:	2b8c      	cmp	r3, #140	@ 0x8c
200224e4:	d813      	bhi.n	2002250e <HAL_DMA_Init+0x9a>
200224e6:	2214      	movs	r2, #20
200224e8:	fbb3 f3f2 	udiv	r3, r3, r2
200224ec:	009b      	lsls	r3, r3, #2
200224ee:	64e3      	str	r3, [r4, #76]	@ 0x4c
200224f0:	4b0f      	ldr	r3, [pc, #60]	@ (20022530 <HAL_DMA_Init+0xbc>)
200224f2:	64a3      	str	r3, [r4, #72]	@ 0x48
200224f4:	2100      	movs	r1, #0
200224f6:	4620      	mov	r0, r4
200224f8:	f7ff ff26 	bl	20022348 <DMA_AllocChannel>
200224fc:	4605      	mov	r5, r0
200224fe:	b998      	cbnz	r0, 20022528 <HAL_DMA_Init+0xb4>
20022500:	4620      	mov	r0, r4
20022502:	f7ff fe97 	bl	20022234 <DMA_Init>
20022506:	f7ff ff85 	bl	20022414 <DMA_FreeChannel.isra.0>
2002250a:	4628      	mov	r0, r5
2002250c:	bd38      	pop	{r3, r4, r5, pc}
2002250e:	4b09      	ldr	r3, [pc, #36]	@ (20022534 <HAL_DMA_Init+0xc0>)
20022510:	4413      	add	r3, r2
20022512:	2b8c      	cmp	r3, #140	@ 0x8c
20022514:	d8ee      	bhi.n	200224f4 <HAL_DMA_Init+0x80>
20022516:	2214      	movs	r2, #20
20022518:	fbb3 f3f2 	udiv	r3, r3, r2
2002251c:	009b      	lsls	r3, r3, #2
2002251e:	64e3      	str	r3, [r4, #76]	@ 0x4c
20022520:	4b05      	ldr	r3, [pc, #20]	@ (20022538 <HAL_DMA_Init+0xc4>)
20022522:	e7e6      	b.n	200224f2 <HAL_DMA_Init+0x7e>
20022524:	2501      	movs	r5, #1
20022526:	e7f0      	b.n	2002250a <HAL_DMA_Init+0x96>
20022528:	2502      	movs	r5, #2
2002252a:	e7ee      	b.n	2002250a <HAL_DMA_Init+0x96>
2002252c:	aff7eff8 	.word	0xaff7eff8
20022530:	50081000 	.word	0x50081000
20022534:	bfffeff8 	.word	0xbfffeff8
20022538:	40001000 	.word	0x40001000

2002253c <HAL_DMA_DeInit>:
2002253c:	b510      	push	{r4, lr}
2002253e:	4604      	mov	r4, r0
20022540:	2800      	cmp	r0, #0
20022542:	d051      	beq.n	200225e8 <HAL_DMA_DeInit+0xac>
20022544:	6802      	ldr	r2, [r0, #0]
20022546:	6813      	ldr	r3, [r2, #0]
20022548:	f023 0301 	bic.w	r3, r3, #1
2002254c:	6013      	str	r3, [r2, #0]
2002254e:	6802      	ldr	r2, [r0, #0]
20022550:	4b26      	ldr	r3, [pc, #152]	@ (200225ec <HAL_DMA_DeInit+0xb0>)
20022552:	4413      	add	r3, r2
20022554:	2b8c      	cmp	r3, #140	@ 0x8c
20022556:	d82f      	bhi.n	200225b8 <HAL_DMA_DeInit+0x7c>
20022558:	2114      	movs	r1, #20
2002255a:	fbb3 f3f1 	udiv	r3, r3, r1
2002255e:	009b      	lsls	r3, r3, #2
20022560:	64c3      	str	r3, [r0, #76]	@ 0x4c
20022562:	4b23      	ldr	r3, [pc, #140]	@ (200225f0 <HAL_DMA_DeInit+0xb4>)
20022564:	64a3      	str	r3, [r4, #72]	@ 0x48
20022566:	2300      	movs	r3, #0
20022568:	6013      	str	r3, [r2, #0]
2002256a:	e9d4 1312 	ldrd	r1, r3, [r4, #72]	@ 0x48
2002256e:	f003 021c 	and.w	r2, r3, #28
20022572:	2301      	movs	r3, #1
20022574:	4093      	lsls	r3, r2
20022576:	604b      	str	r3, [r1, #4]
20022578:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
2002257a:	6ca1      	ldr	r1, [r4, #72]	@ 0x48
2002257c:	2b0f      	cmp	r3, #15
2002257e:	ea4f 0293 	mov.w	r2, r3, lsr #2
20022582:	d824      	bhi.n	200225ce <HAL_DMA_DeInit+0x92>
20022584:	203f      	movs	r0, #63	@ 0x3f
20022586:	005b      	lsls	r3, r3, #1
20022588:	f8d1 20a8 	ldr.w	r2, [r1, #168]	@ 0xa8
2002258c:	f003 0338 	and.w	r3, r3, #56	@ 0x38
20022590:	fa00 f303 	lsl.w	r3, r0, r3
20022594:	ea22 0303 	bic.w	r3, r2, r3
20022598:	f8c1 30a8 	str.w	r3, [r1, #168]	@ 0xa8
2002259c:	4620      	mov	r0, r4
2002259e:	f7ff ff39 	bl	20022414 <DMA_FreeChannel.isra.0>
200225a2:	2000      	movs	r0, #0
200225a4:	e9c4 000d 	strd	r0, r0, [r4, #52]	@ 0x34
200225a8:	e9c4 000f 	strd	r0, r0, [r4, #60]	@ 0x3c
200225ac:	6460      	str	r0, [r4, #68]	@ 0x44
200225ae:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
200225b2:	f884 002d 	strb.w	r0, [r4, #45]	@ 0x2d
200225b6:	bd10      	pop	{r4, pc}
200225b8:	4b0e      	ldr	r3, [pc, #56]	@ (200225f4 <HAL_DMA_DeInit+0xb8>)
200225ba:	4413      	add	r3, r2
200225bc:	2b8c      	cmp	r3, #140	@ 0x8c
200225be:	d8d2      	bhi.n	20022566 <HAL_DMA_DeInit+0x2a>
200225c0:	2114      	movs	r1, #20
200225c2:	fbb3 f3f1 	udiv	r3, r3, r1
200225c6:	009b      	lsls	r3, r3, #2
200225c8:	64c3      	str	r3, [r0, #76]	@ 0x4c
200225ca:	4b0b      	ldr	r3, [pc, #44]	@ (200225f8 <HAL_DMA_DeInit+0xbc>)
200225cc:	e7ca      	b.n	20022564 <HAL_DMA_DeInit+0x28>
200225ce:	f002 0303 	and.w	r3, r2, #3
200225d2:	223f      	movs	r2, #63	@ 0x3f
200225d4:	f8d1 00ac 	ldr.w	r0, [r1, #172]	@ 0xac
200225d8:	00db      	lsls	r3, r3, #3
200225da:	fa02 f303 	lsl.w	r3, r2, r3
200225de:	ea20 0303 	bic.w	r3, r0, r3
200225e2:	f8c1 30ac 	str.w	r3, [r1, #172]	@ 0xac
200225e6:	e7d9      	b.n	2002259c <HAL_DMA_DeInit+0x60>
200225e8:	2001      	movs	r0, #1
200225ea:	e7e4      	b.n	200225b6 <HAL_DMA_DeInit+0x7a>
200225ec:	aff7eff8 	.word	0xaff7eff8
200225f0:	50081000 	.word	0x50081000
200225f4:	bfffeff8 	.word	0xbfffeff8
200225f8:	40001000 	.word	0x40001000

200225fc <HAL_DMA_PollForTransfer>:
200225fc:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
20022600:	f890 302d 	ldrb.w	r3, [r0, #45]	@ 0x2d
20022604:	4617      	mov	r7, r2
20022606:	2b02      	cmp	r3, #2
20022608:	4604      	mov	r4, r0
2002260a:	4688      	mov	r8, r1
2002260c:	b2da      	uxtb	r2, r3
2002260e:	d005      	beq.n	2002261c <HAL_DMA_PollForTransfer+0x20>
20022610:	2304      	movs	r3, #4
20022612:	6443      	str	r3, [r0, #68]	@ 0x44
20022614:	2300      	movs	r3, #0
20022616:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
2002261a:	e006      	b.n	2002262a <HAL_DMA_PollForTransfer+0x2e>
2002261c:	6803      	ldr	r3, [r0, #0]
2002261e:	681b      	ldr	r3, [r3, #0]
20022620:	0699      	lsls	r1, r3, #26
20022622:	d505      	bpl.n	20022630 <HAL_DMA_PollForTransfer+0x34>
20022624:	f44f 7380 	mov.w	r3, #256	@ 0x100
20022628:	6443      	str	r3, [r0, #68]	@ 0x44
2002262a:	2001      	movs	r0, #1
2002262c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
20022630:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
20022632:	f005 051c 	and.w	r5, r5, #28
20022636:	f1b8 0f00 	cmp.w	r8, #0
2002263a:	d123      	bne.n	20022684 <HAL_DMA_PollForTransfer+0x88>
2002263c:	fa02 f505 	lsl.w	r5, r2, r5
20022640:	f7ff fbda 	bl	20021df8 <HAL_GetTick>
20022644:	f04f 0a08 	mov.w	sl, #8
20022648:	4681      	mov	r9, r0
2002264a:	e9d4 6312 	ldrd	r6, r3, [r4, #72]	@ 0x48
2002264e:	f003 031c 	and.w	r3, r3, #28
20022652:	fa0a f103 	lsl.w	r1, sl, r3
20022656:	6832      	ldr	r2, [r6, #0]
20022658:	ea12 0b05 	ands.w	fp, r2, r5
2002265c:	d016      	beq.n	2002268c <HAL_DMA_PollForTransfer+0x90>
2002265e:	f1b8 0f00 	cmp.w	r8, #0
20022662:	d136      	bne.n	200226d2 <HAL_DMA_PollForTransfer+0xd6>
20022664:	2202      	movs	r2, #2
20022666:	fa02 f303 	lsl.w	r3, r2, r3
2002266a:	6073      	str	r3, [r6, #4]
2002266c:	6d23      	ldr	r3, [r4, #80]	@ 0x50
2002266e:	b92b      	cbnz	r3, 2002267c <HAL_DMA_PollForTransfer+0x80>
20022670:	4620      	mov	r0, r4
20022672:	f7ff fecf 	bl	20022414 <DMA_FreeChannel.isra.0>
20022676:	2301      	movs	r3, #1
20022678:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
2002267c:	2000      	movs	r0, #0
2002267e:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
20022682:	e7d3      	b.n	2002262c <HAL_DMA_PollForTransfer+0x30>
20022684:	2304      	movs	r3, #4
20022686:	fa03 f505 	lsl.w	r5, r3, r5
2002268a:	e7d9      	b.n	20022640 <HAL_DMA_PollForTransfer+0x44>
2002268c:	6832      	ldr	r2, [r6, #0]
2002268e:	4211      	tst	r1, r2
20022690:	d00c      	beq.n	200226ac <HAL_DMA_PollForTransfer+0xb0>
20022692:	2501      	movs	r5, #1
20022694:	fa05 f303 	lsl.w	r3, r5, r3
20022698:	6073      	str	r3, [r6, #4]
2002269a:	4620      	mov	r0, r4
2002269c:	6465      	str	r5, [r4, #68]	@ 0x44
2002269e:	f7ff feb9 	bl	20022414 <DMA_FreeChannel.isra.0>
200226a2:	f884 502d 	strb.w	r5, [r4, #45]	@ 0x2d
200226a6:	f884 b02c 	strb.w	fp, [r4, #44]	@ 0x2c
200226aa:	e7be      	b.n	2002262a <HAL_DMA_PollForTransfer+0x2e>
200226ac:	1c7a      	adds	r2, r7, #1
200226ae:	d0d2      	beq.n	20022656 <HAL_DMA_PollForTransfer+0x5a>
200226b0:	f7ff fba2 	bl	20021df8 <HAL_GetTick>
200226b4:	eba0 0009 	sub.w	r0, r0, r9
200226b8:	42b8      	cmp	r0, r7
200226ba:	d801      	bhi.n	200226c0 <HAL_DMA_PollForTransfer+0xc4>
200226bc:	2f00      	cmp	r7, #0
200226be:	d1c4      	bne.n	2002264a <HAL_DMA_PollForTransfer+0x4e>
200226c0:	2320      	movs	r3, #32
200226c2:	4620      	mov	r0, r4
200226c4:	6463      	str	r3, [r4, #68]	@ 0x44
200226c6:	f7ff fea5 	bl	20022414 <DMA_FreeChannel.isra.0>
200226ca:	2301      	movs	r3, #1
200226cc:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
200226d0:	e7a0      	b.n	20022614 <HAL_DMA_PollForTransfer+0x18>
200226d2:	2204      	movs	r2, #4
200226d4:	fa02 f303 	lsl.w	r3, r2, r3
200226d8:	6073      	str	r3, [r6, #4]
200226da:	e7cf      	b.n	2002267c <HAL_DMA_PollForTransfer+0x80>

200226dc <DMA_Remap>:
200226dc:	b530      	push	{r4, r5, lr}
200226de:	4b15      	ldr	r3, [pc, #84]	@ (20022734 <DMA_Remap+0x58>)
200226e0:	6c84      	ldr	r4, [r0, #72]	@ 0x48
200226e2:	429c      	cmp	r4, r3
200226e4:	d11b      	bne.n	2002271e <DMA_Remap+0x42>
200226e6:	6883      	ldr	r3, [r0, #8]
200226e8:	2b10      	cmp	r3, #16
200226ea:	d002      	beq.n	200226f2 <DMA_Remap+0x16>
200226ec:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
200226f0:	d108      	bne.n	20022704 <DMA_Remap+0x28>
200226f2:	680b      	ldr	r3, [r1, #0]
200226f4:	4c10      	ldr	r4, [pc, #64]	@ (20022738 <DMA_Remap+0x5c>)
200226f6:	f103 4560 	add.w	r5, r3, #3758096384	@ 0xe0000000
200226fa:	42a5      	cmp	r5, r4
200226fc:	bf98      	it	ls
200226fe:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
20022702:	600b      	str	r3, [r1, #0]
20022704:	6883      	ldr	r3, [r0, #8]
20022706:	f433 4380 	bics.w	r3, r3, #16384	@ 0x4000
2002270a:	d108      	bne.n	2002271e <DMA_Remap+0x42>
2002270c:	6813      	ldr	r3, [r2, #0]
2002270e:	480a      	ldr	r0, [pc, #40]	@ (20022738 <DMA_Remap+0x5c>)
20022710:	f103 4460 	add.w	r4, r3, #3758096384	@ 0xe0000000
20022714:	4284      	cmp	r4, r0
20022716:	bf98      	it	ls
20022718:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
2002271c:	6013      	str	r3, [r2, #0]
2002271e:	680b      	ldr	r3, [r1, #0]
20022720:	f103 4270 	add.w	r2, r3, #4026531840	@ 0xf0000000
20022724:	f1b2 5f80 	cmp.w	r2, #268435456	@ 0x10000000
20022728:	bf3c      	itt	cc
2002272a:	f103 43a0 	addcc.w	r3, r3, #1342177280	@ 0x50000000
2002272e:	600b      	strcc	r3, [r1, #0]
20022730:	bd30      	pop	{r4, r5, pc}
20022732:	bf00      	nop
20022734:	40001000 	.word	0x40001000
20022738:	0007fffe 	.word	0x0007fffe

2002273c <DMA_Start>:
2002273c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
20022740:	f64f 75ff 	movw	r5, #65535	@ 0xffff
20022744:	6d03      	ldr	r3, [r0, #80]	@ 0x50
20022746:	6802      	ldr	r2, [r0, #0]
20022748:	429d      	cmp	r5, r3
2002274a:	bf28      	it	cs
2002274c:	461d      	movcs	r5, r3
2002274e:	1b5b      	subs	r3, r3, r5
20022750:	6503      	str	r3, [r0, #80]	@ 0x50
20022752:	6585      	str	r5, [r0, #88]	@ 0x58
20022754:	6813      	ldr	r3, [r2, #0]
20022756:	f890 7066 	ldrb.w	r7, [r0, #102]	@ 0x66
2002275a:	f023 0301 	bic.w	r3, r3, #1
2002275e:	f890 8067 	ldrb.w	r8, [r0, #103]	@ 0x67
20022762:	6013      	str	r3, [r2, #0]
20022764:	e9d0 2317 	ldrd	r2, r3, [r0, #92]	@ 0x5c
20022768:	460e      	mov	r6, r1
2002276a:	e9cd 2300 	strd	r2, r3, [sp]
2002276e:	e9d0 2312 	ldrd	r2, r3, [r0, #72]	@ 0x48
20022772:	f003 011c 	and.w	r1, r3, #28
20022776:	2301      	movs	r3, #1
20022778:	4604      	mov	r4, r0
2002277a:	408b      	lsls	r3, r1
2002277c:	6053      	str	r3, [r2, #4]
2002277e:	6803      	ldr	r3, [r0, #0]
20022780:	4669      	mov	r1, sp
20022782:	605d      	str	r5, [r3, #4]
20022784:	aa01      	add	r2, sp, #4
20022786:	f7ff ffa9 	bl	200226dc <DMA_Remap>
2002278a:	e9dd 0300 	ldrd	r0, r3, [sp]
2002278e:	68a1      	ldr	r1, [r4, #8]
20022790:	6822      	ldr	r2, [r4, #0]
20022792:	2910      	cmp	r1, #16
20022794:	bf0b      	itete	eq
20022796:	6093      	streq	r3, [r2, #8]
20022798:	6090      	strne	r0, [r2, #8]
2002279a:	6823      	ldreq	r3, [r4, #0]
2002279c:	6822      	ldrne	r2, [r4, #0]
2002279e:	bf0c      	ite	eq
200227a0:	60d8      	streq	r0, [r3, #12]
200227a2:	60d3      	strne	r3, [r2, #12]
200227a4:	f894 3064 	ldrb.w	r3, [r4, #100]	@ 0x64
200227a8:	b123      	cbz	r3, 200227b4 <DMA_Start+0x78>
200227aa:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
200227ac:	fa05 f707 	lsl.w	r7, r5, r7
200227b0:	443b      	add	r3, r7
200227b2:	65e3      	str	r3, [r4, #92]	@ 0x5c
200227b4:	f894 3065 	ldrb.w	r3, [r4, #101]	@ 0x65
200227b8:	b123      	cbz	r3, 200227c4 <DMA_Start+0x88>
200227ba:	6e23      	ldr	r3, [r4, #96]	@ 0x60
200227bc:	fa05 f508 	lsl.w	r5, r5, r8
200227c0:	442b      	add	r3, r5
200227c2:	6623      	str	r3, [r4, #96]	@ 0x60
200227c4:	b136      	cbz	r6, 200227d4 <DMA_Start+0x98>
200227c6:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
200227c8:	6823      	ldr	r3, [r4, #0]
200227ca:	b15a      	cbz	r2, 200227e4 <DMA_Start+0xa8>
200227cc:	681a      	ldr	r2, [r3, #0]
200227ce:	f042 020e 	orr.w	r2, r2, #14
200227d2:	601a      	str	r2, [r3, #0]
200227d4:	6822      	ldr	r2, [r4, #0]
200227d6:	6813      	ldr	r3, [r2, #0]
200227d8:	f043 0301 	orr.w	r3, r3, #1
200227dc:	6013      	str	r3, [r2, #0]
200227de:	b002      	add	sp, #8
200227e0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200227e4:	681a      	ldr	r2, [r3, #0]
200227e6:	f022 0204 	bic.w	r2, r2, #4
200227ea:	601a      	str	r2, [r3, #0]
200227ec:	6822      	ldr	r2, [r4, #0]
200227ee:	6813      	ldr	r3, [r2, #0]
200227f0:	f043 030a 	orr.w	r3, r3, #10
200227f4:	6013      	str	r3, [r2, #0]
200227f6:	e7ed      	b.n	200227d4 <DMA_Start+0x98>

200227f8 <HAL_DMA_Start>:
200227f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200227fa:	461d      	mov	r5, r3
200227fc:	69c3      	ldr	r3, [r0, #28]
200227fe:	4604      	mov	r4, r0
20022800:	2b20      	cmp	r3, #32
20022802:	460f      	mov	r7, r1
20022804:	4616      	mov	r6, r2
20022806:	d105      	bne.n	20022814 <HAL_DMA_Start+0x1c>
20022808:	f64f 73fe 	movw	r3, #65534	@ 0xfffe
2002280c:	1e6a      	subs	r2, r5, #1
2002280e:	429a      	cmp	r2, r3
20022810:	d900      	bls.n	20022814 <HAL_DMA_Start+0x1c>
20022812:	e7fe      	b.n	20022812 <HAL_DMA_Start+0x1a>
20022814:	f894 302c 	ldrb.w	r3, [r4, #44]	@ 0x2c
20022818:	2b01      	cmp	r3, #1
2002281a:	d00e      	beq.n	2002283a <HAL_DMA_Start+0x42>
2002281c:	2301      	movs	r3, #1
2002281e:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
20022822:	f894 302d 	ldrb.w	r3, [r4, #45]	@ 0x2d
20022826:	2b01      	cmp	r3, #1
20022828:	b2d9      	uxtb	r1, r3
2002282a:	d103      	bne.n	20022834 <HAL_DMA_Start+0x3c>
2002282c:	4620      	mov	r0, r4
2002282e:	f7ff fd8b 	bl	20022348 <DMA_AllocChannel>
20022832:	b120      	cbz	r0, 2002283e <HAL_DMA_Start+0x46>
20022834:	2300      	movs	r3, #0
20022836:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
2002283a:	2002      	movs	r0, #2
2002283c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002283e:	2302      	movs	r3, #2
20022840:	e9c4 5514 	strd	r5, r5, [r4, #80]	@ 0x50
20022844:	e9c4 7617 	strd	r7, r6, [r4, #92]	@ 0x5c
20022848:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
2002284c:	6460      	str	r0, [r4, #68]	@ 0x44
2002284e:	6d20      	ldr	r0, [r4, #80]	@ 0x50
20022850:	2800      	cmp	r0, #0
20022852:	d0f3      	beq.n	2002283c <HAL_DMA_Start+0x44>
20022854:	2100      	movs	r1, #0
20022856:	4620      	mov	r0, r4
20022858:	f7ff ff70 	bl	2002273c <DMA_Start>
2002285c:	6d23      	ldr	r3, [r4, #80]	@ 0x50
2002285e:	2b00      	cmp	r3, #0
20022860:	d0f5      	beq.n	2002284e <HAL_DMA_Start+0x56>
20022862:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20022866:	2100      	movs	r1, #0
20022868:	4620      	mov	r0, r4
2002286a:	f7ff fec7 	bl	200225fc <HAL_DMA_PollForTransfer>
2002286e:	2800      	cmp	r0, #0
20022870:	d0ed      	beq.n	2002284e <HAL_DMA_Start+0x56>
20022872:	e7e3      	b.n	2002283c <HAL_DMA_Start+0x44>

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
200228b4:	f7ff fb05 	bl	20021ec2 <HAL_Delay_us>
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
20022948:	6804      	ldr	r4, [r0, #0]
2002294a:	60e3      	str	r3, [r4, #12]
2002294c:	f101 4370 	add.w	r3, r1, #4026531840	@ 0xf0000000
20022950:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
20022954:	6803      	ldr	r3, [r0, #0]
20022956:	bf38      	it	cc
20022958:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
2002295c:	6119      	str	r1, [r3, #16]
2002295e:	f102 4370 	add.w	r3, r2, #4026531840	@ 0xf0000000
20022962:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
20022966:	6803      	ldr	r3, [r0, #0]
20022968:	bf38      	it	cc
2002296a:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
2002296e:	615a      	str	r2, [r3, #20]
20022970:	7b03      	ldrb	r3, [r0, #12]
20022972:	b103      	cbz	r3, 20022976 <EXT_DMA_SetConfig+0x36>
20022974:	e7fe      	b.n	20022974 <EXT_DMA_SetConfig+0x34>
20022976:	bd30      	pop	{r4, r5, pc}

20022978 <HAL_EXT_DMA_Init>:
20022978:	b510      	push	{r4, lr}
2002297a:	b1c0      	cbz	r0, 200229ae <HAL_EXT_DMA_Init+0x36>
2002297c:	2302      	movs	r3, #2
2002297e:	4a0d      	ldr	r2, [pc, #52]	@ (200229b4 <HAL_EXT_DMA_Init+0x3c>)
20022980:	7643      	strb	r3, [r0, #25]
20022982:	6002      	str	r2, [r0, #0]
20022984:	e9d0 3101 	ldrd	r3, r1, [r0, #4]
20022988:	6894      	ldr	r4, [r2, #8]
2002298a:	430b      	orrs	r3, r1
2002298c:	490a      	ldr	r1, [pc, #40]	@ (200229b8 <HAL_EXT_DMA_Init+0x40>)
2002298e:	4021      	ands	r1, r4
20022990:	430b      	orrs	r3, r1
20022992:	f443 6320 	orr.w	r3, r3, #2560	@ 0xa00
20022996:	6093      	str	r3, [r2, #8]
20022998:	7b03      	ldrb	r3, [r0, #12]
2002299a:	b103      	cbz	r3, 2002299e <HAL_EXT_DMA_Init+0x26>
2002299c:	e7fe      	b.n	2002299c <HAL_EXT_DMA_Init+0x24>
2002299e:	6802      	ldr	r2, [r0, #0]
200229a0:	6213      	str	r3, [r2, #32]
200229a2:	2201      	movs	r2, #1
200229a4:	62c3      	str	r3, [r0, #44]	@ 0x2c
200229a6:	7603      	strb	r3, [r0, #24]
200229a8:	7642      	strb	r2, [r0, #25]
200229aa:	4618      	mov	r0, r3
200229ac:	bd10      	pop	{r4, pc}
200229ae:	2001      	movs	r0, #1
200229b0:	e7fc      	b.n	200229ac <HAL_EXT_DMA_Init+0x34>
200229b2:	bf00      	nop
200229b4:	50001000 	.word	0x50001000
200229b8:	fff0f020 	.word	0xfff0f020

200229bc <HAL_EXT_DMA_Start>:
200229bc:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
200229c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200229c2:	d304      	bcc.n	200229ce <HAL_EXT_DMA_Start+0x12>
200229c4:	f44f 7300 	mov.w	r3, #512	@ 0x200
200229c8:	62c3      	str	r3, [r0, #44]	@ 0x2c
200229ca:	2001      	movs	r0, #1
200229cc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200229ce:	7e05      	ldrb	r5, [r0, #24]
200229d0:	2d01      	cmp	r5, #1
200229d2:	d018      	beq.n	20022a06 <HAL_EXT_DMA_Start+0x4a>
200229d4:	2501      	movs	r5, #1
200229d6:	7605      	strb	r5, [r0, #24]
200229d8:	7e45      	ldrb	r5, [r0, #25]
200229da:	2d01      	cmp	r5, #1
200229dc:	f04f 0500 	mov.w	r5, #0
200229e0:	d110      	bne.n	20022a04 <HAL_EXT_DMA_Start+0x48>
200229e2:	2602      	movs	r6, #2
200229e4:	6807      	ldr	r7, [r0, #0]
200229e6:	7646      	strb	r6, [r0, #25]
200229e8:	62c5      	str	r5, [r0, #44]	@ 0x2c
200229ea:	68be      	ldr	r6, [r7, #8]
200229ec:	f026 0601 	bic.w	r6, r6, #1
200229f0:	60be      	str	r6, [r7, #8]
200229f2:	f7ff ffa5 	bl	20022940 <EXT_DMA_SetConfig>
200229f6:	6802      	ldr	r2, [r0, #0]
200229f8:	4628      	mov	r0, r5
200229fa:	6893      	ldr	r3, [r2, #8]
200229fc:	f043 0301 	orr.w	r3, r3, #1
20022a00:	6093      	str	r3, [r2, #8]
20022a02:	e7e3      	b.n	200229cc <HAL_EXT_DMA_Start+0x10>
20022a04:	7605      	strb	r5, [r0, #24]
20022a06:	2002      	movs	r0, #2
20022a08:	e7e0      	b.n	200229cc <HAL_EXT_DMA_Start+0x10>

20022a0a <HAL_EXT_DMA_PollForTransfer>:
20022a0a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20022a0e:	7e43      	ldrb	r3, [r0, #25]
20022a10:	4604      	mov	r4, r0
20022a12:	2b02      	cmp	r3, #2
20022a14:	460e      	mov	r6, r1
20022a16:	4615      	mov	r5, r2
20022a18:	d006      	beq.n	20022a28 <HAL_EXT_DMA_PollForTransfer+0x1e>
20022a1a:	2304      	movs	r3, #4
20022a1c:	62c3      	str	r3, [r0, #44]	@ 0x2c
20022a1e:	2001      	movs	r0, #1
20022a20:	2300      	movs	r3, #0
20022a22:	7623      	strb	r3, [r4, #24]
20022a24:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20022a28:	2900      	cmp	r1, #0
20022a2a:	bf14      	ite	ne
20022a2c:	f04f 0804 	movne.w	r8, #4
20022a30:	f04f 0802 	moveq.w	r8, #2
20022a34:	f7ff f9e0 	bl	20021df8 <HAL_GetTick>
20022a38:	4607      	mov	r7, r0
20022a3a:	6823      	ldr	r3, [r4, #0]
20022a3c:	681a      	ldr	r2, [r3, #0]
20022a3e:	ea12 0f08 	tst.w	r2, r8
20022a42:	d006      	beq.n	20022a52 <HAL_EXT_DMA_PollForTransfer+0x48>
20022a44:	b9e6      	cbnz	r6, 20022a80 <HAL_EXT_DMA_PollForTransfer+0x76>
20022a46:	2202      	movs	r2, #2
20022a48:	605a      	str	r2, [r3, #4]
20022a4a:	2301      	movs	r3, #1
20022a4c:	7663      	strb	r3, [r4, #25]
20022a4e:	2000      	movs	r0, #0
20022a50:	e7e6      	b.n	20022a20 <HAL_EXT_DMA_PollForTransfer+0x16>
20022a52:	681a      	ldr	r2, [r3, #0]
20022a54:	f012 0f18 	tst.w	r2, #24
20022a58:	d004      	beq.n	20022a64 <HAL_EXT_DMA_PollForTransfer+0x5a>
20022a5a:	2201      	movs	r2, #1
20022a5c:	605a      	str	r2, [r3, #4]
20022a5e:	62e2      	str	r2, [r4, #44]	@ 0x2c
20022a60:	7662      	strb	r2, [r4, #25]
20022a62:	e7dc      	b.n	20022a1e <HAL_EXT_DMA_PollForTransfer+0x14>
20022a64:	1c6a      	adds	r2, r5, #1
20022a66:	d0e9      	beq.n	20022a3c <HAL_EXT_DMA_PollForTransfer+0x32>
20022a68:	f7ff f9c6 	bl	20021df8 <HAL_GetTick>
20022a6c:	1bc0      	subs	r0, r0, r7
20022a6e:	42a8      	cmp	r0, r5
20022a70:	d801      	bhi.n	20022a76 <HAL_EXT_DMA_PollForTransfer+0x6c>
20022a72:	2d00      	cmp	r5, #0
20022a74:	d1e1      	bne.n	20022a3a <HAL_EXT_DMA_PollForTransfer+0x30>
20022a76:	2320      	movs	r3, #32
20022a78:	62e3      	str	r3, [r4, #44]	@ 0x2c
20022a7a:	2301      	movs	r3, #1
20022a7c:	7663      	strb	r3, [r4, #25]
20022a7e:	e7ce      	b.n	20022a1e <HAL_EXT_DMA_PollForTransfer+0x14>
20022a80:	2204      	movs	r2, #4
20022a82:	605a      	str	r2, [r3, #4]
20022a84:	e7e3      	b.n	20022a4e <HAL_EXT_DMA_PollForTransfer+0x44>

20022a86 <HAL_DBG_printf>:
20022a86:	b40f      	push	{r0, r1, r2, r3}
20022a88:	b004      	add	sp, #16
20022a8a:	4770      	bx	lr

20022a8c <HAL_Get_backup>:
20022a8c:	4b01      	ldr	r3, [pc, #4]	@ (20022a94 <HAL_Get_backup+0x8>)
20022a8e:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20022a92:	4770      	bx	lr
20022a94:	500cb030 	.word	0x500cb030

20022a98 <HAL_HPAON_WakeCore>:
20022a98:	2802      	cmp	r0, #2
20022a9a:	b510      	push	{r4, lr}
20022a9c:	d120      	bne.n	20022ae0 <HAL_HPAON_WakeCore+0x48>
20022a9e:	4c11      	ldr	r4, [pc, #68]	@ (20022ae4 <HAL_HPAON_WakeCore+0x4c>)
20022aa0:	20e6      	movs	r0, #230	@ 0xe6
20022aa2:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022aa4:	f043 0301 	orr.w	r3, r3, #1
20022aa8:	62e3      	str	r3, [r4, #44]	@ 0x2c
20022aaa:	f7ff fa0a 	bl	20021ec2 <HAL_Delay_us>
20022aae:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022ab0:	069a      	lsls	r2, r3, #26
20022ab2:	d5fc      	bpl.n	20022aae <HAL_HPAON_WakeCore+0x16>
20022ab4:	201e      	movs	r0, #30
20022ab6:	f7ff fa04 	bl	20021ec2 <HAL_Delay_us>
20022aba:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022abc:	069b      	lsls	r3, r3, #26
20022abe:	d5fc      	bpl.n	20022aba <HAL_HPAON_WakeCore+0x22>
20022ac0:	f3ef 8110 	mrs	r1, PRIMASK
20022ac4:	2301      	movs	r3, #1
20022ac6:	f383 8810 	msr	PRIMASK, r3
20022aca:	4a07      	ldr	r2, [pc, #28]	@ (20022ae8 <HAL_HPAON_WakeCore+0x50>)
20022acc:	7813      	ldrb	r3, [r2, #0]
20022ace:	2b13      	cmp	r3, #19
20022ad0:	d900      	bls.n	20022ad4 <HAL_HPAON_WakeCore+0x3c>
20022ad2:	e7fe      	b.n	20022ad2 <HAL_HPAON_WakeCore+0x3a>
20022ad4:	3301      	adds	r3, #1
20022ad6:	7013      	strb	r3, [r2, #0]
20022ad8:	f381 8810 	msr	PRIMASK, r1
20022adc:	2000      	movs	r0, #0
20022ade:	bd10      	pop	{r4, pc}
20022ae0:	2001      	movs	r0, #1
20022ae2:	e7fc      	b.n	20022ade <HAL_HPAON_WakeCore+0x46>
20022ae4:	500c0000 	.word	0x500c0000
20022ae8:	20049f5c 	.word	0x20049f5c

20022aec <HAL_HPAON_EnableXT48>:
20022aec:	4b04      	ldr	r3, [pc, #16]	@ (20022b00 <HAL_HPAON_EnableXT48+0x14>)
20022aee:	691a      	ldr	r2, [r3, #16]
20022af0:	f042 0202 	orr.w	r2, r2, #2
20022af4:	611a      	str	r2, [r3, #16]
20022af6:	691a      	ldr	r2, [r3, #16]
20022af8:	2a00      	cmp	r2, #0
20022afa:	dafc      	bge.n	20022af6 <HAL_HPAON_EnableXT48+0xa>
20022afc:	4770      	bx	lr
20022afe:	bf00      	nop
20022b00:	500c0000 	.word	0x500c0000

20022b04 <HAL_HPAON_DisableXT48>:
20022b04:	4a02      	ldr	r2, [pc, #8]	@ (20022b10 <HAL_HPAON_DisableXT48+0xc>)
20022b06:	6913      	ldr	r3, [r2, #16]
20022b08:	f023 0302 	bic.w	r3, r3, #2
20022b0c:	6113      	str	r3, [r2, #16]
20022b0e:	4770      	bx	lr
20022b10:	500c0000 	.word	0x500c0000

20022b14 <HAL_QSPI_Init>:
20022b14:	b510      	push	{r4, lr}
20022b16:	b1e0      	cbz	r0, 20022b52 <HAL_QSPI_Init+0x3e>
20022b18:	b1d9      	cbz	r1, 20022b52 <HAL_QSPI_Init+0x3e>
20022b1a:	2300      	movs	r3, #0
20022b1c:	2201      	movs	r2, #1
20022b1e:	6043      	str	r3, [r0, #4]
20022b20:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
20022b24:	680c      	ldr	r4, [r1, #0]
20022b26:	6004      	str	r4, [r0, #0]
20022b28:	684a      	ldr	r2, [r1, #4]
20022b2a:	f880 2020 	strb.w	r2, [r0, #32]
20022b2e:	688a      	ldr	r2, [r1, #8]
20022b30:	6102      	str	r2, [r0, #16]
20022b32:	68ca      	ldr	r2, [r1, #12]
20022b34:	0512      	lsls	r2, r2, #20
20022b36:	6142      	str	r2, [r0, #20]
20022b38:	22ff      	movs	r2, #255	@ 0xff
20022b3a:	f8c4 2084 	str.w	r2, [r4, #132]	@ 0x84
20022b3e:	f04f 2450 	mov.w	r4, #1342197760	@ 0x50005000
20022b42:	6801      	ldr	r1, [r0, #0]
20022b44:	678c      	str	r4, [r1, #120]	@ 0x78
20022b46:	6801      	ldr	r1, [r0, #0]
20022b48:	620a      	str	r2, [r1, #32]
20022b4a:	6801      	ldr	r1, [r0, #0]
20022b4c:	4618      	mov	r0, r3
20022b4e:	644a      	str	r2, [r1, #68]	@ 0x44
20022b50:	bd10      	pop	{r4, pc}
20022b52:	2001      	movs	r0, #1
20022b54:	e7fc      	b.n	20022b50 <HAL_QSPI_Init+0x3c>

20022b56 <HAL_FLASH_SET_AHB_RCMD>:
20022b56:	b138      	cbz	r0, 20022b68 <HAL_FLASH_SET_AHB_RCMD+0x12>
20022b58:	6802      	ldr	r2, [r0, #0]
20022b5a:	2000      	movs	r0, #0
20022b5c:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022b5e:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
20022b62:	4319      	orrs	r1, r3
20022b64:	6411      	str	r1, [r2, #64]	@ 0x40
20022b66:	4770      	bx	lr
20022b68:	2001      	movs	r0, #1
20022b6a:	4770      	bx	lr

20022b6c <HAL_FLASH_CFG_AHB_RCMD>:
20022b6c:	b570      	push	{r4, r5, r6, lr}
20022b6e:	b1c8      	cbz	r0, 20022ba4 <HAL_FLASH_CFG_AHB_RCMD+0x38>
20022b70:	6805      	ldr	r5, [r0, #0]
20022b72:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022b76:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022b7a:	6cac      	ldr	r4, [r5, #72]	@ 0x48
20022b7c:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022b80:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022b84:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022b88:	f36f 0414 	bfc	r4, #0, #21
20022b8c:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022b90:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022b94:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022b98:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022b9c:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022ba0:	4321      	orrs	r1, r4
20022ba2:	64a9      	str	r1, [r5, #72]	@ 0x48
20022ba4:	bd70      	pop	{r4, r5, r6, pc}

20022ba6 <HAL_FLASH_SET_AHB_WCMD>:
20022ba6:	b140      	cbz	r0, 20022bba <HAL_FLASH_SET_AHB_WCMD+0x14>
20022ba8:	6802      	ldr	r2, [r0, #0]
20022baa:	2000      	movs	r0, #0
20022bac:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022bae:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022bb2:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
20022bb6:	6411      	str	r1, [r2, #64]	@ 0x40
20022bb8:	4770      	bx	lr
20022bba:	2001      	movs	r0, #1
20022bbc:	4770      	bx	lr

20022bbe <HAL_FLASH_CFG_AHB_WCMD>:
20022bbe:	b570      	push	{r4, r5, r6, lr}
20022bc0:	b1c8      	cbz	r0, 20022bf6 <HAL_FLASH_CFG_AHB_WCMD+0x38>
20022bc2:	6805      	ldr	r5, [r0, #0]
20022bc4:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022bc8:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022bcc:	6d2c      	ldr	r4, [r5, #80]	@ 0x50
20022bce:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022bd2:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022bd6:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022bda:	f36f 0414 	bfc	r4, #0, #21
20022bde:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022be2:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022be6:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022bea:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022bee:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022bf2:	4321      	orrs	r1, r4
20022bf4:	6529      	str	r1, [r5, #80]	@ 0x50
20022bf6:	bd70      	pop	{r4, r5, r6, pc}

20022bf8 <HAL_FLASH_WRITE_WORD>:
20022bf8:	b118      	cbz	r0, 20022c02 <HAL_FLASH_WRITE_WORD+0xa>
20022bfa:	6803      	ldr	r3, [r0, #0]
20022bfc:	2000      	movs	r0, #0
20022bfe:	6059      	str	r1, [r3, #4]
20022c00:	4770      	bx	lr
20022c02:	2001      	movs	r0, #1
20022c04:	4770      	bx	lr

20022c06 <HAL_FLASH_WRITE_DLEN>:
20022c06:	b130      	cbz	r0, 20022c16 <HAL_FLASH_WRITE_DLEN+0x10>
20022c08:	6803      	ldr	r3, [r0, #0]
20022c0a:	3901      	subs	r1, #1
20022c0c:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022c10:	2000      	movs	r0, #0
20022c12:	6259      	str	r1, [r3, #36]	@ 0x24
20022c14:	4770      	bx	lr
20022c16:	2001      	movs	r0, #1
20022c18:	4770      	bx	lr

20022c1a <HAL_FLASH_WRITE_DLEN2>:
20022c1a:	b130      	cbz	r0, 20022c2a <HAL_FLASH_WRITE_DLEN2+0x10>
20022c1c:	6803      	ldr	r3, [r0, #0]
20022c1e:	3901      	subs	r1, #1
20022c20:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022c24:	2000      	movs	r0, #0
20022c26:	6399      	str	r1, [r3, #56]	@ 0x38
20022c28:	4770      	bx	lr
20022c2a:	2001      	movs	r0, #1
20022c2c:	4770      	bx	lr

20022c2e <HAL_FLASH_WRITE_ABYTE>:
20022c2e:	b108      	cbz	r0, 20022c34 <HAL_FLASH_WRITE_ABYTE+0x6>
20022c30:	6803      	ldr	r3, [r0, #0]
20022c32:	6219      	str	r1, [r3, #32]
20022c34:	4770      	bx	lr

20022c36 <HAL_FLASH_IS_CMD_DONE>:
20022c36:	b118      	cbz	r0, 20022c40 <HAL_FLASH_IS_CMD_DONE+0xa>
20022c38:	6803      	ldr	r3, [r0, #0]
20022c3a:	6918      	ldr	r0, [r3, #16]
20022c3c:	f000 0001 	and.w	r0, r0, #1
20022c40:	4770      	bx	lr

20022c42 <HAL_FLASH_CLR_CMD_DONE>:
20022c42:	b120      	cbz	r0, 20022c4e <HAL_FLASH_CLR_CMD_DONE+0xc>
20022c44:	6802      	ldr	r2, [r0, #0]
20022c46:	6953      	ldr	r3, [r2, #20]
20022c48:	f043 0301 	orr.w	r3, r3, #1
20022c4c:	6153      	str	r3, [r2, #20]
20022c4e:	4770      	bx	lr

20022c50 <HAL_FLASH_SET_CMD>:
20022c50:	b538      	push	{r3, r4, r5, lr}
20022c52:	460d      	mov	r5, r1
20022c54:	4604      	mov	r4, r0
20022c56:	b1a8      	cbz	r0, 20022c84 <HAL_FLASH_SET_CMD+0x34>
20022c58:	6803      	ldr	r3, [r0, #0]
20022c5a:	61da      	str	r2, [r3, #28]
20022c5c:	6ac3      	ldr	r3, [r0, #44]	@ 0x2c
20022c5e:	b10b      	cbz	r3, 20022c64 <HAL_FLASH_SET_CMD+0x14>
20022c60:	2001      	movs	r0, #1
20022c62:	4798      	blx	r3
20022c64:	6823      	ldr	r3, [r4, #0]
20022c66:	619d      	str	r5, [r3, #24]
20022c68:	4620      	mov	r0, r4
20022c6a:	f7ff ffe4 	bl	20022c36 <HAL_FLASH_IS_CMD_DONE>
20022c6e:	2800      	cmp	r0, #0
20022c70:	d0fa      	beq.n	20022c68 <HAL_FLASH_SET_CMD+0x18>
20022c72:	4620      	mov	r0, r4
20022c74:	f7ff ffe5 	bl	20022c42 <HAL_FLASH_CLR_CMD_DONE>
20022c78:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022c7a:	b10b      	cbz	r3, 20022c80 <HAL_FLASH_SET_CMD+0x30>
20022c7c:	2000      	movs	r0, #0
20022c7e:	4798      	blx	r3
20022c80:	2000      	movs	r0, #0
20022c82:	bd38      	pop	{r3, r4, r5, pc}
20022c84:	2001      	movs	r0, #1
20022c86:	e7fc      	b.n	20022c82 <HAL_FLASH_SET_CMD+0x32>

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
20022d62:	b158      	cbz	r0, 20022d7c <HAL_FLASH_SET_ALIAS_RANGE+0x1c>
20022d64:	4b06      	ldr	r3, [pc, #24]	@ (20022d80 <HAL_FLASH_SET_ALIAS_RANGE+0x20>)
20022d66:	6804      	ldr	r4, [r0, #0]
20022d68:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022d6c:	440a      	add	r2, r1
20022d6e:	4019      	ands	r1, r3
20022d70:	66e1      	str	r1, [r4, #108]	@ 0x6c
20022d72:	401a      	ands	r2, r3
20022d74:	6803      	ldr	r3, [r0, #0]
20022d76:	2000      	movs	r0, #0
20022d78:	671a      	str	r2, [r3, #112]	@ 0x70
20022d7a:	bd10      	pop	{r4, pc}
20022d7c:	2001      	movs	r0, #1
20022d7e:	e7fc      	b.n	20022d7a <HAL_FLASH_SET_ALIAS_RANGE+0x1a>
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
20022d98:	b510      	push	{r4, lr}
20022d9a:	b150      	cbz	r0, 20022db2 <HAL_FLASH_SET_CTR+0x1a>
20022d9c:	4b06      	ldr	r3, [pc, #24]	@ (20022db8 <HAL_FLASH_SET_CTR+0x20>)
20022d9e:	6804      	ldr	r4, [r0, #0]
20022da0:	4019      	ands	r1, r3
20022da2:	65e1      	str	r1, [r4, #92]	@ 0x5c
20022da4:	6801      	ldr	r1, [r0, #0]
20022da6:	2000      	movs	r0, #0
20022da8:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022dac:	401a      	ands	r2, r3
20022dae:	660a      	str	r2, [r1, #96]	@ 0x60
20022db0:	bd10      	pop	{r4, pc}
20022db2:	2001      	movs	r0, #1
20022db4:	e7fc      	b.n	20022db0 <HAL_FLASH_SET_CTR+0x18>
20022db6:	bf00      	nop
20022db8:	fffffc00 	.word	0xfffffc00

20022dbc <HAL_FLASH_SET_NONCE>:
20022dbc:	b150      	cbz	r0, 20022dd4 <HAL_FLASH_SET_NONCE+0x18>
20022dbe:	b149      	cbz	r1, 20022dd4 <HAL_FLASH_SET_NONCE+0x18>
20022dc0:	680b      	ldr	r3, [r1, #0]
20022dc2:	6802      	ldr	r2, [r0, #0]
20022dc4:	ba1b      	rev	r3, r3
20022dc6:	6653      	str	r3, [r2, #100]	@ 0x64
20022dc8:	684b      	ldr	r3, [r1, #4]
20022dca:	6802      	ldr	r2, [r0, #0]
20022dcc:	ba1b      	rev	r3, r3
20022dce:	2000      	movs	r0, #0
20022dd0:	6693      	str	r3, [r2, #104]	@ 0x68
20022dd2:	4770      	bx	lr
20022dd4:	2001      	movs	r0, #1
20022dd6:	4770      	bx	lr

20022dd8 <HAL_FLASH_SET_AES>:
20022dd8:	b158      	cbz	r0, 20022df2 <HAL_FLASH_SET_AES+0x1a>
20022dda:	6803      	ldr	r3, [r0, #0]
20022ddc:	2901      	cmp	r1, #1
20022dde:	681a      	ldr	r2, [r3, #0]
20022de0:	d104      	bne.n	20022dec <HAL_FLASH_SET_AES+0x14>
20022de2:	f042 0280 	orr.w	r2, r2, #128	@ 0x80
20022de6:	2000      	movs	r0, #0
20022de8:	601a      	str	r2, [r3, #0]
20022dea:	4770      	bx	lr
20022dec:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
20022df0:	e7f9      	b.n	20022de6 <HAL_FLASH_SET_AES+0xe>
20022df2:	2001      	movs	r0, #1
20022df4:	4770      	bx	lr

20022df6 <HAL_FLASH_ENABLE_AES>:
20022df6:	b150      	cbz	r0, 20022e0e <HAL_FLASH_ENABLE_AES+0x18>
20022df8:	6803      	ldr	r3, [r0, #0]
20022dfa:	681a      	ldr	r2, [r3, #0]
20022dfc:	b121      	cbz	r1, 20022e08 <HAL_FLASH_ENABLE_AES+0x12>
20022dfe:	f042 0240 	orr.w	r2, r2, #64	@ 0x40
20022e02:	2000      	movs	r0, #0
20022e04:	601a      	str	r2, [r3, #0]
20022e06:	4770      	bx	lr
20022e08:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
20022e0c:	e7f9      	b.n	20022e02 <HAL_FLASH_ENABLE_AES+0xc>
20022e0e:	2001      	movs	r0, #1
20022e10:	4770      	bx	lr

20022e12 <HAL_FLASH_ENABLE_QSPI>:
20022e12:	b150      	cbz	r0, 20022e2a <HAL_FLASH_ENABLE_QSPI+0x18>
20022e14:	6803      	ldr	r3, [r0, #0]
20022e16:	681a      	ldr	r2, [r3, #0]
20022e18:	b121      	cbz	r1, 20022e24 <HAL_FLASH_ENABLE_QSPI+0x12>
20022e1a:	f042 0201 	orr.w	r2, r2, #1
20022e1e:	2000      	movs	r0, #0
20022e20:	601a      	str	r2, [r3, #0]
20022e22:	4770      	bx	lr
20022e24:	f022 0201 	bic.w	r2, r2, #1
20022e28:	e7f9      	b.n	20022e1e <HAL_FLASH_ENABLE_QSPI+0xc>
20022e2a:	2001      	movs	r0, #1
20022e2c:	4770      	bx	lr

20022e2e <HAL_FLASH_ENABLE_OPI>:
20022e2e:	b150      	cbz	r0, 20022e46 <HAL_FLASH_ENABLE_OPI+0x18>
20022e30:	6803      	ldr	r3, [r0, #0]
20022e32:	681a      	ldr	r2, [r3, #0]
20022e34:	b121      	cbz	r1, 20022e40 <HAL_FLASH_ENABLE_OPI+0x12>
20022e36:	f442 1200 	orr.w	r2, r2, #2097152	@ 0x200000
20022e3a:	2000      	movs	r0, #0
20022e3c:	601a      	str	r2, [r3, #0]
20022e3e:	4770      	bx	lr
20022e40:	f422 1200 	bic.w	r2, r2, #2097152	@ 0x200000
20022e44:	e7f9      	b.n	20022e3a <HAL_FLASH_ENABLE_OPI+0xc>
20022e46:	2001      	movs	r0, #1
20022e48:	4770      	bx	lr

20022e4a <HAL_FLASH_ENABLE_HYPER>:
20022e4a:	b150      	cbz	r0, 20022e62 <HAL_FLASH_ENABLE_HYPER+0x18>
20022e4c:	6803      	ldr	r3, [r0, #0]
20022e4e:	689a      	ldr	r2, [r3, #8]
20022e50:	b121      	cbz	r1, 20022e5c <HAL_FLASH_ENABLE_HYPER+0x12>
20022e52:	f042 0210 	orr.w	r2, r2, #16
20022e56:	2000      	movs	r0, #0
20022e58:	609a      	str	r2, [r3, #8]
20022e5a:	4770      	bx	lr
20022e5c:	f022 0210 	bic.w	r2, r2, #16
20022e60:	e7f9      	b.n	20022e56 <HAL_FLASH_ENABLE_HYPER+0xc>
20022e62:	2001      	movs	r0, #1
20022e64:	4770      	bx	lr

20022e66 <HAL_FLASH_ENABLE_CMD2>:
20022e66:	b150      	cbz	r0, 20022e7e <HAL_FLASH_ENABLE_CMD2+0x18>
20022e68:	6803      	ldr	r3, [r0, #0]
20022e6a:	681a      	ldr	r2, [r3, #0]
20022e6c:	b121      	cbz	r1, 20022e78 <HAL_FLASH_ENABLE_CMD2+0x12>
20022e6e:	f442 3280 	orr.w	r2, r2, #65536	@ 0x10000
20022e72:	2000      	movs	r0, #0
20022e74:	601a      	str	r2, [r3, #0]
20022e76:	4770      	bx	lr
20022e78:	f422 3280 	bic.w	r2, r2, #65536	@ 0x10000
20022e7c:	e7f9      	b.n	20022e72 <HAL_FLASH_ENABLE_CMD2+0xc>
20022e7e:	2001      	movs	r0, #1
20022e80:	4770      	bx	lr

20022e82 <HAL_FLASH_STAUS_MATCH_CMD2>:
20022e82:	b150      	cbz	r0, 20022e9a <HAL_FLASH_STAUS_MATCH_CMD2+0x18>
20022e84:	6803      	ldr	r3, [r0, #0]
20022e86:	681a      	ldr	r2, [r3, #0]
20022e88:	b121      	cbz	r1, 20022e94 <HAL_FLASH_STAUS_MATCH_CMD2+0x12>
20022e8a:	f442 2280 	orr.w	r2, r2, #262144	@ 0x40000
20022e8e:	2000      	movs	r0, #0
20022e90:	601a      	str	r2, [r3, #0]
20022e92:	4770      	bx	lr
20022e94:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
20022e98:	e7f9      	b.n	20022e8e <HAL_FLASH_STAUS_MATCH_CMD2+0xc>
20022e9a:	2001      	movs	r0, #1
20022e9c:	4770      	bx	lr

20022e9e <HAL_FLASH_SET_CS_TIME>:
20022e9e:	b530      	push	{r4, r5, lr}
20022ea0:	b180      	cbz	r0, 20022ec4 <HAL_FLASH_SET_CS_TIME+0x26>
20022ea2:	6805      	ldr	r5, [r0, #0]
20022ea4:	f8bd 000c 	ldrh.w	r0, [sp, #12]
20022ea8:	68ac      	ldr	r4, [r5, #8]
20022eaa:	0680      	lsls	r0, r0, #26
20022eac:	ea40 5383 	orr.w	r3, r0, r3, lsl #22
20022eb0:	2000      	movs	r0, #0
20022eb2:	ea43 4181 	orr.w	r1, r3, r1, lsl #18
20022eb6:	f36f 149e 	bfc	r4, #6, #25
20022eba:	ea41 1282 	orr.w	r2, r1, r2, lsl #6
20022ebe:	4322      	orrs	r2, r4
20022ec0:	60aa      	str	r2, [r5, #8]
20022ec2:	bd30      	pop	{r4, r5, pc}
20022ec4:	2001      	movs	r0, #1
20022ec6:	e7fc      	b.n	20022ec2 <HAL_FLASH_SET_CS_TIME+0x24>

20022ec8 <HAL_FLASH_SET_ROW_BOUNDARY>:
20022ec8:	b130      	cbz	r0, 20022ed8 <HAL_FLASH_SET_ROW_BOUNDARY+0x10>
20022eca:	6802      	ldr	r2, [r0, #0]
20022ecc:	2000      	movs	r0, #0
20022ece:	6893      	ldr	r3, [r2, #8]
20022ed0:	f361 0302 	bfi	r3, r1, #0, #3
20022ed4:	6093      	str	r3, [r2, #8]
20022ed6:	4770      	bx	lr
20022ed8:	2001      	movs	r0, #1
20022eda:	4770      	bx	lr

20022edc <HAL_FLASH_SET_LEGACY>:
20022edc:	b150      	cbz	r0, 20022ef4 <HAL_FLASH_SET_LEGACY+0x18>
20022ede:	6803      	ldr	r3, [r0, #0]
20022ee0:	689a      	ldr	r2, [r3, #8]
20022ee2:	b121      	cbz	r1, 20022eee <HAL_FLASH_SET_LEGACY+0x12>
20022ee4:	f042 0220 	orr.w	r2, r2, #32
20022ee8:	2000      	movs	r0, #0
20022eea:	609a      	str	r2, [r3, #8]
20022eec:	4770      	bx	lr
20022eee:	f022 0220 	bic.w	r2, r2, #32
20022ef2:	e7f9      	b.n	20022ee8 <HAL_FLASH_SET_LEGACY+0xc>
20022ef4:	2001      	movs	r0, #1
20022ef6:	4770      	bx	lr

20022ef8 <HAL_FLASH_SET_DUAL_MODE>:
20022ef8:	b150      	cbz	r0, 20022f10 <HAL_FLASH_SET_DUAL_MODE+0x18>
20022efa:	6803      	ldr	r3, [r0, #0]
20022efc:	681a      	ldr	r2, [r3, #0]
20022efe:	b121      	cbz	r1, 20022f0a <HAL_FLASH_SET_DUAL_MODE+0x12>
20022f00:	f042 7280 	orr.w	r2, r2, #16777216	@ 0x1000000
20022f04:	2000      	movs	r0, #0
20022f06:	601a      	str	r2, [r3, #0]
20022f08:	4770      	bx	lr
20022f0a:	f022 7280 	bic.w	r2, r2, #16777216	@ 0x1000000
20022f0e:	e7f9      	b.n	20022f04 <HAL_FLASH_SET_DUAL_MODE+0xc>
20022f10:	2001      	movs	r0, #1
20022f12:	4770      	bx	lr

20022f14 <HAL_MPI_EN_FIXLAT>:
20022f14:	b150      	cbz	r0, 20022f2c <HAL_MPI_EN_FIXLAT+0x18>
20022f16:	6803      	ldr	r3, [r0, #0]
20022f18:	689a      	ldr	r2, [r3, #8]
20022f1a:	b121      	cbz	r1, 20022f26 <HAL_MPI_EN_FIXLAT+0x12>
20022f1c:	f042 4200 	orr.w	r2, r2, #2147483648	@ 0x80000000
20022f20:	2000      	movs	r0, #0
20022f22:	609a      	str	r2, [r3, #8]
20022f24:	4770      	bx	lr
20022f26:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20022f2a:	e7f9      	b.n	20022f20 <HAL_MPI_EN_FIXLAT+0xc>
20022f2c:	2001      	movs	r0, #1
20022f2e:	4770      	bx	lr

20022f30 <HAL_MPI_ENABLE_DQS>:
20022f30:	b150      	cbz	r0, 20022f48 <HAL_MPI_ENABLE_DQS+0x18>
20022f32:	6803      	ldr	r3, [r0, #0]
20022f34:	689a      	ldr	r2, [r3, #8]
20022f36:	b121      	cbz	r1, 20022f42 <HAL_MPI_ENABLE_DQS+0x12>
20022f38:	f042 0208 	orr.w	r2, r2, #8
20022f3c:	2000      	movs	r0, #0
20022f3e:	609a      	str	r2, [r3, #8]
20022f40:	4770      	bx	lr
20022f42:	f022 0208 	bic.w	r2, r2, #8
20022f46:	e7f9      	b.n	20022f3c <HAL_MPI_ENABLE_DQS+0xc>
20022f48:	2001      	movs	r0, #1
20022f4a:	4770      	bx	lr

20022f4c <HAL_MPI_SET_DQS_DELAY>:
20022f4c:	b140      	cbz	r0, 20022f60 <HAL_MPI_SET_DQS_DELAY+0x14>
20022f4e:	6802      	ldr	r2, [r0, #0]
20022f50:	2000      	movs	r0, #0
20022f52:	6d93      	ldr	r3, [r2, #88]	@ 0x58
20022f54:	f423 037f 	bic.w	r3, r3, #16711680	@ 0xff0000
20022f58:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
20022f5c:	6591      	str	r1, [r2, #88]	@ 0x58
20022f5e:	4770      	bx	lr
20022f60:	2001      	movs	r0, #1
20022f62:	4770      	bx	lr

20022f64 <HAL_MPI_SET_SCK>:
20022f64:	b160      	cbz	r0, 20022f80 <HAL_MPI_SET_SCK+0x1c>
20022f66:	6800      	ldr	r0, [r0, #0]
20022f68:	0652      	lsls	r2, r2, #25
20022f6a:	6d83      	ldr	r3, [r0, #88]	@ 0x58
20022f6c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
20022f70:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20022f74:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022f78:	4319      	orrs	r1, r3
20022f7a:	6581      	str	r1, [r0, #88]	@ 0x58
20022f7c:	2000      	movs	r0, #0
20022f7e:	4770      	bx	lr
20022f80:	2001      	movs	r0, #1
20022f82:	4770      	bx	lr

20022f84 <HAL_MPI_CFG_DTR>:
20022f84:	b510      	push	{r4, lr}
20022f86:	b1f0      	cbz	r0, 20022fc6 <HAL_MPI_CFG_DTR+0x42>
20022f88:	6804      	ldr	r4, [r0, #0]
20022f8a:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20022f8c:	b1b1      	cbz	r1, 20022fbc <HAL_MPI_CFG_DTR+0x38>
20022f8e:	2a02      	cmp	r2, #2
20022f90:	bf84      	itt	hi
20022f92:	3a02      	subhi	r2, #2
20022f94:	b2d2      	uxtbhi	r2, r2
20022f96:	0213      	lsls	r3, r2, #8
20022f98:	f36f 000f 	bfc	r0, #0, #16
20022f9c:	f403 43fe 	and.w	r3, r3, #32512	@ 0x7f00
20022fa0:	4303      	orrs	r3, r0
20022fa2:	0612      	lsls	r2, r2, #24
20022fa4:	bf54      	ite	pl
20022fa6:	f043 6380 	orrpl.w	r3, r3, #67108864	@ 0x4000000
20022faa:	f043 63a0 	orrmi.w	r3, r3, #83886080	@ 0x5000000
20022fae:	f043 030a 	orr.w	r3, r3, #10
20022fb2:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20022fb6:	2000      	movs	r0, #0
20022fb8:	65a3      	str	r3, [r4, #88]	@ 0x58
20022fba:	bd10      	pop	{r4, pc}
20022fbc:	4b03      	ldr	r3, [pc, #12]	@ (20022fcc <HAL_MPI_CFG_DTR+0x48>)
20022fbe:	4003      	ands	r3, r0
20022fc0:	f043 7300 	orr.w	r3, r3, #33554432	@ 0x2000000
20022fc4:	e7f7      	b.n	20022fb6 <HAL_MPI_CFG_DTR+0x32>
20022fc6:	2001      	movs	r0, #1
20022fc8:	e7f7      	b.n	20022fba <HAL_MPI_CFG_DTR+0x36>
20022fca:	bf00      	nop
20022fcc:	faff0000 	.word	0xfaff0000

20022fd0 <HAL_MPI_MODIFY_RCMD_DELAY>:
20022fd0:	b130      	cbz	r0, 20022fe0 <HAL_MPI_MODIFY_RCMD_DELAY+0x10>
20022fd2:	6802      	ldr	r2, [r0, #0]
20022fd4:	6c93      	ldr	r3, [r2, #72]	@ 0x48
20022fd6:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20022fda:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20022fde:	6491      	str	r1, [r2, #72]	@ 0x48
20022fe0:	4770      	bx	lr

20022fe2 <HAL_MPI_MODIFY_WCMD_DELAY>:
20022fe2:	b130      	cbz	r0, 20022ff2 <HAL_MPI_MODIFY_WCMD_DELAY+0x10>
20022fe4:	6802      	ldr	r2, [r0, #0]
20022fe6:	6d13      	ldr	r3, [r2, #80]	@ 0x50
20022fe8:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20022fec:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20022ff0:	6511      	str	r1, [r2, #80]	@ 0x50
20022ff2:	4770      	bx	lr

20022ff4 <HAL_FLASH_CONFIG_AHB_READ>:
20022ff4:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20022ff6:	4605      	mov	r5, r0
20022ff8:	2800      	cmp	r0, #0
20022ffa:	d03d      	beq.n	20023078 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20022ffc:	68c4      	ldr	r4, [r0, #12]
20022ffe:	b301      	cbz	r1, 20023042 <HAL_FLASH_CONFIG_AHB_READ+0x4e>
20023000:	f894 306a 	ldrb.w	r3, [r4, #106]	@ 0x6a
20023004:	2b00      	cmp	r3, #0
20023006:	d037      	beq.n	20023078 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20023008:	f994 6072 	ldrsb.w	r6, [r4, #114]	@ 0x72
2002300c:	f994 306e 	ldrsb.w	r3, [r4, #110]	@ 0x6e
20023010:	f994 106c 	ldrsb.w	r1, [r4, #108]	@ 0x6c
20023014:	f994 206d 	ldrsb.w	r2, [r4, #109]	@ 0x6d
20023018:	9603      	str	r6, [sp, #12]
2002301a:	f994 6071 	ldrsb.w	r6, [r4, #113]	@ 0x71
2002301e:	9602      	str	r6, [sp, #8]
20023020:	f994 6070 	ldrsb.w	r6, [r4, #112]	@ 0x70
20023024:	9601      	str	r6, [sp, #4]
20023026:	f994 406f 	ldrsb.w	r4, [r4, #111]	@ 0x6f
2002302a:	9400      	str	r4, [sp, #0]
2002302c:	f7ff fd9e 	bl	20022b6c <HAL_FLASH_CFG_AHB_RCMD>
20023030:	68eb      	ldr	r3, [r5, #12]
20023032:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
20023036:	4628      	mov	r0, r5
20023038:	f7ff fd8d 	bl	20022b56 <HAL_FLASH_SET_AHB_RCMD>
2002303c:	2000      	movs	r0, #0
2002303e:	b004      	add	sp, #16
20023040:	bd70      	pop	{r4, r5, r6, pc}
20023042:	f894 3046 	ldrb.w	r3, [r4, #70]	@ 0x46
20023046:	b1bb      	cbz	r3, 20023078 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20023048:	f994 604e 	ldrsb.w	r6, [r4, #78]	@ 0x4e
2002304c:	f994 304a 	ldrsb.w	r3, [r4, #74]	@ 0x4a
20023050:	f994 1048 	ldrsb.w	r1, [r4, #72]	@ 0x48
20023054:	f994 2049 	ldrsb.w	r2, [r4, #73]	@ 0x49
20023058:	9603      	str	r6, [sp, #12]
2002305a:	f994 604d 	ldrsb.w	r6, [r4, #77]	@ 0x4d
2002305e:	9602      	str	r6, [sp, #8]
20023060:	f994 604c 	ldrsb.w	r6, [r4, #76]	@ 0x4c
20023064:	9601      	str	r6, [sp, #4]
20023066:	f994 404b 	ldrsb.w	r4, [r4, #75]	@ 0x4b
2002306a:	9400      	str	r4, [sp, #0]
2002306c:	f7ff fd7e 	bl	20022b6c <HAL_FLASH_CFG_AHB_RCMD>
20023070:	68eb      	ldr	r3, [r5, #12]
20023072:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
20023076:	e7de      	b.n	20023036 <HAL_FLASH_CONFIG_AHB_READ+0x42>
20023078:	2001      	movs	r0, #1
2002307a:	e7e0      	b.n	2002303e <HAL_FLASH_CONFIG_AHB_READ+0x4a>

2002307c <HAL_FLASH_CONFIG_FULL_AHB_READ>:
2002307c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
2002307e:	4605      	mov	r5, r0
20023080:	2800      	cmp	r0, #0
20023082:	d036      	beq.n	200230f2 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x76>
20023084:	68c4      	ldr	r4, [r0, #12]
20023086:	b1e1      	cbz	r1, 200230c2 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x46>
20023088:	f994 616e 	ldrsb.w	r6, [r4, #366]	@ 0x16e
2002308c:	f994 316a 	ldrsb.w	r3, [r4, #362]	@ 0x16a
20023090:	f994 1168 	ldrsb.w	r1, [r4, #360]	@ 0x168
20023094:	f994 2169 	ldrsb.w	r2, [r4, #361]	@ 0x169
20023098:	9603      	str	r6, [sp, #12]
2002309a:	f994 616d 	ldrsb.w	r6, [r4, #365]	@ 0x16d
2002309e:	9602      	str	r6, [sp, #8]
200230a0:	f994 616c 	ldrsb.w	r6, [r4, #364]	@ 0x16c
200230a4:	9601      	str	r6, [sp, #4]
200230a6:	f994 416b 	ldrsb.w	r4, [r4, #363]	@ 0x16b
200230aa:	9400      	str	r4, [sp, #0]
200230ac:	f7ff fd5e 	bl	20022b6c <HAL_FLASH_CFG_AHB_RCMD>
200230b0:	68eb      	ldr	r3, [r5, #12]
200230b2:	f893 1166 	ldrb.w	r1, [r3, #358]	@ 0x166
200230b6:	4628      	mov	r0, r5
200230b8:	f7ff fd4d 	bl	20022b56 <HAL_FLASH_SET_AHB_RCMD>
200230bc:	2000      	movs	r0, #0
200230be:	b004      	add	sp, #16
200230c0:	bd70      	pop	{r4, r5, r6, pc}
200230c2:	f994 615c 	ldrsb.w	r6, [r4, #348]	@ 0x15c
200230c6:	f994 3158 	ldrsb.w	r3, [r4, #344]	@ 0x158
200230ca:	f994 1156 	ldrsb.w	r1, [r4, #342]	@ 0x156
200230ce:	f994 2157 	ldrsb.w	r2, [r4, #343]	@ 0x157
200230d2:	9603      	str	r6, [sp, #12]
200230d4:	f994 615b 	ldrsb.w	r6, [r4, #347]	@ 0x15b
200230d8:	9602      	str	r6, [sp, #8]
200230da:	f994 615a 	ldrsb.w	r6, [r4, #346]	@ 0x15a
200230de:	9601      	str	r6, [sp, #4]
200230e0:	f994 4159 	ldrsb.w	r4, [r4, #345]	@ 0x159
200230e4:	9400      	str	r4, [sp, #0]
200230e6:	f7ff fd41 	bl	20022b6c <HAL_FLASH_CFG_AHB_RCMD>
200230ea:	68eb      	ldr	r3, [r5, #12]
200230ec:	f893 1154 	ldrb.w	r1, [r3, #340]	@ 0x154
200230f0:	e7e1      	b.n	200230b6 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x3a>
200230f2:	2001      	movs	r0, #1
200230f4:	e7e3      	b.n	200230be <HAL_FLASH_CONFIG_FULL_AHB_READ+0x42>

200230f6 <HAL_FLASH_PRE_CMD>:
200230f6:	b530      	push	{r4, r5, lr}
200230f8:	68c4      	ldr	r4, [r0, #12]
200230fa:	b087      	sub	sp, #28
200230fc:	b304      	cbz	r4, 20023140 <HAL_FLASH_PRE_CMD+0x4a>
200230fe:	2938      	cmp	r1, #56	@ 0x38
20023100:	d81e      	bhi.n	20023140 <HAL_FLASH_PRE_CMD+0x4a>
20023102:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
20023106:	440c      	add	r4, r1
20023108:	7c23      	ldrb	r3, [r4, #16]
2002310a:	b1cb      	cbz	r3, 20023140 <HAL_FLASH_PRE_CMD+0x4a>
2002310c:	f994 5018 	ldrsb.w	r5, [r4, #24]
20023110:	f994 3013 	ldrsb.w	r3, [r4, #19]
20023114:	f994 2012 	ldrsb.w	r2, [r4, #18]
20023118:	f994 1011 	ldrsb.w	r1, [r4, #17]
2002311c:	9504      	str	r5, [sp, #16]
2002311e:	f994 5017 	ldrsb.w	r5, [r4, #23]
20023122:	9503      	str	r5, [sp, #12]
20023124:	f994 5016 	ldrsb.w	r5, [r4, #22]
20023128:	9502      	str	r5, [sp, #8]
2002312a:	f994 5015 	ldrsb.w	r5, [r4, #21]
2002312e:	9501      	str	r5, [sp, #4]
20023130:	f994 4014 	ldrsb.w	r4, [r4, #20]
20023134:	9400      	str	r4, [sp, #0]
20023136:	f7ff fdd0 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
2002313a:	2000      	movs	r0, #0
2002313c:	b007      	add	sp, #28
2002313e:	bd30      	pop	{r4, r5, pc}
20023140:	2001      	movs	r0, #1
20023142:	e7fb      	b.n	2002313c <HAL_FLASH_PRE_CMD+0x46>

20023144 <HAL_FLASH_ISSUE_CMD>:
20023144:	b5f0      	push	{r4, r5, r6, r7, lr}
20023146:	68c4      	ldr	r4, [r0, #12]
20023148:	4606      	mov	r6, r0
2002314a:	4617      	mov	r7, r2
2002314c:	b087      	sub	sp, #28
2002314e:	b354      	cbz	r4, 200231a6 <HAL_FLASH_ISSUE_CMD+0x62>
20023150:	2938      	cmp	r1, #56	@ 0x38
20023152:	d828      	bhi.n	200231a6 <HAL_FLASH_ISSUE_CMD+0x62>
20023154:	eb01 05c1 	add.w	r5, r1, r1, lsl #3
20023158:	442c      	add	r4, r5
2002315a:	7c23      	ldrb	r3, [r4, #16]
2002315c:	b31b      	cbz	r3, 200231a6 <HAL_FLASH_ISSUE_CMD+0x62>
2002315e:	f994 c018 	ldrsb.w	ip, [r4, #24]
20023162:	f994 3013 	ldrsb.w	r3, [r4, #19]
20023166:	f994 2012 	ldrsb.w	r2, [r4, #18]
2002316a:	f994 1011 	ldrsb.w	r1, [r4, #17]
2002316e:	f8cd c010 	str.w	ip, [sp, #16]
20023172:	f994 c017 	ldrsb.w	ip, [r4, #23]
20023176:	f8cd c00c 	str.w	ip, [sp, #12]
2002317a:	f994 c016 	ldrsb.w	ip, [r4, #22]
2002317e:	f8cd c008 	str.w	ip, [sp, #8]
20023182:	f994 c015 	ldrsb.w	ip, [r4, #21]
20023186:	f8cd c004 	str.w	ip, [sp, #4]
2002318a:	f994 4014 	ldrsb.w	r4, [r4, #20]
2002318e:	9400      	str	r4, [sp, #0]
20023190:	f7ff fda3 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
20023194:	68f3      	ldr	r3, [r6, #12]
20023196:	463a      	mov	r2, r7
20023198:	442b      	add	r3, r5
2002319a:	4630      	mov	r0, r6
2002319c:	7c19      	ldrb	r1, [r3, #16]
2002319e:	f7ff fd57 	bl	20022c50 <HAL_FLASH_SET_CMD>
200231a2:	b007      	add	sp, #28
200231a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
200231a6:	2001      	movs	r0, #1
200231a8:	e7fb      	b.n	200231a2 <HAL_FLASH_ISSUE_CMD+0x5e>

200231aa <HAL_FLASH_ISSUE_CMD_SEQ>:
200231aa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200231ae:	4690      	mov	r8, r2
200231b0:	68c2      	ldr	r2, [r0, #12]
200231b2:	4604      	mov	r4, r0
200231b4:	b086      	sub	sp, #24
200231b6:	2a00      	cmp	r2, #0
200231b8:	d072      	beq.n	200232a0 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200231ba:	2938      	cmp	r1, #56	@ 0x38
200231bc:	d870      	bhi.n	200232a0 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200231be:	eb01 07c1 	add.w	r7, r1, r1, lsl #3
200231c2:	19d6      	adds	r6, r2, r7
200231c4:	7c31      	ldrb	r1, [r6, #16]
200231c6:	2900      	cmp	r1, #0
200231c8:	d06a      	beq.n	200232a0 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200231ca:	2b38      	cmp	r3, #56	@ 0x38
200231cc:	d868      	bhi.n	200232a0 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200231ce:	eb03 05c3 	add.w	r5, r3, r3, lsl #3
200231d2:	442a      	add	r2, r5
200231d4:	7c13      	ldrb	r3, [r2, #16]
200231d6:	2b00      	cmp	r3, #0
200231d8:	d062      	beq.n	200232a0 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200231da:	f996 c018 	ldrsb.w	ip, [r6, #24]
200231de:	f996 3013 	ldrsb.w	r3, [r6, #19]
200231e2:	f996 2012 	ldrsb.w	r2, [r6, #18]
200231e6:	f996 1011 	ldrsb.w	r1, [r6, #17]
200231ea:	f8cd c010 	str.w	ip, [sp, #16]
200231ee:	f996 c017 	ldrsb.w	ip, [r6, #23]
200231f2:	f8cd c00c 	str.w	ip, [sp, #12]
200231f6:	f996 c016 	ldrsb.w	ip, [r6, #22]
200231fa:	f8cd c008 	str.w	ip, [sp, #8]
200231fe:	f996 c015 	ldrsb.w	ip, [r6, #21]
20023202:	f8cd c004 	str.w	ip, [sp, #4]
20023206:	f996 6014 	ldrsb.w	r6, [r6, #20]
2002320a:	9600      	str	r6, [sp, #0]
2002320c:	f7ff fd65 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
20023210:	68e0      	ldr	r0, [r4, #12]
20023212:	4428      	add	r0, r5
20023214:	f990 6018 	ldrsb.w	r6, [r0, #24]
20023218:	f990 3013 	ldrsb.w	r3, [r0, #19]
2002321c:	f990 2012 	ldrsb.w	r2, [r0, #18]
20023220:	f990 1011 	ldrsb.w	r1, [r0, #17]
20023224:	9604      	str	r6, [sp, #16]
20023226:	f990 6017 	ldrsb.w	r6, [r0, #23]
2002322a:	9603      	str	r6, [sp, #12]
2002322c:	f990 6016 	ldrsb.w	r6, [r0, #22]
20023230:	9602      	str	r6, [sp, #8]
20023232:	f990 6015 	ldrsb.w	r6, [r0, #21]
20023236:	9601      	str	r6, [sp, #4]
20023238:	f990 0014 	ldrsb.w	r0, [r0, #20]
2002323c:	9000      	str	r0, [sp, #0]
2002323e:	4620      	mov	r0, r4
20023240:	f7ff fd6c 	bl	20022d1c <HAL_FLASH_MANUAL_CMD2>
20023244:	2200      	movs	r2, #0
20023246:	6823      	ldr	r3, [r4, #0]
20023248:	2101      	movs	r1, #1
2002324a:	67da      	str	r2, [r3, #124]	@ 0x7c
2002324c:	68e3      	ldr	r3, [r4, #12]
2002324e:	6822      	ldr	r2, [r4, #0]
20023250:	442b      	add	r3, r5
20023252:	7c1b      	ldrb	r3, [r3, #16]
20023254:	4620      	mov	r0, r4
20023256:	62d3      	str	r3, [r2, #44]	@ 0x2c
20023258:	6823      	ldr	r3, [r4, #0]
2002325a:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
2002325c:	f8c3 2080 	str.w	r2, [r3, #128]	@ 0x80
20023260:	f7ff fe01 	bl	20022e66 <HAL_FLASH_ENABLE_CMD2>
20023264:	4620      	mov	r0, r4
20023266:	f7ff fe0c 	bl	20022e82 <HAL_FLASH_STAUS_MATCH_CMD2>
2002326a:	6823      	ldr	r3, [r4, #0]
2002326c:	f8c3 801c 	str.w	r8, [r3, #28]
20023270:	68e3      	ldr	r3, [r4, #12]
20023272:	6822      	ldr	r2, [r4, #0]
20023274:	443b      	add	r3, r7
20023276:	7c1b      	ldrb	r3, [r3, #16]
20023278:	6193      	str	r3, [r2, #24]
2002327a:	4620      	mov	r0, r4
2002327c:	f7ff fd0a 	bl	20022c94 <HAL_FLASH_STATUS_MATCH>
20023280:	2800      	cmp	r0, #0
20023282:	d0fa      	beq.n	2002327a <HAL_FLASH_ISSUE_CMD_SEQ+0xd0>
20023284:	2109      	movs	r1, #9
20023286:	4620      	mov	r0, r4
20023288:	f7ff fcfe 	bl	20022c88 <HAL_FLASH_CLR_STATUS>
2002328c:	2100      	movs	r1, #0
2002328e:	f7ff fdea 	bl	20022e66 <HAL_FLASH_ENABLE_CMD2>
20023292:	4620      	mov	r0, r4
20023294:	f7ff fdf5 	bl	20022e82 <HAL_FLASH_STAUS_MATCH_CMD2>
20023298:	4608      	mov	r0, r1
2002329a:	b006      	add	sp, #24
2002329c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200232a0:	2001      	movs	r0, #1
200232a2:	e7fa      	b.n	2002329a <HAL_FLASH_ISSUE_CMD_SEQ+0xf0>

200232a4 <nor_qspi_switch>:
200232a4:	b570      	push	{r4, r5, r6, lr}
200232a6:	4604      	mov	r4, r0
200232a8:	b3e0      	cbz	r0, 20023324 <nor_qspi_switch+0x80>
200232aa:	68c3      	ldr	r3, [r0, #12]
200232ac:	b3d3      	cbz	r3, 20023324 <nor_qspi_switch+0x80>
200232ae:	b3c9      	cbz	r1, 20023324 <nor_qspi_switch+0x80>
200232b0:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
200232b4:	2101      	movs	r1, #1
200232b6:	b3b5      	cbz	r5, 20023326 <nor_qspi_switch+0x82>
200232b8:	f7ff fca5 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
200232bc:	2200      	movs	r2, #0
200232be:	2114      	movs	r1, #20
200232c0:	4620      	mov	r0, r4
200232c2:	f7ff ff3f 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
200232c6:	4620      	mov	r0, r4
200232c8:	f7ff fcf3 	bl	20022cb2 <HAL_FLASH_READ32>
200232cc:	f010 0501 	ands.w	r5, r0, #1
200232d0:	d000      	beq.n	200232d4 <nor_qspi_switch+0x30>
200232d2:	e7fe      	b.n	200232d2 <nor_qspi_switch+0x2e>
200232d4:	462a      	mov	r2, r5
200232d6:	2115      	movs	r1, #21
200232d8:	4620      	mov	r0, r4
200232da:	f7ff ff33 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
200232de:	4606      	mov	r6, r0
200232e0:	b120      	cbz	r0, 200232ec <nor_qspi_switch+0x48>
200232e2:	462a      	mov	r2, r5
200232e4:	4629      	mov	r1, r5
200232e6:	4620      	mov	r0, r4
200232e8:	f7ff ff2c 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
200232ec:	2102      	movs	r1, #2
200232ee:	4620      	mov	r0, r4
200232f0:	f7ff fc82 	bl	20022bf8 <HAL_FLASH_WRITE_WORD>
200232f4:	2101      	movs	r1, #1
200232f6:	4620      	mov	r0, r4
200232f8:	f7ff fc85 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
200232fc:	2200      	movs	r2, #0
200232fe:	212b      	movs	r1, #43	@ 0x2b
20023300:	4620      	mov	r0, r4
20023302:	f7ff ff1f 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023306:	b16e      	cbz	r6, 20023324 <nor_qspi_switch+0x80>
20023308:	2101      	movs	r1, #1
2002330a:	4620      	mov	r0, r4
2002330c:	f7ff fc7b 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20023310:	2200      	movs	r2, #0
20023312:	2102      	movs	r1, #2
20023314:	4620      	mov	r0, r4
20023316:	f7ff ff15 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
2002331a:	4620      	mov	r0, r4
2002331c:	f7ff fcc0 	bl	20022ca0 <HAL_FLASH_IS_PROG_DONE>
20023320:	2800      	cmp	r0, #0
20023322:	d0f5      	beq.n	20023310 <nor_qspi_switch+0x6c>
20023324:	bd70      	pop	{r4, r5, r6, pc}
20023326:	f7ff fc6e 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
2002332a:	462a      	mov	r2, r5
2002332c:	2102      	movs	r1, #2
2002332e:	4620      	mov	r0, r4
20023330:	f7ff ff08 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023334:	4620      	mov	r0, r4
20023336:	f7ff fcbc 	bl	20022cb2 <HAL_FLASH_READ32>
2002333a:	462a      	mov	r2, r5
2002333c:	2114      	movs	r1, #20
2002333e:	4620      	mov	r0, r4
20023340:	f7ff ff00 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023344:	b910      	cbnz	r0, 2002334c <nor_qspi_switch+0xa8>
20023346:	4620      	mov	r0, r4
20023348:	f7ff fcb3 	bl	20022cb2 <HAL_FLASH_READ32>
2002334c:	68e3      	ldr	r3, [r4, #12]
2002334e:	7a1b      	ldrb	r3, [r3, #8]
20023350:	b3ab      	cbz	r3, 200233be <nor_qspi_switch+0x11a>
20023352:	2101      	movs	r1, #1
20023354:	f003 050f 	and.w	r5, r3, #15
20023358:	091b      	lsrs	r3, r3, #4
2002335a:	fa01 f303 	lsl.w	r3, r1, r3
2002335e:	b2db      	uxtb	r3, r3
20023360:	b10d      	cbz	r5, 20023366 <nor_qspi_switch+0xc2>
20023362:	461d      	mov	r5, r3
20023364:	2300      	movs	r3, #0
20023366:	2200      	movs	r2, #0
20023368:	2115      	movs	r1, #21
2002336a:	4620      	mov	r0, r4
2002336c:	ea43 2505 	orr.w	r5, r3, r5, lsl #8
20023370:	f7ff fee8 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023374:	4606      	mov	r6, r0
20023376:	b120      	cbz	r0, 20023382 <nor_qspi_switch+0xde>
20023378:	2200      	movs	r2, #0
2002337a:	4620      	mov	r0, r4
2002337c:	4611      	mov	r1, r2
2002337e:	f7ff fee1 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023382:	4629      	mov	r1, r5
20023384:	4620      	mov	r0, r4
20023386:	f7ff fc37 	bl	20022bf8 <HAL_FLASH_WRITE_WORD>
2002338a:	2102      	movs	r1, #2
2002338c:	4620      	mov	r0, r4
2002338e:	f7ff fc3a 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20023392:	2200      	movs	r2, #0
20023394:	2103      	movs	r1, #3
20023396:	4620      	mov	r0, r4
20023398:	f7ff fed4 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
2002339c:	2e00      	cmp	r6, #0
2002339e:	d0c1      	beq.n	20023324 <nor_qspi_switch+0x80>
200233a0:	2101      	movs	r1, #1
200233a2:	4620      	mov	r0, r4
200233a4:	f7ff fc2f 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
200233a8:	2200      	movs	r2, #0
200233aa:	2102      	movs	r1, #2
200233ac:	4620      	mov	r0, r4
200233ae:	f7ff fec9 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
200233b2:	4620      	mov	r0, r4
200233b4:	f7ff fc74 	bl	20022ca0 <HAL_FLASH_IS_PROG_DONE>
200233b8:	2800      	cmp	r0, #0
200233ba:	d0f5      	beq.n	200233a8 <nor_qspi_switch+0x104>
200233bc:	e7b2      	b.n	20023324 <nor_qspi_switch+0x80>
200233be:	2502      	movs	r5, #2
200233c0:	e7d1      	b.n	20023366 <nor_qspi_switch+0xc2>

200233c2 <HAL_FLASH_SET_QUAL_SPI>:
200233c2:	b538      	push	{r3, r4, r5, lr}
200233c4:	4604      	mov	r4, r0
200233c6:	460d      	mov	r5, r1
200233c8:	f7ff ff6c 	bl	200232a4 <nor_qspi_switch>
200233cc:	4629      	mov	r1, r5
200233ce:	4620      	mov	r0, r4
200233d0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
200233d4:	f7ff be0e 	b.w	20022ff4 <HAL_FLASH_CONFIG_AHB_READ>

200233d8 <HAL_FLASH_FADDR_SET_QSPI>:
200233d8:	b538      	push	{r3, r4, r5, lr}
200233da:	4604      	mov	r4, r0
200233dc:	460d      	mov	r5, r1
200233de:	f7ff ff61 	bl	200232a4 <nor_qspi_switch>
200233e2:	4629      	mov	r1, r5
200233e4:	4620      	mov	r0, r4
200233e6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
200233ea:	f7ff be47 	b.w	2002307c <HAL_FLASH_CONFIG_FULL_AHB_READ>

200233ee <HAL_FLASH_GET_NOR_ID>:
200233ee:	b510      	push	{r4, lr}
200233f0:	4604      	mov	r4, r0
200233f2:	b140      	cbz	r0, 20023406 <HAL_FLASH_GET_NOR_ID+0x18>
200233f4:	6802      	ldr	r2, [r0, #0]
200233f6:	6a93      	ldr	r3, [r2, #40]	@ 0x28
200233f8:	f36f 0315 	bfc	r3, #0, #22
200233fc:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
20023400:	f043 0301 	orr.w	r3, r3, #1
20023404:	6293      	str	r3, [r2, #40]	@ 0x28
20023406:	2103      	movs	r1, #3
20023408:	4620      	mov	r0, r4
2002340a:	f7ff fbfc 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
2002340e:	2200      	movs	r2, #0
20023410:	219f      	movs	r1, #159	@ 0x9f
20023412:	4620      	mov	r0, r4
20023414:	f7ff fc1c 	bl	20022c50 <HAL_FLASH_SET_CMD>
20023418:	4620      	mov	r0, r4
2002341a:	f7ff fc4a 	bl	20022cb2 <HAL_FLASH_READ32>
2002341e:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
20023422:	bd10      	pop	{r4, pc}

20023424 <HAL_FLASH_CLR_PROTECT>:
20023424:	b570      	push	{r4, r5, r6, lr}
20023426:	4604      	mov	r4, r0
20023428:	2800      	cmp	r0, #0
2002342a:	d03e      	beq.n	200234aa <HAL_FLASH_CLR_PROTECT+0x86>
2002342c:	68c3      	ldr	r3, [r0, #12]
2002342e:	2101      	movs	r1, #1
20023430:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
20023434:	2d00      	cmp	r5, #0
20023436:	d03b      	beq.n	200234b0 <HAL_FLASH_CLR_PROTECT+0x8c>
20023438:	f7ff fbe5 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
2002343c:	2200      	movs	r2, #0
2002343e:	2102      	movs	r1, #2
20023440:	4620      	mov	r0, r4
20023442:	f7ff fe7f 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023446:	bb88      	cbnz	r0, 200234ac <HAL_FLASH_CLR_PROTECT+0x88>
20023448:	4620      	mov	r0, r4
2002344a:	f7ff fc32 	bl	20022cb2 <HAL_FLASH_READ32>
2002344e:	b2c0      	uxtb	r0, r0
20023450:	68e3      	ldr	r3, [r4, #12]
20023452:	79dd      	ldrb	r5, [r3, #7]
20023454:	b10d      	cbz	r5, 2002345a <HAL_FLASH_CLR_PROTECT+0x36>
20023456:	ea20 0505 	bic.w	r5, r0, r5
2002345a:	2200      	movs	r2, #0
2002345c:	2115      	movs	r1, #21
2002345e:	4620      	mov	r0, r4
20023460:	f7ff fe70 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023464:	4606      	mov	r6, r0
20023466:	b120      	cbz	r0, 20023472 <HAL_FLASH_CLR_PROTECT+0x4e>
20023468:	2200      	movs	r2, #0
2002346a:	4620      	mov	r0, r4
2002346c:	4611      	mov	r1, r2
2002346e:	f7ff fe69 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023472:	4629      	mov	r1, r5
20023474:	4620      	mov	r0, r4
20023476:	f7ff fbbf 	bl	20022bf8 <HAL_FLASH_WRITE_WORD>
2002347a:	2101      	movs	r1, #1
2002347c:	4620      	mov	r0, r4
2002347e:	f7ff fbc2 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20023482:	2200      	movs	r2, #0
20023484:	2103      	movs	r1, #3
20023486:	4620      	mov	r0, r4
20023488:	f7ff fe5c 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
2002348c:	b16e      	cbz	r6, 200234aa <HAL_FLASH_CLR_PROTECT+0x86>
2002348e:	2101      	movs	r1, #1
20023490:	4620      	mov	r0, r4
20023492:	f7ff fbb8 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20023496:	2200      	movs	r2, #0
20023498:	2102      	movs	r1, #2
2002349a:	4620      	mov	r0, r4
2002349c:	f7ff fe52 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
200234a0:	4620      	mov	r0, r4
200234a2:	f7ff fbfd 	bl	20022ca0 <HAL_FLASH_IS_PROG_DONE>
200234a6:	2800      	cmp	r0, #0
200234a8:	d0f5      	beq.n	20023496 <HAL_FLASH_CLR_PROTECT+0x72>
200234aa:	bd70      	pop	{r4, r5, r6, pc}
200234ac:	2000      	movs	r0, #0
200234ae:	e7cf      	b.n	20023450 <HAL_FLASH_CLR_PROTECT+0x2c>
200234b0:	f7ff fba9 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
200234b4:	462a      	mov	r2, r5
200234b6:	2102      	movs	r1, #2
200234b8:	4620      	mov	r0, r4
200234ba:	f7ff fe43 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
200234be:	2800      	cmp	r0, #0
200234c0:	d13e      	bne.n	20023540 <HAL_FLASH_CLR_PROTECT+0x11c>
200234c2:	4620      	mov	r0, r4
200234c4:	f7ff fbf5 	bl	20022cb2 <HAL_FLASH_READ32>
200234c8:	b2c6      	uxtb	r6, r0
200234ca:	2200      	movs	r2, #0
200234cc:	2114      	movs	r1, #20
200234ce:	4620      	mov	r0, r4
200234d0:	f7ff fe38 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
200234d4:	b918      	cbnz	r0, 200234de <HAL_FLASH_CLR_PROTECT+0xba>
200234d6:	4620      	mov	r0, r4
200234d8:	f7ff fbeb 	bl	20022cb2 <HAL_FLASH_READ32>
200234dc:	b2c5      	uxtb	r5, r0
200234de:	68e3      	ldr	r3, [r4, #12]
200234e0:	79d9      	ldrb	r1, [r3, #7]
200234e2:	b109      	cbz	r1, 200234e8 <HAL_FLASH_CLR_PROTECT+0xc4>
200234e4:	ea26 0101 	bic.w	r1, r6, r1
200234e8:	2200      	movs	r2, #0
200234ea:	4620      	mov	r0, r4
200234ec:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
200234f0:	2115      	movs	r1, #21
200234f2:	f7ff fe27 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
200234f6:	4606      	mov	r6, r0
200234f8:	b120      	cbz	r0, 20023504 <HAL_FLASH_CLR_PROTECT+0xe0>
200234fa:	2200      	movs	r2, #0
200234fc:	4620      	mov	r0, r4
200234fe:	4611      	mov	r1, r2
20023500:	f7ff fe20 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023504:	4629      	mov	r1, r5
20023506:	4620      	mov	r0, r4
20023508:	f7ff fb76 	bl	20022bf8 <HAL_FLASH_WRITE_WORD>
2002350c:	2102      	movs	r1, #2
2002350e:	4620      	mov	r0, r4
20023510:	f7ff fb79 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20023514:	2200      	movs	r2, #0
20023516:	2103      	movs	r1, #3
20023518:	4620      	mov	r0, r4
2002351a:	f7ff fe13 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
2002351e:	2e00      	cmp	r6, #0
20023520:	d0c3      	beq.n	200234aa <HAL_FLASH_CLR_PROTECT+0x86>
20023522:	2101      	movs	r1, #1
20023524:	4620      	mov	r0, r4
20023526:	f7ff fb6e 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
2002352a:	2200      	movs	r2, #0
2002352c:	2102      	movs	r1, #2
2002352e:	4620      	mov	r0, r4
20023530:	f7ff fe08 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023534:	4620      	mov	r0, r4
20023536:	f7ff fbb3 	bl	20022ca0 <HAL_FLASH_IS_PROG_DONE>
2002353a:	2800      	cmp	r0, #0
2002353c:	d0f5      	beq.n	2002352a <HAL_FLASH_CLR_PROTECT+0x106>
2002353e:	e7b4      	b.n	200234aa <HAL_FLASH_CLR_PROTECT+0x86>
20023540:	462e      	mov	r6, r5
20023542:	e7c2      	b.n	200234ca <HAL_FLASH_CLR_PROTECT+0xa6>

20023544 <HAL_QSPI_SET_CLK_INV>:
20023544:	b160      	cbz	r0, 20023560 <HAL_QSPI_SET_CLK_INV+0x1c>
20023546:	6800      	ldr	r0, [r0, #0]
20023548:	b150      	cbz	r0, 20023560 <HAL_QSPI_SET_CLK_INV+0x1c>
2002354a:	6d83      	ldr	r3, [r0, #88]	@ 0x58
2002354c:	0609      	lsls	r1, r1, #24
2002354e:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
20023552:	f001 7180 	and.w	r1, r1, #16777216	@ 0x1000000
20023556:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
2002355a:	4311      	orrs	r1, r2
2002355c:	4319      	orrs	r1, r3
2002355e:	6581      	str	r1, [r0, #88]	@ 0x58
20023560:	4770      	bx	lr

20023562 <HAL_FLASH_RELEASE_DPD>:
20023562:	b538      	push	{r3, r4, r5, lr}
20023564:	4604      	mov	r4, r0
20023566:	b1d0      	cbz	r0, 2002359e <HAL_FLASH_RELEASE_DPD+0x3c>
20023568:	6803      	ldr	r3, [r0, #0]
2002356a:	21ab      	movs	r1, #171	@ 0xab
2002356c:	681d      	ldr	r5, [r3, #0]
2002356e:	f015 0501 	ands.w	r5, r5, #1
20023572:	bf02      	ittt	eq
20023574:	681a      	ldreq	r2, [r3, #0]
20023576:	f042 0201 	orreq.w	r2, r2, #1
2002357a:	601a      	streq	r2, [r3, #0]
2002357c:	6802      	ldr	r2, [r0, #0]
2002357e:	6a93      	ldr	r3, [r2, #40]	@ 0x28
20023580:	f36f 0315 	bfc	r3, #0, #22
20023584:	f043 0301 	orr.w	r3, r3, #1
20023588:	6293      	str	r3, [r2, #40]	@ 0x28
2002358a:	2200      	movs	r2, #0
2002358c:	f7ff fb60 	bl	20022c50 <HAL_FLASH_SET_CMD>
20023590:	b925      	cbnz	r5, 2002359c <HAL_FLASH_RELEASE_DPD+0x3a>
20023592:	6822      	ldr	r2, [r4, #0]
20023594:	6813      	ldr	r3, [r2, #0]
20023596:	f023 0301 	bic.w	r3, r3, #1
2002359a:	6013      	str	r3, [r2, #0]
2002359c:	bd38      	pop	{r3, r4, r5, pc}
2002359e:	2001      	movs	r0, #1
200235a0:	e7fc      	b.n	2002359c <HAL_FLASH_RELEASE_DPD+0x3a>

200235a2 <flash_handle_valid>:
200235a2:	b118      	cbz	r0, 200235ac <flash_handle_valid+0xa>
200235a4:	68c0      	ldr	r0, [r0, #12]
200235a6:	3800      	subs	r0, #0
200235a8:	bf18      	it	ne
200235aa:	2001      	movne	r0, #1
200235ac:	4770      	bx	lr

200235ae <HAL_GET_FLASH_MID>:
200235ae:	2000      	movs	r0, #0
200235b0:	4770      	bx	lr

200235b2 <HAL_FLASH_DMA_START>:
200235b2:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200235b6:	4688      	mov	r8, r1
200235b8:	4699      	mov	r9, r3
200235ba:	4604      	mov	r4, r0
200235bc:	2800      	cmp	r0, #0
200235be:	d045      	beq.n	2002364c <HAL_FLASH_DMA_START+0x9a>
200235c0:	6883      	ldr	r3, [r0, #8]
200235c2:	2b00      	cmp	r3, #0
200235c4:	d042      	beq.n	2002364c <HAL_FLASH_DMA_START+0x9a>
200235c6:	f1b9 0f00 	cmp.w	r9, #0
200235ca:	d03f      	beq.n	2002364c <HAL_FLASH_DMA_START+0x9a>
200235cc:	6801      	ldr	r1, [r0, #0]
200235ce:	680f      	ldr	r7, [r1, #0]
200235d0:	b332      	cbz	r2, 20023620 <HAL_FLASH_DMA_START+0x6e>
200235d2:	2210      	movs	r2, #16
200235d4:	609a      	str	r2, [r3, #8]
200235d6:	2300      	movs	r3, #0
200235d8:	6882      	ldr	r2, [r0, #8]
200235da:	464e      	mov	r6, r9
200235dc:	6153      	str	r3, [r2, #20]
200235de:	6882      	ldr	r2, [r0, #8]
200235e0:	6193      	str	r3, [r2, #24]
200235e2:	6882      	ldr	r2, [r0, #8]
200235e4:	60d3      	str	r3, [r2, #12]
200235e6:	2280      	movs	r2, #128	@ 0x80
200235e8:	6883      	ldr	r3, [r0, #8]
200235ea:	611a      	str	r2, [r3, #16]
200235ec:	6805      	ldr	r5, [r0, #0]
200235ee:	3504      	adds	r5, #4
200235f0:	68a0      	ldr	r0, [r4, #8]
200235f2:	f7fe ffa3 	bl	2002253c <HAL_DMA_DeInit>
200235f6:	bb50      	cbnz	r0, 2002364e <HAL_FLASH_DMA_START+0x9c>
200235f8:	68a0      	ldr	r0, [r4, #8]
200235fa:	f7fe ff3b 	bl	20022474 <HAL_DMA_Init>
200235fe:	bb30      	cbnz	r0, 2002364e <HAL_FLASH_DMA_START+0x9c>
20023600:	6823      	ldr	r3, [r4, #0]
20023602:	f047 0720 	orr.w	r7, r7, #32
20023606:	601f      	str	r7, [r3, #0]
20023608:	6822      	ldr	r2, [r4, #0]
2002360a:	f109 33ff 	add.w	r3, r9, #4294967295
2002360e:	6253      	str	r3, [r2, #36]	@ 0x24
20023610:	4641      	mov	r1, r8
20023612:	4633      	mov	r3, r6
20023614:	462a      	mov	r2, r5
20023616:	68a0      	ldr	r0, [r4, #8]
20023618:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
2002361c:	f7ff b8ec 	b.w	200227f8 <HAL_DMA_Start>
20023620:	f44f 7100 	mov.w	r1, #512	@ 0x200
20023624:	609a      	str	r2, [r3, #8]
20023626:	6883      	ldr	r3, [r0, #8]
20023628:	f109 0603 	add.w	r6, r9, #3
2002362c:	6159      	str	r1, [r3, #20]
2002362e:	f44f 6100 	mov.w	r1, #2048	@ 0x800
20023632:	6883      	ldr	r3, [r0, #8]
20023634:	4645      	mov	r5, r8
20023636:	6199      	str	r1, [r3, #24]
20023638:	6883      	ldr	r3, [r0, #8]
2002363a:	08b6      	lsrs	r6, r6, #2
2002363c:	60da      	str	r2, [r3, #12]
2002363e:	2280      	movs	r2, #128	@ 0x80
20023640:	6883      	ldr	r3, [r0, #8]
20023642:	611a      	str	r2, [r3, #16]
20023644:	6803      	ldr	r3, [r0, #0]
20023646:	f103 0804 	add.w	r8, r3, #4
2002364a:	e7d1      	b.n	200235f0 <HAL_FLASH_DMA_START+0x3e>
2002364c:	2001      	movs	r0, #1
2002364e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

20023652 <HAL_FLASH_DMA_WAIT_DONE>:
20023652:	b510      	push	{r4, lr}
20023654:	460a      	mov	r2, r1
20023656:	4604      	mov	r4, r0
20023658:	b170      	cbz	r0, 20023678 <HAL_FLASH_DMA_WAIT_DONE+0x26>
2002365a:	6880      	ldr	r0, [r0, #8]
2002365c:	b160      	cbz	r0, 20023678 <HAL_FLASH_DMA_WAIT_DONE+0x26>
2002365e:	6ae1      	ldr	r1, [r4, #44]	@ 0x2c
20023660:	b111      	cbz	r1, 20023668 <HAL_FLASH_DMA_WAIT_DONE+0x16>
20023662:	f04f 32ff 	mov.w	r2, #4294967295
20023666:	2100      	movs	r1, #0
20023668:	f7fe ffc8 	bl	200225fc <HAL_DMA_PollForTransfer>
2002366c:	6822      	ldr	r2, [r4, #0]
2002366e:	6813      	ldr	r3, [r2, #0]
20023670:	f023 0320 	bic.w	r3, r3, #32
20023674:	6013      	str	r3, [r2, #0]
20023676:	bd10      	pop	{r4, pc}
20023678:	2001      	movs	r0, #1
2002367a:	e7fc      	b.n	20023676 <HAL_FLASH_DMA_WAIT_DONE+0x24>

2002367c <HAL_FLASH_ALIAS_CFG>:
2002367c:	b538      	push	{r3, r4, r5, lr}
2002367e:	461d      	mov	r5, r3
20023680:	4604      	mov	r4, r0
20023682:	b158      	cbz	r0, 2002369c <HAL_FLASH_ALIAS_CFG+0x20>
20023684:	6903      	ldr	r3, [r0, #16]
20023686:	428b      	cmp	r3, r1
20023688:	bf98      	it	ls
2002368a:	1ac9      	subls	r1, r1, r3
2002368c:	f7ff fb68 	bl	20022d60 <HAL_FLASH_SET_ALIAS_RANGE>
20023690:	4629      	mov	r1, r5
20023692:	4620      	mov	r0, r4
20023694:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
20023698:	f7ff bb74 	b.w	20022d84 <HAL_FLASH_SET_ALIAS_OFFSET>
2002369c:	bd38      	pop	{r3, r4, r5, pc}

2002369e <HAL_FLASH_NONCE_CFG>:
2002369e:	b570      	push	{r4, r5, r6, lr}
200236a0:	460c      	mov	r4, r1
200236a2:	4615      	mov	r5, r2
200236a4:	4619      	mov	r1, r3
200236a6:	4606      	mov	r6, r0
200236a8:	b180      	cbz	r0, 200236cc <HAL_FLASH_NONCE_CFG+0x2e>
200236aa:	b17b      	cbz	r3, 200236cc <HAL_FLASH_NONCE_CFG+0x2e>
200236ac:	f7ff fb86 	bl	20022dbc <HAL_FLASH_SET_NONCE>
200236b0:	6933      	ldr	r3, [r6, #16]
200236b2:	4630      	mov	r0, r6
200236b4:	42a3      	cmp	r3, r4
200236b6:	bf98      	it	ls
200236b8:	1ae4      	subls	r4, r4, r3
200236ba:	42ab      	cmp	r3, r5
200236bc:	bf98      	it	ls
200236be:	1aed      	subls	r5, r5, r3
200236c0:	462a      	mov	r2, r5
200236c2:	4621      	mov	r1, r4
200236c4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
200236c8:	f7ff bb66 	b.w	20022d98 <HAL_FLASH_SET_CTR>
200236cc:	bd70      	pop	{r4, r5, r6, pc}

200236ce <HAL_FLASH_AES_CFG>:
200236ce:	b510      	push	{r4, lr}
200236d0:	4604      	mov	r4, r0
200236d2:	b148      	cbz	r0, 200236e8 <HAL_FLASH_AES_CFG+0x1a>
200236d4:	b101      	cbz	r1, 200236d8 <HAL_FLASH_AES_CFG+0xa>
200236d6:	2101      	movs	r1, #1
200236d8:	f7ff fb7e 	bl	20022dd8 <HAL_FLASH_SET_AES>
200236dc:	4620      	mov	r0, r4
200236de:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200236e2:	2101      	movs	r1, #1
200236e4:	f7ff bb87 	b.w	20022df6 <HAL_FLASH_ENABLE_AES>
200236e8:	bd10      	pop	{r4, pc}

200236ea <nand_read_id>:
200236ea:	b510      	push	{r4, lr}
200236ec:	460b      	mov	r3, r1
200236ee:	4604      	mov	r4, r0
200236f0:	b086      	sub	sp, #24
200236f2:	b320      	cbz	r0, 2002373e <nand_read_id+0x54>
200236f4:	2908      	cmp	r1, #8
200236f6:	f04f 0100 	mov.w	r1, #0
200236fa:	f04f 0201 	mov.w	r2, #1
200236fe:	bf83      	ittte	hi
20023700:	460b      	movhi	r3, r1
20023702:	e9cd 1202 	strdhi	r1, r2, [sp, #8]
20023706:	e9cd 1100 	strdhi	r1, r1, [sp]
2002370a:	e9cd 1102 	strdls	r1, r1, [sp, #8]
2002370e:	bf8e      	itee	hi
20023710:	4619      	movhi	r1, r3
20023712:	e9cd 1100 	strdls	r1, r1, [sp]
20023716:	b25b      	sxtbls	r3, r3
20023718:	9204      	str	r2, [sp, #16]
2002371a:	f7ff fade 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
2002371e:	2103      	movs	r1, #3
20023720:	4620      	mov	r0, r4
20023722:	f7ff fa70 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20023726:	2200      	movs	r2, #0
20023728:	219f      	movs	r1, #159	@ 0x9f
2002372a:	4620      	mov	r0, r4
2002372c:	f7ff fa90 	bl	20022c50 <HAL_FLASH_SET_CMD>
20023730:	4620      	mov	r0, r4
20023732:	f7ff fabe 	bl	20022cb2 <HAL_FLASH_READ32>
20023736:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
2002373a:	b006      	add	sp, #24
2002373c:	bd10      	pop	{r4, pc}
2002373e:	20ff      	movs	r0, #255	@ 0xff
20023740:	e7fb      	b.n	2002373a <nand_read_id+0x50>

20023742 <HAL_NAND_CONF_ECC>:
20023742:	b538      	push	{r3, r4, r5, lr}
20023744:	460d      	mov	r5, r1
20023746:	4604      	mov	r4, r0
20023748:	b398      	cbz	r0, 200237b2 <HAL_NAND_CONF_ECC+0x70>
2002374a:	68c3      	ldr	r3, [r0, #12]
2002374c:	b38b      	cbz	r3, 200237b2 <HAL_NAND_CONF_ECC+0x70>
2002374e:	799a      	ldrb	r2, [r3, #6]
20023750:	b392      	cbz	r2, 200237b8 <HAL_NAND_CONF_ECC+0x76>
20023752:	7a9b      	ldrb	r3, [r3, #10]
20023754:	b383      	cbz	r3, 200237b8 <HAL_NAND_CONF_ECC+0x76>
20023756:	2101      	movs	r1, #1
20023758:	f7ff fa55 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
2002375c:	68e3      	ldr	r3, [r4, #12]
2002375e:	2102      	movs	r1, #2
20023760:	799a      	ldrb	r2, [r3, #6]
20023762:	4620      	mov	r0, r4
20023764:	f7ff fcee 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023768:	4620      	mov	r0, r4
2002376a:	f7ff faa2 	bl	20022cb2 <HAL_FLASH_READ32>
2002376e:	68e3      	ldr	r3, [r4, #12]
20023770:	7a9b      	ldrb	r3, [r3, #10]
20023772:	b1dd      	cbz	r5, 200237ac <HAL_NAND_CONF_ECC+0x6a>
20023774:	ea43 0100 	orr.w	r1, r3, r0
20023778:	4620      	mov	r0, r4
2002377a:	f7ff fa3d 	bl	20022bf8 <HAL_FLASH_WRITE_WORD>
2002377e:	2101      	movs	r1, #1
20023780:	4620      	mov	r0, r4
20023782:	f7ff fa40 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20023786:	68e3      	ldr	r3, [r4, #12]
20023788:	2103      	movs	r1, #3
2002378a:	799a      	ldrb	r2, [r3, #6]
2002378c:	4620      	mov	r0, r4
2002378e:	f7ff fcd9 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023792:	68e3      	ldr	r3, [r4, #12]
20023794:	f884 5025 	strb.w	r5, [r4, #37]	@ 0x25
20023798:	2102      	movs	r1, #2
2002379a:	799a      	ldrb	r2, [r3, #6]
2002379c:	4620      	mov	r0, r4
2002379e:	f7ff fcd1 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
200237a2:	4620      	mov	r0, r4
200237a4:	f7ff fa85 	bl	20022cb2 <HAL_FLASH_READ32>
200237a8:	2000      	movs	r0, #0
200237aa:	bd38      	pop	{r3, r4, r5, pc}
200237ac:	ea20 0103 	bic.w	r1, r0, r3
200237b0:	e7e2      	b.n	20023778 <HAL_NAND_CONF_ECC+0x36>
200237b2:	f04f 30ff 	mov.w	r0, #4294967295
200237b6:	e7f8      	b.n	200237aa <HAL_NAND_CONF_ECC+0x68>
200237b8:	f06f 0001 	mvn.w	r0, #1
200237bc:	e7f5      	b.n	200237aa <HAL_NAND_CONF_ECC+0x68>

200237be <HAL_NAND_GET_ECC_STATUS>:
200237be:	b510      	push	{r4, lr}
200237c0:	4604      	mov	r4, r0
200237c2:	b320      	cbz	r0, 2002380e <HAL_NAND_GET_ECC_STATUS+0x50>
200237c4:	68c2      	ldr	r2, [r0, #12]
200237c6:	b31a      	cbz	r2, 20023810 <HAL_NAND_GET_ECC_STATUS+0x52>
200237c8:	7913      	ldrb	r3, [r2, #4]
200237ca:	b31b      	cbz	r3, 20023814 <HAL_NAND_GET_ECC_STATUS+0x56>
200237cc:	79d3      	ldrb	r3, [r2, #7]
200237ce:	b30b      	cbz	r3, 20023814 <HAL_NAND_GET_ECC_STATUS+0x56>
200237d0:	2101      	movs	r1, #1
200237d2:	f7ff fa18 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
200237d6:	68e3      	ldr	r3, [r4, #12]
200237d8:	2102      	movs	r1, #2
200237da:	791a      	ldrb	r2, [r3, #4]
200237dc:	4620      	mov	r0, r4
200237de:	f7ff fcb1 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
200237e2:	4620      	mov	r0, r4
200237e4:	f7ff fa65 	bl	20022cb2 <HAL_FLASH_READ32>
200237e8:	f894 2024 	ldrb.w	r2, [r4, #36]	@ 0x24
200237ec:	2a3f      	cmp	r2, #63	@ 0x3f
200237ee:	ea4f 1312 	mov.w	r3, r2, lsr #4
200237f2:	d804      	bhi.n	200237fe <HAL_NAND_GET_ECC_STATUS+0x40>
200237f4:	2b01      	cmp	r3, #1
200237f6:	d808      	bhi.n	2002380a <HAL_NAND_GET_ECC_STATUS+0x4c>
200237f8:	f000 0030 	and.w	r0, r0, #48	@ 0x30
200237fc:	e007      	b.n	2002380e <HAL_NAND_GET_ECC_STATUS+0x50>
200237fe:	3b04      	subs	r3, #4
20023800:	2b01      	cmp	r3, #1
20023802:	d8f9      	bhi.n	200237f8 <HAL_NAND_GET_ECC_STATUS+0x3a>
20023804:	f000 00f0 	and.w	r0, r0, #240	@ 0xf0
20023808:	e001      	b.n	2002380e <HAL_NAND_GET_ECC_STATUS+0x50>
2002380a:	f000 0070 	and.w	r0, r0, #112	@ 0x70
2002380e:	bd10      	pop	{r4, pc}
20023810:	4610      	mov	r0, r2
20023812:	e7fc      	b.n	2002380e <HAL_NAND_GET_ECC_STATUS+0x50>
20023814:	4618      	mov	r0, r3
20023816:	e7fa      	b.n	2002380e <HAL_NAND_GET_ECC_STATUS+0x50>

20023818 <HAL_NAND_CHECK_ECC>:
20023818:	4603      	mov	r3, r0
2002381a:	1108      	asrs	r0, r1, #4
2002381c:	b172      	cbz	r2, 2002383c <HAL_NAND_CHECK_ECC+0x24>
2002381e:	2b06      	cmp	r3, #6
20023820:	d80c      	bhi.n	2002383c <HAL_NAND_CHECK_ECC+0x24>
20023822:	e8df f003 	tbb	[pc, r3]
20023826:	0d04      	.short	0x0d04
20023828:	3f352e18 	.word	0x3f352e18
2002382c:	47          	.byte	0x47
2002382d:	00          	.byte	0x00
2002382e:	b128      	cbz	r0, 2002383c <HAL_NAND_CHECK_ECC+0x24>
20023830:	2801      	cmp	r0, #1
20023832:	6813      	ldr	r3, [r2, #0]
20023834:	d10a      	bne.n	2002384c <HAL_NAND_CHECK_ECC+0x34>
20023836:	f043 0301 	orr.w	r3, r3, #1
2002383a:	6013      	str	r3, [r2, #0]
2002383c:	2000      	movs	r0, #0
2002383e:	4770      	bx	lr
20023840:	f020 0302 	bic.w	r3, r0, #2
20023844:	2b01      	cmp	r3, #1
20023846:	d003      	beq.n	20023850 <HAL_NAND_CHECK_ECC+0x38>
20023848:	b1d0      	cbz	r0, 20023880 <HAL_NAND_CHECK_ECC+0x68>
2002384a:	6813      	ldr	r3, [r2, #0]
2002384c:	4303      	orrs	r3, r0
2002384e:	e016      	b.n	2002387e <HAL_NAND_CHECK_ECC+0x66>
20023850:	6813      	ldr	r3, [r2, #0]
20023852:	4303      	orrs	r3, r0
20023854:	e7f1      	b.n	2002383a <HAL_NAND_CHECK_ECC+0x22>
20023856:	2805      	cmp	r0, #5
20023858:	d8f7      	bhi.n	2002384a <HAL_NAND_CHECK_ECC+0x32>
2002385a:	a301      	add	r3, pc, #4	@ (adr r3, 20023860 <HAL_NAND_CHECK_ECC+0x48>)
2002385c:	f853 f020 	ldr.w	pc, [r3, r0, lsl #2]
20023860:	2002383d 	.word	0x2002383d
20023864:	20023851 	.word	0x20023851
20023868:	20023879 	.word	0x20023879
2002386c:	20023851 	.word	0x20023851
20023870:	2002384b 	.word	0x2002384b
20023874:	20023851 	.word	0x20023851
20023878:	6813      	ldr	r3, [r2, #0]
2002387a:	f043 0302 	orr.w	r3, r3, #2
2002387e:	6013      	str	r3, [r2, #0]
20023880:	4770      	bx	lr
20023882:	2800      	cmp	r0, #0
20023884:	d0da      	beq.n	2002383c <HAL_NAND_CHECK_ECC+0x24>
20023886:	1e43      	subs	r3, r0, #1
20023888:	2b05      	cmp	r3, #5
2002388a:	6813      	ldr	r3, [r2, #0]
2002388c:	d9e1      	bls.n	20023852 <HAL_NAND_CHECK_ECC+0x3a>
2002388e:	e7dd      	b.n	2002384c <HAL_NAND_CHECK_ECC+0x34>
20023890:	07c3      	lsls	r3, r0, #31
20023892:	f000 0103 	and.w	r1, r0, #3
20023896:	d402      	bmi.n	2002389e <HAL_NAND_CHECK_ECC+0x86>
20023898:	2900      	cmp	r1, #0
2002389a:	d0cf      	beq.n	2002383c <HAL_NAND_CHECK_ECC+0x24>
2002389c:	e7d5      	b.n	2002384a <HAL_NAND_CHECK_ECC+0x32>
2002389e:	6813      	ldr	r3, [r2, #0]
200238a0:	430b      	orrs	r3, r1
200238a2:	e7ca      	b.n	2002383a <HAL_NAND_CHECK_ECC+0x22>
200238a4:	2800      	cmp	r0, #0
200238a6:	d0c9      	beq.n	2002383c <HAL_NAND_CHECK_ECC+0x24>
200238a8:	6813      	ldr	r3, [r2, #0]
200238aa:	2808      	cmp	r0, #8
200238ac:	ea43 0300 	orr.w	r3, r3, r0
200238b0:	dce5      	bgt.n	2002387e <HAL_NAND_CHECK_ECC+0x66>
200238b2:	e7c2      	b.n	2002383a <HAL_NAND_CHECK_ECC+0x22>
200238b4:	2800      	cmp	r0, #0
200238b6:	d0c1      	beq.n	2002383c <HAL_NAND_CHECK_ECC+0x24>
200238b8:	1e43      	subs	r3, r0, #1
200238ba:	2b01      	cmp	r3, #1
200238bc:	e7e5      	b.n	2002388a <HAL_NAND_CHECK_ECC+0x72>
200238be:	bf00      	nop

200238c0 <HAL_NAND_GET_ECC_RESULT>:
200238c0:	b510      	push	{r4, lr}
200238c2:	f890 3025 	ldrb.w	r3, [r0, #37]	@ 0x25
200238c6:	4604      	mov	r4, r0
200238c8:	b183      	cbz	r3, 200238ec <HAL_NAND_GET_ECC_RESULT+0x2c>
200238ca:	f7ff ff78 	bl	200237be <HAL_NAND_GET_ECC_STATUS>
200238ce:	4601      	mov	r1, r0
200238d0:	b160      	cbz	r0, 200238ec <HAL_NAND_GET_ECC_RESULT+0x2c>
200238d2:	4622      	mov	r2, r4
200238d4:	6863      	ldr	r3, [r4, #4]
200238d6:	f443 4300 	orr.w	r3, r3, #32768	@ 0x8000
200238da:	f842 3f04 	str.w	r3, [r2, #4]!
200238de:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
200238e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200238e6:	0900      	lsrs	r0, r0, #4
200238e8:	f7ff bf96 	b.w	20023818 <HAL_NAND_CHECK_ECC>
200238ec:	2000      	movs	r0, #0
200238ee:	bd10      	pop	{r4, pc}

200238f0 <HAL_NAND_EN_QUAL>:
200238f0:	b538      	push	{r3, r4, r5, lr}
200238f2:	460d      	mov	r5, r1
200238f4:	4604      	mov	r4, r0
200238f6:	b348      	cbz	r0, 2002394c <HAL_NAND_EN_QUAL+0x5c>
200238f8:	68c3      	ldr	r3, [r0, #12]
200238fa:	b33b      	cbz	r3, 2002394c <HAL_NAND_EN_QUAL+0x5c>
200238fc:	799a      	ldrb	r2, [r3, #6]
200238fe:	b10a      	cbz	r2, 20023904 <HAL_NAND_EN_QUAL+0x14>
20023900:	7a1b      	ldrb	r3, [r3, #8]
20023902:	b90b      	cbnz	r3, 20023908 <HAL_NAND_EN_QUAL+0x18>
20023904:	2000      	movs	r0, #0
20023906:	bd38      	pop	{r3, r4, r5, pc}
20023908:	2101      	movs	r1, #1
2002390a:	f7ff f97c 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
2002390e:	68e3      	ldr	r3, [r4, #12]
20023910:	2102      	movs	r1, #2
20023912:	799a      	ldrb	r2, [r3, #6]
20023914:	4620      	mov	r0, r4
20023916:	f7ff fc15 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
2002391a:	4620      	mov	r0, r4
2002391c:	f7ff f9c9 	bl	20022cb2 <HAL_FLASH_READ32>
20023920:	68e3      	ldr	r3, [r4, #12]
20023922:	7a1b      	ldrb	r3, [r3, #8]
20023924:	b17d      	cbz	r5, 20023946 <HAL_NAND_EN_QUAL+0x56>
20023926:	ea43 0100 	orr.w	r1, r3, r0
2002392a:	4620      	mov	r0, r4
2002392c:	f7ff f964 	bl	20022bf8 <HAL_FLASH_WRITE_WORD>
20023930:	2101      	movs	r1, #1
20023932:	4620      	mov	r0, r4
20023934:	f7ff f967 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20023938:	68e3      	ldr	r3, [r4, #12]
2002393a:	2103      	movs	r1, #3
2002393c:	4620      	mov	r0, r4
2002393e:	799a      	ldrb	r2, [r3, #6]
20023940:	f7ff fc00 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023944:	e7de      	b.n	20023904 <HAL_NAND_EN_QUAL+0x14>
20023946:	ea20 0103 	bic.w	r1, r0, r3
2002394a:	e7ee      	b.n	2002392a <HAL_NAND_EN_QUAL+0x3a>
2002394c:	f04f 30ff 	mov.w	r0, #4294967295
20023950:	e7d9      	b.n	20023906 <HAL_NAND_EN_QUAL+0x16>

20023952 <nand_clear_status>:
20023952:	b510      	push	{r4, lr}
20023954:	4604      	mov	r4, r0
20023956:	2101      	movs	r1, #1
20023958:	f7ff f955 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
2002395c:	2102      	movs	r1, #2
2002395e:	4620      	mov	r0, r4
20023960:	f7ff f94a 	bl	20022bf8 <HAL_FLASH_WRITE_WORD>
20023964:	68e3      	ldr	r3, [r4, #12]
20023966:	2103      	movs	r1, #3
20023968:	795a      	ldrb	r2, [r3, #5]
2002396a:	4620      	mov	r0, r4
2002396c:	f7ff fbea 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023970:	2100      	movs	r1, #0
20023972:	4620      	mov	r0, r4
20023974:	f7ff f940 	bl	20022bf8 <HAL_FLASH_WRITE_WORD>
20023978:	68e3      	ldr	r3, [r4, #12]
2002397a:	2103      	movs	r1, #3
2002397c:	4620      	mov	r0, r4
2002397e:	795a      	ldrb	r2, [r3, #5]
20023980:	f7ff fbe0 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023984:	2000      	movs	r0, #0
20023986:	bd10      	pop	{r4, pc}

20023988 <HAL_NAND_PAGE_SIZE>:
20023988:	b140      	cbz	r0, 2002399c <HAL_NAND_PAGE_SIZE+0x14>
2002398a:	f890 3024 	ldrb.w	r3, [r0, #36]	@ 0x24
2002398e:	f013 0f01 	tst.w	r3, #1
20023992:	bf14      	ite	ne
20023994:	f44f 5080 	movne.w	r0, #4096	@ 0x1000
20023998:	f44f 6000 	moveq.w	r0, #2048	@ 0x800
2002399c:	4770      	bx	lr
	...

200239a0 <HAL_NAND_READ_WITHOOB>:
200239a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200239a4:	b091      	sub	sp, #68	@ 0x44
200239a6:	460e      	mov	r6, r1
200239a8:	4692      	mov	sl, r2
200239aa:	461d      	mov	r5, r3
200239ac:	4604      	mov	r4, r0
200239ae:	9f1b      	ldr	r7, [sp, #108]	@ 0x6c
200239b0:	b128      	cbz	r0, 200239be <HAL_NAND_READ_WITHOOB+0x1e>
200239b2:	68c3      	ldr	r3, [r0, #12]
200239b4:	b11b      	cbz	r3, 200239be <HAL_NAND_READ_WITHOOB+0x1e>
200239b6:	69c3      	ldr	r3, [r0, #28]
200239b8:	b10b      	cbz	r3, 200239be <HAL_NAND_READ_WITHOOB+0x1e>
200239ba:	2f80      	cmp	r7, #128	@ 0x80
200239bc:	d905      	bls.n	200239ca <HAL_NAND_READ_WITHOOB+0x2a>
200239be:	2301      	movs	r3, #1
200239c0:	6063      	str	r3, [r4, #4]
200239c2:	2000      	movs	r0, #0
200239c4:	b011      	add	sp, #68	@ 0x44
200239c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200239ca:	f7ff ffdd 	bl	20023988 <HAL_NAND_PAGE_SIZE>
200239ce:	f100 39ff 	add.w	r9, r0, #4294967295
200239d2:	ea09 0901 	and.w	r9, r9, r1
200239d6:	eb09 0305 	add.w	r3, r9, r5
200239da:	4283      	cmp	r3, r0
200239dc:	4680      	mov	r8, r0
200239de:	d901      	bls.n	200239e4 <HAL_NAND_READ_WITHOOB+0x44>
200239e0:	2302      	movs	r3, #2
200239e2:	e7ed      	b.n	200239c0 <HAL_NAND_READ_WITHOOB+0x20>
200239e4:	2300      	movs	r3, #0
200239e6:	6063      	str	r3, [r4, #4]
200239e8:	6923      	ldr	r3, [r4, #16]
200239ea:	f04f 0b00 	mov.w	fp, #0
200239ee:	428b      	cmp	r3, r1
200239f0:	bf98      	it	ls
200239f2:	1ace      	subls	r6, r1, r3
200239f4:	fbb6 f2f0 	udiv	r2, r6, r0
200239f8:	2104      	movs	r1, #4
200239fa:	4620      	mov	r0, r4
200239fc:	f7ff fba2 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023a00:	2014      	movs	r0, #20
20023a02:	f7fe f9ff 	bl	20021e04 <HAL_Delay_us_>
20023a06:	2101      	movs	r1, #1
20023a08:	4620      	mov	r0, r4
20023a0a:	f7ff f8fc 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20023a0e:	2005      	movs	r0, #5
20023a10:	f7fe f9f8 	bl	20021e04 <HAL_Delay_us_>
20023a14:	68e3      	ldr	r3, [r4, #12]
20023a16:	2102      	movs	r1, #2
20023a18:	791a      	ldrb	r2, [r3, #4]
20023a1a:	4620      	mov	r0, r4
20023a1c:	f7ff fb92 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023a20:	4620      	mov	r0, r4
20023a22:	f7ff f946 	bl	20022cb2 <HAL_FLASH_READ32>
20023a26:	07c3      	lsls	r3, r0, #31
20023a28:	d4f1      	bmi.n	20023a0e <HAL_NAND_READ_WITHOOB+0x6e>
20023a2a:	f1bb 0f00 	cmp.w	fp, #0
20023a2e:	d102      	bne.n	20023a36 <HAL_NAND_READ_WITHOOB+0x96>
20023a30:	f04f 0b01 	mov.w	fp, #1
20023a34:	e7eb      	b.n	20023a0e <HAL_NAND_READ_WITHOOB+0x6e>
20023a36:	4620      	mov	r0, r4
20023a38:	f7ff ff42 	bl	200238c0 <HAL_NAND_GET_ECC_RESULT>
20023a3c:	b118      	cbz	r0, 20023a46 <HAL_NAND_READ_WITHOOB+0xa6>
20023a3e:	f440 4000 	orr.w	r0, r0, #32768	@ 0x8000
20023a42:	6060      	str	r0, [r4, #4]
20023a44:	e7bd      	b.n	200239c2 <HAL_NAND_READ_WITHOOB+0x22>
20023a46:	f894 2020 	ldrb.w	r2, [r4, #32]
20023a4a:	68e3      	ldr	r3, [r4, #12]
20023a4c:	2a00      	cmp	r2, #0
20023a4e:	d140      	bne.n	20023ad2 <HAL_NAND_READ_WITHOOB+0x132>
20023a50:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
20023a54:	4620      	mov	r0, r4
20023a56:	f7ff f87e 	bl	20022b56 <HAL_FLASH_SET_AHB_RCMD>
20023a5a:	68e0      	ldr	r0, [r4, #12]
20023a5c:	f990 c04e 	ldrsb.w	ip, [r0, #78]	@ 0x4e
20023a60:	f990 304a 	ldrsb.w	r3, [r0, #74]	@ 0x4a
20023a64:	f990 2049 	ldrsb.w	r2, [r0, #73]	@ 0x49
20023a68:	f990 1048 	ldrsb.w	r1, [r0, #72]	@ 0x48
20023a6c:	f8cd c00c 	str.w	ip, [sp, #12]
20023a70:	f990 c04d 	ldrsb.w	ip, [r0, #77]	@ 0x4d
20023a74:	f8cd c008 	str.w	ip, [sp, #8]
20023a78:	f990 c04c 	ldrsb.w	ip, [r0, #76]	@ 0x4c
20023a7c:	f8cd c004 	str.w	ip, [sp, #4]
20023a80:	f990 004b 	ldrsb.w	r0, [r0, #75]	@ 0x4b
20023a84:	9000      	str	r0, [sp, #0]
20023a86:	4620      	mov	r0, r4
20023a88:	f7ff f870 	bl	20022b6c <HAL_FLASH_CFG_AHB_RCMD>
20023a8c:	03b0      	lsls	r0, r6, #14
20023a8e:	f8d4 b010 	ldr.w	fp, [r4, #16]
20023a92:	d504      	bpl.n	20023a9e <HAL_NAND_READ_WITHOOB+0xfe>
20023a94:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
20023a98:	b10b      	cbz	r3, 20023a9e <HAL_NAND_READ_WITHOOB+0xfe>
20023a9a:	f44b 5b80 	orr.w	fp, fp, #4096	@ 0x1000
20023a9e:	ea4a 0305 	orr.w	r3, sl, r5
20023aa2:	ea43 0309 	orr.w	r3, r3, r9
20023aa6:	f013 0303 	ands.w	r3, r3, #3
20023aaa:	d102      	bne.n	20023ab2 <HAL_NAND_READ_WITHOOB+0x112>
20023aac:	1e6a      	subs	r2, r5, #1
20023aae:	2afe      	cmp	r2, #254	@ 0xfe
20023ab0:	d82a      	bhi.n	20023b08 <HAL_NAND_READ_WITHOOB+0x168>
20023ab2:	462a      	mov	r2, r5
20023ab4:	4650      	mov	r0, sl
20023ab6:	eb0b 0109 	add.w	r1, fp, r9
20023aba:	f006 febd 	bl	2002a838 <memcpy>
20023abe:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20023ac0:	b12b      	cbz	r3, 20023ace <HAL_NAND_READ_WITHOOB+0x12e>
20023ac2:	463a      	mov	r2, r7
20023ac4:	4618      	mov	r0, r3
20023ac6:	eb0b 0108 	add.w	r1, fp, r8
20023aca:	f006 feb5 	bl	2002a838 <memcpy>
20023ace:	1978      	adds	r0, r7, r5
20023ad0:	e778      	b.n	200239c4 <HAL_NAND_READ_WITHOOB+0x24>
20023ad2:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
20023ad6:	4620      	mov	r0, r4
20023ad8:	f7ff f83d 	bl	20022b56 <HAL_FLASH_SET_AHB_RCMD>
20023adc:	68e0      	ldr	r0, [r4, #12]
20023ade:	f990 c072 	ldrsb.w	ip, [r0, #114]	@ 0x72
20023ae2:	f990 306e 	ldrsb.w	r3, [r0, #110]	@ 0x6e
20023ae6:	f990 206d 	ldrsb.w	r2, [r0, #109]	@ 0x6d
20023aea:	f990 106c 	ldrsb.w	r1, [r0, #108]	@ 0x6c
20023aee:	f8cd c00c 	str.w	ip, [sp, #12]
20023af2:	f990 c071 	ldrsb.w	ip, [r0, #113]	@ 0x71
20023af6:	f8cd c008 	str.w	ip, [sp, #8]
20023afa:	f990 c070 	ldrsb.w	ip, [r0, #112]	@ 0x70
20023afe:	f8cd c004 	str.w	ip, [sp, #4]
20023b02:	f990 006f 	ldrsb.w	r0, [r0, #111]	@ 0x6f
20023b06:	e7bd      	b.n	20023a84 <HAL_NAND_READ_WITHOOB+0xe4>
20023b08:	f1ba 0f00 	cmp.w	sl, #0
20023b0c:	d0d7      	beq.n	20023abe <HAL_NAND_READ_WITHOOB+0x11e>
20023b0e:	491c      	ldr	r1, [pc, #112]	@ (20023b80 <HAL_NAND_READ_WITHOOB+0x1e0>)
20023b10:	4a1c      	ldr	r2, [pc, #112]	@ (20023b84 <HAL_NAND_READ_WITHOOB+0x1e4>)
20023b12:	a804      	add	r0, sp, #16
20023b14:	e9cd 1205 	strd	r1, r2, [sp, #20]
20023b18:	f88d 301c 	strb.w	r3, [sp, #28]
20023b1c:	f7fe ff2c 	bl	20022978 <HAL_EXT_DMA_Init>
20023b20:	b150      	cbz	r0, 20023b38 <HAL_NAND_READ_WITHOOB+0x198>
20023b22:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20023b24:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023b28:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
20023b2c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023b30:	f041 4100 	orr.w	r1, r1, #2147483648	@ 0x80000000
20023b34:	6061      	str	r1, [r4, #4]
20023b36:	e744      	b.n	200239c2 <HAL_NAND_READ_WITHOOB+0x22>
20023b38:	eb0b 0109 	add.w	r1, fp, r9
20023b3c:	4652      	mov	r2, sl
20023b3e:	08ab      	lsrs	r3, r5, #2
20023b40:	a804      	add	r0, sp, #16
20023b42:	f7fe ff3b 	bl	200229bc <HAL_EXT_DMA_Start>
20023b46:	4601      	mov	r1, r0
20023b48:	b980      	cbnz	r0, 20023b6c <HAL_NAND_READ_WITHOOB+0x1cc>
20023b4a:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20023b4e:	a804      	add	r0, sp, #16
20023b50:	f7fe ff5b 	bl	20022a0a <HAL_EXT_DMA_PollForTransfer>
20023b54:	2800      	cmp	r0, #0
20023b56:	d0b2      	beq.n	20023abe <HAL_NAND_READ_WITHOOB+0x11e>
20023b58:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20023b5a:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023b5e:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
20023b62:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023b66:	f041 4160 	orr.w	r1, r1, #3758096384	@ 0xe0000000
20023b6a:	e7e3      	b.n	20023b34 <HAL_NAND_READ_WITHOOB+0x194>
20023b6c:	9a0f      	ldr	r2, [sp, #60]	@ 0x3c
20023b6e:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023b72:	ea40 4102 	orr.w	r1, r0, r2, lsl #16
20023b76:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023b7a:	f041 4140 	orr.w	r1, r1, #3221225472	@ 0xc0000000
20023b7e:	e7d9      	b.n	20023b34 <HAL_NAND_READ_WITHOOB+0x194>
20023b80:	000c0080 	.word	0x000c0080
20023b84:	00030040 	.word	0x00030040

20023b88 <HAL_NAND_BLOCK_SIZE>:
20023b88:	b508      	push	{r3, lr}
20023b8a:	4602      	mov	r2, r0
20023b8c:	f7ff fefc 	bl	20023988 <HAL_NAND_PAGE_SIZE>
20023b90:	b128      	cbz	r0, 20023b9e <HAL_NAND_BLOCK_SIZE+0x16>
20023b92:	f892 3024 	ldrb.w	r3, [r2, #36]	@ 0x24
20023b96:	079b      	lsls	r3, r3, #30
20023b98:	bf4c      	ite	mi
20023b9a:	01c0      	lslmi	r0, r0, #7
20023b9c:	0180      	lslpl	r0, r0, #6
20023b9e:	bd08      	pop	{r3, pc}

20023ba0 <HAL_NAND_GET_BADBLK>:
20023ba0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20023ba2:	4604      	mov	r4, r0
20023ba4:	b910      	cbnz	r0, 20023bac <HAL_NAND_GET_BADBLK+0xc>
20023ba6:	2000      	movs	r0, #0
20023ba8:	b004      	add	sp, #16
20023baa:	bd10      	pop	{r4, pc}
20023bac:	69c3      	ldr	r3, [r0, #28]
20023bae:	2b00      	cmp	r3, #0
20023bb0:	d0f9      	beq.n	20023ba6 <HAL_NAND_GET_BADBLK+0x6>
20023bb2:	f7ff ffe9 	bl	20023b88 <HAL_NAND_BLOCK_SIZE>
20023bb6:	2304      	movs	r3, #4
20023bb8:	9301      	str	r3, [sp, #4]
20023bba:	ab03      	add	r3, sp, #12
20023bbc:	9300      	str	r3, [sp, #0]
20023bbe:	2300      	movs	r3, #0
20023bc0:	4341      	muls	r1, r0
20023bc2:	461a      	mov	r2, r3
20023bc4:	4620      	mov	r0, r4
20023bc6:	f7ff feeb 	bl	200239a0 <HAL_NAND_READ_WITHOOB>
20023bca:	b140      	cbz	r0, 20023bde <HAL_NAND_GET_BADBLK+0x3e>
20023bcc:	f89d 300c 	ldrb.w	r3, [sp, #12]
20023bd0:	2bff      	cmp	r3, #255	@ 0xff
20023bd2:	d0e8      	beq.n	20023ba6 <HAL_NAND_GET_BADBLK+0x6>
20023bd4:	9803      	ldr	r0, [sp, #12]
20023bd6:	2800      	cmp	r0, #0
20023bd8:	bf08      	it	eq
20023bda:	2001      	moveq	r0, #1
20023bdc:	e7e4      	b.n	20023ba8 <HAL_NAND_GET_BADBLK+0x8>
20023bde:	2001      	movs	r0, #1
20023be0:	e7e2      	b.n	20023ba8 <HAL_NAND_GET_BADBLK+0x8>

20023be2 <HAL_QSPIEX_WRITE_PAGE>:
20023be2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20023be6:	b099      	sub	sp, #100	@ 0x64
20023be8:	4604      	mov	r4, r0
20023bea:	460e      	mov	r6, r1
20023bec:	4691      	mov	r9, r2
20023bee:	f7ff fcd8 	bl	200235a2 <flash_handle_valid>
20023bf2:	b318      	cbz	r0, 20023c3c <HAL_QSPIEX_WRITE_PAGE+0x5a>
20023bf4:	2b00      	cmp	r3, #0
20023bf6:	f000 80d7 	beq.w	20023da8 <HAL_QSPIEX_WRITE_PAGE+0x1c6>
20023bfa:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
20023bfe:	bf28      	it	cs
20023c00:	f44f 7380 	movcs.w	r3, #256	@ 0x100
20023c04:	68a1      	ldr	r1, [r4, #8]
20023c06:	461d      	mov	r5, r3
20023c08:	6962      	ldr	r2, [r4, #20]
20023c0a:	f894 3020 	ldrb.w	r3, [r4, #32]
20023c0e:	2900      	cmp	r1, #0
20023c10:	d03b      	beq.n	20023c8a <HAL_QSPIEX_WRITE_PAGE+0xa8>
20023c12:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023c16:	d914      	bls.n	20023c42 <HAL_QSPIEX_WRITE_PAGE+0x60>
20023c18:	2b02      	cmp	r3, #2
20023c1a:	bf14      	ite	ne
20023c1c:	2727      	movne	r7, #39	@ 0x27
20023c1e:	2728      	moveq	r7, #40	@ 0x28
20023c20:	4639      	mov	r1, r7
20023c22:	4620      	mov	r0, r4
20023c24:	f7ff fa67 	bl	200230f6 <HAL_FLASH_PRE_CMD>
20023c28:	4649      	mov	r1, r9
20023c2a:	462b      	mov	r3, r5
20023c2c:	2201      	movs	r2, #1
20023c2e:	4620      	mov	r0, r4
20023c30:	f7ff fcbf 	bl	200235b2 <HAL_FLASH_DMA_START>
20023c34:	4601      	mov	r1, r0
20023c36:	b148      	cbz	r0, 20023c4c <HAL_QSPIEX_WRITE_PAGE+0x6a>
20023c38:	2500      	movs	r5, #0
20023c3a:	4628      	mov	r0, r5
20023c3c:	b019      	add	sp, #100	@ 0x64
20023c3e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20023c42:	2b02      	cmp	r3, #2
20023c44:	bf14      	ite	ne
20023c46:	2716      	movne	r7, #22
20023c48:	2717      	moveq	r7, #23
20023c4a:	e7e9      	b.n	20023c20 <HAL_QSPIEX_WRITE_PAGE+0x3e>
20023c4c:	4632      	mov	r2, r6
20023c4e:	4620      	mov	r0, r4
20023c50:	f7ff fa78 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023c54:	2101      	movs	r1, #1
20023c56:	4620      	mov	r0, r4
20023c58:	f7fe ffdf 	bl	20022c1a <HAL_FLASH_WRITE_DLEN2>
20023c5c:	2301      	movs	r3, #1
20023c5e:	4632      	mov	r2, r6
20023c60:	9300      	str	r3, [sp, #0]
20023c62:	4639      	mov	r1, r7
20023c64:	2302      	movs	r3, #2
20023c66:	4620      	mov	r0, r4
20023c68:	f7ff fa9f 	bl	200231aa <HAL_FLASH_ISSUE_CMD_SEQ>
20023c6c:	2800      	cmp	r0, #0
20023c6e:	d1e3      	bne.n	20023c38 <HAL_QSPIEX_WRITE_PAGE+0x56>
20023c70:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
20023c74:	4620      	mov	r0, r4
20023c76:	f7ff fcec 	bl	20023652 <HAL_FLASH_DMA_WAIT_DONE>
20023c7a:	2800      	cmp	r0, #0
20023c7c:	d1dc      	bne.n	20023c38 <HAL_QSPIEX_WRITE_PAGE+0x56>
20023c7e:	6822      	ldr	r2, [r4, #0]
20023c80:	6813      	ldr	r3, [r2, #0]
20023c82:	f023 0320 	bic.w	r3, r3, #32
20023c86:	6013      	str	r3, [r2, #0]
20023c88:	e7d7      	b.n	20023c3a <HAL_QSPIEX_WRITE_PAGE+0x58>
20023c8a:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023c8e:	f240 8082 	bls.w	20023d96 <HAL_QSPIEX_WRITE_PAGE+0x1b4>
20023c92:	2b02      	cmp	r3, #2
20023c94:	bf14      	ite	ne
20023c96:	2327      	movne	r3, #39	@ 0x27
20023c98:	2328      	moveq	r3, #40	@ 0x28
20023c9a:	462f      	mov	r7, r5
20023c9c:	f04f 0800 	mov.w	r8, #0
20023ca0:	9303      	str	r3, [sp, #12]
20023ca2:	f64f 7afc 	movw	sl, #65532	@ 0xfffc
20023ca6:	2f40      	cmp	r7, #64	@ 0x40
20023ca8:	bfd4      	ite	le
20023caa:	ea0a 0a07 	andle.w	sl, sl, r7
20023cae:	f00a 0a40 	andgt.w	sl, sl, #64	@ 0x40
20023cb2:	f1ba 0f00 	cmp.w	sl, #0
20023cb6:	d03f      	beq.n	20023d38 <HAL_QSPIEX_WRITE_PAGE+0x156>
20023cb8:	2200      	movs	r2, #0
20023cba:	4620      	mov	r0, r4
20023cbc:	4611      	mov	r1, r2
20023cbe:	f7ff fa41 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023cc2:	eb09 0308 	add.w	r3, r9, r8
20023cc6:	f10d 0c20 	add.w	ip, sp, #32
20023cca:	f103 0e40 	add.w	lr, r3, #64	@ 0x40
20023cce:	4662      	mov	r2, ip
20023cd0:	6818      	ldr	r0, [r3, #0]
20023cd2:	6859      	ldr	r1, [r3, #4]
20023cd4:	3308      	adds	r3, #8
20023cd6:	c203      	stmia	r2!, {r0, r1}
20023cd8:	4573      	cmp	r3, lr
20023cda:	4694      	mov	ip, r2
20023cdc:	d1f7      	bne.n	20023cce <HAL_QSPIEX_WRITE_PAGE+0xec>
20023cde:	f04f 0b00 	mov.w	fp, #0
20023ce2:	ea4f 02aa 	mov.w	r2, sl, asr #2
20023ce6:	ab08      	add	r3, sp, #32
20023ce8:	f853 1b04 	ldr.w	r1, [r3], #4
20023cec:	4620      	mov	r0, r4
20023cee:	9205      	str	r2, [sp, #20]
20023cf0:	9304      	str	r3, [sp, #16]
20023cf2:	f7fe ff81 	bl	20022bf8 <HAL_FLASH_WRITE_WORD>
20023cf6:	9a05      	ldr	r2, [sp, #20]
20023cf8:	f10b 0b01 	add.w	fp, fp, #1
20023cfc:	4593      	cmp	fp, r2
20023cfe:	9b04      	ldr	r3, [sp, #16]
20023d00:	d1f2      	bne.n	20023ce8 <HAL_QSPIEX_WRITE_PAGE+0x106>
20023d02:	4651      	mov	r1, sl
20023d04:	4620      	mov	r0, r4
20023d06:	f7fe ff7e 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20023d0a:	4620      	mov	r0, r4
20023d0c:	9903      	ldr	r1, [sp, #12]
20023d0e:	eb06 0208 	add.w	r2, r6, r8
20023d12:	f7ff fa17 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023d16:	2101      	movs	r1, #1
20023d18:	4620      	mov	r0, r4
20023d1a:	f7fe ff74 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20023d1e:	2200      	movs	r2, #0
20023d20:	2102      	movs	r1, #2
20023d22:	4620      	mov	r0, r4
20023d24:	f7ff fa0e 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023d28:	4620      	mov	r0, r4
20023d2a:	f7fe ffb9 	bl	20022ca0 <HAL_FLASH_IS_PROG_DONE>
20023d2e:	2800      	cmp	r0, #0
20023d30:	d0f1      	beq.n	20023d16 <HAL_QSPIEX_WRITE_PAGE+0x134>
20023d32:	eba7 070a 	sub.w	r7, r7, sl
20023d36:	44d0      	add	r8, sl
20023d38:	1e7b      	subs	r3, r7, #1
20023d3a:	2b02      	cmp	r3, #2
20023d3c:	d830      	bhi.n	20023da0 <HAL_QSPIEX_WRITE_PAGE+0x1be>
20023d3e:	6923      	ldr	r3, [r4, #16]
20023d40:	4446      	add	r6, r8
20023d42:	4333      	orrs	r3, r6
20023d44:	681b      	ldr	r3, [r3, #0]
20023d46:	463a      	mov	r2, r7
20023d48:	eb09 0108 	add.w	r1, r9, r8
20023d4c:	a807      	add	r0, sp, #28
20023d4e:	9307      	str	r3, [sp, #28]
20023d50:	f006 fd72 	bl	2002a838 <memcpy>
20023d54:	2200      	movs	r2, #0
20023d56:	4620      	mov	r0, r4
20023d58:	4611      	mov	r1, r2
20023d5a:	f7ff f9f3 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023d5e:	9907      	ldr	r1, [sp, #28]
20023d60:	4620      	mov	r0, r4
20023d62:	f7fe ff49 	bl	20022bf8 <HAL_FLASH_WRITE_WORD>
20023d66:	2104      	movs	r1, #4
20023d68:	4620      	mov	r0, r4
20023d6a:	f7fe ff4c 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20023d6e:	4632      	mov	r2, r6
20023d70:	4620      	mov	r0, r4
20023d72:	9903      	ldr	r1, [sp, #12]
20023d74:	f7ff f9e6 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023d78:	2101      	movs	r1, #1
20023d7a:	4620      	mov	r0, r4
20023d7c:	f7fe ff43 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20023d80:	2200      	movs	r2, #0
20023d82:	2102      	movs	r1, #2
20023d84:	4620      	mov	r0, r4
20023d86:	f7ff f9dd 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023d8a:	4620      	mov	r0, r4
20023d8c:	f7fe ff88 	bl	20022ca0 <HAL_FLASH_IS_PROG_DONE>
20023d90:	2800      	cmp	r0, #0
20023d92:	d0f1      	beq.n	20023d78 <HAL_QSPIEX_WRITE_PAGE+0x196>
20023d94:	e751      	b.n	20023c3a <HAL_QSPIEX_WRITE_PAGE+0x58>
20023d96:	2b02      	cmp	r3, #2
20023d98:	bf14      	ite	ne
20023d9a:	2316      	movne	r3, #22
20023d9c:	2317      	moveq	r3, #23
20023d9e:	e77c      	b.n	20023c9a <HAL_QSPIEX_WRITE_PAGE+0xb8>
20023da0:	2f00      	cmp	r7, #0
20023da2:	f73f af7e 	bgt.w	20023ca2 <HAL_QSPIEX_WRITE_PAGE+0xc0>
20023da6:	e748      	b.n	20023c3a <HAL_QSPIEX_WRITE_PAGE+0x58>
20023da8:	4618      	mov	r0, r3
20023daa:	e747      	b.n	20023c3c <HAL_QSPIEX_WRITE_PAGE+0x5a>

20023dac <HAL_QSPIEX_SECT_ERASE>:
20023dac:	b573      	push	{r0, r1, r4, r5, r6, lr}
20023dae:	4604      	mov	r4, r0
20023db0:	460d      	mov	r5, r1
20023db2:	f7ff fbf6 	bl	200235a2 <flash_handle_valid>
20023db6:	b1e8      	cbz	r0, 20023df4 <HAL_QSPIEX_SECT_ERASE+0x48>
20023db8:	6963      	ldr	r3, [r4, #20]
20023dba:	460a      	mov	r2, r1
20023dbc:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023dc0:	f04f 0100 	mov.w	r1, #0
20023dc4:	4620      	mov	r0, r4
20023dc6:	bf94      	ite	ls
20023dc8:	261b      	movls	r6, #27
20023dca:	2629      	movhi	r6, #41	@ 0x29
20023dcc:	f7ff f9ba 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20023dd0:	2101      	movs	r1, #1
20023dd2:	4620      	mov	r0, r4
20023dd4:	f7fe ff21 	bl	20022c1a <HAL_FLASH_WRITE_DLEN2>
20023dd8:	2301      	movs	r3, #1
20023dda:	462a      	mov	r2, r5
20023ddc:	9300      	str	r3, [sp, #0]
20023dde:	4631      	mov	r1, r6
20023de0:	2302      	movs	r3, #2
20023de2:	4620      	mov	r0, r4
20023de4:	f7ff f9e1 	bl	200231aa <HAL_FLASH_ISSUE_CMD_SEQ>
20023de8:	3800      	subs	r0, #0
20023dea:	bf18      	it	ne
20023dec:	2001      	movne	r0, #1
20023dee:	4240      	negs	r0, r0
20023df0:	b002      	add	sp, #8
20023df2:	bd70      	pop	{r4, r5, r6, pc}
20023df4:	f04f 30ff 	mov.w	r0, #4294967295
20023df8:	e7fa      	b.n	20023df0 <HAL_QSPIEX_SECT_ERASE+0x44>
	...

20023dfc <HAL_QSPI_GET_SRC_CLK>:
20023dfc:	b508      	push	{r3, lr}
20023dfe:	b1e8      	cbz	r0, 20023e3c <HAL_QSPI_GET_SRC_CLK+0x40>
20023e00:	6803      	ldr	r3, [r0, #0]
20023e02:	4a0f      	ldr	r2, [pc, #60]	@ (20023e40 <HAL_QSPI_GET_SRC_CLK+0x44>)
20023e04:	4293      	cmp	r3, r2
20023e06:	d00c      	beq.n	20023e22 <HAL_QSPI_GET_SRC_CLK+0x26>
20023e08:	f502 5280 	add.w	r2, r2, #4096	@ 0x1000
20023e0c:	4293      	cmp	r3, r2
20023e0e:	d115      	bne.n	20023e3c <HAL_QSPI_GET_SRC_CLK+0x40>
20023e10:	2006      	movs	r0, #6
20023e12:	f001 f821 	bl	20024e58 <HAL_RCC_HCPU_GetClockSrc>
20023e16:	2802      	cmp	r0, #2
20023e18:	d105      	bne.n	20023e26 <HAL_QSPI_GET_SRC_CLK+0x2a>
20023e1a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023e1e:	f001 b850 	b.w	20024ec2 <HAL_RCC_HCPU_GetDLL2Freq>
20023e22:	2004      	movs	r0, #4
20023e24:	e7f5      	b.n	20023e12 <HAL_QSPI_GET_SRC_CLK+0x16>
20023e26:	2803      	cmp	r0, #3
20023e28:	d103      	bne.n	20023e32 <HAL_QSPI_GET_SRC_CLK+0x36>
20023e2a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023e2e:	f001 b84b 	b.w	20024ec8 <HAL_RCC_HCPU_GetDLL3Freq>
20023e32:	2001      	movs	r0, #1
20023e34:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023e38:	f001 b8aa 	b.w	20024f90 <HAL_RCC_GetSysCLKFreq>
20023e3c:	2000      	movs	r0, #0
20023e3e:	bd08      	pop	{r3, pc}
20023e40:	50041000 	.word	0x50041000

20023e44 <HAL_QSPI_GET_CLK>:
20023e44:	b538      	push	{r3, r4, r5, lr}
20023e46:	4605      	mov	r5, r0
20023e48:	b908      	cbnz	r0, 20023e4e <HAL_QSPI_GET_CLK+0xa>
20023e4a:	2000      	movs	r0, #0
20023e4c:	bd38      	pop	{r3, r4, r5, pc}
20023e4e:	f7fe ff3f 	bl	20022cd0 <HAL_FLASH_GET_DIV>
20023e52:	4604      	mov	r4, r0
20023e54:	2800      	cmp	r0, #0
20023e56:	d0f8      	beq.n	20023e4a <HAL_QSPI_GET_CLK+0x6>
20023e58:	4628      	mov	r0, r5
20023e5a:	f7ff ffcf 	bl	20023dfc <HAL_QSPI_GET_SRC_CLK>
20023e5e:	fbb0 f0f4 	udiv	r0, r0, r4
20023e62:	e7f3      	b.n	20023e4c <HAL_QSPI_GET_CLK+0x8>

20023e64 <HAL_QSPI_READ_ID>:
20023e64:	b138      	cbz	r0, 20023e76 <HAL_QSPI_READ_ID+0x12>
20023e66:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
20023e6a:	b113      	cbz	r3, 20023e72 <HAL_QSPI_READ_ID+0xe>
20023e6c:	2100      	movs	r1, #0
20023e6e:	f7ff bc3c 	b.w	200236ea <nand_read_id>
20023e72:	f7ff babc 	b.w	200233ee <HAL_FLASH_GET_NOR_ID>
20023e76:	20ff      	movs	r0, #255	@ 0xff
20023e78:	4770      	bx	lr

20023e7a <HAL_NOR_CFG_DTR>:
20023e7a:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20023e7c:	4604      	mov	r4, r0
20023e7e:	460a      	mov	r2, r1
20023e80:	b351      	cbz	r1, 20023ed8 <HAL_NOR_CFG_DTR+0x5e>
20023e82:	68c5      	ldr	r5, [r0, #12]
20023e84:	f895 31ff 	ldrb.w	r3, [r5, #511]	@ 0x1ff
20023e88:	2b00      	cmp	r3, #0
20023e8a:	d03b      	beq.n	20023f04 <HAL_NOR_CFG_DTR+0x8a>
20023e8c:	f890 3020 	ldrb.w	r3, [r0, #32]
20023e90:	b3c3      	cbz	r3, 20023f04 <HAL_NOR_CFG_DTR+0x8a>
20023e92:	f995 6207 	ldrsb.w	r6, [r5, #519]	@ 0x207
20023e96:	f995 2202 	ldrsb.w	r2, [r5, #514]	@ 0x202
20023e9a:	f995 3203 	ldrsb.w	r3, [r5, #515]	@ 0x203
20023e9e:	f995 1201 	ldrsb.w	r1, [r5, #513]	@ 0x201
20023ea2:	9603      	str	r6, [sp, #12]
20023ea4:	f995 6206 	ldrsb.w	r6, [r5, #518]	@ 0x206
20023ea8:	9602      	str	r6, [sp, #8]
20023eaa:	f995 6205 	ldrsb.w	r6, [r5, #517]	@ 0x205
20023eae:	9601      	str	r6, [sp, #4]
20023eb0:	f995 5204 	ldrsb.w	r5, [r5, #516]	@ 0x204
20023eb4:	9500      	str	r5, [sp, #0]
20023eb6:	f7fe fe59 	bl	20022b6c <HAL_FLASH_CFG_AHB_RCMD>
20023eba:	68e3      	ldr	r3, [r4, #12]
20023ebc:	4620      	mov	r0, r4
20023ebe:	f893 11ff 	ldrb.w	r1, [r3, #511]	@ 0x1ff
20023ec2:	f7fe fe48 	bl	20022b56 <HAL_FLASH_SET_AHB_RCMD>
20023ec6:	2101      	movs	r1, #1
20023ec8:	4620      	mov	r0, r4
20023eca:	f894 2025 	ldrb.w	r2, [r4, #37]	@ 0x25
20023ece:	f7ff f859 	bl	20022f84 <HAL_MPI_CFG_DTR>
20023ed2:	2000      	movs	r0, #0
20023ed4:	b004      	add	sp, #16
20023ed6:	bd70      	pop	{r4, r5, r6, pc}
20023ed8:	f7ff f854 	bl	20022f84 <HAL_MPI_CFG_DTR>
20023edc:	6963      	ldr	r3, [r4, #20]
20023ede:	f894 1020 	ldrb.w	r1, [r4, #32]
20023ee2:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023ee6:	d906      	bls.n	20023ef6 <HAL_NOR_CFG_DTR+0x7c>
20023ee8:	b919      	cbnz	r1, 20023ef2 <HAL_NOR_CFG_DTR+0x78>
20023eea:	4620      	mov	r0, r4
20023eec:	f7ff f8c6 	bl	2002307c <HAL_FLASH_CONFIG_FULL_AHB_READ>
20023ef0:	e7ef      	b.n	20023ed2 <HAL_NOR_CFG_DTR+0x58>
20023ef2:	2101      	movs	r1, #1
20023ef4:	e7f9      	b.n	20023eea <HAL_NOR_CFG_DTR+0x70>
20023ef6:	b919      	cbnz	r1, 20023f00 <HAL_NOR_CFG_DTR+0x86>
20023ef8:	4620      	mov	r0, r4
20023efa:	f7ff f87b 	bl	20022ff4 <HAL_FLASH_CONFIG_AHB_READ>
20023efe:	e7e8      	b.n	20023ed2 <HAL_NOR_CFG_DTR+0x58>
20023f00:	2101      	movs	r1, #1
20023f02:	e7f9      	b.n	20023ef8 <HAL_NOR_CFG_DTR+0x7e>
20023f04:	2001      	movs	r0, #1
20023f06:	e7e5      	b.n	20023ed4 <HAL_NOR_CFG_DTR+0x5a>

20023f08 <HAL_NOR_DTR_CAL>:
20023f08:	b510      	push	{r4, lr}
20023f0a:	4604      	mov	r4, r0
20023f0c:	b1f0      	cbz	r0, 20023f4c <HAL_NOR_DTR_CAL+0x44>
20023f0e:	6802      	ldr	r2, [r0, #0]
20023f10:	2014      	movs	r0, #20
20023f12:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20023f16:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
20023f1a:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20023f1e:	f7fd ffd0 	bl	20021ec2 <HAL_Delay_us>
20023f22:	6823      	ldr	r3, [r4, #0]
20023f24:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20023f28:	05d2      	lsls	r2, r2, #23
20023f2a:	d5fb      	bpl.n	20023f24 <HAL_NOR_DTR_CAL+0x1c>
20023f2c:	f8d3 0094 	ldr.w	r0, [r3, #148]	@ 0x94
20023f30:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20023f34:	b2c0      	uxtb	r0, r0
20023f36:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20023f3a:	f8c3 2094 	str.w	r2, [r3, #148]	@ 0x94
20023f3e:	f894 3025 	ldrb.w	r3, [r4, #37]	@ 0x25
20023f42:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
20023f46:	4303      	orrs	r3, r0
20023f48:	f884 3025 	strb.w	r3, [r4, #37]	@ 0x25
20023f4c:	bd10      	pop	{r4, pc}
	...

20023f50 <HAL_FLASH_Init>:
20023f50:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20023f54:	460e      	mov	r6, r1
20023f56:	4690      	mov	r8, r2
20023f58:	461f      	mov	r7, r3
20023f5a:	4604      	mov	r4, r0
20023f5c:	b087      	sub	sp, #28
20023f5e:	2800      	cmp	r0, #0
20023f60:	f000 80e5 	beq.w	2002412e <HAL_FLASH_Init+0x1de>
20023f64:	2900      	cmp	r1, #0
20023f66:	f000 80e2 	beq.w	2002412e <HAL_FLASH_Init+0x1de>
20023f6a:	f7fe fdd3 	bl	20022b14 <HAL_QSPI_Init>
20023f6e:	6820      	ldr	r0, [r4, #0]
20023f70:	f7ff fb1d 	bl	200235ae <HAL_GET_FLASH_MID>
20023f74:	6933      	ldr	r3, [r6, #16]
20023f76:	2100      	movs	r1, #0
20023f78:	f884 3034 	strb.w	r3, [r4, #52]	@ 0x34
20023f7c:	68b3      	ldr	r3, [r6, #8]
20023f7e:	4605      	mov	r5, r0
20023f80:	63a3      	str	r3, [r4, #56]	@ 0x38
20023f82:	68f3      	ldr	r3, [r6, #12]
20023f84:	f884 1024 	strb.w	r1, [r4, #36]	@ 0x24
20023f88:	051b      	lsls	r3, r3, #20
20023f8a:	63e3      	str	r3, [r4, #60]	@ 0x3c
20023f8c:	2302      	movs	r3, #2
20023f8e:	f884 3036 	strb.w	r3, [r4, #54]	@ 0x36
20023f92:	6933      	ldr	r3, [r6, #16]
20023f94:	f8c4 8008 	str.w	r8, [r4, #8]
20023f98:	1e5a      	subs	r2, r3, #1
20023f9a:	4253      	negs	r3, r2
20023f9c:	4153      	adcs	r3, r2
20023f9e:	f884 3023 	strb.w	r3, [r4, #35]	@ 0x23
20023fa2:	f1b8 0f00 	cmp.w	r8, #0
20023fa6:	d058      	beq.n	2002405a <HAL_FLASH_Init+0x10a>
20023fa8:	2f00      	cmp	r7, #0
20023faa:	d056      	beq.n	2002405a <HAL_FLASH_Init+0x10a>
20023fac:	683b      	ldr	r3, [r7, #0]
20023fae:	f8c8 3000 	str.w	r3, [r8]
20023fb2:	68a3      	ldr	r3, [r4, #8]
20023fb4:	68fa      	ldr	r2, [r7, #12]
20023fb6:	605a      	str	r2, [r3, #4]
20023fb8:	2210      	movs	r2, #16
20023fba:	68a3      	ldr	r3, [r4, #8]
20023fbc:	609a      	str	r2, [r3, #8]
20023fbe:	2280      	movs	r2, #128	@ 0x80
20023fc0:	68a3      	ldr	r3, [r4, #8]
20023fc2:	60d9      	str	r1, [r3, #12]
20023fc4:	68a3      	ldr	r3, [r4, #8]
20023fc6:	611a      	str	r2, [r3, #16]
20023fc8:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
20023fcc:	68a3      	ldr	r3, [r4, #8]
20023fce:	6159      	str	r1, [r3, #20]
20023fd0:	68a3      	ldr	r3, [r4, #8]
20023fd2:	6199      	str	r1, [r3, #24]
20023fd4:	68a3      	ldr	r3, [r4, #8]
20023fd6:	61d9      	str	r1, [r3, #28]
20023fd8:	68a3      	ldr	r3, [r4, #8]
20023fda:	621a      	str	r2, [r3, #32]
20023fdc:	68a3      	ldr	r3, [r4, #8]
20023fde:	6259      	str	r1, [r3, #36]	@ 0x24
20023fe0:	b1c0      	cbz	r0, 20024014 <HAL_FLASH_Init+0xc4>
20023fe2:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
20023fe6:	4298      	cmp	r0, r3
20023fe8:	d014      	beq.n	20024014 <HAL_FLASH_Init+0xc4>
20023fea:	2601      	movs	r6, #1
20023fec:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20023ff0:	2b00      	cmp	r3, #0
20023ff2:	d13d      	bne.n	20024070 <HAL_FLASH_Init+0x120>
20023ff4:	2e00      	cmp	r6, #0
20023ff6:	d15a      	bne.n	200240ae <HAL_FLASH_Init+0x15e>
20023ff8:	4620      	mov	r0, r4
20023ffa:	f7ff fab2 	bl	20023562 <HAL_FLASH_RELEASE_DPD>
20023ffe:	4630      	mov	r0, r6
20024000:	f7fd ff5f 	bl	20021ec2 <HAL_Delay_us>
20024004:	2032      	movs	r0, #50	@ 0x32
20024006:	f7fd ff5c 	bl	20021ec2 <HAL_Delay_us>
2002400a:	4620      	mov	r0, r4
2002400c:	f7ff ff2a 	bl	20023e64 <HAL_QSPI_READ_ID>
20024010:	4605      	mov	r5, r0
20024012:	e04c      	b.n	200240ae <HAL_FLASH_Init+0x15e>
20024014:	2101      	movs	r1, #1
20024016:	4620      	mov	r0, r4
20024018:	f7fe fe4f 	bl	20022cba <HAL_FLASH_SET_TXSLOT>
2002401c:	4ba7      	ldr	r3, [pc, #668]	@ (200242bc <HAL_FLASH_Init+0x36c>)
2002401e:	69a2      	ldr	r2, [r4, #24]
20024020:	4620      	mov	r0, r4
20024022:	429a      	cmp	r2, r3
20024024:	f04f 0200 	mov.w	r2, #0
20024028:	bf8c      	ite	hi
2002402a:	2101      	movhi	r1, #1
2002402c:	4611      	movls	r1, r2
2002402e:	f7ff fa89 	bl	20023544 <HAL_QSPI_SET_CLK_INV>
20024032:	4620      	mov	r0, r4
20024034:	f89d 1038 	ldrb.w	r1, [sp, #56]	@ 0x38
20024038:	f7fe fe46 	bl	20022cc8 <HAL_FLASH_SET_CLK_rom>
2002403c:	f894 3035 	ldrb.w	r3, [r4, #53]	@ 0x35
20024040:	b12b      	cbz	r3, 2002404e <HAL_FLASH_Init+0xfe>
20024042:	2b01      	cmp	r3, #1
20024044:	d110      	bne.n	20024068 <HAL_FLASH_Init+0x118>
20024046:	2100      	movs	r1, #0
20024048:	4620      	mov	r0, r4
2002404a:	f7fe ff55 	bl	20022ef8 <HAL_FLASH_SET_DUAL_MODE>
2002404e:	2101      	movs	r1, #1
20024050:	4620      	mov	r0, r4
20024052:	f7fe fede 	bl	20022e12 <HAL_FLASH_ENABLE_QSPI>
20024056:	2600      	movs	r6, #0
20024058:	e7c8      	b.n	20023fec <HAL_FLASH_Init+0x9c>
2002405a:	2d00      	cmp	r5, #0
2002405c:	d0de      	beq.n	2002401c <HAL_FLASH_Init+0xcc>
2002405e:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
20024062:	429d      	cmp	r5, r3
20024064:	d1c1      	bne.n	20023fea <HAL_FLASH_Init+0x9a>
20024066:	e7d9      	b.n	2002401c <HAL_FLASH_Init+0xcc>
20024068:	2b02      	cmp	r3, #2
2002406a:	d1f0      	bne.n	2002404e <HAL_FLASH_Init+0xfe>
2002406c:	2101      	movs	r1, #1
2002406e:	e7eb      	b.n	20024048 <HAL_FLASH_Init+0xf8>
20024070:	6822      	ldr	r2, [r4, #0]
20024072:	2700      	movs	r7, #0
20024074:	6893      	ldr	r3, [r2, #8]
20024076:	4639      	mov	r1, r7
20024078:	f043 7370 	orr.w	r3, r3, #62914560	@ 0x3c00000
2002407c:	6093      	str	r3, [r2, #8]
2002407e:	2301      	movs	r3, #1
20024080:	463a      	mov	r2, r7
20024082:	4620      	mov	r0, r4
20024084:	e9cd 7303 	strd	r7, r3, [sp, #12]
20024088:	e9cd 7701 	strd	r7, r7, [sp, #4]
2002408c:	463b      	mov	r3, r7
2002408e:	9700      	str	r7, [sp, #0]
20024090:	f7fe fe23 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
20024094:	463a      	mov	r2, r7
20024096:	21ff      	movs	r1, #255	@ 0xff
20024098:	4620      	mov	r0, r4
2002409a:	f7fe fdd9 	bl	20022c50 <HAL_FLASH_SET_CMD>
2002409e:	4638      	mov	r0, r7
200240a0:	f7fd ff0f 	bl	20021ec2 <HAL_Delay_us>
200240a4:	20c8      	movs	r0, #200	@ 0xc8
200240a6:	f7fd ff0c 	bl	20021ec2 <HAL_Delay_us>
200240aa:	2e00      	cmp	r6, #0
200240ac:	d0ad      	beq.n	2002400a <HAL_FLASH_Init+0xba>
200240ae:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200240b2:	b2ef      	uxtb	r7, r5
200240b4:	f3c5 2807 	ubfx	r8, r5, #8, #8
200240b8:	6325      	str	r5, [r4, #48]	@ 0x30
200240ba:	f3c5 4507 	ubfx	r5, r5, #16, #8
200240be:	4642      	mov	r2, r8
200240c0:	4629      	mov	r1, r5
200240c2:	4638      	mov	r0, r7
200240c4:	b3ab      	cbz	r3, 20024132 <HAL_FLASH_Init+0x1e2>
200240c6:	f001 f96b 	bl	200253a0 <spi_nand_get_cmd_by_id>
200240ca:	60e0      	str	r0, [r4, #12]
200240cc:	bba0      	cbnz	r0, 20024138 <HAL_FLASH_Init+0x1e8>
200240ce:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200240d2:	b32b      	cbz	r3, 20024120 <HAL_FLASH_Init+0x1d0>
200240d4:	2108      	movs	r1, #8
200240d6:	4620      	mov	r0, r4
200240d8:	f7ff fb07 	bl	200236ea <nand_read_id>
200240dc:	f3c0 2807 	ubfx	r8, r0, #8, #8
200240e0:	f3c0 4507 	ubfx	r5, r0, #16, #8
200240e4:	b2c7      	uxtb	r7, r0
200240e6:	6320      	str	r0, [r4, #48]	@ 0x30
200240e8:	4642      	mov	r2, r8
200240ea:	4629      	mov	r1, r5
200240ec:	4638      	mov	r0, r7
200240ee:	f001 f957 	bl	200253a0 <spi_nand_get_cmd_by_id>
200240f2:	60e0      	str	r0, [r4, #12]
200240f4:	bb00      	cbnz	r0, 20024138 <HAL_FLASH_Init+0x1e8>
200240f6:	210f      	movs	r1, #15
200240f8:	4620      	mov	r0, r4
200240fa:	f7ff faf6 	bl	200236ea <nand_read_id>
200240fe:	f3c0 2807 	ubfx	r8, r0, #8, #8
20024102:	f3c0 4507 	ubfx	r5, r0, #16, #8
20024106:	b2c7      	uxtb	r7, r0
20024108:	6320      	str	r0, [r4, #48]	@ 0x30
2002410a:	4642      	mov	r2, r8
2002410c:	4629      	mov	r1, r5
2002410e:	4638      	mov	r0, r7
20024110:	f001 f946 	bl	200253a0 <spi_nand_get_cmd_by_id>
20024114:	60e0      	str	r0, [r4, #12]
20024116:	b978      	cbnz	r0, 20024138 <HAL_FLASH_Init+0x1e8>
20024118:	f001 f958 	bl	200253cc <spi_nand_get_default_ctable>
2002411c:	60e0      	str	r0, [r4, #12]
2002411e:	b958      	cbnz	r0, 20024138 <HAL_FLASH_Init+0x1e8>
20024120:	2100      	movs	r1, #0
20024122:	4620      	mov	r0, r4
20024124:	f7fe fe75 	bl	20022e12 <HAL_FLASH_ENABLE_QSPI>
20024128:	2300      	movs	r3, #0
2002412a:	e9c4 330e 	strd	r3, r3, [r4, #56]	@ 0x38
2002412e:	2001      	movs	r0, #1
20024130:	e04c      	b.n	200241cc <HAL_FLASH_Init+0x27c>
20024132:	f001 f8ed 	bl	20025310 <spi_flash_get_cmd_by_id>
20024136:	e7c8      	b.n	200240ca <HAL_FLASH_Init+0x17a>
20024138:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
2002413c:	4642      	mov	r2, r8
2002413e:	4629      	mov	r1, r5
20024140:	4638      	mov	r0, r7
20024142:	2b00      	cmp	r3, #0
20024144:	d045      	beq.n	200241d2 <HAL_FLASH_Init+0x282>
20024146:	f001 f94f 	bl	200253e8 <spi_nand_get_size_by_id>
2002414a:	4642      	mov	r2, r8
2002414c:	4629      	mov	r1, r5
2002414e:	4681      	mov	r9, r0
20024150:	4638      	mov	r0, r7
20024152:	f001 f953 	bl	200253fc <spi_nand_get_plane_select_flag>
20024156:	4642      	mov	r2, r8
20024158:	4629      	mov	r1, r5
2002415a:	f884 0027 	strb.w	r0, [r4, #39]	@ 0x27
2002415e:	4638      	mov	r0, r7
20024160:	f001 f955 	bl	2002540e <spi_nand_get_big_page_flag>
20024164:	4642      	mov	r2, r8
20024166:	f884 0024 	strb.w	r0, [r4, #36]	@ 0x24
2002416a:	4629      	mov	r1, r5
2002416c:	4638      	mov	r0, r7
2002416e:	f001 f957 	bl	20025420 <spi_nand_get_ecc_mode>
20024172:	f894 3024 	ldrb.w	r3, [r4, #36]	@ 0x24
20024176:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
2002417a:	f884 3024 	strb.w	r3, [r4, #36]	@ 0x24
2002417e:	f1b9 0f00 	cmp.w	r9, #0
20024182:	d003      	beq.n	2002418c <HAL_FLASH_Init+0x23c>
20024184:	f8c4 903c 	str.w	r9, [r4, #60]	@ 0x3c
20024188:	f8c4 9014 	str.w	r9, [r4, #20]
2002418c:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024190:	2b00      	cmp	r3, #0
20024192:	d173      	bne.n	2002427c <HAL_FLASH_Init+0x32c>
20024194:	2e00      	cmp	r6, #0
20024196:	d16e      	bne.n	20024276 <HAL_FLASH_Init+0x326>
20024198:	4620      	mov	r0, r4
2002419a:	f7ff f943 	bl	20023424 <HAL_FLASH_CLR_PROTECT>
2002419e:	6963      	ldr	r3, [r4, #20]
200241a0:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
200241a4:	d938      	bls.n	20024218 <HAL_FLASH_Init+0x2c8>
200241a6:	4632      	mov	r2, r6
200241a8:	2121      	movs	r1, #33	@ 0x21
200241aa:	4620      	mov	r0, r4
200241ac:	f7fe ffca 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
200241b0:	f894 3020 	ldrb.w	r3, [r4, #32]
200241b4:	b98b      	cbnz	r3, 200241da <HAL_FLASH_Init+0x28a>
200241b6:	4631      	mov	r1, r6
200241b8:	4620      	mov	r0, r4
200241ba:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
200241be:	f7ff f90b 	bl	200233d8 <HAL_FLASH_FADDR_SET_QSPI>
200241c2:	2107      	movs	r1, #7
200241c4:	4620      	mov	r0, r4
200241c6:	f7fe fe7f 	bl	20022ec8 <HAL_FLASH_SET_ROW_BOUNDARY>
200241ca:	2000      	movs	r0, #0
200241cc:	b007      	add	sp, #28
200241ce:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
200241d2:	f001 f8b1 	bl	20025338 <spi_flash_get_size_by_id>
200241d6:	4681      	mov	r9, r0
200241d8:	e7d1      	b.n	2002417e <HAL_FLASH_Init+0x22e>
200241da:	2101      	movs	r1, #1
200241dc:	4620      	mov	r0, r4
200241de:	f7ff f8fb 	bl	200233d8 <HAL_FLASH_FADDR_SET_QSPI>
200241e2:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
200241e6:	f1b9 0f01 	cmp.w	r9, #1
200241ea:	d1ea      	bne.n	200241c2 <HAL_FLASH_Init+0x272>
200241ec:	4642      	mov	r2, r8
200241ee:	4629      	mov	r1, r5
200241f0:	4638      	mov	r0, r7
200241f2:	f001 f8ab 	bl	2002534c <spi_flash_is_support_dtr>
200241f6:	b138      	cbz	r0, 20024208 <HAL_FLASH_Init+0x2b8>
200241f8:	4620      	mov	r0, r4
200241fa:	f7ff fe85 	bl	20023f08 <HAL_NOR_DTR_CAL>
200241fe:	4649      	mov	r1, r9
20024200:	4620      	mov	r0, r4
20024202:	f7ff fe3a 	bl	20023e7a <HAL_NOR_CFG_DTR>
20024206:	e7dc      	b.n	200241c2 <HAL_FLASH_Init+0x272>
20024208:	4632      	mov	r2, r6
2002420a:	4631      	mov	r1, r6
2002420c:	4620      	mov	r0, r4
2002420e:	f7fe feb9 	bl	20022f84 <HAL_MPI_CFG_DTR>
20024212:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
20024216:	e7d4      	b.n	200241c2 <HAL_FLASH_Init+0x272>
20024218:	f894 3020 	ldrb.w	r3, [r4, #32]
2002421c:	b933      	cbnz	r3, 2002422c <HAL_FLASH_Init+0x2dc>
2002421e:	4631      	mov	r1, r6
20024220:	4620      	mov	r0, r4
20024222:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
20024226:	f7ff f8cc 	bl	200233c2 <HAL_FLASH_SET_QUAL_SPI>
2002422a:	e7ce      	b.n	200241ca <HAL_FLASH_Init+0x27a>
2002422c:	2101      	movs	r1, #1
2002422e:	4620      	mov	r0, r4
20024230:	f7ff f8c7 	bl	200233c2 <HAL_FLASH_SET_QUAL_SPI>
20024234:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
20024238:	f1b9 0f01 	cmp.w	r9, #1
2002423c:	d115      	bne.n	2002426a <HAL_FLASH_Init+0x31a>
2002423e:	4642      	mov	r2, r8
20024240:	4629      	mov	r1, r5
20024242:	4638      	mov	r0, r7
20024244:	f001 f882 	bl	2002534c <spi_flash_is_support_dtr>
20024248:	b138      	cbz	r0, 2002425a <HAL_FLASH_Init+0x30a>
2002424a:	4620      	mov	r0, r4
2002424c:	f7ff fe5c 	bl	20023f08 <HAL_NOR_DTR_CAL>
20024250:	4649      	mov	r1, r9
20024252:	4620      	mov	r0, r4
20024254:	f7ff fe11 	bl	20023e7a <HAL_NOR_CFG_DTR>
20024258:	e7b7      	b.n	200241ca <HAL_FLASH_Init+0x27a>
2002425a:	4632      	mov	r2, r6
2002425c:	4631      	mov	r1, r6
2002425e:	4620      	mov	r0, r4
20024260:	f7fe fe90 	bl	20022f84 <HAL_MPI_CFG_DTR>
20024264:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
20024268:	e7af      	b.n	200241ca <HAL_FLASH_Init+0x27a>
2002426a:	4632      	mov	r2, r6
2002426c:	4631      	mov	r1, r6
2002426e:	4620      	mov	r0, r4
20024270:	f7fe fe88 	bl	20022f84 <HAL_MPI_CFG_DTR>
20024274:	e7a9      	b.n	200241ca <HAL_FLASH_Init+0x27a>
20024276:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
2002427a:	e7a6      	b.n	200241ca <HAL_FLASH_Init+0x27a>
2002427c:	2101      	movs	r1, #1
2002427e:	4620      	mov	r0, r4
20024280:	f7fe fcc1 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20024284:	68e3      	ldr	r3, [r4, #12]
20024286:	2102      	movs	r1, #2
20024288:	791a      	ldrb	r2, [r3, #4]
2002428a:	4620      	mov	r0, r4
2002428c:	f7fe ff5a 	bl	20023144 <HAL_FLASH_ISSUE_CMD>
20024290:	4620      	mov	r0, r4
20024292:	f7fe fd0e 	bl	20022cb2 <HAL_FLASH_READ32>
20024296:	4605      	mov	r5, r0
20024298:	200a      	movs	r0, #10
2002429a:	f7fd fe12 	bl	20021ec2 <HAL_Delay_us>
2002429e:	07eb      	lsls	r3, r5, #31
200242a0:	d4ec      	bmi.n	2002427c <HAL_FLASH_Init+0x32c>
200242a2:	4620      	mov	r0, r4
200242a4:	f7ff fb55 	bl	20023952 <nand_clear_status>
200242a8:	f894 3020 	ldrb.w	r3, [r4, #32]
200242ac:	2b02      	cmp	r3, #2
200242ae:	d18c      	bne.n	200241ca <HAL_FLASH_Init+0x27a>
200242b0:	2101      	movs	r1, #1
200242b2:	4620      	mov	r0, r4
200242b4:	f7ff fb1c 	bl	200238f0 <HAL_NAND_EN_QUAL>
200242b8:	e787      	b.n	200241ca <HAL_FLASH_Init+0x27a>
200242ba:	bf00      	nop
200242bc:	05f5e100 	.word	0x05f5e100

200242c0 <HAL_Delay_us_psram>:
200242c0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200242c2:	9001      	str	r0, [sp, #4]
200242c4:	9b01      	ldr	r3, [sp, #4]
200242c6:	4c11      	ldr	r4, [pc, #68]	@ (2002430c <HAL_Delay_us_psram+0x4c>)
200242c8:	b10b      	cbz	r3, 200242ce <HAL_Delay_us_psram+0xe>
200242ca:	6820      	ldr	r0, [r4, #0]
200242cc:	b940      	cbnz	r0, 200242e0 <HAL_Delay_us_psram+0x20>
200242ce:	2000      	movs	r0, #0
200242d0:	f000 fe6e 	bl	20024fb0 <HAL_RCC_GetHCLKFreq>
200242d4:	4b0e      	ldr	r3, [pc, #56]	@ (20024310 <HAL_Delay_us_psram+0x50>)
200242d6:	fbb0 f0f3 	udiv	r0, r0, r3
200242da:	9b01      	ldr	r3, [sp, #4]
200242dc:	6020      	str	r0, [r4, #0]
200242de:	b19b      	cbz	r3, 20024308 <HAL_Delay_us_psram+0x48>
200242e0:	2830      	cmp	r0, #48	@ 0x30
200242e2:	bf82      	ittt	hi
200242e4:	9b01      	ldrhi	r3, [sp, #4]
200242e6:	f103 33ff 	addhi.w	r3, r3, #4294967295
200242ea:	9301      	strhi	r3, [sp, #4]
200242ec:	9b01      	ldr	r3, [sp, #4]
200242ee:	b15b      	cbz	r3, 20024308 <HAL_Delay_us_psram+0x48>
200242f0:	2205      	movs	r2, #5
200242f2:	9b01      	ldr	r3, [sp, #4]
200242f4:	3b01      	subs	r3, #1
200242f6:	4343      	muls	r3, r0
200242f8:	fbb3 f3f2 	udiv	r3, r3, r2
200242fc:	9303      	str	r3, [sp, #12]
200242fe:	9b03      	ldr	r3, [sp, #12]
20024300:	1e5a      	subs	r2, r3, #1
20024302:	9203      	str	r2, [sp, #12]
20024304:	2b00      	cmp	r3, #0
20024306:	d1fa      	bne.n	200242fe <HAL_Delay_us_psram+0x3e>
20024308:	b004      	add	sp, #16
2002430a:	bd10      	pop	{r4, pc}
2002430c:	20049f60 	.word	0x20049f60
20024310:	000f4240 	.word	0x000f4240

20024314 <HAL_MPI_OPSRAM_CAL_DELAY>:
20024314:	b570      	push	{r4, r5, r6, lr}
20024316:	460e      	mov	r6, r1
20024318:	4615      	mov	r5, r2
2002431a:	4604      	mov	r4, r0
2002431c:	b358      	cbz	r0, 20024376 <HAL_MPI_OPSRAM_CAL_DELAY+0x62>
2002431e:	2202      	movs	r2, #2
20024320:	6803      	ldr	r3, [r0, #0]
20024322:	60da      	str	r2, [r3, #12]
20024324:	6802      	ldr	r2, [r0, #0]
20024326:	6d93      	ldr	r3, [r2, #88]	@ 0x58
20024328:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
2002432c:	6593      	str	r3, [r2, #88]	@ 0x58
2002432e:	6802      	ldr	r2, [r0, #0]
20024330:	2000      	movs	r0, #0
20024332:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20024336:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
2002433a:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
2002433e:	f7ff ffbf 	bl	200242c0 <HAL_Delay_us_psram>
20024342:	2014      	movs	r0, #20
20024344:	f7ff ffbc 	bl	200242c0 <HAL_Delay_us_psram>
20024348:	6820      	ldr	r0, [r4, #0]
2002434a:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
2002434e:	05db      	lsls	r3, r3, #23
20024350:	d5fb      	bpl.n	2002434a <HAL_MPI_OPSRAM_CAL_DELAY+0x36>
20024352:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
20024356:	f8d0 2094 	ldr.w	r2, [r0, #148]	@ 0x94
2002435a:	b2db      	uxtb	r3, r3
2002435c:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20024360:	f8c0 2094 	str.w	r2, [r0, #148]	@ 0x94
20024364:	1e5a      	subs	r2, r3, #1
20024366:	7032      	strb	r2, [r6, #0]
20024368:	2201      	movs	r2, #1
2002436a:	2000      	movs	r0, #0
2002436c:	3b04      	subs	r3, #4
2002436e:	702b      	strb	r3, [r5, #0]
20024370:	6823      	ldr	r3, [r4, #0]
20024372:	60da      	str	r2, [r3, #12]
20024374:	bd70      	pop	{r4, r5, r6, pc}
20024376:	2001      	movs	r0, #1
20024378:	e7fc      	b.n	20024374 <HAL_MPI_OPSRAM_CAL_DELAY+0x60>
	...

2002437c <HAL_SPI_PSRAM_Init>:
2002437c:	b537      	push	{r0, r1, r2, r4, r5, lr}
2002437e:	4614      	mov	r4, r2
20024380:	4605      	mov	r5, r0
20024382:	2800      	cmp	r0, #0
20024384:	d043      	beq.n	2002440e <HAL_SPI_PSRAM_Init+0x92>
20024386:	2900      	cmp	r1, #0
20024388:	d041      	beq.n	2002440e <HAL_SPI_PSRAM_Init+0x92>
2002438a:	f7fe fbc3 	bl	20022b14 <HAL_QSPI_Init>
2002438e:	4628      	mov	r0, r5
20024390:	b2e1      	uxtb	r1, r4
20024392:	f7fe fc99 	bl	20022cc8 <HAL_FLASH_SET_CLK_rom>
20024396:	4628      	mov	r0, r5
20024398:	f7ff fd54 	bl	20023e44 <HAL_QSPI_GET_CLK>
2002439c:	4b1d      	ldr	r3, [pc, #116]	@ (20024414 <HAL_SPI_PSRAM_Init+0x98>)
2002439e:	4298      	cmp	r0, r3
200243a0:	d930      	bls.n	20024404 <HAL_SPI_PSRAM_Init+0x88>
200243a2:	4b1d      	ldr	r3, [pc, #116]	@ (20024418 <HAL_SPI_PSRAM_Init+0x9c>)
200243a4:	4298      	cmp	r0, r3
200243a6:	d92f      	bls.n	20024408 <HAL_SPI_PSRAM_Init+0x8c>
200243a8:	4b1c      	ldr	r3, [pc, #112]	@ (2002441c <HAL_SPI_PSRAM_Init+0xa0>)
200243aa:	4298      	cmp	r0, r3
200243ac:	d922      	bls.n	200243f4 <HAL_SPI_PSRAM_Init+0x78>
200243ae:	f240 34b6 	movw	r4, #950	@ 0x3b6
200243b2:	f240 4374 	movw	r3, #1140	@ 0x474
200243b6:	4a1a      	ldr	r2, [pc, #104]	@ (20024420 <HAL_SPI_PSRAM_Init+0xa4>)
200243b8:	4290      	cmp	r0, r2
200243ba:	bf88      	it	hi
200243bc:	461c      	movhi	r4, r3
200243be:	2200      	movs	r2, #0
200243c0:	2101      	movs	r1, #1
200243c2:	4628      	mov	r0, r5
200243c4:	f7ff f8be 	bl	20023544 <HAL_QSPI_SET_CLK_INV>
200243c8:	2100      	movs	r1, #0
200243ca:	4622      	mov	r2, r4
200243cc:	2302      	movs	r3, #2
200243ce:	4628      	mov	r0, r5
200243d0:	9100      	str	r1, [sp, #0]
200243d2:	f7fe fd64 	bl	20022e9e <HAL_FLASH_SET_CS_TIME>
200243d6:	4604      	mov	r4, r0
200243d8:	b948      	cbnz	r0, 200243ee <HAL_SPI_PSRAM_Init+0x72>
200243da:	2106      	movs	r1, #6
200243dc:	4628      	mov	r0, r5
200243de:	f7fe fd73 	bl	20022ec8 <HAL_FLASH_SET_ROW_BOUNDARY>
200243e2:	4604      	mov	r4, r0
200243e4:	b918      	cbnz	r0, 200243ee <HAL_SPI_PSRAM_Init+0x72>
200243e6:	2101      	movs	r1, #1
200243e8:	4628      	mov	r0, r5
200243ea:	f7fe fd12 	bl	20022e12 <HAL_FLASH_ENABLE_QSPI>
200243ee:	4620      	mov	r0, r4
200243f0:	b003      	add	sp, #12
200243f2:	bd30      	pop	{r4, r5, pc}
200243f4:	4b0b      	ldr	r3, [pc, #44]	@ (20024424 <HAL_SPI_PSRAM_Init+0xa8>)
200243f6:	f44f 743e 	mov.w	r4, #760	@ 0x2f8
200243fa:	4298      	cmp	r0, r3
200243fc:	d8df      	bhi.n	200243be <HAL_SPI_PSRAM_Init+0x42>
200243fe:	2200      	movs	r2, #0
20024400:	4611      	mov	r1, r2
20024402:	e7de      	b.n	200243c2 <HAL_SPI_PSRAM_Init+0x46>
20024404:	24b4      	movs	r4, #180	@ 0xb4
20024406:	e7fa      	b.n	200243fe <HAL_SPI_PSRAM_Init+0x82>
20024408:	f44f 74be 	mov.w	r4, #380	@ 0x17c
2002440c:	e7f7      	b.n	200243fe <HAL_SPI_PSRAM_Init+0x82>
2002440e:	2401      	movs	r4, #1
20024410:	e7ed      	b.n	200243ee <HAL_SPI_PSRAM_Init+0x72>
20024412:	bf00      	nop
20024414:	016e3600 	.word	0x016e3600
20024418:	02dc6c00 	.word	0x02dc6c00
2002441c:	05b8d800 	.word	0x05b8d800
20024420:	07270e00 	.word	0x07270e00
20024424:	03938700 	.word	0x03938700

20024428 <HAL_MPI_MR_WRITE>:
20024428:	b5f0      	push	{r4, r5, r6, r7, lr}
2002442a:	460e      	mov	r6, r1
2002442c:	4617      	mov	r7, r2
2002442e:	4605      	mov	r5, r0
20024430:	b087      	sub	sp, #28
20024432:	b1d8      	cbz	r0, 2002446c <HAL_MPI_MR_WRITE+0x44>
20024434:	2207      	movs	r2, #7
20024436:	2400      	movs	r4, #0
20024438:	2303      	movs	r3, #3
2002443a:	e9cd 2203 	strd	r2, r2, [sp, #12]
2002443e:	2101      	movs	r1, #1
20024440:	e9cd 4301 	strd	r4, r3, [sp, #4]
20024444:	9400      	str	r4, [sp, #0]
20024446:	4623      	mov	r3, r4
20024448:	f7fe fc47 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
2002444c:	2102      	movs	r1, #2
2002444e:	4628      	mov	r0, r5
20024450:	f7fe fbd9 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20024454:	4639      	mov	r1, r7
20024456:	4628      	mov	r0, r5
20024458:	f7fe fbce 	bl	20022bf8 <HAL_FLASH_WRITE_WORD>
2002445c:	4632      	mov	r2, r6
2002445e:	21c0      	movs	r1, #192	@ 0xc0
20024460:	4628      	mov	r0, r5
20024462:	f7fe fbf5 	bl	20022c50 <HAL_FLASH_SET_CMD>
20024466:	4620      	mov	r0, r4
20024468:	b007      	add	sp, #28
2002446a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002446c:	2001      	movs	r0, #1
2002446e:	e7fb      	b.n	20024468 <HAL_MPI_MR_WRITE+0x40>

20024470 <HAL_MPI_SET_FIXLAT>:
20024470:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
20024474:	460c      	mov	r4, r1
20024476:	4616      	mov	r6, r2
20024478:	461f      	mov	r7, r3
2002447a:	4605      	mov	r5, r0
2002447c:	2800      	cmp	r0, #0
2002447e:	d040      	beq.n	20024502 <HAL_MPI_SET_FIXLAT+0x92>
20024480:	466b      	mov	r3, sp
20024482:	4a21      	ldr	r2, [pc, #132]	@ (20024508 <HAL_MPI_SET_FIXLAT+0x98>)
20024484:	6810      	ldr	r0, [r2, #0]
20024486:	6851      	ldr	r1, [r2, #4]
20024488:	c303      	stmia	r3!, {r0, r1}
2002448a:	6890      	ldr	r0, [r2, #8]
2002448c:	68d1      	ldr	r1, [r2, #12]
2002448e:	c303      	stmia	r3!, {r0, r1}
20024490:	4628      	mov	r0, r5
20024492:	b2e1      	uxtb	r1, r4
20024494:	f7fe fd3e 	bl	20022f14 <HAL_MPI_EN_FIXLAT>
20024498:	f107 0310 	add.w	r3, r7, #16
2002449c:	446b      	add	r3, sp
2002449e:	f813 8c08 	ldrb.w	r8, [r3, #-8]
200244a2:	ea4f 1848 	mov.w	r8, r8, lsl #5
200244a6:	fa5f f888 	uxtb.w	r8, r8
200244aa:	b30c      	cbz	r4, 200244f0 <HAL_MPI_SET_FIXLAT+0x80>
200244ac:	ab04      	add	r3, sp, #16
200244ae:	eb03 0356 	add.w	r3, r3, r6, lsr #1
200244b2:	f813 4c10 	ldrb.w	r4, [r3, #-16]
200244b6:	00a4      	lsls	r4, r4, #2
200244b8:	f044 0421 	orr.w	r4, r4, #33	@ 0x21
200244bc:	b264      	sxtb	r4, r4
200244be:	f004 02fd 	and.w	r2, r4, #253	@ 0xfd
200244c2:	2100      	movs	r1, #0
200244c4:	4628      	mov	r0, r5
200244c6:	f7ff ffaf 	bl	20024428 <HAL_MPI_MR_WRITE>
200244ca:	1e71      	subs	r1, r6, #1
200244cc:	4628      	mov	r0, r5
200244ce:	b249      	sxtb	r1, r1
200244d0:	f7fe fd7e 	bl	20022fd0 <HAL_MPI_MODIFY_RCMD_DELAY>
200244d4:	4642      	mov	r2, r8
200244d6:	2104      	movs	r1, #4
200244d8:	4628      	mov	r0, r5
200244da:	f7ff ffa5 	bl	20024428 <HAL_MPI_MR_WRITE>
200244de:	1e79      	subs	r1, r7, #1
200244e0:	4628      	mov	r0, r5
200244e2:	b249      	sxtb	r1, r1
200244e4:	f7fe fd7d 	bl	20022fe2 <HAL_MPI_MODIFY_WCMD_DELAY>
200244e8:	2000      	movs	r0, #0
200244ea:	b004      	add	sp, #16
200244ec:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200244f0:	f106 0310 	add.w	r3, r6, #16
200244f4:	446b      	add	r3, sp
200244f6:	f813 4c10 	ldrb.w	r4, [r3, #-16]
200244fa:	00a4      	lsls	r4, r4, #2
200244fc:	f044 0401 	orr.w	r4, r4, #1
20024500:	e7dc      	b.n	200244bc <HAL_MPI_SET_FIXLAT+0x4c>
20024502:	2001      	movs	r0, #1
20024504:	e7f1      	b.n	200244ea <HAL_MPI_SET_FIXLAT+0x7a>
20024506:	bf00      	nop
20024508:	2002b830 	.word	0x2002b830

2002450c <HAL_LEGACY_MR_WRITE>:
2002450c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002450e:	460e      	mov	r6, r1
20024510:	4617      	mov	r7, r2
20024512:	4605      	mov	r5, r0
20024514:	b087      	sub	sp, #28
20024516:	b1d8      	cbz	r0, 20024550 <HAL_LEGACY_MR_WRITE+0x44>
20024518:	2207      	movs	r2, #7
2002451a:	2400      	movs	r4, #0
2002451c:	2302      	movs	r3, #2
2002451e:	e9cd 2203 	strd	r2, r2, [sp, #12]
20024522:	2101      	movs	r1, #1
20024524:	e9cd 4301 	strd	r4, r3, [sp, #4]
20024528:	9400      	str	r4, [sp, #0]
2002452a:	4623      	mov	r3, r4
2002452c:	f7fe fbd5 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
20024530:	2104      	movs	r1, #4
20024532:	4628      	mov	r0, r5
20024534:	f7fe fb67 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
20024538:	4639      	mov	r1, r7
2002453a:	4628      	mov	r0, r5
2002453c:	f7fe fb5c 	bl	20022bf8 <HAL_FLASH_WRITE_WORD>
20024540:	4632      	mov	r2, r6
20024542:	21c0      	movs	r1, #192	@ 0xc0
20024544:	4628      	mov	r0, r5
20024546:	f7fe fb83 	bl	20022c50 <HAL_FLASH_SET_CMD>
2002454a:	4620      	mov	r0, r4
2002454c:	b007      	add	sp, #28
2002454e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024550:	2001      	movs	r0, #1
20024552:	e7fb      	b.n	2002454c <HAL_LEGACY_MR_WRITE+0x40>

20024554 <HAL_LEGACY_CFG_READ>:
20024554:	b530      	push	{r4, r5, lr}
20024556:	4605      	mov	r5, r0
20024558:	b085      	sub	sp, #20
2002455a:	b1a0      	cbz	r0, 20024586 <HAL_LEGACY_CFG_READ+0x32>
2002455c:	2400      	movs	r4, #0
2002455e:	2107      	movs	r1, #7
20024560:	2302      	movs	r3, #2
20024562:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
20024566:	e9cd 1102 	strd	r1, r1, [sp, #8]
2002456a:	0052      	lsls	r2, r2, #1
2002456c:	e9cd 4300 	strd	r4, r3, [sp]
20024570:	b252      	sxtb	r2, r2
20024572:	4623      	mov	r3, r4
20024574:	f7fe fafa 	bl	20022b6c <HAL_FLASH_CFG_AHB_RCMD>
20024578:	4621      	mov	r1, r4
2002457a:	4628      	mov	r0, r5
2002457c:	f7fe faeb 	bl	20022b56 <HAL_FLASH_SET_AHB_RCMD>
20024580:	4620      	mov	r0, r4
20024582:	b005      	add	sp, #20
20024584:	bd30      	pop	{r4, r5, pc}
20024586:	2001      	movs	r0, #1
20024588:	e7fb      	b.n	20024582 <HAL_LEGACY_CFG_READ+0x2e>

2002458a <HAL_LEGACY_CFG_WRITE>:
2002458a:	b530      	push	{r4, r5, lr}
2002458c:	4605      	mov	r5, r0
2002458e:	b085      	sub	sp, #20
20024590:	b190      	cbz	r0, 200245b8 <HAL_LEGACY_CFG_WRITE+0x2e>
20024592:	2107      	movs	r1, #7
20024594:	2400      	movs	r4, #0
20024596:	2302      	movs	r3, #2
20024598:	e9cd 1102 	strd	r1, r1, [sp, #8]
2002459c:	e9cd 4300 	strd	r4, r3, [sp]
200245a0:	4623      	mov	r3, r4
200245a2:	f990 2026 	ldrsb.w	r2, [r0, #38]	@ 0x26
200245a6:	f7fe fb0a 	bl	20022bbe <HAL_FLASH_CFG_AHB_WCMD>
200245aa:	2180      	movs	r1, #128	@ 0x80
200245ac:	4628      	mov	r0, r5
200245ae:	f7fe fafa 	bl	20022ba6 <HAL_FLASH_SET_AHB_WCMD>
200245b2:	4620      	mov	r0, r4
200245b4:	b005      	add	sp, #20
200245b6:	bd30      	pop	{r4, r5, pc}
200245b8:	2001      	movs	r0, #1
200245ba:	e7fb      	b.n	200245b4 <HAL_LEGACY_CFG_WRITE+0x2a>

200245bc <HAL_PSRAM_RESET>:
200245bc:	b5f0      	push	{r4, r5, r6, r7, lr}
200245be:	4604      	mov	r4, r0
200245c0:	b087      	sub	sp, #28
200245c2:	2800      	cmp	r0, #0
200245c4:	d03b      	beq.n	2002463e <HAL_PSRAM_RESET+0x82>
200245c6:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
200245ca:	2b05      	cmp	r3, #5
200245cc:	d034      	beq.n	20024638 <HAL_PSRAM_RESET+0x7c>
200245ce:	3b03      	subs	r3, #3
200245d0:	2b01      	cmp	r3, #1
200245d2:	d82e      	bhi.n	20024632 <HAL_PSRAM_RESET+0x76>
200245d4:	2601      	movs	r6, #1
200245d6:	2703      	movs	r7, #3
200245d8:	2300      	movs	r3, #0
200245da:	2507      	movs	r5, #7
200245dc:	b276      	sxtb	r6, r6
200245de:	b27f      	sxtb	r7, r7
200245e0:	461a      	mov	r2, r3
200245e2:	2101      	movs	r1, #1
200245e4:	4620      	mov	r0, r4
200245e6:	e9cd 5503 	strd	r5, r5, [sp, #12]
200245ea:	e9cd 5701 	strd	r5, r7, [sp, #4]
200245ee:	9600      	str	r6, [sp, #0]
200245f0:	f7fe fb73 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
200245f4:	2200      	movs	r2, #0
200245f6:	21ff      	movs	r1, #255	@ 0xff
200245f8:	4620      	mov	r0, r4
200245fa:	f7fe fb29 	bl	20022c50 <HAL_FLASH_SET_CMD>
200245fe:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024602:	2b05      	cmp	r3, #5
20024604:	d10f      	bne.n	20024626 <HAL_PSRAM_RESET+0x6a>
20024606:	2300      	movs	r3, #0
20024608:	2101      	movs	r1, #1
2002460a:	461a      	mov	r2, r3
2002460c:	4620      	mov	r0, r4
2002460e:	e9cd 5503 	strd	r5, r5, [sp, #12]
20024612:	e9cd 5701 	strd	r5, r7, [sp, #4]
20024616:	9600      	str	r6, [sp, #0]
20024618:	f7fe fb5f 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
2002461c:	2200      	movs	r2, #0
2002461e:	21ff      	movs	r1, #255	@ 0xff
20024620:	4620      	mov	r0, r4
20024622:	f7fe fb15 	bl	20022c50 <HAL_FLASH_SET_CMD>
20024626:	2000      	movs	r0, #0
20024628:	f7fd fc4b 	bl	20021ec2 <HAL_Delay_us>
2002462c:	2003      	movs	r0, #3
2002462e:	f7fd fc48 	bl	20021ec2 <HAL_Delay_us>
20024632:	2000      	movs	r0, #0
20024634:	b007      	add	sp, #28
20024636:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024638:	2603      	movs	r6, #3
2002463a:	2702      	movs	r7, #2
2002463c:	e7cc      	b.n	200245d8 <HAL_PSRAM_RESET+0x1c>
2002463e:	2001      	movs	r0, #1
20024640:	e7f8      	b.n	20024634 <HAL_PSRAM_RESET+0x78>
	...

20024644 <HAL_OPI_PSRAM_Init>:
20024644:	b530      	push	{r4, r5, lr}
20024646:	4604      	mov	r4, r0
20024648:	b085      	sub	sp, #20
2002464a:	2800      	cmp	r0, #0
2002464c:	d06c      	beq.n	20024728 <HAL_OPI_PSRAM_Init+0xe4>
2002464e:	2900      	cmp	r1, #0
20024650:	d06a      	beq.n	20024728 <HAL_OPI_PSRAM_Init+0xe4>
20024652:	f7fe fa5f 	bl	20022b14 <HAL_QSPI_Init>
20024656:	6823      	ldr	r3, [r4, #0]
20024658:	f10d 020e 	add.w	r2, sp, #14
2002465c:	f10d 010f 	add.w	r1, sp, #15
20024660:	4620      	mov	r0, r4
20024662:	681d      	ldr	r5, [r3, #0]
20024664:	f7ff fe56 	bl	20024314 <HAL_MPI_OPSRAM_CAL_DELAY>
20024668:	2101      	movs	r1, #1
2002466a:	4620      	mov	r0, r4
2002466c:	f7fe fb2c 	bl	20022cc8 <HAL_FLASH_SET_CLK_rom>
20024670:	4620      	mov	r0, r4
20024672:	f7ff fbe7 	bl	20023e44 <HAL_QSPI_GET_CLK>
20024676:	4b2d      	ldr	r3, [pc, #180]	@ (2002472c <HAL_OPI_PSRAM_Init+0xe8>)
20024678:	f005 0501 	and.w	r5, r5, #1
2002467c:	4298      	cmp	r0, r3
2002467e:	d93e      	bls.n	200246fe <HAL_OPI_PSRAM_Init+0xba>
20024680:	f103 6337 	add.w	r3, r3, #191889408	@ 0xb700000
20024684:	f503 33d8 	add.w	r3, r3, #110592	@ 0x1b000
20024688:	4298      	cmp	r0, r3
2002468a:	d93d      	bls.n	20024708 <HAL_OPI_PSRAM_Init+0xc4>
2002468c:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
20024690:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
20024694:	4298      	cmp	r0, r3
20024696:	d93d      	bls.n	20024714 <HAL_OPI_PSRAM_Init+0xd0>
20024698:	2107      	movs	r1, #7
2002469a:	2014      	movs	r0, #20
2002469c:	2308      	movs	r3, #8
2002469e:	f240 5232 	movw	r2, #1330	@ 0x532
200246a2:	f884 1025 	strb.w	r1, [r4, #37]	@ 0x25
200246a6:	f884 1026 	strb.w	r1, [r4, #38]	@ 0x26
200246aa:	2106      	movs	r1, #6
200246ac:	9000      	str	r0, [sp, #0]
200246ae:	4620      	mov	r0, r4
200246b0:	f7fe fbf5 	bl	20022e9e <HAL_FLASH_SET_CS_TIME>
200246b4:	2107      	movs	r1, #7
200246b6:	4620      	mov	r0, r4
200246b8:	f7fe fc06 	bl	20022ec8 <HAL_FLASH_SET_ROW_BOUNDARY>
200246bc:	2101      	movs	r1, #1
200246be:	4620      	mov	r0, r4
200246c0:	f7fe fc36 	bl	20022f30 <HAL_MPI_ENABLE_DQS>
200246c4:	f89d 100e 	ldrb.w	r1, [sp, #14]
200246c8:	4620      	mov	r0, r4
200246ca:	f7fe fc3f 	bl	20022f4c <HAL_MPI_SET_DQS_DELAY>
200246ce:	2200      	movs	r2, #0
200246d0:	f89d 100f 	ldrb.w	r1, [sp, #15]
200246d4:	4620      	mov	r0, r4
200246d6:	f7fe fc45 	bl	20022f64 <HAL_MPI_SET_SCK>
200246da:	2101      	movs	r1, #1
200246dc:	4620      	mov	r0, r4
200246de:	f7fe fb98 	bl	20022e12 <HAL_FLASH_ENABLE_QSPI>
200246e2:	2101      	movs	r1, #1
200246e4:	4620      	mov	r0, r4
200246e6:	f7fe fba2 	bl	20022e2e <HAL_FLASH_ENABLE_OPI>
200246ea:	b92d      	cbnz	r5, 200246f8 <HAL_OPI_PSRAM_Init+0xb4>
200246ec:	4b10      	ldr	r3, [pc, #64]	@ (20024730 <HAL_OPI_PSRAM_Init+0xec>)
200246ee:	681b      	ldr	r3, [r3, #0]
200246f0:	f003 0303 	and.w	r3, r3, #3
200246f4:	2b03      	cmp	r3, #3
200246f6:	d113      	bne.n	20024720 <HAL_OPI_PSRAM_Init+0xdc>
200246f8:	2000      	movs	r0, #0
200246fa:	b005      	add	sp, #20
200246fc:	bd30      	pop	{r4, r5, pc}
200246fe:	2103      	movs	r1, #3
20024700:	2300      	movs	r3, #0
20024702:	4608      	mov	r0, r1
20024704:	22b4      	movs	r2, #180	@ 0xb4
20024706:	e7cc      	b.n	200246a2 <HAL_OPI_PSRAM_Init+0x5e>
20024708:	2105      	movs	r1, #5
2002470a:	200e      	movs	r0, #14
2002470c:	2303      	movs	r3, #3
2002470e:	f240 32b6 	movw	r2, #950	@ 0x3b6
20024712:	e7c6      	b.n	200246a2 <HAL_OPI_PSRAM_Init+0x5e>
20024714:	2106      	movs	r1, #6
20024716:	2011      	movs	r0, #17
20024718:	2305      	movs	r3, #5
2002471a:	f240 4274 	movw	r2, #1140	@ 0x474
2002471e:	e7c0      	b.n	200246a2 <HAL_OPI_PSRAM_Init+0x5e>
20024720:	4620      	mov	r0, r4
20024722:	f7ff ff4b 	bl	200245bc <HAL_PSRAM_RESET>
20024726:	e7e7      	b.n	200246f8 <HAL_OPI_PSRAM_Init+0xb4>
20024728:	2001      	movs	r0, #1
2002472a:	e7e6      	b.n	200246fa <HAL_OPI_PSRAM_Init+0xb6>
2002472c:	02dc6c01 	.word	0x02dc6c01
20024730:	500c0000 	.word	0x500c0000

20024734 <HAL_LEGACY_PSRAM_Init>:
20024734:	b5f0      	push	{r4, r5, r6, r7, lr}
20024736:	4604      	mov	r4, r0
20024738:	b085      	sub	sp, #20
2002473a:	2800      	cmp	r0, #0
2002473c:	f000 8091 	beq.w	20024862 <HAL_LEGACY_PSRAM_Init+0x12e>
20024740:	2900      	cmp	r1, #0
20024742:	f000 808e 	beq.w	20024862 <HAL_LEGACY_PSRAM_Init+0x12e>
20024746:	f7fe f9e5 	bl	20022b14 <HAL_QSPI_Init>
2002474a:	6823      	ldr	r3, [r4, #0]
2002474c:	f10d 020e 	add.w	r2, sp, #14
20024750:	f10d 010f 	add.w	r1, sp, #15
20024754:	4620      	mov	r0, r4
20024756:	681e      	ldr	r6, [r3, #0]
20024758:	f7ff fddc 	bl	20024314 <HAL_MPI_OPSRAM_CAL_DELAY>
2002475c:	2101      	movs	r1, #1
2002475e:	4620      	mov	r0, r4
20024760:	f7fe fab2 	bl	20022cc8 <HAL_FLASH_SET_CLK_rom>
20024764:	4620      	mov	r0, r4
20024766:	f7ff fb6d 	bl	20023e44 <HAL_QSPI_GET_CLK>
2002476a:	4b3f      	ldr	r3, [pc, #252]	@ (20024868 <HAL_LEGACY_PSRAM_Init+0x134>)
2002476c:	4605      	mov	r5, r0
2002476e:	4298      	cmp	r0, r3
20024770:	4f3e      	ldr	r7, [pc, #248]	@ (2002486c <HAL_LEGACY_PSRAM_Init+0x138>)
20024772:	f006 0601 	and.w	r6, r6, #1
20024776:	d957      	bls.n	20024828 <HAL_LEGACY_PSRAM_Init+0xf4>
20024778:	42b8      	cmp	r0, r7
2002477a:	d959      	bls.n	20024830 <HAL_LEGACY_PSRAM_Init+0xfc>
2002477c:	4b3c      	ldr	r3, [pc, #240]	@ (20024870 <HAL_LEGACY_PSRAM_Init+0x13c>)
2002477e:	4298      	cmp	r0, r3
20024780:	d95b      	bls.n	2002483a <HAL_LEGACY_PSRAM_Init+0x106>
20024782:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
20024786:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
2002478a:	4298      	cmp	r0, r3
2002478c:	d85a      	bhi.n	20024844 <HAL_LEGACY_PSRAM_Init+0x110>
2002478e:	2114      	movs	r1, #20
20024790:	2308      	movs	r3, #8
20024792:	f240 5232 	movw	r2, #1330	@ 0x532
20024796:	9100      	str	r1, [sp, #0]
20024798:	4620      	mov	r0, r4
2002479a:	2106      	movs	r1, #6
2002479c:	f7fe fb7f 	bl	20022e9e <HAL_FLASH_SET_CS_TIME>
200247a0:	2107      	movs	r1, #7
200247a2:	4620      	mov	r0, r4
200247a4:	f7fe fb90 	bl	20022ec8 <HAL_FLASH_SET_ROW_BOUNDARY>
200247a8:	2101      	movs	r1, #1
200247aa:	4620      	mov	r0, r4
200247ac:	f7fe fbc0 	bl	20022f30 <HAL_MPI_ENABLE_DQS>
200247b0:	f89d 100e 	ldrb.w	r1, [sp, #14]
200247b4:	4620      	mov	r0, r4
200247b6:	f7fe fbc9 	bl	20022f4c <HAL_MPI_SET_DQS_DELAY>
200247ba:	2200      	movs	r2, #0
200247bc:	f89d 100f 	ldrb.w	r1, [sp, #15]
200247c0:	4620      	mov	r0, r4
200247c2:	f7fe fbcf 	bl	20022f64 <HAL_MPI_SET_SCK>
200247c6:	2101      	movs	r1, #1
200247c8:	4620      	mov	r0, r4
200247ca:	f7fe fb87 	bl	20022edc <HAL_FLASH_SET_LEGACY>
200247ce:	2101      	movs	r1, #1
200247d0:	4620      	mov	r0, r4
200247d2:	f7fe fb1e 	bl	20022e12 <HAL_FLASH_ENABLE_QSPI>
200247d6:	2101      	movs	r1, #1
200247d8:	4620      	mov	r0, r4
200247da:	f7fe fb28 	bl	20022e2e <HAL_FLASH_ENABLE_OPI>
200247de:	b92e      	cbnz	r6, 200247ec <HAL_LEGACY_PSRAM_Init+0xb8>
200247e0:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
200247e4:	b913      	cbnz	r3, 200247ec <HAL_LEGACY_PSRAM_Init+0xb8>
200247e6:	4620      	mov	r0, r4
200247e8:	f7ff fee8 	bl	200245bc <HAL_PSRAM_RESET>
200247ec:	42bd      	cmp	r5, r7
200247ee:	d92e      	bls.n	2002484e <HAL_LEGACY_PSRAM_Init+0x11a>
200247f0:	4b1f      	ldr	r3, [pc, #124]	@ (20024870 <HAL_LEGACY_PSRAM_Init+0x13c>)
200247f2:	429d      	cmp	r5, r3
200247f4:	d930      	bls.n	20024858 <HAL_LEGACY_PSRAM_Init+0x124>
200247f6:	2206      	movs	r2, #6
200247f8:	2302      	movs	r3, #2
200247fa:	2588      	movs	r5, #136	@ 0x88
200247fc:	263b      	movs	r6, #59	@ 0x3b
200247fe:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
20024802:	2101      	movs	r1, #1
20024804:	f884 2025 	strb.w	r2, [r4, #37]	@ 0x25
20024808:	4620      	mov	r0, r4
2002480a:	f7fe fb83 	bl	20022f14 <HAL_MPI_EN_FIXLAT>
2002480e:	4632      	mov	r2, r6
20024810:	2100      	movs	r1, #0
20024812:	4620      	mov	r0, r4
20024814:	f7ff fe7a 	bl	2002450c <HAL_LEGACY_MR_WRITE>
20024818:	462a      	mov	r2, r5
2002481a:	2104      	movs	r1, #4
2002481c:	4620      	mov	r0, r4
2002481e:	f7ff fe75 	bl	2002450c <HAL_LEGACY_MR_WRITE>
20024822:	2000      	movs	r0, #0
20024824:	b005      	add	sp, #20
20024826:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024828:	2103      	movs	r1, #3
2002482a:	2300      	movs	r3, #0
2002482c:	22b4      	movs	r2, #180	@ 0xb4
2002482e:	e7b2      	b.n	20024796 <HAL_LEGACY_PSRAM_Init+0x62>
20024830:	210e      	movs	r1, #14
20024832:	2303      	movs	r3, #3
20024834:	f240 32b6 	movw	r2, #950	@ 0x3b6
20024838:	e7ad      	b.n	20024796 <HAL_LEGACY_PSRAM_Init+0x62>
2002483a:	2111      	movs	r1, #17
2002483c:	2305      	movs	r3, #5
2002483e:	f240 4274 	movw	r2, #1140	@ 0x474
20024842:	e7a8      	b.n	20024796 <HAL_LEGACY_PSRAM_Init+0x62>
20024844:	2117      	movs	r1, #23
20024846:	2309      	movs	r3, #9
20024848:	f44f 62be 	mov.w	r2, #1520	@ 0x5f0
2002484c:	e7a3      	b.n	20024796 <HAL_LEGACY_PSRAM_Init+0x62>
2002484e:	2204      	movs	r2, #4
20024850:	2300      	movs	r3, #0
20024852:	2508      	movs	r5, #8
20024854:	2633      	movs	r6, #51	@ 0x33
20024856:	e7d2      	b.n	200247fe <HAL_LEGACY_PSRAM_Init+0xca>
20024858:	2205      	movs	r2, #5
2002485a:	2300      	movs	r3, #0
2002485c:	2508      	movs	r5, #8
2002485e:	2637      	movs	r6, #55	@ 0x37
20024860:	e7cd      	b.n	200247fe <HAL_LEGACY_PSRAM_Init+0xca>
20024862:	2001      	movs	r0, #1
20024864:	e7de      	b.n	20024824 <HAL_LEGACY_PSRAM_Init+0xf0>
20024866:	bf00      	nop
20024868:	02dc6c01 	.word	0x02dc6c01
2002486c:	0e4e1c01 	.word	0x0e4e1c01
20024870:	112a8801 	.word	0x112a8801

20024874 <HAL_HYPER_PSRAM_WriteCR>:
20024874:	b570      	push	{r4, r5, r6, lr}
20024876:	460e      	mov	r6, r1
20024878:	4615      	mov	r5, r2
2002487a:	4604      	mov	r4, r0
2002487c:	b086      	sub	sp, #24
2002487e:	b1f8      	cbz	r0, 200248c0 <HAL_HYPER_PSRAM_WriteCR+0x4c>
20024880:	2207      	movs	r2, #7
20024882:	2303      	movs	r3, #3
20024884:	e9cd 2301 	strd	r2, r3, [sp, #4]
20024888:	2300      	movs	r3, #0
2002488a:	e9cd 2203 	strd	r2, r2, [sp, #12]
2002488e:	9300      	str	r3, [sp, #0]
20024890:	2101      	movs	r1, #1
20024892:	f7fe fa22 	bl	20022cda <HAL_FLASH_MANUAL_CMD>
20024896:	4631      	mov	r1, r6
20024898:	4620      	mov	r0, r4
2002489a:	f7fe f9c8 	bl	20022c2e <HAL_FLASH_WRITE_ABYTE>
2002489e:	2102      	movs	r1, #2
200248a0:	4620      	mov	r0, r4
200248a2:	f7fe f9b0 	bl	20022c06 <HAL_FLASH_WRITE_DLEN>
200248a6:	4629      	mov	r1, r5
200248a8:	4620      	mov	r0, r4
200248aa:	f7fe f9a5 	bl	20022bf8 <HAL_FLASH_WRITE_WORD>
200248ae:	f44f 3280 	mov.w	r2, #65536	@ 0x10000
200248b2:	2160      	movs	r1, #96	@ 0x60
200248b4:	4620      	mov	r0, r4
200248b6:	b006      	add	sp, #24
200248b8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
200248bc:	f7fe b9c8 	b.w	20022c50 <HAL_FLASH_SET_CMD>
200248c0:	b006      	add	sp, #24
200248c2:	bd70      	pop	{r4, r5, r6, pc}

200248c4 <HAL_HYPER_PSRAM_Init>:
200248c4:	b538      	push	{r3, r4, r5, lr}
200248c6:	4604      	mov	r4, r0
200248c8:	2201      	movs	r2, #1
200248ca:	f7ff febb 	bl	20024644 <HAL_OPI_PSRAM_Init>
200248ce:	4620      	mov	r0, r4
200248d0:	f7ff fab8 	bl	20023e44 <HAL_QSPI_GET_CLK>
200248d4:	4b15      	ldr	r3, [pc, #84]	@ (2002492c <HAL_HYPER_PSRAM_Init+0x68>)
200248d6:	4298      	cmp	r0, r3
200248d8:	d91f      	bls.n	2002491a <HAL_HYPER_PSRAM_Init+0x56>
200248da:	4b15      	ldr	r3, [pc, #84]	@ (20024930 <HAL_HYPER_PSRAM_Init+0x6c>)
200248dc:	4298      	cmp	r0, r3
200248de:	d91f      	bls.n	20024920 <HAL_HYPER_PSRAM_Init+0x5c>
200248e0:	f103 73f4 	add.w	r3, r3, #31981568	@ 0x1e80000
200248e4:	f503 4390 	add.w	r3, r3, #18432	@ 0x4800
200248e8:	4298      	cmp	r0, r3
200248ea:	d91c      	bls.n	20024926 <HAL_HYPER_PSRAM_Init+0x62>
200248ec:	f242 758f 	movw	r5, #10127	@ 0x278f
200248f0:	f241 738f 	movw	r3, #6031	@ 0x178f
200248f4:	4a0f      	ldr	r2, [pc, #60]	@ (20024934 <HAL_HYPER_PSRAM_Init+0x70>)
200248f6:	4290      	cmp	r0, r2
200248f8:	bf98      	it	ls
200248fa:	461d      	movls	r5, r3
200248fc:	2101      	movs	r1, #1
200248fe:	4620      	mov	r0, r4
20024900:	f7fe faa3 	bl	20022e4a <HAL_FLASH_ENABLE_HYPER>
20024904:	462a      	mov	r2, r5
20024906:	4620      	mov	r0, r4
20024908:	2100      	movs	r1, #0
2002490a:	f7ff ffb3 	bl	20024874 <HAL_HYPER_PSRAM_WriteCR>
2002490e:	2101      	movs	r1, #1
20024910:	4620      	mov	r0, r4
20024912:	f7fe faff 	bl	20022f14 <HAL_MPI_EN_FIXLAT>
20024916:	2000      	movs	r0, #0
20024918:	bd38      	pop	{r3, r4, r5, pc}
2002491a:	f24e 758f 	movw	r5, #59279	@ 0xe78f
2002491e:	e7ed      	b.n	200248fc <HAL_HYPER_PSRAM_Init+0x38>
20024920:	f24f 758f 	movw	r5, #63375	@ 0xf78f
20024924:	e7ea      	b.n	200248fc <HAL_HYPER_PSRAM_Init+0x38>
20024926:	f240 758f 	movw	r5, #1935	@ 0x78f
2002492a:	e7e7      	b.n	200248fc <HAL_HYPER_PSRAM_Init+0x38>
2002492c:	0a21fe81 	.word	0x0a21fe81
20024930:	0c65d401 	.word	0x0c65d401
20024934:	112a8801 	.word	0x112a8801

20024938 <HAL_HYPER_CFG_READ>:
20024938:	b51f      	push	{r0, r1, r2, r3, r4, lr}
2002493a:	b160      	cbz	r0, 20024956 <HAL_HYPER_CFG_READ+0x1e>
2002493c:	2107      	movs	r1, #7
2002493e:	2303      	movs	r3, #3
20024940:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
20024944:	e9cd 1300 	strd	r1, r3, [sp]
20024948:	3a01      	subs	r2, #1
2002494a:	2300      	movs	r3, #0
2002494c:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024950:	b252      	sxtb	r2, r2
20024952:	f7fe f90b 	bl	20022b6c <HAL_FLASH_CFG_AHB_RCMD>
20024956:	b005      	add	sp, #20
20024958:	f85d fb04 	ldr.w	pc, [sp], #4

2002495c <HAL_HYPER_CFG_WRITE>:
2002495c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
2002495e:	b160      	cbz	r0, 2002497a <HAL_HYPER_CFG_WRITE+0x1e>
20024960:	2107      	movs	r1, #7
20024962:	2303      	movs	r3, #3
20024964:	f890 2026 	ldrb.w	r2, [r0, #38]	@ 0x26
20024968:	e9cd 1300 	strd	r1, r3, [sp]
2002496c:	3a01      	subs	r2, #1
2002496e:	2300      	movs	r3, #0
20024970:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024974:	b252      	sxtb	r2, r2
20024976:	f7fe f922 	bl	20022bbe <HAL_FLASH_CFG_AHB_WCMD>
2002497a:	b005      	add	sp, #20
2002497c:	f85d fb04 	ldr.w	pc, [sp], #4

20024980 <HAL_PIN_SetUartFunc.part.0>:
20024980:	108b      	asrs	r3, r1, #2
20024982:	f1a3 0248 	sub.w	r2, r3, #72	@ 0x48
20024986:	b5f0      	push	{r4, r5, r6, r7, lr}
20024988:	b2d6      	uxtb	r6, r2
2002498a:	2e04      	cmp	r6, #4
2002498c:	d849      	bhi.n	20024a22 <HAL_PIN_SetUartFunc.part.0+0xa2>
2002498e:	2e02      	cmp	r6, #2
20024990:	d810      	bhi.n	200249b4 <HAL_PIN_SetUartFunc.part.0+0x34>
20024992:	4d25      	ldr	r5, [pc, #148]	@ (20024a28 <HAL_PIN_SetUartFunc.part.0+0xa8>)
20024994:	240e      	movs	r4, #14
20024996:	eb05 0582 	add.w	r5, r5, r2, lsl #2
2002499a:	f240 22b2 	movw	r2, #690	@ 0x2b2
2002499e:	eba1 0386 	sub.w	r3, r1, r6, lsl #2
200249a2:	b29b      	uxth	r3, r3
200249a4:	f5a3 7390 	sub.w	r3, r3, #288	@ 0x120
200249a8:	2b03      	cmp	r3, #3
200249aa:	d83a      	bhi.n	20024a22 <HAL_PIN_SetUartFunc.part.0+0xa2>
200249ac:	e8df f003 	tbb	[pc, r3]
200249b0:	20271a09 	.word	0x20271a09
200249b4:	4d1d      	ldr	r5, [pc, #116]	@ (20024a2c <HAL_PIN_SetUartFunc.part.0+0xac>)
200249b6:	009b      	lsls	r3, r3, #2
200249b8:	243d      	movs	r4, #61	@ 0x3d
200249ba:	f240 3221 	movw	r2, #801	@ 0x321
200249be:	441d      	add	r5, r3
200249c0:	e7ed      	b.n	2002499e <HAL_PIN_SetUartFunc.part.0+0x1e>
200249c2:	2c0e      	cmp	r4, #14
200249c4:	f04f 0608 	mov.w	r6, #8
200249c8:	d120      	bne.n	20024a0c <HAL_PIN_SetUartFunc.part.0+0x8c>
200249ca:	f44f 517c 	mov.w	r1, #16128	@ 0x3f00
200249ce:	682f      	ldr	r7, [r5, #0]
200249d0:	1b03      	subs	r3, r0, r4
200249d2:	40b3      	lsls	r3, r6
200249d4:	407b      	eors	r3, r7
200249d6:	400b      	ands	r3, r1
200249d8:	4410      	add	r0, r2
200249da:	407b      	eors	r3, r7
200249dc:	1b00      	subs	r0, r0, r4
200249de:	602b      	str	r3, [r5, #0]
200249e0:	b280      	uxth	r0, r0
200249e2:	bdf0      	pop	{r4, r5, r6, r7, pc}
200249e4:	2c0e      	cmp	r4, #14
200249e6:	f04f 0600 	mov.w	r6, #0
200249ea:	d112      	bne.n	20024a12 <HAL_PIN_SetUartFunc.part.0+0x92>
200249ec:	213f      	movs	r1, #63	@ 0x3f
200249ee:	e7ee      	b.n	200249ce <HAL_PIN_SetUartFunc.part.0+0x4e>
200249f0:	2c0e      	cmp	r4, #14
200249f2:	f04f 0610 	mov.w	r6, #16
200249f6:	d10e      	bne.n	20024a16 <HAL_PIN_SetUartFunc.part.0+0x96>
200249f8:	f44f 117c 	mov.w	r1, #4128768	@ 0x3f0000
200249fc:	e7e7      	b.n	200249ce <HAL_PIN_SetUartFunc.part.0+0x4e>
200249fe:	2c0e      	cmp	r4, #14
20024a00:	f04f 0618 	mov.w	r6, #24
20024a04:	d10a      	bne.n	20024a1c <HAL_PIN_SetUartFunc.part.0+0x9c>
20024a06:	f04f 517c 	mov.w	r1, #1056964608	@ 0x3f000000
20024a0a:	e7e0      	b.n	200249ce <HAL_PIN_SetUartFunc.part.0+0x4e>
20024a0c:	f44f 61e0 	mov.w	r1, #1792	@ 0x700
20024a10:	e7dd      	b.n	200249ce <HAL_PIN_SetUartFunc.part.0+0x4e>
20024a12:	2107      	movs	r1, #7
20024a14:	e7db      	b.n	200249ce <HAL_PIN_SetUartFunc.part.0+0x4e>
20024a16:	f44f 21e0 	mov.w	r1, #458752	@ 0x70000
20024a1a:	e7d8      	b.n	200249ce <HAL_PIN_SetUartFunc.part.0+0x4e>
20024a1c:	f04f 61e0 	mov.w	r1, #117440512	@ 0x7000000
20024a20:	e7d5      	b.n	200249ce <HAL_PIN_SetUartFunc.part.0+0x4e>
20024a22:	2000      	movs	r0, #0
20024a24:	e7dd      	b.n	200249e2 <HAL_PIN_SetUartFunc.part.0+0x62>
20024a26:	bf00      	nop
20024a28:	5000b058 	.word	0x5000b058
20024a2c:	4000ef0c 	.word	0x4000ef0c

20024a30 <HAL_PIN_SetAonPE>:
20024a30:	2a00      	cmp	r2, #0
20024a32:	d031      	beq.n	20024a98 <HAL_PIN_SetAonPE+0x68>
20024a34:	282f      	cmp	r0, #47	@ 0x2f
20024a36:	dd16      	ble.n	20024a66 <HAL_PIN_SetAonPE+0x36>
20024a38:	283a      	cmp	r0, #58	@ 0x3a
20024a3a:	dc2d      	bgt.n	20024a98 <HAL_PIN_SetAonPE+0x68>
20024a3c:	2301      	movs	r3, #1
20024a3e:	4a17      	ldr	r2, [pc, #92]	@ (20024a9c <HAL_PIN_SetAonPE+0x6c>)
20024a40:	382a      	subs	r0, #42	@ 0x2a
20024a42:	4083      	lsls	r3, r0
20024a44:	6f10      	ldr	r0, [r2, #112]	@ 0x70
20024a46:	f011 0f20 	tst.w	r1, #32
20024a4a:	bf14      	ite	ne
20024a4c:	4318      	orrne	r0, r3
20024a4e:	4398      	biceq	r0, r3
20024a50:	6710      	str	r0, [r2, #112]	@ 0x70
20024a52:	4a12      	ldr	r2, [pc, #72]	@ (20024a9c <HAL_PIN_SetAonPE+0x6c>)
20024a54:	f011 0f10 	tst.w	r1, #16
20024a58:	6ed1      	ldr	r1, [r2, #108]	@ 0x6c
20024a5a:	bf14      	ite	ne
20024a5c:	430b      	orrne	r3, r1
20024a5e:	ea21 0303 	biceq.w	r3, r1, r3
20024a62:	66d3      	str	r3, [r2, #108]	@ 0x6c
20024a64:	4770      	bx	lr
20024a66:	3826      	subs	r0, #38	@ 0x26
20024a68:	2803      	cmp	r0, #3
20024a6a:	d815      	bhi.n	20024a98 <HAL_PIN_SetAonPE+0x68>
20024a6c:	4b0c      	ldr	r3, [pc, #48]	@ (20024aa0 <HAL_PIN_SetAonPE+0x70>)
20024a6e:	f011 0f20 	tst.w	r1, #32
20024a72:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024a76:	bf14      	ite	ne
20024a78:	f042 0210 	orrne.w	r2, r2, #16
20024a7c:	f022 0210 	biceq.w	r2, r2, #16
20024a80:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024a84:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024a88:	06c9      	lsls	r1, r1, #27
20024a8a:	bf4c      	ite	mi
20024a8c:	f042 0208 	orrmi.w	r2, r2, #8
20024a90:	f022 0208 	bicpl.w	r2, r2, #8
20024a94:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024a98:	4770      	bx	lr
20024a9a:	bf00      	nop
20024a9c:	500cb000 	.word	0x500cb000
20024aa0:	500cb05c 	.word	0x500cb05c

20024aa4 <HAL_PIN_Get_Base>:
20024aa4:	b138      	cbz	r0, 20024ab6 <HAL_PIN_Get_Base+0x12>
20024aa6:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024aaa:	6893      	ldr	r3, [r2, #8]
20024aac:	4806      	ldr	r0, [pc, #24]	@ (20024ac8 <HAL_PIN_Get_Base+0x24>)
20024aae:	f043 0304 	orr.w	r3, r3, #4
20024ab2:	6093      	str	r3, [r2, #8]
20024ab4:	4770      	bx	lr
20024ab6:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
20024aba:	6853      	ldr	r3, [r2, #4]
20024abc:	4803      	ldr	r0, [pc, #12]	@ (20024acc <HAL_PIN_Get_Base+0x28>)
20024abe:	f043 0308 	orr.w	r3, r3, #8
20024ac2:	6053      	str	r3, [r2, #4]
20024ac4:	4770      	bx	lr
20024ac6:	bf00      	nop
20024ac8:	50003000 	.word	0x50003000
20024acc:	40003000 	.word	0x40003000

20024ad0 <HAL_PIN_Func2Idx>:
20024ad0:	283b      	cmp	r0, #59	@ 0x3b
20024ad2:	bfc8      	it	gt
20024ad4:	383c      	subgt	r0, #60	@ 0x3c
20024ad6:	0143      	lsls	r3, r0, #5
20024ad8:	b152      	cbz	r2, 20024af0 <HAL_PIN_Func2Idx+0x20>
20024ada:	4a06      	ldr	r2, [pc, #24]	@ (20024af4 <HAL_PIN_Func2Idx+0x24>)
20024adc:	2000      	movs	r0, #0
20024ade:	4413      	add	r3, r2
20024ae0:	f833 2010 	ldrh.w	r2, [r3, r0, lsl #1]
20024ae4:	428a      	cmp	r2, r1
20024ae6:	d002      	beq.n	20024aee <HAL_PIN_Func2Idx+0x1e>
20024ae8:	3001      	adds	r0, #1
20024aea:	2810      	cmp	r0, #16
20024aec:	d1f8      	bne.n	20024ae0 <HAL_PIN_Func2Idx+0x10>
20024aee:	4770      	bx	lr
20024af0:	4a01      	ldr	r2, [pc, #4]	@ (20024af8 <HAL_PIN_Func2Idx+0x28>)
20024af2:	e7f3      	b.n	20024adc <HAL_PIN_Func2Idx+0xc>
20024af4:	2002b0cc 	.word	0x2002b0cc
20024af8:	2002b02c 	.word	0x2002b02c

20024afc <HAL_PIN_Set>:
20024afc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20024b00:	4615      	mov	r5, r2
20024b02:	4604      	mov	r4, r0
20024b04:	b918      	cbnz	r0, 20024b0e <HAL_PIN_Set+0x12>
20024b06:	f04f 30ff 	mov.w	r0, #4294967295
20024b0a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20024b0e:	283a      	cmp	r0, #58	@ 0x3a
20024b10:	bfcd      	iteet	gt
20024b12:	2700      	movgt	r7, #0
20024b14:	2701      	movle	r7, #1
20024b16:	4606      	movle	r6, r0
20024b18:	f1a0 063c 	subgt.w	r6, r0, #60	@ 0x3c
20024b1c:	4638      	mov	r0, r7
20024b1e:	f7ff ffc1 	bl	20024aa4 <HAL_PIN_Get_Base>
20024b22:	4680      	mov	r8, r0
20024b24:	2f00      	cmp	r7, #0
20024b26:	f000 80fe 	beq.w	20024d26 <HAL_PIN_Set+0x22a>
20024b2a:	f5a1 7390 	sub.w	r3, r1, #288	@ 0x120
20024b2e:	b29b      	uxth	r3, r3
20024b30:	2b0b      	cmp	r3, #11
20024b32:	d82e      	bhi.n	20024b92 <HAL_PIN_Set+0x96>
20024b34:	4620      	mov	r0, r4
20024b36:	f7ff ff23 	bl	20024980 <HAL_PIN_SetUartFunc.part.0>
20024b3a:	4601      	mov	r1, r0
20024b3c:	463a      	mov	r2, r7
20024b3e:	4620      	mov	r0, r4
20024b40:	f7ff ffc6 	bl	20024ad0 <HAL_PIN_Func2Idx>
20024b44:	280f      	cmp	r0, #15
20024b46:	4681      	mov	r9, r0
20024b48:	dcdd      	bgt.n	20024b06 <HAL_PIN_Set+0xa>
20024b4a:	463a      	mov	r2, r7
20024b4c:	4629      	mov	r1, r5
20024b4e:	4620      	mov	r0, r4
20024b50:	f7ff ff6e 	bl	20024a30 <HAL_PIN_SetAonPE>
20024b54:	2f00      	cmp	r7, #0
20024b56:	f040 80ef 	bne.w	20024d38 <HAL_PIN_Set+0x23c>
20024b5a:	2c40      	cmp	r4, #64	@ 0x40
20024b5c:	f340 80ec 	ble.w	20024d38 <HAL_PIN_Set+0x23c>
20024b60:	4a7f      	ldr	r2, [pc, #508]	@ (20024d60 <HAL_PIN_Set+0x264>)
20024b62:	06e8      	lsls	r0, r5, #27
20024b64:	f852 3024 	ldr.w	r3, [r2, r4, lsl #2]
20024b68:	ea4f 3909 	mov.w	r9, r9, lsl #12
20024b6c:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024b70:	f023 0318 	bic.w	r3, r3, #24
20024b74:	bf48      	it	mi
20024b76:	f043 0308 	orrmi.w	r3, r3, #8
20024b7a:	06a9      	lsls	r1, r5, #26
20024b7c:	bf48      	it	mi
20024b7e:	f043 0310 	orrmi.w	r3, r3, #16
20024b82:	f409 49e0 	and.w	r9, r9, #28672	@ 0x7000
20024b86:	ea49 0303 	orr.w	r3, r9, r3
20024b8a:	f842 3024 	str.w	r3, [r2, r4, lsl #2]
20024b8e:	2000      	movs	r0, #0
20024b90:	e7bb      	b.n	20024b0a <HAL_PIN_Set+0xe>
20024b92:	f5a1 739c 	sub.w	r3, r1, #312	@ 0x138
20024b96:	b29b      	uxth	r3, r3
20024b98:	2b07      	cmp	r3, #7
20024b9a:	d826      	bhi.n	20024bea <HAL_PIN_Set+0xee>
20024b9c:	104a      	asrs	r2, r1, #1
20024b9e:	3a9c      	subs	r2, #156	@ 0x9c
20024ba0:	eba1 0142 	sub.w	r1, r1, r2, lsl #1
20024ba4:	b289      	uxth	r1, r1
20024ba6:	f5b1 7f9c 	cmp.w	r1, #312	@ 0x138
20024baa:	d019      	beq.n	20024be0 <HAL_PIN_Set+0xe4>
20024bac:	f240 1339 	movw	r3, #313	@ 0x139
20024bb0:	4299      	cmp	r1, r3
20024bb2:	f040 80bf 	bne.w	20024d34 <HAL_PIN_Set+0x238>
20024bb6:	f04f 0e08 	mov.w	lr, #8
20024bba:	f44f 5c7c 	mov.w	ip, #16128	@ 0x3f00
20024bbe:	4969      	ldr	r1, [pc, #420]	@ (20024d64 <HAL_PIN_Set+0x268>)
20024bc0:	f1a4 030e 	sub.w	r3, r4, #14
20024bc4:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024bc8:	fa03 f30e 	lsl.w	r3, r3, lr
20024bcc:	4043      	eors	r3, r0
20024bce:	ea03 030c 	and.w	r3, r3, ip
20024bd2:	4043      	eors	r3, r0
20024bd4:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024bd8:	f504 7129 	add.w	r1, r4, #676	@ 0x2a4
20024bdc:	b289      	uxth	r1, r1
20024bde:	e7ad      	b.n	20024b3c <HAL_PIN_Set+0x40>
20024be0:	f04f 0e00 	mov.w	lr, #0
20024be4:	f04f 0c3f 	mov.w	ip, #63	@ 0x3f
20024be8:	e7e9      	b.n	20024bbe <HAL_PIN_Set+0xc2>
20024bea:	f5a1 73ec 	sub.w	r3, r1, #472	@ 0x1d8
20024bee:	b29a      	uxth	r2, r3
20024bf0:	2a09      	cmp	r2, #9
20024bf2:	d836      	bhi.n	20024c62 <HAL_PIN_Set+0x166>
20024bf4:	2205      	movs	r2, #5
20024bf6:	fbb3 f3f2 	udiv	r3, r3, r2
20024bfa:	ebc3 3283 	rsb	r2, r3, r3, lsl #14
20024bfe:	ebc3 0282 	rsb	r2, r3, r2, lsl #2
20024c02:	440a      	add	r2, r1
20024c04:	b292      	uxth	r2, r2
20024c06:	f5a2 71ec 	sub.w	r1, r2, #472	@ 0x1d8
20024c0a:	b288      	uxth	r0, r1
20024c0c:	2803      	cmp	r0, #3
20024c0e:	d814      	bhi.n	20024c3a <HAL_PIN_Set+0x13e>
20024c10:	f04f 0e3f 	mov.w	lr, #63	@ 0x3f
20024c14:	4854      	ldr	r0, [pc, #336]	@ (20024d68 <HAL_PIN_Set+0x26c>)
20024c16:	00c9      	lsls	r1, r1, #3
20024c18:	f850 c023 	ldr.w	ip, [r0, r3, lsl #2]
20024c1c:	f1a4 020e 	sub.w	r2, r4, #14
20024c20:	408a      	lsls	r2, r1
20024c22:	ea82 020c 	eor.w	r2, r2, ip
20024c26:	fa0e f101 	lsl.w	r1, lr, r1
20024c2a:	400a      	ands	r2, r1
20024c2c:	ea82 020c 	eor.w	r2, r2, ip
20024c30:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
20024c34:	f204 2155 	addw	r1, r4, #597	@ 0x255
20024c38:	e7d0      	b.n	20024bdc <HAL_PIN_Set+0xe0>
20024c3a:	f5b2 7fee 	cmp.w	r2, #476	@ 0x1dc
20024c3e:	d179      	bne.n	20024d34 <HAL_PIN_Set+0x238>
20024c40:	213f      	movs	r1, #63	@ 0x3f
20024c42:	484a      	ldr	r0, [pc, #296]	@ (20024d6c <HAL_PIN_Set+0x270>)
20024c44:	00da      	lsls	r2, r3, #3
20024c46:	f8d0 c06c 	ldr.w	ip, [r0, #108]	@ 0x6c
20024c4a:	f1a4 030e 	sub.w	r3, r4, #14
20024c4e:	4093      	lsls	r3, r2
20024c50:	ea83 030c 	eor.w	r3, r3, ip
20024c54:	fa01 f202 	lsl.w	r2, r1, r2
20024c58:	4013      	ands	r3, r2
20024c5a:	ea83 030c 	eor.w	r3, r3, ip
20024c5e:	66c3      	str	r3, [r0, #108]	@ 0x6c
20024c60:	e7e8      	b.n	20024c34 <HAL_PIN_Set+0x138>
20024c62:	f46f 7901 	mvn.w	r9, #516	@ 0x204
20024c66:	eb01 0209 	add.w	r2, r1, r9
20024c6a:	b293      	uxth	r3, r2
20024c6c:	2b05      	cmp	r3, #5
20024c6e:	d827      	bhi.n	20024cc0 <HAL_PIN_Set+0x1c4>
20024c70:	2303      	movs	r3, #3
20024c72:	fbb2 f2f3 	udiv	r2, r2, r3
20024c76:	f46f 7e01 	mvn.w	lr, #516	@ 0x204
20024c7a:	ebc2 3382 	rsb	r3, r2, r2, lsl #14
20024c7e:	eb02 0383 	add.w	r3, r2, r3, lsl #2
20024c82:	440b      	add	r3, r1
20024c84:	b29b      	uxth	r3, r3
20024c86:	eb03 0c0e 	add.w	ip, r3, lr
20024c8a:	fa1f fc8c 	uxth.w	ip, ip
20024c8e:	f1bc 0f02 	cmp.w	ip, #2
20024c92:	d84f      	bhi.n	20024d34 <HAL_PIN_Set+0x238>
20024c94:	00db      	lsls	r3, r3, #3
20024c96:	f5a3 5381 	sub.w	r3, r3, #4128	@ 0x1020
20024c9a:	4935      	ldr	r1, [pc, #212]	@ (20024d70 <HAL_PIN_Set+0x274>)
20024c9c:	f1a4 0e0e 	sub.w	lr, r4, #14
20024ca0:	3b08      	subs	r3, #8
20024ca2:	fa0e f303 	lsl.w	r3, lr, r3
20024ca6:	f8df e0d8 	ldr.w	lr, [pc, #216]	@ 20024d80 <HAL_PIN_Set+0x284>
20024caa:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024cae:	f85e c02c 	ldr.w	ip, [lr, ip, lsl #2]
20024cb2:	4043      	eors	r3, r0
20024cb4:	ea03 030c 	and.w	r3, r3, ip
20024cb8:	4043      	eors	r3, r0
20024cba:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024cbe:	e7b9      	b.n	20024c34 <HAL_PIN_Set+0x138>
20024cc0:	f46f 7cf8 	mvn.w	ip, #496	@ 0x1f0
20024cc4:	eb01 030c 	add.w	r3, r1, ip
20024cc8:	b29a      	uxth	r2, r3
20024cca:	2a09      	cmp	r2, #9
20024ccc:	f63f af36 	bhi.w	20024b3c <HAL_PIN_Set+0x40>
20024cd0:	f5b1 7ffc 	cmp.w	r1, #504	@ 0x1f8
20024cd4:	d216      	bcs.n	20024d04 <HAL_PIN_Set+0x208>
20024cd6:	0859      	lsrs	r1, r3, #1
20024cd8:	f013 0f01 	tst.w	r3, #1
20024cdc:	4b25      	ldr	r3, [pc, #148]	@ (20024d74 <HAL_PIN_Set+0x278>)
20024cde:	f04f 003f 	mov.w	r0, #63	@ 0x3f
20024ce2:	4a25      	ldr	r2, [pc, #148]	@ (20024d78 <HAL_PIN_Set+0x27c>)
20024ce4:	bf18      	it	ne
20024ce6:	461a      	movne	r2, r3
20024ce8:	00c9      	lsls	r1, r1, #3
20024cea:	4088      	lsls	r0, r1
20024cec:	f8d2 c000 	ldr.w	ip, [r2]
20024cf0:	f1a4 030e 	sub.w	r3, r4, #14
20024cf4:	408b      	lsls	r3, r1
20024cf6:	ea83 030c 	eor.w	r3, r3, ip
20024cfa:	4003      	ands	r3, r0
20024cfc:	ea83 030c 	eor.w	r3, r3, ip
20024d00:	6013      	str	r3, [r2, #0]
20024d02:	e797      	b.n	20024c34 <HAL_PIN_Set+0x138>
20024d04:	d007      	beq.n	20024d16 <HAL_PIN_Set+0x21a>
20024d06:	f240 13f9 	movw	r3, #505	@ 0x1f9
20024d0a:	4299      	cmp	r1, r3
20024d0c:	d107      	bne.n	20024d1e <HAL_PIN_Set+0x222>
20024d0e:	2100      	movs	r1, #0
20024d10:	203f      	movs	r0, #63	@ 0x3f
20024d12:	4a1a      	ldr	r2, [pc, #104]	@ (20024d7c <HAL_PIN_Set+0x280>)
20024d14:	e7ea      	b.n	20024cec <HAL_PIN_Set+0x1f0>
20024d16:	2110      	movs	r1, #16
20024d18:	f44f 107c 	mov.w	r0, #4128768	@ 0x3f0000
20024d1c:	e7f9      	b.n	20024d12 <HAL_PIN_Set+0x216>
20024d1e:	2108      	movs	r1, #8
20024d20:	f44f 507c 	mov.w	r0, #16128	@ 0x3f00
20024d24:	e7f5      	b.n	20024d12 <HAL_PIN_Set+0x216>
20024d26:	f5a1 7396 	sub.w	r3, r1, #300	@ 0x12c
20024d2a:	b29b      	uxth	r3, r3
20024d2c:	2b07      	cmp	r3, #7
20024d2e:	f63f af05 	bhi.w	20024b3c <HAL_PIN_Set+0x40>
20024d32:	e6ff      	b.n	20024b34 <HAL_PIN_Set+0x38>
20024d34:	2100      	movs	r1, #0
20024d36:	e701      	b.n	20024b3c <HAL_PIN_Set+0x40>
20024d38:	f106 4680 	add.w	r6, r6, #1073741824	@ 0x40000000
20024d3c:	3e01      	subs	r6, #1
20024d3e:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
20024d42:	f005 0530 	and.w	r5, r5, #48	@ 0x30
20024d46:	f009 090f 	and.w	r9, r9, #15
20024d4a:	ea45 0509 	orr.w	r5, r5, r9
20024d4e:	f023 033f 	bic.w	r3, r3, #63	@ 0x3f
20024d52:	431d      	orrs	r5, r3
20024d54:	f045 0540 	orr.w	r5, r5, #64	@ 0x40
20024d58:	f848 5026 	str.w	r5, [r8, r6, lsl #2]
20024d5c:	e717      	b.n	20024b8e <HAL_PIN_Set+0x92>
20024d5e:	bf00      	nop
20024d60:	500caf58 	.word	0x500caf58
20024d64:	5000b048 	.word	0x5000b048
20024d68:	5000b064 	.word	0x5000b064
20024d6c:	5000b000 	.word	0x5000b000
20024d70:	5000b070 	.word	0x5000b070
20024d74:	5000b07c 	.word	0x5000b07c
20024d78:	5000b078 	.word	0x5000b078
20024d7c:	5000b080 	.word	0x5000b080
20024d80:	2002b840 	.word	0x2002b840

20024d84 <HAL_PIN_Set_Analog>:
20024d84:	283a      	cmp	r0, #58	@ 0x3a
20024d86:	b538      	push	{r3, r4, r5, lr}
20024d88:	4604      	mov	r4, r0
20024d8a:	dd25      	ble.n	20024dd8 <HAL_PIN_Set_Analog+0x54>
20024d8c:	2840      	cmp	r0, #64	@ 0x40
20024d8e:	dc16      	bgt.n	20024dbe <HAL_PIN_Set_Analog+0x3a>
20024d90:	2500      	movs	r5, #0
20024d92:	f1a0 013c 	sub.w	r1, r0, #60	@ 0x3c
20024d96:	4628      	mov	r0, r5
20024d98:	f7ff fe84 	bl	20024aa4 <HAL_PIN_Get_Base>
20024d9c:	f101 4380 	add.w	r3, r1, #1073741824	@ 0x40000000
20024da0:	3b01      	subs	r3, #1
20024da2:	f850 1023 	ldr.w	r1, [r0, r3, lsl #2]
20024da6:	462a      	mov	r2, r5
20024da8:	f021 015f 	bic.w	r1, r1, #95	@ 0x5f
20024dac:	f041 010f 	orr.w	r1, r1, #15
20024db0:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
20024db4:	2100      	movs	r1, #0
20024db6:	4620      	mov	r0, r4
20024db8:	f7ff fe3a 	bl	20024a30 <HAL_PIN_SetAonPE>
20024dbc:	e00a      	b.n	20024dd4 <HAL_PIN_Set_Analog+0x50>
20024dbe:	4a08      	ldr	r2, [pc, #32]	@ (20024de0 <HAL_PIN_Set_Analog+0x5c>)
20024dc0:	f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
20024dc4:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024dc8:	f023 030e 	bic.w	r3, r3, #14
20024dcc:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20024dd0:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
20024dd4:	2000      	movs	r0, #0
20024dd6:	bd38      	pop	{r3, r4, r5, pc}
20024dd8:	4601      	mov	r1, r0
20024dda:	2501      	movs	r5, #1
20024ddc:	e7db      	b.n	20024d96 <HAL_PIN_Set_Analog+0x12>
20024dde:	bf00      	nop
20024de0:	500caf58 	.word	0x500caf58

20024de4 <HAL_PMU_EnableDLL>:
20024de4:	4b05      	ldr	r3, [pc, #20]	@ (20024dfc <HAL_PMU_EnableDLL+0x18>)
20024de6:	6e9a      	ldr	r2, [r3, #104]	@ 0x68
20024de8:	b120      	cbz	r0, 20024df4 <HAL_PMU_EnableDLL+0x10>
20024dea:	f042 0220 	orr.w	r2, r2, #32
20024dee:	2000      	movs	r0, #0
20024df0:	669a      	str	r2, [r3, #104]	@ 0x68
20024df2:	4770      	bx	lr
20024df4:	f022 0220 	bic.w	r2, r2, #32
20024df8:	e7f9      	b.n	20024dee <HAL_PMU_EnableDLL+0xa>
20024dfa:	bf00      	nop
20024dfc:	500ca000 	.word	0x500ca000

20024e00 <HAL_RCC_HCPU_ConfigSxModeVolt>:
20024e00:	b507      	push	{r0, r1, r2, lr}
20024e02:	4a13      	ldr	r2, [pc, #76]	@ (20024e50 <HAL_RCC_HCPU_ConfigSxModeVolt+0x50>)
20024e04:	4913      	ldr	r1, [pc, #76]	@ (20024e54 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024e06:	eb02 02c0 	add.w	r2, r2, r0, lsl #3
20024e0a:	f8d1 309c 	ldr.w	r3, [r1, #156]	@ 0x9c
20024e0e:	7892      	ldrb	r2, [r2, #2]
20024e10:	2802      	cmp	r0, #2
20024e12:	f362 0303 	bfi	r3, r2, #0, #4
20024e16:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
20024e1a:	f10d 0007 	add.w	r0, sp, #7
20024e1e:	d111      	bne.n	20024e44 <HAL_RCC_HCPU_ConfigSxModeVolt+0x44>
20024e20:	f007 faae 	bl	2002c380 <HAL_PMU_GetHpsysVoutRef>
20024e24:	b110      	cbz	r0, 20024e2c <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024e26:	230b      	movs	r3, #11
20024e28:	f88d 3007 	strb.w	r3, [sp, #7]
20024e2c:	4a09      	ldr	r2, [pc, #36]	@ (20024e54 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024e2e:	f89d 1007 	ldrb.w	r1, [sp, #7]
20024e32:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20024e36:	f361 0303 	bfi	r3, r1, #0, #4
20024e3a:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20024e3e:	b003      	add	sp, #12
20024e40:	f85d fb04 	ldr.w	pc, [sp], #4
20024e44:	f007 faa8 	bl	2002c398 <HAL_PMU_GetHpsysVoutRef2>
20024e48:	2800      	cmp	r0, #0
20024e4a:	d0ef      	beq.n	20024e2c <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024e4c:	230d      	movs	r3, #13
20024e4e:	e7eb      	b.n	20024e28 <HAL_RCC_HCPU_ConfigSxModeVolt+0x28>
20024e50:	2002b85c 	.word	0x2002b85c
20024e54:	500ca000 	.word	0x500ca000

20024e58 <HAL_RCC_HCPU_GetClockSrc>:
20024e58:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024e5c:	280d      	cmp	r0, #13
20024e5e:	6a1a      	ldr	r2, [r3, #32]
20024e60:	d80d      	bhi.n	20024e7e <HAL_RCC_HCPU_GetClockSrc+0x26>
20024e62:	f642 73f1 	movw	r3, #12273	@ 0x2ff1
20024e66:	40c3      	lsrs	r3, r0
20024e68:	f013 0f01 	tst.w	r3, #1
20024e6c:	bf0c      	ite	eq
20024e6e:	2301      	moveq	r3, #1
20024e70:	2303      	movne	r3, #3
20024e72:	4083      	lsls	r3, r0
20024e74:	4013      	ands	r3, r2
20024e76:	fa23 f000 	lsr.w	r0, r3, r0
20024e7a:	b2c0      	uxtb	r0, r0
20024e7c:	4770      	bx	lr
20024e7e:	2301      	movs	r3, #1
20024e80:	e7f7      	b.n	20024e72 <HAL_RCC_HCPU_GetClockSrc+0x1a>
	...

20024e84 <HAL_RCC_HCPU_GetDLLFreq>:
20024e84:	2801      	cmp	r0, #1
20024e86:	d003      	beq.n	20024e90 <HAL_RCC_HCPU_GetDLLFreq+0xc>
20024e88:	2802      	cmp	r0, #2
20024e8a:	d00e      	beq.n	20024eaa <HAL_RCC_HCPU_GetDLLFreq+0x26>
20024e8c:	2000      	movs	r0, #0
20024e8e:	4770      	bx	lr
20024e90:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024e94:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
20024e96:	b163      	cbz	r3, 20024eb2 <HAL_RCC_HCPU_GetDLLFreq+0x2e>
20024e98:	f013 0001 	ands.w	r0, r3, #1
20024e9c:	d00a      	beq.n	20024eb4 <HAL_RCC_HCPU_GetDLLFreq+0x30>
20024e9e:	4806      	ldr	r0, [pc, #24]	@ (20024eb8 <HAL_RCC_HCPU_GetDLLFreq+0x34>)
20024ea0:	f3c3 0383 	ubfx	r3, r3, #2, #4
20024ea4:	fb03 0000 	mla	r0, r3, r0, r0
20024ea8:	4770      	bx	lr
20024eaa:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024eae:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
20024eb0:	e7f1      	b.n	20024e96 <HAL_RCC_HCPU_GetDLLFreq+0x12>
20024eb2:	4618      	mov	r0, r3
20024eb4:	4770      	bx	lr
20024eb6:	bf00      	nop
20024eb8:	016e3600 	.word	0x016e3600

20024ebc <HAL_RCC_HCPU_GetDLL1Freq>:
20024ebc:	2001      	movs	r0, #1
20024ebe:	f7ff bfe1 	b.w	20024e84 <HAL_RCC_HCPU_GetDLLFreq>

20024ec2 <HAL_RCC_HCPU_GetDLL2Freq>:
20024ec2:	2002      	movs	r0, #2
20024ec4:	f7ff bfde 	b.w	20024e84 <HAL_RCC_HCPU_GetDLLFreq>

20024ec8 <HAL_RCC_HCPU_GetDLL3Freq>:
20024ec8:	2000      	movs	r0, #0
20024eca:	4770      	bx	lr

20024ecc <HAL_RCC_HCPU_EnableDLL>:
20024ecc:	4b23      	ldr	r3, [pc, #140]	@ (20024f5c <HAL_RCC_HCPU_EnableDLL+0x90>)
20024ece:	f1a1 71b7 	sub.w	r1, r1, #23986176	@ 0x16e0000
20024ed2:	f5a1 5158 	sub.w	r1, r1, #13824	@ 0x3600
20024ed6:	4299      	cmp	r1, r3
20024ed8:	b510      	push	{r4, lr}
20024eda:	d83c      	bhi.n	20024f56 <HAL_RCC_HCPU_EnableDLL+0x8a>
20024edc:	2801      	cmp	r0, #1
20024ede:	d002      	beq.n	20024ee6 <HAL_RCC_HCPU_EnableDLL+0x1a>
20024ee0:	2802      	cmp	r0, #2
20024ee2:	d036      	beq.n	20024f52 <HAL_RCC_HCPU_EnableDLL+0x86>
20024ee4:	e7fe      	b.n	20024ee4 <HAL_RCC_HCPU_EnableDLL+0x18>
20024ee6:	4c1e      	ldr	r4, [pc, #120]	@ (20024f60 <HAL_RCC_HCPU_EnableDLL+0x94>)
20024ee8:	4b1e      	ldr	r3, [pc, #120]	@ (20024f64 <HAL_RCC_HCPU_EnableDLL+0x98>)
20024eea:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024eee:	0790      	lsls	r0, r2, #30
20024ef0:	bf58      	it	pl
20024ef2:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20024ef6:	f04f 0000 	mov.w	r0, #0
20024efa:	bf5c      	itt	pl
20024efc:	f042 0202 	orrpl.w	r2, r2, #2
20024f00:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20024f04:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024f08:	07d2      	lsls	r2, r2, #31
20024f0a:	bf5e      	ittt	pl
20024f0c:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20024f10:	f042 0201 	orrpl.w	r2, r2, #1
20024f14:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20024f18:	4a13      	ldr	r2, [pc, #76]	@ (20024f68 <HAL_RCC_HCPU_EnableDLL+0x9c>)
20024f1a:	6823      	ldr	r3, [r4, #0]
20024f1c:	fbb1 f1f2 	udiv	r1, r1, r2
20024f20:	f023 0301 	bic.w	r3, r3, #1
20024f24:	6023      	str	r3, [r4, #0]
20024f26:	6823      	ldr	r3, [r4, #0]
20024f28:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
20024f2c:	f023 033c 	bic.w	r3, r3, #60	@ 0x3c
20024f30:	ea43 0381 	orr.w	r3, r3, r1, lsl #2
20024f34:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
20024f38:	f043 0301 	orr.w	r3, r3, #1
20024f3c:	6023      	str	r3, [r4, #0]
20024f3e:	f7fc ffc0 	bl	20021ec2 <HAL_Delay_us>
20024f42:	200a      	movs	r0, #10
20024f44:	f7fc ffbd 	bl	20021ec2 <HAL_Delay_us>
20024f48:	6823      	ldr	r3, [r4, #0]
20024f4a:	2b00      	cmp	r3, #0
20024f4c:	dafc      	bge.n	20024f48 <HAL_RCC_HCPU_EnableDLL+0x7c>
20024f4e:	2000      	movs	r0, #0
20024f50:	bd10      	pop	{r4, pc}
20024f52:	4c06      	ldr	r4, [pc, #24]	@ (20024f6c <HAL_RCC_HCPU_EnableDLL+0xa0>)
20024f54:	e7c8      	b.n	20024ee8 <HAL_RCC_HCPU_EnableDLL+0x1c>
20024f56:	2001      	movs	r0, #1
20024f58:	e7fa      	b.n	20024f50 <HAL_RCC_HCPU_EnableDLL+0x84>
20024f5a:	bf00      	nop
20024f5c:	15752a00 	.word	0x15752a00
20024f60:	5000002c 	.word	0x5000002c
20024f64:	5000b000 	.word	0x5000b000
20024f68:	016e3600 	.word	0x016e3600
20024f6c:	50000030 	.word	0x50000030

20024f70 <HAL_RCC_HCPU_EnableDLL1>:
20024f70:	4601      	mov	r1, r0
20024f72:	2001      	movs	r0, #1
20024f74:	f7ff bfaa 	b.w	20024ecc <HAL_RCC_HCPU_EnableDLL>

20024f78 <HAL_RCC_HCPU_EnableDLL2>:
20024f78:	4601      	mov	r1, r0
20024f7a:	2002      	movs	r0, #2
20024f7c:	f7ff bfa6 	b.w	20024ecc <HAL_RCC_HCPU_EnableDLL>

20024f80 <HAL_RCC_HCPU_DisableDLL1>:
20024f80:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024f84:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
20024f86:	2000      	movs	r0, #0
20024f88:	f023 0301 	bic.w	r3, r3, #1
20024f8c:	62d3      	str	r3, [r2, #44]	@ 0x2c
20024f8e:	4770      	bx	lr

20024f90 <HAL_RCC_GetSysCLKFreq>:
20024f90:	2801      	cmp	r0, #1
20024f92:	d108      	bne.n	20024fa6 <HAL_RCC_GetSysCLKFreq+0x16>
20024f94:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024f98:	6a1b      	ldr	r3, [r3, #32]
20024f9a:	f003 0303 	and.w	r3, r3, #3
20024f9e:	2b03      	cmp	r3, #3
20024fa0:	d101      	bne.n	20024fa6 <HAL_RCC_GetSysCLKFreq+0x16>
20024fa2:	f7ff bf8b 	b.w	20024ebc <HAL_RCC_HCPU_GetDLL1Freq>
20024fa6:	4801      	ldr	r0, [pc, #4]	@ (20024fac <HAL_RCC_GetSysCLKFreq+0x1c>)
20024fa8:	4770      	bx	lr
20024faa:	bf00      	nop
20024fac:	02dc6c00 	.word	0x02dc6c00

20024fb0 <HAL_RCC_GetHCLKFreq>:
20024fb0:	1e02      	subs	r2, r0, #0
20024fb2:	bf08      	it	eq
20024fb4:	2201      	moveq	r2, #1
20024fb6:	b508      	push	{r3, lr}
20024fb8:	4610      	mov	r0, r2
20024fba:	f7ff ffe9 	bl	20024f90 <HAL_RCC_GetSysCLKFreq>
20024fbe:	2a01      	cmp	r2, #1
20024fc0:	d002      	beq.n	20024fc8 <HAL_RCC_GetHCLKFreq+0x18>
20024fc2:	2a02      	cmp	r2, #2
20024fc4:	d00a      	beq.n	20024fdc <HAL_RCC_GetHCLKFreq+0x2c>
20024fc6:	e7fe      	b.n	20024fc6 <HAL_RCC_GetHCLKFreq+0x16>
20024fc8:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024fcc:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
20024fce:	b2db      	uxtb	r3, r3
20024fd0:	2b01      	cmp	r3, #1
20024fd2:	bfb8      	it	lt
20024fd4:	2301      	movlt	r3, #1
20024fd6:	fbb0 f0f3 	udiv	r0, r0, r3
20024fda:	bd08      	pop	{r3, pc}
20024fdc:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
20024fe0:	695b      	ldr	r3, [r3, #20]
20024fe2:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
20024fe6:	e7f3      	b.n	20024fd0 <HAL_RCC_GetHCLKFreq+0x20>

20024fe8 <HAL_RCC_HCPU_ClockSelect>:
20024fe8:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024fec:	b510      	push	{r4, lr}
20024fee:	280d      	cmp	r0, #13
20024ff0:	6a1b      	ldr	r3, [r3, #32]
20024ff2:	d818      	bhi.n	20025026 <HAL_RCC_HCPU_ClockSelect+0x3e>
20024ff4:	f642 72f1 	movw	r2, #12273	@ 0x2ff1
20024ff8:	40c2      	lsrs	r2, r0
20024ffa:	f012 0f01 	tst.w	r2, #1
20024ffe:	bf0c      	ite	eq
20025000:	2201      	moveq	r2, #1
20025002:	2203      	movne	r2, #3
20025004:	fa02 f400 	lsl.w	r4, r2, r0
20025008:	4011      	ands	r1, r2
2002500a:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
2002500e:	ea23 0304 	bic.w	r3, r3, r4
20025012:	4081      	lsls	r1, r0
20025014:	430b      	orrs	r3, r1
20025016:	6213      	str	r3, [r2, #32]
20025018:	b920      	cbnz	r0, 20025024 <HAL_RCC_HCPU_ClockSelect+0x3c>
2002501a:	2001      	movs	r0, #1
2002501c:	f7ff ffc8 	bl	20024fb0 <HAL_RCC_GetHCLKFreq>
20025020:	4b02      	ldr	r3, [pc, #8]	@ (2002502c <HAL_RCC_HCPU_ClockSelect+0x44>)
20025022:	6018      	str	r0, [r3, #0]
20025024:	bd10      	pop	{r4, pc}
20025026:	2201      	movs	r2, #1
20025028:	e7ec      	b.n	20025004 <HAL_RCC_HCPU_ClockSelect+0x1c>
2002502a:	bf00      	nop
2002502c:	20042c10 	.word	0x20042c10

20025030 <HAL_RCC_HCPU_SetDiv>:
20025030:	2800      	cmp	r0, #0
20025032:	bfd8      	it	le
20025034:	2000      	movle	r0, #0
20025036:	b508      	push	{r3, lr}
20025038:	bfcc      	ite	gt
2002503a:	23ff      	movgt	r3, #255	@ 0xff
2002503c:	4603      	movle	r3, r0
2002503e:	2900      	cmp	r1, #0
20025040:	db12      	blt.n	20025068 <HAL_RCC_HCPU_SetDiv+0x38>
20025042:	2a00      	cmp	r2, #0
20025044:	f443 63e0 	orr.w	r3, r3, #1792	@ 0x700
20025048:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
2002504c:	da0e      	bge.n	2002506c <HAL_RCC_HCPU_SetDiv+0x3c>
2002504e:	f04f 41a0 	mov.w	r1, #1342177280	@ 0x50000000
20025052:	6a4a      	ldr	r2, [r1, #36]	@ 0x24
20025054:	ea22 0303 	bic.w	r3, r2, r3
20025058:	4303      	orrs	r3, r0
2002505a:	624b      	str	r3, [r1, #36]	@ 0x24
2002505c:	2001      	movs	r0, #1
2002505e:	f7ff ffa7 	bl	20024fb0 <HAL_RCC_GetHCLKFreq>
20025062:	4b07      	ldr	r3, [pc, #28]	@ (20025080 <HAL_RCC_HCPU_SetDiv+0x50>)
20025064:	6018      	str	r0, [r3, #0]
20025066:	bd08      	pop	{r3, pc}
20025068:	2a00      	cmp	r2, #0
2002506a:	db04      	blt.n	20025076 <HAL_RCC_HCPU_SetDiv+0x46>
2002506c:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20025070:	ea40 3002 	orr.w	r0, r0, r2, lsl #12
20025074:	e7eb      	b.n	2002504e <HAL_RCC_HCPU_SetDiv+0x1e>
20025076:	2b00      	cmp	r3, #0
20025078:	d0f0      	beq.n	2002505c <HAL_RCC_HCPU_SetDiv+0x2c>
2002507a:	23ff      	movs	r3, #255	@ 0xff
2002507c:	e7e7      	b.n	2002504e <HAL_RCC_HCPU_SetDiv+0x1e>
2002507e:	bf00      	nop
20025080:	20042c10 	.word	0x20042c10

20025084 <HAL_RCC_HCPU_SwitchDvfsD2S>:
20025084:	b570      	push	{r4, r5, r6, lr}
20025086:	460c      	mov	r4, r1
20025088:	4d19      	ldr	r5, [pc, #100]	@ (200250f0 <HAL_RCC_HCPU_SwitchDvfsD2S+0x6c>)
2002508a:	4606      	mov	r6, r0
2002508c:	f7ff feb8 	bl	20024e00 <HAL_RCC_HCPU_ConfigSxModeVolt>
20025090:	692b      	ldr	r3, [r5, #16]
20025092:	20fa      	movs	r0, #250	@ 0xfa
20025094:	f023 0304 	bic.w	r3, r3, #4
20025098:	612b      	str	r3, [r5, #16]
2002509a:	f7fc ff12 	bl	20021ec2 <HAL_Delay_us>
2002509e:	2c30      	cmp	r4, #48	@ 0x30
200250a0:	d80d      	bhi.n	200250be <HAL_RCC_HCPU_SwitchDvfsD2S+0x3a>
200250a2:	2100      	movs	r1, #0
200250a4:	4608      	mov	r0, r1
200250a6:	f7ff ff9f 	bl	20024fe8 <HAL_RCC_HCPU_ClockSelect>
200250aa:	2030      	movs	r0, #48	@ 0x30
200250ac:	2204      	movs	r2, #4
200250ae:	2100      	movs	r1, #0
200250b0:	fbb0 f0f4 	udiv	r0, r0, r4
200250b4:	f7ff ffbc 	bl	20025030 <HAL_RCC_HCPU_SetDiv>
200250b8:	2400      	movs	r4, #0
200250ba:	4620      	mov	r0, r4
200250bc:	bd70      	pop	{r4, r5, r6, pc}
200250be:	f7fd fd15 	bl	20022aec <HAL_HPAON_EnableXT48>
200250c2:	480c      	ldr	r0, [pc, #48]	@ (200250f4 <HAL_RCC_HCPU_SwitchDvfsD2S+0x70>)
200250c4:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
200250c8:	6843      	ldr	r3, [r0, #4]
200250ca:	480b      	ldr	r0, [pc, #44]	@ (200250f8 <HAL_RCC_HCPU_SwitchDvfsD2S+0x74>)
200250cc:	61eb      	str	r3, [r5, #28]
200250ce:	4360      	muls	r0, r4
200250d0:	f7ff ff4e 	bl	20024f70 <HAL_RCC_HCPU_EnableDLL1>
200250d4:	4604      	mov	r4, r0
200250d6:	2800      	cmp	r0, #0
200250d8:	d1ef      	bne.n	200250ba <HAL_RCC_HCPU_SwitchDvfsD2S+0x36>
200250da:	2101      	movs	r1, #1
200250dc:	2206      	movs	r2, #6
200250de:	4608      	mov	r0, r1
200250e0:	f7ff ffa6 	bl	20025030 <HAL_RCC_HCPU_SetDiv>
200250e4:	2103      	movs	r1, #3
200250e6:	4620      	mov	r0, r4
200250e8:	f7ff ff7e 	bl	20024fe8 <HAL_RCC_HCPU_ClockSelect>
200250ec:	e7e4      	b.n	200250b8 <HAL_RCC_HCPU_SwitchDvfsD2S+0x34>
200250ee:	bf00      	nop
200250f0:	5000b000 	.word	0x5000b000
200250f4:	2002b85c 	.word	0x2002b85c
200250f8:	000f4240 	.word	0x000f4240

200250fc <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>:
200250fc:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
20025100:	4c1d      	ldr	r4, [pc, #116]	@ (20025178 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x7c>)
20025102:	4f1e      	ldr	r7, [pc, #120]	@ (2002517c <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x80>)
20025104:	eb04 02c0 	add.w	r2, r4, r0, lsl #3
20025108:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
2002510a:	7892      	ldrb	r2, [r2, #2]
2002510c:	4605      	mov	r5, r0
2002510e:	f362 5317 	bfi	r3, r2, #20, #4
20025112:	ea4f 08c0 	mov.w	r8, r0, lsl #3
20025116:	633b      	str	r3, [r7, #48]	@ 0x30
20025118:	f10d 0007 	add.w	r0, sp, #7
2002511c:	460e      	mov	r6, r1
2002511e:	f007 f92f 	bl	2002c380 <HAL_PMU_GetHpsysVoutRef>
20025122:	b110      	cbz	r0, 2002512a <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x2e>
20025124:	230b      	movs	r3, #11
20025126:	f88d 3007 	strb.w	r3, [sp, #7]
2002512a:	f89d 1007 	ldrb.w	r1, [sp, #7]
2002512e:	f914 2035 	ldrsb.w	r2, [r4, r5, lsl #3]
20025132:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
20025134:	440a      	add	r2, r1
20025136:	2100      	movs	r1, #0
20025138:	f362 0385 	bfi	r3, r2, #2, #4
2002513c:	4608      	mov	r0, r1
2002513e:	64fb      	str	r3, [r7, #76]	@ 0x4c
20025140:	f7ff ff52 	bl	20024fe8 <HAL_RCC_HCPU_ClockSelect>
20025144:	2e30      	cmp	r6, #48	@ 0x30
20025146:	d900      	bls.n	2002514a <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4e>
20025148:	e7fe      	b.n	20025148 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4c>
2002514a:	2030      	movs	r0, #48	@ 0x30
2002514c:	2204      	movs	r2, #4
2002514e:	2100      	movs	r1, #0
20025150:	fbb0 f0f6 	udiv	r0, r0, r6
20025154:	f7ff ff6c 	bl	20025030 <HAL_RCC_HCPU_SetDiv>
20025158:	f7ff ff12 	bl	20024f80 <HAL_RCC_HCPU_DisableDLL1>
2002515c:	f7fd fcd2 	bl	20022b04 <HAL_HPAON_DisableXT48>
20025160:	4444      	add	r4, r8
20025162:	4b07      	ldr	r3, [pc, #28]	@ (20025180 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x84>)
20025164:	6862      	ldr	r2, [r4, #4]
20025166:	61da      	str	r2, [r3, #28]
20025168:	691a      	ldr	r2, [r3, #16]
2002516a:	f042 0204 	orr.w	r2, r2, #4
2002516e:	611a      	str	r2, [r3, #16]
20025170:	b002      	add	sp, #8
20025172:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20025176:	bf00      	nop
20025178:	2002b85c 	.word	0x2002b85c
2002517c:	500ca000 	.word	0x500ca000
20025180:	5000b000 	.word	0x5000b000

20025184 <HAL_RCC_HCPU_ConfigDvfs>:
20025184:	b570      	push	{r4, r5, r6, lr}
20025186:	4e31      	ldr	r6, [pc, #196]	@ (2002524c <HAL_RCC_HCPU_ConfigDvfs+0xc8>)
20025188:	4605      	mov	r5, r0
2002518a:	7833      	ldrb	r3, [r6, #0]
2002518c:	460c      	mov	r4, r1
2002518e:	2b01      	cmp	r3, #1
20025190:	d943      	bls.n	2002521a <HAL_RCC_HCPU_ConfigDvfs+0x96>
20025192:	3b02      	subs	r3, #2
20025194:	2b01      	cmp	r3, #1
20025196:	d902      	bls.n	2002519e <HAL_RCC_HCPU_ConfigDvfs+0x1a>
20025198:	2501      	movs	r5, #1
2002519a:	4628      	mov	r0, r5
2002519c:	bd70      	pop	{r4, r5, r6, pc}
2002519e:	4b2c      	ldr	r3, [pc, #176]	@ (20025250 <HAL_RCC_HCPU_ConfigDvfs+0xcc>)
200251a0:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
200251a4:	f7ff fe8d 	bl	20024ec2 <HAL_RCC_HCPU_GetDLL2Freq>
200251a8:	4290      	cmp	r0, r2
200251aa:	d8f5      	bhi.n	20025198 <HAL_RCC_HCPU_ConfigDvfs+0x14>
200251ac:	2901      	cmp	r1, #1
200251ae:	d805      	bhi.n	200251bc <HAL_RCC_HCPU_ConfigDvfs+0x38>
200251b0:	4629      	mov	r1, r5
200251b2:	4620      	mov	r0, r4
200251b4:	f7ff ffa2 	bl	200250fc <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>
200251b8:	2500      	movs	r5, #0
200251ba:	e035      	b.n	20025228 <HAL_RCC_HCPU_ConfigDvfs+0xa4>
200251bc:	2100      	movs	r1, #0
200251be:	4608      	mov	r0, r1
200251c0:	f7ff ff12 	bl	20024fe8 <HAL_RCC_HCPU_ClockSelect>
200251c4:	4620      	mov	r0, r4
200251c6:	f7ff fe1b 	bl	20024e00 <HAL_RCC_HCPU_ConfigSxModeVolt>
200251ca:	20fa      	movs	r0, #250	@ 0xfa
200251cc:	f7fc fe79 	bl	20021ec2 <HAL_Delay_us>
200251d0:	f7ff fed6 	bl	20024f80 <HAL_RCC_HCPU_DisableDLL1>
200251d4:	2d30      	cmp	r5, #48	@ 0x30
200251d6:	d80d      	bhi.n	200251f4 <HAL_RCC_HCPU_ConfigDvfs+0x70>
200251d8:	f7fd fc94 	bl	20022b04 <HAL_HPAON_DisableXT48>
200251dc:	2100      	movs	r1, #0
200251de:	4608      	mov	r0, r1
200251e0:	f7ff ff02 	bl	20024fe8 <HAL_RCC_HCPU_ClockSelect>
200251e4:	2204      	movs	r2, #4
200251e6:	2100      	movs	r1, #0
200251e8:	2030      	movs	r0, #48	@ 0x30
200251ea:	fbb0 f0f5 	udiv	r0, r0, r5
200251ee:	f7ff ff1f 	bl	20025030 <HAL_RCC_HCPU_SetDiv>
200251f2:	e7e1      	b.n	200251b8 <HAL_RCC_HCPU_ConfigDvfs+0x34>
200251f4:	f7fd fc7a 	bl	20022aec <HAL_HPAON_EnableXT48>
200251f8:	4816      	ldr	r0, [pc, #88]	@ (20025254 <HAL_RCC_HCPU_ConfigDvfs+0xd0>)
200251fa:	4368      	muls	r0, r5
200251fc:	f7ff feb8 	bl	20024f70 <HAL_RCC_HCPU_EnableDLL1>
20025200:	4605      	mov	r5, r0
20025202:	2800      	cmp	r0, #0
20025204:	d1c8      	bne.n	20025198 <HAL_RCC_HCPU_ConfigDvfs+0x14>
20025206:	2101      	movs	r1, #1
20025208:	2206      	movs	r2, #6
2002520a:	4608      	mov	r0, r1
2002520c:	f7ff ff10 	bl	20025030 <HAL_RCC_HCPU_SetDiv>
20025210:	2103      	movs	r1, #3
20025212:	4628      	mov	r0, r5
20025214:	f7ff fee8 	bl	20024fe8 <HAL_RCC_HCPU_ClockSelect>
20025218:	e7ce      	b.n	200251b8 <HAL_RCC_HCPU_ConfigDvfs+0x34>
2002521a:	2901      	cmp	r1, #1
2002521c:	d909      	bls.n	20025232 <HAL_RCC_HCPU_ConfigDvfs+0xae>
2002521e:	4601      	mov	r1, r0
20025220:	4620      	mov	r0, r4
20025222:	f7ff ff2f 	bl	20025084 <HAL_RCC_HCPU_SwitchDvfsD2S>
20025226:	4605      	mov	r5, r0
20025228:	2000      	movs	r0, #0
2002522a:	7034      	strb	r4, [r6, #0]
2002522c:	f7fc fe49 	bl	20021ec2 <HAL_Delay_us>
20025230:	e7b3      	b.n	2002519a <HAL_RCC_HCPU_ConfigDvfs+0x16>
20025232:	428b      	cmp	r3, r1
20025234:	d103      	bne.n	2002523e <HAL_RCC_HCPU_ConfigDvfs+0xba>
20025236:	f04f 32ff 	mov.w	r2, #4294967295
2002523a:	4611      	mov	r1, r2
2002523c:	e7d4      	b.n	200251e8 <HAL_RCC_HCPU_ConfigDvfs+0x64>
2002523e:	2190      	movs	r1, #144	@ 0x90
20025240:	2002      	movs	r0, #2
20025242:	f7ff ff1f 	bl	20025084 <HAL_RCC_HCPU_SwitchDvfsD2S>
20025246:	2800      	cmp	r0, #0
20025248:	d1a6      	bne.n	20025198 <HAL_RCC_HCPU_ConfigDvfs+0x14>
2002524a:	e7b1      	b.n	200251b0 <HAL_RCC_HCPU_ConfigDvfs+0x2c>
2002524c:	20042c14 	.word	0x20042c14
20025250:	2002b84c 	.word	0x2002b84c
20025254:	000f4240 	.word	0x000f4240

20025258 <HAL_RCC_Reset_and_Halt_LCPU>:
20025258:	4a13      	ldr	r2, [pc, #76]	@ (200252a8 <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
2002525a:	6813      	ldr	r3, [r2, #0]
2002525c:	0759      	lsls	r1, r3, #29
2002525e:	d421      	bmi.n	200252a4 <HAL_RCC_Reset_and_Halt_LCPU+0x4c>
20025260:	6811      	ldr	r1, [r2, #0]
20025262:	2800      	cmp	r0, #0
20025264:	bf0c      	ite	eq
20025266:	2301      	moveq	r3, #1
20025268:	f04f 33ff 	movne.w	r3, #4294967295
2002526c:	f041 0104 	orr.w	r1, r1, #4
20025270:	6011      	str	r1, [r2, #0]
20025272:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
20025276:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
2002527a:	6013      	str	r3, [r2, #0]
2002527c:	6811      	ldr	r1, [r2, #0]
2002527e:	2900      	cmp	r1, #0
20025280:	d0fc      	beq.n	2002527c <HAL_RCC_Reset_and_Halt_LCPU+0x24>
20025282:	4a09      	ldr	r2, [pc, #36]	@ (200252a8 <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
20025284:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20025286:	06c8      	lsls	r0, r1, #27
20025288:	d506      	bpl.n	20025298 <HAL_RCC_Reset_and_Halt_LCPU+0x40>
2002528a:	6c11      	ldr	r1, [r2, #64]	@ 0x40
2002528c:	f041 0102 	orr.w	r1, r1, #2
20025290:	6411      	str	r1, [r2, #64]	@ 0x40
20025292:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20025294:	06c9      	lsls	r1, r1, #27
20025296:	d4fc      	bmi.n	20025292 <HAL_RCC_Reset_and_Halt_LCPU+0x3a>
20025298:	f04f 4180 	mov.w	r1, #1073741824	@ 0x40000000
2002529c:	680a      	ldr	r2, [r1, #0]
2002529e:	ea22 0303 	bic.w	r3, r2, r3
200252a2:	600b      	str	r3, [r1, #0]
200252a4:	4770      	bx	lr
200252a6:	bf00      	nop
200252a8:	40040000 	.word	0x40040000

200252ac <HAL_RCC_HCPU_ConfigHCLK>:
200252ac:	28f0      	cmp	r0, #240	@ 0xf0
200252ae:	d80d      	bhi.n	200252cc <HAL_RCC_HCPU_ConfigHCLK+0x20>
200252b0:	2890      	cmp	r0, #144	@ 0x90
200252b2:	d807      	bhi.n	200252c4 <HAL_RCC_HCPU_ConfigHCLK+0x18>
200252b4:	2830      	cmp	r0, #48	@ 0x30
200252b6:	d807      	bhi.n	200252c8 <HAL_RCC_HCPU_ConfigHCLK+0x1c>
200252b8:	2818      	cmp	r0, #24
200252ba:	bf94      	ite	ls
200252bc:	2100      	movls	r1, #0
200252be:	2101      	movhi	r1, #1
200252c0:	f7ff bf60 	b.w	20025184 <HAL_RCC_HCPU_ConfigDvfs>
200252c4:	2103      	movs	r1, #3
200252c6:	e7fb      	b.n	200252c0 <HAL_RCC_HCPU_ConfigHCLK+0x14>
200252c8:	2102      	movs	r1, #2
200252ca:	e7f9      	b.n	200252c0 <HAL_RCC_HCPU_ConfigHCLK+0x14>
200252cc:	2001      	movs	r0, #1
200252ce:	4770      	bx	lr

200252d0 <spi_flash_get_rdid>:
200252d0:	b5f0      	push	{r4, r5, r6, r7, lr}
200252d2:	4605      	mov	r5, r0
200252d4:	3801      	subs	r0, #1
200252d6:	b2c0      	uxtb	r0, r0
200252d8:	28fd      	cmp	r0, #253	@ 0xfd
200252da:	d808      	bhi.n	200252ee <spi_flash_get_rdid+0x1e>
200252dc:	2400      	movs	r4, #0
200252de:	4f0b      	ldr	r7, [pc, #44]	@ (2002530c <spi_flash_get_rdid+0x3c>)
200252e0:	f857 0b04 	ldr.w	r0, [r7], #4
200252e4:	7806      	ldrb	r6, [r0, #0]
200252e6:	b926      	cbnz	r6, 200252f2 <spi_flash_get_rdid+0x22>
200252e8:	3401      	adds	r4, #1
200252ea:	2c06      	cmp	r4, #6
200252ec:	d1f8      	bne.n	200252e0 <spi_flash_get_rdid+0x10>
200252ee:	2000      	movs	r0, #0
200252f0:	e00b      	b.n	2002530a <spi_flash_get_rdid+0x3a>
200252f2:	42ae      	cmp	r6, r5
200252f4:	d105      	bne.n	20025302 <spi_flash_get_rdid+0x32>
200252f6:	7846      	ldrb	r6, [r0, #1]
200252f8:	4296      	cmp	r6, r2
200252fa:	d102      	bne.n	20025302 <spi_flash_get_rdid+0x32>
200252fc:	7886      	ldrb	r6, [r0, #2]
200252fe:	428e      	cmp	r6, r1
20025300:	d001      	beq.n	20025306 <spi_flash_get_rdid+0x36>
20025302:	3008      	adds	r0, #8
20025304:	e7ee      	b.n	200252e4 <spi_flash_get_rdid+0x14>
20025306:	b103      	cbz	r3, 2002530a <spi_flash_get_rdid+0x3a>
20025308:	701c      	strb	r4, [r3, #0]
2002530a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002530c:	20042c18 	.word	0x20042c18

20025310 <spi_flash_get_cmd_by_id>:
20025310:	b507      	push	{r0, r1, r2, lr}
20025312:	f10d 0307 	add.w	r3, sp, #7
20025316:	f7ff ffdb 	bl	200252d0 <spi_flash_get_rdid>
2002531a:	4b06      	ldr	r3, [pc, #24]	@ (20025334 <spi_flash_get_cmd_by_id+0x24>)
2002531c:	b140      	cbz	r0, 20025330 <spi_flash_get_cmd_by_id+0x20>
2002531e:	f44f 7105 	mov.w	r1, #532	@ 0x214
20025322:	f89d 2007 	ldrb.w	r2, [sp, #7]
20025326:	fb01 3002 	mla	r0, r1, r2, r3
2002532a:	b003      	add	sp, #12
2002532c:	f85d fb04 	ldr.w	pc, [sp], #4
20025330:	4618      	mov	r0, r3
20025332:	e7fa      	b.n	2002532a <spi_flash_get_cmd_by_id+0x1a>
20025334:	20042e30 	.word	0x20042e30

20025338 <spi_flash_get_size_by_id>:
20025338:	b508      	push	{r3, lr}
2002533a:	2300      	movs	r3, #0
2002533c:	f7ff ffc8 	bl	200252d0 <spi_flash_get_rdid>
20025340:	b108      	cbz	r0, 20025346 <spi_flash_get_size_by_id+0xe>
20025342:	6840      	ldr	r0, [r0, #4]
20025344:	bd08      	pop	{r3, pc}
20025346:	f44f 2000 	mov.w	r0, #524288	@ 0x80000
2002534a:	e7fb      	b.n	20025344 <spi_flash_get_size_by_id+0xc>

2002534c <spi_flash_is_support_dtr>:
2002534c:	b508      	push	{r3, lr}
2002534e:	2300      	movs	r3, #0
20025350:	f7ff ffbe 	bl	200252d0 <spi_flash_get_rdid>
20025354:	b110      	cbz	r0, 2002535c <spi_flash_is_support_dtr+0x10>
20025356:	78c0      	ldrb	r0, [r0, #3]
20025358:	f000 0001 	and.w	r0, r0, #1
2002535c:	bd08      	pop	{r3, pc}
	...

20025360 <spi_nand_get_rdid>:
20025360:	b5f0      	push	{r4, r5, r6, r7, lr}
20025362:	4605      	mov	r5, r0
20025364:	3801      	subs	r0, #1
20025366:	b2c0      	uxtb	r0, r0
20025368:	28fd      	cmp	r0, #253	@ 0xfd
2002536a:	d808      	bhi.n	2002537e <spi_nand_get_rdid+0x1e>
2002536c:	2400      	movs	r4, #0
2002536e:	4f0b      	ldr	r7, [pc, #44]	@ (2002539c <spi_nand_get_rdid+0x3c>)
20025370:	f857 0b04 	ldr.w	r0, [r7], #4
20025374:	7806      	ldrb	r6, [r0, #0]
20025376:	b926      	cbnz	r6, 20025382 <spi_nand_get_rdid+0x22>
20025378:	3401      	adds	r4, #1
2002537a:	2c06      	cmp	r4, #6
2002537c:	d1f8      	bne.n	20025370 <spi_nand_get_rdid+0x10>
2002537e:	2000      	movs	r0, #0
20025380:	e00b      	b.n	2002539a <spi_nand_get_rdid+0x3a>
20025382:	42ae      	cmp	r6, r5
20025384:	d105      	bne.n	20025392 <spi_nand_get_rdid+0x32>
20025386:	7846      	ldrb	r6, [r0, #1]
20025388:	4296      	cmp	r6, r2
2002538a:	d102      	bne.n	20025392 <spi_nand_get_rdid+0x32>
2002538c:	7886      	ldrb	r6, [r0, #2]
2002538e:	428e      	cmp	r6, r1
20025390:	d001      	beq.n	20025396 <spi_nand_get_rdid+0x36>
20025392:	3008      	adds	r0, #8
20025394:	e7ee      	b.n	20025374 <spi_nand_get_rdid+0x14>
20025396:	b103      	cbz	r3, 2002539a <spi_nand_get_rdid+0x3a>
20025398:	701c      	strb	r4, [r3, #0]
2002539a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002539c:	20043aa8 	.word	0x20043aa8

200253a0 <spi_nand_get_cmd_by_id>:
200253a0:	b507      	push	{r0, r1, r2, lr}
200253a2:	f10d 0307 	add.w	r3, sp, #7
200253a6:	f7ff ffdb 	bl	20025360 <spi_nand_get_rdid>
200253aa:	b130      	cbz	r0, 200253ba <spi_nand_get_cmd_by_id+0x1a>
200253ac:	f44f 7205 	mov.w	r2, #532	@ 0x214
200253b0:	f89d 3007 	ldrb.w	r3, [sp, #7]
200253b4:	4802      	ldr	r0, [pc, #8]	@ (200253c0 <spi_nand_get_cmd_by_id+0x20>)
200253b6:	fb02 0003 	mla	r0, r2, r3, r0
200253ba:	b003      	add	sp, #12
200253bc:	f85d fb04 	ldr.w	pc, [sp], #4
200253c0:	20043c88 	.word	0x20043c88

200253c4 <HAL_GET_FLASH_DEFAUT_INX>:
200253c4:	f04f 30ff 	mov.w	r0, #4294967295
200253c8:	4770      	bx	lr
	...

200253cc <spi_nand_get_default_ctable>:
200253cc:	b508      	push	{r3, lr}
200253ce:	f7ff fff9 	bl	200253c4 <HAL_GET_FLASH_DEFAUT_INX>
200253d2:	1e03      	subs	r3, r0, #0
200253d4:	bfa5      	ittet	ge
200253d6:	f44f 7205 	movge.w	r2, #532	@ 0x214
200253da:	4802      	ldrge	r0, [pc, #8]	@ (200253e4 <spi_nand_get_default_ctable+0x18>)
200253dc:	2000      	movlt	r0, #0
200253de:	fb02 0003 	mlage	r0, r2, r3, r0
200253e2:	bd08      	pop	{r3, pc}
200253e4:	20043c88 	.word	0x20043c88

200253e8 <spi_nand_get_size_by_id>:
200253e8:	b508      	push	{r3, lr}
200253ea:	2300      	movs	r3, #0
200253ec:	f7ff ffb8 	bl	20025360 <spi_nand_get_rdid>
200253f0:	b108      	cbz	r0, 200253f6 <spi_nand_get_size_by_id+0xe>
200253f2:	6840      	ldr	r0, [r0, #4]
200253f4:	bd08      	pop	{r3, pc}
200253f6:	f04f 6080 	mov.w	r0, #67108864	@ 0x4000000
200253fa:	e7fb      	b.n	200253f4 <spi_nand_get_size_by_id+0xc>

200253fc <spi_nand_get_plane_select_flag>:
200253fc:	b508      	push	{r3, lr}
200253fe:	2300      	movs	r3, #0
20025400:	f7ff ffae 	bl	20025360 <spi_nand_get_rdid>
20025404:	b110      	cbz	r0, 2002540c <spi_nand_get_plane_select_flag+0x10>
20025406:	78c0      	ldrb	r0, [r0, #3]
20025408:	f3c0 0040 	ubfx	r0, r0, #1, #1
2002540c:	bd08      	pop	{r3, pc}

2002540e <spi_nand_get_big_page_flag>:
2002540e:	b508      	push	{r3, lr}
20025410:	2300      	movs	r3, #0
20025412:	f7ff ffa5 	bl	20025360 <spi_nand_get_rdid>
20025416:	b110      	cbz	r0, 2002541e <spi_nand_get_big_page_flag+0x10>
20025418:	78c0      	ldrb	r0, [r0, #3]
2002541a:	f3c0 0081 	ubfx	r0, r0, #2, #2
2002541e:	bd08      	pop	{r3, pc}

20025420 <spi_nand_get_ecc_mode>:
20025420:	b508      	push	{r3, lr}
20025422:	2300      	movs	r3, #0
20025424:	f7ff ff9c 	bl	20025360 <spi_nand_get_rdid>
20025428:	b108      	cbz	r0, 2002542e <spi_nand_get_ecc_mode+0xe>
2002542a:	78c0      	ldrb	r0, [r0, #3]
2002542c:	0900      	lsrs	r0, r0, #4
2002542e:	bd08      	pop	{r3, pc}

20025430 <bbm_map_check.part.0>:
20025430:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
20025432:	4b21      	ldr	r3, [pc, #132]	@ (200254b8 <bbm_map_check.part.0+0x88>)
20025434:	4606      	mov	r6, r0
20025436:	681d      	ldr	r5, [r3, #0]
20025438:	4b20      	ldr	r3, [pc, #128]	@ (200254bc <bbm_map_check.part.0+0x8c>)
2002543a:	3d04      	subs	r5, #4
2002543c:	681f      	ldr	r7, [r3, #0]
2002543e:	2300      	movs	r3, #0
20025440:	f100 0e1a 	add.w	lr, r0, #26
20025444:	42ab      	cmp	r3, r5
20025446:	db02      	blt.n	2002544e <bbm_map_check.part.0+0x1e>
20025448:	2000      	movs	r0, #0
2002544a:	b003      	add	sp, #12
2002544c:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002544e:	8b31      	ldrh	r1, [r6, #24]
20025450:	b321      	cbz	r1, 2002549c <bbm_map_check.part.0+0x6c>
20025452:	8b72      	ldrh	r2, [r6, #26]
20025454:	b33a      	cbz	r2, 200254a6 <bbm_map_check.part.0+0x76>
20025456:	42b9      	cmp	r1, r7
20025458:	d201      	bcs.n	2002545e <bbm_map_check.part.0+0x2e>
2002545a:	4297      	cmp	r7, r2
2002545c:	d905      	bls.n	2002546a <bbm_map_check.part.0+0x3a>
2002545e:	4b18      	ldr	r3, [pc, #96]	@ (200254c0 <bbm_map_check.part.0+0x90>)
20025460:	681b      	ldr	r3, [r3, #0]
20025462:	b10b      	cbz	r3, 20025468 <bbm_map_check.part.0+0x38>
20025464:	4817      	ldr	r0, [pc, #92]	@ (200254c4 <bbm_map_check.part.0+0x94>)
20025466:	4798      	blx	r3
20025468:	e7fe      	b.n	20025468 <bbm_map_check.part.0+0x38>
2002546a:	3301      	adds	r3, #1
2002546c:	461c      	mov	r4, r3
2002546e:	42ac      	cmp	r4, r5
20025470:	db01      	blt.n	20025476 <bbm_map_check.part.0+0x46>
20025472:	3604      	adds	r6, #4
20025474:	e7e6      	b.n	20025444 <bbm_map_check.part.0+0x14>
20025476:	f83e c024 	ldrh.w	ip, [lr, r4, lsl #2]
2002547a:	f1bc 0f00 	cmp.w	ip, #0
2002547e:	d0f8      	beq.n	20025472 <bbm_map_check.part.0+0x42>
20025480:	4562      	cmp	r2, ip
20025482:	d109      	bne.n	20025498 <bbm_map_check.part.0+0x68>
20025484:	4b0e      	ldr	r3, [pc, #56]	@ (200254c0 <bbm_map_check.part.0+0x90>)
20025486:	681d      	ldr	r5, [r3, #0]
20025488:	b12d      	cbz	r5, 20025496 <bbm_map_check.part.0+0x66>
2002548a:	3406      	adds	r4, #6
2002548c:	f830 3024 	ldrh.w	r3, [r0, r4, lsl #2]
20025490:	480d      	ldr	r0, [pc, #52]	@ (200254c8 <bbm_map_check.part.0+0x98>)
20025492:	9200      	str	r2, [sp, #0]
20025494:	47a8      	blx	r5
20025496:	e7fe      	b.n	20025496 <bbm_map_check.part.0+0x66>
20025498:	3401      	adds	r4, #1
2002549a:	e7e8      	b.n	2002546e <bbm_map_check.part.0+0x3e>
2002549c:	eb00 0283 	add.w	r2, r0, r3, lsl #2
200254a0:	8b52      	ldrh	r2, [r2, #26]
200254a2:	2a00      	cmp	r2, #0
200254a4:	d0d0      	beq.n	20025448 <bbm_map_check.part.0+0x18>
200254a6:	4a06      	ldr	r2, [pc, #24]	@ (200254c0 <bbm_map_check.part.0+0x90>)
200254a8:	6814      	ldr	r4, [r2, #0]
200254aa:	b124      	cbz	r4, 200254b6 <bbm_map_check.part.0+0x86>
200254ac:	eb00 0383 	add.w	r3, r0, r3, lsl #2
200254b0:	8b5a      	ldrh	r2, [r3, #26]
200254b2:	4806      	ldr	r0, [pc, #24]	@ (200254cc <bbm_map_check.part.0+0x9c>)
200254b4:	47a0      	blx	r4
200254b6:	e7fe      	b.n	200254b6 <bbm_map_check.part.0+0x86>
200254b8:	20049f84 	.word	0x20049f84
200254bc:	20049f88 	.word	0x20049f88
200254c0:	20049f74 	.word	0x20049f74
200254c4:	2002a9ec 	.word	0x2002a9ec
200254c8:	2002aa09 	.word	0x2002aa09
200254cc:	2002aa56 	.word	0x2002aa56

200254d0 <bbm_crc_check>:
200254d0:	f04f 32ff 	mov.w	r2, #4294967295
200254d4:	b510      	push	{r4, lr}
200254d6:	4c07      	ldr	r4, [pc, #28]	@ (200254f4 <bbm_crc_check+0x24>)
200254d8:	4401      	add	r1, r0
200254da:	4288      	cmp	r0, r1
200254dc:	d101      	bne.n	200254e2 <bbm_crc_check+0x12>
200254de:	43d0      	mvns	r0, r2
200254e0:	bd10      	pop	{r4, pc}
200254e2:	f810 3b01 	ldrb.w	r3, [r0], #1
200254e6:	4053      	eors	r3, r2
200254e8:	b2db      	uxtb	r3, r3
200254ea:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
200254ee:	ea83 2212 	eor.w	r2, r3, r2, lsr #8
200254f2:	e7f2      	b.n	200254da <bbm_crc_check+0xa>
200254f4:	2002b87c 	.word	0x2002b87c

200254f8 <bbm_get_phy_blk>:
200254f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200254fa:	4b14      	ldr	r3, [pc, #80]	@ (2002554c <bbm_get_phy_blk+0x54>)
200254fc:	4601      	mov	r1, r0
200254fe:	681e      	ldr	r6, [r3, #0]
20025500:	42b0      	cmp	r0, r6
20025502:	d21e      	bcs.n	20025542 <bbm_get_phy_blk+0x4a>
20025504:	b138      	cbz	r0, 20025516 <bbm_get_phy_blk+0x1e>
20025506:	4b12      	ldr	r3, [pc, #72]	@ (20025550 <bbm_get_phy_blk+0x58>)
20025508:	2200      	movs	r2, #0
2002550a:	681c      	ldr	r4, [r3, #0]
2002550c:	4b11      	ldr	r3, [pc, #68]	@ (20025554 <bbm_get_phy_blk+0x5c>)
2002550e:	3c04      	subs	r4, #4
20025510:	461d      	mov	r5, r3
20025512:	4294      	cmp	r4, r2
20025514:	dc00      	bgt.n	20025518 <bbm_get_phy_blk+0x20>
20025516:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20025518:	8b1f      	ldrh	r7, [r3, #24]
2002551a:	428f      	cmp	r7, r1
2002551c:	d10a      	bne.n	20025534 <bbm_get_phy_blk+0x3c>
2002551e:	eb05 0582 	add.w	r5, r5, r2, lsl #2
20025522:	8b6a      	ldrh	r2, [r5, #26]
20025524:	4296      	cmp	r6, r2
20025526:	dd0f      	ble.n	20025548 <bbm_get_phy_blk+0x50>
20025528:	4b0b      	ldr	r3, [pc, #44]	@ (20025558 <bbm_get_phy_blk+0x60>)
2002552a:	681b      	ldr	r3, [r3, #0]
2002552c:	b10b      	cbz	r3, 20025532 <bbm_get_phy_blk+0x3a>
2002552e:	480b      	ldr	r0, [pc, #44]	@ (2002555c <bbm_get_phy_blk+0x64>)
20025530:	4798      	blx	r3
20025532:	e7fe      	b.n	20025532 <bbm_get_phy_blk+0x3a>
20025534:	b917      	cbnz	r7, 2002553c <bbm_get_phy_blk+0x44>
20025536:	8b5f      	ldrh	r7, [r3, #26]
20025538:	2f00      	cmp	r7, #0
2002553a:	d0ec      	beq.n	20025516 <bbm_get_phy_blk+0x1e>
2002553c:	3201      	adds	r2, #1
2002553e:	3304      	adds	r3, #4
20025540:	e7e7      	b.n	20025512 <bbm_get_phy_blk+0x1a>
20025542:	f04f 30ff 	mov.w	r0, #4294967295
20025546:	e7e6      	b.n	20025516 <bbm_get_phy_blk+0x1e>
20025548:	4610      	mov	r0, r2
2002554a:	e7e4      	b.n	20025516 <bbm_get_phy_blk+0x1e>
2002554c:	20049f88 	.word	0x20049f88
20025550:	20049f84 	.word	0x20049f84
20025554:	20049f8c 	.word	0x20049f8c
20025558:	20049f74 	.word	0x20049f74
2002555c:	2002aa74 	.word	0x2002aa74

20025560 <bbm_get_version_inblk>:
20025560:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025564:	4607      	mov	r7, r0
20025566:	4688      	mov	r8, r1
20025568:	b087      	sub	sp, #28
2002556a:	2900      	cmp	r1, #0
2002556c:	d14b      	bne.n	20025606 <bbm_get_version_inblk+0xa6>
2002556e:	2500      	movs	r5, #0
20025570:	4628      	mov	r0, r5
20025572:	b007      	add	sp, #28
20025574:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025578:	2200      	movs	r2, #0
2002557a:	e9cd 2201 	strd	r2, r2, [sp, #4]
2002557e:	4e26      	ldr	r6, [pc, #152]	@ (20025618 <bbm_get_version_inblk+0xb8>)
20025580:	9100      	str	r1, [sp, #0]
20025582:	4638      	mov	r0, r7
20025584:	4621      	mov	r1, r4
20025586:	6833      	ldr	r3, [r6, #0]
20025588:	f7fb fafe 	bl	20020b88 <port_read_page>
2002558c:	2800      	cmp	r0, #0
2002558e:	dd32      	ble.n	200255f6 <bbm_get_version_inblk+0x96>
20025590:	6832      	ldr	r2, [r6, #0]
20025592:	6813      	ldr	r3, [r2, #0]
20025594:	455b      	cmp	r3, fp
20025596:	d123      	bne.n	200255e0 <bbm_get_version_inblk+0x80>
20025598:	6856      	ldr	r6, [r2, #4]
2002559a:	f3c6 061e 	ubfx	r6, r6, #0, #31
2002559e:	42ae      	cmp	r6, r5
200255a0:	dd15      	ble.n	200255ce <bbm_get_version_inblk+0x6e>
200255a2:	4610      	mov	r0, r2
200255a4:	2110      	movs	r1, #16
200255a6:	9205      	str	r2, [sp, #20]
200255a8:	f7ff ff92 	bl	200254d0 <bbm_crc_check>
200255ac:	9a05      	ldr	r2, [sp, #20]
200255ae:	6913      	ldr	r3, [r2, #16]
200255b0:	4283      	cmp	r3, r0
200255b2:	d113      	bne.n	200255dc <bbm_get_version_inblk+0x7c>
200255b4:	f8c8 4000 	str.w	r4, [r8]
200255b8:	4635      	mov	r5, r6
200255ba:	3401      	adds	r4, #1
200255bc:	f8da 1000 	ldr.w	r1, [sl]
200255c0:	f8d9 3000 	ldr.w	r3, [r9]
200255c4:	fbb3 f3f1 	udiv	r3, r3, r1
200255c8:	42a3      	cmp	r3, r4
200255ca:	d8d5      	bhi.n	20025578 <bbm_get_version_inblk+0x18>
200255cc:	e7d0      	b.n	20025570 <bbm_get_version_inblk+0x10>
200255ce:	4b13      	ldr	r3, [pc, #76]	@ (2002561c <bbm_get_version_inblk+0xbc>)
200255d0:	681b      	ldr	r3, [r3, #0]
200255d2:	b11b      	cbz	r3, 200255dc <bbm_get_version_inblk+0x7c>
200255d4:	4632      	mov	r2, r6
200255d6:	4629      	mov	r1, r5
200255d8:	4811      	ldr	r0, [pc, #68]	@ (20025620 <bbm_get_version_inblk+0xc0>)
200255da:	4798      	blx	r3
200255dc:	462e      	mov	r6, r5
200255de:	e7eb      	b.n	200255b8 <bbm_get_version_inblk+0x58>
200255e0:	1c5a      	adds	r2, r3, #1
200255e2:	d0c5      	beq.n	20025570 <bbm_get_version_inblk+0x10>
200255e4:	4a0d      	ldr	r2, [pc, #52]	@ (2002561c <bbm_get_version_inblk+0xbc>)
200255e6:	6815      	ldr	r5, [r2, #0]
200255e8:	2d00      	cmp	r5, #0
200255ea:	d0c0      	beq.n	2002556e <bbm_get_version_inblk+0xe>
200255ec:	4622      	mov	r2, r4
200255ee:	4639      	mov	r1, r7
200255f0:	480c      	ldr	r0, [pc, #48]	@ (20025624 <bbm_get_version_inblk+0xc4>)
200255f2:	47a8      	blx	r5
200255f4:	e7bb      	b.n	2002556e <bbm_get_version_inblk+0xe>
200255f6:	4b09      	ldr	r3, [pc, #36]	@ (2002561c <bbm_get_version_inblk+0xbc>)
200255f8:	681b      	ldr	r3, [r3, #0]
200255fa:	2b00      	cmp	r3, #0
200255fc:	d0ee      	beq.n	200255dc <bbm_get_version_inblk+0x7c>
200255fe:	4622      	mov	r2, r4
20025600:	4639      	mov	r1, r7
20025602:	4809      	ldr	r0, [pc, #36]	@ (20025628 <bbm_get_version_inblk+0xc8>)
20025604:	e7e9      	b.n	200255da <bbm_get_version_inblk+0x7a>
20025606:	2400      	movs	r4, #0
20025608:	f8df a020 	ldr.w	sl, [pc, #32]	@ 2002562c <bbm_get_version_inblk+0xcc>
2002560c:	4625      	mov	r5, r4
2002560e:	f8df 9020 	ldr.w	r9, [pc, #32]	@ 20025630 <bbm_get_version_inblk+0xd0>
20025612:	f8df b020 	ldr.w	fp, [pc, #32]	@ 20025634 <bbm_get_version_inblk+0xd4>
20025616:	e7d1      	b.n	200255bc <bbm_get_version_inblk+0x5c>
20025618:	20049f78 	.word	0x20049f78
2002561c:	20049f74 	.word	0x20049f74
20025620:	2002aa93 	.word	0x2002aa93
20025624:	2002aac0 	.word	0x2002aac0
20025628:	2002aaf1 	.word	0x2002aaf1
2002562c:	20044900 	.word	0x20044900
20025630:	20044904 	.word	0x20044904
20025634:	5366424d 	.word	0x5366424d

20025638 <bbm_get_map_table>:
20025638:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002563c:	2801      	cmp	r0, #1
2002563e:	4607      	mov	r7, r0
20025640:	f8df b15c 	ldr.w	fp, [pc, #348]	@ 200257a0 <bbm_get_map_table+0x168>
20025644:	b087      	sub	sp, #28
20025646:	dd0a      	ble.n	2002565e <bbm_get_map_table+0x26>
20025648:	f8db 3000 	ldr.w	r3, [fp]
2002564c:	b91b      	cbnz	r3, 20025656 <bbm_get_map_table+0x1e>
2002564e:	2000      	movs	r0, #0
20025650:	b007      	add	sp, #28
20025652:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025656:	4601      	mov	r1, r0
20025658:	4847      	ldr	r0, [pc, #284]	@ (20025778 <bbm_get_map_table+0x140>)
2002565a:	4798      	blx	r3
2002565c:	e7f7      	b.n	2002564e <bbm_get_map_table+0x16>
2002565e:	f8df 8144 	ldr.w	r8, [pc, #324]	@ 200257a4 <bbm_get_map_table+0x16c>
20025662:	2800      	cmp	r0, #0
20025664:	d163      	bne.n	2002572e <bbm_get_map_table+0xf6>
20025666:	f8b8 6000 	ldrh.w	r6, [r8]
2002566a:	f8b8 5002 	ldrh.w	r5, [r8, #2]
2002566e:	2e00      	cmp	r6, #0
20025670:	d062      	beq.n	20025738 <bbm_get_map_table+0x100>
20025672:	4630      	mov	r0, r6
20025674:	a904      	add	r1, sp, #16
20025676:	f7ff ff73 	bl	20025560 <bbm_get_version_inblk>
2002567a:	4681      	mov	r9, r0
2002567c:	2d00      	cmp	r5, #0
2002567e:	d05d      	beq.n	2002573c <bbm_get_map_table+0x104>
20025680:	4628      	mov	r0, r5
20025682:	a905      	add	r1, sp, #20
20025684:	f7ff ff6c 	bl	20025560 <bbm_get_version_inblk>
20025688:	4604      	mov	r4, r0
2002568a:	f8db a000 	ldr.w	sl, [fp]
2002568e:	f1ba 0f00 	cmp.w	sl, #0
20025692:	d005      	beq.n	200256a0 <bbm_get_map_table+0x68>
20025694:	4623      	mov	r3, r4
20025696:	4632      	mov	r2, r6
20025698:	4649      	mov	r1, r9
2002569a:	4838      	ldr	r0, [pc, #224]	@ (2002577c <bbm_get_map_table+0x144>)
2002569c:	9500      	str	r5, [sp, #0]
2002569e:	47d0      	blx	sl
200256a0:	45a1      	cmp	r9, r4
200256a2:	d0d4      	beq.n	2002564e <bbm_get_map_table+0x16>
200256a4:	f04f 0200 	mov.w	r2, #0
200256a8:	bf98      	it	ls
200256aa:	462e      	movls	r6, r5
200256ac:	f107 0308 	add.w	r3, r7, #8
200256b0:	bf94      	ite	ls
200256b2:	f828 5013 	strhls.w	r5, [r8, r3, lsl #1]
200256b6:	f828 6013 	strhhi.w	r6, [r8, r3, lsl #1]
200256ba:	e9cd 2201 	strd	r2, r2, [sp, #4]
200256be:	4b30      	ldr	r3, [pc, #192]	@ (20025780 <bbm_get_map_table+0x148>)
200256c0:	bf88      	it	hi
200256c2:	f8dd a010 	ldrhi.w	sl, [sp, #16]
200256c6:	681b      	ldr	r3, [r3, #0]
200256c8:	bf98      	it	ls
200256ca:	f8dd a014 	ldrls.w	sl, [sp, #20]
200256ce:	f8df 80d8 	ldr.w	r8, [pc, #216]	@ 200257a8 <bbm_get_map_table+0x170>
200256d2:	9300      	str	r3, [sp, #0]
200256d4:	4651      	mov	r1, sl
200256d6:	4630      	mov	r0, r6
200256d8:	f8d8 3000 	ldr.w	r3, [r8]
200256dc:	bf88      	it	hi
200256de:	464c      	movhi	r4, r9
200256e0:	f7fb fa52 	bl	20020b88 <port_read_page>
200256e4:	2800      	cmp	r0, #0
200256e6:	f8db 5000 	ldr.w	r5, [fp]
200256ea:	dd38      	ble.n	2002575e <bbm_get_map_table+0x126>
200256ec:	f8d8 8000 	ldr.w	r8, [r8]
200256f0:	4b24      	ldr	r3, [pc, #144]	@ (20025784 <bbm_get_map_table+0x14c>)
200256f2:	f8d8 2000 	ldr.w	r2, [r8]
200256f6:	429a      	cmp	r2, r3
200256f8:	d12b      	bne.n	20025752 <bbm_get_map_table+0x11a>
200256fa:	2110      	movs	r1, #16
200256fc:	4640      	mov	r0, r8
200256fe:	f7ff fee7 	bl	200254d0 <bbm_crc_check>
20025702:	f8d8 2010 	ldr.w	r2, [r8, #16]
20025706:	4601      	mov	r1, r0
20025708:	4282      	cmp	r2, r0
2002570a:	d11e      	bne.n	2002574a <bbm_get_map_table+0x112>
2002570c:	f8d8 1004 	ldr.w	r1, [r8, #4]
20025710:	f3c1 011e 	ubfx	r1, r1, #0, #31
20025714:	42a1      	cmp	r1, r4
20025716:	d113      	bne.n	20025740 <bbm_get_map_table+0x108>
20025718:	f44f 7202 	mov.w	r2, #520	@ 0x208
2002571c:	481a      	ldr	r0, [pc, #104]	@ (20025788 <bbm_get_map_table+0x150>)
2002571e:	4641      	mov	r1, r8
20025720:	fb02 0007 	mla	r0, r2, r7, r0
20025724:	f005 f888 	bl	2002a838 <memcpy>
20025728:	bb0d      	cbnz	r5, 2002576e <bbm_get_map_table+0x136>
2002572a:	4620      	mov	r0, r4
2002572c:	e790      	b.n	20025650 <bbm_get_map_table+0x18>
2002572e:	f8b8 6004 	ldrh.w	r6, [r8, #4]
20025732:	f8b8 5006 	ldrh.w	r5, [r8, #6]
20025736:	e79a      	b.n	2002566e <bbm_get_map_table+0x36>
20025738:	46b1      	mov	r9, r6
2002573a:	e79f      	b.n	2002567c <bbm_get_map_table+0x44>
2002573c:	462c      	mov	r4, r5
2002573e:	e7a4      	b.n	2002568a <bbm_get_map_table+0x52>
20025740:	b115      	cbz	r5, 20025748 <bbm_get_map_table+0x110>
20025742:	4622      	mov	r2, r4
20025744:	4811      	ldr	r0, [pc, #68]	@ (2002578c <bbm_get_map_table+0x154>)
20025746:	47a8      	blx	r5
20025748:	e7fe      	b.n	20025748 <bbm_get_map_table+0x110>
2002574a:	b10d      	cbz	r5, 20025750 <bbm_get_map_table+0x118>
2002574c:	4810      	ldr	r0, [pc, #64]	@ (20025790 <bbm_get_map_table+0x158>)
2002574e:	47a8      	blx	r5
20025750:	e7fe      	b.n	20025750 <bbm_get_map_table+0x118>
20025752:	b11d      	cbz	r5, 2002575c <bbm_get_map_table+0x124>
20025754:	4652      	mov	r2, sl
20025756:	4631      	mov	r1, r6
20025758:	480e      	ldr	r0, [pc, #56]	@ (20025794 <bbm_get_map_table+0x15c>)
2002575a:	47a8      	blx	r5
2002575c:	e7fe      	b.n	2002575c <bbm_get_map_table+0x124>
2002575e:	2d00      	cmp	r5, #0
20025760:	f43f af75 	beq.w	2002564e <bbm_get_map_table+0x16>
20025764:	4652      	mov	r2, sl
20025766:	4631      	mov	r1, r6
20025768:	480b      	ldr	r0, [pc, #44]	@ (20025798 <bbm_get_map_table+0x160>)
2002576a:	47a8      	blx	r5
2002576c:	e76f      	b.n	2002564e <bbm_get_map_table+0x16>
2002576e:	4621      	mov	r1, r4
20025770:	480a      	ldr	r0, [pc, #40]	@ (2002579c <bbm_get_map_table+0x164>)
20025772:	47a8      	blx	r5
20025774:	e7d9      	b.n	2002572a <bbm_get_map_table+0xf2>
20025776:	bf00      	nop
20025778:	2002ab0f 	.word	0x2002ab0f
2002577c:	2002ab23 	.word	0x2002ab23
20025780:	20044900 	.word	0x20044900
20025784:	5366424d 	.word	0x5366424d
20025788:	20049f8c 	.word	0x20049f8c
2002578c:	2002ab49 	.word	0x2002ab49
20025790:	2002ab93 	.word	0x2002ab93
20025794:	2002aba5 	.word	0x2002aba5
20025798:	2002abda 	.word	0x2002abda
2002579c:	2002ac06 	.word	0x2002ac06
200257a0:	20049f74 	.word	0x20049f74
200257a4:	2004a39c 	.word	0x2004a39c
200257a8:	20049f78 	.word	0x20049f78

200257ac <bbm_get_page_num>:
200257ac:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
200257b0:	4605      	mov	r5, r0
200257b2:	2400      	movs	r4, #0
200257b4:	4f13      	ldr	r7, [pc, #76]	@ (20025804 <bbm_get_page_num+0x58>)
200257b6:	4e14      	ldr	r6, [pc, #80]	@ (20025808 <bbm_get_page_num+0x5c>)
200257b8:	f8df 8050 	ldr.w	r8, [pc, #80]	@ 2002580c <bbm_get_page_num+0x60>
200257bc:	b085      	sub	sp, #20
200257be:	6839      	ldr	r1, [r7, #0]
200257c0:	6833      	ldr	r3, [r6, #0]
200257c2:	fbb3 f3f1 	udiv	r3, r3, r1
200257c6:	42a3      	cmp	r3, r4
200257c8:	d802      	bhi.n	200257d0 <bbm_get_page_num+0x24>
200257ca:	f04f 34ff 	mov.w	r4, #4294967295
200257ce:	e015      	b.n	200257fc <bbm_get_page_num+0x50>
200257d0:	2200      	movs	r2, #0
200257d2:	e9cd 2201 	strd	r2, r2, [sp, #4]
200257d6:	f8df 9038 	ldr.w	r9, [pc, #56]	@ 20025810 <bbm_get_page_num+0x64>
200257da:	9100      	str	r1, [sp, #0]
200257dc:	4628      	mov	r0, r5
200257de:	4621      	mov	r1, r4
200257e0:	f8d9 3000 	ldr.w	r3, [r9]
200257e4:	f7fb f9d0 	bl	20020b88 <port_read_page>
200257e8:	b120      	cbz	r0, 200257f4 <bbm_get_page_num+0x48>
200257ea:	f8d9 3000 	ldr.w	r3, [r9]
200257ee:	681b      	ldr	r3, [r3, #0]
200257f0:	4543      	cmp	r3, r8
200257f2:	d101      	bne.n	200257f8 <bbm_get_page_num+0x4c>
200257f4:	3401      	adds	r4, #1
200257f6:	e7e2      	b.n	200257be <bbm_get_page_num+0x12>
200257f8:	3301      	adds	r3, #1
200257fa:	d1fb      	bne.n	200257f4 <bbm_get_page_num+0x48>
200257fc:	4620      	mov	r0, r4
200257fe:	b005      	add	sp, #20
20025800:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20025804:	20044900 	.word	0x20044900
20025808:	20044904 	.word	0x20044904
2002580c:	5366424d 	.word	0x5366424d
20025810:	20049f78 	.word	0x20049f78

20025814 <bbm_read_page>:
20025814:	b5f0      	push	{r4, r5, r6, r7, lr}
20025816:	4604      	mov	r4, r0
20025818:	b085      	sub	sp, #20
2002581a:	b280      	uxth	r0, r0
2002581c:	461f      	mov	r7, r3
2002581e:	460d      	mov	r5, r1
20025820:	4616      	mov	r6, r2
20025822:	f7ff fe69 	bl	200254f8 <bbm_get_phy_blk>
20025826:	1c43      	adds	r3, r0, #1
20025828:	d108      	bne.n	2002583c <bbm_read_page+0x28>
2002582a:	4b0a      	ldr	r3, [pc, #40]	@ (20025854 <bbm_read_page+0x40>)
2002582c:	681b      	ldr	r3, [r3, #0]
2002582e:	b113      	cbz	r3, 20025836 <bbm_read_page+0x22>
20025830:	4621      	mov	r1, r4
20025832:	4809      	ldr	r0, [pc, #36]	@ (20025858 <bbm_read_page+0x44>)
20025834:	4798      	blx	r3
20025836:	2000      	movs	r0, #0
20025838:	b005      	add	sp, #20
2002583a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002583c:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
2002583e:	4632      	mov	r2, r6
20025840:	9302      	str	r3, [sp, #8]
20025842:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
20025844:	4629      	mov	r1, r5
20025846:	9301      	str	r3, [sp, #4]
20025848:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
2002584a:	9300      	str	r3, [sp, #0]
2002584c:	463b      	mov	r3, r7
2002584e:	f7fb f99b 	bl	20020b88 <port_read_page>
20025852:	e7f1      	b.n	20025838 <bbm_read_page+0x24>
20025854:	20049f74 	.word	0x20049f74
20025858:	2002ac19 	.word	0x2002ac19

2002585c <port_write_page>:
2002585c:	4b01      	ldr	r3, [pc, #4]	@ (20025864 <port_write_page+0x8>)
2002585e:	6818      	ldr	r0, [r3, #0]
20025860:	4770      	bx	lr
20025862:	bf00      	nop
20025864:	20044900 	.word	0x20044900

20025868 <bbm_write_talbe.isra.0>:
20025868:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
2002586a:	4604      	mov	r4, r0
2002586c:	4608      	mov	r0, r1
2002586e:	460e      	mov	r6, r1
20025870:	f7ff ff9c 	bl	200257ac <bbm_get_page_num>
20025874:	1e05      	subs	r5, r0, #0
20025876:	db25      	blt.n	200258c4 <bbm_write_talbe.isra.0+0x5c>
20025878:	4b13      	ldr	r3, [pc, #76]	@ (200258c8 <bbm_write_talbe.isra.0+0x60>)
2002587a:	681a      	ldr	r2, [r3, #0]
2002587c:	4b13      	ldr	r3, [pc, #76]	@ (200258cc <bbm_write_talbe.isra.0+0x64>)
2002587e:	681b      	ldr	r3, [r3, #0]
20025880:	fbb3 f3f2 	udiv	r3, r3, r2
20025884:	429d      	cmp	r5, r3
20025886:	da1d      	bge.n	200258c4 <bbm_write_talbe.isra.0+0x5c>
20025888:	4f11      	ldr	r7, [pc, #68]	@ (200258d0 <bbm_write_talbe.isra.0+0x68>)
2002588a:	21ff      	movs	r1, #255	@ 0xff
2002588c:	6838      	ldr	r0, [r7, #0]
2002588e:	f004 ffb9 	bl	2002a804 <memset>
20025892:	4264      	negs	r4, r4
20025894:	490f      	ldr	r1, [pc, #60]	@ (200258d4 <bbm_write_talbe.isra.0+0x6c>)
20025896:	f404 7402 	and.w	r4, r4, #520	@ 0x208
2002589a:	f44f 7202 	mov.w	r2, #520	@ 0x208
2002589e:	6838      	ldr	r0, [r7, #0]
200258a0:	4421      	add	r1, r4
200258a2:	f004 ffc9 	bl	2002a838 <memcpy>
200258a6:	6838      	ldr	r0, [r7, #0]
200258a8:	b160      	cbz	r0, 200258c4 <bbm_write_talbe.isra.0+0x5c>
200258aa:	6802      	ldr	r2, [r0, #0]
200258ac:	4b0a      	ldr	r3, [pc, #40]	@ (200258d8 <bbm_write_talbe.isra.0+0x70>)
200258ae:	429a      	cmp	r2, r3
200258b0:	d108      	bne.n	200258c4 <bbm_write_talbe.isra.0+0x5c>
200258b2:	f7ff fdbd 	bl	20025430 <bbm_map_check.part.0>
200258b6:	2300      	movs	r3, #0
200258b8:	9300      	str	r3, [sp, #0]
200258ba:	4629      	mov	r1, r5
200258bc:	4630      	mov	r0, r6
200258be:	683a      	ldr	r2, [r7, #0]
200258c0:	f7ff ffcc 	bl	2002585c <port_write_page>
200258c4:	b003      	add	sp, #12
200258c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
200258c8:	20044900 	.word	0x20044900
200258cc:	20044904 	.word	0x20044904
200258d0:	20049f78 	.word	0x20049f78
200258d4:	20049f8c 	.word	0x20049f8c
200258d8:	5366424d 	.word	0x5366424d

200258dc <port_erase_block>:
200258dc:	2000      	movs	r0, #0
200258de:	4770      	bx	lr

200258e0 <bbm_init_table>:
200258e0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200258e4:	4c7d      	ldr	r4, [pc, #500]	@ (20025adc <bbm_init_table+0x1fc>)
200258e6:	4b7e      	ldr	r3, [pc, #504]	@ (20025ae0 <bbm_init_table+0x200>)
200258e8:	6822      	ldr	r2, [r4, #0]
200258ea:	b085      	sub	sp, #20
200258ec:	429a      	cmp	r2, r3
200258ee:	f000 80ef 	beq.w	20025ad0 <bbm_init_table+0x1f0>
200258f2:	f8d4 2208 	ldr.w	r2, [r4, #520]	@ 0x208
200258f6:	429a      	cmp	r2, r3
200258f8:	f000 80ea 	beq.w	20025ad0 <bbm_init_table+0x1f0>
200258fc:	6023      	str	r3, [r4, #0]
200258fe:	2301      	movs	r3, #1
20025900:	6063      	str	r3, [r4, #4]
20025902:	2300      	movs	r3, #0
20025904:	f8df 9210 	ldr.w	r9, [pc, #528]	@ 20025b18 <bbm_init_table+0x238>
20025908:	8123      	strh	r3, [r4, #8]
2002590a:	f8d9 3000 	ldr.w	r3, [r9]
2002590e:	4f75      	ldr	r7, [pc, #468]	@ (20025ae4 <bbm_init_table+0x204>)
20025910:	3b04      	subs	r3, #4
20025912:	f8df a208 	ldr.w	sl, [pc, #520]	@ 20025b1c <bbm_init_table+0x23c>
20025916:	8163      	strh	r3, [r4, #10]
20025918:	683b      	ldr	r3, [r7, #0]
2002591a:	f8da 5000 	ldr.w	r5, [sl]
2002591e:	3b01      	subs	r3, #1
20025920:	4e71      	ldr	r6, [pc, #452]	@ (20025ae8 <bbm_init_table+0x208>)
20025922:	81a3      	strh	r3, [r4, #12]
20025924:	81e5      	strh	r5, [r4, #14]
20025926:	683b      	ldr	r3, [r7, #0]
20025928:	429d      	cmp	r5, r3
2002592a:	db10      	blt.n	2002594e <bbm_init_table+0x6e>
2002592c:	2500      	movs	r5, #0
2002592e:	46a8      	mov	r8, r5
20025930:	f8df b1b4 	ldr.w	fp, [pc, #436]	@ 20025ae8 <bbm_init_table+0x208>
20025934:	f8da 6000 	ldr.w	r6, [sl]
20025938:	42b5      	cmp	r5, r6
2002593a:	db20      	blt.n	2002597e <bbm_init_table+0x9e>
2002593c:	8963      	ldrh	r3, [r4, #10]
2002593e:	2b00      	cmp	r3, #0
20025940:	d14d      	bne.n	200259de <bbm_init_table+0xfe>
20025942:	4b69      	ldr	r3, [pc, #420]	@ (20025ae8 <bbm_init_table+0x208>)
20025944:	681b      	ldr	r3, [r3, #0]
20025946:	b10b      	cbz	r3, 2002594c <bbm_init_table+0x6c>
20025948:	4868      	ldr	r0, [pc, #416]	@ (20025aec <bbm_init_table+0x20c>)
2002594a:	4798      	blx	r3
2002594c:	e7fe      	b.n	2002594c <bbm_init_table+0x6c>
2002594e:	4628      	mov	r0, r5
20025950:	f7fb f996 	bl	20020c80 <bbm_get_bb>
20025954:	b968      	cbnz	r0, 20025972 <bbm_init_table+0x92>
20025956:	4628      	mov	r0, r5
20025958:	f7ff ffc0 	bl	200258dc <port_erase_block>
2002595c:	b138      	cbz	r0, 2002596e <bbm_init_table+0x8e>
2002595e:	6833      	ldr	r3, [r6, #0]
20025960:	b113      	cbz	r3, 20025968 <bbm_init_table+0x88>
20025962:	4629      	mov	r1, r5
20025964:	4862      	ldr	r0, [pc, #392]	@ (20025af0 <bbm_init_table+0x210>)
20025966:	4798      	blx	r3
20025968:	8963      	ldrh	r3, [r4, #10]
2002596a:	3b01      	subs	r3, #1
2002596c:	8163      	strh	r3, [r4, #10]
2002596e:	3501      	adds	r5, #1
20025970:	e7d9      	b.n	20025926 <bbm_init_table+0x46>
20025972:	6833      	ldr	r3, [r6, #0]
20025974:	2b00      	cmp	r3, #0
20025976:	d0f7      	beq.n	20025968 <bbm_init_table+0x88>
20025978:	4629      	mov	r1, r5
2002597a:	485e      	ldr	r0, [pc, #376]	@ (20025af4 <bbm_init_table+0x214>)
2002597c:	e7f3      	b.n	20025966 <bbm_init_table+0x86>
2002597e:	4628      	mov	r0, r5
20025980:	f7fb f97e 	bl	20020c80 <bbm_get_bb>
20025984:	b348      	cbz	r0, 200259da <bbm_init_table+0xfa>
20025986:	f8db 3000 	ldr.w	r3, [fp]
2002598a:	b113      	cbz	r3, 20025992 <bbm_init_table+0xb2>
2002598c:	4629      	mov	r1, r5
2002598e:	485a      	ldr	r0, [pc, #360]	@ (20025af8 <bbm_init_table+0x218>)
20025990:	4798      	blx	r3
20025992:	89a0      	ldrh	r0, [r4, #12]
20025994:	f7fb f974 	bl	20020c80 <bbm_get_bb>
20025998:	89a3      	ldrh	r3, [r4, #12]
2002599a:	4606      	mov	r6, r0
2002599c:	3b01      	subs	r3, #1
2002599e:	81a3      	strh	r3, [r4, #12]
200259a0:	8963      	ldrh	r3, [r4, #10]
200259a2:	3b01      	subs	r3, #1
200259a4:	b29b      	uxth	r3, r3
200259a6:	8163      	strh	r3, [r4, #10]
200259a8:	b108      	cbz	r0, 200259ae <bbm_init_table+0xce>
200259aa:	2b00      	cmp	r3, #0
200259ac:	d1f1      	bne.n	20025992 <bbm_init_table+0xb2>
200259ae:	f8db 3000 	ldr.w	r3, [fp]
200259b2:	b11b      	cbz	r3, 200259bc <bbm_init_table+0xdc>
200259b4:	4642      	mov	r2, r8
200259b6:	4629      	mov	r1, r5
200259b8:	4850      	ldr	r0, [pc, #320]	@ (20025afc <bbm_init_table+0x21c>)
200259ba:	4798      	blx	r3
200259bc:	b946      	cbnz	r6, 200259d0 <bbm_init_table+0xf0>
200259be:	89a2      	ldrh	r2, [r4, #12]
200259c0:	f108 0306 	add.w	r3, r8, #6
200259c4:	f824 5023 	strh.w	r5, [r4, r3, lsl #2]
200259c8:	3201      	adds	r2, #1
200259ca:	eb04 0383 	add.w	r3, r4, r3, lsl #2
200259ce:	805a      	strh	r2, [r3, #2]
200259d0:	8923      	ldrh	r3, [r4, #8]
200259d2:	f108 0801 	add.w	r8, r8, #1
200259d6:	3301      	adds	r3, #1
200259d8:	8123      	strh	r3, [r4, #8]
200259da:	3501      	adds	r5, #1
200259dc:	e7aa      	b.n	20025934 <bbm_init_table+0x54>
200259de:	2110      	movs	r1, #16
200259e0:	483e      	ldr	r0, [pc, #248]	@ (20025adc <bbm_init_table+0x1fc>)
200259e2:	f7ff fd75 	bl	200254d0 <bbm_crc_check>
200259e6:	f8d9 1000 	ldr.w	r1, [r9]
200259ea:	6120      	str	r0, [r4, #16]
200259ec:	3904      	subs	r1, #4
200259ee:	0089      	lsls	r1, r1, #2
200259f0:	4843      	ldr	r0, [pc, #268]	@ (20025b00 <bbm_init_table+0x220>)
200259f2:	f7ff fd6d 	bl	200254d0 <bbm_crc_check>
200259f6:	f44f 7202 	mov.w	r2, #520	@ 0x208
200259fa:	4938      	ldr	r1, [pc, #224]	@ (20025adc <bbm_init_table+0x1fc>)
200259fc:	6160      	str	r0, [r4, #20]
200259fe:	1888      	adds	r0, r1, r2
20025a00:	f004 ff1a 	bl	2002a838 <memcpy>
20025a04:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025a08:	2110      	movs	r1, #16
20025a0a:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025a0e:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025a12:	483c      	ldr	r0, [pc, #240]	@ (20025b04 <bbm_init_table+0x224>)
20025a14:	f7ff fd5c 	bl	200254d0 <bbm_crc_check>
20025a18:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
20025a1c:	2400      	movs	r4, #0
20025a1e:	f8df 9100 	ldr.w	r9, [pc, #256]	@ 20025b20 <bbm_init_table+0x240>
20025a22:	f8df 8100 	ldr.w	r8, [pc, #256]	@ 20025b24 <bbm_init_table+0x244>
20025a26:	683b      	ldr	r3, [r7, #0]
20025a28:	429e      	cmp	r6, r3
20025a2a:	db08      	blt.n	20025a3e <bbm_init_table+0x15e>
20025a2c:	2c03      	cmp	r4, #3
20025a2e:	dc30      	bgt.n	20025a92 <bbm_init_table+0x1b2>
20025a30:	4b2d      	ldr	r3, [pc, #180]	@ (20025ae8 <bbm_init_table+0x208>)
20025a32:	681b      	ldr	r3, [r3, #0]
20025a34:	b113      	cbz	r3, 20025a3c <bbm_init_table+0x15c>
20025a36:	4621      	mov	r1, r4
20025a38:	4833      	ldr	r0, [pc, #204]	@ (20025b08 <bbm_init_table+0x228>)
20025a3a:	4798      	blx	r3
20025a3c:	e7fe      	b.n	20025a3c <bbm_init_table+0x15c>
20025a3e:	4630      	mov	r0, r6
20025a40:	f7fb f91e 	bl	20020c80 <bbm_get_bb>
20025a44:	4605      	mov	r5, r0
20025a46:	bb10      	cbnz	r0, 20025a8e <bbm_init_table+0x1ae>
20025a48:	f8d9 a000 	ldr.w	sl, [r9]
20025a4c:	21ff      	movs	r1, #255	@ 0xff
20025a4e:	4652      	mov	r2, sl
20025a50:	f8d8 0000 	ldr.w	r0, [r8]
20025a54:	f004 fed6 	bl	2002a804 <memset>
20025a58:	e9cd 5501 	strd	r5, r5, [sp, #4]
20025a5c:	f8cd a000 	str.w	sl, [sp]
20025a60:	f8d8 3000 	ldr.w	r3, [r8]
20025a64:	462a      	mov	r2, r5
20025a66:	4629      	mov	r1, r5
20025a68:	4630      	mov	r0, r6
20025a6a:	f7fb f88d 	bl	20020b88 <port_read_page>
20025a6e:	f8d9 3000 	ldr.w	r3, [r9]
20025a72:	4298      	cmp	r0, r3
20025a74:	d109      	bne.n	20025a8a <bbm_init_table+0x1aa>
20025a76:	f8d8 3000 	ldr.w	r3, [r8]
20025a7a:	681b      	ldr	r3, [r3, #0]
20025a7c:	3301      	adds	r3, #1
20025a7e:	bf01      	itttt	eq
20025a80:	4b22      	ldreq	r3, [pc, #136]	@ (20025b0c <bbm_init_table+0x22c>)
20025a82:	1d22      	addeq	r2, r4, #4
20025a84:	f823 6012 	strheq.w	r6, [r3, r2, lsl #1]
20025a88:	3401      	addeq	r4, #1
20025a8a:	2c03      	cmp	r4, #3
20025a8c:	dc01      	bgt.n	20025a92 <bbm_init_table+0x1b2>
20025a8e:	3601      	adds	r6, #1
20025a90:	e7c9      	b.n	20025a26 <bbm_init_table+0x146>
20025a92:	2500      	movs	r5, #0
20025a94:	4c1d      	ldr	r4, [pc, #116]	@ (20025b0c <bbm_init_table+0x22c>)
20025a96:	2000      	movs	r0, #0
20025a98:	8921      	ldrh	r1, [r4, #8]
20025a9a:	f7ff fee5 	bl	20025868 <bbm_write_talbe.isra.0>
20025a9e:	8923      	ldrh	r3, [r4, #8]
20025aa0:	2001      	movs	r0, #1
20025aa2:	8961      	ldrh	r1, [r4, #10]
20025aa4:	8023      	strh	r3, [r4, #0]
20025aa6:	8223      	strh	r3, [r4, #16]
20025aa8:	8125      	strh	r5, [r4, #8]
20025aaa:	f7ff fedd 	bl	20025868 <bbm_write_talbe.isra.0>
20025aae:	8963      	ldrh	r3, [r4, #10]
20025ab0:	8165      	strh	r5, [r4, #10]
20025ab2:	80a3      	strh	r3, [r4, #4]
20025ab4:	8263      	strh	r3, [r4, #18]
20025ab6:	89a3      	ldrh	r3, [r4, #12]
20025ab8:	8063      	strh	r3, [r4, #2]
20025aba:	89e3      	ldrh	r3, [r4, #14]
20025abc:	80e3      	strh	r3, [r4, #6]
20025abe:	4b0a      	ldr	r3, [pc, #40]	@ (20025ae8 <bbm_init_table+0x208>)
20025ac0:	681b      	ldr	r3, [r3, #0]
20025ac2:	b10b      	cbz	r3, 20025ac8 <bbm_init_table+0x1e8>
20025ac4:	4812      	ldr	r0, [pc, #72]	@ (20025b10 <bbm_init_table+0x230>)
20025ac6:	4798      	blx	r3
20025ac8:	2000      	movs	r0, #0
20025aca:	b005      	add	sp, #20
20025acc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025ad0:	4b05      	ldr	r3, [pc, #20]	@ (20025ae8 <bbm_init_table+0x208>)
20025ad2:	681b      	ldr	r3, [r3, #0]
20025ad4:	b10b      	cbz	r3, 20025ada <bbm_init_table+0x1fa>
20025ad6:	480f      	ldr	r0, [pc, #60]	@ (20025b14 <bbm_init_table+0x234>)
20025ad8:	4798      	blx	r3
20025ada:	e7fe      	b.n	20025ada <bbm_init_table+0x1fa>
20025adc:	20049f8c 	.word	0x20049f8c
20025ae0:	5366424d 	.word	0x5366424d
20025ae4:	20049f80 	.word	0x20049f80
20025ae8:	20049f74 	.word	0x20049f74
20025aec:	2002acae 	.word	0x2002acae
20025af0:	2002ac3c 	.word	0x2002ac3c
20025af4:	2002ac5e 	.word	0x2002ac5e
20025af8:	2002ac7b 	.word	0x2002ac7b
20025afc:	2002ac9a 	.word	0x2002ac9a
20025b00:	20049fa4 	.word	0x20049fa4
20025b04:	2004a194 	.word	0x2004a194
20025b08:	2002acc8 	.word	0x2002acc8
20025b0c:	2004a39c 	.word	0x2004a39c
20025b10:	2002acef 	.word	0x2002acef
20025b14:	2002ad0b 	.word	0x2002ad0b
20025b18:	20049f84 	.word	0x20049f84
20025b1c:	20049f88 	.word	0x20049f88
20025b20:	20044900 	.word	0x20044900
20025b24:	20049f78 	.word	0x20049f78

20025b28 <sif_bbm_init>:
20025b28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025b2c:	b087      	sub	sp, #28
20025b2e:	2900      	cmp	r1, #0
20025b30:	f000 8129 	beq.w	20025d86 <sif_bbm_init+0x25e>
20025b34:	4b95      	ldr	r3, [pc, #596]	@ (20025d8c <sif_bbm_init+0x264>)
20025b36:	681a      	ldr	r2, [r3, #0]
20025b38:	2a01      	cmp	r2, #1
20025b3a:	d108      	bne.n	20025b4e <sif_bbm_init+0x26>
20025b3c:	4b94      	ldr	r3, [pc, #592]	@ (20025d90 <sif_bbm_init+0x268>)
20025b3e:	681b      	ldr	r3, [r3, #0]
20025b40:	b10b      	cbz	r3, 20025b46 <sif_bbm_init+0x1e>
20025b42:	4894      	ldr	r0, [pc, #592]	@ (20025d94 <sif_bbm_init+0x26c>)
20025b44:	4798      	blx	r3
20025b46:	2000      	movs	r0, #0
20025b48:	b007      	add	sp, #28
20025b4a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025b4e:	2201      	movs	r2, #1
20025b50:	601a      	str	r2, [r3, #0]
20025b52:	4b91      	ldr	r3, [pc, #580]	@ (20025d98 <sif_bbm_init+0x270>)
20025b54:	681c      	ldr	r4, [r3, #0]
20025b56:	b904      	cbnz	r4, 20025b5a <sif_bbm_init+0x32>
20025b58:	e7fe      	b.n	20025b58 <sif_bbm_init+0x30>
20025b5a:	f8df a27c 	ldr.w	sl, [pc, #636]	@ 20025dd8 <sif_bbm_init+0x2b0>
20025b5e:	f8da 2000 	ldr.w	r2, [sl]
20025b62:	b902      	cbnz	r2, 20025b66 <sif_bbm_init+0x3e>
20025b64:	e7fe      	b.n	20025b64 <sif_bbm_init+0x3c>
20025b66:	fbb0 f4f4 	udiv	r4, r0, r4
20025b6a:	f04f 0800 	mov.w	r8, #0
20025b6e:	4a8b      	ldr	r2, [pc, #556]	@ (20025d9c <sif_bbm_init+0x274>)
20025b70:	f8df b268 	ldr.w	fp, [pc, #616]	@ 20025ddc <sif_bbm_init+0x2b4>
20025b74:	0963      	lsrs	r3, r4, #5
20025b76:	f8df 9268 	ldr.w	r9, [pc, #616]	@ 20025de0 <sif_bbm_init+0x2b8>
20025b7a:	6013      	str	r3, [r2, #0]
20025b7c:	f8cb 4000 	str.w	r4, [fp]
20025b80:	1ae4      	subs	r4, r4, r3
20025b82:	4b87      	ldr	r3, [pc, #540]	@ (20025da0 <sif_bbm_init+0x278>)
20025b84:	2218      	movs	r2, #24
20025b86:	f8c9 1000 	str.w	r1, [r9]
20025b8a:	4886      	ldr	r0, [pc, #536]	@ (20025da4 <sif_bbm_init+0x27c>)
20025b8c:	2100      	movs	r1, #0
20025b8e:	601c      	str	r4, [r3, #0]
20025b90:	f004 fe38 	bl	2002a804 <memset>
20025b94:	f44f 6282 	mov.w	r2, #1040	@ 0x410
20025b98:	2100      	movs	r1, #0
20025b9a:	4883      	ldr	r0, [pc, #524]	@ (20025da8 <sif_bbm_init+0x280>)
20025b9c:	f004 fe32 	bl	2002a804 <memset>
20025ba0:	4647      	mov	r7, r8
20025ba2:	4646      	mov	r6, r8
20025ba4:	f8db 3000 	ldr.w	r3, [fp]
20025ba8:	429c      	cmp	r4, r3
20025baa:	db02      	blt.n	20025bb2 <sif_bbm_init+0x8a>
20025bac:	f04f 35ff 	mov.w	r5, #4294967295
20025bb0:	e064      	b.n	20025c7c <sif_bbm_init+0x154>
20025bb2:	4620      	mov	r0, r4
20025bb4:	f7fb f864 	bl	20020c80 <bbm_get_bb>
20025bb8:	4605      	mov	r5, r0
20025bba:	b138      	cbz	r0, 20025bcc <sif_bbm_init+0xa4>
20025bbc:	4b74      	ldr	r3, [pc, #464]	@ (20025d90 <sif_bbm_init+0x268>)
20025bbe:	681b      	ldr	r3, [r3, #0]
20025bc0:	b113      	cbz	r3, 20025bc8 <sif_bbm_init+0xa0>
20025bc2:	487a      	ldr	r0, [pc, #488]	@ (20025dac <sif_bbm_init+0x284>)
20025bc4:	1c61      	adds	r1, r4, #1
20025bc6:	4798      	blx	r3
20025bc8:	3401      	adds	r4, #1
20025bca:	e7eb      	b.n	20025ba4 <sif_bbm_init+0x7c>
20025bcc:	f8da 2000 	ldr.w	r2, [sl]
20025bd0:	21ff      	movs	r1, #255	@ 0xff
20025bd2:	f8d9 0000 	ldr.w	r0, [r9]
20025bd6:	9205      	str	r2, [sp, #20]
20025bd8:	f004 fe14 	bl	2002a804 <memset>
20025bdc:	9a05      	ldr	r2, [sp, #20]
20025bde:	e9cd 5501 	strd	r5, r5, [sp, #4]
20025be2:	9200      	str	r2, [sp, #0]
20025be4:	f8d9 3000 	ldr.w	r3, [r9]
20025be8:	462a      	mov	r2, r5
20025bea:	4629      	mov	r1, r5
20025bec:	4620      	mov	r0, r4
20025bee:	f7fa ffcb 	bl	20020b88 <port_read_page>
20025bf2:	f8da 3000 	ldr.w	r3, [sl]
20025bf6:	4298      	cmp	r0, r3
20025bf8:	d12e      	bne.n	20025c58 <sif_bbm_init+0x130>
20025bfa:	f8d9 1000 	ldr.w	r1, [r9]
20025bfe:	486c      	ldr	r0, [pc, #432]	@ (20025db0 <sif_bbm_init+0x288>)
20025c00:	680b      	ldr	r3, [r1, #0]
20025c02:	b2a2      	uxth	r2, r4
20025c04:	4283      	cmp	r3, r0
20025c06:	4b67      	ldr	r3, [pc, #412]	@ (20025da4 <sif_bbm_init+0x27c>)
20025c08:	d11f      	bne.n	20025c4a <sif_bbm_init+0x122>
20025c0a:	f991 1007 	ldrsb.w	r1, [r1, #7]
20025c0e:	2900      	cmp	r1, #0
20025c10:	bfb5      	itete	lt
20025c12:	eb03 0147 	addlt.w	r1, r3, r7, lsl #1
20025c16:	f823 2016 	strhge.w	r2, [r3, r6, lsl #1]
20025c1a:	808a      	strhlt	r2, [r1, #4]
20025c1c:	3601      	addge	r6, #1
20025c1e:	bfb8      	it	lt
20025c20:	3701      	addlt	r7, #1
20025c22:	eb06 0208 	add.w	r2, r6, r8
20025c26:	443a      	add	r2, r7
20025c28:	2a03      	cmp	r2, #3
20025c2a:	ddcd      	ble.n	20025bc8 <sif_bbm_init+0xa0>
20025c2c:	2e00      	cmp	r6, #0
20025c2e:	f000 8081 	beq.w	20025d34 <sif_bbm_init+0x20c>
20025c32:	2f00      	cmp	r7, #0
20025c34:	d07e      	beq.n	20025d34 <sif_bbm_init+0x20c>
20025c36:	2e01      	cmp	r6, #1
20025c38:	d001      	beq.n	20025c3e <sif_bbm_init+0x116>
20025c3a:	2f01      	cmp	r7, #1
20025c3c:	d11e      	bne.n	20025c7c <sif_bbm_init+0x154>
20025c3e:	8819      	ldrh	r1, [r3, #0]
20025c40:	891a      	ldrh	r2, [r3, #8]
20025c42:	b981      	cbnz	r1, 20025c66 <sif_bbm_init+0x13e>
20025c44:	801a      	strh	r2, [r3, #0]
20025c46:	895a      	ldrh	r2, [r3, #10]
20025c48:	e013      	b.n	20025c72 <sif_bbm_init+0x14a>
20025c4a:	f108 0104 	add.w	r1, r8, #4
20025c4e:	f823 2011 	strh.w	r2, [r3, r1, lsl #1]
20025c52:	f108 0801 	add.w	r8, r8, #1
20025c56:	e7e4      	b.n	20025c22 <sif_bbm_init+0xfa>
20025c58:	4b4d      	ldr	r3, [pc, #308]	@ (20025d90 <sif_bbm_init+0x268>)
20025c5a:	681b      	ldr	r3, [r3, #0]
20025c5c:	2b00      	cmp	r3, #0
20025c5e:	d0b3      	beq.n	20025bc8 <sif_bbm_init+0xa0>
20025c60:	4854      	ldr	r0, [pc, #336]	@ (20025db4 <sif_bbm_init+0x28c>)
20025c62:	1c61      	adds	r1, r4, #1
20025c64:	e7af      	b.n	20025bc6 <sif_bbm_init+0x9e>
20025c66:	8859      	ldrh	r1, [r3, #2]
20025c68:	b909      	cbnz	r1, 20025c6e <sif_bbm_init+0x146>
20025c6a:	805a      	strh	r2, [r3, #2]
20025c6c:	e7eb      	b.n	20025c46 <sif_bbm_init+0x11e>
20025c6e:	2a00      	cmp	r2, #0
20025c70:	d0e9      	beq.n	20025c46 <sif_bbm_init+0x11e>
20025c72:	8899      	ldrh	r1, [r3, #4]
20025c74:	2900      	cmp	r1, #0
20025c76:	d158      	bne.n	20025d2a <sif_bbm_init+0x202>
20025c78:	809a      	strh	r2, [r3, #4]
20025c7a:	2502      	movs	r5, #2
20025c7c:	f8df 9110 	ldr.w	r9, [pc, #272]	@ 20025d90 <sif_bbm_init+0x268>
20025c80:	f8d9 4000 	ldr.w	r4, [r9]
20025c84:	b124      	cbz	r4, 20025c90 <sif_bbm_init+0x168>
20025c86:	4643      	mov	r3, r8
20025c88:	463a      	mov	r2, r7
20025c8a:	4631      	mov	r1, r6
20025c8c:	484a      	ldr	r0, [pc, #296]	@ (20025db8 <sif_bbm_init+0x290>)
20025c8e:	47a0      	blx	r4
20025c90:	f8d9 3000 	ldr.w	r3, [r9]
20025c94:	b113      	cbz	r3, 20025c9c <sif_bbm_init+0x174>
20025c96:	4629      	mov	r1, r5
20025c98:	4848      	ldr	r0, [pc, #288]	@ (20025dbc <sif_bbm_init+0x294>)
20025c9a:	4798      	blx	r3
20025c9c:	f035 0002 	bics.w	r0, r5, #2
20025ca0:	d164      	bne.n	20025d6c <sif_bbm_init+0x244>
20025ca2:	f7ff fcc9 	bl	20025638 <bbm_get_map_table>
20025ca6:	4605      	mov	r5, r0
20025ca8:	2001      	movs	r0, #1
20025caa:	f7ff fcc5 	bl	20025638 <bbm_get_map_table>
20025cae:	f8d9 6000 	ldr.w	r6, [r9]
20025cb2:	4604      	mov	r4, r0
20025cb4:	b13e      	cbz	r6, 20025cc6 <sif_bbm_init+0x19e>
20025cb6:	4a3b      	ldr	r2, [pc, #236]	@ (20025da4 <sif_bbm_init+0x27c>)
20025cb8:	4629      	mov	r1, r5
20025cba:	8a53      	ldrh	r3, [r2, #18]
20025cbc:	9300      	str	r3, [sp, #0]
20025cbe:	8a12      	ldrh	r2, [r2, #16]
20025cc0:	4603      	mov	r3, r0
20025cc2:	483f      	ldr	r0, [pc, #252]	@ (20025dc0 <sif_bbm_init+0x298>)
20025cc4:	47b0      	blx	r6
20025cc6:	42a5      	cmp	r5, r4
20025cc8:	4c37      	ldr	r4, [pc, #220]	@ (20025da8 <sif_bbm_init+0x280>)
20025cca:	dd35      	ble.n	20025d38 <sif_bbm_init+0x210>
20025ccc:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025cd0:	4621      	mov	r1, r4
20025cd2:	18a0      	adds	r0, r4, r2
20025cd4:	f004 fdb0 	bl	2002a838 <memcpy>
20025cd8:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025cdc:	2110      	movs	r1, #16
20025cde:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025ce2:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025ce6:	f504 7002 	add.w	r0, r4, #520	@ 0x208
20025cea:	f7ff fbf1 	bl	200254d0 <bbm_crc_check>
20025cee:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
20025cf2:	2001      	movs	r0, #1
20025cf4:	4b2b      	ldr	r3, [pc, #172]	@ (20025da4 <sif_bbm_init+0x27c>)
20025cf6:	8a59      	ldrh	r1, [r3, #18]
20025cf8:	f7ff fdb6 	bl	20025868 <bbm_write_talbe.isra.0>
20025cfc:	6822      	ldr	r2, [r4, #0]
20025cfe:	4b2c      	ldr	r3, [pc, #176]	@ (20025db0 <sif_bbm_init+0x288>)
20025d00:	429a      	cmp	r2, r3
20025d02:	d12d      	bne.n	20025d60 <sif_bbm_init+0x238>
20025d04:	4828      	ldr	r0, [pc, #160]	@ (20025da8 <sif_bbm_init+0x280>)
20025d06:	f7ff fb93 	bl	20025430 <bbm_map_check.part.0>
20025d0a:	f8d9 4000 	ldr.w	r4, [r9]
20025d0e:	b12c      	cbz	r4, 20025d1c <sif_bbm_init+0x1f4>
20025d10:	4b2c      	ldr	r3, [pc, #176]	@ (20025dc4 <sif_bbm_init+0x29c>)
20025d12:	4924      	ldr	r1, [pc, #144]	@ (20025da4 <sif_bbm_init+0x27c>)
20025d14:	482c      	ldr	r0, [pc, #176]	@ (20025dc8 <sif_bbm_init+0x2a0>)
20025d16:	f5a3 7202 	sub.w	r2, r3, #520	@ 0x208
20025d1a:	47a0      	blx	r4
20025d1c:	f8d9 3000 	ldr.w	r3, [r9]
20025d20:	2b00      	cmp	r3, #0
20025d22:	f43f af10 	beq.w	20025b46 <sif_bbm_init+0x1e>
20025d26:	4829      	ldr	r0, [pc, #164]	@ (20025dcc <sif_bbm_init+0x2a4>)
20025d28:	e70c      	b.n	20025b44 <sif_bbm_init+0x1c>
20025d2a:	88d9      	ldrh	r1, [r3, #6]
20025d2c:	2900      	cmp	r1, #0
20025d2e:	d1a4      	bne.n	20025c7a <sif_bbm_init+0x152>
20025d30:	80da      	strh	r2, [r3, #6]
20025d32:	e7a2      	b.n	20025c7a <sif_bbm_init+0x152>
20025d34:	2501      	movs	r5, #1
20025d36:	e7a1      	b.n	20025c7c <sif_bbm_init+0x154>
20025d38:	dae0      	bge.n	20025cfc <sif_bbm_init+0x1d4>
20025d3a:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025d3e:	4620      	mov	r0, r4
20025d40:	18a1      	adds	r1, r4, r2
20025d42:	f004 fd79 	bl	2002a838 <memcpy>
20025d46:	79e3      	ldrb	r3, [r4, #7]
20025d48:	2110      	movs	r1, #16
20025d4a:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
20025d4e:	71e3      	strb	r3, [r4, #7]
20025d50:	4620      	mov	r0, r4
20025d52:	f7ff fbbd 	bl	200254d0 <bbm_crc_check>
20025d56:	4b13      	ldr	r3, [pc, #76]	@ (20025da4 <sif_bbm_init+0x27c>)
20025d58:	6120      	str	r0, [r4, #16]
20025d5a:	8a19      	ldrh	r1, [r3, #16]
20025d5c:	2000      	movs	r0, #0
20025d5e:	e7cb      	b.n	20025cf8 <sif_bbm_init+0x1d0>
20025d60:	f8d9 3000 	ldr.w	r3, [r9]
20025d64:	b10b      	cbz	r3, 20025d6a <sif_bbm_init+0x242>
20025d66:	481a      	ldr	r0, [pc, #104]	@ (20025dd0 <sif_bbm_init+0x2a8>)
20025d68:	4798      	blx	r3
20025d6a:	e7fe      	b.n	20025d6a <sif_bbm_init+0x242>
20025d6c:	2d01      	cmp	r5, #1
20025d6e:	d102      	bne.n	20025d76 <sif_bbm_init+0x24e>
20025d70:	f7ff fdb6 	bl	200258e0 <bbm_init_table>
20025d74:	e7c9      	b.n	20025d0a <sif_bbm_init+0x1e2>
20025d76:	f8d9 3000 	ldr.w	r3, [r9]
20025d7a:	b11b      	cbz	r3, 20025d84 <sif_bbm_init+0x25c>
20025d7c:	f04f 31ff 	mov.w	r1, #4294967295
20025d80:	4814      	ldr	r0, [pc, #80]	@ (20025dd4 <sif_bbm_init+0x2ac>)
20025d82:	4798      	blx	r3
20025d84:	e7fe      	b.n	20025d84 <sif_bbm_init+0x25c>
20025d86:	f04f 30ff 	mov.w	r0, #4294967295
20025d8a:	e6dd      	b.n	20025b48 <sif_bbm_init+0x20>
20025d8c:	20049f7c 	.word	0x20049f7c
20025d90:	20049f74 	.word	0x20049f74
20025d94:	2002ad1f 	.word	0x2002ad1f
20025d98:	20044904 	.word	0x20044904
20025d9c:	20049f84 	.word	0x20049f84
20025da0:	20049f88 	.word	0x20049f88
20025da4:	2004a39c 	.word	0x2004a39c
20025da8:	20049f8c 	.word	0x20049f8c
20025dac:	2002ad4d 	.word	0x2002ad4d
20025db0:	5366424d 	.word	0x5366424d
20025db4:	2002ad59 	.word	0x2002ad59
20025db8:	2002ad78 	.word	0x2002ad78
20025dbc:	2002ad97 	.word	0x2002ad97
20025dc0:	2002ada9 	.word	0x2002ada9
20025dc4:	2004a194 	.word	0x2004a194
20025dc8:	2002ae04 	.word	0x2002ae04
20025dcc:	2002ae28 	.word	0x2002ae28
20025dd0:	2002adcd 	.word	0x2002adcd
20025dd4:	2002ade3 	.word	0x2002ade3
20025dd8:	20044900 	.word	0x20044900
20025ddc:	20049f80 	.word	0x20049f80
20025de0:	20049f78 	.word	0x20049f78

20025de4 <bbm_set_page_size>:
20025de4:	4b01      	ldr	r3, [pc, #4]	@ (20025dec <bbm_set_page_size+0x8>)
20025de6:	6018      	str	r0, [r3, #0]
20025de8:	4770      	bx	lr
20025dea:	bf00      	nop
20025dec:	20044900 	.word	0x20044900

20025df0 <bbm_set_blk_size>:
20025df0:	4b01      	ldr	r3, [pc, #4]	@ (20025df8 <bbm_set_blk_size+0x8>)
20025df2:	6018      	str	r0, [r3, #0]
20025df4:	4770      	bx	lr
20025df6:	bf00      	nop
20025df8:	20044904 	.word	0x20044904

20025dfc <mbedtls_md_info_from_type>:
20025dfc:	3805      	subs	r0, #5
20025dfe:	b2c0      	uxtb	r0, r0
20025e00:	2803      	cmp	r0, #3
20025e02:	bf9a      	itte	ls
20025e04:	4b02      	ldrls	r3, [pc, #8]	@ (20025e10 <mbedtls_md_info_from_type+0x14>)
20025e06:	f853 0020 	ldrls.w	r0, [r3, r0, lsl #2]
20025e0a:	2000      	movhi	r0, #0
20025e0c:	4770      	bx	lr
20025e0e:	bf00      	nop
20025e10:	2002bc7c 	.word	0x2002bc7c

20025e14 <mbedtls_md_get_size>:
20025e14:	b100      	cbz	r0, 20025e18 <mbedtls_md_get_size+0x4>
20025e16:	7a00      	ldrb	r0, [r0, #8]
20025e18:	4770      	bx	lr

20025e1a <sha224_process_wrap>:
20025e1a:	f000 b8a9 	b.w	20025f70 <mbedtls_sha256_process>

20025e1e <sha224_clone_wrap>:
20025e1e:	f000 b85a 	b.w	20025ed6 <mbedtls_sha256_clone>

20025e22 <sha224_ctx_free>:
20025e22:	b510      	push	{r4, lr}
20025e24:	4604      	mov	r4, r0
20025e26:	f000 f84c 	bl	20025ec2 <mbedtls_sha256_free>
20025e2a:	4620      	mov	r0, r4
20025e2c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20025e30:	f004 bc22 	b.w	2002a678 <free>

20025e34 <sha224_ctx_alloc>:
20025e34:	b510      	push	{r4, lr}
20025e36:	216c      	movs	r1, #108	@ 0x6c
20025e38:	2001      	movs	r0, #1
20025e3a:	f004 fc01 	bl	2002a640 <calloc>
20025e3e:	4604      	mov	r4, r0
20025e40:	b108      	cbz	r0, 20025e46 <sha224_ctx_alloc+0x12>
20025e42:	f000 f83a 	bl	20025eba <mbedtls_sha256_init>
20025e46:	4620      	mov	r0, r4
20025e48:	bd10      	pop	{r4, pc}

20025e4a <sha224_wrap>:
20025e4a:	2301      	movs	r3, #1
20025e4c:	f000 bc94 	b.w	20026778 <mbedtls_sha256>

20025e50 <sha256_wrap>:
20025e50:	2300      	movs	r3, #0
20025e52:	f000 bc91 	b.w	20026778 <mbedtls_sha256>

20025e56 <sha224_finish_wrap>:
20025e56:	f000 bc21 	b.w	2002669c <mbedtls_sha256_finish>

20025e5a <sha224_update_wrap>:
20025e5a:	f000 bc1b 	b.w	20026694 <mbedtls_sha256_update>

20025e5e <sha224_starts_wrap>:
20025e5e:	2101      	movs	r1, #1
20025e60:	f000 b83e 	b.w	20025ee0 <mbedtls_sha256_starts>

20025e64 <sha256_starts_wrap>:
20025e64:	2100      	movs	r1, #0
20025e66:	f000 b83b 	b.w	20025ee0 <mbedtls_sha256_starts>

20025e6a <sha384_process_wrap>:
20025e6a:	f000 bd8d 	b.w	20026988 <mbedtls_sha512_process>

20025e6e <sha384_clone_wrap>:
20025e6e:	f000 bcf5 	b.w	2002685c <mbedtls_sha512_clone>

20025e72 <sha384_ctx_free>:
20025e72:	b510      	push	{r4, lr}
20025e74:	4604      	mov	r4, r0
20025e76:	f000 fce7 	bl	20026848 <mbedtls_sha512_free>
20025e7a:	4620      	mov	r0, r4
20025e7c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20025e80:	f004 bbfa 	b.w	2002a678 <free>

20025e84 <sha384_ctx_alloc>:
20025e84:	b510      	push	{r4, lr}
20025e86:	21d8      	movs	r1, #216	@ 0xd8
20025e88:	2001      	movs	r0, #1
20025e8a:	f004 fbd9 	bl	2002a640 <calloc>
20025e8e:	4604      	mov	r4, r0
20025e90:	b108      	cbz	r0, 20025e96 <sha384_ctx_alloc+0x12>
20025e92:	f000 fcd5 	bl	20026840 <mbedtls_sha512_init>
20025e96:	4620      	mov	r0, r4
20025e98:	bd10      	pop	{r4, pc}

20025e9a <sha384_wrap>:
20025e9a:	2301      	movs	r3, #1
20025e9c:	f001 bbf8 	b.w	20027690 <mbedtls_sha512>

20025ea0 <sha512_wrap>:
20025ea0:	2300      	movs	r3, #0
20025ea2:	f001 bbf5 	b.w	20027690 <mbedtls_sha512>

20025ea6 <sha384_finish_wrap>:
20025ea6:	f001 baed 	b.w	20027484 <mbedtls_sha512_finish>

20025eaa <sha384_update_wrap>:
20025eaa:	f001 bae6 	b.w	2002747a <mbedtls_sha512_update>

20025eae <sha384_starts_wrap>:
20025eae:	2101      	movs	r1, #1
20025eb0:	f000 bcda 	b.w	20026868 <mbedtls_sha512_starts>

20025eb4 <sha512_starts_wrap>:
20025eb4:	2100      	movs	r1, #0
20025eb6:	f000 bcd7 	b.w	20026868 <mbedtls_sha512_starts>

20025eba <mbedtls_sha256_init>:
20025eba:	226c      	movs	r2, #108	@ 0x6c
20025ebc:	2100      	movs	r1, #0
20025ebe:	f004 bca1 	b.w	2002a804 <memset>

20025ec2 <mbedtls_sha256_free>:
20025ec2:	b138      	cbz	r0, 20025ed4 <mbedtls_sha256_free+0x12>
20025ec4:	2100      	movs	r1, #0
20025ec6:	f100 036c 	add.w	r3, r0, #108	@ 0x6c
20025eca:	4602      	mov	r2, r0
20025ecc:	3001      	adds	r0, #1
20025ece:	4298      	cmp	r0, r3
20025ed0:	7011      	strb	r1, [r2, #0]
20025ed2:	d1fa      	bne.n	20025eca <mbedtls_sha256_free+0x8>
20025ed4:	4770      	bx	lr

20025ed6 <mbedtls_sha256_clone>:
20025ed6:	b508      	push	{r3, lr}
20025ed8:	226c      	movs	r2, #108	@ 0x6c
20025eda:	f004 fcad 	bl	2002a838 <memcpy>
20025ede:	bd08      	pop	{r3, pc}

20025ee0 <mbedtls_sha256_starts>:
20025ee0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20025ee4:	b1c1      	cbz	r1, 20025f18 <mbedtls_sha256_starts+0x38>
20025ee6:	f8df e078 	ldr.w	lr, [pc, #120]	@ 20025f60 <mbedtls_sha256_starts+0x80>
20025eea:	f8df c078 	ldr.w	ip, [pc, #120]	@ 20025f64 <mbedtls_sha256_starts+0x84>
20025eee:	4f10      	ldr	r7, [pc, #64]	@ (20025f30 <mbedtls_sha256_starts+0x50>)
20025ef0:	4e10      	ldr	r6, [pc, #64]	@ (20025f34 <mbedtls_sha256_starts+0x54>)
20025ef2:	4d11      	ldr	r5, [pc, #68]	@ (20025f38 <mbedtls_sha256_starts+0x58>)
20025ef4:	4c11      	ldr	r4, [pc, #68]	@ (20025f3c <mbedtls_sha256_starts+0x5c>)
20025ef6:	4a12      	ldr	r2, [pc, #72]	@ (20025f40 <mbedtls_sha256_starts+0x60>)
20025ef8:	4b12      	ldr	r3, [pc, #72]	@ (20025f44 <mbedtls_sha256_starts+0x64>)
20025efa:	f04f 0800 	mov.w	r8, #0
20025efe:	e9c0 ec02 	strd	lr, ip, [r0, #8]
20025f02:	e9c0 8800 	strd	r8, r8, [r0]
20025f06:	e9c0 7604 	strd	r7, r6, [r0, #16]
20025f0a:	e9c0 5406 	strd	r5, r4, [r0, #24]
20025f0e:	e9c0 2308 	strd	r2, r3, [r0, #32]
20025f12:	6681      	str	r1, [r0, #104]	@ 0x68
20025f14:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20025f18:	f8df e04c 	ldr.w	lr, [pc, #76]	@ 20025f68 <mbedtls_sha256_starts+0x88>
20025f1c:	f8df c04c 	ldr.w	ip, [pc, #76]	@ 20025f6c <mbedtls_sha256_starts+0x8c>
20025f20:	4f09      	ldr	r7, [pc, #36]	@ (20025f48 <mbedtls_sha256_starts+0x68>)
20025f22:	4e0a      	ldr	r6, [pc, #40]	@ (20025f4c <mbedtls_sha256_starts+0x6c>)
20025f24:	4d0a      	ldr	r5, [pc, #40]	@ (20025f50 <mbedtls_sha256_starts+0x70>)
20025f26:	4c0b      	ldr	r4, [pc, #44]	@ (20025f54 <mbedtls_sha256_starts+0x74>)
20025f28:	4a0b      	ldr	r2, [pc, #44]	@ (20025f58 <mbedtls_sha256_starts+0x78>)
20025f2a:	4b0c      	ldr	r3, [pc, #48]	@ (20025f5c <mbedtls_sha256_starts+0x7c>)
20025f2c:	e7e5      	b.n	20025efa <mbedtls_sha256_starts+0x1a>
20025f2e:	bf00      	nop
20025f30:	3070dd17 	.word	0x3070dd17
20025f34:	f70e5939 	.word	0xf70e5939
20025f38:	ffc00b31 	.word	0xffc00b31
20025f3c:	68581511 	.word	0x68581511
20025f40:	64f98fa7 	.word	0x64f98fa7
20025f44:	befa4fa4 	.word	0xbefa4fa4
20025f48:	3c6ef372 	.word	0x3c6ef372
20025f4c:	a54ff53a 	.word	0xa54ff53a
20025f50:	510e527f 	.word	0x510e527f
20025f54:	9b05688c 	.word	0x9b05688c
20025f58:	1f83d9ab 	.word	0x1f83d9ab
20025f5c:	5be0cd19 	.word	0x5be0cd19
20025f60:	c1059ed8 	.word	0xc1059ed8
20025f64:	367cd507 	.word	0x367cd507
20025f68:	6a09e667 	.word	0x6a09e667
20025f6c:	bb67ae85 	.word	0xbb67ae85

20025f70 <mbedtls_sha256_process>:
20025f70:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025f74:	b0cf      	sub	sp, #316	@ 0x13c
20025f76:	aa06      	add	r2, sp, #24
20025f78:	460b      	mov	r3, r1
20025f7a:	4616      	mov	r6, r2
20025f7c:	9004      	str	r0, [sp, #16]
20025f7e:	f100 0408 	add.w	r4, r0, #8
20025f82:	f100 0728 	add.w	r7, r0, #40	@ 0x28
20025f86:	4635      	mov	r5, r6
20025f88:	6820      	ldr	r0, [r4, #0]
20025f8a:	6861      	ldr	r1, [r4, #4]
20025f8c:	3408      	adds	r4, #8
20025f8e:	c503      	stmia	r5!, {r0, r1}
20025f90:	42bc      	cmp	r4, r7
20025f92:	462e      	mov	r6, r5
20025f94:	d1f7      	bne.n	20025f86 <mbedtls_sha256_process+0x16>
20025f96:	f10d 0a38 	add.w	sl, sp, #56	@ 0x38
20025f9a:	4619      	mov	r1, r3
20025f9c:	4650      	mov	r0, sl
20025f9e:	f103 0440 	add.w	r4, r3, #64	@ 0x40
20025fa2:	784b      	ldrb	r3, [r1, #1]
20025fa4:	780d      	ldrb	r5, [r1, #0]
20025fa6:	041b      	lsls	r3, r3, #16
20025fa8:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
20025fac:	78cd      	ldrb	r5, [r1, #3]
20025fae:	3104      	adds	r1, #4
20025fb0:	432b      	orrs	r3, r5
20025fb2:	f811 5c02 	ldrb.w	r5, [r1, #-2]
20025fb6:	428c      	cmp	r4, r1
20025fb8:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
20025fbc:	f840 3b04 	str.w	r3, [r0], #4
20025fc0:	d1ef      	bne.n	20025fa2 <mbedtls_sha256_process+0x32>
20025fc2:	4996      	ldr	r1, [pc, #600]	@ (2002621c <mbedtls_sha256_process+0x2ac>)
20025fc4:	46d4      	mov	ip, sl
20025fc6:	e9d2 e705 	ldrd	lr, r7, [r2, #20]
20025fca:	e9d2 9600 	ldrd	r9, r6, [r2]
20025fce:	460d      	mov	r5, r1
20025fd0:	9100      	str	r1, [sp, #0]
20025fd2:	f8d2 801c 	ldr.w	r8, [r2, #28]
20025fd6:	f8d2 b010 	ldr.w	fp, [r2, #16]
20025fda:	e9d2 3202 	ldrd	r3, r2, [r2, #8]
20025fde:	6829      	ldr	r1, [r5, #0]
20025fe0:	f8dc 0000 	ldr.w	r0, [ip]
20025fe4:	ea4f 24fb 	mov.w	r4, fp, ror #11
20025fe8:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
20025fec:	4401      	add	r1, r0
20025fee:	ea87 000e 	eor.w	r0, r7, lr
20025ff2:	ea84 647b 	eor.w	r4, r4, fp, ror #25
20025ff6:	ea00 000b 	and.w	r0, r0, fp
20025ffa:	4078      	eors	r0, r7
20025ffc:	4421      	add	r1, r4
20025ffe:	4401      	add	r1, r0
20026000:	4441      	add	r1, r8
20026002:	ea4f 3879 	mov.w	r8, r9, ror #13
20026006:	ea88 08b9 	eor.w	r8, r8, r9, ror #2
2002600a:	ea88 58b9 	eor.w	r8, r8, r9, ror #22
2002600e:	440a      	add	r2, r1
20026010:	4488      	add	r8, r1
20026012:	ea49 0106 	orr.w	r1, r9, r6
20026016:	ea09 0006 	and.w	r0, r9, r6
2002601a:	4019      	ands	r1, r3
2002601c:	4301      	orrs	r1, r0
2002601e:	4488      	add	r8, r1
20026020:	f8dc 0004 	ldr.w	r0, [ip, #4]
20026024:	6869      	ldr	r1, [r5, #4]
20026026:	ea4f 3478 	mov.w	r4, r8, ror #13
2002602a:	4401      	add	r1, r0
2002602c:	ea8b 000e 	eor.w	r0, fp, lr
20026030:	4010      	ands	r0, r2
20026032:	ea80 000e 	eor.w	r0, r0, lr
20026036:	4439      	add	r1, r7
20026038:	4401      	add	r1, r0
2002603a:	ea4f 20f2 	mov.w	r0, r2, ror #11
2002603e:	ea80 10b2 	eor.w	r0, r0, r2, ror #6
20026042:	ea80 6072 	eor.w	r0, r0, r2, ror #25
20026046:	ea84 04b8 	eor.w	r4, r4, r8, ror #2
2002604a:	4401      	add	r1, r0
2002604c:	ea84 54b8 	eor.w	r4, r4, r8, ror #22
20026050:	440b      	add	r3, r1
20026052:	440c      	add	r4, r1
20026054:	ea48 0109 	orr.w	r1, r8, r9
20026058:	ea08 0009 	and.w	r0, r8, r9
2002605c:	4031      	ands	r1, r6
2002605e:	4301      	orrs	r1, r0
20026060:	440c      	add	r4, r1
20026062:	f8dc 0008 	ldr.w	r0, [ip, #8]
20026066:	68a9      	ldr	r1, [r5, #8]
20026068:	ea82 0703 	eor.w	r7, r2, r3
2002606c:	4401      	add	r1, r0
2002606e:	ea82 000b 	eor.w	r0, r2, fp
20026072:	4018      	ands	r0, r3
20026074:	ea80 000b 	eor.w	r0, r0, fp
20026078:	4471      	add	r1, lr
2002607a:	4401      	add	r1, r0
2002607c:	ea4f 20f3 	mov.w	r0, r3, ror #11
20026080:	ea80 10b3 	eor.w	r0, r0, r3, ror #6
20026084:	ea80 6073 	eor.w	r0, r0, r3, ror #25
20026088:	4401      	add	r1, r0
2002608a:	ea4f 3074 	mov.w	r0, r4, ror #13
2002608e:	ea80 00b4 	eor.w	r0, r0, r4, ror #2
20026092:	ea80 50b4 	eor.w	r0, r0, r4, ror #22
20026096:	eb06 0e01 	add.w	lr, r6, r1
2002609a:	4408      	add	r0, r1
2002609c:	ea48 0104 	orr.w	r1, r8, r4
200260a0:	ea08 0604 	and.w	r6, r8, r4
200260a4:	ea01 0109 	and.w	r1, r1, r9
200260a8:	4331      	orrs	r1, r6
200260aa:	4408      	add	r0, r1
200260ac:	f8dc 600c 	ldr.w	r6, [ip, #12]
200260b0:	68e9      	ldr	r1, [r5, #12]
200260b2:	ea07 070e 	and.w	r7, r7, lr
200260b6:	440e      	add	r6, r1
200260b8:	ea4f 21fe 	mov.w	r1, lr, ror #11
200260bc:	4057      	eors	r7, r2
200260be:	445e      	add	r6, fp
200260c0:	ea81 11be 	eor.w	r1, r1, lr, ror #6
200260c4:	ea81 617e 	eor.w	r1, r1, lr, ror #25
200260c8:	443e      	add	r6, r7
200260ca:	440e      	add	r6, r1
200260cc:	ea4f 3170 	mov.w	r1, r0, ror #13
200260d0:	ea81 01b0 	eor.w	r1, r1, r0, ror #2
200260d4:	ea81 51b0 	eor.w	r1, r1, r0, ror #22
200260d8:	44b1      	add	r9, r6
200260da:	4431      	add	r1, r6
200260dc:	ea44 0600 	orr.w	r6, r4, r0
200260e0:	ea04 0700 	and.w	r7, r4, r0
200260e4:	ea06 0608 	and.w	r6, r6, r8
200260e8:	433e      	orrs	r6, r7
200260ea:	4431      	add	r1, r6
200260ec:	f8dc 7010 	ldr.w	r7, [ip, #16]
200260f0:	692e      	ldr	r6, [r5, #16]
200260f2:	3520      	adds	r5, #32
200260f4:	443e      	add	r6, r7
200260f6:	4416      	add	r6, r2
200260f8:	ea83 020e 	eor.w	r2, r3, lr
200260fc:	ea02 0209 	and.w	r2, r2, r9
20026100:	405a      	eors	r2, r3
20026102:	4416      	add	r6, r2
20026104:	ea4f 22f9 	mov.w	r2, r9, ror #11
20026108:	ea82 12b9 	eor.w	r2, r2, r9, ror #6
2002610c:	ea82 6279 	eor.w	r2, r2, r9, ror #25
20026110:	4416      	add	r6, r2
20026112:	ea4f 3271 	mov.w	r2, r1, ror #13
20026116:	ea82 02b1 	eor.w	r2, r2, r1, ror #2
2002611a:	ea82 52b1 	eor.w	r2, r2, r1, ror #22
2002611e:	44b0      	add	r8, r6
20026120:	4432      	add	r2, r6
20026122:	ea40 0601 	orr.w	r6, r0, r1
20026126:	ea00 0701 	and.w	r7, r0, r1
2002612a:	4026      	ands	r6, r4
2002612c:	433e      	orrs	r6, r7
2002612e:	4432      	add	r2, r6
20026130:	f8dc 7014 	ldr.w	r7, [ip, #20]
20026134:	f855 6c0c 	ldr.w	r6, [r5, #-12]
20026138:	f10c 0c20 	add.w	ip, ip, #32
2002613c:	443e      	add	r6, r7
2002613e:	441e      	add	r6, r3
20026140:	ea8e 0309 	eor.w	r3, lr, r9
20026144:	ea03 0308 	and.w	r3, r3, r8
20026148:	ea83 030e 	eor.w	r3, r3, lr
2002614c:	441e      	add	r6, r3
2002614e:	ea4f 23f8 	mov.w	r3, r8, ror #11
20026152:	ea83 13b8 	eor.w	r3, r3, r8, ror #6
20026156:	ea83 6378 	eor.w	r3, r3, r8, ror #25
2002615a:	441e      	add	r6, r3
2002615c:	ea4f 3372 	mov.w	r3, r2, ror #13
20026160:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
20026164:	19a7      	adds	r7, r4, r6
20026166:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
2002616a:	ea41 0402 	orr.w	r4, r1, r2
2002616e:	4433      	add	r3, r6
20026170:	4004      	ands	r4, r0
20026172:	ea01 0602 	and.w	r6, r1, r2
20026176:	4334      	orrs	r4, r6
20026178:	4423      	add	r3, r4
2002617a:	f85c 6c08 	ldr.w	r6, [ip, #-8]
2002617e:	f855 4c08 	ldr.w	r4, [r5, #-8]
20026182:	4434      	add	r4, r6
20026184:	ea89 0608 	eor.w	r6, r9, r8
20026188:	403e      	ands	r6, r7
2002618a:	ea86 0609 	eor.w	r6, r6, r9
2002618e:	4474      	add	r4, lr
20026190:	4434      	add	r4, r6
20026192:	ea4f 26f7 	mov.w	r6, r7, ror #11
20026196:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
2002619a:	ea86 6677 	eor.w	r6, r6, r7, ror #25
2002619e:	4434      	add	r4, r6
200261a0:	eb00 0e04 	add.w	lr, r0, r4
200261a4:	ea4f 3073 	mov.w	r0, r3, ror #13
200261a8:	ea80 00b3 	eor.w	r0, r0, r3, ror #2
200261ac:	ea80 50b3 	eor.w	r0, r0, r3, ror #22
200261b0:	4420      	add	r0, r4
200261b2:	ea42 0403 	orr.w	r4, r2, r3
200261b6:	400c      	ands	r4, r1
200261b8:	ea02 0603 	and.w	r6, r2, r3
200261bc:	4334      	orrs	r4, r6
200261be:	1906      	adds	r6, r0, r4
200261c0:	f855 0c04 	ldr.w	r0, [r5, #-4]
200261c4:	f85c 4c04 	ldr.w	r4, [ip, #-4]
200261c8:	4420      	add	r0, r4
200261ca:	ea88 0407 	eor.w	r4, r8, r7
200261ce:	ea04 040e 	and.w	r4, r4, lr
200261d2:	4448      	add	r0, r9
200261d4:	ea84 0408 	eor.w	r4, r4, r8
200261d8:	4420      	add	r0, r4
200261da:	ea4f 24fe 	mov.w	r4, lr, ror #11
200261de:	ea84 14be 	eor.w	r4, r4, lr, ror #6
200261e2:	ea84 647e 	eor.w	r4, r4, lr, ror #25
200261e6:	4420      	add	r0, r4
200261e8:	eb01 0b00 	add.w	fp, r1, r0
200261ec:	ea4f 3176 	mov.w	r1, r6, ror #13
200261f0:	ea81 01b6 	eor.w	r1, r1, r6, ror #2
200261f4:	ea81 51b6 	eor.w	r1, r1, r6, ror #22
200261f8:	4401      	add	r1, r0
200261fa:	ea43 0006 	orr.w	r0, r3, r6
200261fe:	4010      	ands	r0, r2
20026200:	ea03 0406 	and.w	r4, r3, r6
20026204:	4320      	orrs	r0, r4
20026206:	eb01 0900 	add.w	r9, r1, r0
2002620a:	4905      	ldr	r1, [pc, #20]	@ (20026220 <mbedtls_sha256_process+0x2b0>)
2002620c:	42a9      	cmp	r1, r5
2002620e:	f47f aee6 	bne.w	20025fde <mbedtls_sha256_process+0x6e>
20026212:	f10a 01c0 	add.w	r1, sl, #192	@ 0xc0
20026216:	9105      	str	r1, [sp, #20]
20026218:	e004      	b.n	20026224 <mbedtls_sha256_process+0x2b4>
2002621a:	bf00      	nop
2002621c:	2002bd8c 	.word	0x2002bd8c
20026220:	2002bdcc 	.word	0x2002bdcc
20026224:	f8da 1038 	ldr.w	r1, [sl, #56]	@ 0x38
20026228:	f8da 5004 	ldr.w	r5, [sl, #4]
2002622c:	ea4f 44f1 	mov.w	r4, r1, ror #19
20026230:	ea84 4471 	eor.w	r4, r4, r1, ror #17
20026234:	f8da 0000 	ldr.w	r0, [sl]
20026238:	ea84 2491 	eor.w	r4, r4, r1, lsr #10
2002623c:	f8da 1024 	ldr.w	r1, [sl, #36]	@ 0x24
20026240:	f10a 0a20 	add.w	sl, sl, #32
20026244:	4401      	add	r1, r0
20026246:	ea4f 40b5 	mov.w	r0, r5, ror #18
2002624a:	ea80 10f5 	eor.w	r0, r0, r5, ror #7
2002624e:	ea80 00d5 	eor.w	r0, r0, r5, lsr #3
20026252:	4421      	add	r1, r4
20026254:	4401      	add	r1, r0
20026256:	9103      	str	r1, [sp, #12]
20026258:	ea87 000e 	eor.w	r0, r7, lr
2002625c:	9900      	ldr	r1, [sp, #0]
2002625e:	ea4f 24fb 	mov.w	r4, fp, ror #11
20026262:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
20026266:	ea00 000b 	and.w	r0, r0, fp
2002626a:	ea84 647b 	eor.w	r4, r4, fp, ror #25
2002626e:	6c09      	ldr	r1, [r1, #64]	@ 0x40
20026270:	4078      	eors	r0, r7
20026272:	4420      	add	r0, r4
20026274:	4401      	add	r1, r0
20026276:	9803      	ldr	r0, [sp, #12]
20026278:	ea4f 3479 	mov.w	r4, r9, ror #13
2002627c:	4401      	add	r1, r0
2002627e:	4441      	add	r1, r8
20026280:	eb02 0801 	add.w	r8, r2, r1
20026284:	ea49 0206 	orr.w	r2, r9, r6
20026288:	f8ca 0020 	str.w	r0, [sl, #32]
2002628c:	ea84 04b9 	eor.w	r4, r4, r9, ror #2
20026290:	ea09 0006 	and.w	r0, r9, r6
20026294:	401a      	ands	r2, r3
20026296:	4302      	orrs	r2, r0
20026298:	ea84 54b9 	eor.w	r4, r4, r9, ror #22
2002629c:	4414      	add	r4, r2
2002629e:	f8da 201c 	ldr.w	r2, [sl, #28]
200262a2:	440c      	add	r4, r1
200262a4:	ea4f 4cf2 	mov.w	ip, r2, ror #19
200262a8:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
200262ac:	f85a 1c18 	ldr.w	r1, [sl, #-24]
200262b0:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
200262b4:	f8da 2008 	ldr.w	r2, [sl, #8]
200262b8:	18a8      	adds	r0, r5, r2
200262ba:	ea4f 42b1 	mov.w	r2, r1, ror #18
200262be:	ea82 12f1 	eor.w	r2, r2, r1, ror #7
200262c2:	ea82 02d1 	eor.w	r2, r2, r1, lsr #3
200262c6:	4460      	add	r0, ip
200262c8:	4410      	add	r0, r2
200262ca:	9a00      	ldr	r2, [sp, #0]
200262cc:	ea8b 050e 	eor.w	r5, fp, lr
200262d0:	6c52      	ldr	r2, [r2, #68]	@ 0x44
200262d2:	ea05 0508 	and.w	r5, r5, r8
200262d6:	443a      	add	r2, r7
200262d8:	4402      	add	r2, r0
200262da:	ea85 050e 	eor.w	r5, r5, lr
200262de:	4415      	add	r5, r2
200262e0:	ea4f 22f8 	mov.w	r2, r8, ror #11
200262e4:	ea82 12b8 	eor.w	r2, r2, r8, ror #6
200262e8:	ea82 6278 	eor.w	r2, r2, r8, ror #25
200262ec:	442a      	add	r2, r5
200262ee:	4413      	add	r3, r2
200262f0:	9301      	str	r3, [sp, #4]
200262f2:	ea49 0504 	orr.w	r5, r9, r4
200262f6:	ea4f 3374 	mov.w	r3, r4, ror #13
200262fa:	ea09 0704 	and.w	r7, r9, r4
200262fe:	ea83 03b4 	eor.w	r3, r3, r4, ror #2
20026302:	4035      	ands	r5, r6
20026304:	433d      	orrs	r5, r7
20026306:	ea83 53b4 	eor.w	r3, r3, r4, ror #22
2002630a:	442b      	add	r3, r5
2002630c:	4413      	add	r3, r2
2002630e:	9a03      	ldr	r2, [sp, #12]
20026310:	f85a 5c14 	ldr.w	r5, [sl, #-20]
20026314:	ea4f 4cf2 	mov.w	ip, r2, ror #19
20026318:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
2002631c:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
20026320:	f8da 200c 	ldr.w	r2, [sl, #12]
20026324:	f8ca 0024 	str.w	r0, [sl, #36]	@ 0x24
20026328:	188f      	adds	r7, r1, r2
2002632a:	ea4f 42b5 	mov.w	r2, r5, ror #18
2002632e:	ea82 12f5 	eor.w	r2, r2, r5, ror #7
20026332:	ea82 02d5 	eor.w	r2, r2, r5, lsr #3
20026336:	4467      	add	r7, ip
20026338:	4417      	add	r7, r2
2002633a:	9a01      	ldr	r2, [sp, #4]
2002633c:	ea8b 0108 	eor.w	r1, fp, r8
20026340:	4011      	ands	r1, r2
20026342:	9a00      	ldr	r2, [sp, #0]
20026344:	ea81 010b 	eor.w	r1, r1, fp
20026348:	6c92      	ldr	r2, [r2, #72]	@ 0x48
2002634a:	f8ca 7028 	str.w	r7, [sl, #40]	@ 0x28
2002634e:	4472      	add	r2, lr
20026350:	443a      	add	r2, r7
20026352:	eb01 0c02 	add.w	ip, r1, r2
20026356:	9a01      	ldr	r2, [sp, #4]
20026358:	9901      	ldr	r1, [sp, #4]
2002635a:	ea4f 22f2 	mov.w	r2, r2, ror #11
2002635e:	ea82 12b1 	eor.w	r2, r2, r1, ror #6
20026362:	ea82 6271 	eor.w	r2, r2, r1, ror #25
20026366:	4462      	add	r2, ip
20026368:	18b1      	adds	r1, r6, r2
2002636a:	9102      	str	r1, [sp, #8]
2002636c:	ea44 0603 	orr.w	r6, r4, r3
20026370:	ea4f 3173 	mov.w	r1, r3, ror #13
20026374:	ea04 0c03 	and.w	ip, r4, r3
20026378:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
2002637c:	ea06 0609 	and.w	r6, r6, r9
20026380:	ea46 060c 	orr.w	r6, r6, ip
20026384:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
20026388:	4431      	add	r1, r6
2002638a:	4411      	add	r1, r2
2002638c:	ea4f 42f0 	mov.w	r2, r0, ror #19
20026390:	ea82 4270 	eor.w	r2, r2, r0, ror #17
20026394:	f85a 6c10 	ldr.w	r6, [sl, #-16]
20026398:	ea82 2090 	eor.w	r0, r2, r0, lsr #10
2002639c:	f8da 2010 	ldr.w	r2, [sl, #16]
200263a0:	ea03 0e01 	and.w	lr, r3, r1
200263a4:	4415      	add	r5, r2
200263a6:	ea4f 42b6 	mov.w	r2, r6, ror #18
200263aa:	ea82 12f6 	eor.w	r2, r2, r6, ror #7
200263ae:	ea82 02d6 	eor.w	r2, r2, r6, lsr #3
200263b2:	4405      	add	r5, r0
200263b4:	4415      	add	r5, r2
200263b6:	9a01      	ldr	r2, [sp, #4]
200263b8:	ea88 0002 	eor.w	r0, r8, r2
200263bc:	9a02      	ldr	r2, [sp, #8]
200263be:	4010      	ands	r0, r2
200263c0:	9a00      	ldr	r2, [sp, #0]
200263c2:	ea80 0008 	eor.w	r0, r0, r8
200263c6:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
200263c8:	f8ca 502c 	str.w	r5, [sl, #44]	@ 0x2c
200263cc:	445a      	add	r2, fp
200263ce:	442a      	add	r2, r5
200263d0:	eb00 0c02 	add.w	ip, r0, r2
200263d4:	9a02      	ldr	r2, [sp, #8]
200263d6:	9802      	ldr	r0, [sp, #8]
200263d8:	ea4f 22f2 	mov.w	r2, r2, ror #11
200263dc:	ea82 12b0 	eor.w	r2, r2, r0, ror #6
200263e0:	ea82 6270 	eor.w	r2, r2, r0, ror #25
200263e4:	4462      	add	r2, ip
200263e6:	ea4f 3071 	mov.w	r0, r1, ror #13
200263ea:	ea43 0c01 	orr.w	ip, r3, r1
200263ee:	ea80 00b1 	eor.w	r0, r0, r1, ror #2
200263f2:	ea0c 0c04 	and.w	ip, ip, r4
200263f6:	ea4c 0c0e 	orr.w	ip, ip, lr
200263fa:	ea80 50b1 	eor.w	r0, r0, r1, ror #22
200263fe:	4460      	add	r0, ip
20026400:	4410      	add	r0, r2
20026402:	4491      	add	r9, r2
20026404:	ea4f 42f7 	mov.w	r2, r7, ror #19
20026408:	ea82 4277 	eor.w	r2, r2, r7, ror #17
2002640c:	f85a cc0c 	ldr.w	ip, [sl, #-12]
20026410:	ea82 2797 	eor.w	r7, r2, r7, lsr #10
20026414:	f8da 2014 	ldr.w	r2, [sl, #20]
20026418:	ea01 0e00 	and.w	lr, r1, r0
2002641c:	4416      	add	r6, r2
2002641e:	ea4f 42bc 	mov.w	r2, ip, ror #18
20026422:	ea82 12fc 	eor.w	r2, r2, ip, ror #7
20026426:	ea82 02dc 	eor.w	r2, r2, ip, lsr #3
2002642a:	443e      	add	r6, r7
2002642c:	4416      	add	r6, r2
2002642e:	e9dd 2701 	ldrd	r2, r7, [sp, #4]
20026432:	4057      	eors	r7, r2
20026434:	ea07 0709 	and.w	r7, r7, r9
20026438:	4057      	eors	r7, r2
2002643a:	9a00      	ldr	r2, [sp, #0]
2002643c:	f8ca 6030 	str.w	r6, [sl, #48]	@ 0x30
20026440:	6d12      	ldr	r2, [r2, #80]	@ 0x50
20026442:	4432      	add	r2, r6
20026444:	4442      	add	r2, r8
20026446:	443a      	add	r2, r7
20026448:	ea4f 27f9 	mov.w	r7, r9, ror #11
2002644c:	ea87 17b9 	eor.w	r7, r7, r9, ror #6
20026450:	ea87 6779 	eor.w	r7, r7, r9, ror #25
20026454:	4417      	add	r7, r2
20026456:	eb04 0807 	add.w	r8, r4, r7
2002645a:	ea4f 3270 	mov.w	r2, r0, ror #13
2002645e:	ea41 0400 	orr.w	r4, r1, r0
20026462:	ea82 02b0 	eor.w	r2, r2, r0, ror #2
20026466:	401c      	ands	r4, r3
20026468:	ea44 040e 	orr.w	r4, r4, lr
2002646c:	ea82 52b0 	eor.w	r2, r2, r0, ror #22
20026470:	4422      	add	r2, r4
20026472:	ea4f 44f5 	mov.w	r4, r5, ror #19
20026476:	ea84 4475 	eor.w	r4, r4, r5, ror #17
2002647a:	ea84 2495 	eor.w	r4, r4, r5, lsr #10
2002647e:	f8da 5018 	ldr.w	r5, [sl, #24]
20026482:	f85a ec08 	ldr.w	lr, [sl, #-8]
20026486:	4465      	add	r5, ip
20026488:	4425      	add	r5, r4
2002648a:	ea4f 44be 	mov.w	r4, lr, ror #18
2002648e:	ea84 14fe 	eor.w	r4, r4, lr, ror #7
20026492:	ea84 04de 	eor.w	r4, r4, lr, lsr #3
20026496:	4425      	add	r5, r4
20026498:	9c02      	ldr	r4, [sp, #8]
2002649a:	443a      	add	r2, r7
2002649c:	ea84 0709 	eor.w	r7, r4, r9
200264a0:	ea07 0708 	and.w	r7, r7, r8
200264a4:	ea87 0c04 	eor.w	ip, r7, r4
200264a8:	9c00      	ldr	r4, [sp, #0]
200264aa:	9f01      	ldr	r7, [sp, #4]
200264ac:	6d64      	ldr	r4, [r4, #84]	@ 0x54
200264ae:	ea00 0b02 	and.w	fp, r0, r2
200264b2:	442c      	add	r4, r5
200264b4:	443c      	add	r4, r7
200264b6:	eb0c 0704 	add.w	r7, ip, r4
200264ba:	ea4f 24f8 	mov.w	r4, r8, ror #11
200264be:	ea84 14b8 	eor.w	r4, r4, r8, ror #6
200264c2:	ea84 6478 	eor.w	r4, r4, r8, ror #25
200264c6:	443c      	add	r4, r7
200264c8:	191f      	adds	r7, r3, r4
200264ca:	ea40 0c02 	orr.w	ip, r0, r2
200264ce:	ea4f 3372 	mov.w	r3, r2, ror #13
200264d2:	ea0c 0c01 	and.w	ip, ip, r1
200264d6:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
200264da:	ea4c 0c0b 	orr.w	ip, ip, fp
200264de:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
200264e2:	4463      	add	r3, ip
200264e4:	4423      	add	r3, r4
200264e6:	ea4f 44f6 	mov.w	r4, r6, ror #19
200264ea:	ea84 4476 	eor.w	r4, r4, r6, ror #17
200264ee:	ea84 2496 	eor.w	r4, r4, r6, lsr #10
200264f2:	f8da 601c 	ldr.w	r6, [sl, #28]
200264f6:	f85a cc04 	ldr.w	ip, [sl, #-4]
200264fa:	4476      	add	r6, lr
200264fc:	4426      	add	r6, r4
200264fe:	ea4f 44bc 	mov.w	r4, ip, ror #18
20026502:	ea84 14fc 	eor.w	r4, r4, ip, ror #7
20026506:	ea84 04dc 	eor.w	r4, r4, ip, lsr #3
2002650a:	eb06 0b04 	add.w	fp, r6, r4
2002650e:	9c00      	ldr	r4, [sp, #0]
20026510:	9e02      	ldr	r6, [sp, #8]
20026512:	6da4      	ldr	r4, [r4, #88]	@ 0x58
20026514:	ea89 0e08 	eor.w	lr, r9, r8
20026518:	445c      	add	r4, fp
2002651a:	4434      	add	r4, r6
2002651c:	ea0e 0e07 	and.w	lr, lr, r7
20026520:	ea4f 26f7 	mov.w	r6, r7, ror #11
20026524:	ea8e 0e09 	eor.w	lr, lr, r9
20026528:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
2002652c:	4474      	add	r4, lr
2002652e:	ea86 6677 	eor.w	r6, r6, r7, ror #25
20026532:	4434      	add	r4, r6
20026534:	eb01 0e04 	add.w	lr, r1, r4
20026538:	ea42 0603 	orr.w	r6, r2, r3
2002653c:	ea4f 3173 	mov.w	r1, r3, ror #13
20026540:	f8ca b038 	str.w	fp, [sl, #56]	@ 0x38
20026544:	4006      	ands	r6, r0
20026546:	ea02 0b03 	and.w	fp, r2, r3
2002654a:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
2002654e:	ea46 060b 	orr.w	r6, r6, fp
20026552:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
20026556:	4431      	add	r1, r6
20026558:	190e      	adds	r6, r1, r4
2002655a:	ea4f 41f5 	mov.w	r1, r5, ror #19
2002655e:	ea81 4175 	eor.w	r1, r1, r5, ror #17
20026562:	f8ca 5034 	str.w	r5, [sl, #52]	@ 0x34
20026566:	ea81 2195 	eor.w	r1, r1, r5, lsr #10
2002656a:	9d03      	ldr	r5, [sp, #12]
2002656c:	f8da 4000 	ldr.w	r4, [sl]
20026570:	4465      	add	r5, ip
20026572:	4429      	add	r1, r5
20026574:	ea4f 45b4 	mov.w	r5, r4, ror #18
20026578:	ea85 15f4 	eor.w	r5, r5, r4, ror #7
2002657c:	ea85 05d4 	eor.w	r5, r5, r4, lsr #3
20026580:	194c      	adds	r4, r1, r5
20026582:	9900      	ldr	r1, [sp, #0]
20026584:	ea88 0507 	eor.w	r5, r8, r7
20026588:	6dc9      	ldr	r1, [r1, #92]	@ 0x5c
2002658a:	ea05 050e 	and.w	r5, r5, lr
2002658e:	4421      	add	r1, r4
20026590:	4449      	add	r1, r9
20026592:	ea85 0508 	eor.w	r5, r5, r8
20026596:	440d      	add	r5, r1
20026598:	ea4f 21fe 	mov.w	r1, lr, ror #11
2002659c:	ea81 11be 	eor.w	r1, r1, lr, ror #6
200265a0:	ea81 617e 	eor.w	r1, r1, lr, ror #25
200265a4:	4429      	add	r1, r5
200265a6:	f8ca 403c 	str.w	r4, [sl, #60]	@ 0x3c
200265aa:	eb00 0b01 	add.w	fp, r0, r1
200265ae:	ea43 0406 	orr.w	r4, r3, r6
200265b2:	ea4f 3076 	mov.w	r0, r6, ror #13
200265b6:	ea80 00b6 	eor.w	r0, r0, r6, ror #2
200265ba:	4014      	ands	r4, r2
200265bc:	ea03 0506 	and.w	r5, r3, r6
200265c0:	ea80 50b6 	eor.w	r0, r0, r6, ror #22
200265c4:	432c      	orrs	r4, r5
200265c6:	4420      	add	r0, r4
200265c8:	eb00 0901 	add.w	r9, r0, r1
200265cc:	9900      	ldr	r1, [sp, #0]
200265ce:	3120      	adds	r1, #32
200265d0:	9100      	str	r1, [sp, #0]
200265d2:	9905      	ldr	r1, [sp, #20]
200265d4:	4551      	cmp	r1, sl
200265d6:	f47f ae25 	bne.w	20026224 <mbedtls_sha256_process+0x2b4>
200265da:	9308      	str	r3, [sp, #32]
200265dc:	9b04      	ldr	r3, [sp, #16]
200265de:	a906      	add	r1, sp, #24
200265e0:	60ca      	str	r2, [r1, #12]
200265e2:	f8c1 801c 	str.w	r8, [r1, #28]
200265e6:	1d1a      	adds	r2, r3, #4
200265e8:	618f      	str	r7, [r1, #24]
200265ea:	3324      	adds	r3, #36	@ 0x24
200265ec:	f8c1 e014 	str.w	lr, [r1, #20]
200265f0:	604e      	str	r6, [r1, #4]
200265f2:	f8c1 b010 	str.w	fp, [r1, #16]
200265f6:	f8c1 9000 	str.w	r9, [r1]
200265fa:	f852 0f04 	ldr.w	r0, [r2, #4]!
200265fe:	f851 4b04 	ldr.w	r4, [r1], #4
20026602:	4293      	cmp	r3, r2
20026604:	4420      	add	r0, r4
20026606:	6010      	str	r0, [r2, #0]
20026608:	d1f7      	bne.n	200265fa <mbedtls_sha256_process+0x68a>
2002660a:	b04f      	add	sp, #316	@ 0x13c
2002660c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

20026610 <mbedtls_sha256_update.part.0>:
20026610:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20026614:	6803      	ldr	r3, [r0, #0]
20026616:	4605      	mov	r5, r0
20026618:	f003 073f 	and.w	r7, r3, #63	@ 0x3f
2002661c:	189b      	adds	r3, r3, r2
2002661e:	6003      	str	r3, [r0, #0]
20026620:	bf28      	it	cs
20026622:	6843      	ldrcs	r3, [r0, #4]
20026624:	460e      	mov	r6, r1
20026626:	bf28      	it	cs
20026628:	3301      	addcs	r3, #1
2002662a:	4614      	mov	r4, r2
2002662c:	bf28      	it	cs
2002662e:	6043      	strcs	r3, [r0, #4]
20026630:	b197      	cbz	r7, 20026658 <mbedtls_sha256_update.part.0+0x48>
20026632:	f1c7 0940 	rsb	r9, r7, #64	@ 0x40
20026636:	4591      	cmp	r9, r2
20026638:	d80e      	bhi.n	20026658 <mbedtls_sha256_update.part.0+0x48>
2002663a:	f100 0828 	add.w	r8, r0, #40	@ 0x28
2002663e:	464a      	mov	r2, r9
20026640:	eb08 0007 	add.w	r0, r8, r7
20026644:	f004 f8f8 	bl	2002a838 <memcpy>
20026648:	3c40      	subs	r4, #64	@ 0x40
2002664a:	4641      	mov	r1, r8
2002664c:	4628      	mov	r0, r5
2002664e:	443c      	add	r4, r7
20026650:	f7ff fc8e 	bl	20025f70 <mbedtls_sha256_process>
20026654:	2700      	movs	r7, #0
20026656:	444e      	add	r6, r9
20026658:	46a0      	mov	r8, r4
2002665a:	eb04 0906 	add.w	r9, r4, r6
2002665e:	e004      	b.n	2002666a <mbedtls_sha256_update.part.0+0x5a>
20026660:	4628      	mov	r0, r5
20026662:	f7ff fc85 	bl	20025f70 <mbedtls_sha256_process>
20026666:	f1a8 0840 	sub.w	r8, r8, #64	@ 0x40
2002666a:	f1b8 0f3f 	cmp.w	r8, #63	@ 0x3f
2002666e:	eba9 0108 	sub.w	r1, r9, r8
20026672:	d8f5      	bhi.n	20026660 <mbedtls_sha256_update.part.0+0x50>
20026674:	f06f 033f 	mvn.w	r3, #63	@ 0x3f
20026678:	09a1      	lsrs	r1, r4, #6
2002667a:	4359      	muls	r1, r3
2002667c:	1862      	adds	r2, r4, r1
2002667e:	d007      	beq.n	20026690 <mbedtls_sha256_update.part.0+0x80>
20026680:	f105 0028 	add.w	r0, r5, #40	@ 0x28
20026684:	1a71      	subs	r1, r6, r1
20026686:	4438      	add	r0, r7
20026688:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002668c:	f004 b8d4 	b.w	2002a838 <memcpy>
20026690:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

20026694 <mbedtls_sha256_update>:
20026694:	b10a      	cbz	r2, 2002669a <mbedtls_sha256_update+0x6>
20026696:	f7ff bfbb 	b.w	20026610 <mbedtls_sha256_update.part.0>
2002669a:	4770      	bx	lr

2002669c <mbedtls_sha256_finish>:
2002669c:	b537      	push	{r0, r1, r2, r4, r5, lr}
2002669e:	4604      	mov	r4, r0
200266a0:	460d      	mov	r5, r1
200266a2:	e9d0 2100 	ldrd	r2, r1, [r0]
200266a6:	0f53      	lsrs	r3, r2, #29
200266a8:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
200266ac:	ba1b      	rev	r3, r3
200266ae:	9300      	str	r3, [sp, #0]
200266b0:	00d3      	lsls	r3, r2, #3
200266b2:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
200266b6:	2a37      	cmp	r2, #55	@ 0x37
200266b8:	ba1b      	rev	r3, r3
200266ba:	bf94      	ite	ls
200266bc:	f1c2 0238 	rsbls	r2, r2, #56	@ 0x38
200266c0:	f1c2 0278 	rsbhi	r2, r2, #120	@ 0x78
200266c4:	492b      	ldr	r1, [pc, #172]	@ (20026774 <mbedtls_sha256_finish+0xd8>)
200266c6:	9301      	str	r3, [sp, #4]
200266c8:	f7ff ffe4 	bl	20026694 <mbedtls_sha256_update>
200266cc:	2208      	movs	r2, #8
200266ce:	4669      	mov	r1, sp
200266d0:	4620      	mov	r0, r4
200266d2:	f7ff ff9d 	bl	20026610 <mbedtls_sha256_update.part.0>
200266d6:	7ae3      	ldrb	r3, [r4, #11]
200266d8:	702b      	strb	r3, [r5, #0]
200266da:	8963      	ldrh	r3, [r4, #10]
200266dc:	706b      	strb	r3, [r5, #1]
200266de:	68a3      	ldr	r3, [r4, #8]
200266e0:	0a1b      	lsrs	r3, r3, #8
200266e2:	70ab      	strb	r3, [r5, #2]
200266e4:	68a3      	ldr	r3, [r4, #8]
200266e6:	70eb      	strb	r3, [r5, #3]
200266e8:	7be3      	ldrb	r3, [r4, #15]
200266ea:	712b      	strb	r3, [r5, #4]
200266ec:	89e3      	ldrh	r3, [r4, #14]
200266ee:	716b      	strb	r3, [r5, #5]
200266f0:	68e3      	ldr	r3, [r4, #12]
200266f2:	0a1b      	lsrs	r3, r3, #8
200266f4:	71ab      	strb	r3, [r5, #6]
200266f6:	68e3      	ldr	r3, [r4, #12]
200266f8:	71eb      	strb	r3, [r5, #7]
200266fa:	7ce3      	ldrb	r3, [r4, #19]
200266fc:	722b      	strb	r3, [r5, #8]
200266fe:	8a63      	ldrh	r3, [r4, #18]
20026700:	726b      	strb	r3, [r5, #9]
20026702:	6923      	ldr	r3, [r4, #16]
20026704:	0a1b      	lsrs	r3, r3, #8
20026706:	72ab      	strb	r3, [r5, #10]
20026708:	6923      	ldr	r3, [r4, #16]
2002670a:	72eb      	strb	r3, [r5, #11]
2002670c:	7de3      	ldrb	r3, [r4, #23]
2002670e:	732b      	strb	r3, [r5, #12]
20026710:	8ae3      	ldrh	r3, [r4, #22]
20026712:	736b      	strb	r3, [r5, #13]
20026714:	6963      	ldr	r3, [r4, #20]
20026716:	0a1b      	lsrs	r3, r3, #8
20026718:	73ab      	strb	r3, [r5, #14]
2002671a:	6963      	ldr	r3, [r4, #20]
2002671c:	73eb      	strb	r3, [r5, #15]
2002671e:	7ee3      	ldrb	r3, [r4, #27]
20026720:	742b      	strb	r3, [r5, #16]
20026722:	8b63      	ldrh	r3, [r4, #26]
20026724:	746b      	strb	r3, [r5, #17]
20026726:	69a3      	ldr	r3, [r4, #24]
20026728:	0a1b      	lsrs	r3, r3, #8
2002672a:	74ab      	strb	r3, [r5, #18]
2002672c:	69a3      	ldr	r3, [r4, #24]
2002672e:	74eb      	strb	r3, [r5, #19]
20026730:	7fe3      	ldrb	r3, [r4, #31]
20026732:	752b      	strb	r3, [r5, #20]
20026734:	8be3      	ldrh	r3, [r4, #30]
20026736:	756b      	strb	r3, [r5, #21]
20026738:	69e3      	ldr	r3, [r4, #28]
2002673a:	0a1b      	lsrs	r3, r3, #8
2002673c:	75ab      	strb	r3, [r5, #22]
2002673e:	69e3      	ldr	r3, [r4, #28]
20026740:	75eb      	strb	r3, [r5, #23]
20026742:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20026746:	762b      	strb	r3, [r5, #24]
20026748:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
2002674a:	766b      	strb	r3, [r5, #25]
2002674c:	6a23      	ldr	r3, [r4, #32]
2002674e:	0a1b      	lsrs	r3, r3, #8
20026750:	76ab      	strb	r3, [r5, #26]
20026752:	6a23      	ldr	r3, [r4, #32]
20026754:	76eb      	strb	r3, [r5, #27]
20026756:	6ea3      	ldr	r3, [r4, #104]	@ 0x68
20026758:	b94b      	cbnz	r3, 2002676e <mbedtls_sha256_finish+0xd2>
2002675a:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
2002675e:	772b      	strb	r3, [r5, #28]
20026760:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
20026762:	776b      	strb	r3, [r5, #29]
20026764:	6a63      	ldr	r3, [r4, #36]	@ 0x24
20026766:	0a1b      	lsrs	r3, r3, #8
20026768:	77ab      	strb	r3, [r5, #30]
2002676a:	6a63      	ldr	r3, [r4, #36]	@ 0x24
2002676c:	77eb      	strb	r3, [r5, #31]
2002676e:	b003      	add	sp, #12
20026770:	bd30      	pop	{r4, r5, pc}
20026772:	bf00      	nop
20026774:	2002bd4c 	.word	0x2002bd4c

20026778 <mbedtls_sha256>:
20026778:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
2002677c:	461d      	mov	r5, r3
2002677e:	b09c      	sub	sp, #112	@ 0x70
20026780:	4607      	mov	r7, r0
20026782:	a801      	add	r0, sp, #4
20026784:	4688      	mov	r8, r1
20026786:	4616      	mov	r6, r2
20026788:	f7ff fb97 	bl	20025eba <mbedtls_sha256_init>
2002678c:	b355      	cbz	r5, 200267e4 <mbedtls_sha256+0x6c>
2002678e:	f8df a090 	ldr.w	sl, [pc, #144]	@ 20026820 <mbedtls_sha256+0xa8>
20026792:	f8df 9090 	ldr.w	r9, [pc, #144]	@ 20026824 <mbedtls_sha256+0xac>
20026796:	f8df e090 	ldr.w	lr, [pc, #144]	@ 20026828 <mbedtls_sha256+0xb0>
2002679a:	f8df c090 	ldr.w	ip, [pc, #144]	@ 2002682c <mbedtls_sha256+0xb4>
2002679e:	4818      	ldr	r0, [pc, #96]	@ (20026800 <mbedtls_sha256+0x88>)
200267a0:	4918      	ldr	r1, [pc, #96]	@ (20026804 <mbedtls_sha256+0x8c>)
200267a2:	4a19      	ldr	r2, [pc, #100]	@ (20026808 <mbedtls_sha256+0x90>)
200267a4:	4b19      	ldr	r3, [pc, #100]	@ (2002680c <mbedtls_sha256+0x94>)
200267a6:	2400      	movs	r4, #0
200267a8:	e9cd 2309 	strd	r2, r3, [sp, #36]	@ 0x24
200267ac:	e9cd 0107 	strd	r0, r1, [sp, #28]
200267b0:	4642      	mov	r2, r8
200267b2:	4639      	mov	r1, r7
200267b4:	a801      	add	r0, sp, #4
200267b6:	e9cd ec05 	strd	lr, ip, [sp, #20]
200267ba:	e9cd 4401 	strd	r4, r4, [sp, #4]
200267be:	e9cd a903 	strd	sl, r9, [sp, #12]
200267c2:	951b      	str	r5, [sp, #108]	@ 0x6c
200267c4:	f7ff ff66 	bl	20026694 <mbedtls_sha256_update>
200267c8:	4631      	mov	r1, r6
200267ca:	a801      	add	r0, sp, #4
200267cc:	f7ff ff66 	bl	2002669c <mbedtls_sha256_finish>
200267d0:	4623      	mov	r3, r4
200267d2:	4622      	mov	r2, r4
200267d4:	a901      	add	r1, sp, #4
200267d6:	54ca      	strb	r2, [r1, r3]
200267d8:	3301      	adds	r3, #1
200267da:	2b6c      	cmp	r3, #108	@ 0x6c
200267dc:	d1fa      	bne.n	200267d4 <mbedtls_sha256+0x5c>
200267de:	b01c      	add	sp, #112	@ 0x70
200267e0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
200267e4:	f8df a048 	ldr.w	sl, [pc, #72]	@ 20026830 <mbedtls_sha256+0xb8>
200267e8:	f8df 9048 	ldr.w	r9, [pc, #72]	@ 20026834 <mbedtls_sha256+0xbc>
200267ec:	f8df e048 	ldr.w	lr, [pc, #72]	@ 20026838 <mbedtls_sha256+0xc0>
200267f0:	f8df c048 	ldr.w	ip, [pc, #72]	@ 2002683c <mbedtls_sha256+0xc4>
200267f4:	4806      	ldr	r0, [pc, #24]	@ (20026810 <mbedtls_sha256+0x98>)
200267f6:	4907      	ldr	r1, [pc, #28]	@ (20026814 <mbedtls_sha256+0x9c>)
200267f8:	4a07      	ldr	r2, [pc, #28]	@ (20026818 <mbedtls_sha256+0xa0>)
200267fa:	4b08      	ldr	r3, [pc, #32]	@ (2002681c <mbedtls_sha256+0xa4>)
200267fc:	e7d3      	b.n	200267a6 <mbedtls_sha256+0x2e>
200267fe:	bf00      	nop
20026800:	ffc00b31 	.word	0xffc00b31
20026804:	68581511 	.word	0x68581511
20026808:	64f98fa7 	.word	0x64f98fa7
2002680c:	befa4fa4 	.word	0xbefa4fa4
20026810:	510e527f 	.word	0x510e527f
20026814:	9b05688c 	.word	0x9b05688c
20026818:	1f83d9ab 	.word	0x1f83d9ab
2002681c:	5be0cd19 	.word	0x5be0cd19
20026820:	c1059ed8 	.word	0xc1059ed8
20026824:	367cd507 	.word	0x367cd507
20026828:	3070dd17 	.word	0x3070dd17
2002682c:	f70e5939 	.word	0xf70e5939
20026830:	6a09e667 	.word	0x6a09e667
20026834:	bb67ae85 	.word	0xbb67ae85
20026838:	3c6ef372 	.word	0x3c6ef372
2002683c:	a54ff53a 	.word	0xa54ff53a

20026840 <mbedtls_sha512_init>:
20026840:	22d8      	movs	r2, #216	@ 0xd8
20026842:	2100      	movs	r1, #0
20026844:	f003 bfde 	b.w	2002a804 <memset>

20026848 <mbedtls_sha512_free>:
20026848:	b138      	cbz	r0, 2002685a <mbedtls_sha512_free+0x12>
2002684a:	2100      	movs	r1, #0
2002684c:	f100 03d8 	add.w	r3, r0, #216	@ 0xd8
20026850:	4602      	mov	r2, r0
20026852:	3001      	adds	r0, #1
20026854:	4298      	cmp	r0, r3
20026856:	7011      	strb	r1, [r2, #0]
20026858:	d1fa      	bne.n	20026850 <mbedtls_sha512_free+0x8>
2002685a:	4770      	bx	lr

2002685c <mbedtls_sha512_clone>:
2002685c:	b508      	push	{r3, lr}
2002685e:	22d8      	movs	r2, #216	@ 0xd8
20026860:	f003 ffea 	bl	2002a838 <memcpy>
20026864:	bd08      	pop	{r3, pc}
	...

20026868 <mbedtls_sha512_starts>:
20026868:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002686c:	b381      	cbz	r1, 200268d0 <mbedtls_sha512_starts+0x68>
2002686e:	f20f 0bc8 	addw	fp, pc, #200	@ 0xc8
20026872:	e9db ab00 	ldrd	sl, fp, [fp]
20026876:	f20f 09c8 	addw	r9, pc, #200	@ 0xc8
2002687a:	e9d9 8900 	ldrd	r8, r9, [r9]
2002687e:	a732      	add	r7, pc, #200	@ (adr r7, 20026948 <mbedtls_sha512_starts+0xe0>)
20026880:	e9d7 6700 	ldrd	r6, r7, [r7]
20026884:	a532      	add	r5, pc, #200	@ (adr r5, 20026950 <mbedtls_sha512_starts+0xe8>)
20026886:	e9d5 4500 	ldrd	r4, r5, [r5]
2002688a:	a333      	add	r3, pc, #204	@ (adr r3, 20026958 <mbedtls_sha512_starts+0xf0>)
2002688c:	e9d3 2300 	ldrd	r2, r3, [r3]
20026890:	ed9f 5b1b 	vldr	d5, [pc, #108]	@ 20026900 <mbedtls_sha512_starts+0x98>
20026894:	ed9f 6b1c 	vldr	d6, [pc, #112]	@ 20026908 <mbedtls_sha512_starts+0xa0>
20026898:	ed9f 7b1d 	vldr	d7, [pc, #116]	@ 20026910 <mbedtls_sha512_starts+0xa8>
2002689c:	ed9f 4b1e 	vldr	d4, [pc, #120]	@ 20026918 <mbedtls_sha512_starts+0xb0>
200268a0:	ed80 5b04 	vstr	d5, [r0, #16]
200268a4:	ed80 4b00 	vstr	d4, [r0]
200268a8:	ed80 4b02 	vstr	d4, [r0, #8]
200268ac:	ed80 6b06 	vstr	d6, [r0, #24]
200268b0:	ed80 7b08 	vstr	d7, [r0, #32]
200268b4:	e9c0 ab0a 	strd	sl, fp, [r0, #40]	@ 0x28
200268b8:	e9c0 890c 	strd	r8, r9, [r0, #48]	@ 0x30
200268bc:	e9c0 670e 	strd	r6, r7, [r0, #56]	@ 0x38
200268c0:	e9c0 4510 	strd	r4, r5, [r0, #64]	@ 0x40
200268c4:	e9c0 2312 	strd	r2, r3, [r0, #72]	@ 0x48
200268c8:	f8c0 10d0 	str.w	r1, [r0, #208]	@ 0xd0
200268cc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200268d0:	ed9f 5b13 	vldr	d5, [pc, #76]	@ 20026920 <mbedtls_sha512_starts+0xb8>
200268d4:	f20f 0b88 	addw	fp, pc, #136	@ 0x88
200268d8:	e9db ab00 	ldrd	sl, fp, [fp]
200268dc:	f20f 0988 	addw	r9, pc, #136	@ 0x88
200268e0:	e9d9 8900 	ldrd	r8, r9, [r9]
200268e4:	a722      	add	r7, pc, #136	@ (adr r7, 20026970 <mbedtls_sha512_starts+0x108>)
200268e6:	e9d7 6700 	ldrd	r6, r7, [r7]
200268ea:	a523      	add	r5, pc, #140	@ (adr r5, 20026978 <mbedtls_sha512_starts+0x110>)
200268ec:	e9d5 4500 	ldrd	r4, r5, [r5]
200268f0:	a323      	add	r3, pc, #140	@ (adr r3, 20026980 <mbedtls_sha512_starts+0x118>)
200268f2:	e9d3 2300 	ldrd	r2, r3, [r3]
200268f6:	ed9f 6b0c 	vldr	d6, [pc, #48]	@ 20026928 <mbedtls_sha512_starts+0xc0>
200268fa:	ed9f 7b0d 	vldr	d7, [pc, #52]	@ 20026930 <mbedtls_sha512_starts+0xc8>
200268fe:	e7cd      	b.n	2002689c <mbedtls_sha512_starts+0x34>
20026900:	c1059ed8 	.word	0xc1059ed8
20026904:	cbbb9d5d 	.word	0xcbbb9d5d
20026908:	367cd507 	.word	0x367cd507
2002690c:	629a292a 	.word	0x629a292a
20026910:	3070dd17 	.word	0x3070dd17
20026914:	9159015a 	.word	0x9159015a
	...
20026920:	f3bcc908 	.word	0xf3bcc908
20026924:	6a09e667 	.word	0x6a09e667
20026928:	84caa73b 	.word	0x84caa73b
2002692c:	bb67ae85 	.word	0xbb67ae85
20026930:	fe94f82b 	.word	0xfe94f82b
20026934:	3c6ef372 	.word	0x3c6ef372
20026938:	f70e5939 	.word	0xf70e5939
2002693c:	152fecd8 	.word	0x152fecd8
20026940:	ffc00b31 	.word	0xffc00b31
20026944:	67332667 	.word	0x67332667
20026948:	68581511 	.word	0x68581511
2002694c:	8eb44a87 	.word	0x8eb44a87
20026950:	64f98fa7 	.word	0x64f98fa7
20026954:	db0c2e0d 	.word	0xdb0c2e0d
20026958:	befa4fa4 	.word	0xbefa4fa4
2002695c:	47b5481d 	.word	0x47b5481d
20026960:	5f1d36f1 	.word	0x5f1d36f1
20026964:	a54ff53a 	.word	0xa54ff53a
20026968:	ade682d1 	.word	0xade682d1
2002696c:	510e527f 	.word	0x510e527f
20026970:	2b3e6c1f 	.word	0x2b3e6c1f
20026974:	9b05688c 	.word	0x9b05688c
20026978:	fb41bd6b 	.word	0xfb41bd6b
2002697c:	1f83d9ab 	.word	0x1f83d9ab
20026980:	137e2179 	.word	0x137e2179
20026984:	5be0cd19 	.word	0x5be0cd19

20026988 <mbedtls_sha512_process>:
20026988:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002698c:	f5ad 7d3f 	sub.w	sp, sp, #764	@ 0x2fc
20026990:	4682      	mov	sl, r0
20026992:	a81e      	add	r0, sp, #120	@ 0x78
20026994:	4604      	mov	r4, r0
20026996:	f101 0580 	add.w	r5, r1, #128	@ 0x80
2002699a:	784b      	ldrb	r3, [r1, #1]
2002699c:	780a      	ldrb	r2, [r1, #0]
2002699e:	041b      	lsls	r3, r3, #16
200269a0:	790f      	ldrb	r7, [r1, #4]
200269a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
200269a6:	79ca      	ldrb	r2, [r1, #7]
200269a8:	788e      	ldrb	r6, [r1, #2]
200269aa:	ea42 6207 	orr.w	r2, r2, r7, lsl #24
200269ae:	794f      	ldrb	r7, [r1, #5]
200269b0:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
200269b4:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
200269b8:	78ce      	ldrb	r6, [r1, #3]
200269ba:	798f      	ldrb	r7, [r1, #6]
200269bc:	3108      	adds	r1, #8
200269be:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
200269c2:	4333      	orrs	r3, r6
200269c4:	428d      	cmp	r5, r1
200269c6:	e9c4 2300 	strd	r2, r3, [r4]
200269ca:	f104 0408 	add.w	r4, r4, #8
200269ce:	d1e4      	bne.n	2002699a <mbedtls_sha512_process+0x12>
200269d0:	4601      	mov	r1, r0
200269d2:	2610      	movs	r6, #16
200269d4:	e9d1 4c1c 	ldrd	r4, ip, [r1, #112]	@ 0x70
200269d8:	e9d1 2502 	ldrd	r2, r5, [r1, #8]
200269dc:	468e      	mov	lr, r1
200269de:	0ce3      	lsrs	r3, r4, #19
200269e0:	ea4f 47dc 	mov.w	r7, ip, lsr #19
200269e4:	ea4f 09c4 	mov.w	r9, r4, lsl #3
200269e8:	ea4f 08cc 	mov.w	r8, ip, lsl #3
200269ec:	ea48 7854 	orr.w	r8, r8, r4, lsr #29
200269f0:	ea43 334c 	orr.w	r3, r3, ip, lsl #13
200269f4:	ea47 3744 	orr.w	r7, r7, r4, lsl #13
200269f8:	ea49 795c 	orr.w	r9, r9, ip, lsr #29
200269fc:	09a4      	lsrs	r4, r4, #6
200269fe:	ea87 0708 	eor.w	r7, r7, r8
20026a02:	ea44 648c 	orr.w	r4, r4, ip, lsl #26
20026a06:	ea83 0309 	eor.w	r3, r3, r9
20026a0a:	4063      	eors	r3, r4
20026a0c:	ea87 179c 	eor.w	r7, r7, ip, lsr #6
20026a10:	e9de 4c12 	ldrd	r4, ip, [lr, #72]	@ 0x48
20026a14:	e9de 8e00 	ldrd	r8, lr, [lr]
20026a18:	eb14 0408 	adds.w	r4, r4, r8
20026a1c:	eb4c 0c0e 	adc.w	ip, ip, lr
20026a20:	191b      	adds	r3, r3, r4
20026a22:	eb47 070c 	adc.w	r7, r7, ip
20026a26:	0854      	lsrs	r4, r2, #1
20026a28:	ea4f 2812 	mov.w	r8, r2, lsr #8
20026a2c:	ea4f 0c55 	mov.w	ip, r5, lsr #1
20026a30:	ea4f 2e15 	mov.w	lr, r5, lsr #8
20026a34:	ea4c 7cc2 	orr.w	ip, ip, r2, lsl #31
20026a38:	ea4e 6e02 	orr.w	lr, lr, r2, lsl #24
20026a3c:	ea44 74c5 	orr.w	r4, r4, r5, lsl #31
20026a40:	ea48 6805 	orr.w	r8, r8, r5, lsl #24
20026a44:	09d2      	lsrs	r2, r2, #7
20026a46:	ea84 0408 	eor.w	r4, r4, r8
20026a4a:	ea42 6245 	orr.w	r2, r2, r5, lsl #25
20026a4e:	4062      	eors	r2, r4
20026a50:	ea8c 0c0e 	eor.w	ip, ip, lr
20026a54:	189b      	adds	r3, r3, r2
20026a56:	ea8c 14d5 	eor.w	r4, ip, r5, lsr #7
20026a5a:	f106 0601 	add.w	r6, r6, #1
20026a5e:	eb47 0704 	adc.w	r7, r7, r4
20026a62:	3108      	adds	r1, #8
20026a64:	2e50      	cmp	r6, #80	@ 0x50
20026a66:	e9c1 371e 	strd	r3, r7, [r1, #120]	@ 0x78
20026a6a:	d1b3      	bne.n	200269d4 <mbedtls_sha512_process+0x4c>
20026a6c:	f8da 3010 	ldr.w	r3, [sl, #16]
20026a70:	930e      	str	r3, [sp, #56]	@ 0x38
20026a72:	f8da 3014 	ldr.w	r3, [sl, #20]
20026a76:	930f      	str	r3, [sp, #60]	@ 0x3c
20026a78:	f8da 3018 	ldr.w	r3, [sl, #24]
20026a7c:	9310      	str	r3, [sp, #64]	@ 0x40
20026a7e:	f8da 301c 	ldr.w	r3, [sl, #28]
20026a82:	9311      	str	r3, [sp, #68]	@ 0x44
20026a84:	f8da 3020 	ldr.w	r3, [sl, #32]
20026a88:	9312      	str	r3, [sp, #72]	@ 0x48
20026a8a:	f8da 3024 	ldr.w	r3, [sl, #36]	@ 0x24
20026a8e:	9313      	str	r3, [sp, #76]	@ 0x4c
20026a90:	f8da 3028 	ldr.w	r3, [sl, #40]	@ 0x28
20026a94:	9314      	str	r3, [sp, #80]	@ 0x50
20026a96:	f8da 302c 	ldr.w	r3, [sl, #44]	@ 0x2c
20026a9a:	9315      	str	r3, [sp, #84]	@ 0x54
20026a9c:	f8da 3030 	ldr.w	r3, [sl, #48]	@ 0x30
20026aa0:	9316      	str	r3, [sp, #88]	@ 0x58
20026aa2:	f8da 3034 	ldr.w	r3, [sl, #52]	@ 0x34
20026aa6:	9317      	str	r3, [sp, #92]	@ 0x5c
20026aa8:	f8da 3038 	ldr.w	r3, [sl, #56]	@ 0x38
20026aac:	9318      	str	r3, [sp, #96]	@ 0x60
20026aae:	f8da 303c 	ldr.w	r3, [sl, #60]	@ 0x3c
20026ab2:	9319      	str	r3, [sp, #100]	@ 0x64
20026ab4:	f8da 3040 	ldr.w	r3, [sl, #64]	@ 0x40
20026ab8:	931a      	str	r3, [sp, #104]	@ 0x68
20026aba:	f8da 3044 	ldr.w	r3, [sl, #68]	@ 0x44
20026abe:	931b      	str	r3, [sp, #108]	@ 0x6c
20026ac0:	f8da 3048 	ldr.w	r3, [sl, #72]	@ 0x48
20026ac4:	931c      	str	r3, [sp, #112]	@ 0x70
20026ac6:	f8da 304c 	ldr.w	r3, [sl, #76]	@ 0x4c
20026aca:	931d      	str	r3, [sp, #116]	@ 0x74
20026acc:	4b0f      	ldr	r3, [pc, #60]	@ (20026b0c <mbedtls_sha512_process+0x184>)
20026ace:	9300      	str	r3, [sp, #0]
20026ad0:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
20026ad2:	f8dd b054 	ldr.w	fp, [sp, #84]	@ 0x54
20026ad6:	930a      	str	r3, [sp, #40]	@ 0x28
20026ad8:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
20026ada:	e9dd ce10 	ldrd	ip, lr, [sp, #64]	@ 0x40
20026ade:	930b      	str	r3, [sp, #44]	@ 0x2c
20026ae0:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20026ae2:	9308      	str	r3, [sp, #32]
20026ae4:	9b1b      	ldr	r3, [sp, #108]	@ 0x6c
20026ae6:	9309      	str	r3, [sp, #36]	@ 0x24
20026ae8:	9b18      	ldr	r3, [sp, #96]	@ 0x60
20026aea:	9306      	str	r3, [sp, #24]
20026aec:	9b19      	ldr	r3, [sp, #100]	@ 0x64
20026aee:	9307      	str	r3, [sp, #28]
20026af0:	9b16      	ldr	r3, [sp, #88]	@ 0x58
20026af2:	9304      	str	r3, [sp, #16]
20026af4:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
20026af6:	9305      	str	r3, [sp, #20]
20026af8:	9b14      	ldr	r3, [sp, #80]	@ 0x50
20026afa:	9303      	str	r3, [sp, #12]
20026afc:	9b12      	ldr	r3, [sp, #72]	@ 0x48
20026afe:	9301      	str	r3, [sp, #4]
20026b00:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
20026b02:	9302      	str	r3, [sp, #8]
20026b04:	e9dd 320e 	ldrd	r3, r2, [sp, #56]	@ 0x38
20026b08:	e002      	b.n	20026b10 <mbedtls_sha512_process+0x188>
20026b0a:	bf00      	nop
20026b0c:	2002bf10 	.word	0x2002bf10
20026b10:	9c04      	ldr	r4, [sp, #16]
20026b12:	9e04      	ldr	r6, [sp, #16]
20026b14:	ea4f 3894 	mov.w	r8, r4, lsr #14
20026b18:	9c05      	ldr	r4, [sp, #20]
20026b1a:	9900      	ldr	r1, [sp, #0]
20026b1c:	ea48 4884 	orr.w	r8, r8, r4, lsl #18
20026b20:	ea4f 3994 	mov.w	r9, r4, lsr #14
20026b24:	9c04      	ldr	r4, [sp, #16]
20026b26:	ea49 4984 	orr.w	r9, r9, r4, lsl #18
20026b2a:	0ca5      	lsrs	r5, r4, #18
20026b2c:	9c05      	ldr	r4, [sp, #20]
20026b2e:	ea45 3584 	orr.w	r5, r5, r4, lsl #14
20026b32:	0ca4      	lsrs	r4, r4, #18
20026b34:	ea44 3486 	orr.w	r4, r4, r6, lsl #14
20026b38:	ea89 0904 	eor.w	r9, r9, r4
20026b3c:	9c05      	ldr	r4, [sp, #20]
20026b3e:	ea88 0805 	eor.w	r8, r8, r5
20026b42:	05f5      	lsls	r5, r6, #23
20026b44:	ea45 2554 	orr.w	r5, r5, r4, lsr #9
20026b48:	05e4      	lsls	r4, r4, #23
20026b4a:	ea44 2456 	orr.w	r4, r4, r6, lsr #9
20026b4e:	ea88 0805 	eor.w	r8, r8, r5
20026b52:	ea89 0904 	eor.w	r9, r9, r4
20026b56:	e9d1 5700 	ldrd	r5, r7, [r1]
20026b5a:	e9d0 6400 	ldrd	r6, r4, [r0]
20026b5e:	19ad      	adds	r5, r5, r6
20026b60:	eb47 0404 	adc.w	r4, r7, r4
20026b64:	9e06      	ldr	r6, [sp, #24]
20026b66:	9f08      	ldr	r7, [sp, #32]
20026b68:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026b6a:	407e      	eors	r6, r7
20026b6c:	9f07      	ldr	r7, [sp, #28]
20026b6e:	eb18 0505 	adds.w	r5, r8, r5
20026b72:	ea87 0701 	eor.w	r7, r7, r1
20026b76:	9904      	ldr	r1, [sp, #16]
20026b78:	eb49 0404 	adc.w	r4, r9, r4
20026b7c:	400e      	ands	r6, r1
20026b7e:	9905      	ldr	r1, [sp, #20]
20026b80:	ea4f 7813 	mov.w	r8, r3, lsr #28
20026b84:	400f      	ands	r7, r1
20026b86:	9908      	ldr	r1, [sp, #32]
20026b88:	ea4f 7983 	mov.w	r9, r3, lsl #30
20026b8c:	404e      	eors	r6, r1
20026b8e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026b90:	19ad      	adds	r5, r5, r6
20026b92:	ea87 0701 	eor.w	r7, r7, r1
20026b96:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026b98:	eb44 0407 	adc.w	r4, r4, r7
20026b9c:	186d      	adds	r5, r5, r1
20026b9e:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026ba0:	ea4f 7712 	mov.w	r7, r2, lsr #28
20026ba4:	eb41 0404 	adc.w	r4, r1, r4
20026ba8:	9903      	ldr	r1, [sp, #12]
20026baa:	0796      	lsls	r6, r2, #30
20026bac:	1949      	adds	r1, r1, r5
20026bae:	ea46 0693 	orr.w	r6, r6, r3, lsr #2
20026bb2:	ea47 1703 	orr.w	r7, r7, r3, lsl #4
20026bb6:	910a      	str	r1, [sp, #40]	@ 0x28
20026bb8:	ea87 0706 	eor.w	r7, r7, r6
20026bbc:	eb4b 0104 	adc.w	r1, fp, r4
20026bc0:	0656      	lsls	r6, r2, #25
20026bc2:	ea49 0992 	orr.w	r9, r9, r2, lsr #2
20026bc6:	ea46 16d3 	orr.w	r6, r6, r3, lsr #7
20026bca:	910b      	str	r1, [sp, #44]	@ 0x2c
20026bcc:	ea48 1802 	orr.w	r8, r8, r2, lsl #4
20026bd0:	9901      	ldr	r1, [sp, #4]
20026bd2:	ea88 0809 	eor.w	r8, r8, r9
20026bd6:	4077      	eors	r7, r6
20026bd8:	ea4f 6943 	mov.w	r9, r3, lsl #25
20026bdc:	ea43 060c 	orr.w	r6, r3, ip
20026be0:	ea49 19d2 	orr.w	r9, r9, r2, lsr #7
20026be4:	400e      	ands	r6, r1
20026be6:	9902      	ldr	r1, [sp, #8]
20026be8:	ea03 0b0c 	and.w	fp, r3, ip
20026bec:	ea88 0809 	eor.w	r8, r8, r9
20026bf0:	ea42 090e 	orr.w	r9, r2, lr
20026bf4:	ea09 0901 	and.w	r9, r9, r1
20026bf8:	ea46 060b 	orr.w	r6, r6, fp
20026bfc:	ea02 010e 	and.w	r1, r2, lr
20026c00:	eb18 0606 	adds.w	r6, r8, r6
20026c04:	ea49 0901 	orr.w	r9, r9, r1
20026c08:	eb47 0709 	adc.w	r7, r7, r9
20026c0c:	1971      	adds	r1, r6, r5
20026c0e:	9103      	str	r1, [sp, #12]
20026c10:	9900      	ldr	r1, [sp, #0]
20026c12:	eb44 0b07 	adc.w	fp, r4, r7
20026c16:	e9d0 6702 	ldrd	r6, r7, [r0, #8]
20026c1a:	e9d1 4502 	ldrd	r4, r5, [r1, #8]
20026c1e:	9908      	ldr	r1, [sp, #32]
20026c20:	19a4      	adds	r4, r4, r6
20026c22:	eb45 0507 	adc.w	r5, r5, r7
20026c26:	1864      	adds	r4, r4, r1
20026c28:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026c2a:	9e06      	ldr	r6, [sp, #24]
20026c2c:	eb41 0505 	adc.w	r5, r1, r5
20026c30:	9904      	ldr	r1, [sp, #16]
20026c32:	ea81 0706 	eor.w	r7, r1, r6
20026c36:	9905      	ldr	r1, [sp, #20]
20026c38:	9e07      	ldr	r6, [sp, #28]
20026c3a:	404e      	eors	r6, r1
20026c3c:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026c3e:	400f      	ands	r7, r1
20026c40:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026c42:	400e      	ands	r6, r1
20026c44:	9906      	ldr	r1, [sp, #24]
20026c46:	404f      	eors	r7, r1
20026c48:	9907      	ldr	r1, [sp, #28]
20026c4a:	19e4      	adds	r4, r4, r7
20026c4c:	ea86 0601 	eor.w	r6, r6, r1
20026c50:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026c52:	eb45 0506 	adc.w	r5, r5, r6
20026c56:	0b8f      	lsrs	r7, r1, #14
20026c58:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026c5a:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026c5e:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026c62:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026c64:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026c68:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026c6c:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026c6e:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026c72:	0c8e      	lsrs	r6, r1, #18
20026c74:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026c76:	ea87 0709 	eor.w	r7, r7, r9
20026c7a:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026c7e:	ea88 0806 	eor.w	r8, r8, r6
20026c82:	05ce      	lsls	r6, r1, #23
20026c84:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026c86:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026c8a:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026c8e:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026c90:	407e      	eors	r6, r7
20026c92:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026c96:	9901      	ldr	r1, [sp, #4]
20026c98:	19a4      	adds	r4, r4, r6
20026c9a:	ea88 0809 	eor.w	r8, r8, r9
20026c9e:	eb45 0808 	adc.w	r8, r5, r8
20026ca2:	1909      	adds	r1, r1, r4
20026ca4:	9108      	str	r1, [sp, #32]
20026ca6:	9902      	ldr	r1, [sp, #8]
20026ca8:	ea4f 761b 	mov.w	r6, fp, lsr #28
20026cac:	eb41 0108 	adc.w	r1, r1, r8
20026cb0:	9109      	str	r1, [sp, #36]	@ 0x24
20026cb2:	9903      	ldr	r1, [sp, #12]
20026cb4:	ea4f 758b 	mov.w	r5, fp, lsl #30
20026cb8:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026cbc:	0f0f      	lsrs	r7, r1, #28
20026cbe:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026cc2:	ea4f 7981 	mov.w	r9, r1, lsl #30
20026cc6:	ea49 099b 	orr.w	r9, r9, fp, lsr #2
20026cca:	ea47 170b 	orr.w	r7, r7, fp, lsl #4
20026cce:	406e      	eors	r6, r5
20026cd0:	ea4f 654b 	mov.w	r5, fp, lsl #25
20026cd4:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20026cd8:	ea87 0709 	eor.w	r7, r7, r9
20026cdc:	ea4f 6941 	mov.w	r9, r1, lsl #25
20026ce0:	ea49 19db 	orr.w	r9, r9, fp, lsr #7
20026ce4:	406e      	eors	r6, r5
20026ce6:	ea43 0501 	orr.w	r5, r3, r1
20026cea:	ea87 0709 	eor.w	r7, r7, r9
20026cee:	4019      	ands	r1, r3
20026cf0:	ea42 090b 	orr.w	r9, r2, fp
20026cf4:	ea05 050c 	and.w	r5, r5, ip
20026cf8:	ea09 090e 	and.w	r9, r9, lr
20026cfc:	430d      	orrs	r5, r1
20026cfe:	ea02 010b 	and.w	r1, r2, fp
20026d02:	197d      	adds	r5, r7, r5
20026d04:	ea49 0901 	orr.w	r9, r9, r1
20026d08:	eb46 0609 	adc.w	r6, r6, r9
20026d0c:	1929      	adds	r1, r5, r4
20026d0e:	9101      	str	r1, [sp, #4]
20026d10:	eb48 0106 	adc.w	r1, r8, r6
20026d14:	9102      	str	r1, [sp, #8]
20026d16:	9900      	ldr	r1, [sp, #0]
20026d18:	e9d0 6704 	ldrd	r6, r7, [r0, #16]
20026d1c:	e9d1 4504 	ldrd	r4, r5, [r1, #16]
20026d20:	9906      	ldr	r1, [sp, #24]
20026d22:	19a4      	adds	r4, r4, r6
20026d24:	eb45 0507 	adc.w	r5, r5, r7
20026d28:	1864      	adds	r4, r4, r1
20026d2a:	9907      	ldr	r1, [sp, #28]
20026d2c:	eb41 0505 	adc.w	r5, r1, r5
20026d30:	9904      	ldr	r1, [sp, #16]
20026d32:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
20026d34:	ea81 0706 	eor.w	r7, r1, r6
20026d38:	9905      	ldr	r1, [sp, #20]
20026d3a:	9e0b      	ldr	r6, [sp, #44]	@ 0x2c
20026d3c:	404e      	eors	r6, r1
20026d3e:	9908      	ldr	r1, [sp, #32]
20026d40:	400f      	ands	r7, r1
20026d42:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026d44:	400e      	ands	r6, r1
20026d46:	9904      	ldr	r1, [sp, #16]
20026d48:	404f      	eors	r7, r1
20026d4a:	9905      	ldr	r1, [sp, #20]
20026d4c:	19e4      	adds	r4, r4, r7
20026d4e:	ea86 0601 	eor.w	r6, r6, r1
20026d52:	9908      	ldr	r1, [sp, #32]
20026d54:	eb45 0506 	adc.w	r5, r5, r6
20026d58:	0b8f      	lsrs	r7, r1, #14
20026d5a:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026d5c:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026d60:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026d64:	9908      	ldr	r1, [sp, #32]
20026d66:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026d6a:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026d6e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026d70:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026d74:	0c8e      	lsrs	r6, r1, #18
20026d76:	9908      	ldr	r1, [sp, #32]
20026d78:	ea87 0709 	eor.w	r7, r7, r9
20026d7c:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026d80:	ea88 0806 	eor.w	r8, r8, r6
20026d84:	05ce      	lsls	r6, r1, #23
20026d86:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026d88:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026d8c:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026d90:	9908      	ldr	r1, [sp, #32]
20026d92:	407e      	eors	r6, r7
20026d94:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026d98:	19a4      	adds	r4, r4, r6
20026d9a:	ea88 0809 	eor.w	r8, r8, r9
20026d9e:	eb45 0808 	adc.w	r8, r5, r8
20026da2:	eb1c 0104 	adds.w	r1, ip, r4
20026da6:	9106      	str	r1, [sp, #24]
20026da8:	eb4e 0108 	adc.w	r1, lr, r8
20026dac:	9107      	str	r1, [sp, #28]
20026dae:	9901      	ldr	r1, [sp, #4]
20026db0:	0f0f      	lsrs	r7, r1, #28
20026db2:	9902      	ldr	r1, [sp, #8]
20026db4:	ea47 1701 	orr.w	r7, r7, r1, lsl #4
20026db8:	0f0e      	lsrs	r6, r1, #28
20026dba:	9901      	ldr	r1, [sp, #4]
20026dbc:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026dc0:	ea4f 7c81 	mov.w	ip, r1, lsl #30
20026dc4:	9902      	ldr	r1, [sp, #8]
20026dc6:	ea4c 0c91 	orr.w	ip, ip, r1, lsr #2
20026dca:	078d      	lsls	r5, r1, #30
20026dcc:	9901      	ldr	r1, [sp, #4]
20026dce:	ea87 070c 	eor.w	r7, r7, ip
20026dd2:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026dd6:	ea4f 6c41 	mov.w	ip, r1, lsl #25
20026dda:	9902      	ldr	r1, [sp, #8]
20026ddc:	406e      	eors	r6, r5
20026dde:	ea4c 1cd1 	orr.w	ip, ip, r1, lsr #7
20026de2:	064d      	lsls	r5, r1, #25
20026de4:	9901      	ldr	r1, [sp, #4]
20026de6:	ea87 070c 	eor.w	r7, r7, ip
20026dea:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20026dee:	406e      	eors	r6, r5
20026df0:	9903      	ldr	r1, [sp, #12]
20026df2:	9d01      	ldr	r5, [sp, #4]
20026df4:	430d      	orrs	r5, r1
20026df6:	9902      	ldr	r1, [sp, #8]
20026df8:	ea4b 0c01 	orr.w	ip, fp, r1
20026dfc:	ea05 0103 	and.w	r1, r5, r3
20026e00:	910c      	str	r1, [sp, #48]	@ 0x30
20026e02:	9d01      	ldr	r5, [sp, #4]
20026e04:	9903      	ldr	r1, [sp, #12]
20026e06:	ea0c 0c02 	and.w	ip, ip, r2
20026e0a:	ea01 0905 	and.w	r9, r1, r5
20026e0e:	9902      	ldr	r1, [sp, #8]
20026e10:	ea0b 0e01 	and.w	lr, fp, r1
20026e14:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026e16:	ea4c 0c0e 	orr.w	ip, ip, lr
20026e1a:	ea41 0509 	orr.w	r5, r1, r9
20026e1e:	9900      	ldr	r1, [sp, #0]
20026e20:	197d      	adds	r5, r7, r5
20026e22:	eb46 060c 	adc.w	r6, r6, ip
20026e26:	eb15 0904 	adds.w	r9, r5, r4
20026e2a:	e9d1 4506 	ldrd	r4, r5, [r1, #24]
20026e2e:	9904      	ldr	r1, [sp, #16]
20026e30:	eb48 0806 	adc.w	r8, r8, r6
20026e34:	e9d0 6706 	ldrd	r6, r7, [r0, #24]
20026e38:	19a4      	adds	r4, r4, r6
20026e3a:	eb45 0507 	adc.w	r5, r5, r7
20026e3e:	1864      	adds	r4, r4, r1
20026e40:	9905      	ldr	r1, [sp, #20]
20026e42:	9e08      	ldr	r6, [sp, #32]
20026e44:	eb41 0505 	adc.w	r5, r1, r5
20026e48:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026e4a:	ea81 0706 	eor.w	r7, r1, r6
20026e4e:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026e50:	9e09      	ldr	r6, [sp, #36]	@ 0x24
20026e52:	404e      	eors	r6, r1
20026e54:	9906      	ldr	r1, [sp, #24]
20026e56:	400f      	ands	r7, r1
20026e58:	9907      	ldr	r1, [sp, #28]
20026e5a:	400e      	ands	r6, r1
20026e5c:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026e5e:	404f      	eors	r7, r1
20026e60:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026e62:	19e4      	adds	r4, r4, r7
20026e64:	ea86 0601 	eor.w	r6, r6, r1
20026e68:	9906      	ldr	r1, [sp, #24]
20026e6a:	eb45 0506 	adc.w	r5, r5, r6
20026e6e:	ea4f 3c91 	mov.w	ip, r1, lsr #14
20026e72:	9907      	ldr	r1, [sp, #28]
20026e74:	ea4c 4c81 	orr.w	ip, ip, r1, lsl #18
20026e78:	0b8e      	lsrs	r6, r1, #14
20026e7a:	9906      	ldr	r1, [sp, #24]
20026e7c:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20026e80:	ea4f 4e91 	mov.w	lr, r1, lsr #18
20026e84:	9907      	ldr	r1, [sp, #28]
20026e86:	ea4e 3e81 	orr.w	lr, lr, r1, lsl #14
20026e8a:	0c8f      	lsrs	r7, r1, #18
20026e8c:	9906      	ldr	r1, [sp, #24]
20026e8e:	ea8c 0c0e 	eor.w	ip, ip, lr
20026e92:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20026e96:	407e      	eors	r6, r7
20026e98:	05cf      	lsls	r7, r1, #23
20026e9a:	9907      	ldr	r1, [sp, #28]
20026e9c:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20026ea0:	ea4f 5ec1 	mov.w	lr, r1, lsl #23
20026ea4:	9906      	ldr	r1, [sp, #24]
20026ea6:	ea8c 0707 	eor.w	r7, ip, r7
20026eaa:	ea4e 2e51 	orr.w	lr, lr, r1, lsr #9
20026eae:	19e4      	adds	r4, r4, r7
20026eb0:	ea86 060e 	eor.w	r6, r6, lr
20026eb4:	eb45 0606 	adc.w	r6, r5, r6
20026eb8:	191b      	adds	r3, r3, r4
20026eba:	930c      	str	r3, [sp, #48]	@ 0x30
20026ebc:	eb42 0306 	adc.w	r3, r2, r6
20026ec0:	930d      	str	r3, [sp, #52]	@ 0x34
20026ec2:	ea4f 7218 	mov.w	r2, r8, lsr #28
20026ec6:	ea4f 7388 	mov.w	r3, r8, lsl #30
20026eca:	ea43 0399 	orr.w	r3, r3, r9, lsr #2
20026ece:	ea4f 7519 	mov.w	r5, r9, lsr #28
20026ed2:	ea42 1209 	orr.w	r2, r2, r9, lsl #4
20026ed6:	ea4f 7789 	mov.w	r7, r9, lsl #30
20026eda:	ea47 0798 	orr.w	r7, r7, r8, lsr #2
20026ede:	ea45 1508 	orr.w	r5, r5, r8, lsl #4
20026ee2:	405a      	eors	r2, r3
20026ee4:	ea4f 6348 	mov.w	r3, r8, lsl #25
20026ee8:	9902      	ldr	r1, [sp, #8]
20026eea:	ea43 13d9 	orr.w	r3, r3, r9, lsr #7
20026eee:	407d      	eors	r5, r7
20026ef0:	ea4f 6749 	mov.w	r7, r9, lsl #25
20026ef4:	ea47 17d8 	orr.w	r7, r7, r8, lsr #7
20026ef8:	405a      	eors	r2, r3
20026efa:	9b01      	ldr	r3, [sp, #4]
20026efc:	407d      	eors	r5, r7
20026efe:	ea41 0708 	orr.w	r7, r1, r8
20026f02:	9903      	ldr	r1, [sp, #12]
20026f04:	ea43 0309 	orr.w	r3, r3, r9
20026f08:	400b      	ands	r3, r1
20026f0a:	9901      	ldr	r1, [sp, #4]
20026f0c:	ea07 070b 	and.w	r7, r7, fp
20026f10:	ea01 0e09 	and.w	lr, r1, r9
20026f14:	9902      	ldr	r1, [sp, #8]
20026f16:	ea43 030e 	orr.w	r3, r3, lr
20026f1a:	ea01 0c08 	and.w	ip, r1, r8
20026f1e:	ea47 070c 	orr.w	r7, r7, ip
20026f22:	18eb      	adds	r3, r5, r3
20026f24:	eb42 0207 	adc.w	r2, r2, r7
20026f28:	191b      	adds	r3, r3, r4
20026f2a:	9304      	str	r3, [sp, #16]
20026f2c:	eb46 0302 	adc.w	r3, r6, r2
20026f30:	9305      	str	r3, [sp, #20]
20026f32:	9b00      	ldr	r3, [sp, #0]
20026f34:	6a1b      	ldr	r3, [r3, #32]
20026f36:	9a00      	ldr	r2, [sp, #0]
20026f38:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026f3a:	6a52      	ldr	r2, [r2, #36]	@ 0x24
20026f3c:	e9d0 4508 	ldrd	r4, r5, [r0, #32]
20026f40:	191b      	adds	r3, r3, r4
20026f42:	eb42 0205 	adc.w	r2, r2, r5
20026f46:	185b      	adds	r3, r3, r1
20026f48:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026f4a:	9c06      	ldr	r4, [sp, #24]
20026f4c:	eb41 0202 	adc.w	r2, r1, r2
20026f50:	9908      	ldr	r1, [sp, #32]
20026f52:	ea81 0504 	eor.w	r5, r1, r4
20026f56:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026f58:	9c07      	ldr	r4, [sp, #28]
20026f5a:	404c      	eors	r4, r1
20026f5c:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026f5e:	400d      	ands	r5, r1
20026f60:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026f62:	400c      	ands	r4, r1
20026f64:	9908      	ldr	r1, [sp, #32]
20026f66:	404d      	eors	r5, r1
20026f68:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026f6a:	195b      	adds	r3, r3, r5
20026f6c:	ea84 0401 	eor.w	r4, r4, r1
20026f70:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026f72:	eb42 0204 	adc.w	r2, r2, r4
20026f76:	0b8e      	lsrs	r6, r1, #14
20026f78:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026f7a:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20026f7e:	0b8c      	lsrs	r4, r1, #14
20026f80:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026f82:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20026f86:	0c8f      	lsrs	r7, r1, #18
20026f88:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026f8a:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20026f8e:	0c8d      	lsrs	r5, r1, #18
20026f90:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026f92:	407e      	eors	r6, r7
20026f94:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20026f98:	406c      	eors	r4, r5
20026f9a:	05cd      	lsls	r5, r1, #23
20026f9c:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026f9e:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20026fa2:	05cf      	lsls	r7, r1, #23
20026fa4:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026fa6:	4075      	eors	r5, r6
20026fa8:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20026fac:	9903      	ldr	r1, [sp, #12]
20026fae:	195b      	adds	r3, r3, r5
20026fb0:	ea84 0407 	eor.w	r4, r4, r7
20026fb4:	eb42 0204 	adc.w	r2, r2, r4
20026fb8:	18c9      	adds	r1, r1, r3
20026fba:	910a      	str	r1, [sp, #40]	@ 0x28
20026fbc:	eb4b 0102 	adc.w	r1, fp, r2
20026fc0:	910b      	str	r1, [sp, #44]	@ 0x2c
20026fc2:	9904      	ldr	r1, [sp, #16]
20026fc4:	0f0e      	lsrs	r6, r1, #28
20026fc6:	9905      	ldr	r1, [sp, #20]
20026fc8:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026fcc:	0f0d      	lsrs	r5, r1, #28
20026fce:	9904      	ldr	r1, [sp, #16]
20026fd0:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
20026fd4:	078f      	lsls	r7, r1, #30
20026fd6:	9905      	ldr	r1, [sp, #20]
20026fd8:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
20026fdc:	078c      	lsls	r4, r1, #30
20026fde:	9904      	ldr	r1, [sp, #16]
20026fe0:	407e      	eors	r6, r7
20026fe2:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20026fe6:	064f      	lsls	r7, r1, #25
20026fe8:	9905      	ldr	r1, [sp, #20]
20026fea:	4065      	eors	r5, r4
20026fec:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
20026ff0:	064c      	lsls	r4, r1, #25
20026ff2:	9904      	ldr	r1, [sp, #16]
20026ff4:	407e      	eors	r6, r7
20026ff6:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
20026ffa:	4065      	eors	r5, r4
20026ffc:	ea49 0401 	orr.w	r4, r9, r1
20027000:	9905      	ldr	r1, [sp, #20]
20027002:	ea48 0701 	orr.w	r7, r8, r1
20027006:	9901      	ldr	r1, [sp, #4]
20027008:	400c      	ands	r4, r1
2002700a:	9902      	ldr	r1, [sp, #8]
2002700c:	400f      	ands	r7, r1
2002700e:	9904      	ldr	r1, [sp, #16]
20027010:	ea09 0e01 	and.w	lr, r9, r1
20027014:	9905      	ldr	r1, [sp, #20]
20027016:	ea44 040e 	orr.w	r4, r4, lr
2002701a:	ea08 0c01 	and.w	ip, r8, r1
2002701e:	1934      	adds	r4, r6, r4
20027020:	ea47 070c 	orr.w	r7, r7, ip
20027024:	eb45 0507 	adc.w	r5, r5, r7
20027028:	18e3      	adds	r3, r4, r3
2002702a:	9303      	str	r3, [sp, #12]
2002702c:	9b00      	ldr	r3, [sp, #0]
2002702e:	eb42 0b05 	adc.w	fp, r2, r5
20027032:	9a00      	ldr	r2, [sp, #0]
20027034:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
20027036:	9908      	ldr	r1, [sp, #32]
20027038:	6ad2      	ldr	r2, [r2, #44]	@ 0x2c
2002703a:	e9d0 450a 	ldrd	r4, r5, [r0, #40]	@ 0x28
2002703e:	191b      	adds	r3, r3, r4
20027040:	eb42 0205 	adc.w	r2, r2, r5
20027044:	185b      	adds	r3, r3, r1
20027046:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027048:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
2002704a:	eb41 0202 	adc.w	r2, r1, r2
2002704e:	9906      	ldr	r1, [sp, #24]
20027050:	ea81 0504 	eor.w	r5, r1, r4
20027054:	9907      	ldr	r1, [sp, #28]
20027056:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
20027058:	404c      	eors	r4, r1
2002705a:	990a      	ldr	r1, [sp, #40]	@ 0x28
2002705c:	400d      	ands	r5, r1
2002705e:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027060:	400c      	ands	r4, r1
20027062:	9906      	ldr	r1, [sp, #24]
20027064:	404d      	eors	r5, r1
20027066:	9907      	ldr	r1, [sp, #28]
20027068:	195b      	adds	r3, r3, r5
2002706a:	ea84 0401 	eor.w	r4, r4, r1
2002706e:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027070:	eb42 0204 	adc.w	r2, r2, r4
20027074:	0b8e      	lsrs	r6, r1, #14
20027076:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027078:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
2002707c:	0b8c      	lsrs	r4, r1, #14
2002707e:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027080:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20027084:	0c8f      	lsrs	r7, r1, #18
20027086:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027088:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
2002708c:	0c8d      	lsrs	r5, r1, #18
2002708e:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027090:	407e      	eors	r6, r7
20027092:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20027096:	406c      	eors	r4, r5
20027098:	05cd      	lsls	r5, r1, #23
2002709a:	990b      	ldr	r1, [sp, #44]	@ 0x2c
2002709c:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
200270a0:	05cf      	lsls	r7, r1, #23
200270a2:	990a      	ldr	r1, [sp, #40]	@ 0x28
200270a4:	4075      	eors	r5, r6
200270a6:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
200270aa:	9901      	ldr	r1, [sp, #4]
200270ac:	195b      	adds	r3, r3, r5
200270ae:	ea84 0407 	eor.w	r4, r4, r7
200270b2:	eb42 0204 	adc.w	r2, r2, r4
200270b6:	18c9      	adds	r1, r1, r3
200270b8:	9108      	str	r1, [sp, #32]
200270ba:	9902      	ldr	r1, [sp, #8]
200270bc:	ea4f 751b 	mov.w	r5, fp, lsr #28
200270c0:	eb41 0102 	adc.w	r1, r1, r2
200270c4:	9109      	str	r1, [sp, #36]	@ 0x24
200270c6:	9903      	ldr	r1, [sp, #12]
200270c8:	ea4f 748b 	mov.w	r4, fp, lsl #30
200270cc:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
200270d0:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
200270d4:	0f0e      	lsrs	r6, r1, #28
200270d6:	078f      	lsls	r7, r1, #30
200270d8:	4065      	eors	r5, r4
200270da:	ea4f 644b 	mov.w	r4, fp, lsl #25
200270de:	ea47 079b 	orr.w	r7, r7, fp, lsr #2
200270e2:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
200270e6:	ea46 160b 	orr.w	r6, r6, fp, lsl #4
200270ea:	407e      	eors	r6, r7
200270ec:	4065      	eors	r5, r4
200270ee:	064f      	lsls	r7, r1, #25
200270f0:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
200270f4:	430c      	orrs	r4, r1
200270f6:	9905      	ldr	r1, [sp, #20]
200270f8:	ea47 17db 	orr.w	r7, r7, fp, lsr #7
200270fc:	407e      	eors	r6, r7
200270fe:	ea41 070b 	orr.w	r7, r1, fp
20027102:	ea04 0109 	and.w	r1, r4, r9
20027106:	9101      	str	r1, [sp, #4]
20027108:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
2002710c:	ea01 0e04 	and.w	lr, r1, r4
20027110:	9905      	ldr	r1, [sp, #20]
20027112:	ea07 0708 	and.w	r7, r7, r8
20027116:	ea01 0c0b 	and.w	ip, r1, fp
2002711a:	9901      	ldr	r1, [sp, #4]
2002711c:	ea47 070c 	orr.w	r7, r7, ip
20027120:	ea41 040e 	orr.w	r4, r1, lr
20027124:	1934      	adds	r4, r6, r4
20027126:	eb45 0507 	adc.w	r5, r5, r7
2002712a:	18e3      	adds	r3, r4, r3
2002712c:	9301      	str	r3, [sp, #4]
2002712e:	eb42 0305 	adc.w	r3, r2, r5
20027132:	9302      	str	r3, [sp, #8]
20027134:	9b00      	ldr	r3, [sp, #0]
20027136:	9a00      	ldr	r2, [sp, #0]
20027138:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
2002713a:	9906      	ldr	r1, [sp, #24]
2002713c:	6b52      	ldr	r2, [r2, #52]	@ 0x34
2002713e:	e9d0 450c 	ldrd	r4, r5, [r0, #48]	@ 0x30
20027142:	191b      	adds	r3, r3, r4
20027144:	eb42 0205 	adc.w	r2, r2, r5
20027148:	185b      	adds	r3, r3, r1
2002714a:	9907      	ldr	r1, [sp, #28]
2002714c:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
2002714e:	eb41 0202 	adc.w	r2, r1, r2
20027152:	990c      	ldr	r1, [sp, #48]	@ 0x30
20027154:	ea81 0504 	eor.w	r5, r1, r4
20027158:	990d      	ldr	r1, [sp, #52]	@ 0x34
2002715a:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
2002715c:	404c      	eors	r4, r1
2002715e:	9908      	ldr	r1, [sp, #32]
20027160:	400d      	ands	r5, r1
20027162:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027164:	400c      	ands	r4, r1
20027166:	990c      	ldr	r1, [sp, #48]	@ 0x30
20027168:	404d      	eors	r5, r1
2002716a:	990d      	ldr	r1, [sp, #52]	@ 0x34
2002716c:	195b      	adds	r3, r3, r5
2002716e:	ea84 0401 	eor.w	r4, r4, r1
20027172:	9908      	ldr	r1, [sp, #32]
20027174:	eb42 0204 	adc.w	r2, r2, r4
20027178:	0b8e      	lsrs	r6, r1, #14
2002717a:	9909      	ldr	r1, [sp, #36]	@ 0x24
2002717c:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20027180:	0b8c      	lsrs	r4, r1, #14
20027182:	9908      	ldr	r1, [sp, #32]
20027184:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20027188:	0c8f      	lsrs	r7, r1, #18
2002718a:	9909      	ldr	r1, [sp, #36]	@ 0x24
2002718c:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20027190:	0c8d      	lsrs	r5, r1, #18
20027192:	9908      	ldr	r1, [sp, #32]
20027194:	407e      	eors	r6, r7
20027196:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
2002719a:	406c      	eors	r4, r5
2002719c:	05cd      	lsls	r5, r1, #23
2002719e:	9909      	ldr	r1, [sp, #36]	@ 0x24
200271a0:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
200271a4:	05cf      	lsls	r7, r1, #23
200271a6:	9908      	ldr	r1, [sp, #32]
200271a8:	4075      	eors	r5, r6
200271aa:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
200271ae:	195b      	adds	r3, r3, r5
200271b0:	ea84 0407 	eor.w	r4, r4, r7
200271b4:	eb42 0204 	adc.w	r2, r2, r4
200271b8:	eb19 0103 	adds.w	r1, r9, r3
200271bc:	9106      	str	r1, [sp, #24]
200271be:	eb48 0102 	adc.w	r1, r8, r2
200271c2:	9107      	str	r1, [sp, #28]
200271c4:	9901      	ldr	r1, [sp, #4]
200271c6:	0f0e      	lsrs	r6, r1, #28
200271c8:	9902      	ldr	r1, [sp, #8]
200271ca:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
200271ce:	0f0d      	lsrs	r5, r1, #28
200271d0:	9901      	ldr	r1, [sp, #4]
200271d2:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
200271d6:	078f      	lsls	r7, r1, #30
200271d8:	9902      	ldr	r1, [sp, #8]
200271da:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
200271de:	078c      	lsls	r4, r1, #30
200271e0:	9901      	ldr	r1, [sp, #4]
200271e2:	407e      	eors	r6, r7
200271e4:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
200271e8:	064f      	lsls	r7, r1, #25
200271ea:	9902      	ldr	r1, [sp, #8]
200271ec:	4065      	eors	r5, r4
200271ee:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
200271f2:	064c      	lsls	r4, r1, #25
200271f4:	9901      	ldr	r1, [sp, #4]
200271f6:	407e      	eors	r6, r7
200271f8:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
200271fc:	4065      	eors	r5, r4
200271fe:	9903      	ldr	r1, [sp, #12]
20027200:	9c01      	ldr	r4, [sp, #4]
20027202:	430c      	orrs	r4, r1
20027204:	9902      	ldr	r1, [sp, #8]
20027206:	ea4b 0701 	orr.w	r7, fp, r1
2002720a:	9904      	ldr	r1, [sp, #16]
2002720c:	ea04 0801 	and.w	r8, r4, r1
20027210:	9905      	ldr	r1, [sp, #20]
20027212:	9c01      	ldr	r4, [sp, #4]
20027214:	400f      	ands	r7, r1
20027216:	9903      	ldr	r1, [sp, #12]
20027218:	ea01 0e04 	and.w	lr, r1, r4
2002721c:	9902      	ldr	r1, [sp, #8]
2002721e:	ea48 040e 	orr.w	r4, r8, lr
20027222:	ea0b 0c01 	and.w	ip, fp, r1
20027226:	1934      	adds	r4, r6, r4
20027228:	ea47 070c 	orr.w	r7, r7, ip
2002722c:	eb45 0507 	adc.w	r5, r5, r7
20027230:	eb14 0c03 	adds.w	ip, r4, r3
20027234:	9b00      	ldr	r3, [sp, #0]
20027236:	eb42 0e05 	adc.w	lr, r2, r5
2002723a:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
2002723c:	9a00      	ldr	r2, [sp, #0]
2002723e:	e9d0 450e 	ldrd	r4, r5, [r0, #56]	@ 0x38
20027242:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
20027244:	191c      	adds	r4, r3, r4
20027246:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
20027248:	eb42 0205 	adc.w	r2, r2, r5
2002724c:	18e4      	adds	r4, r4, r3
2002724e:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
20027250:	9908      	ldr	r1, [sp, #32]
20027252:	eb43 0202 	adc.w	r2, r3, r2
20027256:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
20027258:	3040      	adds	r0, #64	@ 0x40
2002725a:	ea83 0501 	eor.w	r5, r3, r1
2002725e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027260:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
20027262:	404b      	eors	r3, r1
20027264:	9906      	ldr	r1, [sp, #24]
20027266:	400d      	ands	r5, r1
20027268:	9907      	ldr	r1, [sp, #28]
2002726a:	400b      	ands	r3, r1
2002726c:	990a      	ldr	r1, [sp, #40]	@ 0x28
2002726e:	404d      	eors	r5, r1
20027270:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027272:	1964      	adds	r4, r4, r5
20027274:	ea83 0301 	eor.w	r3, r3, r1
20027278:	eb42 0203 	adc.w	r2, r2, r3
2002727c:	9b06      	ldr	r3, [sp, #24]
2002727e:	9906      	ldr	r1, [sp, #24]
20027280:	0b9e      	lsrs	r6, r3, #14
20027282:	9b07      	ldr	r3, [sp, #28]
20027284:	0c8f      	lsrs	r7, r1, #18
20027286:	ea46 4683 	orr.w	r6, r6, r3, lsl #18
2002728a:	0b9b      	lsrs	r3, r3, #14
2002728c:	ea43 4381 	orr.w	r3, r3, r1, lsl #18
20027290:	9907      	ldr	r1, [sp, #28]
20027292:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20027296:	0c8d      	lsrs	r5, r1, #18
20027298:	9906      	ldr	r1, [sp, #24]
2002729a:	407e      	eors	r6, r7
2002729c:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
200272a0:	406b      	eors	r3, r5
200272a2:	05cd      	lsls	r5, r1, #23
200272a4:	9907      	ldr	r1, [sp, #28]
200272a6:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
200272aa:	05cf      	lsls	r7, r1, #23
200272ac:	9906      	ldr	r1, [sp, #24]
200272ae:	4075      	eors	r5, r6
200272b0:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
200272b4:	1964      	adds	r4, r4, r5
200272b6:	ea83 0307 	eor.w	r3, r3, r7
200272ba:	eb42 0203 	adc.w	r2, r2, r3
200272be:	9b04      	ldr	r3, [sp, #16]
200272c0:	ea4f 751e 	mov.w	r5, lr, lsr #28
200272c4:	191b      	adds	r3, r3, r4
200272c6:	9304      	str	r3, [sp, #16]
200272c8:	9b05      	ldr	r3, [sp, #20]
200272ca:	ea4f 761c 	mov.w	r6, ip, lsr #28
200272ce:	eb43 0302 	adc.w	r3, r3, r2
200272d2:	9305      	str	r3, [sp, #20]
200272d4:	ea4f 738e 	mov.w	r3, lr, lsl #30
200272d8:	ea43 039c 	orr.w	r3, r3, ip, lsr #2
200272dc:	ea45 150c 	orr.w	r5, r5, ip, lsl #4
200272e0:	ea4f 778c 	mov.w	r7, ip, lsl #30
200272e4:	ea47 079e 	orr.w	r7, r7, lr, lsr #2
200272e8:	405d      	eors	r5, r3
200272ea:	ea46 160e 	orr.w	r6, r6, lr, lsl #4
200272ee:	ea4f 634e 	mov.w	r3, lr, lsl #25
200272f2:	9902      	ldr	r1, [sp, #8]
200272f4:	407e      	eors	r6, r7
200272f6:	ea43 13dc 	orr.w	r3, r3, ip, lsr #7
200272fa:	ea4f 674c 	mov.w	r7, ip, lsl #25
200272fe:	ea47 17de 	orr.w	r7, r7, lr, lsr #7
20027302:	405d      	eors	r5, r3
20027304:	9b01      	ldr	r3, [sp, #4]
20027306:	407e      	eors	r6, r7
20027308:	ea41 070e 	orr.w	r7, r1, lr
2002730c:	9903      	ldr	r1, [sp, #12]
2002730e:	ea43 030c 	orr.w	r3, r3, ip
20027312:	400b      	ands	r3, r1
20027314:	9901      	ldr	r1, [sp, #4]
20027316:	ea07 070b 	and.w	r7, r7, fp
2002731a:	ea01 090c 	and.w	r9, r1, ip
2002731e:	9902      	ldr	r1, [sp, #8]
20027320:	ea43 0309 	orr.w	r3, r3, r9
20027324:	ea01 080e 	and.w	r8, r1, lr
20027328:	9900      	ldr	r1, [sp, #0]
2002732a:	18f3      	adds	r3, r6, r3
2002732c:	f101 0140 	add.w	r1, r1, #64	@ 0x40
20027330:	9100      	str	r1, [sp, #0]
20027332:	ea47 0708 	orr.w	r7, r7, r8
20027336:	eb45 0507 	adc.w	r5, r5, r7
2002733a:	4928      	ldr	r1, [pc, #160]	@ (200273dc <mbedtls_sha512_process+0xa54>)
2002733c:	191b      	adds	r3, r3, r4
2002733e:	9c00      	ldr	r4, [sp, #0]
20027340:	eb42 0205 	adc.w	r2, r2, r5
20027344:	42a1      	cmp	r1, r4
20027346:	f47f abe3 	bne.w	20026b10 <mbedtls_sha512_process+0x188>
2002734a:	990e      	ldr	r1, [sp, #56]	@ 0x38
2002734c:	18cb      	adds	r3, r1, r3
2002734e:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20027350:	eb42 0201 	adc.w	r2, r2, r1
20027354:	e9ca 3204 	strd	r3, r2, [sl, #16]
20027358:	9b10      	ldr	r3, [sp, #64]	@ 0x40
2002735a:	9a11      	ldr	r2, [sp, #68]	@ 0x44
2002735c:	eb13 030c 	adds.w	r3, r3, ip
20027360:	eb4e 0202 	adc.w	r2, lr, r2
20027364:	e9ca 3206 	strd	r3, r2, [sl, #24]
20027368:	9a01      	ldr	r2, [sp, #4]
2002736a:	9b12      	ldr	r3, [sp, #72]	@ 0x48
2002736c:	9913      	ldr	r1, [sp, #76]	@ 0x4c
2002736e:	189b      	adds	r3, r3, r2
20027370:	9a02      	ldr	r2, [sp, #8]
20027372:	eb42 0201 	adc.w	r2, r2, r1
20027376:	e9ca 3208 	strd	r3, r2, [sl, #32]
2002737a:	9a03      	ldr	r2, [sp, #12]
2002737c:	9b14      	ldr	r3, [sp, #80]	@ 0x50
2002737e:	9917      	ldr	r1, [sp, #92]	@ 0x5c
20027380:	189b      	adds	r3, r3, r2
20027382:	9a15      	ldr	r2, [sp, #84]	@ 0x54
20027384:	eb4b 0202 	adc.w	r2, fp, r2
20027388:	e9ca 320a 	strd	r3, r2, [sl, #40]	@ 0x28
2002738c:	9a04      	ldr	r2, [sp, #16]
2002738e:	9b16      	ldr	r3, [sp, #88]	@ 0x58
20027390:	189b      	adds	r3, r3, r2
20027392:	9a05      	ldr	r2, [sp, #20]
20027394:	eb42 0201 	adc.w	r2, r2, r1
20027398:	e9ca 320c 	strd	r3, r2, [sl, #48]	@ 0x30
2002739c:	9b18      	ldr	r3, [sp, #96]	@ 0x60
2002739e:	9a06      	ldr	r2, [sp, #24]
200273a0:	9919      	ldr	r1, [sp, #100]	@ 0x64
200273a2:	189a      	adds	r2, r3, r2
200273a4:	9b07      	ldr	r3, [sp, #28]
200273a6:	eb43 0301 	adc.w	r3, r3, r1
200273aa:	e9ca 230e 	strd	r2, r3, [sl, #56]	@ 0x38
200273ae:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
200273b0:	9a08      	ldr	r2, [sp, #32]
200273b2:	991b      	ldr	r1, [sp, #108]	@ 0x6c
200273b4:	189a      	adds	r2, r3, r2
200273b6:	9b09      	ldr	r3, [sp, #36]	@ 0x24
200273b8:	eb43 0301 	adc.w	r3, r3, r1
200273bc:	e9ca 2310 	strd	r2, r3, [sl, #64]	@ 0x40
200273c0:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
200273c2:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
200273c4:	991d      	ldr	r1, [sp, #116]	@ 0x74
200273c6:	189a      	adds	r2, r3, r2
200273c8:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200273ca:	eb43 0301 	adc.w	r3, r3, r1
200273ce:	e9ca 2312 	strd	r2, r3, [sl, #72]	@ 0x48
200273d2:	f50d 7d3f 	add.w	sp, sp, #764	@ 0x2fc
200273d6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200273da:	bf00      	nop
200273dc:	2002c190 	.word	0x2002c190

200273e0 <mbedtls_sha512_update.part.0>:
200273e0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
200273e4:	4615      	mov	r5, r2
200273e6:	e9d0 3200 	ldrd	r3, r2, [r0]
200273ea:	f003 077f 	and.w	r7, r3, #127	@ 0x7f
200273ee:	195b      	adds	r3, r3, r5
200273f0:	f152 0200 	adcs.w	r2, r2, #0
200273f4:	460e      	mov	r6, r1
200273f6:	f04f 0100 	mov.w	r1, #0
200273fa:	bf28      	it	cs
200273fc:	2101      	movcs	r1, #1
200273fe:	4604      	mov	r4, r0
20027400:	e9c0 3200 	strd	r3, r2, [r0]
20027404:	b131      	cbz	r1, 20027414 <mbedtls_sha512_update.part.0+0x34>
20027406:	e9d0 3202 	ldrd	r3, r2, [r0, #8]
2002740a:	3301      	adds	r3, #1
2002740c:	f142 0200 	adc.w	r2, r2, #0
20027410:	e9c0 3202 	strd	r3, r2, [r0, #8]
20027414:	b19f      	cbz	r7, 2002743e <mbedtls_sha512_update.part.0+0x5e>
20027416:	f1c7 0980 	rsb	r9, r7, #128	@ 0x80
2002741a:	45a9      	cmp	r9, r5
2002741c:	d80f      	bhi.n	2002743e <mbedtls_sha512_update.part.0+0x5e>
2002741e:	f104 0850 	add.w	r8, r4, #80	@ 0x50
20027422:	4631      	mov	r1, r6
20027424:	464a      	mov	r2, r9
20027426:	eb08 0007 	add.w	r0, r8, r7
2002742a:	f003 fa05 	bl	2002a838 <memcpy>
2002742e:	3d80      	subs	r5, #128	@ 0x80
20027430:	4641      	mov	r1, r8
20027432:	4620      	mov	r0, r4
20027434:	443d      	add	r5, r7
20027436:	f7ff faa7 	bl	20026988 <mbedtls_sha512_process>
2002743a:	2700      	movs	r7, #0
2002743c:	444e      	add	r6, r9
2002743e:	46a8      	mov	r8, r5
20027440:	eb05 0906 	add.w	r9, r5, r6
20027444:	e004      	b.n	20027450 <mbedtls_sha512_update.part.0+0x70>
20027446:	4620      	mov	r0, r4
20027448:	f7ff fa9e 	bl	20026988 <mbedtls_sha512_process>
2002744c:	f1a8 0880 	sub.w	r8, r8, #128	@ 0x80
20027450:	f1b8 0f7f 	cmp.w	r8, #127	@ 0x7f
20027454:	eba9 0108 	sub.w	r1, r9, r8
20027458:	d8f5      	bhi.n	20027446 <mbedtls_sha512_update.part.0+0x66>
2002745a:	f06f 037f 	mvn.w	r3, #127	@ 0x7f
2002745e:	09e9      	lsrs	r1, r5, #7
20027460:	4359      	muls	r1, r3
20027462:	186a      	adds	r2, r5, r1
20027464:	d007      	beq.n	20027476 <mbedtls_sha512_update.part.0+0x96>
20027466:	f104 0050 	add.w	r0, r4, #80	@ 0x50
2002746a:	1a71      	subs	r1, r6, r1
2002746c:	4438      	add	r0, r7
2002746e:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20027472:	f003 b9e1 	b.w	2002a838 <memcpy>
20027476:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

2002747a <mbedtls_sha512_update>:
2002747a:	b10a      	cbz	r2, 20027480 <mbedtls_sha512_update+0x6>
2002747c:	f7ff bfb0 	b.w	200273e0 <mbedtls_sha512_update.part.0>
20027480:	4770      	bx	lr
	...

20027484 <mbedtls_sha512_finish>:
20027484:	b5f0      	push	{r4, r5, r6, r7, lr}
20027486:	4604      	mov	r4, r0
20027488:	e9d0 2300 	ldrd	r2, r3, [r0]
2002748c:	460d      	mov	r5, r1
2002748e:	e9d0 6102 	ldrd	r6, r1, [r0, #8]
20027492:	00c9      	lsls	r1, r1, #3
20027494:	ea41 7156 	orr.w	r1, r1, r6, lsr #29
20027498:	b085      	sub	sp, #20
2002749a:	0e0f      	lsrs	r7, r1, #24
2002749c:	0f58      	lsrs	r0, r3, #29
2002749e:	00db      	lsls	r3, r3, #3
200274a0:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
200274a4:	f88d 7000 	strb.w	r7, [sp]
200274a8:	0c0f      	lsrs	r7, r1, #16
200274aa:	f88d 7001 	strb.w	r7, [sp, #1]
200274ae:	f88d 1003 	strb.w	r1, [sp, #3]
200274b2:	0a0f      	lsrs	r7, r1, #8
200274b4:	0e19      	lsrs	r1, r3, #24
200274b6:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
200274ba:	f88d 1008 	strb.w	r1, [sp, #8]
200274be:	00d6      	lsls	r6, r2, #3
200274c0:	0c19      	lsrs	r1, r3, #16
200274c2:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
200274c6:	2a6f      	cmp	r2, #111	@ 0x6f
200274c8:	ba00      	rev	r0, r0
200274ca:	f88d 1009 	strb.w	r1, [sp, #9]
200274ce:	ea4f 2113 	mov.w	r1, r3, lsr #8
200274d2:	bf94      	ite	ls
200274d4:	f1c2 0270 	rsbls	r2, r2, #112	@ 0x70
200274d8:	f1c2 02f0 	rsbhi	r2, r2, #240	@ 0xf0
200274dc:	9001      	str	r0, [sp, #4]
200274de:	f88d 100a 	strb.w	r1, [sp, #10]
200274e2:	4620      	mov	r0, r4
200274e4:	4969      	ldr	r1, [pc, #420]	@ (2002768c <mbedtls_sha512_finish+0x208>)
200274e6:	ba36      	rev	r6, r6
200274e8:	f88d 300b 	strb.w	r3, [sp, #11]
200274ec:	f88d 7002 	strb.w	r7, [sp, #2]
200274f0:	9603      	str	r6, [sp, #12]
200274f2:	f7ff ffc2 	bl	2002747a <mbedtls_sha512_update>
200274f6:	2210      	movs	r2, #16
200274f8:	4669      	mov	r1, sp
200274fa:	4620      	mov	r0, r4
200274fc:	f7ff ff70 	bl	200273e0 <mbedtls_sha512_update.part.0>
20027500:	7de3      	ldrb	r3, [r4, #23]
20027502:	702b      	strb	r3, [r5, #0]
20027504:	8ae3      	ldrh	r3, [r4, #22]
20027506:	706b      	strb	r3, [r5, #1]
20027508:	6963      	ldr	r3, [r4, #20]
2002750a:	0a1b      	lsrs	r3, r3, #8
2002750c:	70ab      	strb	r3, [r5, #2]
2002750e:	6963      	ldr	r3, [r4, #20]
20027510:	70eb      	strb	r3, [r5, #3]
20027512:	7ce3      	ldrb	r3, [r4, #19]
20027514:	712b      	strb	r3, [r5, #4]
20027516:	8a63      	ldrh	r3, [r4, #18]
20027518:	716b      	strb	r3, [r5, #5]
2002751a:	6923      	ldr	r3, [r4, #16]
2002751c:	0a1b      	lsrs	r3, r3, #8
2002751e:	71ab      	strb	r3, [r5, #6]
20027520:	6923      	ldr	r3, [r4, #16]
20027522:	71eb      	strb	r3, [r5, #7]
20027524:	7fe3      	ldrb	r3, [r4, #31]
20027526:	722b      	strb	r3, [r5, #8]
20027528:	8be3      	ldrh	r3, [r4, #30]
2002752a:	726b      	strb	r3, [r5, #9]
2002752c:	69e3      	ldr	r3, [r4, #28]
2002752e:	0a1b      	lsrs	r3, r3, #8
20027530:	72ab      	strb	r3, [r5, #10]
20027532:	69e3      	ldr	r3, [r4, #28]
20027534:	72eb      	strb	r3, [r5, #11]
20027536:	7ee3      	ldrb	r3, [r4, #27]
20027538:	732b      	strb	r3, [r5, #12]
2002753a:	8b63      	ldrh	r3, [r4, #26]
2002753c:	736b      	strb	r3, [r5, #13]
2002753e:	69a3      	ldr	r3, [r4, #24]
20027540:	0a1b      	lsrs	r3, r3, #8
20027542:	73ab      	strb	r3, [r5, #14]
20027544:	69a3      	ldr	r3, [r4, #24]
20027546:	73eb      	strb	r3, [r5, #15]
20027548:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
2002754c:	742b      	strb	r3, [r5, #16]
2002754e:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
20027550:	746b      	strb	r3, [r5, #17]
20027552:	6a63      	ldr	r3, [r4, #36]	@ 0x24
20027554:	0a1b      	lsrs	r3, r3, #8
20027556:	74ab      	strb	r3, [r5, #18]
20027558:	6a63      	ldr	r3, [r4, #36]	@ 0x24
2002755a:	74eb      	strb	r3, [r5, #19]
2002755c:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20027560:	752b      	strb	r3, [r5, #20]
20027562:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
20027564:	756b      	strb	r3, [r5, #21]
20027566:	6a23      	ldr	r3, [r4, #32]
20027568:	0a1b      	lsrs	r3, r3, #8
2002756a:	75ab      	strb	r3, [r5, #22]
2002756c:	6a23      	ldr	r3, [r4, #32]
2002756e:	75eb      	strb	r3, [r5, #23]
20027570:	f894 302f 	ldrb.w	r3, [r4, #47]	@ 0x2f
20027574:	762b      	strb	r3, [r5, #24]
20027576:	8de3      	ldrh	r3, [r4, #46]	@ 0x2e
20027578:	766b      	strb	r3, [r5, #25]
2002757a:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
2002757c:	0a1b      	lsrs	r3, r3, #8
2002757e:	76ab      	strb	r3, [r5, #26]
20027580:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20027582:	76eb      	strb	r3, [r5, #27]
20027584:	f894 302b 	ldrb.w	r3, [r4, #43]	@ 0x2b
20027588:	772b      	strb	r3, [r5, #28]
2002758a:	8d63      	ldrh	r3, [r4, #42]	@ 0x2a
2002758c:	776b      	strb	r3, [r5, #29]
2002758e:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
20027590:	0a1b      	lsrs	r3, r3, #8
20027592:	77ab      	strb	r3, [r5, #30]
20027594:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
20027596:	77eb      	strb	r3, [r5, #31]
20027598:	f894 3037 	ldrb.w	r3, [r4, #55]	@ 0x37
2002759c:	f885 3020 	strb.w	r3, [r5, #32]
200275a0:	8ee3      	ldrh	r3, [r4, #54]	@ 0x36
200275a2:	f885 3021 	strb.w	r3, [r5, #33]	@ 0x21
200275a6:	6b63      	ldr	r3, [r4, #52]	@ 0x34
200275a8:	0a1b      	lsrs	r3, r3, #8
200275aa:	f885 3022 	strb.w	r3, [r5, #34]	@ 0x22
200275ae:	6b63      	ldr	r3, [r4, #52]	@ 0x34
200275b0:	f885 3023 	strb.w	r3, [r5, #35]	@ 0x23
200275b4:	f894 3033 	ldrb.w	r3, [r4, #51]	@ 0x33
200275b8:	f885 3024 	strb.w	r3, [r5, #36]	@ 0x24
200275bc:	8e63      	ldrh	r3, [r4, #50]	@ 0x32
200275be:	f885 3025 	strb.w	r3, [r5, #37]	@ 0x25
200275c2:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200275c4:	0a1b      	lsrs	r3, r3, #8
200275c6:	f885 3026 	strb.w	r3, [r5, #38]	@ 0x26
200275ca:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200275cc:	f885 3027 	strb.w	r3, [r5, #39]	@ 0x27
200275d0:	f894 303f 	ldrb.w	r3, [r4, #63]	@ 0x3f
200275d4:	f885 3028 	strb.w	r3, [r5, #40]	@ 0x28
200275d8:	8fe3      	ldrh	r3, [r4, #62]	@ 0x3e
200275da:	f885 3029 	strb.w	r3, [r5, #41]	@ 0x29
200275de:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
200275e0:	0a1b      	lsrs	r3, r3, #8
200275e2:	f885 302a 	strb.w	r3, [r5, #42]	@ 0x2a
200275e6:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
200275e8:	f885 302b 	strb.w	r3, [r5, #43]	@ 0x2b
200275ec:	f894 303b 	ldrb.w	r3, [r4, #59]	@ 0x3b
200275f0:	f885 302c 	strb.w	r3, [r5, #44]	@ 0x2c
200275f4:	8f63      	ldrh	r3, [r4, #58]	@ 0x3a
200275f6:	f885 302d 	strb.w	r3, [r5, #45]	@ 0x2d
200275fa:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
200275fc:	0a1b      	lsrs	r3, r3, #8
200275fe:	f885 302e 	strb.w	r3, [r5, #46]	@ 0x2e
20027602:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
20027604:	f885 302f 	strb.w	r3, [r5, #47]	@ 0x2f
20027608:	f8d4 30d0 	ldr.w	r3, [r4, #208]	@ 0xd0
2002760c:	2b00      	cmp	r3, #0
2002760e:	d13b      	bne.n	20027688 <mbedtls_sha512_finish+0x204>
20027610:	f894 3047 	ldrb.w	r3, [r4, #71]	@ 0x47
20027614:	f885 3030 	strb.w	r3, [r5, #48]	@ 0x30
20027618:	f8b4 3046 	ldrh.w	r3, [r4, #70]	@ 0x46
2002761c:	f885 3031 	strb.w	r3, [r5, #49]	@ 0x31
20027620:	6c63      	ldr	r3, [r4, #68]	@ 0x44
20027622:	0a1b      	lsrs	r3, r3, #8
20027624:	f885 3032 	strb.w	r3, [r5, #50]	@ 0x32
20027628:	6c63      	ldr	r3, [r4, #68]	@ 0x44
2002762a:	f885 3033 	strb.w	r3, [r5, #51]	@ 0x33
2002762e:	f894 3043 	ldrb.w	r3, [r4, #67]	@ 0x43
20027632:	f885 3034 	strb.w	r3, [r5, #52]	@ 0x34
20027636:	f8b4 3042 	ldrh.w	r3, [r4, #66]	@ 0x42
2002763a:	f885 3035 	strb.w	r3, [r5, #53]	@ 0x35
2002763e:	6c23      	ldr	r3, [r4, #64]	@ 0x40
20027640:	0a1b      	lsrs	r3, r3, #8
20027642:	f885 3036 	strb.w	r3, [r5, #54]	@ 0x36
20027646:	6c23      	ldr	r3, [r4, #64]	@ 0x40
20027648:	f885 3037 	strb.w	r3, [r5, #55]	@ 0x37
2002764c:	f894 304f 	ldrb.w	r3, [r4, #79]	@ 0x4f
20027650:	f885 3038 	strb.w	r3, [r5, #56]	@ 0x38
20027654:	f8b4 304e 	ldrh.w	r3, [r4, #78]	@ 0x4e
20027658:	f885 3039 	strb.w	r3, [r5, #57]	@ 0x39
2002765c:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
2002765e:	0a1b      	lsrs	r3, r3, #8
20027660:	f885 303a 	strb.w	r3, [r5, #58]	@ 0x3a
20027664:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
20027666:	f885 303b 	strb.w	r3, [r5, #59]	@ 0x3b
2002766a:	f894 304b 	ldrb.w	r3, [r4, #75]	@ 0x4b
2002766e:	f885 303c 	strb.w	r3, [r5, #60]	@ 0x3c
20027672:	f8b4 304a 	ldrh.w	r3, [r4, #74]	@ 0x4a
20027676:	f885 303d 	strb.w	r3, [r5, #61]	@ 0x3d
2002767a:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
2002767c:	0a1b      	lsrs	r3, r3, #8
2002767e:	f885 303e 	strb.w	r3, [r5, #62]	@ 0x3e
20027682:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
20027684:	f885 303f 	strb.w	r3, [r5, #63]	@ 0x3f
20027688:	b005      	add	sp, #20
2002768a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002768c:	2002be8c 	.word	0x2002be8c

20027690 <mbedtls_sha512>:
20027690:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20027694:	461c      	mov	r4, r3
20027696:	b0b7      	sub	sp, #220	@ 0xdc
20027698:	4606      	mov	r6, r0
2002769a:	4668      	mov	r0, sp
2002769c:	460f      	mov	r7, r1
2002769e:	4615      	mov	r5, r2
200276a0:	f7ff f8ce 	bl	20026840 <mbedtls_sha512_init>
200276a4:	2c00      	cmp	r4, #0
200276a6:	d03f      	beq.n	20027728 <mbedtls_sha512+0x98>
200276a8:	f20f 0bf4 	addw	fp, pc, #244	@ 0xf4
200276ac:	e9db ab00 	ldrd	sl, fp, [fp]
200276b0:	f20f 09f4 	addw	r9, pc, #244	@ 0xf4
200276b4:	e9d9 8900 	ldrd	r8, r9, [r9]
200276b8:	a13d      	add	r1, pc, #244	@ (adr r1, 200277b0 <mbedtls_sha512+0x120>)
200276ba:	e9d1 0100 	ldrd	r0, r1, [r1]
200276be:	a33e      	add	r3, pc, #248	@ (adr r3, 200277b8 <mbedtls_sha512+0x128>)
200276c0:	e9d3 2300 	ldrd	r2, r3, [r3]
200276c4:	ed9f 4b24 	vldr	d4, [pc, #144]	@ 20027758 <mbedtls_sha512+0xc8>
200276c8:	ed9f 5b25 	vldr	d5, [pc, #148]	@ 20027760 <mbedtls_sha512+0xd0>
200276cc:	ed9f 6b26 	vldr	d6, [pc, #152]	@ 20027768 <mbedtls_sha512+0xd8>
200276d0:	ed9f 7b27 	vldr	d7, [pc, #156]	@ 20027770 <mbedtls_sha512+0xe0>
200276d4:	ed9f 3b28 	vldr	d3, [pc, #160]	@ 20027778 <mbedtls_sha512+0xe8>
200276d8:	e9cd 2312 	strd	r2, r3, [sp, #72]	@ 0x48
200276dc:	e9cd 0110 	strd	r0, r1, [sp, #64]	@ 0x40
200276e0:	463a      	mov	r2, r7
200276e2:	4631      	mov	r1, r6
200276e4:	4668      	mov	r0, sp
200276e6:	ed8d 3b00 	vstr	d3, [sp]
200276ea:	ed8d 3b02 	vstr	d3, [sp, #8]
200276ee:	ed8d 4b04 	vstr	d4, [sp, #16]
200276f2:	ed8d 5b06 	vstr	d5, [sp, #24]
200276f6:	ed8d 6b08 	vstr	d6, [sp, #32]
200276fa:	ed8d 7b0a 	vstr	d7, [sp, #40]	@ 0x28
200276fe:	e9cd ab0c 	strd	sl, fp, [sp, #48]	@ 0x30
20027702:	e9cd 890e 	strd	r8, r9, [sp, #56]	@ 0x38
20027706:	9434      	str	r4, [sp, #208]	@ 0xd0
20027708:	f7ff feb7 	bl	2002747a <mbedtls_sha512_update>
2002770c:	4629      	mov	r1, r5
2002770e:	4668      	mov	r0, sp
20027710:	f7ff feb8 	bl	20027484 <mbedtls_sha512_finish>
20027714:	2300      	movs	r3, #0
20027716:	461a      	mov	r2, r3
20027718:	f80d 2003 	strb.w	r2, [sp, r3]
2002771c:	3301      	adds	r3, #1
2002771e:	2bd8      	cmp	r3, #216	@ 0xd8
20027720:	d1fa      	bne.n	20027718 <mbedtls_sha512+0x88>
20027722:	b037      	add	sp, #220	@ 0xdc
20027724:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20027728:	ed9f 4b15 	vldr	d4, [pc, #84]	@ 20027780 <mbedtls_sha512+0xf0>
2002772c:	f20f 0b90 	addw	fp, pc, #144	@ 0x90
20027730:	e9db ab00 	ldrd	sl, fp, [fp]
20027734:	f20f 0990 	addw	r9, pc, #144	@ 0x90
20027738:	e9d9 8900 	ldrd	r8, r9, [r9]
2002773c:	a124      	add	r1, pc, #144	@ (adr r1, 200277d0 <mbedtls_sha512+0x140>)
2002773e:	e9d1 0100 	ldrd	r0, r1, [r1]
20027742:	a325      	add	r3, pc, #148	@ (adr r3, 200277d8 <mbedtls_sha512+0x148>)
20027744:	e9d3 2300 	ldrd	r2, r3, [r3]
20027748:	ed9f 5b0f 	vldr	d5, [pc, #60]	@ 20027788 <mbedtls_sha512+0xf8>
2002774c:	ed9f 6b10 	vldr	d6, [pc, #64]	@ 20027790 <mbedtls_sha512+0x100>
20027750:	ed9f 7b11 	vldr	d7, [pc, #68]	@ 20027798 <mbedtls_sha512+0x108>
20027754:	e7be      	b.n	200276d4 <mbedtls_sha512+0x44>
20027756:	bf00      	nop
20027758:	c1059ed8 	.word	0xc1059ed8
2002775c:	cbbb9d5d 	.word	0xcbbb9d5d
20027760:	367cd507 	.word	0x367cd507
20027764:	629a292a 	.word	0x629a292a
20027768:	3070dd17 	.word	0x3070dd17
2002776c:	9159015a 	.word	0x9159015a
20027770:	f70e5939 	.word	0xf70e5939
20027774:	152fecd8 	.word	0x152fecd8
	...
20027780:	f3bcc908 	.word	0xf3bcc908
20027784:	6a09e667 	.word	0x6a09e667
20027788:	84caa73b 	.word	0x84caa73b
2002778c:	bb67ae85 	.word	0xbb67ae85
20027790:	fe94f82b 	.word	0xfe94f82b
20027794:	3c6ef372 	.word	0x3c6ef372
20027798:	5f1d36f1 	.word	0x5f1d36f1
2002779c:	a54ff53a 	.word	0xa54ff53a
200277a0:	ffc00b31 	.word	0xffc00b31
200277a4:	67332667 	.word	0x67332667
200277a8:	68581511 	.word	0x68581511
200277ac:	8eb44a87 	.word	0x8eb44a87
200277b0:	64f98fa7 	.word	0x64f98fa7
200277b4:	db0c2e0d 	.word	0xdb0c2e0d
200277b8:	befa4fa4 	.word	0xbefa4fa4
200277bc:	47b5481d 	.word	0x47b5481d
200277c0:	ade682d1 	.word	0xade682d1
200277c4:	510e527f 	.word	0x510e527f
200277c8:	2b3e6c1f 	.word	0x2b3e6c1f
200277cc:	9b05688c 	.word	0x9b05688c
200277d0:	fb41bd6b 	.word	0xfb41bd6b
200277d4:	1f83d9ab 	.word	0x1f83d9ab
200277d8:	137e2179 	.word	0x137e2179
200277dc:	5be0cd19 	.word	0x5be0cd19

200277e0 <mbedtls_asn1_get_len>:
200277e0:	b570      	push	{r4, r5, r6, lr}
200277e2:	6803      	ldr	r3, [r0, #0]
200277e4:	1acd      	subs	r5, r1, r3
200277e6:	2d00      	cmp	r5, #0
200277e8:	dc02      	bgt.n	200277f0 <mbedtls_asn1_get_len+0x10>
200277ea:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
200277ee:	bd70      	pop	{r4, r5, r6, pc}
200277f0:	f993 6000 	ldrsb.w	r6, [r3]
200277f4:	781c      	ldrb	r4, [r3, #0]
200277f6:	2e00      	cmp	r6, #0
200277f8:	db0a      	blt.n	20027810 <mbedtls_asn1_get_len+0x30>
200277fa:	1c5c      	adds	r4, r3, #1
200277fc:	6004      	str	r4, [r0, #0]
200277fe:	781b      	ldrb	r3, [r3, #0]
20027800:	6013      	str	r3, [r2, #0]
20027802:	6803      	ldr	r3, [r0, #0]
20027804:	1ac9      	subs	r1, r1, r3
20027806:	6813      	ldr	r3, [r2, #0]
20027808:	428b      	cmp	r3, r1
2002780a:	d8ee      	bhi.n	200277ea <mbedtls_asn1_get_len+0xa>
2002780c:	2000      	movs	r0, #0
2002780e:	e7ee      	b.n	200277ee <mbedtls_asn1_get_len+0xe>
20027810:	f004 047f 	and.w	r4, r4, #127	@ 0x7f
20027814:	3c01      	subs	r4, #1
20027816:	2c03      	cmp	r4, #3
20027818:	d82b      	bhi.n	20027872 <mbedtls_asn1_get_len+0x92>
2002781a:	e8df f004 	tbb	[pc, r4]
2002781e:	0a02      	.short	0x0a02
20027820:	2114      	.short	0x2114
20027822:	2d01      	cmp	r5, #1
20027824:	d0e1      	beq.n	200277ea <mbedtls_asn1_get_len+0xa>
20027826:	785b      	ldrb	r3, [r3, #1]
20027828:	6013      	str	r3, [r2, #0]
2002782a:	6803      	ldr	r3, [r0, #0]
2002782c:	3302      	adds	r3, #2
2002782e:	6003      	str	r3, [r0, #0]
20027830:	e7e7      	b.n	20027802 <mbedtls_asn1_get_len+0x22>
20027832:	2d02      	cmp	r5, #2
20027834:	ddd9      	ble.n	200277ea <mbedtls_asn1_get_len+0xa>
20027836:	f8b3 3001 	ldrh.w	r3, [r3, #1]
2002783a:	ba5b      	rev16	r3, r3
2002783c:	b29b      	uxth	r3, r3
2002783e:	6013      	str	r3, [r2, #0]
20027840:	6803      	ldr	r3, [r0, #0]
20027842:	3303      	adds	r3, #3
20027844:	e7f3      	b.n	2002782e <mbedtls_asn1_get_len+0x4e>
20027846:	2d03      	cmp	r5, #3
20027848:	ddcf      	ble.n	200277ea <mbedtls_asn1_get_len+0xa>
2002784a:	789c      	ldrb	r4, [r3, #2]
2002784c:	785d      	ldrb	r5, [r3, #1]
2002784e:	0224      	lsls	r4, r4, #8
20027850:	78db      	ldrb	r3, [r3, #3]
20027852:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
20027856:	4323      	orrs	r3, r4
20027858:	6013      	str	r3, [r2, #0]
2002785a:	6803      	ldr	r3, [r0, #0]
2002785c:	3304      	adds	r3, #4
2002785e:	e7e6      	b.n	2002782e <mbedtls_asn1_get_len+0x4e>
20027860:	2d04      	cmp	r5, #4
20027862:	ddc2      	ble.n	200277ea <mbedtls_asn1_get_len+0xa>
20027864:	f8d3 3001 	ldr.w	r3, [r3, #1]
20027868:	ba1b      	rev	r3, r3
2002786a:	6013      	str	r3, [r2, #0]
2002786c:	6803      	ldr	r3, [r0, #0]
2002786e:	3305      	adds	r3, #5
20027870:	e7dd      	b.n	2002782e <mbedtls_asn1_get_len+0x4e>
20027872:	f06f 0063 	mvn.w	r0, #99	@ 0x63
20027876:	e7ba      	b.n	200277ee <mbedtls_asn1_get_len+0xe>

20027878 <mbedtls_asn1_get_tag>:
20027878:	b470      	push	{r4, r5, r6}
2002787a:	6804      	ldr	r4, [r0, #0]
2002787c:	1b0e      	subs	r6, r1, r4
2002787e:	2e00      	cmp	r6, #0
20027880:	dd07      	ble.n	20027892 <mbedtls_asn1_get_tag+0x1a>
20027882:	7826      	ldrb	r6, [r4, #0]
20027884:	429e      	cmp	r6, r3
20027886:	d108      	bne.n	2002789a <mbedtls_asn1_get_tag+0x22>
20027888:	3401      	adds	r4, #1
2002788a:	6004      	str	r4, [r0, #0]
2002788c:	bc70      	pop	{r4, r5, r6}
2002788e:	f7ff bfa7 	b.w	200277e0 <mbedtls_asn1_get_len>
20027892:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
20027896:	bc70      	pop	{r4, r5, r6}
20027898:	4770      	bx	lr
2002789a:	f06f 0061 	mvn.w	r0, #97	@ 0x61
2002789e:	e7fa      	b.n	20027896 <mbedtls_asn1_get_tag+0x1e>

200278a0 <mbedtls_asn1_get_mpi>:
200278a0:	b573      	push	{r0, r1, r4, r5, r6, lr}
200278a2:	2302      	movs	r3, #2
200278a4:	4615      	mov	r5, r2
200278a6:	aa01      	add	r2, sp, #4
200278a8:	4604      	mov	r4, r0
200278aa:	f7ff ffe5 	bl	20027878 <mbedtls_asn1_get_tag>
200278ae:	b940      	cbnz	r0, 200278c2 <mbedtls_asn1_get_mpi+0x22>
200278b0:	9e01      	ldr	r6, [sp, #4]
200278b2:	4628      	mov	r0, r5
200278b4:	4632      	mov	r2, r6
200278b6:	6821      	ldr	r1, [r4, #0]
200278b8:	f000 fad4 	bl	20027e64 <mbedtls_mpi_read_binary>
200278bc:	6823      	ldr	r3, [r4, #0]
200278be:	4433      	add	r3, r6
200278c0:	6023      	str	r3, [r4, #0]
200278c2:	b002      	add	sp, #8
200278c4:	bd70      	pop	{r4, r5, r6, pc}

200278c6 <mbedtls_asn1_get_bitstring_null>:
200278c6:	b538      	push	{r3, r4, r5, lr}
200278c8:	2303      	movs	r3, #3
200278ca:	4604      	mov	r4, r0
200278cc:	4615      	mov	r5, r2
200278ce:	f7ff ffd3 	bl	20027878 <mbedtls_asn1_get_tag>
200278d2:	b958      	cbnz	r0, 200278ec <mbedtls_asn1_get_bitstring_null+0x26>
200278d4:	6813      	ldr	r3, [r2, #0]
200278d6:	1e5a      	subs	r2, r3, #1
200278d8:	2b01      	cmp	r3, #1
200278da:	602a      	str	r2, [r5, #0]
200278dc:	d904      	bls.n	200278e8 <mbedtls_asn1_get_bitstring_null+0x22>
200278de:	6823      	ldr	r3, [r4, #0]
200278e0:	1c5a      	adds	r2, r3, #1
200278e2:	6022      	str	r2, [r4, #0]
200278e4:	781b      	ldrb	r3, [r3, #0]
200278e6:	b10b      	cbz	r3, 200278ec <mbedtls_asn1_get_bitstring_null+0x26>
200278e8:	f06f 0067 	mvn.w	r0, #103	@ 0x67
200278ec:	bd38      	pop	{r3, r4, r5, pc}

200278ee <mbedtls_asn1_get_alg>:
200278ee:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
200278f2:	4690      	mov	r8, r2
200278f4:	461e      	mov	r6, r3
200278f6:	aa01      	add	r2, sp, #4
200278f8:	2330      	movs	r3, #48	@ 0x30
200278fa:	4605      	mov	r5, r0
200278fc:	460f      	mov	r7, r1
200278fe:	f7ff ffbb 	bl	20027878 <mbedtls_asn1_get_tag>
20027902:	4604      	mov	r4, r0
20027904:	bb10      	cbnz	r0, 2002794c <mbedtls_asn1_get_alg+0x5e>
20027906:	682b      	ldr	r3, [r5, #0]
20027908:	1aff      	subs	r7, r7, r3
2002790a:	2f00      	cmp	r7, #0
2002790c:	dd38      	ble.n	20027980 <mbedtls_asn1_get_alg+0x92>
2002790e:	4642      	mov	r2, r8
20027910:	781b      	ldrb	r3, [r3, #0]
20027912:	4628      	mov	r0, r5
20027914:	f842 3b04 	str.w	r3, [r2], #4
20027918:	682f      	ldr	r7, [r5, #0]
2002791a:	9b01      	ldr	r3, [sp, #4]
2002791c:	441f      	add	r7, r3
2002791e:	4639      	mov	r1, r7
20027920:	2306      	movs	r3, #6
20027922:	f7ff ffa9 	bl	20027878 <mbedtls_asn1_get_tag>
20027926:	4604      	mov	r4, r0
20027928:	b980      	cbnz	r0, 2002794c <mbedtls_asn1_get_alg+0x5e>
2002792a:	682b      	ldr	r3, [r5, #0]
2002792c:	f8d8 2004 	ldr.w	r2, [r8, #4]
20027930:	f8c8 3008 	str.w	r3, [r8, #8]
20027934:	1899      	adds	r1, r3, r2
20027936:	42b9      	cmp	r1, r7
20027938:	6029      	str	r1, [r5, #0]
2002793a:	d10b      	bne.n	20027954 <mbedtls_asn1_get_alg+0x66>
2002793c:	4601      	mov	r1, r0
2002793e:	f106 030c 	add.w	r3, r6, #12
20027942:	4632      	mov	r2, r6
20027944:	3601      	adds	r6, #1
20027946:	42b3      	cmp	r3, r6
20027948:	7011      	strb	r1, [r2, #0]
2002794a:	d1fa      	bne.n	20027942 <mbedtls_asn1_get_alg+0x54>
2002794c:	4620      	mov	r0, r4
2002794e:	b002      	add	sp, #8
20027950:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027954:	5c9b      	ldrb	r3, [r3, r2]
20027956:	4632      	mov	r2, r6
20027958:	f842 3b04 	str.w	r3, [r2], #4
2002795c:	682b      	ldr	r3, [r5, #0]
2002795e:	4639      	mov	r1, r7
20027960:	3301      	adds	r3, #1
20027962:	4628      	mov	r0, r5
20027964:	602b      	str	r3, [r5, #0]
20027966:	f7ff ff3b 	bl	200277e0 <mbedtls_asn1_get_len>
2002796a:	b960      	cbnz	r0, 20027986 <mbedtls_asn1_get_alg+0x98>
2002796c:	682b      	ldr	r3, [r5, #0]
2002796e:	6872      	ldr	r2, [r6, #4]
20027970:	60b3      	str	r3, [r6, #8]
20027972:	4413      	add	r3, r2
20027974:	42bb      	cmp	r3, r7
20027976:	bf18      	it	ne
20027978:	f06f 0465 	mvnne.w	r4, #101	@ 0x65
2002797c:	602b      	str	r3, [r5, #0]
2002797e:	e7e5      	b.n	2002794c <mbedtls_asn1_get_alg+0x5e>
20027980:	f06f 045f 	mvn.w	r4, #95	@ 0x5f
20027984:	e7e2      	b.n	2002794c <mbedtls_asn1_get_alg+0x5e>
20027986:	4604      	mov	r4, r0
20027988:	e7e0      	b.n	2002794c <mbedtls_asn1_get_alg+0x5e>

2002798a <mpi_sub_hlp>:
2002798a:	2300      	movs	r3, #0
2002798c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002798e:	461c      	mov	r4, r3
20027990:	1f16      	subs	r6, r2, #4
20027992:	4284      	cmp	r4, r0
20027994:	d103      	bne.n	2002799e <mpi_sub_hlp+0x14>
20027996:	eb02 0284 	add.w	r2, r2, r4, lsl #2
2002799a:	b9b3      	cbnz	r3, 200279ca <mpi_sub_hlp+0x40>
2002799c:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002799e:	f856 cf04 	ldr.w	ip, [r6, #4]!
200279a2:	ebac 0503 	sub.w	r5, ip, r3
200279a6:	6035      	str	r5, [r6, #0]
200279a8:	f851 7024 	ldr.w	r7, [r1, r4, lsl #2]
200279ac:	3401      	adds	r4, #1
200279ae:	42bd      	cmp	r5, r7
200279b0:	bf2c      	ite	cs
200279b2:	f04f 0e00 	movcs.w	lr, #0
200279b6:	f04f 0e01 	movcc.w	lr, #1
200279ba:	1bed      	subs	r5, r5, r7
200279bc:	459c      	cmp	ip, r3
200279be:	bf2c      	ite	cs
200279c0:	4673      	movcs	r3, lr
200279c2:	f10e 0301 	addcc.w	r3, lr, #1
200279c6:	6035      	str	r5, [r6, #0]
200279c8:	e7e3      	b.n	20027992 <mpi_sub_hlp+0x8>
200279ca:	6811      	ldr	r1, [r2, #0]
200279cc:	1ac8      	subs	r0, r1, r3
200279ce:	4299      	cmp	r1, r3
200279d0:	bf2c      	ite	cs
200279d2:	2300      	movcs	r3, #0
200279d4:	2301      	movcc	r3, #1
200279d6:	f842 0b04 	str.w	r0, [r2], #4
200279da:	e7de      	b.n	2002799a <mpi_sub_hlp+0x10>

200279dc <mpi_mul_hlp>:
200279dc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200279e0:	4694      	mov	ip, r2
200279e2:	460e      	mov	r6, r1
200279e4:	4686      	mov	lr, r0
200279e6:	2500      	movs	r5, #0
200279e8:	f102 0440 	add.w	r4, r2, #64	@ 0x40
200279ec:	f1be 0f0f 	cmp.w	lr, #15
200279f0:	f854 7c40 	ldr.w	r7, [r4, #-64]
200279f4:	f106 0640 	add.w	r6, r6, #64	@ 0x40
200279f8:	f104 0440 	add.w	r4, r4, #64	@ 0x40
200279fc:	d87c      	bhi.n	20027af8 <mpi_mul_hlp+0x11c>
200279fe:	f06f 080f 	mvn.w	r8, #15
20027a02:	0902      	lsrs	r2, r0, #4
20027a04:	fb08 0002 	mla	r0, r8, r2, r0
20027a08:	2807      	cmp	r0, #7
20027a0a:	ea4f 1e82 	mov.w	lr, r2, lsl #6
20027a0e:	eb0c 1482 	add.w	r4, ip, r2, lsl #6
20027a12:	eb01 1682 	add.w	r6, r1, r2, lsl #6
20027a16:	d95b      	bls.n	20027ad0 <mpi_mul_hlp+0xf4>
20027a18:	f851 100e 	ldr.w	r1, [r1, lr]
20027a1c:	3808      	subs	r0, #8
20027a1e:	fba1 1203 	umull	r1, r2, r1, r3
20027a22:	1869      	adds	r1, r5, r1
20027a24:	f142 0200 	adc.w	r2, r2, #0
20027a28:	187f      	adds	r7, r7, r1
20027a2a:	f84c 700e 	str.w	r7, [ip, lr]
20027a2e:	6871      	ldr	r1, [r6, #4]
20027a30:	f142 0200 	adc.w	r2, r2, #0
20027a34:	fba1 5103 	umull	r5, r1, r1, r3
20027a38:	1952      	adds	r2, r2, r5
20027a3a:	6865      	ldr	r5, [r4, #4]
20027a3c:	f141 0100 	adc.w	r1, r1, #0
20027a40:	1952      	adds	r2, r2, r5
20027a42:	6062      	str	r2, [r4, #4]
20027a44:	68b2      	ldr	r2, [r6, #8]
20027a46:	f141 0100 	adc.w	r1, r1, #0
20027a4a:	fba2 5203 	umull	r5, r2, r2, r3
20027a4e:	1949      	adds	r1, r1, r5
20027a50:	68a5      	ldr	r5, [r4, #8]
20027a52:	f142 0200 	adc.w	r2, r2, #0
20027a56:	1949      	adds	r1, r1, r5
20027a58:	60a1      	str	r1, [r4, #8]
20027a5a:	68f1      	ldr	r1, [r6, #12]
20027a5c:	f142 0200 	adc.w	r2, r2, #0
20027a60:	fba1 5103 	umull	r5, r1, r1, r3
20027a64:	1952      	adds	r2, r2, r5
20027a66:	68e5      	ldr	r5, [r4, #12]
20027a68:	f141 0100 	adc.w	r1, r1, #0
20027a6c:	1952      	adds	r2, r2, r5
20027a6e:	60e2      	str	r2, [r4, #12]
20027a70:	6932      	ldr	r2, [r6, #16]
20027a72:	f141 0100 	adc.w	r1, r1, #0
20027a76:	fba2 5203 	umull	r5, r2, r2, r3
20027a7a:	1949      	adds	r1, r1, r5
20027a7c:	6925      	ldr	r5, [r4, #16]
20027a7e:	f142 0200 	adc.w	r2, r2, #0
20027a82:	1949      	adds	r1, r1, r5
20027a84:	6121      	str	r1, [r4, #16]
20027a86:	6971      	ldr	r1, [r6, #20]
20027a88:	f142 0200 	adc.w	r2, r2, #0
20027a8c:	fba1 5103 	umull	r5, r1, r1, r3
20027a90:	1952      	adds	r2, r2, r5
20027a92:	6965      	ldr	r5, [r4, #20]
20027a94:	f141 0100 	adc.w	r1, r1, #0
20027a98:	1952      	adds	r2, r2, r5
20027a9a:	6162      	str	r2, [r4, #20]
20027a9c:	69b2      	ldr	r2, [r6, #24]
20027a9e:	f141 0100 	adc.w	r1, r1, #0
20027aa2:	fba2 5203 	umull	r5, r2, r2, r3
20027aa6:	1949      	adds	r1, r1, r5
20027aa8:	69a5      	ldr	r5, [r4, #24]
20027aaa:	f142 0200 	adc.w	r2, r2, #0
20027aae:	1949      	adds	r1, r1, r5
20027ab0:	61a1      	str	r1, [r4, #24]
20027ab2:	69f1      	ldr	r1, [r6, #28]
20027ab4:	f142 0200 	adc.w	r2, r2, #0
20027ab8:	fba1 1503 	umull	r1, r5, r1, r3
20027abc:	1852      	adds	r2, r2, r1
20027abe:	69e1      	ldr	r1, [r4, #28]
20027ac0:	f145 0500 	adc.w	r5, r5, #0
20027ac4:	1852      	adds	r2, r2, r1
20027ac6:	61e2      	str	r2, [r4, #28]
20027ac8:	f145 0500 	adc.w	r5, r5, #0
20027acc:	3420      	adds	r4, #32
20027ace:	3620      	adds	r6, #32
20027ad0:	4627      	mov	r7, r4
20027ad2:	ea4f 0c80 	mov.w	ip, r0, lsl #2
20027ad6:	eb06 0080 	add.w	r0, r6, r0, lsl #2
20027ada:	42b0      	cmp	r0, r6
20027adc:	f857 1b04 	ldr.w	r1, [r7], #4
20027ae0:	f040 80eb 	bne.w	20027cba <mpi_mul_hlp+0x2de>
20027ae4:	4464      	add	r4, ip
20027ae6:	6823      	ldr	r3, [r4, #0]
20027ae8:	195b      	adds	r3, r3, r5
20027aea:	f844 3b04 	str.w	r3, [r4], #4
20027aee:	f04f 0501 	mov.w	r5, #1
20027af2:	d2f8      	bcs.n	20027ae6 <mpi_mul_hlp+0x10a>
20027af4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027af8:	f856 2c40 	ldr.w	r2, [r6, #-64]
20027afc:	f1ae 0e10 	sub.w	lr, lr, #16
20027b00:	fba2 2803 	umull	r2, r8, r2, r3
20027b04:	18aa      	adds	r2, r5, r2
20027b06:	f148 0500 	adc.w	r5, r8, #0
20027b0a:	18ba      	adds	r2, r7, r2
20027b0c:	f844 2c80 	str.w	r2, [r4, #-128]
20027b10:	f856 2c3c 	ldr.w	r2, [r6, #-60]
20027b14:	f145 0500 	adc.w	r5, r5, #0
20027b18:	fba2 7203 	umull	r7, r2, r2, r3
20027b1c:	19ef      	adds	r7, r5, r7
20027b1e:	f854 5c7c 	ldr.w	r5, [r4, #-124]
20027b22:	f142 0200 	adc.w	r2, r2, #0
20027b26:	19ed      	adds	r5, r5, r7
20027b28:	f844 5c7c 	str.w	r5, [r4, #-124]
20027b2c:	f856 5c38 	ldr.w	r5, [r6, #-56]
20027b30:	f142 0200 	adc.w	r2, r2, #0
20027b34:	fba5 7503 	umull	r7, r5, r5, r3
20027b38:	19d7      	adds	r7, r2, r7
20027b3a:	f854 2c78 	ldr.w	r2, [r4, #-120]
20027b3e:	f145 0500 	adc.w	r5, r5, #0
20027b42:	19d2      	adds	r2, r2, r7
20027b44:	f844 2c78 	str.w	r2, [r4, #-120]
20027b48:	f856 2c34 	ldr.w	r2, [r6, #-52]
20027b4c:	f145 0500 	adc.w	r5, r5, #0
20027b50:	fba2 7203 	umull	r7, r2, r2, r3
20027b54:	19ef      	adds	r7, r5, r7
20027b56:	f854 5c74 	ldr.w	r5, [r4, #-116]
20027b5a:	f142 0200 	adc.w	r2, r2, #0
20027b5e:	19ed      	adds	r5, r5, r7
20027b60:	f844 5c74 	str.w	r5, [r4, #-116]
20027b64:	f856 5c30 	ldr.w	r5, [r6, #-48]
20027b68:	f142 0200 	adc.w	r2, r2, #0
20027b6c:	fba5 7503 	umull	r7, r5, r5, r3
20027b70:	19d7      	adds	r7, r2, r7
20027b72:	f854 2c70 	ldr.w	r2, [r4, #-112]
20027b76:	f145 0500 	adc.w	r5, r5, #0
20027b7a:	19d2      	adds	r2, r2, r7
20027b7c:	f844 2c70 	str.w	r2, [r4, #-112]
20027b80:	f856 2c2c 	ldr.w	r2, [r6, #-44]
20027b84:	f145 0500 	adc.w	r5, r5, #0
20027b88:	fba2 7203 	umull	r7, r2, r2, r3
20027b8c:	19ef      	adds	r7, r5, r7
20027b8e:	f854 5c6c 	ldr.w	r5, [r4, #-108]
20027b92:	f142 0200 	adc.w	r2, r2, #0
20027b96:	19ed      	adds	r5, r5, r7
20027b98:	f844 5c6c 	str.w	r5, [r4, #-108]
20027b9c:	f856 5c28 	ldr.w	r5, [r6, #-40]
20027ba0:	f142 0200 	adc.w	r2, r2, #0
20027ba4:	fba5 7503 	umull	r7, r5, r5, r3
20027ba8:	19d7      	adds	r7, r2, r7
20027baa:	f854 2c68 	ldr.w	r2, [r4, #-104]
20027bae:	f145 0500 	adc.w	r5, r5, #0
20027bb2:	19d2      	adds	r2, r2, r7
20027bb4:	f844 2c68 	str.w	r2, [r4, #-104]
20027bb8:	f856 2c24 	ldr.w	r2, [r6, #-36]
20027bbc:	f145 0500 	adc.w	r5, r5, #0
20027bc0:	fba2 7203 	umull	r7, r2, r2, r3
20027bc4:	19ef      	adds	r7, r5, r7
20027bc6:	f854 5c64 	ldr.w	r5, [r4, #-100]
20027bca:	f142 0200 	adc.w	r2, r2, #0
20027bce:	19ed      	adds	r5, r5, r7
20027bd0:	f844 5c64 	str.w	r5, [r4, #-100]
20027bd4:	f856 5c20 	ldr.w	r5, [r6, #-32]
20027bd8:	f142 0200 	adc.w	r2, r2, #0
20027bdc:	fba5 7503 	umull	r7, r5, r5, r3
20027be0:	19d7      	adds	r7, r2, r7
20027be2:	f854 2c60 	ldr.w	r2, [r4, #-96]
20027be6:	f145 0500 	adc.w	r5, r5, #0
20027bea:	19d2      	adds	r2, r2, r7
20027bec:	f844 2c60 	str.w	r2, [r4, #-96]
20027bf0:	f856 2c1c 	ldr.w	r2, [r6, #-28]
20027bf4:	f145 0500 	adc.w	r5, r5, #0
20027bf8:	fba2 7203 	umull	r7, r2, r2, r3
20027bfc:	19ef      	adds	r7, r5, r7
20027bfe:	f854 5c5c 	ldr.w	r5, [r4, #-92]
20027c02:	f142 0200 	adc.w	r2, r2, #0
20027c06:	19ed      	adds	r5, r5, r7
20027c08:	f844 5c5c 	str.w	r5, [r4, #-92]
20027c0c:	f856 5c18 	ldr.w	r5, [r6, #-24]
20027c10:	f142 0200 	adc.w	r2, r2, #0
20027c14:	fba5 7503 	umull	r7, r5, r5, r3
20027c18:	19d7      	adds	r7, r2, r7
20027c1a:	f854 2c58 	ldr.w	r2, [r4, #-88]
20027c1e:	f145 0500 	adc.w	r5, r5, #0
20027c22:	19d2      	adds	r2, r2, r7
20027c24:	f844 2c58 	str.w	r2, [r4, #-88]
20027c28:	f856 2c14 	ldr.w	r2, [r6, #-20]
20027c2c:	f145 0500 	adc.w	r5, r5, #0
20027c30:	fba2 7203 	umull	r7, r2, r2, r3
20027c34:	19ef      	adds	r7, r5, r7
20027c36:	f854 5c54 	ldr.w	r5, [r4, #-84]
20027c3a:	f142 0200 	adc.w	r2, r2, #0
20027c3e:	19ed      	adds	r5, r5, r7
20027c40:	f844 5c54 	str.w	r5, [r4, #-84]
20027c44:	f856 5c10 	ldr.w	r5, [r6, #-16]
20027c48:	f142 0200 	adc.w	r2, r2, #0
20027c4c:	fba5 7503 	umull	r7, r5, r5, r3
20027c50:	19d7      	adds	r7, r2, r7
20027c52:	f854 2c50 	ldr.w	r2, [r4, #-80]
20027c56:	f145 0500 	adc.w	r5, r5, #0
20027c5a:	19d2      	adds	r2, r2, r7
20027c5c:	f844 2c50 	str.w	r2, [r4, #-80]
20027c60:	f856 2c0c 	ldr.w	r2, [r6, #-12]
20027c64:	f145 0500 	adc.w	r5, r5, #0
20027c68:	fba2 7203 	umull	r7, r2, r2, r3
20027c6c:	19ef      	adds	r7, r5, r7
20027c6e:	f854 5c4c 	ldr.w	r5, [r4, #-76]
20027c72:	f142 0200 	adc.w	r2, r2, #0
20027c76:	19ed      	adds	r5, r5, r7
20027c78:	f844 5c4c 	str.w	r5, [r4, #-76]
20027c7c:	f856 5c08 	ldr.w	r5, [r6, #-8]
20027c80:	f142 0200 	adc.w	r2, r2, #0
20027c84:	fba5 5703 	umull	r5, r7, r5, r3
20027c88:	1955      	adds	r5, r2, r5
20027c8a:	f854 2c48 	ldr.w	r2, [r4, #-72]
20027c8e:	f147 0700 	adc.w	r7, r7, #0
20027c92:	1952      	adds	r2, r2, r5
20027c94:	f844 2c48 	str.w	r2, [r4, #-72]
20027c98:	f856 2c04 	ldr.w	r2, [r6, #-4]
20027c9c:	f147 0700 	adc.w	r7, r7, #0
20027ca0:	fba2 2503 	umull	r2, r5, r2, r3
20027ca4:	18bf      	adds	r7, r7, r2
20027ca6:	f854 2c44 	ldr.w	r2, [r4, #-68]
20027caa:	f145 0500 	adc.w	r5, r5, #0
20027cae:	19d2      	adds	r2, r2, r7
20027cb0:	f145 0500 	adc.w	r5, r5, #0
20027cb4:	f844 2c44 	str.w	r2, [r4, #-68]
20027cb8:	e698      	b.n	200279ec <mpi_mul_hlp+0x10>
20027cba:	f856 2b04 	ldr.w	r2, [r6], #4
20027cbe:	fba2 2e03 	umull	r2, lr, r2, r3
20027cc2:	18aa      	adds	r2, r5, r2
20027cc4:	f14e 0500 	adc.w	r5, lr, #0
20027cc8:	1889      	adds	r1, r1, r2
20027cca:	f145 0500 	adc.w	r5, r5, #0
20027cce:	f847 1c04 	str.w	r1, [r7, #-4]
20027cd2:	e702      	b.n	20027ada <mpi_mul_hlp+0xfe>

20027cd4 <mbedtls_mpi_init>:
20027cd4:	b120      	cbz	r0, 20027ce0 <mbedtls_mpi_init+0xc>
20027cd6:	2300      	movs	r3, #0
20027cd8:	2201      	movs	r2, #1
20027cda:	e9c0 2300 	strd	r2, r3, [r0]
20027cde:	6083      	str	r3, [r0, #8]
20027ce0:	4770      	bx	lr

20027ce2 <mbedtls_mpi_free>:
20027ce2:	b510      	push	{r4, lr}
20027ce4:	4604      	mov	r4, r0
20027ce6:	b168      	cbz	r0, 20027d04 <mbedtls_mpi_free+0x22>
20027ce8:	6883      	ldr	r3, [r0, #8]
20027cea:	b133      	cbz	r3, 20027cfa <mbedtls_mpi_free+0x18>
20027cec:	2100      	movs	r1, #0
20027cee:	6842      	ldr	r2, [r0, #4]
20027cf0:	3a01      	subs	r2, #1
20027cf2:	d208      	bcs.n	20027d06 <mbedtls_mpi_free+0x24>
20027cf4:	68a0      	ldr	r0, [r4, #8]
20027cf6:	f002 fcbf 	bl	2002a678 <free>
20027cfa:	2300      	movs	r3, #0
20027cfc:	2201      	movs	r2, #1
20027cfe:	e9c4 2300 	strd	r2, r3, [r4]
20027d02:	60a3      	str	r3, [r4, #8]
20027d04:	bd10      	pop	{r4, pc}
20027d06:	f843 1b04 	str.w	r1, [r3], #4
20027d0a:	e7f1      	b.n	20027cf0 <mbedtls_mpi_free+0xe>

20027d0c <mbedtls_mpi_grow>:
20027d0c:	f242 7310 	movw	r3, #10000	@ 0x2710
20027d10:	4299      	cmp	r1, r3
20027d12:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20027d16:	4605      	mov	r5, r0
20027d18:	460f      	mov	r7, r1
20027d1a:	d903      	bls.n	20027d24 <mbedtls_mpi_grow+0x18>
20027d1c:	f06f 000f 	mvn.w	r0, #15
20027d20:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027d24:	6846      	ldr	r6, [r0, #4]
20027d26:	428e      	cmp	r6, r1
20027d28:	d301      	bcc.n	20027d2e <mbedtls_mpi_grow+0x22>
20027d2a:	2000      	movs	r0, #0
20027d2c:	e7f8      	b.n	20027d20 <mbedtls_mpi_grow+0x14>
20027d2e:	2104      	movs	r1, #4
20027d30:	4638      	mov	r0, r7
20027d32:	f002 fc85 	bl	2002a640 <calloc>
20027d36:	4680      	mov	r8, r0
20027d38:	2800      	cmp	r0, #0
20027d3a:	d0ef      	beq.n	20027d1c <mbedtls_mpi_grow+0x10>
20027d3c:	68ac      	ldr	r4, [r5, #8]
20027d3e:	b15c      	cbz	r4, 20027d58 <mbedtls_mpi_grow+0x4c>
20027d40:	00b6      	lsls	r6, r6, #2
20027d42:	4632      	mov	r2, r6
20027d44:	4621      	mov	r1, r4
20027d46:	f002 fd77 	bl	2002a838 <memcpy>
20027d4a:	2300      	movs	r3, #0
20027d4c:	4426      	add	r6, r4
20027d4e:	42b4      	cmp	r4, r6
20027d50:	d105      	bne.n	20027d5e <mbedtls_mpi_grow+0x52>
20027d52:	68a8      	ldr	r0, [r5, #8]
20027d54:	f002 fc90 	bl	2002a678 <free>
20027d58:	e9c5 7801 	strd	r7, r8, [r5, #4]
20027d5c:	e7e5      	b.n	20027d2a <mbedtls_mpi_grow+0x1e>
20027d5e:	f844 3b04 	str.w	r3, [r4], #4
20027d62:	e7f4      	b.n	20027d4e <mbedtls_mpi_grow+0x42>

20027d64 <mbedtls_mpi_copy>:
20027d64:	4288      	cmp	r0, r1
20027d66:	b570      	push	{r4, r5, r6, lr}
20027d68:	4605      	mov	r5, r0
20027d6a:	460e      	mov	r6, r1
20027d6c:	d003      	beq.n	20027d76 <mbedtls_mpi_copy+0x12>
20027d6e:	688b      	ldr	r3, [r1, #8]
20027d70:	b91b      	cbnz	r3, 20027d7a <mbedtls_mpi_copy+0x16>
20027d72:	f7ff ffb6 	bl	20027ce2 <mbedtls_mpi_free>
20027d76:	2000      	movs	r0, #0
20027d78:	bd70      	pop	{r4, r5, r6, pc}
20027d7a:	684a      	ldr	r2, [r1, #4]
20027d7c:	3a01      	subs	r2, #1
20027d7e:	b11a      	cbz	r2, 20027d88 <mbedtls_mpi_copy+0x24>
20027d80:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
20027d84:	2900      	cmp	r1, #0
20027d86:	d0f9      	beq.n	20027d7c <mbedtls_mpi_copy+0x18>
20027d88:	6833      	ldr	r3, [r6, #0]
20027d8a:	1c54      	adds	r4, r2, #1
20027d8c:	4621      	mov	r1, r4
20027d8e:	4628      	mov	r0, r5
20027d90:	602b      	str	r3, [r5, #0]
20027d92:	f7ff ffbb 	bl	20027d0c <mbedtls_mpi_grow>
20027d96:	4601      	mov	r1, r0
20027d98:	b950      	cbnz	r0, 20027db0 <mbedtls_mpi_copy+0x4c>
20027d9a:	686a      	ldr	r2, [r5, #4]
20027d9c:	68a8      	ldr	r0, [r5, #8]
20027d9e:	0092      	lsls	r2, r2, #2
20027da0:	f002 fd30 	bl	2002a804 <memset>
20027da4:	68b1      	ldr	r1, [r6, #8]
20027da6:	68a8      	ldr	r0, [r5, #8]
20027da8:	00a2      	lsls	r2, r4, #2
20027daa:	f002 fd45 	bl	2002a838 <memcpy>
20027dae:	e7e2      	b.n	20027d76 <mbedtls_mpi_copy+0x12>
20027db0:	f06f 000f 	mvn.w	r0, #15
20027db4:	e7e0      	b.n	20027d78 <mbedtls_mpi_copy+0x14>

20027db6 <mbedtls_mpi_lset>:
20027db6:	b570      	push	{r4, r5, r6, lr}
20027db8:	460e      	mov	r6, r1
20027dba:	2101      	movs	r1, #1
20027dbc:	4604      	mov	r4, r0
20027dbe:	f7ff ffa5 	bl	20027d0c <mbedtls_mpi_grow>
20027dc2:	4605      	mov	r5, r0
20027dc4:	b988      	cbnz	r0, 20027dea <mbedtls_mpi_lset+0x34>
20027dc6:	6862      	ldr	r2, [r4, #4]
20027dc8:	4601      	mov	r1, r0
20027dca:	0092      	lsls	r2, r2, #2
20027dcc:	68a0      	ldr	r0, [r4, #8]
20027dce:	f002 fd19 	bl	2002a804 <memset>
20027dd2:	68a3      	ldr	r3, [r4, #8]
20027dd4:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20027dd8:	2e00      	cmp	r6, #0
20027dda:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20027dde:	601a      	str	r2, [r3, #0]
20027de0:	bfac      	ite	ge
20027de2:	2301      	movge	r3, #1
20027de4:	f04f 33ff 	movlt.w	r3, #4294967295
20027de8:	6023      	str	r3, [r4, #0]
20027dea:	4628      	mov	r0, r5
20027dec:	bd70      	pop	{r4, r5, r6, pc}

20027dee <mbedtls_mpi_lsb>:
20027dee:	2300      	movs	r3, #0
20027df0:	4619      	mov	r1, r3
20027df2:	b570      	push	{r4, r5, r6, lr}
20027df4:	6844      	ldr	r4, [r0, #4]
20027df6:	428c      	cmp	r4, r1
20027df8:	d101      	bne.n	20027dfe <mbedtls_mpi_lsb+0x10>
20027dfa:	2000      	movs	r0, #0
20027dfc:	e008      	b.n	20027e10 <mbedtls_mpi_lsb+0x22>
20027dfe:	6882      	ldr	r2, [r0, #8]
20027e00:	f852 5021 	ldr.w	r5, [r2, r1, lsl #2]
20027e04:	2200      	movs	r2, #0
20027e06:	fa25 f602 	lsr.w	r6, r5, r2
20027e0a:	07f6      	lsls	r6, r6, #31
20027e0c:	d501      	bpl.n	20027e12 <mbedtls_mpi_lsb+0x24>
20027e0e:	1898      	adds	r0, r3, r2
20027e10:	bd70      	pop	{r4, r5, r6, pc}
20027e12:	3201      	adds	r2, #1
20027e14:	2a20      	cmp	r2, #32
20027e16:	d1f6      	bne.n	20027e06 <mbedtls_mpi_lsb+0x18>
20027e18:	3320      	adds	r3, #32
20027e1a:	3101      	adds	r1, #1
20027e1c:	e7eb      	b.n	20027df6 <mbedtls_mpi_lsb+0x8>

20027e1e <mbedtls_mpi_bitlen>:
20027e1e:	4602      	mov	r2, r0
20027e20:	6840      	ldr	r0, [r0, #4]
20027e22:	b188      	cbz	r0, 20027e48 <mbedtls_mpi_bitlen+0x2a>
20027e24:	6891      	ldr	r1, [r2, #8]
20027e26:	1e43      	subs	r3, r0, #1
20027e28:	b97b      	cbnz	r3, 20027e4a <mbedtls_mpi_bitlen+0x2c>
20027e2a:	461a      	mov	r2, r3
20027e2c:	5889      	ldr	r1, [r1, r2]
20027e2e:	2000      	movs	r0, #0
20027e30:	f04f 4200 	mov.w	r2, #2147483648	@ 0x80000000
20027e34:	4211      	tst	r1, r2
20027e36:	d104      	bne.n	20027e42 <mbedtls_mpi_bitlen+0x24>
20027e38:	3001      	adds	r0, #1
20027e3a:	2820      	cmp	r0, #32
20027e3c:	ea4f 0252 	mov.w	r2, r2, lsr #1
20027e40:	d1f8      	bne.n	20027e34 <mbedtls_mpi_bitlen+0x16>
20027e42:	3301      	adds	r3, #1
20027e44:	ebc0 1043 	rsb	r0, r0, r3, lsl #5
20027e48:	4770      	bx	lr
20027e4a:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
20027e4e:	009a      	lsls	r2, r3, #2
20027e50:	2800      	cmp	r0, #0
20027e52:	d1eb      	bne.n	20027e2c <mbedtls_mpi_bitlen+0xe>
20027e54:	3b01      	subs	r3, #1
20027e56:	e7e7      	b.n	20027e28 <mbedtls_mpi_bitlen+0xa>

20027e58 <mbedtls_mpi_size>:
20027e58:	b508      	push	{r3, lr}
20027e5a:	f7ff ffe0 	bl	20027e1e <mbedtls_mpi_bitlen>
20027e5e:	3007      	adds	r0, #7
20027e60:	08c0      	lsrs	r0, r0, #3
20027e62:	bd08      	pop	{r3, pc}

20027e64 <mbedtls_mpi_read_binary>:
20027e64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027e66:	4607      	mov	r7, r0
20027e68:	460c      	mov	r4, r1
20027e6a:	4616      	mov	r6, r2
20027e6c:	2500      	movs	r5, #0
20027e6e:	42b5      	cmp	r5, r6
20027e70:	d001      	beq.n	20027e76 <mbedtls_mpi_read_binary+0x12>
20027e72:	5d63      	ldrb	r3, [r4, r5]
20027e74:	b173      	cbz	r3, 20027e94 <mbedtls_mpi_read_binary+0x30>
20027e76:	1b71      	subs	r1, r6, r5
20027e78:	f011 0303 	ands.w	r3, r1, #3
20027e7c:	bf18      	it	ne
20027e7e:	2301      	movne	r3, #1
20027e80:	4638      	mov	r0, r7
20027e82:	eb03 0191 	add.w	r1, r3, r1, lsr #2
20027e86:	f7ff ff41 	bl	20027d0c <mbedtls_mpi_grow>
20027e8a:	4601      	mov	r1, r0
20027e8c:	b120      	cbz	r0, 20027e98 <mbedtls_mpi_read_binary+0x34>
20027e8e:	f06f 000f 	mvn.w	r0, #15
20027e92:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027e94:	3501      	adds	r5, #1
20027e96:	e7ea      	b.n	20027e6e <mbedtls_mpi_read_binary+0xa>
20027e98:	4638      	mov	r0, r7
20027e9a:	f7ff ff8c 	bl	20027db6 <mbedtls_mpi_lset>
20027e9e:	2800      	cmp	r0, #0
20027ea0:	d1f5      	bne.n	20027e8e <mbedtls_mpi_read_binary+0x2a>
20027ea2:	4603      	mov	r3, r0
20027ea4:	4434      	add	r4, r6
20027ea6:	1af2      	subs	r2, r6, r3
20027ea8:	4295      	cmp	r5, r2
20027eaa:	d2f2      	bcs.n	20027e92 <mbedtls_mpi_read_binary+0x2e>
20027eac:	f8d7 e008 	ldr.w	lr, [r7, #8]
20027eb0:	f814 1d01 	ldrb.w	r1, [r4, #-1]!
20027eb4:	00da      	lsls	r2, r3, #3
20027eb6:	f023 0c03 	bic.w	ip, r3, #3
20027eba:	f002 0218 	and.w	r2, r2, #24
20027ebe:	4091      	lsls	r1, r2
20027ec0:	f85e 200c 	ldr.w	r2, [lr, ip]
20027ec4:	3301      	adds	r3, #1
20027ec6:	430a      	orrs	r2, r1
20027ec8:	f84e 200c 	str.w	r2, [lr, ip]
20027ecc:	e7eb      	b.n	20027ea6 <mbedtls_mpi_read_binary+0x42>

20027ece <mbedtls_mpi_write_binary>:
20027ece:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027ed0:	4615      	mov	r5, r2
20027ed2:	4607      	mov	r7, r0
20027ed4:	460c      	mov	r4, r1
20027ed6:	f7ff ffbf 	bl	20027e58 <mbedtls_mpi_size>
20027eda:	42a8      	cmp	r0, r5
20027edc:	4606      	mov	r6, r0
20027ede:	d816      	bhi.n	20027f0e <mbedtls_mpi_write_binary+0x40>
20027ee0:	4620      	mov	r0, r4
20027ee2:	462a      	mov	r2, r5
20027ee4:	2100      	movs	r1, #0
20027ee6:	f002 fc8d 	bl	2002a804 <memset>
20027eea:	2300      	movs	r3, #0
20027eec:	442c      	add	r4, r5
20027eee:	42b3      	cmp	r3, r6
20027ef0:	d101      	bne.n	20027ef6 <mbedtls_mpi_write_binary+0x28>
20027ef2:	2000      	movs	r0, #0
20027ef4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027ef6:	68b8      	ldr	r0, [r7, #8]
20027ef8:	f023 0203 	bic.w	r2, r3, #3
20027efc:	5882      	ldr	r2, [r0, r2]
20027efe:	00d9      	lsls	r1, r3, #3
20027f00:	f001 0118 	and.w	r1, r1, #24
20027f04:	40ca      	lsrs	r2, r1
20027f06:	f804 2d01 	strb.w	r2, [r4, #-1]!
20027f0a:	3301      	adds	r3, #1
20027f0c:	e7ef      	b.n	20027eee <mbedtls_mpi_write_binary+0x20>
20027f0e:	f06f 0007 	mvn.w	r0, #7
20027f12:	e7ef      	b.n	20027ef4 <mbedtls_mpi_write_binary+0x26>

20027f14 <mbedtls_mpi_shift_l>:
20027f14:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027f16:	4605      	mov	r5, r0
20027f18:	460e      	mov	r6, r1
20027f1a:	094c      	lsrs	r4, r1, #5
20027f1c:	f001 071f 	and.w	r7, r1, #31
20027f20:	f7ff ff7d 	bl	20027e1e <mbedtls_mpi_bitlen>
20027f24:	686b      	ldr	r3, [r5, #4]
20027f26:	4430      	add	r0, r6
20027f28:	ebb0 1f43 	cmp.w	r0, r3, lsl #5
20027f2c:	d805      	bhi.n	20027f3a <mbedtls_mpi_shift_l+0x26>
20027f2e:	2e1f      	cmp	r6, #31
20027f30:	d811      	bhi.n	20027f56 <mbedtls_mpi_shift_l+0x42>
20027f32:	2f00      	cmp	r7, #0
20027f34:	d143      	bne.n	20027fbe <mbedtls_mpi_shift_l+0xaa>
20027f36:	2000      	movs	r0, #0
20027f38:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027f3a:	f010 011f 	ands.w	r1, r0, #31
20027f3e:	bf18      	it	ne
20027f40:	2101      	movne	r1, #1
20027f42:	eb01 1150 	add.w	r1, r1, r0, lsr #5
20027f46:	4628      	mov	r0, r5
20027f48:	f7ff fee0 	bl	20027d0c <mbedtls_mpi_grow>
20027f4c:	2800      	cmp	r0, #0
20027f4e:	d0ee      	beq.n	20027f2e <mbedtls_mpi_shift_l+0x1a>
20027f50:	f06f 000f 	mvn.w	r0, #15
20027f54:	e7f0      	b.n	20027f38 <mbedtls_mpi_shift_l+0x24>
20027f56:	f06f 0003 	mvn.w	r0, #3
20027f5a:	686a      	ldr	r2, [r5, #4]
20027f5c:	4360      	muls	r0, r4
20027f5e:	4611      	mov	r1, r2
20027f60:	0093      	lsls	r3, r2, #2
20027f62:	42a1      	cmp	r1, r4
20027f64:	f1a3 0304 	sub.w	r3, r3, #4
20027f68:	d80c      	bhi.n	20027f84 <mbedtls_mpi_shift_l+0x70>
20027f6a:	1aa3      	subs	r3, r4, r2
20027f6c:	4294      	cmp	r4, r2
20027f6e:	bf88      	it	hi
20027f70:	2300      	movhi	r3, #0
20027f72:	4413      	add	r3, r2
20027f74:	2200      	movs	r2, #0
20027f76:	009b      	lsls	r3, r3, #2
20027f78:	3b04      	subs	r3, #4
20027f7a:	1d19      	adds	r1, r3, #4
20027f7c:	d0d9      	beq.n	20027f32 <mbedtls_mpi_shift_l+0x1e>
20027f7e:	68a9      	ldr	r1, [r5, #8]
20027f80:	50ca      	str	r2, [r1, r3]
20027f82:	e7f9      	b.n	20027f78 <mbedtls_mpi_shift_l+0x64>
20027f84:	68ae      	ldr	r6, [r5, #8]
20027f86:	3901      	subs	r1, #1
20027f88:	eb06 0c03 	add.w	ip, r6, r3
20027f8c:	f85c c000 	ldr.w	ip, [ip, r0]
20027f90:	f846 c003 	str.w	ip, [r6, r3]
20027f94:	e7e5      	b.n	20027f62 <mbedtls_mpi_shift_l+0x4e>
20027f96:	68ab      	ldr	r3, [r5, #8]
20027f98:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
20027f9c:	fa01 f007 	lsl.w	r0, r1, r7
20027fa0:	f843 0024 	str.w	r0, [r3, r4, lsl #2]
20027fa4:	68a8      	ldr	r0, [r5, #8]
20027fa6:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
20027faa:	4313      	orrs	r3, r2
20027fac:	f840 3024 	str.w	r3, [r0, r4, lsl #2]
20027fb0:	fa21 f206 	lsr.w	r2, r1, r6
20027fb4:	3401      	adds	r4, #1
20027fb6:	686b      	ldr	r3, [r5, #4]
20027fb8:	42a3      	cmp	r3, r4
20027fba:	d8ec      	bhi.n	20027f96 <mbedtls_mpi_shift_l+0x82>
20027fbc:	e7bb      	b.n	20027f36 <mbedtls_mpi_shift_l+0x22>
20027fbe:	2200      	movs	r2, #0
20027fc0:	f1c7 0620 	rsb	r6, r7, #32
20027fc4:	e7f7      	b.n	20027fb6 <mbedtls_mpi_shift_l+0xa2>

20027fc6 <mbedtls_mpi_shift_r>:
20027fc6:	b4f0      	push	{r4, r5, r6, r7}
20027fc8:	6843      	ldr	r3, [r0, #4]
20027fca:	094c      	lsrs	r4, r1, #5
20027fcc:	42a3      	cmp	r3, r4
20027fce:	f001 021f 	and.w	r2, r1, #31
20027fd2:	d301      	bcc.n	20027fd8 <mbedtls_mpi_shift_r+0x12>
20027fd4:	d104      	bne.n	20027fe0 <mbedtls_mpi_shift_r+0x1a>
20027fd6:	b392      	cbz	r2, 2002803e <mbedtls_mpi_shift_r+0x78>
20027fd8:	bcf0      	pop	{r4, r5, r6, r7}
20027fda:	2100      	movs	r1, #0
20027fdc:	f7ff beeb 	b.w	20027db6 <mbedtls_mpi_lset>
20027fe0:	291f      	cmp	r1, #31
20027fe2:	d82e      	bhi.n	20028042 <mbedtls_mpi_shift_r+0x7c>
20027fe4:	b9aa      	cbnz	r2, 20028012 <mbedtls_mpi_shift_r+0x4c>
20027fe6:	bcf0      	pop	{r4, r5, r6, r7}
20027fe8:	2000      	movs	r0, #0
20027fea:	4770      	bx	lr
20027fec:	6885      	ldr	r5, [r0, #8]
20027fee:	586e      	ldr	r6, [r5, r1]
20027ff0:	3104      	adds	r1, #4
20027ff2:	f845 6023 	str.w	r6, [r5, r3, lsl #2]
20027ff6:	3301      	adds	r3, #1
20027ff8:	6845      	ldr	r5, [r0, #4]
20027ffa:	1b2d      	subs	r5, r5, r4
20027ffc:	429d      	cmp	r5, r3
20027ffe:	d8f5      	bhi.n	20027fec <mbedtls_mpi_shift_r+0x26>
20028000:	2400      	movs	r4, #0
20028002:	6841      	ldr	r1, [r0, #4]
20028004:	4299      	cmp	r1, r3
20028006:	d9ed      	bls.n	20027fe4 <mbedtls_mpi_shift_r+0x1e>
20028008:	6881      	ldr	r1, [r0, #8]
2002800a:	f841 4023 	str.w	r4, [r1, r3, lsl #2]
2002800e:	3301      	adds	r3, #1
20028010:	e7f7      	b.n	20028002 <mbedtls_mpi_shift_r+0x3c>
20028012:	2400      	movs	r4, #0
20028014:	6843      	ldr	r3, [r0, #4]
20028016:	f1c2 0720 	rsb	r7, r2, #32
2002801a:	3b01      	subs	r3, #1
2002801c:	d3e3      	bcc.n	20027fe6 <mbedtls_mpi_shift_r+0x20>
2002801e:	6881      	ldr	r1, [r0, #8]
20028020:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
20028024:	fa25 f602 	lsr.w	r6, r5, r2
20028028:	f841 6023 	str.w	r6, [r1, r3, lsl #2]
2002802c:	6886      	ldr	r6, [r0, #8]
2002802e:	f856 1023 	ldr.w	r1, [r6, r3, lsl #2]
20028032:	4321      	orrs	r1, r4
20028034:	f846 1023 	str.w	r1, [r6, r3, lsl #2]
20028038:	fa05 f407 	lsl.w	r4, r5, r7
2002803c:	e7ed      	b.n	2002801a <mbedtls_mpi_shift_r+0x54>
2002803e:	291f      	cmp	r1, #31
20028040:	d9d1      	bls.n	20027fe6 <mbedtls_mpi_shift_r+0x20>
20028042:	2300      	movs	r3, #0
20028044:	00a1      	lsls	r1, r4, #2
20028046:	e7d7      	b.n	20027ff8 <mbedtls_mpi_shift_r+0x32>

20028048 <mbedtls_mpi_cmp_abs>:
20028048:	b530      	push	{r4, r5, lr}
2002804a:	6842      	ldr	r2, [r0, #4]
2002804c:	b922      	cbnz	r2, 20028058 <mbedtls_mpi_cmp_abs+0x10>
2002804e:	684b      	ldr	r3, [r1, #4]
20028050:	b95b      	cbnz	r3, 2002806a <mbedtls_mpi_cmp_abs+0x22>
20028052:	b19a      	cbz	r2, 2002807c <mbedtls_mpi_cmp_abs+0x34>
20028054:	2001      	movs	r0, #1
20028056:	e015      	b.n	20028084 <mbedtls_mpi_cmp_abs+0x3c>
20028058:	6883      	ldr	r3, [r0, #8]
2002805a:	eb03 0382 	add.w	r3, r3, r2, lsl #2
2002805e:	f853 3c04 	ldr.w	r3, [r3, #-4]
20028062:	2b00      	cmp	r3, #0
20028064:	d1f3      	bne.n	2002804e <mbedtls_mpi_cmp_abs+0x6>
20028066:	3a01      	subs	r2, #1
20028068:	e7f0      	b.n	2002804c <mbedtls_mpi_cmp_abs+0x4>
2002806a:	688c      	ldr	r4, [r1, #8]
2002806c:	eb04 0583 	add.w	r5, r4, r3, lsl #2
20028070:	f855 5c04 	ldr.w	r5, [r5, #-4]
20028074:	b90d      	cbnz	r5, 2002807a <mbedtls_mpi_cmp_abs+0x32>
20028076:	3b01      	subs	r3, #1
20028078:	e7ea      	b.n	20028050 <mbedtls_mpi_cmp_abs+0x8>
2002807a:	b922      	cbnz	r2, 20028086 <mbedtls_mpi_cmp_abs+0x3e>
2002807c:	1e18      	subs	r0, r3, #0
2002807e:	bf18      	it	ne
20028080:	2001      	movne	r0, #1
20028082:	4240      	negs	r0, r0
20028084:	bd30      	pop	{r4, r5, pc}
20028086:	4293      	cmp	r3, r2
20028088:	d3e4      	bcc.n	20028054 <mbedtls_mpi_cmp_abs+0xc>
2002808a:	d80e      	bhi.n	200280aa <mbedtls_mpi_cmp_abs+0x62>
2002808c:	3a01      	subs	r2, #1
2002808e:	6883      	ldr	r3, [r0, #8]
20028090:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
20028094:	f854 3022 	ldr.w	r3, [r4, r2, lsl #2]
20028098:	4299      	cmp	r1, r3
2002809a:	d8db      	bhi.n	20028054 <mbedtls_mpi_cmp_abs+0xc>
2002809c:	f102 32ff 	add.w	r2, r2, #4294967295
200280a0:	d303      	bcc.n	200280aa <mbedtls_mpi_cmp_abs+0x62>
200280a2:	1c53      	adds	r3, r2, #1
200280a4:	d1f3      	bne.n	2002808e <mbedtls_mpi_cmp_abs+0x46>
200280a6:	2000      	movs	r0, #0
200280a8:	e7ec      	b.n	20028084 <mbedtls_mpi_cmp_abs+0x3c>
200280aa:	f04f 30ff 	mov.w	r0, #4294967295
200280ae:	e7e9      	b.n	20028084 <mbedtls_mpi_cmp_abs+0x3c>

200280b0 <mpi_montmul>:
200280b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200280b4:	4615      	mov	r5, r2
200280b6:	b087      	sub	sp, #28
200280b8:	9305      	str	r3, [sp, #20]
200280ba:	9b10      	ldr	r3, [sp, #64]	@ 0x40
200280bc:	4606      	mov	r6, r0
200280be:	685a      	ldr	r2, [r3, #4]
200280c0:	686b      	ldr	r3, [r5, #4]
200280c2:	4689      	mov	r9, r1
200280c4:	3301      	adds	r3, #1
200280c6:	429a      	cmp	r2, r3
200280c8:	d359      	bcc.n	2002817e <mpi_montmul+0xce>
200280ca:	9b10      	ldr	r3, [sp, #64]	@ 0x40
200280cc:	6898      	ldr	r0, [r3, #8]
200280ce:	2800      	cmp	r0, #0
200280d0:	d055      	beq.n	2002817e <mpi_montmul+0xce>
200280d2:	0092      	lsls	r2, r2, #2
200280d4:	2100      	movs	r1, #0
200280d6:	f002 fb95 	bl	2002a804 <memset>
200280da:	9b10      	ldr	r3, [sp, #64]	@ 0x40
200280dc:	f8d5 8004 	ldr.w	r8, [r5, #4]
200280e0:	f8d3 a008 	ldr.w	sl, [r3, #8]
200280e4:	f8d9 3004 	ldr.w	r3, [r9, #4]
200280e8:	46d3      	mov	fp, sl
200280ea:	4543      	cmp	r3, r8
200280ec:	bf28      	it	cs
200280ee:	4643      	movcs	r3, r8
200280f0:	2400      	movs	r4, #0
200280f2:	9304      	str	r3, [sp, #16]
200280f4:	f108 0301 	add.w	r3, r8, #1
200280f8:	009a      	lsls	r2, r3, #2
200280fa:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
200280fe:	9202      	str	r2, [sp, #8]
20028100:	9303      	str	r3, [sp, #12]
20028102:	4544      	cmp	r4, r8
20028104:	68b0      	ldr	r0, [r6, #8]
20028106:	d118      	bne.n	2002813a <mpi_montmul+0x8a>
20028108:	9b02      	ldr	r3, [sp, #8]
2002810a:	1f19      	subs	r1, r3, #4
2002810c:	461a      	mov	r2, r3
2002810e:	4451      	add	r1, sl
20028110:	f002 fb92 	bl	2002a838 <memcpy>
20028114:	4629      	mov	r1, r5
20028116:	4630      	mov	r0, r6
20028118:	f7ff ff96 	bl	20028048 <mbedtls_mpi_cmp_abs>
2002811c:	3001      	adds	r0, #1
2002811e:	68b1      	ldr	r1, [r6, #8]
20028120:	bf0c      	ite	eq
20028122:	9b10      	ldreq	r3, [sp, #64]	@ 0x40
20028124:	460a      	movne	r2, r1
20028126:	4620      	mov	r0, r4
20028128:	bf14      	ite	ne
2002812a:	68a9      	ldrne	r1, [r5, #8]
2002812c:	689a      	ldreq	r2, [r3, #8]
2002812e:	f7ff fc2c 	bl	2002798a <mpi_sub_hlp>
20028132:	2000      	movs	r0, #0
20028134:	b007      	add	sp, #28
20028136:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002813a:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
2002813e:	f8d9 1008 	ldr.w	r1, [r9, #8]
20028142:	9301      	str	r3, [sp, #4]
20028144:	9a01      	ldr	r2, [sp, #4]
20028146:	680b      	ldr	r3, [r1, #0]
20028148:	f8db 7000 	ldr.w	r7, [fp]
2002814c:	9804      	ldr	r0, [sp, #16]
2002814e:	fb03 7702 	mla	r7, r3, r2, r7
20028152:	9b05      	ldr	r3, [sp, #20]
20028154:	3401      	adds	r4, #1
20028156:	435f      	muls	r7, r3
20028158:	4613      	mov	r3, r2
2002815a:	465a      	mov	r2, fp
2002815c:	f7ff fc3e 	bl	200279dc <mpi_mul_hlp>
20028160:	465a      	mov	r2, fp
20028162:	463b      	mov	r3, r7
20028164:	4640      	mov	r0, r8
20028166:	68a9      	ldr	r1, [r5, #8]
20028168:	f7ff fc38 	bl	200279dc <mpi_mul_hlp>
2002816c:	2200      	movs	r2, #0
2002816e:	9b01      	ldr	r3, [sp, #4]
20028170:	f84b 3b04 	str.w	r3, [fp], #4
20028174:	9b03      	ldr	r3, [sp, #12]
20028176:	f843 2f04 	str.w	r2, [r3, #4]!
2002817a:	9303      	str	r3, [sp, #12]
2002817c:	e7c1      	b.n	20028102 <mpi_montmul+0x52>
2002817e:	f06f 0003 	mvn.w	r0, #3
20028182:	e7d7      	b.n	20028134 <mpi_montmul+0x84>

20028184 <mbedtls_mpi_cmp_mpi>:
20028184:	4602      	mov	r2, r0
20028186:	b530      	push	{r4, r5, lr}
20028188:	6843      	ldr	r3, [r0, #4]
2002818a:	b923      	cbnz	r3, 20028196 <mbedtls_mpi_cmp_mpi+0x12>
2002818c:	6848      	ldr	r0, [r1, #4]
2002818e:	b958      	cbnz	r0, 200281a8 <mbedtls_mpi_cmp_mpi+0x24>
20028190:	2b00      	cmp	r3, #0
20028192:	d136      	bne.n	20028202 <mbedtls_mpi_cmp_mpi+0x7e>
20028194:	e02f      	b.n	200281f6 <mbedtls_mpi_cmp_mpi+0x72>
20028196:	6890      	ldr	r0, [r2, #8]
20028198:	eb00 0083 	add.w	r0, r0, r3, lsl #2
2002819c:	f850 0c04 	ldr.w	r0, [r0, #-4]
200281a0:	2800      	cmp	r0, #0
200281a2:	d1f3      	bne.n	2002818c <mbedtls_mpi_cmp_mpi+0x8>
200281a4:	3b01      	subs	r3, #1
200281a6:	e7f0      	b.n	2002818a <mbedtls_mpi_cmp_mpi+0x6>
200281a8:	688c      	ldr	r4, [r1, #8]
200281aa:	eb04 0580 	add.w	r5, r4, r0, lsl #2
200281ae:	f855 5c04 	ldr.w	r5, [r5, #-4]
200281b2:	bb15      	cbnz	r5, 200281fa <mbedtls_mpi_cmp_mpi+0x76>
200281b4:	3801      	subs	r0, #1
200281b6:	e7ea      	b.n	2002818e <mbedtls_mpi_cmp_mpi+0xa>
200281b8:	680d      	ldr	r5, [r1, #0]
200281ba:	d202      	bcs.n	200281c2 <mbedtls_mpi_cmp_mpi+0x3e>
200281bc:	6808      	ldr	r0, [r1, #0]
200281be:	4240      	negs	r0, r0
200281c0:	e020      	b.n	20028204 <mbedtls_mpi_cmp_mpi+0x80>
200281c2:	6810      	ldr	r0, [r2, #0]
200281c4:	2800      	cmp	r0, #0
200281c6:	dd03      	ble.n	200281d0 <mbedtls_mpi_cmp_mpi+0x4c>
200281c8:	2d00      	cmp	r5, #0
200281ca:	da07      	bge.n	200281dc <mbedtls_mpi_cmp_mpi+0x58>
200281cc:	2001      	movs	r0, #1
200281ce:	e019      	b.n	20028204 <mbedtls_mpi_cmp_mpi+0x80>
200281d0:	2d00      	cmp	r5, #0
200281d2:	dd03      	ble.n	200281dc <mbedtls_mpi_cmp_mpi+0x58>
200281d4:	b110      	cbz	r0, 200281dc <mbedtls_mpi_cmp_mpi+0x58>
200281d6:	f04f 30ff 	mov.w	r0, #4294967295
200281da:	e013      	b.n	20028204 <mbedtls_mpi_cmp_mpi+0x80>
200281dc:	3b01      	subs	r3, #1
200281de:	6891      	ldr	r1, [r2, #8]
200281e0:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
200281e4:	f854 1023 	ldr.w	r1, [r4, r3, lsl #2]
200281e8:	428d      	cmp	r5, r1
200281ea:	d80b      	bhi.n	20028204 <mbedtls_mpi_cmp_mpi+0x80>
200281ec:	f103 33ff 	add.w	r3, r3, #4294967295
200281f0:	d3e5      	bcc.n	200281be <mbedtls_mpi_cmp_mpi+0x3a>
200281f2:	1c59      	adds	r1, r3, #1
200281f4:	d1f3      	bne.n	200281de <mbedtls_mpi_cmp_mpi+0x5a>
200281f6:	2000      	movs	r0, #0
200281f8:	e004      	b.n	20028204 <mbedtls_mpi_cmp_mpi+0x80>
200281fa:	2b00      	cmp	r3, #0
200281fc:	d0de      	beq.n	200281bc <mbedtls_mpi_cmp_mpi+0x38>
200281fe:	4283      	cmp	r3, r0
20028200:	d9da      	bls.n	200281b8 <mbedtls_mpi_cmp_mpi+0x34>
20028202:	6810      	ldr	r0, [r2, #0]
20028204:	bd30      	pop	{r4, r5, pc}

20028206 <mbedtls_mpi_cmp_int>:
20028206:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028208:	ea81 73e1 	eor.w	r3, r1, r1, asr #31
2002820c:	eba3 73e1 	sub.w	r3, r3, r1, asr #31
20028210:	2900      	cmp	r1, #0
20028212:	9300      	str	r3, [sp, #0]
20028214:	bfac      	ite	ge
20028216:	2301      	movge	r3, #1
20028218:	f04f 33ff 	movlt.w	r3, #4294967295
2002821c:	9301      	str	r3, [sp, #4]
2002821e:	2301      	movs	r3, #1
20028220:	a901      	add	r1, sp, #4
20028222:	9302      	str	r3, [sp, #8]
20028224:	f8cd d00c 	str.w	sp, [sp, #12]
20028228:	f7ff ffac 	bl	20028184 <mbedtls_mpi_cmp_mpi>
2002822c:	b005      	add	sp, #20
2002822e:	f85d fb04 	ldr.w	pc, [sp], #4

20028232 <mbedtls_mpi_add_abs>:
20028232:	4290      	cmp	r0, r2
20028234:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20028238:	4606      	mov	r6, r0
2002823a:	460c      	mov	r4, r1
2002823c:	4615      	mov	r5, r2
2002823e:	d002      	beq.n	20028246 <mbedtls_mpi_add_abs+0x14>
20028240:	4288      	cmp	r0, r1
20028242:	d12c      	bne.n	2002829e <mbedtls_mpi_add_abs+0x6c>
20028244:	462c      	mov	r4, r5
20028246:	2301      	movs	r3, #1
20028248:	6033      	str	r3, [r6, #0]
2002824a:	6865      	ldr	r5, [r4, #4]
2002824c:	bb85      	cbnz	r5, 200282b0 <mbedtls_mpi_add_abs+0x7e>
2002824e:	4629      	mov	r1, r5
20028250:	4630      	mov	r0, r6
20028252:	f7ff fd5b 	bl	20027d0c <mbedtls_mpi_grow>
20028256:	4607      	mov	r7, r0
20028258:	bb28      	cbnz	r0, 200282a6 <mbedtls_mpi_add_abs+0x74>
2002825a:	68b3      	ldr	r3, [r6, #8]
2002825c:	68a1      	ldr	r1, [r4, #8]
2002825e:	469c      	mov	ip, r3
20028260:	4604      	mov	r4, r0
20028262:	42a8      	cmp	r0, r5
20028264:	d12d      	bne.n	200282c2 <mbedtls_mpi_add_abs+0x90>
20028266:	eb03 0385 	add.w	r3, r3, r5, lsl #2
2002826a:	b1f4      	cbz	r4, 200282aa <mbedtls_mpi_add_abs+0x78>
2002826c:	6872      	ldr	r2, [r6, #4]
2002826e:	f105 0801 	add.w	r8, r5, #1
20028272:	42aa      	cmp	r2, r5
20028274:	d807      	bhi.n	20028286 <mbedtls_mpi_add_abs+0x54>
20028276:	4641      	mov	r1, r8
20028278:	4630      	mov	r0, r6
2002827a:	f7ff fd47 	bl	20027d0c <mbedtls_mpi_grow>
2002827e:	b990      	cbnz	r0, 200282a6 <mbedtls_mpi_add_abs+0x74>
20028280:	68b3      	ldr	r3, [r6, #8]
20028282:	eb03 0385 	add.w	r3, r3, r5, lsl #2
20028286:	681a      	ldr	r2, [r3, #0]
20028288:	4645      	mov	r5, r8
2002828a:	1912      	adds	r2, r2, r4
2002828c:	bf2c      	ite	cs
2002828e:	2401      	movcs	r4, #1
20028290:	2400      	movcc	r4, #0
20028292:	3c00      	subs	r4, #0
20028294:	bf18      	it	ne
20028296:	2401      	movne	r4, #1
20028298:	f843 2b04 	str.w	r2, [r3], #4
2002829c:	e7e5      	b.n	2002826a <mbedtls_mpi_add_abs+0x38>
2002829e:	f7ff fd61 	bl	20027d64 <mbedtls_mpi_copy>
200282a2:	2800      	cmp	r0, #0
200282a4:	d0ce      	beq.n	20028244 <mbedtls_mpi_add_abs+0x12>
200282a6:	f06f 070f 	mvn.w	r7, #15
200282aa:	4638      	mov	r0, r7
200282ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200282b0:	68a3      	ldr	r3, [r4, #8]
200282b2:	eb03 0385 	add.w	r3, r3, r5, lsl #2
200282b6:	f853 3c04 	ldr.w	r3, [r3, #-4]
200282ba:	2b00      	cmp	r3, #0
200282bc:	d1c7      	bne.n	2002824e <mbedtls_mpi_add_abs+0x1c>
200282be:	3d01      	subs	r5, #1
200282c0:	e7c4      	b.n	2002824c <mbedtls_mpi_add_abs+0x1a>
200282c2:	f8dc 2000 	ldr.w	r2, [ip]
200282c6:	1912      	adds	r2, r2, r4
200282c8:	bf2c      	ite	cs
200282ca:	f04f 0e01 	movcs.w	lr, #1
200282ce:	f04f 0e00 	movcc.w	lr, #0
200282d2:	f851 4020 	ldr.w	r4, [r1, r0, lsl #2]
200282d6:	3001      	adds	r0, #1
200282d8:	1912      	adds	r2, r2, r4
200282da:	f84c 2b04 	str.w	r2, [ip], #4
200282de:	f14e 0400 	adc.w	r4, lr, #0
200282e2:	e7be      	b.n	20028262 <mbedtls_mpi_add_abs+0x30>

200282e4 <mbedtls_mpi_sub_abs>:
200282e4:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
200282e6:	460e      	mov	r6, r1
200282e8:	4605      	mov	r5, r0
200282ea:	4611      	mov	r1, r2
200282ec:	4630      	mov	r0, r6
200282ee:	4614      	mov	r4, r2
200282f0:	f7ff feaa 	bl	20028048 <mbedtls_mpi_cmp_abs>
200282f4:	3001      	adds	r0, #1
200282f6:	d02f      	beq.n	20028358 <mbedtls_mpi_sub_abs+0x74>
200282f8:	2300      	movs	r3, #0
200282fa:	2201      	movs	r2, #1
200282fc:	42ac      	cmp	r4, r5
200282fe:	e9cd 2301 	strd	r2, r3, [sp, #4]
20028302:	9303      	str	r3, [sp, #12]
20028304:	d10d      	bne.n	20028322 <mbedtls_mpi_sub_abs+0x3e>
20028306:	4621      	mov	r1, r4
20028308:	a801      	add	r0, sp, #4
2002830a:	f7ff fd2b 	bl	20027d64 <mbedtls_mpi_copy>
2002830e:	b138      	cbz	r0, 20028320 <mbedtls_mpi_sub_abs+0x3c>
20028310:	f06f 040f 	mvn.w	r4, #15
20028314:	a801      	add	r0, sp, #4
20028316:	f7ff fce4 	bl	20027ce2 <mbedtls_mpi_free>
2002831a:	4620      	mov	r0, r4
2002831c:	b004      	add	sp, #16
2002831e:	bd70      	pop	{r4, r5, r6, pc}
20028320:	ac01      	add	r4, sp, #4
20028322:	42ae      	cmp	r6, r5
20028324:	d109      	bne.n	2002833a <mbedtls_mpi_sub_abs+0x56>
20028326:	2301      	movs	r3, #1
20028328:	602b      	str	r3, [r5, #0]
2002832a:	e9d4 0101 	ldrd	r0, r1, [r4, #4]
2002832e:	b958      	cbnz	r0, 20028348 <mbedtls_mpi_sub_abs+0x64>
20028330:	68aa      	ldr	r2, [r5, #8]
20028332:	f7ff fb2a 	bl	2002798a <mpi_sub_hlp>
20028336:	2400      	movs	r4, #0
20028338:	e7ec      	b.n	20028314 <mbedtls_mpi_sub_abs+0x30>
2002833a:	4631      	mov	r1, r6
2002833c:	4628      	mov	r0, r5
2002833e:	f7ff fd11 	bl	20027d64 <mbedtls_mpi_copy>
20028342:	2800      	cmp	r0, #0
20028344:	d0ef      	beq.n	20028326 <mbedtls_mpi_sub_abs+0x42>
20028346:	e7e3      	b.n	20028310 <mbedtls_mpi_sub_abs+0x2c>
20028348:	eb01 0380 	add.w	r3, r1, r0, lsl #2
2002834c:	f853 3c04 	ldr.w	r3, [r3, #-4]
20028350:	2b00      	cmp	r3, #0
20028352:	d1ed      	bne.n	20028330 <mbedtls_mpi_sub_abs+0x4c>
20028354:	3801      	subs	r0, #1
20028356:	e7ea      	b.n	2002832e <mbedtls_mpi_sub_abs+0x4a>
20028358:	f06f 0409 	mvn.w	r4, #9
2002835c:	e7dd      	b.n	2002831a <mbedtls_mpi_sub_abs+0x36>

2002835e <mbedtls_mpi_add_mpi>:
2002835e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20028360:	680d      	ldr	r5, [r1, #0]
20028362:	6813      	ldr	r3, [r2, #0]
20028364:	4604      	mov	r4, r0
20028366:	436b      	muls	r3, r5
20028368:	460f      	mov	r7, r1
2002836a:	4616      	mov	r6, r2
2002836c:	d516      	bpl.n	2002839c <mbedtls_mpi_add_mpi+0x3e>
2002836e:	4611      	mov	r1, r2
20028370:	4638      	mov	r0, r7
20028372:	f7ff fe69 	bl	20028048 <mbedtls_mpi_cmp_abs>
20028376:	3001      	adds	r0, #1
20028378:	d007      	beq.n	2002838a <mbedtls_mpi_add_mpi+0x2c>
2002837a:	4632      	mov	r2, r6
2002837c:	4639      	mov	r1, r7
2002837e:	4620      	mov	r0, r4
20028380:	f7ff ffb0 	bl	200282e4 <mbedtls_mpi_sub_abs>
20028384:	b900      	cbnz	r0, 20028388 <mbedtls_mpi_add_mpi+0x2a>
20028386:	6025      	str	r5, [r4, #0]
20028388:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002838a:	463a      	mov	r2, r7
2002838c:	4631      	mov	r1, r6
2002838e:	4620      	mov	r0, r4
20028390:	f7ff ffa8 	bl	200282e4 <mbedtls_mpi_sub_abs>
20028394:	2800      	cmp	r0, #0
20028396:	d1f7      	bne.n	20028388 <mbedtls_mpi_add_mpi+0x2a>
20028398:	426d      	negs	r5, r5
2002839a:	e7f4      	b.n	20028386 <mbedtls_mpi_add_mpi+0x28>
2002839c:	f7ff ff49 	bl	20028232 <mbedtls_mpi_add_abs>
200283a0:	2800      	cmp	r0, #0
200283a2:	d0f0      	beq.n	20028386 <mbedtls_mpi_add_mpi+0x28>
200283a4:	f06f 000f 	mvn.w	r0, #15
200283a8:	e7ee      	b.n	20028388 <mbedtls_mpi_add_mpi+0x2a>

200283aa <mbedtls_mpi_sub_mpi>:
200283aa:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200283ac:	680d      	ldr	r5, [r1, #0]
200283ae:	6813      	ldr	r3, [r2, #0]
200283b0:	4604      	mov	r4, r0
200283b2:	436b      	muls	r3, r5
200283b4:	2b00      	cmp	r3, #0
200283b6:	460f      	mov	r7, r1
200283b8:	4616      	mov	r6, r2
200283ba:	dd16      	ble.n	200283ea <mbedtls_mpi_sub_mpi+0x40>
200283bc:	4611      	mov	r1, r2
200283be:	4638      	mov	r0, r7
200283c0:	f7ff fe42 	bl	20028048 <mbedtls_mpi_cmp_abs>
200283c4:	3001      	adds	r0, #1
200283c6:	d007      	beq.n	200283d8 <mbedtls_mpi_sub_mpi+0x2e>
200283c8:	4632      	mov	r2, r6
200283ca:	4639      	mov	r1, r7
200283cc:	4620      	mov	r0, r4
200283ce:	f7ff ff89 	bl	200282e4 <mbedtls_mpi_sub_abs>
200283d2:	b900      	cbnz	r0, 200283d6 <mbedtls_mpi_sub_mpi+0x2c>
200283d4:	6025      	str	r5, [r4, #0]
200283d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200283d8:	463a      	mov	r2, r7
200283da:	4631      	mov	r1, r6
200283dc:	4620      	mov	r0, r4
200283de:	f7ff ff81 	bl	200282e4 <mbedtls_mpi_sub_abs>
200283e2:	2800      	cmp	r0, #0
200283e4:	d1f7      	bne.n	200283d6 <mbedtls_mpi_sub_mpi+0x2c>
200283e6:	426d      	negs	r5, r5
200283e8:	e7f4      	b.n	200283d4 <mbedtls_mpi_sub_mpi+0x2a>
200283ea:	f7ff ff22 	bl	20028232 <mbedtls_mpi_add_abs>
200283ee:	2800      	cmp	r0, #0
200283f0:	d0f0      	beq.n	200283d4 <mbedtls_mpi_sub_mpi+0x2a>
200283f2:	f06f 000f 	mvn.w	r0, #15
200283f6:	e7ee      	b.n	200283d6 <mbedtls_mpi_sub_mpi+0x2c>

200283f8 <mbedtls_mpi_sub_int>:
200283f8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200283fa:	ea82 73e2 	eor.w	r3, r2, r2, asr #31
200283fe:	eba3 73e2 	sub.w	r3, r3, r2, asr #31
20028402:	2a00      	cmp	r2, #0
20028404:	9300      	str	r3, [sp, #0]
20028406:	bfac      	ite	ge
20028408:	2301      	movge	r3, #1
2002840a:	f04f 33ff 	movlt.w	r3, #4294967295
2002840e:	9301      	str	r3, [sp, #4]
20028410:	2301      	movs	r3, #1
20028412:	aa01      	add	r2, sp, #4
20028414:	9302      	str	r3, [sp, #8]
20028416:	f8cd d00c 	str.w	sp, [sp, #12]
2002841a:	f7ff ffc6 	bl	200283aa <mbedtls_mpi_sub_mpi>
2002841e:	b005      	add	sp, #20
20028420:	f85d fb04 	ldr.w	pc, [sp], #4

20028424 <mbedtls_mpi_mul_mpi>:
20028424:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20028428:	2300      	movs	r3, #0
2002842a:	4615      	mov	r5, r2
2002842c:	2201      	movs	r2, #1
2002842e:	b087      	sub	sp, #28
20028430:	4288      	cmp	r0, r1
20028432:	4607      	mov	r7, r0
20028434:	460e      	mov	r6, r1
20028436:	e9cd 2300 	strd	r2, r3, [sp]
2002843a:	e9cd 3202 	strd	r3, r2, [sp, #8]
2002843e:	e9cd 3304 	strd	r3, r3, [sp, #16]
20028442:	d110      	bne.n	20028466 <mbedtls_mpi_mul_mpi+0x42>
20028444:	4668      	mov	r0, sp
20028446:	f7ff fc8d 	bl	20027d64 <mbedtls_mpi_copy>
2002844a:	b158      	cbz	r0, 20028464 <mbedtls_mpi_mul_mpi+0x40>
2002844c:	f06f 090f 	mvn.w	r9, #15
20028450:	a803      	add	r0, sp, #12
20028452:	f7ff fc46 	bl	20027ce2 <mbedtls_mpi_free>
20028456:	4668      	mov	r0, sp
20028458:	f7ff fc43 	bl	20027ce2 <mbedtls_mpi_free>
2002845c:	4648      	mov	r0, r9
2002845e:	b007      	add	sp, #28
20028460:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20028464:	466e      	mov	r6, sp
20028466:	42af      	cmp	r7, r5
20028468:	d106      	bne.n	20028478 <mbedtls_mpi_mul_mpi+0x54>
2002846a:	4639      	mov	r1, r7
2002846c:	a803      	add	r0, sp, #12
2002846e:	f7ff fc79 	bl	20027d64 <mbedtls_mpi_copy>
20028472:	2800      	cmp	r0, #0
20028474:	d1ea      	bne.n	2002844c <mbedtls_mpi_mul_mpi+0x28>
20028476:	ad03      	add	r5, sp, #12
20028478:	f8d6 8004 	ldr.w	r8, [r6, #4]
2002847c:	f1b8 0f00 	cmp.w	r8, #0
20028480:	d116      	bne.n	200284b0 <mbedtls_mpi_mul_mpi+0x8c>
20028482:	686c      	ldr	r4, [r5, #4]
20028484:	b9f4      	cbnz	r4, 200284c4 <mbedtls_mpi_mul_mpi+0xa0>
20028486:	eb08 0104 	add.w	r1, r8, r4
2002848a:	4638      	mov	r0, r7
2002848c:	f7ff fc3e 	bl	20027d0c <mbedtls_mpi_grow>
20028490:	4601      	mov	r1, r0
20028492:	2800      	cmp	r0, #0
20028494:	d1da      	bne.n	2002844c <mbedtls_mpi_mul_mpi+0x28>
20028496:	4638      	mov	r0, r7
20028498:	f7ff fc8d 	bl	20027db6 <mbedtls_mpi_lset>
2002849c:	4681      	mov	r9, r0
2002849e:	2800      	cmp	r0, #0
200284a0:	d1d4      	bne.n	2002844c <mbedtls_mpi_mul_mpi+0x28>
200284a2:	3c01      	subs	r4, #1
200284a4:	d217      	bcs.n	200284d6 <mbedtls_mpi_mul_mpi+0xb2>
200284a6:	6833      	ldr	r3, [r6, #0]
200284a8:	682a      	ldr	r2, [r5, #0]
200284aa:	4353      	muls	r3, r2
200284ac:	603b      	str	r3, [r7, #0]
200284ae:	e7cf      	b.n	20028450 <mbedtls_mpi_mul_mpi+0x2c>
200284b0:	68b3      	ldr	r3, [r6, #8]
200284b2:	eb03 0388 	add.w	r3, r3, r8, lsl #2
200284b6:	f853 3c04 	ldr.w	r3, [r3, #-4]
200284ba:	2b00      	cmp	r3, #0
200284bc:	d1e1      	bne.n	20028482 <mbedtls_mpi_mul_mpi+0x5e>
200284be:	f108 38ff 	add.w	r8, r8, #4294967295
200284c2:	e7db      	b.n	2002847c <mbedtls_mpi_mul_mpi+0x58>
200284c4:	68ab      	ldr	r3, [r5, #8]
200284c6:	eb03 0384 	add.w	r3, r3, r4, lsl #2
200284ca:	f853 3c04 	ldr.w	r3, [r3, #-4]
200284ce:	2b00      	cmp	r3, #0
200284d0:	d1d9      	bne.n	20028486 <mbedtls_mpi_mul_mpi+0x62>
200284d2:	3c01      	subs	r4, #1
200284d4:	e7d6      	b.n	20028484 <mbedtls_mpi_mul_mpi+0x60>
200284d6:	68ab      	ldr	r3, [r5, #8]
200284d8:	68ba      	ldr	r2, [r7, #8]
200284da:	4640      	mov	r0, r8
200284dc:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
200284e0:	68b1      	ldr	r1, [r6, #8]
200284e2:	eb02 0284 	add.w	r2, r2, r4, lsl #2
200284e6:	f7ff fa79 	bl	200279dc <mpi_mul_hlp>
200284ea:	e7da      	b.n	200284a2 <mbedtls_mpi_mul_mpi+0x7e>

200284ec <mbedtls_mpi_mul_int>:
200284ec:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200284ee:	2301      	movs	r3, #1
200284f0:	9200      	str	r2, [sp, #0]
200284f2:	aa01      	add	r2, sp, #4
200284f4:	e9cd 3301 	strd	r3, r3, [sp, #4]
200284f8:	f8cd d00c 	str.w	sp, [sp, #12]
200284fc:	f7ff ff92 	bl	20028424 <mbedtls_mpi_mul_mpi>
20028500:	b005      	add	sp, #20
20028502:	f85d fb04 	ldr.w	pc, [sp], #4

20028506 <mbedtls_mpi_div_mpi>:
20028506:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002850a:	b09f      	sub	sp, #124	@ 0x7c
2002850c:	e9cd 1203 	strd	r1, r2, [sp, #12]
20028510:	9005      	str	r0, [sp, #20]
20028512:	2100      	movs	r1, #0
20028514:	4618      	mov	r0, r3
20028516:	9309      	str	r3, [sp, #36]	@ 0x24
20028518:	f7ff fe75 	bl	20028206 <mbedtls_mpi_cmp_int>
2002851c:	2800      	cmp	r0, #0
2002851e:	f000 81f3 	beq.w	20028908 <mbedtls_mpi_div_mpi+0x402>
20028522:	2501      	movs	r5, #1
20028524:	2400      	movs	r4, #0
20028526:	9909      	ldr	r1, [sp, #36]	@ 0x24
20028528:	9804      	ldr	r0, [sp, #16]
2002852a:	e9cd 5418 	strd	r5, r4, [sp, #96]	@ 0x60
2002852e:	e9cd 541b 	strd	r5, r4, [sp, #108]	@ 0x6c
20028532:	950f      	str	r5, [sp, #60]	@ 0x3c
20028534:	9512      	str	r5, [sp, #72]	@ 0x48
20028536:	9515      	str	r5, [sp, #84]	@ 0x54
20028538:	9416      	str	r4, [sp, #88]	@ 0x58
2002853a:	f7ff fd85 	bl	20028048 <mbedtls_mpi_cmp_abs>
2002853e:	3001      	adds	r0, #1
20028540:	d11f      	bne.n	20028582 <mbedtls_mpi_div_mpi+0x7c>
20028542:	9b05      	ldr	r3, [sp, #20]
20028544:	b933      	cbnz	r3, 20028554 <mbedtls_mpi_div_mpi+0x4e>
20028546:	9b03      	ldr	r3, [sp, #12]
20028548:	b9a3      	cbnz	r3, 20028574 <mbedtls_mpi_div_mpi+0x6e>
2002854a:	2100      	movs	r1, #0
2002854c:	4608      	mov	r0, r1
2002854e:	b01f      	add	sp, #124	@ 0x7c
20028550:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20028554:	4621      	mov	r1, r4
20028556:	9805      	ldr	r0, [sp, #20]
20028558:	f7ff fc2d 	bl	20027db6 <mbedtls_mpi_lset>
2002855c:	2800      	cmp	r0, #0
2002855e:	d0f2      	beq.n	20028546 <mbedtls_mpi_div_mpi+0x40>
20028560:	2400      	movs	r4, #0
20028562:	4625      	mov	r5, r4
20028564:	46a1      	mov	r9, r4
20028566:	46a0      	mov	r8, r4
20028568:	4626      	mov	r6, r4
2002856a:	4627      	mov	r7, r4
2002856c:	9402      	str	r4, [sp, #8]
2002856e:	f06f 010f 	mvn.w	r1, #15
20028572:	e0ef      	b.n	20028754 <mbedtls_mpi_div_mpi+0x24e>
20028574:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
20028578:	f7ff fbf4 	bl	20027d64 <mbedtls_mpi_copy>
2002857c:	2800      	cmp	r0, #0
2002857e:	d1ef      	bne.n	20028560 <mbedtls_mpi_div_mpi+0x5a>
20028580:	e7e3      	b.n	2002854a <mbedtls_mpi_div_mpi+0x44>
20028582:	9904      	ldr	r1, [sp, #16]
20028584:	a80f      	add	r0, sp, #60	@ 0x3c
20028586:	e9cd 4410 	strd	r4, r4, [sp, #64]	@ 0x40
2002858a:	f7ff fbeb 	bl	20027d64 <mbedtls_mpi_copy>
2002858e:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028592:	4682      	mov	sl, r0
20028594:	2800      	cmp	r0, #0
20028596:	f040 81a9 	bne.w	200288ec <mbedtls_mpi_div_mpi+0x3e6>
2002859a:	e9cd 0013 	strd	r0, r0, [sp, #76]	@ 0x4c
2002859e:	9909      	ldr	r1, [sp, #36]	@ 0x24
200285a0:	a812      	add	r0, sp, #72	@ 0x48
200285a2:	f7ff fbdf 	bl	20027d64 <mbedtls_mpi_copy>
200285a6:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200285aa:	4604      	mov	r4, r0
200285ac:	2800      	cmp	r0, #0
200285ae:	f040 81a2 	bne.w	200288f6 <mbedtls_mpi_div_mpi+0x3f0>
200285b2:	9b04      	ldr	r3, [sp, #16]
200285b4:	9017      	str	r0, [sp, #92]	@ 0x5c
200285b6:	6859      	ldr	r1, [r3, #4]
200285b8:	a815      	add	r0, sp, #84	@ 0x54
200285ba:	3102      	adds	r1, #2
200285bc:	9512      	str	r5, [sp, #72]	@ 0x48
200285be:	950f      	str	r5, [sp, #60]	@ 0x3c
200285c0:	f7ff fba4 	bl	20027d0c <mbedtls_mpi_grow>
200285c4:	4605      	mov	r5, r0
200285c6:	b118      	cbz	r0, 200285d0 <mbedtls_mpi_div_mpi+0xca>
200285c8:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
200285ca:	9302      	str	r3, [sp, #8]
200285cc:	4625      	mov	r5, r4
200285ce:	e7ce      	b.n	2002856e <mbedtls_mpi_div_mpi+0x68>
200285d0:	4601      	mov	r1, r0
200285d2:	a815      	add	r0, sp, #84	@ 0x54
200285d4:	f7ff fbef 	bl	20027db6 <mbedtls_mpi_lset>
200285d8:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
200285da:	4604      	mov	r4, r0
200285dc:	9302      	str	r3, [sp, #8]
200285de:	2800      	cmp	r0, #0
200285e0:	f040 818e 	bne.w	20028900 <mbedtls_mpi_div_mpi+0x3fa>
200285e4:	901a      	str	r0, [sp, #104]	@ 0x68
200285e6:	2102      	movs	r1, #2
200285e8:	a818      	add	r0, sp, #96	@ 0x60
200285ea:	f7ff fb8f 	bl	20027d0c <mbedtls_mpi_grow>
200285ee:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200285f0:	2800      	cmp	r0, #0
200285f2:	d1bc      	bne.n	2002856e <mbedtls_mpi_div_mpi+0x68>
200285f4:	901d      	str	r0, [sp, #116]	@ 0x74
200285f6:	2103      	movs	r1, #3
200285f8:	a81b      	add	r0, sp, #108	@ 0x6c
200285fa:	f7ff fb87 	bl	20027d0c <mbedtls_mpi_grow>
200285fe:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
20028600:	4683      	mov	fp, r0
20028602:	2800      	cmp	r0, #0
20028604:	d1b3      	bne.n	2002856e <mbedtls_mpi_div_mpi+0x68>
20028606:	a812      	add	r0, sp, #72	@ 0x48
20028608:	f7ff fc09 	bl	20027e1e <mbedtls_mpi_bitlen>
2002860c:	f000 001f 	and.w	r0, r0, #31
20028610:	281f      	cmp	r0, #31
20028612:	f000 808a 	beq.w	2002872a <mbedtls_mpi_div_mpi+0x224>
20028616:	f1c0 031f 	rsb	r3, r0, #31
2002861a:	4619      	mov	r1, r3
2002861c:	a80f      	add	r0, sp, #60	@ 0x3c
2002861e:	9306      	str	r3, [sp, #24]
20028620:	f7ff fc78 	bl	20027f14 <mbedtls_mpi_shift_l>
20028624:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028628:	2800      	cmp	r0, #0
2002862a:	d1a0      	bne.n	2002856e <mbedtls_mpi_div_mpi+0x68>
2002862c:	9906      	ldr	r1, [sp, #24]
2002862e:	a812      	add	r0, sp, #72	@ 0x48
20028630:	f7ff fc70 	bl	20027f14 <mbedtls_mpi_shift_l>
20028634:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
20028638:	2800      	cmp	r0, #0
2002863a:	d198      	bne.n	2002856e <mbedtls_mpi_div_mpi+0x68>
2002863c:	46ba      	mov	sl, r7
2002863e:	f8cd 8020 	str.w	r8, [sp, #32]
20028642:	eba7 0b08 	sub.w	fp, r7, r8
20028646:	ea4f 134b 	mov.w	r3, fp, lsl #5
2002864a:	4619      	mov	r1, r3
2002864c:	a812      	add	r0, sp, #72	@ 0x48
2002864e:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
20028652:	9301      	str	r3, [sp, #4]
20028654:	f7ff fc5e 	bl	20027f14 <mbedtls_mpi_shift_l>
20028658:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
2002865c:	2800      	cmp	r0, #0
2002865e:	d186      	bne.n	2002856e <mbedtls_mpi_div_mpi+0x68>
20028660:	ea4f 038b 	mov.w	r3, fp, lsl #2
20028664:	930b      	str	r3, [sp, #44]	@ 0x2c
20028666:	9b02      	ldr	r3, [sp, #8]
20028668:	eb03 0b8b 	add.w	fp, r3, fp, lsl #2
2002866c:	a912      	add	r1, sp, #72	@ 0x48
2002866e:	a80f      	add	r0, sp, #60	@ 0x3c
20028670:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
20028674:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
20028678:	f7ff fd84 	bl	20028184 <mbedtls_mpi_cmp_mpi>
2002867c:	2800      	cmp	r0, #0
2002867e:	da5a      	bge.n	20028736 <mbedtls_mpi_div_mpi+0x230>
20028680:	9901      	ldr	r1, [sp, #4]
20028682:	a812      	add	r0, sp, #72	@ 0x48
20028684:	f7ff fc9f 	bl	20027fc6 <mbedtls_mpi_shift_r>
20028688:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
2002868c:	2800      	cmp	r0, #0
2002868e:	f47f af6e 	bne.w	2002856e <mbedtls_mpi_div_mpi+0x68>
20028692:	f10a 33ff 	add.w	r3, sl, #4294967295
20028696:	9301      	str	r3, [sp, #4]
20028698:	9b08      	ldr	r3, [sp, #32]
2002869a:	9a02      	ldr	r2, [sp, #8]
2002869c:	3b01      	subs	r3, #1
2002869e:	9307      	str	r3, [sp, #28]
200286a0:	eb09 0383 	add.w	r3, r9, r3, lsl #2
200286a4:	930a      	str	r3, [sp, #40]	@ 0x28
200286a6:	9b08      	ldr	r3, [sp, #32]
200286a8:	f103 4380 	add.w	r3, r3, #1073741824	@ 0x40000000
200286ac:	3b02      	subs	r3, #2
200286ae:	eb09 0383 	add.w	r3, r9, r3, lsl #2
200286b2:	930c      	str	r3, [sp, #48]	@ 0x30
200286b4:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200286b6:	4413      	add	r3, r2
200286b8:	469a      	mov	sl, r3
200286ba:	9b01      	ldr	r3, [sp, #4]
200286bc:	9a07      	ldr	r2, [sp, #28]
200286be:	4293      	cmp	r3, r2
200286c0:	d862      	bhi.n	20028788 <mbedtls_mpi_div_mpi+0x282>
200286c2:	9b05      	ldr	r3, [sp, #20]
200286c4:	b16b      	cbz	r3, 200286e2 <mbedtls_mpi_div_mpi+0x1dc>
200286c6:	4618      	mov	r0, r3
200286c8:	a915      	add	r1, sp, #84	@ 0x54
200286ca:	f7ff fb4b 	bl	20027d64 <mbedtls_mpi_copy>
200286ce:	2800      	cmp	r0, #0
200286d0:	f47f af4d 	bne.w	2002856e <mbedtls_mpi_div_mpi+0x68>
200286d4:	9b04      	ldr	r3, [sp, #16]
200286d6:	9a09      	ldr	r2, [sp, #36]	@ 0x24
200286d8:	681b      	ldr	r3, [r3, #0]
200286da:	6812      	ldr	r2, [r2, #0]
200286dc:	4353      	muls	r3, r2
200286de:	9a05      	ldr	r2, [sp, #20]
200286e0:	6013      	str	r3, [r2, #0]
200286e2:	9b03      	ldr	r3, [sp, #12]
200286e4:	2b00      	cmp	r3, #0
200286e6:	f000 810d 	beq.w	20028904 <mbedtls_mpi_div_mpi+0x3fe>
200286ea:	9906      	ldr	r1, [sp, #24]
200286ec:	a80f      	add	r0, sp, #60	@ 0x3c
200286ee:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
200286f2:	f7ff fc68 	bl	20027fc6 <mbedtls_mpi_shift_r>
200286f6:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
200286fa:	2800      	cmp	r0, #0
200286fc:	f47f af37 	bne.w	2002856e <mbedtls_mpi_div_mpi+0x68>
20028700:	9b04      	ldr	r3, [sp, #16]
20028702:	a90f      	add	r1, sp, #60	@ 0x3c
20028704:	681b      	ldr	r3, [r3, #0]
20028706:	9803      	ldr	r0, [sp, #12]
20028708:	930f      	str	r3, [sp, #60]	@ 0x3c
2002870a:	f7ff fb2b 	bl	20027d64 <mbedtls_mpi_copy>
2002870e:	4601      	mov	r1, r0
20028710:	2800      	cmp	r0, #0
20028712:	f47f af2c 	bne.w	2002856e <mbedtls_mpi_div_mpi+0x68>
20028716:	9001      	str	r0, [sp, #4]
20028718:	9803      	ldr	r0, [sp, #12]
2002871a:	f7ff fd74 	bl	20028206 <mbedtls_mpi_cmp_int>
2002871e:	9901      	ldr	r1, [sp, #4]
20028720:	b9c0      	cbnz	r0, 20028754 <mbedtls_mpi_div_mpi+0x24e>
20028722:	2301      	movs	r3, #1
20028724:	9a03      	ldr	r2, [sp, #12]
20028726:	6013      	str	r3, [r2, #0]
20028728:	e014      	b.n	20028754 <mbedtls_mpi_div_mpi+0x24e>
2002872a:	46ba      	mov	sl, r7
2002872c:	f8cd 8020 	str.w	r8, [sp, #32]
20028730:	f8cd b018 	str.w	fp, [sp, #24]
20028734:	e785      	b.n	20028642 <mbedtls_mpi_div_mpi+0x13c>
20028736:	f8db 2000 	ldr.w	r2, [fp]
2002873a:	a90f      	add	r1, sp, #60	@ 0x3c
2002873c:	3201      	adds	r2, #1
2002873e:	4608      	mov	r0, r1
20028740:	f8cb 2000 	str.w	r2, [fp]
20028744:	aa12      	add	r2, sp, #72	@ 0x48
20028746:	f7ff fe30 	bl	200283aa <mbedtls_mpi_sub_mpi>
2002874a:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
2002874e:	4601      	mov	r1, r0
20028750:	2800      	cmp	r0, #0
20028752:	d08b      	beq.n	2002866c <mbedtls_mpi_div_mpi+0x166>
20028754:	a80f      	add	r0, sp, #60	@ 0x3c
20028756:	9101      	str	r1, [sp, #4]
20028758:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
2002875c:	f7ff fac1 	bl	20027ce2 <mbedtls_mpi_free>
20028760:	a812      	add	r0, sp, #72	@ 0x48
20028762:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
20028766:	f7ff fabc 	bl	20027ce2 <mbedtls_mpi_free>
2002876a:	9b02      	ldr	r3, [sp, #8]
2002876c:	a815      	add	r0, sp, #84	@ 0x54
2002876e:	9317      	str	r3, [sp, #92]	@ 0x5c
20028770:	f7ff fab7 	bl	20027ce2 <mbedtls_mpi_free>
20028774:	a818      	add	r0, sp, #96	@ 0x60
20028776:	951a      	str	r5, [sp, #104]	@ 0x68
20028778:	f7ff fab3 	bl	20027ce2 <mbedtls_mpi_free>
2002877c:	a81b      	add	r0, sp, #108	@ 0x6c
2002877e:	941d      	str	r4, [sp, #116]	@ 0x74
20028780:	f7ff faaf 	bl	20027ce2 <mbedtls_mpi_free>
20028784:	9901      	ldr	r1, [sp, #4]
20028786:	e6e1      	b.n	2002854c <mbedtls_mpi_div_mpi+0x46>
20028788:	9b01      	ldr	r3, [sp, #4]
2002878a:	ea4f 0b83 	mov.w	fp, r3, lsl #2
2002878e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
20028792:	930b      	str	r3, [sp, #44]	@ 0x2c
20028794:	9b01      	ldr	r3, [sp, #4]
20028796:	f1ab 0004 	sub.w	r0, fp, #4
2002879a:	f856 1023 	ldr.w	r1, [r6, r3, lsl #2]
2002879e:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200287a0:	681a      	ldr	r2, [r3, #0]
200287a2:	1833      	adds	r3, r6, r0
200287a4:	4291      	cmp	r1, r2
200287a6:	930d      	str	r3, [sp, #52]	@ 0x34
200287a8:	d255      	bcs.n	20028856 <mbedtls_mpi_div_mpi+0x350>
200287aa:	2300      	movs	r3, #0
200287ac:	5830      	ldr	r0, [r6, r0]
200287ae:	f001 fd87 	bl	2002a2c0 <__aeabi_uldivmod>
200287b2:	2900      	cmp	r1, #0
200287b4:	bf14      	ite	ne
200287b6:	f04f 33ff 	movne.w	r3, #4294967295
200287ba:	4603      	moveq	r3, r0
200287bc:	3301      	adds	r3, #1
200287be:	f1ab 0b08 	sub.w	fp, fp, #8
200287c2:	f84a 3c04 	str.w	r3, [sl, #-4]
200287c6:	44b3      	add	fp, r6
200287c8:	f85a 3c04 	ldr.w	r3, [sl, #-4]
200287cc:	2100      	movs	r1, #0
200287ce:	3b01      	subs	r3, #1
200287d0:	f84a 3c04 	str.w	r3, [sl, #-4]
200287d4:	a818      	add	r0, sp, #96	@ 0x60
200287d6:	951a      	str	r5, [sp, #104]	@ 0x68
200287d8:	f7ff faed 	bl	20027db6 <mbedtls_mpi_lset>
200287dc:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200287de:	2800      	cmp	r0, #0
200287e0:	f47f aec5 	bne.w	2002856e <mbedtls_mpi_div_mpi+0x68>
200287e4:	9b07      	ldr	r3, [sp, #28]
200287e6:	2b00      	cmp	r3, #0
200287e8:	d038      	beq.n	2002885c <mbedtls_mpi_div_mpi+0x356>
200287ea:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
200287ec:	681b      	ldr	r3, [r3, #0]
200287ee:	602b      	str	r3, [r5, #0]
200287f0:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200287f2:	a918      	add	r1, sp, #96	@ 0x60
200287f4:	681b      	ldr	r3, [r3, #0]
200287f6:	4608      	mov	r0, r1
200287f8:	606b      	str	r3, [r5, #4]
200287fa:	f85a 2c04 	ldr.w	r2, [sl, #-4]
200287fe:	f7ff fe75 	bl	200284ec <mbedtls_mpi_mul_int>
20028802:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028804:	4601      	mov	r1, r0
20028806:	2800      	cmp	r0, #0
20028808:	f47f aeb1 	bne.w	2002856e <mbedtls_mpi_div_mpi+0x68>
2002880c:	a81b      	add	r0, sp, #108	@ 0x6c
2002880e:	941d      	str	r4, [sp, #116]	@ 0x74
20028810:	f7ff fad1 	bl	20027db6 <mbedtls_mpi_lset>
20028814:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
20028816:	2800      	cmp	r0, #0
20028818:	f47f aea9 	bne.w	2002856e <mbedtls_mpi_div_mpi+0x68>
2002881c:	9b01      	ldr	r3, [sp, #4]
2002881e:	a91b      	add	r1, sp, #108	@ 0x6c
20028820:	2b01      	cmp	r3, #1
20028822:	bf18      	it	ne
20028824:	f8db 0000 	ldrne.w	r0, [fp]
20028828:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
2002882a:	6020      	str	r0, [r4, #0]
2002882c:	681b      	ldr	r3, [r3, #0]
2002882e:	a818      	add	r0, sp, #96	@ 0x60
20028830:	6063      	str	r3, [r4, #4]
20028832:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
20028834:	681b      	ldr	r3, [r3, #0]
20028836:	60a3      	str	r3, [r4, #8]
20028838:	f7ff fca4 	bl	20028184 <mbedtls_mpi_cmp_mpi>
2002883c:	2800      	cmp	r0, #0
2002883e:	dcc3      	bgt.n	200287c8 <mbedtls_mpi_div_mpi+0x2c2>
20028840:	f85a 2c04 	ldr.w	r2, [sl, #-4]
20028844:	a912      	add	r1, sp, #72	@ 0x48
20028846:	a818      	add	r0, sp, #96	@ 0x60
20028848:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
2002884c:	f7ff fe4e 	bl	200284ec <mbedtls_mpi_mul_int>
20028850:	b130      	cbz	r0, 20028860 <mbedtls_mpi_div_mpi+0x35a>
20028852:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028854:	e68b      	b.n	2002856e <mbedtls_mpi_div_mpi+0x68>
20028856:	f04f 33ff 	mov.w	r3, #4294967295
2002885a:	e7af      	b.n	200287bc <mbedtls_mpi_div_mpi+0x2b6>
2002885c:	9b07      	ldr	r3, [sp, #28]
2002885e:	e7c6      	b.n	200287ee <mbedtls_mpi_div_mpi+0x2e8>
20028860:	f06f 0b1f 	mvn.w	fp, #31
20028864:	9b08      	ldr	r3, [sp, #32]
20028866:	a818      	add	r0, sp, #96	@ 0x60
20028868:	fb0b fb03 	mul.w	fp, fp, r3
2002886c:	9b01      	ldr	r3, [sp, #4]
2002886e:	eb0b 1b43 	add.w	fp, fp, r3, lsl #5
20028872:	4659      	mov	r1, fp
20028874:	f7ff fb4e 	bl	20027f14 <mbedtls_mpi_shift_l>
20028878:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002887a:	2800      	cmp	r0, #0
2002887c:	f47f ae77 	bne.w	2002856e <mbedtls_mpi_div_mpi+0x68>
20028880:	a90f      	add	r1, sp, #60	@ 0x3c
20028882:	4608      	mov	r0, r1
20028884:	aa18      	add	r2, sp, #96	@ 0x60
20028886:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
2002888a:	f7ff fd8e 	bl	200283aa <mbedtls_mpi_sub_mpi>
2002888e:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028892:	4601      	mov	r1, r0
20028894:	2800      	cmp	r0, #0
20028896:	f47f af5d 	bne.w	20028754 <mbedtls_mpi_div_mpi+0x24e>
2002889a:	a80f      	add	r0, sp, #60	@ 0x3c
2002889c:	f7ff fcb3 	bl	20028206 <mbedtls_mpi_cmp_int>
200288a0:	2800      	cmp	r0, #0
200288a2:	da1d      	bge.n	200288e0 <mbedtls_mpi_div_mpi+0x3da>
200288a4:	a912      	add	r1, sp, #72	@ 0x48
200288a6:	a818      	add	r0, sp, #96	@ 0x60
200288a8:	f7ff fa5c 	bl	20027d64 <mbedtls_mpi_copy>
200288ac:	2800      	cmp	r0, #0
200288ae:	d1d0      	bne.n	20028852 <mbedtls_mpi_div_mpi+0x34c>
200288b0:	4659      	mov	r1, fp
200288b2:	a818      	add	r0, sp, #96	@ 0x60
200288b4:	f7ff fb2e 	bl	20027f14 <mbedtls_mpi_shift_l>
200288b8:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200288ba:	2800      	cmp	r0, #0
200288bc:	f47f ae57 	bne.w	2002856e <mbedtls_mpi_div_mpi+0x68>
200288c0:	a90f      	add	r1, sp, #60	@ 0x3c
200288c2:	4608      	mov	r0, r1
200288c4:	aa18      	add	r2, sp, #96	@ 0x60
200288c6:	f7ff fd4a 	bl	2002835e <mbedtls_mpi_add_mpi>
200288ca:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
200288ce:	4601      	mov	r1, r0
200288d0:	2800      	cmp	r0, #0
200288d2:	f47f af3f 	bne.w	20028754 <mbedtls_mpi_div_mpi+0x24e>
200288d6:	f85a 3c04 	ldr.w	r3, [sl, #-4]
200288da:	3b01      	subs	r3, #1
200288dc:	f84a 3c04 	str.w	r3, [sl, #-4]
200288e0:	9b01      	ldr	r3, [sp, #4]
200288e2:	f1aa 0a04 	sub.w	sl, sl, #4
200288e6:	3b01      	subs	r3, #1
200288e8:	9301      	str	r3, [sp, #4]
200288ea:	e6e6      	b.n	200286ba <mbedtls_mpi_div_mpi+0x1b4>
200288ec:	4625      	mov	r5, r4
200288ee:	46a1      	mov	r9, r4
200288f0:	46a0      	mov	r8, r4
200288f2:	9402      	str	r4, [sp, #8]
200288f4:	e63b      	b.n	2002856e <mbedtls_mpi_div_mpi+0x68>
200288f6:	4654      	mov	r4, sl
200288f8:	4655      	mov	r5, sl
200288fa:	f8cd a008 	str.w	sl, [sp, #8]
200288fe:	e636      	b.n	2002856e <mbedtls_mpi_div_mpi+0x68>
20028900:	462c      	mov	r4, r5
20028902:	e663      	b.n	200285cc <mbedtls_mpi_div_mpi+0xc6>
20028904:	9903      	ldr	r1, [sp, #12]
20028906:	e725      	b.n	20028754 <mbedtls_mpi_div_mpi+0x24e>
20028908:	f06f 010b 	mvn.w	r1, #11
2002890c:	e61e      	b.n	2002854c <mbedtls_mpi_div_mpi+0x46>

2002890e <mbedtls_mpi_mod_mpi>:
2002890e:	b570      	push	{r4, r5, r6, lr}
20028910:	4604      	mov	r4, r0
20028912:	460d      	mov	r5, r1
20028914:	4610      	mov	r0, r2
20028916:	2100      	movs	r1, #0
20028918:	4616      	mov	r6, r2
2002891a:	f7ff fc74 	bl	20028206 <mbedtls_mpi_cmp_int>
2002891e:	2800      	cmp	r0, #0
20028920:	db24      	blt.n	2002896c <mbedtls_mpi_mod_mpi+0x5e>
20028922:	462a      	mov	r2, r5
20028924:	4633      	mov	r3, r6
20028926:	4621      	mov	r1, r4
20028928:	2000      	movs	r0, #0
2002892a:	f7ff fdec 	bl	20028506 <mbedtls_mpi_div_mpi>
2002892e:	4605      	mov	r5, r0
20028930:	b138      	cbz	r0, 20028942 <mbedtls_mpi_mod_mpi+0x34>
20028932:	4628      	mov	r0, r5
20028934:	bd70      	pop	{r4, r5, r6, pc}
20028936:	4632      	mov	r2, r6
20028938:	4621      	mov	r1, r4
2002893a:	4620      	mov	r0, r4
2002893c:	f7ff fd0f 	bl	2002835e <mbedtls_mpi_add_mpi>
20028940:	b990      	cbnz	r0, 20028968 <mbedtls_mpi_mod_mpi+0x5a>
20028942:	2100      	movs	r1, #0
20028944:	4620      	mov	r0, r4
20028946:	f7ff fc5e 	bl	20028206 <mbedtls_mpi_cmp_int>
2002894a:	2800      	cmp	r0, #0
2002894c:	dbf3      	blt.n	20028936 <mbedtls_mpi_mod_mpi+0x28>
2002894e:	4631      	mov	r1, r6
20028950:	4620      	mov	r0, r4
20028952:	f7ff fc17 	bl	20028184 <mbedtls_mpi_cmp_mpi>
20028956:	2800      	cmp	r0, #0
20028958:	dbeb      	blt.n	20028932 <mbedtls_mpi_mod_mpi+0x24>
2002895a:	4632      	mov	r2, r6
2002895c:	4621      	mov	r1, r4
2002895e:	4620      	mov	r0, r4
20028960:	f7ff fd23 	bl	200283aa <mbedtls_mpi_sub_mpi>
20028964:	2800      	cmp	r0, #0
20028966:	d0f2      	beq.n	2002894e <mbedtls_mpi_mod_mpi+0x40>
20028968:	4605      	mov	r5, r0
2002896a:	e7e2      	b.n	20028932 <mbedtls_mpi_mod_mpi+0x24>
2002896c:	f06f 0509 	mvn.w	r5, #9
20028970:	e7df      	b.n	20028932 <mbedtls_mpi_mod_mpi+0x24>

20028972 <mbedtls_mpi_exp_mod>:
20028972:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028976:	4605      	mov	r5, r0
20028978:	f2ad 6d54 	subw	sp, sp, #1620	@ 0x654
2002897c:	4688      	mov	r8, r1
2002897e:	4618      	mov	r0, r3
20028980:	2100      	movs	r1, #0
20028982:	461c      	mov	r4, r3
20028984:	9203      	str	r2, [sp, #12]
20028986:	f7ff fc3e 	bl	20028206 <mbedtls_mpi_cmp_int>
2002898a:	2800      	cmp	r0, #0
2002898c:	f2c0 8202 	blt.w	20028d94 <mbedtls_mpi_exp_mod+0x422>
20028990:	68a3      	ldr	r3, [r4, #8]
20028992:	681f      	ldr	r7, [r3, #0]
20028994:	f017 0301 	ands.w	r3, r7, #1
20028998:	9305      	str	r3, [sp, #20]
2002899a:	f000 81fb 	beq.w	20028d94 <mbedtls_mpi_exp_mod+0x422>
2002899e:	2100      	movs	r1, #0
200289a0:	9803      	ldr	r0, [sp, #12]
200289a2:	f7ff fc30 	bl	20028206 <mbedtls_mpi_cmp_int>
200289a6:	2800      	cmp	r0, #0
200289a8:	f2c0 81f4 	blt.w	20028d94 <mbedtls_mpi_exp_mod+0x422>
200289ac:	2100      	movs	r1, #0
200289ae:	2301      	movs	r3, #1
200289b0:	f44f 62c0 	mov.w	r2, #1536	@ 0x600
200289b4:	a814      	add	r0, sp, #80	@ 0x50
200289b6:	e9cd 3108 	strd	r3, r1, [sp, #32]
200289ba:	e9cd 130a 	strd	r1, r3, [sp, #40]	@ 0x28
200289be:	e9cd 110c 	strd	r1, r1, [sp, #48]	@ 0x30
200289c2:	e9cd 310e 	strd	r3, r1, [sp, #56]	@ 0x38
200289c6:	9110      	str	r1, [sp, #64]	@ 0x40
200289c8:	f001 ff1c 	bl	2002a804 <memset>
200289cc:	9803      	ldr	r0, [sp, #12]
200289ce:	f7ff fa26 	bl	20027e1e <mbedtls_mpi_bitlen>
200289d2:	f5b0 7f28 	cmp.w	r0, #672	@ 0x2a0
200289d6:	d233      	bcs.n	20028a40 <mbedtls_mpi_exp_mod+0xce>
200289d8:	28ef      	cmp	r0, #239	@ 0xef
200289da:	d833      	bhi.n	20028a44 <mbedtls_mpi_exp_mod+0xd2>
200289dc:	284f      	cmp	r0, #79	@ 0x4f
200289de:	d833      	bhi.n	20028a48 <mbedtls_mpi_exp_mod+0xd6>
200289e0:	9b05      	ldr	r3, [sp, #20]
200289e2:	2818      	cmp	r0, #24
200289e4:	bf34      	ite	cc
200289e6:	461e      	movcc	r6, r3
200289e8:	2603      	movcs	r6, #3
200289ea:	6863      	ldr	r3, [r4, #4]
200289ec:	4628      	mov	r0, r5
200289ee:	f103 0901 	add.w	r9, r3, #1
200289f2:	4649      	mov	r1, r9
200289f4:	f7ff f98a 	bl	20027d0c <mbedtls_mpi_grow>
200289f8:	b340      	cbz	r0, 20028a4c <mbedtls_mpi_exp_mod+0xda>
200289fa:	f06f 090f 	mvn.w	r9, #15
200289fe:	2301      	movs	r3, #1
20028a00:	1e74      	subs	r4, r6, #1
20028a02:	fa03 f506 	lsl.w	r5, r3, r6
20028a06:	260c      	movs	r6, #12
20028a08:	fa03 f404 	lsl.w	r4, r3, r4
20028a0c:	af14      	add	r7, sp, #80	@ 0x50
20028a0e:	42a5      	cmp	r5, r4
20028a10:	f200 81ba 	bhi.w	20028d88 <mbedtls_mpi_exp_mod+0x416>
20028a14:	a817      	add	r0, sp, #92	@ 0x5c
20028a16:	f7ff f964 	bl	20027ce2 <mbedtls_mpi_free>
20028a1a:	a80b      	add	r0, sp, #44	@ 0x2c
20028a1c:	f7ff f961 	bl	20027ce2 <mbedtls_mpi_free>
20028a20:	a80e      	add	r0, sp, #56	@ 0x38
20028a22:	f7ff f95e 	bl	20027ce2 <mbedtls_mpi_free>
20028a26:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028a2a:	b10b      	cbz	r3, 20028a30 <mbedtls_mpi_exp_mod+0xbe>
20028a2c:	689b      	ldr	r3, [r3, #8]
20028a2e:	b913      	cbnz	r3, 20028a36 <mbedtls_mpi_exp_mod+0xc4>
20028a30:	a808      	add	r0, sp, #32
20028a32:	f7ff f956 	bl	20027ce2 <mbedtls_mpi_free>
20028a36:	4648      	mov	r0, r9
20028a38:	f20d 6d54 	addw	sp, sp, #1620	@ 0x654
20028a3c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20028a40:	2606      	movs	r6, #6
20028a42:	e7d2      	b.n	200289ea <mbedtls_mpi_exp_mod+0x78>
20028a44:	2605      	movs	r6, #5
20028a46:	e7d0      	b.n	200289ea <mbedtls_mpi_exp_mod+0x78>
20028a48:	2604      	movs	r6, #4
20028a4a:	e7ce      	b.n	200289ea <mbedtls_mpi_exp_mod+0x78>
20028a4c:	4649      	mov	r1, r9
20028a4e:	a817      	add	r0, sp, #92	@ 0x5c
20028a50:	f7ff f95c 	bl	20027d0c <mbedtls_mpi_grow>
20028a54:	2800      	cmp	r0, #0
20028a56:	d1d0      	bne.n	200289fa <mbedtls_mpi_exp_mod+0x88>
20028a58:	ea4f 0149 	mov.w	r1, r9, lsl #1
20028a5c:	a80b      	add	r0, sp, #44	@ 0x2c
20028a5e:	f7ff f955 	bl	20027d0c <mbedtls_mpi_grow>
20028a62:	2800      	cmp	r0, #0
20028a64:	d1c9      	bne.n	200289fa <mbedtls_mpi_exp_mod+0x88>
20028a66:	f8d8 3000 	ldr.w	r3, [r8]
20028a6a:	9304      	str	r3, [sp, #16]
20028a6c:	3301      	adds	r3, #1
20028a6e:	d109      	bne.n	20028a84 <mbedtls_mpi_exp_mod+0x112>
20028a70:	4641      	mov	r1, r8
20028a72:	a80e      	add	r0, sp, #56	@ 0x38
20028a74:	f7ff f976 	bl	20027d64 <mbedtls_mpi_copy>
20028a78:	2800      	cmp	r0, #0
20028a7a:	d1be      	bne.n	200289fa <mbedtls_mpi_exp_mod+0x88>
20028a7c:	2301      	movs	r3, #1
20028a7e:	f10d 0838 	add.w	r8, sp, #56	@ 0x38
20028a82:	930e      	str	r3, [sp, #56]	@ 0x38
20028a84:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028a88:	b11b      	cbz	r3, 20028a92 <mbedtls_mpi_exp_mod+0x120>
20028a8a:	689b      	ldr	r3, [r3, #8]
20028a8c:	2b00      	cmp	r3, #0
20028a8e:	f040 80ab 	bne.w	20028be8 <mbedtls_mpi_exp_mod+0x276>
20028a92:	2101      	movs	r1, #1
20028a94:	a808      	add	r0, sp, #32
20028a96:	f7ff f98e 	bl	20027db6 <mbedtls_mpi_lset>
20028a9a:	2800      	cmp	r0, #0
20028a9c:	d1ad      	bne.n	200289fa <mbedtls_mpi_exp_mod+0x88>
20028a9e:	6861      	ldr	r1, [r4, #4]
20028aa0:	a808      	add	r0, sp, #32
20028aa2:	0189      	lsls	r1, r1, #6
20028aa4:	f7ff fa36 	bl	20027f14 <mbedtls_mpi_shift_l>
20028aa8:	2800      	cmp	r0, #0
20028aaa:	d1a6      	bne.n	200289fa <mbedtls_mpi_exp_mod+0x88>
20028aac:	a908      	add	r1, sp, #32
20028aae:	4622      	mov	r2, r4
20028ab0:	4608      	mov	r0, r1
20028ab2:	f7ff ff2c 	bl	2002890e <mbedtls_mpi_mod_mpi>
20028ab6:	4681      	mov	r9, r0
20028ab8:	2800      	cmp	r0, #0
20028aba:	d1a0      	bne.n	200289fe <mbedtls_mpi_exp_mod+0x8c>
20028abc:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028ac0:	b13b      	cbz	r3, 20028ad2 <mbedtls_mpi_exp_mod+0x160>
20028ac2:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
20028ac6:	ab08      	add	r3, sp, #32
20028ac8:	cb03      	ldmia	r3!, {r0, r1}
20028aca:	6010      	str	r0, [r2, #0]
20028acc:	6818      	ldr	r0, [r3, #0]
20028ace:	6051      	str	r1, [r2, #4]
20028ad0:	6090      	str	r0, [r2, #8]
20028ad2:	4621      	mov	r1, r4
20028ad4:	4640      	mov	r0, r8
20028ad6:	f7ff fb55 	bl	20028184 <mbedtls_mpi_cmp_mpi>
20028ada:	2800      	cmp	r0, #0
20028adc:	f2c0 808d 	blt.w	20028bfa <mbedtls_mpi_exp_mod+0x288>
20028ae0:	4622      	mov	r2, r4
20028ae2:	4641      	mov	r1, r8
20028ae4:	a817      	add	r0, sp, #92	@ 0x5c
20028ae6:	f7ff ff12 	bl	2002890e <mbedtls_mpi_mod_mpi>
20028aea:	4681      	mov	r9, r0
20028aec:	2800      	cmp	r0, #0
20028aee:	d186      	bne.n	200289fe <mbedtls_mpi_exp_mod+0x8c>
20028af0:	1cba      	adds	r2, r7, #2
20028af2:	0052      	lsls	r2, r2, #1
20028af4:	f002 0208 	and.w	r2, r2, #8
20028af8:	443a      	add	r2, r7
20028afa:	fb02 f307 	mul.w	r3, r2, r7
20028afe:	f1c3 0302 	rsb	r3, r3, #2
20028b02:	4353      	muls	r3, r2
20028b04:	fb03 f207 	mul.w	r2, r3, r7
20028b08:	f1c2 0202 	rsb	r2, r2, #2
20028b0c:	4353      	muls	r3, r2
20028b0e:	435f      	muls	r7, r3
20028b10:	3f02      	subs	r7, #2
20028b12:	437b      	muls	r3, r7
20028b14:	f10d 0b2c 	add.w	fp, sp, #44	@ 0x2c
20028b18:	4622      	mov	r2, r4
20028b1a:	f8cd b000 	str.w	fp, [sp]
20028b1e:	a908      	add	r1, sp, #32
20028b20:	a817      	add	r0, sp, #92	@ 0x5c
20028b22:	9302      	str	r3, [sp, #8]
20028b24:	f7ff fac4 	bl	200280b0 <mpi_montmul>
20028b28:	2800      	cmp	r0, #0
20028b2a:	f040 80e4 	bne.w	20028cf6 <mbedtls_mpi_exp_mod+0x384>
20028b2e:	4628      	mov	r0, r5
20028b30:	a908      	add	r1, sp, #32
20028b32:	f7ff f917 	bl	20027d64 <mbedtls_mpi_copy>
20028b36:	2800      	cmp	r0, #0
20028b38:	f47f af5f 	bne.w	200289fa <mbedtls_mpi_exp_mod+0x88>
20028b3c:	2301      	movs	r3, #1
20028b3e:	aa07      	add	r2, sp, #28
20028b40:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028b44:	9307      	str	r3, [sp, #28]
20028b46:	9213      	str	r2, [sp, #76]	@ 0x4c
20028b48:	4628      	mov	r0, r5
20028b4a:	4622      	mov	r2, r4
20028b4c:	9b02      	ldr	r3, [sp, #8]
20028b4e:	f8cd b000 	str.w	fp, [sp]
20028b52:	a911      	add	r1, sp, #68	@ 0x44
20028b54:	f7ff faac 	bl	200280b0 <mpi_montmul>
20028b58:	2800      	cmp	r0, #0
20028b5a:	f040 80cc 	bne.w	20028cf6 <mbedtls_mpi_exp_mod+0x384>
20028b5e:	2e01      	cmp	r6, #1
20028b60:	d153      	bne.n	20028c0a <mbedtls_mpi_exp_mod+0x298>
20028b62:	f04f 0900 	mov.w	r9, #0
20028b66:	464f      	mov	r7, r9
20028b68:	46ca      	mov	sl, r9
20028b6a:	46c8      	mov	r8, r9
20028b6c:	9b03      	ldr	r3, [sp, #12]
20028b6e:	f8d3 b004 	ldr.w	fp, [r3, #4]
20028b72:	f1ba 0f00 	cmp.w	sl, #0
20028b76:	f040 80a1 	bne.w	20028cbc <mbedtls_mpi_exp_mod+0x34a>
20028b7a:	f1bb 0f00 	cmp.w	fp, #0
20028b7e:	f040 8099 	bne.w	20028cb4 <mbedtls_mpi_exp_mod+0x342>
20028b82:	f04f 0a01 	mov.w	sl, #1
20028b86:	f10d 092c 	add.w	r9, sp, #44	@ 0x2c
20028b8a:	fa0a fa06 	lsl.w	sl, sl, r6
20028b8e:	45bb      	cmp	fp, r7
20028b90:	f040 80dd 	bne.w	20028d4e <mbedtls_mpi_exp_mod+0x3dc>
20028b94:	2301      	movs	r3, #1
20028b96:	aa07      	add	r2, sp, #28
20028b98:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028b9c:	9307      	str	r3, [sp, #28]
20028b9e:	9213      	str	r2, [sp, #76]	@ 0x4c
20028ba0:	f8cd 9000 	str.w	r9, [sp]
20028ba4:	4622      	mov	r2, r4
20028ba6:	4628      	mov	r0, r5
20028ba8:	9b02      	ldr	r3, [sp, #8]
20028baa:	a911      	add	r1, sp, #68	@ 0x44
20028bac:	f7ff fa80 	bl	200280b0 <mpi_montmul>
20028bb0:	4681      	mov	r9, r0
20028bb2:	2800      	cmp	r0, #0
20028bb4:	f040 809f 	bne.w	20028cf6 <mbedtls_mpi_exp_mod+0x384>
20028bb8:	9b04      	ldr	r3, [sp, #16]
20028bba:	3301      	adds	r3, #1
20028bbc:	f47f af1f 	bne.w	200289fe <mbedtls_mpi_exp_mod+0x8c>
20028bc0:	9b03      	ldr	r3, [sp, #12]
20028bc2:	685b      	ldr	r3, [r3, #4]
20028bc4:	2b00      	cmp	r3, #0
20028bc6:	f43f af1a 	beq.w	200289fe <mbedtls_mpi_exp_mod+0x8c>
20028bca:	9b03      	ldr	r3, [sp, #12]
20028bcc:	689b      	ldr	r3, [r3, #8]
20028bce:	681b      	ldr	r3, [r3, #0]
20028bd0:	07db      	lsls	r3, r3, #31
20028bd2:	f57f af14 	bpl.w	200289fe <mbedtls_mpi_exp_mod+0x8c>
20028bd6:	9b04      	ldr	r3, [sp, #16]
20028bd8:	462a      	mov	r2, r5
20028bda:	4621      	mov	r1, r4
20028bdc:	4628      	mov	r0, r5
20028bde:	602b      	str	r3, [r5, #0]
20028be0:	f7ff fbbd 	bl	2002835e <mbedtls_mpi_add_mpi>
20028be4:	4681      	mov	r9, r0
20028be6:	e70a      	b.n	200289fe <mbedtls_mpi_exp_mod+0x8c>
20028be8:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
20028bec:	ab08      	add	r3, sp, #32
20028bee:	6810      	ldr	r0, [r2, #0]
20028bf0:	6851      	ldr	r1, [r2, #4]
20028bf2:	c303      	stmia	r3!, {r0, r1}
20028bf4:	6890      	ldr	r0, [r2, #8]
20028bf6:	6018      	str	r0, [r3, #0]
20028bf8:	e76b      	b.n	20028ad2 <mbedtls_mpi_exp_mod+0x160>
20028bfa:	4641      	mov	r1, r8
20028bfc:	a817      	add	r0, sp, #92	@ 0x5c
20028bfe:	f7ff f8b1 	bl	20027d64 <mbedtls_mpi_copy>
20028c02:	2800      	cmp	r0, #0
20028c04:	f43f af74 	beq.w	20028af0 <mbedtls_mpi_exp_mod+0x17e>
20028c08:	e6f7      	b.n	200289fa <mbedtls_mpi_exp_mod+0x88>
20028c0a:	f04f 0a0c 	mov.w	sl, #12
20028c0e:	1e77      	subs	r7, r6, #1
20028c10:	6861      	ldr	r1, [r4, #4]
20028c12:	fa0a fa07 	lsl.w	sl, sl, r7
20028c16:	f10d 0950 	add.w	r9, sp, #80	@ 0x50
20028c1a:	44d1      	add	r9, sl
20028c1c:	4648      	mov	r0, r9
20028c1e:	3101      	adds	r1, #1
20028c20:	f7ff f874 	bl	20027d0c <mbedtls_mpi_grow>
20028c24:	2800      	cmp	r0, #0
20028c26:	f47f aee8 	bne.w	200289fa <mbedtls_mpi_exp_mod+0x88>
20028c2a:	4648      	mov	r0, r9
20028c2c:	a917      	add	r1, sp, #92	@ 0x5c
20028c2e:	f7ff f899 	bl	20027d64 <mbedtls_mpi_copy>
20028c32:	2800      	cmp	r0, #0
20028c34:	f47f aee1 	bne.w	200289fa <mbedtls_mpi_exp_mod+0x88>
20028c38:	4680      	mov	r8, r0
20028c3a:	4622      	mov	r2, r4
20028c3c:	4649      	mov	r1, r9
20028c3e:	4648      	mov	r0, r9
20028c40:	9b02      	ldr	r3, [sp, #8]
20028c42:	f8cd b000 	str.w	fp, [sp]
20028c46:	f7ff fa33 	bl	200280b0 <mpi_montmul>
20028c4a:	2800      	cmp	r0, #0
20028c4c:	d153      	bne.n	20028cf6 <mbedtls_mpi_exp_mod+0x384>
20028c4e:	f108 0801 	add.w	r8, r8, #1
20028c52:	45b8      	cmp	r8, r7
20028c54:	d3f1      	bcc.n	20028c3a <mbedtls_mpi_exp_mod+0x2c8>
20028c56:	f04f 0801 	mov.w	r8, #1
20028c5a:	f10d 0b50 	add.w	fp, sp, #80	@ 0x50
20028c5e:	fa08 f707 	lsl.w	r7, r8, r7
20028c62:	4447      	add	r7, r8
20028c64:	44d3      	add	fp, sl
20028c66:	fa08 f806 	lsl.w	r8, r8, r6
20028c6a:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
20028c6e:	45b8      	cmp	r8, r7
20028c70:	f67f af77 	bls.w	20028b62 <mbedtls_mpi_exp_mod+0x1f0>
20028c74:	6861      	ldr	r1, [r4, #4]
20028c76:	f10b 090c 	add.w	r9, fp, #12
20028c7a:	4648      	mov	r0, r9
20028c7c:	3101      	adds	r1, #1
20028c7e:	f7ff f845 	bl	20027d0c <mbedtls_mpi_grow>
20028c82:	2800      	cmp	r0, #0
20028c84:	f47f aeb9 	bne.w	200289fa <mbedtls_mpi_exp_mod+0x88>
20028c88:	4659      	mov	r1, fp
20028c8a:	4648      	mov	r0, r9
20028c8c:	f7ff f86a 	bl	20027d64 <mbedtls_mpi_copy>
20028c90:	2800      	cmp	r0, #0
20028c92:	f47f aeb2 	bne.w	200289fa <mbedtls_mpi_exp_mod+0x88>
20028c96:	4622      	mov	r2, r4
20028c98:	4648      	mov	r0, r9
20028c9a:	9b02      	ldr	r3, [sp, #8]
20028c9c:	f8cd a000 	str.w	sl, [sp]
20028ca0:	a917      	add	r1, sp, #92	@ 0x5c
20028ca2:	f7ff fa05 	bl	200280b0 <mpi_montmul>
20028ca6:	bb30      	cbnz	r0, 20028cf6 <mbedtls_mpi_exp_mod+0x384>
20028ca8:	46cb      	mov	fp, r9
20028caa:	3701      	adds	r7, #1
20028cac:	e7df      	b.n	20028c6e <mbedtls_mpi_exp_mod+0x2fc>
20028cae:	f04f 0902 	mov.w	r9, #2
20028cb2:	e75e      	b.n	20028b72 <mbedtls_mpi_exp_mod+0x200>
20028cb4:	f04f 0a20 	mov.w	sl, #32
20028cb8:	f10b 3bff 	add.w	fp, fp, #4294967295
20028cbc:	9b03      	ldr	r3, [sp, #12]
20028cbe:	f10a 3aff 	add.w	sl, sl, #4294967295
20028cc2:	689b      	ldr	r3, [r3, #8]
20028cc4:	f853 302b 	ldr.w	r3, [r3, fp, lsl #2]
20028cc8:	fa23 f30a 	lsr.w	r3, r3, sl
20028ccc:	f013 0301 	ands.w	r3, r3, #1
20028cd0:	d114      	bne.n	20028cfc <mbedtls_mpi_exp_mod+0x38a>
20028cd2:	f1b9 0f00 	cmp.w	r9, #0
20028cd6:	f43f af4c 	beq.w	20028b72 <mbedtls_mpi_exp_mod+0x200>
20028cda:	f1b9 0f01 	cmp.w	r9, #1
20028cde:	d10d      	bne.n	20028cfc <mbedtls_mpi_exp_mod+0x38a>
20028ce0:	ab0b      	add	r3, sp, #44	@ 0x2c
20028ce2:	9300      	str	r3, [sp, #0]
20028ce4:	4622      	mov	r2, r4
20028ce6:	4629      	mov	r1, r5
20028ce8:	4628      	mov	r0, r5
20028cea:	9b02      	ldr	r3, [sp, #8]
20028cec:	f7ff f9e0 	bl	200280b0 <mpi_montmul>
20028cf0:	2800      	cmp	r0, #0
20028cf2:	f43f af3e 	beq.w	20028b72 <mbedtls_mpi_exp_mod+0x200>
20028cf6:	f06f 0903 	mvn.w	r9, #3
20028cfa:	e680      	b.n	200289fe <mbedtls_mpi_exp_mod+0x8c>
20028cfc:	3701      	adds	r7, #1
20028cfe:	1bf2      	subs	r2, r6, r7
20028d00:	4093      	lsls	r3, r2
20028d02:	42be      	cmp	r6, r7
20028d04:	ea48 0803 	orr.w	r8, r8, r3
20028d08:	d1d1      	bne.n	20028cae <mbedtls_mpi_exp_mod+0x33c>
20028d0a:	f04f 0900 	mov.w	r9, #0
20028d0e:	ab0b      	add	r3, sp, #44	@ 0x2c
20028d10:	9300      	str	r3, [sp, #0]
20028d12:	4622      	mov	r2, r4
20028d14:	4629      	mov	r1, r5
20028d16:	4628      	mov	r0, r5
20028d18:	9b02      	ldr	r3, [sp, #8]
20028d1a:	f7ff f9c9 	bl	200280b0 <mpi_montmul>
20028d1e:	2800      	cmp	r0, #0
20028d20:	d1e9      	bne.n	20028cf6 <mbedtls_mpi_exp_mod+0x384>
20028d22:	f109 0901 	add.w	r9, r9, #1
20028d26:	454f      	cmp	r7, r9
20028d28:	d8f1      	bhi.n	20028d0e <mbedtls_mpi_exp_mod+0x39c>
20028d2a:	200c      	movs	r0, #12
20028d2c:	ab0b      	add	r3, sp, #44	@ 0x2c
20028d2e:	a914      	add	r1, sp, #80	@ 0x50
20028d30:	fb00 1108 	mla	r1, r0, r8, r1
20028d34:	9300      	str	r3, [sp, #0]
20028d36:	4622      	mov	r2, r4
20028d38:	4628      	mov	r0, r5
20028d3a:	9b02      	ldr	r3, [sp, #8]
20028d3c:	f7ff f9b8 	bl	200280b0 <mpi_montmul>
20028d40:	4607      	mov	r7, r0
20028d42:	2800      	cmp	r0, #0
20028d44:	d1d7      	bne.n	20028cf6 <mbedtls_mpi_exp_mod+0x384>
20028d46:	4680      	mov	r8, r0
20028d48:	f8dd 9014 	ldr.w	r9, [sp, #20]
20028d4c:	e711      	b.n	20028b72 <mbedtls_mpi_exp_mod+0x200>
20028d4e:	4622      	mov	r2, r4
20028d50:	4629      	mov	r1, r5
20028d52:	4628      	mov	r0, r5
20028d54:	9b02      	ldr	r3, [sp, #8]
20028d56:	f8cd 9000 	str.w	r9, [sp]
20028d5a:	f7ff f9a9 	bl	200280b0 <mpi_montmul>
20028d5e:	2800      	cmp	r0, #0
20028d60:	d1c9      	bne.n	20028cf6 <mbedtls_mpi_exp_mod+0x384>
20028d62:	ea4f 0848 	mov.w	r8, r8, lsl #1
20028d66:	ea18 0f0a 	tst.w	r8, sl
20028d6a:	d102      	bne.n	20028d72 <mbedtls_mpi_exp_mod+0x400>
20028d6c:	f10b 0b01 	add.w	fp, fp, #1
20028d70:	e70d      	b.n	20028b8e <mbedtls_mpi_exp_mod+0x21c>
20028d72:	4622      	mov	r2, r4
20028d74:	4628      	mov	r0, r5
20028d76:	9b02      	ldr	r3, [sp, #8]
20028d78:	f8cd 9000 	str.w	r9, [sp]
20028d7c:	a917      	add	r1, sp, #92	@ 0x5c
20028d7e:	f7ff f997 	bl	200280b0 <mpi_montmul>
20028d82:	2800      	cmp	r0, #0
20028d84:	d0f2      	beq.n	20028d6c <mbedtls_mpi_exp_mod+0x3fa>
20028d86:	e7b6      	b.n	20028cf6 <mbedtls_mpi_exp_mod+0x384>
20028d88:	fb06 7004 	mla	r0, r6, r4, r7
20028d8c:	f7fe ffa9 	bl	20027ce2 <mbedtls_mpi_free>
20028d90:	3401      	adds	r4, #1
20028d92:	e63c      	b.n	20028a0e <mbedtls_mpi_exp_mod+0x9c>
20028d94:	f06f 0903 	mvn.w	r9, #3
20028d98:	e64d      	b.n	20028a36 <mbedtls_mpi_exp_mod+0xc4>

20028d9a <mbedtls_mpi_gcd>:
20028d9a:	b570      	push	{r4, r5, r6, lr}
20028d9c:	2300      	movs	r3, #0
20028d9e:	2401      	movs	r4, #1
20028da0:	b086      	sub	sp, #24
20028da2:	4606      	mov	r6, r0
20028da4:	4668      	mov	r0, sp
20028da6:	4615      	mov	r5, r2
20028da8:	e9cd 4300 	strd	r4, r3, [sp]
20028dac:	e9cd 3402 	strd	r3, r4, [sp, #8]
20028db0:	e9cd 3304 	strd	r3, r3, [sp, #16]
20028db4:	f7fe ffd6 	bl	20027d64 <mbedtls_mpi_copy>
20028db8:	b150      	cbz	r0, 20028dd0 <mbedtls_mpi_gcd+0x36>
20028dba:	f06f 040f 	mvn.w	r4, #15
20028dbe:	4668      	mov	r0, sp
20028dc0:	f7fe ff8f 	bl	20027ce2 <mbedtls_mpi_free>
20028dc4:	a803      	add	r0, sp, #12
20028dc6:	f7fe ff8c 	bl	20027ce2 <mbedtls_mpi_free>
20028dca:	4620      	mov	r0, r4
20028dcc:	b006      	add	sp, #24
20028dce:	bd70      	pop	{r4, r5, r6, pc}
20028dd0:	4629      	mov	r1, r5
20028dd2:	a803      	add	r0, sp, #12
20028dd4:	f7fe ffc6 	bl	20027d64 <mbedtls_mpi_copy>
20028dd8:	2800      	cmp	r0, #0
20028dda:	d1ee      	bne.n	20028dba <mbedtls_mpi_gcd+0x20>
20028ddc:	4668      	mov	r0, sp
20028dde:	f7ff f806 	bl	20027dee <mbedtls_mpi_lsb>
20028de2:	4605      	mov	r5, r0
20028de4:	a803      	add	r0, sp, #12
20028de6:	f7ff f802 	bl	20027dee <mbedtls_mpi_lsb>
20028dea:	4285      	cmp	r5, r0
20028dec:	bf28      	it	cs
20028dee:	4605      	movcs	r5, r0
20028df0:	4668      	mov	r0, sp
20028df2:	4629      	mov	r1, r5
20028df4:	f7ff f8e7 	bl	20027fc6 <mbedtls_mpi_shift_r>
20028df8:	2800      	cmp	r0, #0
20028dfa:	d1de      	bne.n	20028dba <mbedtls_mpi_gcd+0x20>
20028dfc:	4629      	mov	r1, r5
20028dfe:	a803      	add	r0, sp, #12
20028e00:	f7ff f8e1 	bl	20027fc6 <mbedtls_mpi_shift_r>
20028e04:	2800      	cmp	r0, #0
20028e06:	d1d8      	bne.n	20028dba <mbedtls_mpi_gcd+0x20>
20028e08:	9403      	str	r4, [sp, #12]
20028e0a:	9400      	str	r4, [sp, #0]
20028e0c:	2100      	movs	r1, #0
20028e0e:	4668      	mov	r0, sp
20028e10:	f7ff f9f9 	bl	20028206 <mbedtls_mpi_cmp_int>
20028e14:	b968      	cbnz	r0, 20028e32 <mbedtls_mpi_gcd+0x98>
20028e16:	4629      	mov	r1, r5
20028e18:	a803      	add	r0, sp, #12
20028e1a:	f7ff f87b 	bl	20027f14 <mbedtls_mpi_shift_l>
20028e1e:	2800      	cmp	r0, #0
20028e20:	d1cb      	bne.n	20028dba <mbedtls_mpi_gcd+0x20>
20028e22:	4630      	mov	r0, r6
20028e24:	a903      	add	r1, sp, #12
20028e26:	f7fe ff9d 	bl	20027d64 <mbedtls_mpi_copy>
20028e2a:	4604      	mov	r4, r0
20028e2c:	2800      	cmp	r0, #0
20028e2e:	d0c6      	beq.n	20028dbe <mbedtls_mpi_gcd+0x24>
20028e30:	e7c3      	b.n	20028dba <mbedtls_mpi_gcd+0x20>
20028e32:	4668      	mov	r0, sp
20028e34:	f7fe ffdb 	bl	20027dee <mbedtls_mpi_lsb>
20028e38:	4601      	mov	r1, r0
20028e3a:	4668      	mov	r0, sp
20028e3c:	f7ff f8c3 	bl	20027fc6 <mbedtls_mpi_shift_r>
20028e40:	2800      	cmp	r0, #0
20028e42:	d1ba      	bne.n	20028dba <mbedtls_mpi_gcd+0x20>
20028e44:	a803      	add	r0, sp, #12
20028e46:	f7fe ffd2 	bl	20027dee <mbedtls_mpi_lsb>
20028e4a:	4601      	mov	r1, r0
20028e4c:	a803      	add	r0, sp, #12
20028e4e:	f7ff f8ba 	bl	20027fc6 <mbedtls_mpi_shift_r>
20028e52:	2800      	cmp	r0, #0
20028e54:	d1b1      	bne.n	20028dba <mbedtls_mpi_gcd+0x20>
20028e56:	4668      	mov	r0, sp
20028e58:	a903      	add	r1, sp, #12
20028e5a:	f7ff f993 	bl	20028184 <mbedtls_mpi_cmp_mpi>
20028e5e:	2800      	cmp	r0, #0
20028e60:	db0e      	blt.n	20028e80 <mbedtls_mpi_gcd+0xe6>
20028e62:	4669      	mov	r1, sp
20028e64:	4668      	mov	r0, sp
20028e66:	aa03      	add	r2, sp, #12
20028e68:	f7ff fa3c 	bl	200282e4 <mbedtls_mpi_sub_abs>
20028e6c:	4604      	mov	r4, r0
20028e6e:	2800      	cmp	r0, #0
20028e70:	d1a5      	bne.n	20028dbe <mbedtls_mpi_gcd+0x24>
20028e72:	2101      	movs	r1, #1
20028e74:	4668      	mov	r0, sp
20028e76:	f7ff f8a6 	bl	20027fc6 <mbedtls_mpi_shift_r>
20028e7a:	2800      	cmp	r0, #0
20028e7c:	d0c6      	beq.n	20028e0c <mbedtls_mpi_gcd+0x72>
20028e7e:	e79c      	b.n	20028dba <mbedtls_mpi_gcd+0x20>
20028e80:	a903      	add	r1, sp, #12
20028e82:	466a      	mov	r2, sp
20028e84:	4608      	mov	r0, r1
20028e86:	f7ff fa2d 	bl	200282e4 <mbedtls_mpi_sub_abs>
20028e8a:	4604      	mov	r4, r0
20028e8c:	2800      	cmp	r0, #0
20028e8e:	d196      	bne.n	20028dbe <mbedtls_mpi_gcd+0x24>
20028e90:	2101      	movs	r1, #1
20028e92:	a803      	add	r0, sp, #12
20028e94:	e7ef      	b.n	20028e76 <mbedtls_mpi_gcd+0xdc>

20028e96 <mbedtls_mpi_fill_random>:
20028e96:	b570      	push	{r4, r5, r6, lr}
20028e98:	f5b1 6f80 	cmp.w	r1, #1024	@ 0x400
20028e9c:	4605      	mov	r5, r0
20028e9e:	460c      	mov	r4, r1
20028ea0:	4616      	mov	r6, r2
20028ea2:	4618      	mov	r0, r3
20028ea4:	f5ad 6d80 	sub.w	sp, sp, #1024	@ 0x400
20028ea8:	d80f      	bhi.n	20028eca <mbedtls_mpi_fill_random+0x34>
20028eaa:	460a      	mov	r2, r1
20028eac:	4669      	mov	r1, sp
20028eae:	47b0      	blx	r6
20028eb0:	b940      	cbnz	r0, 20028ec4 <mbedtls_mpi_fill_random+0x2e>
20028eb2:	4622      	mov	r2, r4
20028eb4:	4669      	mov	r1, sp
20028eb6:	4628      	mov	r0, r5
20028eb8:	f7fe ffd4 	bl	20027e64 <mbedtls_mpi_read_binary>
20028ebc:	2800      	cmp	r0, #0
20028ebe:	bf18      	it	ne
20028ec0:	f06f 000f 	mvnne.w	r0, #15
20028ec4:	f50d 6d80 	add.w	sp, sp, #1024	@ 0x400
20028ec8:	bd70      	pop	{r4, r5, r6, pc}
20028eca:	f06f 0003 	mvn.w	r0, #3
20028ece:	e7f9      	b.n	20028ec4 <mbedtls_mpi_fill_random+0x2e>

20028ed0 <mbedtls_mpi_inv_mod>:
20028ed0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028ed4:	b09f      	sub	sp, #124	@ 0x7c
20028ed6:	9001      	str	r0, [sp, #4]
20028ed8:	460f      	mov	r7, r1
20028eda:	4610      	mov	r0, r2
20028edc:	2101      	movs	r1, #1
20028ede:	4692      	mov	sl, r2
20028ee0:	f7ff f991 	bl	20028206 <mbedtls_mpi_cmp_int>
20028ee4:	2800      	cmp	r0, #0
20028ee6:	f340 81b5 	ble.w	20029254 <mbedtls_mpi_inv_mod+0x384>
20028eea:	2500      	movs	r5, #0
20028eec:	2601      	movs	r6, #1
20028eee:	4652      	mov	r2, sl
20028ef0:	4639      	mov	r1, r7
20028ef2:	a803      	add	r0, sp, #12
20028ef4:	e9cd 6506 	strd	r6, r5, [sp, #24]
20028ef8:	e9cd 5608 	strd	r5, r6, [sp, #32]
20028efc:	e9cd 650c 	strd	r6, r5, [sp, #48]	@ 0x30
20028f00:	e9cd 650f 	strd	r6, r5, [sp, #60]	@ 0x3c
20028f04:	e9cd 6503 	strd	r6, r5, [sp, #12]
20028f08:	e9cd 6512 	strd	r6, r5, [sp, #72]	@ 0x48
20028f0c:	e9cd 5614 	strd	r5, r6, [sp, #80]	@ 0x50
20028f10:	e9cd 6518 	strd	r6, r5, [sp, #96]	@ 0x60
20028f14:	e9cd 651b 	strd	r6, r5, [sp, #108]	@ 0x6c
20028f18:	950a      	str	r5, [sp, #40]	@ 0x28
20028f1a:	9505      	str	r5, [sp, #20]
20028f1c:	9516      	str	r5, [sp, #88]	@ 0x58
20028f1e:	f7ff ff3c 	bl	20028d9a <mbedtls_mpi_gcd>
20028f22:	4604      	mov	r4, r0
20028f24:	2800      	cmp	r0, #0
20028f26:	f040 8182 	bne.w	2002922e <mbedtls_mpi_inv_mod+0x35e>
20028f2a:	4631      	mov	r1, r6
20028f2c:	a803      	add	r0, sp, #12
20028f2e:	f7ff f96a 	bl	20028206 <mbedtls_mpi_cmp_int>
20028f32:	4605      	mov	r5, r0
20028f34:	2800      	cmp	r0, #0
20028f36:	f040 8171 	bne.w	2002921c <mbedtls_mpi_inv_mod+0x34c>
20028f3a:	4652      	mov	r2, sl
20028f3c:	4639      	mov	r1, r7
20028f3e:	a806      	add	r0, sp, #24
20028f40:	f7ff fce5 	bl	2002890e <mbedtls_mpi_mod_mpi>
20028f44:	4604      	mov	r4, r0
20028f46:	2800      	cmp	r0, #0
20028f48:	f040 8171 	bne.w	2002922e <mbedtls_mpi_inv_mod+0x35e>
20028f4c:	900b      	str	r0, [sp, #44]	@ 0x2c
20028f4e:	a906      	add	r1, sp, #24
20028f50:	a809      	add	r0, sp, #36	@ 0x24
20028f52:	f7fe ff07 	bl	20027d64 <mbedtls_mpi_copy>
20028f56:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20028f5a:	b920      	cbnz	r0, 20028f66 <mbedtls_mpi_inv_mod+0x96>
20028f5c:	4651      	mov	r1, sl
20028f5e:	a812      	add	r0, sp, #72	@ 0x48
20028f60:	f7fe ff00 	bl	20027d64 <mbedtls_mpi_copy>
20028f64:	b130      	cbz	r0, 20028f74 <mbedtls_mpi_inv_mod+0xa4>
20028f66:	f04f 0b00 	mov.w	fp, #0
20028f6a:	465d      	mov	r5, fp
20028f6c:	46d8      	mov	r8, fp
20028f6e:	465e      	mov	r6, fp
20028f70:	465f      	mov	r7, fp
20028f72:	e0f5      	b.n	20029160 <mbedtls_mpi_inv_mod+0x290>
20028f74:	9017      	str	r0, [sp, #92]	@ 0x5c
20028f76:	4651      	mov	r1, sl
20028f78:	a815      	add	r0, sp, #84	@ 0x54
20028f7a:	f7fe fef3 	bl	20027d64 <mbedtls_mpi_copy>
20028f7e:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
20028f82:	2800      	cmp	r0, #0
20028f84:	f040 8159 	bne.w	2002923a <mbedtls_mpi_inv_mod+0x36a>
20028f88:	4631      	mov	r1, r6
20028f8a:	900e      	str	r0, [sp, #56]	@ 0x38
20028f8c:	a80c      	add	r0, sp, #48	@ 0x30
20028f8e:	f7fe ff12 	bl	20027db6 <mbedtls_mpi_lset>
20028f92:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20028f94:	4601      	mov	r1, r0
20028f96:	2800      	cmp	r0, #0
20028f98:	f040 8152 	bne.w	20029240 <mbedtls_mpi_inv_mod+0x370>
20028f9c:	9011      	str	r0, [sp, #68]	@ 0x44
20028f9e:	a80f      	add	r0, sp, #60	@ 0x3c
20028fa0:	f7fe ff09 	bl	20027db6 <mbedtls_mpi_lset>
20028fa4:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20028fa6:	4683      	mov	fp, r0
20028fa8:	2800      	cmp	r0, #0
20028faa:	f040 814d 	bne.w	20029248 <mbedtls_mpi_inv_mod+0x378>
20028fae:	4601      	mov	r1, r0
20028fb0:	901a      	str	r0, [sp, #104]	@ 0x68
20028fb2:	a818      	add	r0, sp, #96	@ 0x60
20028fb4:	f7fe feff 	bl	20027db6 <mbedtls_mpi_lset>
20028fb8:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028fba:	2800      	cmp	r0, #0
20028fbc:	f040 8147 	bne.w	2002924e <mbedtls_mpi_inv_mod+0x37e>
20028fc0:	2101      	movs	r1, #1
20028fc2:	a81b      	add	r0, sp, #108	@ 0x6c
20028fc4:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20028fc8:	f7fe fef5 	bl	20027db6 <mbedtls_mpi_lset>
20028fcc:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
20028fd0:	2800      	cmp	r0, #0
20028fd2:	f040 80c5 	bne.w	20029160 <mbedtls_mpi_inv_mod+0x290>
20028fd6:	f8d9 2000 	ldr.w	r2, [r9]
20028fda:	07d0      	lsls	r0, r2, #31
20028fdc:	d554      	bpl.n	20029088 <mbedtls_mpi_inv_mod+0x1b8>
20028fde:	f8d8 2000 	ldr.w	r2, [r8]
20028fe2:	07d3      	lsls	r3, r2, #31
20028fe4:	f140 8083 	bpl.w	200290ee <mbedtls_mpi_inv_mod+0x21e>
20028fe8:	a915      	add	r1, sp, #84	@ 0x54
20028fea:	a809      	add	r0, sp, #36	@ 0x24
20028fec:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20028ff0:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
20028ff4:	f7ff f8c6 	bl	20028184 <mbedtls_mpi_cmp_mpi>
20028ff8:	2800      	cmp	r0, #0
20028ffa:	f2c0 80b4 	blt.w	20029166 <mbedtls_mpi_inv_mod+0x296>
20028ffe:	a909      	add	r1, sp, #36	@ 0x24
20029000:	4608      	mov	r0, r1
20029002:	aa15      	add	r2, sp, #84	@ 0x54
20029004:	f7ff f9d1 	bl	200283aa <mbedtls_mpi_sub_mpi>
20029008:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
2002900c:	4604      	mov	r4, r0
2002900e:	2800      	cmp	r0, #0
20029010:	f040 80d1 	bne.w	200291b6 <mbedtls_mpi_inv_mod+0x2e6>
20029014:	a90c      	add	r1, sp, #48	@ 0x30
20029016:	4608      	mov	r0, r1
20029018:	aa18      	add	r2, sp, #96	@ 0x60
2002901a:	970e      	str	r7, [sp, #56]	@ 0x38
2002901c:	951a      	str	r5, [sp, #104]	@ 0x68
2002901e:	f7ff f9c4 	bl	200283aa <mbedtls_mpi_sub_mpi>
20029022:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20029024:	4604      	mov	r4, r0
20029026:	2800      	cmp	r0, #0
20029028:	f040 80c5 	bne.w	200291b6 <mbedtls_mpi_inv_mod+0x2e6>
2002902c:	a90f      	add	r1, sp, #60	@ 0x3c
2002902e:	4608      	mov	r0, r1
20029030:	aa1b      	add	r2, sp, #108	@ 0x6c
20029032:	9611      	str	r6, [sp, #68]	@ 0x44
20029034:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029038:	f7ff f9b7 	bl	200283aa <mbedtls_mpi_sub_mpi>
2002903c:	9e11      	ldr	r6, [sp, #68]	@ 0x44
2002903e:	4604      	mov	r4, r0
20029040:	2800      	cmp	r0, #0
20029042:	f040 80b8 	bne.w	200291b6 <mbedtls_mpi_inv_mod+0x2e6>
20029046:	2100      	movs	r1, #0
20029048:	a809      	add	r0, sp, #36	@ 0x24
2002904a:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
2002904e:	f7ff f8da 	bl	20028206 <mbedtls_mpi_cmp_int>
20029052:	2800      	cmp	r0, #0
20029054:	d1bf      	bne.n	20028fd6 <mbedtls_mpi_inv_mod+0x106>
20029056:	2100      	movs	r1, #0
20029058:	a818      	add	r0, sp, #96	@ 0x60
2002905a:	951a      	str	r5, [sp, #104]	@ 0x68
2002905c:	f7ff f8d3 	bl	20028206 <mbedtls_mpi_cmp_int>
20029060:	2800      	cmp	r0, #0
20029062:	f2c0 809e 	blt.w	200291a2 <mbedtls_mpi_inv_mod+0x2d2>
20029066:	4651      	mov	r1, sl
20029068:	a818      	add	r0, sp, #96	@ 0x60
2002906a:	951a      	str	r5, [sp, #104]	@ 0x68
2002906c:	f7ff f88a 	bl	20028184 <mbedtls_mpi_cmp_mpi>
20029070:	2800      	cmp	r0, #0
20029072:	f280 80c8 	bge.w	20029206 <mbedtls_mpi_inv_mod+0x336>
20029076:	9801      	ldr	r0, [sp, #4]
20029078:	a918      	add	r1, sp, #96	@ 0x60
2002907a:	f7fe fe73 	bl	20027d64 <mbedtls_mpi_copy>
2002907e:	1e04      	subs	r4, r0, #0
20029080:	bf18      	it	ne
20029082:	f06f 040f 	mvnne.w	r4, #15
20029086:	e096      	b.n	200291b6 <mbedtls_mpi_inv_mod+0x2e6>
20029088:	2101      	movs	r1, #1
2002908a:	a809      	add	r0, sp, #36	@ 0x24
2002908c:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20029090:	f7fe ff99 	bl	20027fc6 <mbedtls_mpi_shift_r>
20029094:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20029098:	2800      	cmp	r0, #0
2002909a:	d161      	bne.n	20029160 <mbedtls_mpi_inv_mod+0x290>
2002909c:	683a      	ldr	r2, [r7, #0]
2002909e:	07d3      	lsls	r3, r2, #31
200290a0:	d402      	bmi.n	200290a8 <mbedtls_mpi_inv_mod+0x1d8>
200290a2:	6832      	ldr	r2, [r6, #0]
200290a4:	07d4      	lsls	r4, r2, #31
200290a6:	d513      	bpl.n	200290d0 <mbedtls_mpi_inv_mod+0x200>
200290a8:	a90c      	add	r1, sp, #48	@ 0x30
200290aa:	4608      	mov	r0, r1
200290ac:	aa12      	add	r2, sp, #72	@ 0x48
200290ae:	970e      	str	r7, [sp, #56]	@ 0x38
200290b0:	f7ff f955 	bl	2002835e <mbedtls_mpi_add_mpi>
200290b4:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
200290b6:	4604      	mov	r4, r0
200290b8:	2800      	cmp	r0, #0
200290ba:	d17c      	bne.n	200291b6 <mbedtls_mpi_inv_mod+0x2e6>
200290bc:	a90f      	add	r1, sp, #60	@ 0x3c
200290be:	4608      	mov	r0, r1
200290c0:	aa06      	add	r2, sp, #24
200290c2:	9611      	str	r6, [sp, #68]	@ 0x44
200290c4:	f7ff f971 	bl	200283aa <mbedtls_mpi_sub_mpi>
200290c8:	9e11      	ldr	r6, [sp, #68]	@ 0x44
200290ca:	4604      	mov	r4, r0
200290cc:	2800      	cmp	r0, #0
200290ce:	d172      	bne.n	200291b6 <mbedtls_mpi_inv_mod+0x2e6>
200290d0:	2101      	movs	r1, #1
200290d2:	a80c      	add	r0, sp, #48	@ 0x30
200290d4:	970e      	str	r7, [sp, #56]	@ 0x38
200290d6:	f7fe ff76 	bl	20027fc6 <mbedtls_mpi_shift_r>
200290da:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
200290dc:	2800      	cmp	r0, #0
200290de:	d13f      	bne.n	20029160 <mbedtls_mpi_inv_mod+0x290>
200290e0:	2101      	movs	r1, #1
200290e2:	a80f      	add	r0, sp, #60	@ 0x3c
200290e4:	9611      	str	r6, [sp, #68]	@ 0x44
200290e6:	f7fe ff6e 	bl	20027fc6 <mbedtls_mpi_shift_r>
200290ea:	9e11      	ldr	r6, [sp, #68]	@ 0x44
200290ec:	e770      	b.n	20028fd0 <mbedtls_mpi_inv_mod+0x100>
200290ee:	2101      	movs	r1, #1
200290f0:	a815      	add	r0, sp, #84	@ 0x54
200290f2:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
200290f6:	f7fe ff66 	bl	20027fc6 <mbedtls_mpi_shift_r>
200290fa:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
200290fe:	2800      	cmp	r0, #0
20029100:	d12e      	bne.n	20029160 <mbedtls_mpi_inv_mod+0x290>
20029102:	682a      	ldr	r2, [r5, #0]
20029104:	07d1      	lsls	r1, r2, #31
20029106:	d403      	bmi.n	20029110 <mbedtls_mpi_inv_mod+0x240>
20029108:	f8db 2000 	ldr.w	r2, [fp]
2002910c:	07d2      	lsls	r2, r2, #31
2002910e:	d515      	bpl.n	2002913c <mbedtls_mpi_inv_mod+0x26c>
20029110:	a918      	add	r1, sp, #96	@ 0x60
20029112:	4608      	mov	r0, r1
20029114:	aa12      	add	r2, sp, #72	@ 0x48
20029116:	951a      	str	r5, [sp, #104]	@ 0x68
20029118:	f7ff f921 	bl	2002835e <mbedtls_mpi_add_mpi>
2002911c:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002911e:	4604      	mov	r4, r0
20029120:	2800      	cmp	r0, #0
20029122:	d148      	bne.n	200291b6 <mbedtls_mpi_inv_mod+0x2e6>
20029124:	a91b      	add	r1, sp, #108	@ 0x6c
20029126:	4608      	mov	r0, r1
20029128:	aa06      	add	r2, sp, #24
2002912a:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
2002912e:	f7ff f93c 	bl	200283aa <mbedtls_mpi_sub_mpi>
20029132:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
20029136:	4604      	mov	r4, r0
20029138:	2800      	cmp	r0, #0
2002913a:	d13c      	bne.n	200291b6 <mbedtls_mpi_inv_mod+0x2e6>
2002913c:	2101      	movs	r1, #1
2002913e:	a818      	add	r0, sp, #96	@ 0x60
20029140:	951a      	str	r5, [sp, #104]	@ 0x68
20029142:	f7fe ff40 	bl	20027fc6 <mbedtls_mpi_shift_r>
20029146:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029148:	b950      	cbnz	r0, 20029160 <mbedtls_mpi_inv_mod+0x290>
2002914a:	2101      	movs	r1, #1
2002914c:	a81b      	add	r0, sp, #108	@ 0x6c
2002914e:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029152:	f7fe ff38 	bl	20027fc6 <mbedtls_mpi_shift_r>
20029156:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
2002915a:	2800      	cmp	r0, #0
2002915c:	f43f af3f 	beq.w	20028fde <mbedtls_mpi_inv_mod+0x10e>
20029160:	f06f 040f 	mvn.w	r4, #15
20029164:	e027      	b.n	200291b6 <mbedtls_mpi_inv_mod+0x2e6>
20029166:	a915      	add	r1, sp, #84	@ 0x54
20029168:	4608      	mov	r0, r1
2002916a:	aa09      	add	r2, sp, #36	@ 0x24
2002916c:	f7ff f91d 	bl	200283aa <mbedtls_mpi_sub_mpi>
20029170:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
20029174:	4604      	mov	r4, r0
20029176:	b9f0      	cbnz	r0, 200291b6 <mbedtls_mpi_inv_mod+0x2e6>
20029178:	a918      	add	r1, sp, #96	@ 0x60
2002917a:	4608      	mov	r0, r1
2002917c:	aa0c      	add	r2, sp, #48	@ 0x30
2002917e:	951a      	str	r5, [sp, #104]	@ 0x68
20029180:	970e      	str	r7, [sp, #56]	@ 0x38
20029182:	f7ff f912 	bl	200283aa <mbedtls_mpi_sub_mpi>
20029186:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029188:	4604      	mov	r4, r0
2002918a:	b9a0      	cbnz	r0, 200291b6 <mbedtls_mpi_inv_mod+0x2e6>
2002918c:	a91b      	add	r1, sp, #108	@ 0x6c
2002918e:	4608      	mov	r0, r1
20029190:	aa0f      	add	r2, sp, #60	@ 0x3c
20029192:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029196:	9611      	str	r6, [sp, #68]	@ 0x44
20029198:	f7ff f907 	bl	200283aa <mbedtls_mpi_sub_mpi>
2002919c:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
200291a0:	e74d      	b.n	2002903e <mbedtls_mpi_inv_mod+0x16e>
200291a2:	a918      	add	r1, sp, #96	@ 0x60
200291a4:	4652      	mov	r2, sl
200291a6:	4608      	mov	r0, r1
200291a8:	f7ff f8d9 	bl	2002835e <mbedtls_mpi_add_mpi>
200291ac:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200291ae:	4604      	mov	r4, r0
200291b0:	2800      	cmp	r0, #0
200291b2:	f43f af50 	beq.w	20029056 <mbedtls_mpi_inv_mod+0x186>
200291b6:	a806      	add	r0, sp, #24
200291b8:	f7fe fd93 	bl	20027ce2 <mbedtls_mpi_free>
200291bc:	a809      	add	r0, sp, #36	@ 0x24
200291be:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
200291c2:	f7fe fd8e 	bl	20027ce2 <mbedtls_mpi_free>
200291c6:	a80c      	add	r0, sp, #48	@ 0x30
200291c8:	970e      	str	r7, [sp, #56]	@ 0x38
200291ca:	f7fe fd8a 	bl	20027ce2 <mbedtls_mpi_free>
200291ce:	a80f      	add	r0, sp, #60	@ 0x3c
200291d0:	9611      	str	r6, [sp, #68]	@ 0x44
200291d2:	f7fe fd86 	bl	20027ce2 <mbedtls_mpi_free>
200291d6:	a803      	add	r0, sp, #12
200291d8:	f7fe fd83 	bl	20027ce2 <mbedtls_mpi_free>
200291dc:	a812      	add	r0, sp, #72	@ 0x48
200291de:	f7fe fd80 	bl	20027ce2 <mbedtls_mpi_free>
200291e2:	a815      	add	r0, sp, #84	@ 0x54
200291e4:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
200291e8:	f7fe fd7b 	bl	20027ce2 <mbedtls_mpi_free>
200291ec:	a818      	add	r0, sp, #96	@ 0x60
200291ee:	951a      	str	r5, [sp, #104]	@ 0x68
200291f0:	f7fe fd77 	bl	20027ce2 <mbedtls_mpi_free>
200291f4:	a81b      	add	r0, sp, #108	@ 0x6c
200291f6:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
200291fa:	f7fe fd72 	bl	20027ce2 <mbedtls_mpi_free>
200291fe:	4620      	mov	r0, r4
20029200:	b01f      	add	sp, #124	@ 0x7c
20029202:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029206:	a918      	add	r1, sp, #96	@ 0x60
20029208:	4652      	mov	r2, sl
2002920a:	4608      	mov	r0, r1
2002920c:	f7ff f8cd 	bl	200283aa <mbedtls_mpi_sub_mpi>
20029210:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029212:	4604      	mov	r4, r0
20029214:	2800      	cmp	r0, #0
20029216:	f43f af26 	beq.w	20029066 <mbedtls_mpi_inv_mod+0x196>
2002921a:	e7cc      	b.n	200291b6 <mbedtls_mpi_inv_mod+0x2e6>
2002921c:	46a3      	mov	fp, r4
2002921e:	4625      	mov	r5, r4
20029220:	46a0      	mov	r8, r4
20029222:	4626      	mov	r6, r4
20029224:	4627      	mov	r7, r4
20029226:	46a1      	mov	r9, r4
20029228:	f06f 040d 	mvn.w	r4, #13
2002922c:	e7c3      	b.n	200291b6 <mbedtls_mpi_inv_mod+0x2e6>
2002922e:	46ab      	mov	fp, r5
20029230:	46a8      	mov	r8, r5
20029232:	462e      	mov	r6, r5
20029234:	462f      	mov	r7, r5
20029236:	46a9      	mov	r9, r5
20029238:	e7bd      	b.n	200291b6 <mbedtls_mpi_inv_mod+0x2e6>
2002923a:	46a3      	mov	fp, r4
2002923c:	4625      	mov	r5, r4
2002923e:	e696      	b.n	20028f6e <mbedtls_mpi_inv_mod+0x9e>
20029240:	46a3      	mov	fp, r4
20029242:	4625      	mov	r5, r4
20029244:	4626      	mov	r6, r4
20029246:	e78b      	b.n	20029160 <mbedtls_mpi_inv_mod+0x290>
20029248:	46a3      	mov	fp, r4
2002924a:	4625      	mov	r5, r4
2002924c:	e788      	b.n	20029160 <mbedtls_mpi_inv_mod+0x290>
2002924e:	f04f 0b00 	mov.w	fp, #0
20029252:	e785      	b.n	20029160 <mbedtls_mpi_inv_mod+0x290>
20029254:	f06f 0403 	mvn.w	r4, #3
20029258:	e7d1      	b.n	200291fe <mbedtls_mpi_inv_mod+0x32e>
	...

2002925c <mbedtls_oid_get_pk_alg>:
2002925c:	b570      	push	{r4, r5, r6, lr}
2002925e:	460e      	mov	r6, r1
20029260:	4605      	mov	r5, r0
20029262:	b110      	cbz	r0, 2002926a <mbedtls_oid_get_pk_alg+0xe>
20029264:	4c09      	ldr	r4, [pc, #36]	@ (2002928c <mbedtls_oid_get_pk_alg+0x30>)
20029266:	6820      	ldr	r0, [r4, #0]
20029268:	b910      	cbnz	r0, 20029270 <mbedtls_oid_get_pk_alg+0x14>
2002926a:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
2002926e:	bd70      	pop	{r4, r5, r6, pc}
20029270:	686b      	ldr	r3, [r5, #4]
20029272:	6862      	ldr	r2, [r4, #4]
20029274:	429a      	cmp	r2, r3
20029276:	d103      	bne.n	20029280 <mbedtls_oid_get_pk_alg+0x24>
20029278:	68a9      	ldr	r1, [r5, #8]
2002927a:	f001 fab3 	bl	2002a7e4 <memcmp>
2002927e:	b108      	cbz	r0, 20029284 <mbedtls_oid_get_pk_alg+0x28>
20029280:	3414      	adds	r4, #20
20029282:	e7f0      	b.n	20029266 <mbedtls_oid_get_pk_alg+0xa>
20029284:	7c23      	ldrb	r3, [r4, #16]
20029286:	7033      	strb	r3, [r6, #0]
20029288:	e7f1      	b.n	2002926e <mbedtls_oid_get_pk_alg+0x12>
2002928a:	bf00      	nop
2002928c:	2002c1f4 	.word	0x2002c1f4

20029290 <mbedtls_oid_get_md_alg>:
20029290:	b570      	push	{r4, r5, r6, lr}
20029292:	460e      	mov	r6, r1
20029294:	4605      	mov	r5, r0
20029296:	b110      	cbz	r0, 2002929e <mbedtls_oid_get_md_alg+0xe>
20029298:	4c09      	ldr	r4, [pc, #36]	@ (200292c0 <mbedtls_oid_get_md_alg+0x30>)
2002929a:	6820      	ldr	r0, [r4, #0]
2002929c:	b910      	cbnz	r0, 200292a4 <mbedtls_oid_get_md_alg+0x14>
2002929e:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
200292a2:	bd70      	pop	{r4, r5, r6, pc}
200292a4:	686b      	ldr	r3, [r5, #4]
200292a6:	6862      	ldr	r2, [r4, #4]
200292a8:	429a      	cmp	r2, r3
200292aa:	d103      	bne.n	200292b4 <mbedtls_oid_get_md_alg+0x24>
200292ac:	68a9      	ldr	r1, [r5, #8]
200292ae:	f001 fa99 	bl	2002a7e4 <memcmp>
200292b2:	b108      	cbz	r0, 200292b8 <mbedtls_oid_get_md_alg+0x28>
200292b4:	3414      	adds	r4, #20
200292b6:	e7f0      	b.n	2002929a <mbedtls_oid_get_md_alg+0xa>
200292b8:	7c23      	ldrb	r3, [r4, #16]
200292ba:	7033      	strb	r3, [r6, #0]
200292bc:	e7f1      	b.n	200292a2 <mbedtls_oid_get_md_alg+0x12>
200292be:	bf00      	nop
200292c0:	2002c190 	.word	0x2002c190

200292c4 <mbedtls_oid_get_oid_by_md>:
200292c4:	b530      	push	{r4, r5, lr}
200292c6:	4b08      	ldr	r3, [pc, #32]	@ (200292e8 <mbedtls_oid_get_oid_by_md+0x24>)
200292c8:	681c      	ldr	r4, [r3, #0]
200292ca:	b914      	cbnz	r4, 200292d2 <mbedtls_oid_get_oid_by_md+0xe>
200292cc:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
200292d0:	e006      	b.n	200292e0 <mbedtls_oid_get_oid_by_md+0x1c>
200292d2:	7c1d      	ldrb	r5, [r3, #16]
200292d4:	4285      	cmp	r5, r0
200292d6:	d104      	bne.n	200292e2 <mbedtls_oid_get_oid_by_md+0x1e>
200292d8:	2000      	movs	r0, #0
200292da:	600c      	str	r4, [r1, #0]
200292dc:	685b      	ldr	r3, [r3, #4]
200292de:	6013      	str	r3, [r2, #0]
200292e0:	bd30      	pop	{r4, r5, pc}
200292e2:	3314      	adds	r3, #20
200292e4:	e7f0      	b.n	200292c8 <mbedtls_oid_get_oid_by_md+0x4>
200292e6:	bf00      	nop
200292e8:	2002c190 	.word	0x2002c190

200292ec <mbedtls_pk_init>:
200292ec:	b110      	cbz	r0, 200292f4 <mbedtls_pk_init+0x8>
200292ee:	2300      	movs	r3, #0
200292f0:	e9c0 3300 	strd	r3, r3, [r0]
200292f4:	4770      	bx	lr

200292f6 <mbedtls_pk_free>:
200292f6:	b510      	push	{r4, lr}
200292f8:	4604      	mov	r4, r0
200292fa:	b160      	cbz	r0, 20029316 <mbedtls_pk_free+0x20>
200292fc:	6803      	ldr	r3, [r0, #0]
200292fe:	b153      	cbz	r3, 20029316 <mbedtls_pk_free+0x20>
20029300:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
20029302:	6840      	ldr	r0, [r0, #4]
20029304:	4798      	blx	r3
20029306:	2100      	movs	r1, #0
20029308:	f104 0308 	add.w	r3, r4, #8
2002930c:	4622      	mov	r2, r4
2002930e:	3401      	adds	r4, #1
20029310:	429c      	cmp	r4, r3
20029312:	7011      	strb	r1, [r2, #0]
20029314:	d1fa      	bne.n	2002930c <mbedtls_pk_free+0x16>
20029316:	bd10      	pop	{r4, pc}

20029318 <mbedtls_pk_info_from_type>:
20029318:	2801      	cmp	r0, #1
2002931a:	4802      	ldr	r0, [pc, #8]	@ (20029324 <mbedtls_pk_info_from_type+0xc>)
2002931c:	bf18      	it	ne
2002931e:	2000      	movne	r0, #0
20029320:	4770      	bx	lr
20029322:	bf00      	nop
20029324:	2002c244 	.word	0x2002c244

20029328 <mbedtls_pk_setup>:
20029328:	b570      	push	{r4, r5, r6, lr}
2002932a:	460e      	mov	r6, r1
2002932c:	4605      	mov	r5, r0
2002932e:	b148      	cbz	r0, 20029344 <mbedtls_pk_setup+0x1c>
20029330:	b141      	cbz	r1, 20029344 <mbedtls_pk_setup+0x1c>
20029332:	6804      	ldr	r4, [r0, #0]
20029334:	b934      	cbnz	r4, 20029344 <mbedtls_pk_setup+0x1c>
20029336:	6a4b      	ldr	r3, [r1, #36]	@ 0x24
20029338:	4798      	blx	r3
2002933a:	6068      	str	r0, [r5, #4]
2002933c:	b120      	cbz	r0, 20029348 <mbedtls_pk_setup+0x20>
2002933e:	4620      	mov	r0, r4
20029340:	602e      	str	r6, [r5, #0]
20029342:	bd70      	pop	{r4, r5, r6, pc}
20029344:	4801      	ldr	r0, [pc, #4]	@ (2002934c <mbedtls_pk_setup+0x24>)
20029346:	e7fc      	b.n	20029342 <mbedtls_pk_setup+0x1a>
20029348:	4801      	ldr	r0, [pc, #4]	@ (20029350 <mbedtls_pk_setup+0x28>)
2002934a:	e7fa      	b.n	20029342 <mbedtls_pk_setup+0x1a>
2002934c:	ffffc180 	.word	0xffffc180
20029350:	ffffc080 	.word	0xffffc080

20029354 <mbedtls_pk_verify>:
20029354:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20029358:	460d      	mov	r5, r1
2002935a:	e9dd 8908 	ldrd	r8, r9, [sp, #32]
2002935e:	4616      	mov	r6, r2
20029360:	4604      	mov	r4, r0
20029362:	b910      	cbnz	r0, 2002936a <mbedtls_pk_verify+0x16>
20029364:	480e      	ldr	r0, [pc, #56]	@ (200293a0 <mbedtls_pk_verify+0x4c>)
20029366:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
2002936a:	6802      	ldr	r2, [r0, #0]
2002936c:	2a00      	cmp	r2, #0
2002936e:	d0f9      	beq.n	20029364 <mbedtls_pk_verify+0x10>
20029370:	b93b      	cbnz	r3, 20029382 <mbedtls_pk_verify+0x2e>
20029372:	4608      	mov	r0, r1
20029374:	f7fc fd42 	bl	20025dfc <mbedtls_md_info_from_type>
20029378:	2800      	cmp	r0, #0
2002937a:	d0f3      	beq.n	20029364 <mbedtls_pk_verify+0x10>
2002937c:	f7fc fd4a 	bl	20025e14 <mbedtls_md_get_size>
20029380:	4603      	mov	r3, r0
20029382:	6822      	ldr	r2, [r4, #0]
20029384:	6917      	ldr	r7, [r2, #16]
20029386:	b147      	cbz	r7, 2002939a <mbedtls_pk_verify+0x46>
20029388:	e9cd 8908 	strd	r8, r9, [sp, #32]
2002938c:	4632      	mov	r2, r6
2002938e:	4629      	mov	r1, r5
20029390:	46bc      	mov	ip, r7
20029392:	6860      	ldr	r0, [r4, #4]
20029394:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20029398:	4760      	bx	ip
2002939a:	4802      	ldr	r0, [pc, #8]	@ (200293a4 <mbedtls_pk_verify+0x50>)
2002939c:	e7e3      	b.n	20029366 <mbedtls_pk_verify+0x12>
2002939e:	bf00      	nop
200293a0:	ffffc180 	.word	0xffffc180
200293a4:	ffffc100 	.word	0xffffc100

200293a8 <pk_get_pk_alg>:
200293a8:	b530      	push	{r4, r5, lr}
200293aa:	4615      	mov	r5, r2
200293ac:	2200      	movs	r2, #0
200293ae:	b085      	sub	sp, #20
200293b0:	e9c3 2200 	strd	r2, r2, [r3]
200293b4:	609a      	str	r2, [r3, #8]
200293b6:	aa01      	add	r2, sp, #4
200293b8:	461c      	mov	r4, r3
200293ba:	f7fe fa98 	bl	200278ee <mbedtls_asn1_get_alg>
200293be:	b118      	cbz	r0, 200293c8 <pk_get_pk_alg+0x20>
200293c0:	f5a0 506a 	sub.w	r0, r0, #14976	@ 0x3a80
200293c4:	b005      	add	sp, #20
200293c6:	bd30      	pop	{r4, r5, pc}
200293c8:	4629      	mov	r1, r5
200293ca:	a801      	add	r0, sp, #4
200293cc:	f7ff ff46 	bl	2002925c <mbedtls_oid_get_pk_alg>
200293d0:	b960      	cbnz	r0, 200293ec <pk_get_pk_alg+0x44>
200293d2:	782b      	ldrb	r3, [r5, #0]
200293d4:	2b01      	cmp	r3, #1
200293d6:	d1f5      	bne.n	200293c4 <pk_get_pk_alg+0x1c>
200293d8:	6823      	ldr	r3, [r4, #0]
200293da:	2b05      	cmp	r3, #5
200293dc:	d000      	beq.n	200293e0 <pk_get_pk_alg+0x38>
200293de:	b93b      	cbnz	r3, 200293f0 <pk_get_pk_alg+0x48>
200293e0:	6862      	ldr	r2, [r4, #4]
200293e2:	4b04      	ldr	r3, [pc, #16]	@ (200293f4 <pk_get_pk_alg+0x4c>)
200293e4:	2a00      	cmp	r2, #0
200293e6:	bf18      	it	ne
200293e8:	4618      	movne	r0, r3
200293ea:	e7eb      	b.n	200293c4 <pk_get_pk_alg+0x1c>
200293ec:	4802      	ldr	r0, [pc, #8]	@ (200293f8 <pk_get_pk_alg+0x50>)
200293ee:	e7e9      	b.n	200293c4 <pk_get_pk_alg+0x1c>
200293f0:	4800      	ldr	r0, [pc, #0]	@ (200293f4 <pk_get_pk_alg+0x4c>)
200293f2:	e7e7      	b.n	200293c4 <pk_get_pk_alg+0x1c>
200293f4:	ffffc580 	.word	0xffffc580
200293f8:	ffffc380 	.word	0xffffc380

200293fc <mbedtls_pk_parse_subpubkey>:
200293fc:	2300      	movs	r3, #0
200293fe:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
20029402:	b087      	sub	sp, #28
20029404:	4690      	mov	r8, r2
20029406:	f88d 3003 	strb.w	r3, [sp, #3]
2002940a:	aa01      	add	r2, sp, #4
2002940c:	2330      	movs	r3, #48	@ 0x30
2002940e:	4606      	mov	r6, r0
20029410:	f7fe fa32 	bl	20027878 <mbedtls_asn1_get_tag>
20029414:	b128      	cbz	r0, 20029422 <mbedtls_pk_parse_subpubkey+0x26>
20029416:	f5a0 5474 	sub.w	r4, r0, #15616	@ 0x3d00
2002941a:	4620      	mov	r0, r4
2002941c:	b007      	add	sp, #28
2002941e:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
20029422:	9b01      	ldr	r3, [sp, #4]
20029424:	6837      	ldr	r7, [r6, #0]
20029426:	4630      	mov	r0, r6
20029428:	441f      	add	r7, r3
2002942a:	4639      	mov	r1, r7
2002942c:	ab03      	add	r3, sp, #12
2002942e:	f10d 0203 	add.w	r2, sp, #3
20029432:	f7ff ffb9 	bl	200293a8 <pk_get_pk_alg>
20029436:	4604      	mov	r4, r0
20029438:	2800      	cmp	r0, #0
2002943a:	d1ee      	bne.n	2002941a <mbedtls_pk_parse_subpubkey+0x1e>
2002943c:	4639      	mov	r1, r7
2002943e:	4630      	mov	r0, r6
20029440:	aa01      	add	r2, sp, #4
20029442:	f7fe fa40 	bl	200278c6 <mbedtls_asn1_get_bitstring_null>
20029446:	b110      	cbz	r0, 2002944e <mbedtls_pk_parse_subpubkey+0x52>
20029448:	f5a0 546c 	sub.w	r4, r0, #15104	@ 0x3b00
2002944c:	e7e5      	b.n	2002941a <mbedtls_pk_parse_subpubkey+0x1e>
2002944e:	6833      	ldr	r3, [r6, #0]
20029450:	9a01      	ldr	r2, [sp, #4]
20029452:	4413      	add	r3, r2
20029454:	429f      	cmp	r7, r3
20029456:	d14b      	bne.n	200294f0 <mbedtls_pk_parse_subpubkey+0xf4>
20029458:	f89d 0003 	ldrb.w	r0, [sp, #3]
2002945c:	f7ff ff5c 	bl	20029318 <mbedtls_pk_info_from_type>
20029460:	4601      	mov	r1, r0
20029462:	2800      	cmp	r0, #0
20029464:	d046      	beq.n	200294f4 <mbedtls_pk_parse_subpubkey+0xf8>
20029466:	4640      	mov	r0, r8
20029468:	f7ff ff5e 	bl	20029328 <mbedtls_pk_setup>
2002946c:	4604      	mov	r4, r0
2002946e:	2800      	cmp	r0, #0
20029470:	d1d3      	bne.n	2002941a <mbedtls_pk_parse_subpubkey+0x1e>
20029472:	f89d 3003 	ldrb.w	r3, [sp, #3]
20029476:	2b01      	cmp	r3, #1
20029478:	d138      	bne.n	200294ec <mbedtls_pk_parse_subpubkey+0xf0>
2002947a:	2330      	movs	r3, #48	@ 0x30
2002947c:	4639      	mov	r1, r7
2002947e:	4630      	mov	r0, r6
20029480:	aa02      	add	r2, sp, #8
20029482:	f8d8 5004 	ldr.w	r5, [r8, #4]
20029486:	f7fe f9f7 	bl	20027878 <mbedtls_asn1_get_tag>
2002948a:	b138      	cbz	r0, 2002949c <mbedtls_pk_parse_subpubkey+0xa0>
2002948c:	f5a0 556c 	sub.w	r5, r0, #15104	@ 0x3b00
20029490:	bb3d      	cbnz	r5, 200294e2 <mbedtls_pk_parse_subpubkey+0xe6>
20029492:	6833      	ldr	r3, [r6, #0]
20029494:	42bb      	cmp	r3, r7
20029496:	d0c0      	beq.n	2002941a <mbedtls_pk_parse_subpubkey+0x1e>
20029498:	4d17      	ldr	r5, [pc, #92]	@ (200294f8 <mbedtls_pk_parse_subpubkey+0xfc>)
2002949a:	e022      	b.n	200294e2 <mbedtls_pk_parse_subpubkey+0xe6>
2002949c:	6833      	ldr	r3, [r6, #0]
2002949e:	9a02      	ldr	r2, [sp, #8]
200294a0:	4413      	add	r3, r2
200294a2:	429f      	cmp	r7, r3
200294a4:	d1f8      	bne.n	20029498 <mbedtls_pk_parse_subpubkey+0x9c>
200294a6:	f105 0a08 	add.w	sl, r5, #8
200294aa:	4652      	mov	r2, sl
200294ac:	4639      	mov	r1, r7
200294ae:	4630      	mov	r0, r6
200294b0:	f7fe f9f6 	bl	200278a0 <mbedtls_asn1_get_mpi>
200294b4:	2800      	cmp	r0, #0
200294b6:	d1e9      	bne.n	2002948c <mbedtls_pk_parse_subpubkey+0x90>
200294b8:	4639      	mov	r1, r7
200294ba:	4630      	mov	r0, r6
200294bc:	f105 0214 	add.w	r2, r5, #20
200294c0:	f7fe f9ee 	bl	200278a0 <mbedtls_asn1_get_mpi>
200294c4:	2800      	cmp	r0, #0
200294c6:	d1e1      	bne.n	2002948c <mbedtls_pk_parse_subpubkey+0x90>
200294c8:	6833      	ldr	r3, [r6, #0]
200294ca:	429f      	cmp	r7, r3
200294cc:	d1e4      	bne.n	20029498 <mbedtls_pk_parse_subpubkey+0x9c>
200294ce:	4628      	mov	r0, r5
200294d0:	f000 f8c2 	bl	20029658 <mbedtls_rsa_check_pubkey>
200294d4:	b920      	cbnz	r0, 200294e0 <mbedtls_pk_parse_subpubkey+0xe4>
200294d6:	4650      	mov	r0, sl
200294d8:	f7fe fcbe 	bl	20027e58 <mbedtls_mpi_size>
200294dc:	6068      	str	r0, [r5, #4]
200294de:	e7d8      	b.n	20029492 <mbedtls_pk_parse_subpubkey+0x96>
200294e0:	4d06      	ldr	r5, [pc, #24]	@ (200294fc <mbedtls_pk_parse_subpubkey+0x100>)
200294e2:	4640      	mov	r0, r8
200294e4:	f7ff ff07 	bl	200292f6 <mbedtls_pk_free>
200294e8:	462c      	mov	r4, r5
200294ea:	e796      	b.n	2002941a <mbedtls_pk_parse_subpubkey+0x1e>
200294ec:	4d04      	ldr	r5, [pc, #16]	@ (20029500 <mbedtls_pk_parse_subpubkey+0x104>)
200294ee:	e7f8      	b.n	200294e2 <mbedtls_pk_parse_subpubkey+0xe6>
200294f0:	4c01      	ldr	r4, [pc, #4]	@ (200294f8 <mbedtls_pk_parse_subpubkey+0xfc>)
200294f2:	e792      	b.n	2002941a <mbedtls_pk_parse_subpubkey+0x1e>
200294f4:	4c02      	ldr	r4, [pc, #8]	@ (20029500 <mbedtls_pk_parse_subpubkey+0x104>)
200294f6:	e790      	b.n	2002941a <mbedtls_pk_parse_subpubkey+0x1e>
200294f8:	ffffc49a 	.word	0xffffc49a
200294fc:	ffffc500 	.word	0xffffc500
20029500:	ffffc380 	.word	0xffffc380

20029504 <mbedtls_pk_parse_public_key>:
20029504:	4613      	mov	r3, r2
20029506:	b507      	push	{r0, r1, r2, lr}
20029508:	4602      	mov	r2, r0
2002950a:	9101      	str	r1, [sp, #4]
2002950c:	a801      	add	r0, sp, #4
2002950e:	4419      	add	r1, r3
20029510:	f7ff ff74 	bl	200293fc <mbedtls_pk_parse_subpubkey>
20029514:	b003      	add	sp, #12
20029516:	f85d fb04 	ldr.w	pc, [sp], #4

2002951a <rsa_can_do>:
2002951a:	2801      	cmp	r0, #1
2002951c:	d002      	beq.n	20029524 <rsa_can_do+0xa>
2002951e:	1f83      	subs	r3, r0, #6
20029520:	4258      	negs	r0, r3
20029522:	4158      	adcs	r0, r3
20029524:	4770      	bx	lr

20029526 <rsa_get_bitlen>:
20029526:	6840      	ldr	r0, [r0, #4]
20029528:	00c0      	lsls	r0, r0, #3
2002952a:	4770      	bx	lr

2002952c <rsa_debug>:
2002952c:	2301      	movs	r3, #1
2002952e:	4a06      	ldr	r2, [pc, #24]	@ (20029548 <rsa_debug+0x1c>)
20029530:	700b      	strb	r3, [r1, #0]
20029532:	730b      	strb	r3, [r1, #12]
20029534:	4b05      	ldr	r3, [pc, #20]	@ (2002954c <rsa_debug+0x20>)
20029536:	604a      	str	r2, [r1, #4]
20029538:	f100 0208 	add.w	r2, r0, #8
2002953c:	3014      	adds	r0, #20
2002953e:	608a      	str	r2, [r1, #8]
20029540:	610b      	str	r3, [r1, #16]
20029542:	6148      	str	r0, [r1, #20]
20029544:	4770      	bx	lr
20029546:	bf00      	nop
20029548:	2002b020 	.word	0x2002b020
2002954c:	2002b026 	.word	0x2002b026

20029550 <rsa_free_wrap>:
20029550:	b510      	push	{r4, lr}
20029552:	4604      	mov	r4, r0
20029554:	f000 fe7c 	bl	2002a250 <mbedtls_rsa_free>
20029558:	4620      	mov	r0, r4
2002955a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002955e:	f001 b88b 	b.w	2002a678 <free>

20029562 <rsa_alloc_wrap>:
20029562:	b510      	push	{r4, lr}
20029564:	21ac      	movs	r1, #172	@ 0xac
20029566:	2001      	movs	r0, #1
20029568:	f001 f86a 	bl	2002a640 <calloc>
2002956c:	4604      	mov	r4, r0
2002956e:	b118      	cbz	r0, 20029578 <rsa_alloc_wrap+0x16>
20029570:	2200      	movs	r2, #0
20029572:	4611      	mov	r1, r2
20029574:	f000 f862 	bl	2002963c <mbedtls_rsa_init>
20029578:	4620      	mov	r0, r4
2002957a:	bd10      	pop	{r4, pc}

2002957c <rsa_check_pair_wrap>:
2002957c:	f000 b99c 	b.w	200298b8 <mbedtls_rsa_check_pub_priv>

20029580 <rsa_encrypt_wrap>:
20029580:	b4f0      	push	{r4, r5, r6, r7}
20029582:	9f04      	ldr	r7, [sp, #16]
20029584:	6846      	ldr	r6, [r0, #4]
20029586:	460d      	mov	r5, r1
20029588:	603e      	str	r6, [r7, #0]
2002958a:	9f05      	ldr	r7, [sp, #20]
2002958c:	4614      	mov	r4, r2
2002958e:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
20029592:	42be      	cmp	r6, r7
20029594:	d806      	bhi.n	200295a4 <rsa_encrypt_wrap+0x24>
20029596:	e9cd 5305 	strd	r5, r3, [sp, #20]
2002959a:	9404      	str	r4, [sp, #16]
2002959c:	2300      	movs	r3, #0
2002959e:	bcf0      	pop	{r4, r5, r6, r7}
200295a0:	f000 bbe2 	b.w	20029d68 <mbedtls_rsa_pkcs1_encrypt>
200295a4:	4801      	ldr	r0, [pc, #4]	@ (200295ac <rsa_encrypt_wrap+0x2c>)
200295a6:	bcf0      	pop	{r4, r5, r6, r7}
200295a8:	4770      	bx	lr
200295aa:	bf00      	nop
200295ac:	ffffbc00 	.word	0xffffbc00

200295b0 <rsa_decrypt_wrap>:
200295b0:	b4f0      	push	{r4, r5, r6, r7}
200295b2:	4616      	mov	r6, r2
200295b4:	6847      	ldr	r7, [r0, #4]
200295b6:	460c      	mov	r4, r1
200295b8:	e9dd 5105 	ldrd	r5, r1, [sp, #20]
200295bc:	42b7      	cmp	r7, r6
200295be:	9a07      	ldr	r2, [sp, #28]
200295c0:	d106      	bne.n	200295d0 <rsa_decrypt_wrap+0x20>
200295c2:	e9cd 3506 	strd	r3, r5, [sp, #24]
200295c6:	9405      	str	r4, [sp, #20]
200295c8:	2301      	movs	r3, #1
200295ca:	bcf0      	pop	{r4, r5, r6, r7}
200295cc:	f000 bc6e 	b.w	20029eac <mbedtls_rsa_pkcs1_decrypt>
200295d0:	4801      	ldr	r0, [pc, #4]	@ (200295d8 <rsa_decrypt_wrap+0x28>)
200295d2:	bcf0      	pop	{r4, r5, r6, r7}
200295d4:	4770      	bx	lr
200295d6:	bf00      	nop
200295d8:	ffffbf80 	.word	0xffffbf80

200295dc <rsa_sign_wrap>:
200295dc:	b4f0      	push	{r4, r5, r6, r7}
200295de:	460c      	mov	r4, r1
200295e0:	4615      	mov	r5, r2
200295e2:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
200295e6:	6847      	ldr	r7, [r0, #4]
200295e8:	9e05      	ldr	r6, [sp, #20]
200295ea:	6037      	str	r7, [r6, #0]
200295ec:	9e04      	ldr	r6, [sp, #16]
200295ee:	e9cd 4304 	strd	r4, r3, [sp, #16]
200295f2:	e9cd 5606 	strd	r5, r6, [sp, #24]
200295f6:	bcf0      	pop	{r4, r5, r6, r7}
200295f8:	2301      	movs	r3, #1
200295fa:	f000 bd31 	b.w	2002a060 <mbedtls_rsa_pkcs1_sign>
	...

20029600 <rsa_verify_wrap>:
20029600:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20029602:	9d09      	ldr	r5, [sp, #36]	@ 0x24
20029604:	6846      	ldr	r6, [r0, #4]
20029606:	4604      	mov	r4, r0
20029608:	42ae      	cmp	r6, r5
2002960a:	d811      	bhi.n	20029630 <rsa_verify_wrap+0x30>
2002960c:	e9cd 1300 	strd	r1, r3, [sp]
20029610:	2300      	movs	r3, #0
20029612:	9e08      	ldr	r6, [sp, #32]
20029614:	4619      	mov	r1, r3
20029616:	e9cd 2602 	strd	r2, r6, [sp, #8]
2002961a:	461a      	mov	r2, r3
2002961c:	f000 fe08 	bl	2002a230 <mbedtls_rsa_pkcs1_verify>
20029620:	b920      	cbnz	r0, 2002962c <rsa_verify_wrap+0x2c>
20029622:	6862      	ldr	r2, [r4, #4]
20029624:	4b03      	ldr	r3, [pc, #12]	@ (20029634 <rsa_verify_wrap+0x34>)
20029626:	42aa      	cmp	r2, r5
20029628:	bf38      	it	cc
2002962a:	4618      	movcc	r0, r3
2002962c:	b004      	add	sp, #16
2002962e:	bd70      	pop	{r4, r5, r6, pc}
20029630:	4801      	ldr	r0, [pc, #4]	@ (20029638 <rsa_verify_wrap+0x38>)
20029632:	e7fb      	b.n	2002962c <rsa_verify_wrap+0x2c>
20029634:	ffffc700 	.word	0xffffc700
20029638:	ffffbc80 	.word	0xffffbc80

2002963c <mbedtls_rsa_init>:
2002963c:	b570      	push	{r4, r5, r6, lr}
2002963e:	4604      	mov	r4, r0
20029640:	460e      	mov	r6, r1
20029642:	4615      	mov	r5, r2
20029644:	2100      	movs	r1, #0
20029646:	22ac      	movs	r2, #172	@ 0xac
20029648:	f001 f8dc 	bl	2002a804 <memset>
2002964c:	e9c4 6529 	strd	r6, r5, [r4, #164]	@ 0xa4
20029650:	bd70      	pop	{r4, r5, r6, pc}

20029652 <mbedtls_rsa_set_padding>:
20029652:	e9c0 1229 	strd	r1, r2, [r0, #164]	@ 0xa4
20029656:	4770      	bx	lr

20029658 <mbedtls_rsa_check_pubkey>:
20029658:	b538      	push	{r3, r4, r5, lr}
2002965a:	6902      	ldr	r2, [r0, #16]
2002965c:	4604      	mov	r4, r0
2002965e:	b10a      	cbz	r2, 20029664 <mbedtls_rsa_check_pubkey+0xc>
20029660:	69c3      	ldr	r3, [r0, #28]
20029662:	b90b      	cbnz	r3, 20029668 <mbedtls_rsa_check_pubkey+0x10>
20029664:	4811      	ldr	r0, [pc, #68]	@ (200296ac <mbedtls_rsa_check_pubkey+0x54>)
20029666:	bd38      	pop	{r3, r4, r5, pc}
20029668:	6812      	ldr	r2, [r2, #0]
2002966a:	07d2      	lsls	r2, r2, #31
2002966c:	d5fa      	bpl.n	20029664 <mbedtls_rsa_check_pubkey+0xc>
2002966e:	681b      	ldr	r3, [r3, #0]
20029670:	07db      	lsls	r3, r3, #31
20029672:	d5f7      	bpl.n	20029664 <mbedtls_rsa_check_pubkey+0xc>
20029674:	f100 0508 	add.w	r5, r0, #8
20029678:	4628      	mov	r0, r5
2002967a:	f7fe fbd0 	bl	20027e1e <mbedtls_mpi_bitlen>
2002967e:	287f      	cmp	r0, #127	@ 0x7f
20029680:	d9f0      	bls.n	20029664 <mbedtls_rsa_check_pubkey+0xc>
20029682:	4628      	mov	r0, r5
20029684:	f7fe fbcb 	bl	20027e1e <mbedtls_mpi_bitlen>
20029688:	f5b0 5f00 	cmp.w	r0, #8192	@ 0x2000
2002968c:	d8ea      	bhi.n	20029664 <mbedtls_rsa_check_pubkey+0xc>
2002968e:	3414      	adds	r4, #20
20029690:	4620      	mov	r0, r4
20029692:	f7fe fbc4 	bl	20027e1e <mbedtls_mpi_bitlen>
20029696:	2801      	cmp	r0, #1
20029698:	d9e4      	bls.n	20029664 <mbedtls_rsa_check_pubkey+0xc>
2002969a:	4629      	mov	r1, r5
2002969c:	4620      	mov	r0, r4
2002969e:	f7fe fd71 	bl	20028184 <mbedtls_mpi_cmp_mpi>
200296a2:	2800      	cmp	r0, #0
200296a4:	dade      	bge.n	20029664 <mbedtls_rsa_check_pubkey+0xc>
200296a6:	2000      	movs	r0, #0
200296a8:	e7dd      	b.n	20029666 <mbedtls_rsa_check_pubkey+0xe>
200296aa:	bf00      	nop
200296ac:	ffffbe00 	.word	0xffffbe00

200296b0 <mbedtls_rsa_check_privkey>:
200296b0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
200296b4:	b0a9      	sub	sp, #164	@ 0xa4
200296b6:	4605      	mov	r5, r0
200296b8:	f7ff ffce 	bl	20029658 <mbedtls_rsa_check_pubkey>
200296bc:	b120      	cbz	r0, 200296c8 <mbedtls_rsa_check_privkey+0x18>
200296be:	4c7d      	ldr	r4, [pc, #500]	@ (200298b4 <mbedtls_rsa_check_privkey+0x204>)
200296c0:	4620      	mov	r0, r4
200296c2:	b029      	add	sp, #164	@ 0xa4
200296c4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
200296c8:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
200296ca:	2b00      	cmp	r3, #0
200296cc:	d0f7      	beq.n	200296be <mbedtls_rsa_check_privkey+0xe>
200296ce:	6c2b      	ldr	r3, [r5, #64]	@ 0x40
200296d0:	2b00      	cmp	r3, #0
200296d2:	d0f4      	beq.n	200296be <mbedtls_rsa_check_privkey+0xe>
200296d4:	6aab      	ldr	r3, [r5, #40]	@ 0x28
200296d6:	2b00      	cmp	r3, #0
200296d8:	d0f1      	beq.n	200296be <mbedtls_rsa_check_privkey+0xe>
200296da:	a801      	add	r0, sp, #4
200296dc:	f7fe fafa 	bl	20027cd4 <mbedtls_mpi_init>
200296e0:	a804      	add	r0, sp, #16
200296e2:	f7fe faf7 	bl	20027cd4 <mbedtls_mpi_init>
200296e6:	a807      	add	r0, sp, #28
200296e8:	f7fe faf4 	bl	20027cd4 <mbedtls_mpi_init>
200296ec:	a80a      	add	r0, sp, #40	@ 0x28
200296ee:	f7fe faf1 	bl	20027cd4 <mbedtls_mpi_init>
200296f2:	a80d      	add	r0, sp, #52	@ 0x34
200296f4:	f7fe faee 	bl	20027cd4 <mbedtls_mpi_init>
200296f8:	a810      	add	r0, sp, #64	@ 0x40
200296fa:	f7fe faeb 	bl	20027cd4 <mbedtls_mpi_init>
200296fe:	a813      	add	r0, sp, #76	@ 0x4c
20029700:	f7fe fae8 	bl	20027cd4 <mbedtls_mpi_init>
20029704:	a816      	add	r0, sp, #88	@ 0x58
20029706:	f7fe fae5 	bl	20027cd4 <mbedtls_mpi_init>
2002970a:	a819      	add	r0, sp, #100	@ 0x64
2002970c:	f7fe fae2 	bl	20027cd4 <mbedtls_mpi_init>
20029710:	a81c      	add	r0, sp, #112	@ 0x70
20029712:	f7fe fadf 	bl	20027cd4 <mbedtls_mpi_init>
20029716:	a81f      	add	r0, sp, #124	@ 0x7c
20029718:	f7fe fadc 	bl	20027cd4 <mbedtls_mpi_init>
2002971c:	a822      	add	r0, sp, #136	@ 0x88
2002971e:	f7fe fad9 	bl	20027cd4 <mbedtls_mpi_init>
20029722:	f105 072c 	add.w	r7, r5, #44	@ 0x2c
20029726:	a825      	add	r0, sp, #148	@ 0x94
20029728:	f105 0638 	add.w	r6, r5, #56	@ 0x38
2002972c:	f7fe fad2 	bl	20027cd4 <mbedtls_mpi_init>
20029730:	4632      	mov	r2, r6
20029732:	4639      	mov	r1, r7
20029734:	a801      	add	r0, sp, #4
20029736:	f7fe fe75 	bl	20028424 <mbedtls_mpi_mul_mpi>
2002973a:	4604      	mov	r4, r0
2002973c:	2800      	cmp	r0, #0
2002973e:	d15e      	bne.n	200297fe <mbedtls_rsa_check_privkey+0x14e>
20029740:	f105 0820 	add.w	r8, r5, #32
20029744:	f105 0914 	add.w	r9, r5, #20
20029748:	464a      	mov	r2, r9
2002974a:	4641      	mov	r1, r8
2002974c:	a804      	add	r0, sp, #16
2002974e:	f7fe fe69 	bl	20028424 <mbedtls_mpi_mul_mpi>
20029752:	4604      	mov	r4, r0
20029754:	2800      	cmp	r0, #0
20029756:	d152      	bne.n	200297fe <mbedtls_rsa_check_privkey+0x14e>
20029758:	2201      	movs	r2, #1
2002975a:	4639      	mov	r1, r7
2002975c:	a807      	add	r0, sp, #28
2002975e:	f7fe fe4b 	bl	200283f8 <mbedtls_mpi_sub_int>
20029762:	4604      	mov	r4, r0
20029764:	2800      	cmp	r0, #0
20029766:	d14a      	bne.n	200297fe <mbedtls_rsa_check_privkey+0x14e>
20029768:	2201      	movs	r2, #1
2002976a:	4631      	mov	r1, r6
2002976c:	a80a      	add	r0, sp, #40	@ 0x28
2002976e:	f7fe fe43 	bl	200283f8 <mbedtls_mpi_sub_int>
20029772:	4604      	mov	r4, r0
20029774:	2800      	cmp	r0, #0
20029776:	d142      	bne.n	200297fe <mbedtls_rsa_check_privkey+0x14e>
20029778:	aa0a      	add	r2, sp, #40	@ 0x28
2002977a:	a907      	add	r1, sp, #28
2002977c:	a80d      	add	r0, sp, #52	@ 0x34
2002977e:	f7fe fe51 	bl	20028424 <mbedtls_mpi_mul_mpi>
20029782:	4604      	mov	r4, r0
20029784:	2800      	cmp	r0, #0
20029786:	d13a      	bne.n	200297fe <mbedtls_rsa_check_privkey+0x14e>
20029788:	4649      	mov	r1, r9
2002978a:	aa0d      	add	r2, sp, #52	@ 0x34
2002978c:	a813      	add	r0, sp, #76	@ 0x4c
2002978e:	f7ff fb04 	bl	20028d9a <mbedtls_mpi_gcd>
20029792:	4604      	mov	r4, r0
20029794:	2800      	cmp	r0, #0
20029796:	d132      	bne.n	200297fe <mbedtls_rsa_check_privkey+0x14e>
20029798:	aa0a      	add	r2, sp, #40	@ 0x28
2002979a:	a907      	add	r1, sp, #28
2002979c:	a816      	add	r0, sp, #88	@ 0x58
2002979e:	f7ff fafc 	bl	20028d9a <mbedtls_mpi_gcd>
200297a2:	4604      	mov	r4, r0
200297a4:	bb58      	cbnz	r0, 200297fe <mbedtls_rsa_check_privkey+0x14e>
200297a6:	ab16      	add	r3, sp, #88	@ 0x58
200297a8:	aa0d      	add	r2, sp, #52	@ 0x34
200297aa:	a91c      	add	r1, sp, #112	@ 0x70
200297ac:	a819      	add	r0, sp, #100	@ 0x64
200297ae:	f7fe feaa 	bl	20028506 <mbedtls_mpi_div_mpi>
200297b2:	4604      	mov	r4, r0
200297b4:	bb18      	cbnz	r0, 200297fe <mbedtls_rsa_check_privkey+0x14e>
200297b6:	aa19      	add	r2, sp, #100	@ 0x64
200297b8:	a904      	add	r1, sp, #16
200297ba:	a810      	add	r0, sp, #64	@ 0x40
200297bc:	f7ff f8a7 	bl	2002890e <mbedtls_mpi_mod_mpi>
200297c0:	4604      	mov	r4, r0
200297c2:	b9e0      	cbnz	r0, 200297fe <mbedtls_rsa_check_privkey+0x14e>
200297c4:	4641      	mov	r1, r8
200297c6:	aa07      	add	r2, sp, #28
200297c8:	a81f      	add	r0, sp, #124	@ 0x7c
200297ca:	f7ff f8a0 	bl	2002890e <mbedtls_mpi_mod_mpi>
200297ce:	4604      	mov	r4, r0
200297d0:	b9a8      	cbnz	r0, 200297fe <mbedtls_rsa_check_privkey+0x14e>
200297d2:	4641      	mov	r1, r8
200297d4:	aa0a      	add	r2, sp, #40	@ 0x28
200297d6:	a822      	add	r0, sp, #136	@ 0x88
200297d8:	f7ff f899 	bl	2002890e <mbedtls_mpi_mod_mpi>
200297dc:	4604      	mov	r4, r0
200297de:	b970      	cbnz	r0, 200297fe <mbedtls_rsa_check_privkey+0x14e>
200297e0:	463a      	mov	r2, r7
200297e2:	4631      	mov	r1, r6
200297e4:	a825      	add	r0, sp, #148	@ 0x94
200297e6:	f7ff fb73 	bl	20028ed0 <mbedtls_mpi_inv_mod>
200297ea:	4604      	mov	r4, r0
200297ec:	b938      	cbnz	r0, 200297fe <mbedtls_rsa_check_privkey+0x14e>
200297ee:	f105 0108 	add.w	r1, r5, #8
200297f2:	a801      	add	r0, sp, #4
200297f4:	f7fe fcc6 	bl	20028184 <mbedtls_mpi_cmp_mpi>
200297f8:	2800      	cmp	r0, #0
200297fa:	d031      	beq.n	20029860 <mbedtls_rsa_check_privkey+0x1b0>
200297fc:	4c2d      	ldr	r4, [pc, #180]	@ (200298b4 <mbedtls_rsa_check_privkey+0x204>)
200297fe:	a801      	add	r0, sp, #4
20029800:	f7fe fa6f 	bl	20027ce2 <mbedtls_mpi_free>
20029804:	a804      	add	r0, sp, #16
20029806:	f7fe fa6c 	bl	20027ce2 <mbedtls_mpi_free>
2002980a:	a807      	add	r0, sp, #28
2002980c:	f7fe fa69 	bl	20027ce2 <mbedtls_mpi_free>
20029810:	a80a      	add	r0, sp, #40	@ 0x28
20029812:	f7fe fa66 	bl	20027ce2 <mbedtls_mpi_free>
20029816:	a80d      	add	r0, sp, #52	@ 0x34
20029818:	f7fe fa63 	bl	20027ce2 <mbedtls_mpi_free>
2002981c:	a810      	add	r0, sp, #64	@ 0x40
2002981e:	f7fe fa60 	bl	20027ce2 <mbedtls_mpi_free>
20029822:	a813      	add	r0, sp, #76	@ 0x4c
20029824:	f7fe fa5d 	bl	20027ce2 <mbedtls_mpi_free>
20029828:	a816      	add	r0, sp, #88	@ 0x58
2002982a:	f7fe fa5a 	bl	20027ce2 <mbedtls_mpi_free>
2002982e:	a819      	add	r0, sp, #100	@ 0x64
20029830:	f7fe fa57 	bl	20027ce2 <mbedtls_mpi_free>
20029834:	a81c      	add	r0, sp, #112	@ 0x70
20029836:	f7fe fa54 	bl	20027ce2 <mbedtls_mpi_free>
2002983a:	a81f      	add	r0, sp, #124	@ 0x7c
2002983c:	f7fe fa51 	bl	20027ce2 <mbedtls_mpi_free>
20029840:	a822      	add	r0, sp, #136	@ 0x88
20029842:	f7fe fa4e 	bl	20027ce2 <mbedtls_mpi_free>
20029846:	a825      	add	r0, sp, #148	@ 0x94
20029848:	f7fe fa4b 	bl	20027ce2 <mbedtls_mpi_free>
2002984c:	f514 4f84 	cmn.w	r4, #16896	@ 0x4200
20029850:	f43f af35 	beq.w	200296be <mbedtls_rsa_check_privkey+0xe>
20029854:	2c00      	cmp	r4, #0
20029856:	f43f af33 	beq.w	200296c0 <mbedtls_rsa_check_privkey+0x10>
2002985a:	f5a4 4484 	sub.w	r4, r4, #16896	@ 0x4200
2002985e:	e72f      	b.n	200296c0 <mbedtls_rsa_check_privkey+0x10>
20029860:	f105 0144 	add.w	r1, r5, #68	@ 0x44
20029864:	a81f      	add	r0, sp, #124	@ 0x7c
20029866:	f7fe fc8d 	bl	20028184 <mbedtls_mpi_cmp_mpi>
2002986a:	2800      	cmp	r0, #0
2002986c:	d1c6      	bne.n	200297fc <mbedtls_rsa_check_privkey+0x14c>
2002986e:	f105 0150 	add.w	r1, r5, #80	@ 0x50
20029872:	a822      	add	r0, sp, #136	@ 0x88
20029874:	f7fe fc86 	bl	20028184 <mbedtls_mpi_cmp_mpi>
20029878:	2800      	cmp	r0, #0
2002987a:	d1bf      	bne.n	200297fc <mbedtls_rsa_check_privkey+0x14c>
2002987c:	f105 015c 	add.w	r1, r5, #92	@ 0x5c
20029880:	a825      	add	r0, sp, #148	@ 0x94
20029882:	f7fe fc7f 	bl	20028184 <mbedtls_mpi_cmp_mpi>
20029886:	2800      	cmp	r0, #0
20029888:	d1b8      	bne.n	200297fc <mbedtls_rsa_check_privkey+0x14c>
2002988a:	2100      	movs	r1, #0
2002988c:	a81c      	add	r0, sp, #112	@ 0x70
2002988e:	f7fe fcba 	bl	20028206 <mbedtls_mpi_cmp_int>
20029892:	2800      	cmp	r0, #0
20029894:	d1b2      	bne.n	200297fc <mbedtls_rsa_check_privkey+0x14c>
20029896:	2101      	movs	r1, #1
20029898:	a810      	add	r0, sp, #64	@ 0x40
2002989a:	f7fe fcb4 	bl	20028206 <mbedtls_mpi_cmp_int>
2002989e:	2800      	cmp	r0, #0
200298a0:	d1ac      	bne.n	200297fc <mbedtls_rsa_check_privkey+0x14c>
200298a2:	2101      	movs	r1, #1
200298a4:	a813      	add	r0, sp, #76	@ 0x4c
200298a6:	f7fe fcae 	bl	20028206 <mbedtls_mpi_cmp_int>
200298aa:	4604      	mov	r4, r0
200298ac:	2800      	cmp	r0, #0
200298ae:	d1a5      	bne.n	200297fc <mbedtls_rsa_check_privkey+0x14c>
200298b0:	e7a5      	b.n	200297fe <mbedtls_rsa_check_privkey+0x14e>
200298b2:	bf00      	nop
200298b4:	ffffbe00 	.word	0xffffbe00

200298b8 <mbedtls_rsa_check_pub_priv>:
200298b8:	b538      	push	{r3, r4, r5, lr}
200298ba:	4605      	mov	r5, r0
200298bc:	460c      	mov	r4, r1
200298be:	f7ff fecb 	bl	20029658 <mbedtls_rsa_check_pubkey>
200298c2:	b918      	cbnz	r0, 200298cc <mbedtls_rsa_check_pub_priv+0x14>
200298c4:	4620      	mov	r0, r4
200298c6:	f7ff fef3 	bl	200296b0 <mbedtls_rsa_check_privkey>
200298ca:	b108      	cbz	r0, 200298d0 <mbedtls_rsa_check_pub_priv+0x18>
200298cc:	4809      	ldr	r0, [pc, #36]	@ (200298f4 <mbedtls_rsa_check_pub_priv+0x3c>)
200298ce:	bd38      	pop	{r3, r4, r5, pc}
200298d0:	f104 0108 	add.w	r1, r4, #8
200298d4:	f105 0008 	add.w	r0, r5, #8
200298d8:	f7fe fc54 	bl	20028184 <mbedtls_mpi_cmp_mpi>
200298dc:	2800      	cmp	r0, #0
200298de:	d1f5      	bne.n	200298cc <mbedtls_rsa_check_pub_priv+0x14>
200298e0:	f104 0114 	add.w	r1, r4, #20
200298e4:	f105 0014 	add.w	r0, r5, #20
200298e8:	f7fe fc4c 	bl	20028184 <mbedtls_mpi_cmp_mpi>
200298ec:	2800      	cmp	r0, #0
200298ee:	d0ee      	beq.n	200298ce <mbedtls_rsa_check_pub_priv+0x16>
200298f0:	e7ec      	b.n	200298cc <mbedtls_rsa_check_pub_priv+0x14>
200298f2:	bf00      	nop
200298f4:	ffffbe00 	.word	0xffffbe00

200298f8 <mbedtls_rsa_public>:
200298f8:	b5f0      	push	{r4, r5, r6, r7, lr}
200298fa:	460c      	mov	r4, r1
200298fc:	4605      	mov	r5, r0
200298fe:	b087      	sub	sp, #28
20029900:	a803      	add	r0, sp, #12
20029902:	4616      	mov	r6, r2
20029904:	f7fe f9e6 	bl	20027cd4 <mbedtls_mpi_init>
20029908:	4621      	mov	r1, r4
2002990a:	686a      	ldr	r2, [r5, #4]
2002990c:	a803      	add	r0, sp, #12
2002990e:	f7fe faa9 	bl	20027e64 <mbedtls_mpi_read_binary>
20029912:	4604      	mov	r4, r0
20029914:	b9d0      	cbnz	r0, 2002994c <mbedtls_rsa_public+0x54>
20029916:	f105 0408 	add.w	r4, r5, #8
2002991a:	4621      	mov	r1, r4
2002991c:	a803      	add	r0, sp, #12
2002991e:	f7fe fc31 	bl	20028184 <mbedtls_mpi_cmp_mpi>
20029922:	2800      	cmp	r0, #0
20029924:	da1b      	bge.n	2002995e <mbedtls_rsa_public+0x66>
20029926:	f105 0368 	add.w	r3, r5, #104	@ 0x68
2002992a:	a903      	add	r1, sp, #12
2002992c:	686f      	ldr	r7, [r5, #4]
2002992e:	4608      	mov	r0, r1
20029930:	9300      	str	r3, [sp, #0]
20029932:	f105 0214 	add.w	r2, r5, #20
20029936:	4623      	mov	r3, r4
20029938:	f7ff f81b 	bl	20028972 <mbedtls_mpi_exp_mod>
2002993c:	4604      	mov	r4, r0
2002993e:	b928      	cbnz	r0, 2002994c <mbedtls_rsa_public+0x54>
20029940:	463a      	mov	r2, r7
20029942:	4631      	mov	r1, r6
20029944:	a803      	add	r0, sp, #12
20029946:	f7fe fac2 	bl	20027ece <mbedtls_mpi_write_binary>
2002994a:	4604      	mov	r4, r0
2002994c:	a803      	add	r0, sp, #12
2002994e:	f7fe f9c8 	bl	20027ce2 <mbedtls_mpi_free>
20029952:	b10c      	cbz	r4, 20029958 <mbedtls_rsa_public+0x60>
20029954:	f5a4 4485 	sub.w	r4, r4, #17024	@ 0x4280
20029958:	4620      	mov	r0, r4
2002995a:	b007      	add	sp, #28
2002995c:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002995e:	f06f 0403 	mvn.w	r4, #3
20029962:	e7f3      	b.n	2002994c <mbedtls_rsa_public+0x54>

20029964 <mbedtls_rsa_private>:
20029964:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029968:	461e      	mov	r6, r3
2002996a:	6b43      	ldr	r3, [r0, #52]	@ 0x34
2002996c:	4604      	mov	r4, r0
2002996e:	460d      	mov	r5, r1
20029970:	4617      	mov	r7, r2
20029972:	b09d      	sub	sp, #116	@ 0x74
20029974:	2b00      	cmp	r3, #0
20029976:	f000 8179 	beq.w	20029c6c <mbedtls_rsa_private+0x308>
2002997a:	6c03      	ldr	r3, [r0, #64]	@ 0x40
2002997c:	2b00      	cmp	r3, #0
2002997e:	f000 8175 	beq.w	20029c6c <mbedtls_rsa_private+0x308>
20029982:	6a83      	ldr	r3, [r0, #40]	@ 0x28
20029984:	2b00      	cmp	r3, #0
20029986:	f000 8171 	beq.w	20029c6c <mbedtls_rsa_private+0x308>
2002998a:	a804      	add	r0, sp, #16
2002998c:	f7fe f9a2 	bl	20027cd4 <mbedtls_mpi_init>
20029990:	a807      	add	r0, sp, #28
20029992:	f7fe f99f 	bl	20027cd4 <mbedtls_mpi_init>
20029996:	a80a      	add	r0, sp, #40	@ 0x28
20029998:	f7fe f99c 	bl	20027cd4 <mbedtls_mpi_init>
2002999c:	a80d      	add	r0, sp, #52	@ 0x34
2002999e:	f7fe f999 	bl	20027cd4 <mbedtls_mpi_init>
200299a2:	a810      	add	r0, sp, #64	@ 0x40
200299a4:	f7fe f996 	bl	20027cd4 <mbedtls_mpi_init>
200299a8:	a813      	add	r0, sp, #76	@ 0x4c
200299aa:	f7fe f993 	bl	20027cd4 <mbedtls_mpi_init>
200299ae:	b12d      	cbz	r5, 200299bc <mbedtls_rsa_private+0x58>
200299b0:	a816      	add	r0, sp, #88	@ 0x58
200299b2:	f7fe f98f 	bl	20027cd4 <mbedtls_mpi_init>
200299b6:	a819      	add	r0, sp, #100	@ 0x64
200299b8:	f7fe f98c 	bl	20027cd4 <mbedtls_mpi_init>
200299bc:	4631      	mov	r1, r6
200299be:	6862      	ldr	r2, [r4, #4]
200299c0:	a804      	add	r0, sp, #16
200299c2:	f7fe fa4f 	bl	20027e64 <mbedtls_mpi_read_binary>
200299c6:	4603      	mov	r3, r0
200299c8:	2800      	cmp	r0, #0
200299ca:	f040 80e0 	bne.w	20029b8e <mbedtls_rsa_private+0x22a>
200299ce:	f104 0608 	add.w	r6, r4, #8
200299d2:	4631      	mov	r1, r6
200299d4:	a804      	add	r0, sp, #16
200299d6:	f7fe fbd5 	bl	20028184 <mbedtls_mpi_cmp_mpi>
200299da:	2800      	cmp	r0, #0
200299dc:	f280 8143 	bge.w	20029c66 <mbedtls_rsa_private+0x302>
200299e0:	f104 0a44 	add.w	sl, r4, #68	@ 0x44
200299e4:	f104 0950 	add.w	r9, r4, #80	@ 0x50
200299e8:	2d00      	cmp	r5, #0
200299ea:	f000 8089 	beq.w	20029b00 <mbedtls_rsa_private+0x19c>
200299ee:	f8d4 30a0 	ldr.w	r3, [r4, #160]	@ 0xa0
200299f2:	2b00      	cmp	r3, #0
200299f4:	f000 80f4 	beq.w	20029be0 <mbedtls_rsa_private+0x27c>
200299f8:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
200299fc:	4642      	mov	r2, r8
200299fe:	4641      	mov	r1, r8
20029a00:	4640      	mov	r0, r8
20029a02:	f7fe fd0f 	bl	20028424 <mbedtls_mpi_mul_mpi>
20029a06:	4603      	mov	r3, r0
20029a08:	2800      	cmp	r0, #0
20029a0a:	f040 80c0 	bne.w	20029b8e <mbedtls_rsa_private+0x22a>
20029a0e:	4632      	mov	r2, r6
20029a10:	4641      	mov	r1, r8
20029a12:	4640      	mov	r0, r8
20029a14:	f7fe ff7b 	bl	2002890e <mbedtls_mpi_mod_mpi>
20029a18:	4603      	mov	r3, r0
20029a1a:	2800      	cmp	r0, #0
20029a1c:	f040 80b7 	bne.w	20029b8e <mbedtls_rsa_private+0x22a>
20029a20:	f104 0898 	add.w	r8, r4, #152	@ 0x98
20029a24:	4642      	mov	r2, r8
20029a26:	4641      	mov	r1, r8
20029a28:	4640      	mov	r0, r8
20029a2a:	f7fe fcfb 	bl	20028424 <mbedtls_mpi_mul_mpi>
20029a2e:	4603      	mov	r3, r0
20029a30:	2800      	cmp	r0, #0
20029a32:	f040 80ac 	bne.w	20029b8e <mbedtls_rsa_private+0x22a>
20029a36:	4632      	mov	r2, r6
20029a38:	4641      	mov	r1, r8
20029a3a:	4640      	mov	r0, r8
20029a3c:	f7fe ff67 	bl	2002890e <mbedtls_mpi_mod_mpi>
20029a40:	4603      	mov	r3, r0
20029a42:	2800      	cmp	r0, #0
20029a44:	f040 80a3 	bne.w	20029b8e <mbedtls_rsa_private+0x22a>
20029a48:	a904      	add	r1, sp, #16
20029a4a:	4608      	mov	r0, r1
20029a4c:	f104 028c 	add.w	r2, r4, #140	@ 0x8c
20029a50:	f7fe fce8 	bl	20028424 <mbedtls_mpi_mul_mpi>
20029a54:	4603      	mov	r3, r0
20029a56:	2800      	cmp	r0, #0
20029a58:	f040 8099 	bne.w	20029b8e <mbedtls_rsa_private+0x22a>
20029a5c:	a904      	add	r1, sp, #16
20029a5e:	4632      	mov	r2, r6
20029a60:	4608      	mov	r0, r1
20029a62:	f7fe ff54 	bl	2002890e <mbedtls_mpi_mod_mpi>
20029a66:	4603      	mov	r3, r0
20029a68:	2800      	cmp	r0, #0
20029a6a:	f040 8090 	bne.w	20029b8e <mbedtls_rsa_private+0x22a>
20029a6e:	2201      	movs	r2, #1
20029a70:	f104 012c 	add.w	r1, r4, #44	@ 0x2c
20029a74:	a80d      	add	r0, sp, #52	@ 0x34
20029a76:	f7fe fcbf 	bl	200283f8 <mbedtls_mpi_sub_int>
20029a7a:	4603      	mov	r3, r0
20029a7c:	2800      	cmp	r0, #0
20029a7e:	f040 8086 	bne.w	20029b8e <mbedtls_rsa_private+0x22a>
20029a82:	2201      	movs	r2, #1
20029a84:	f104 0138 	add.w	r1, r4, #56	@ 0x38
20029a88:	a810      	add	r0, sp, #64	@ 0x40
20029a8a:	f7fe fcb5 	bl	200283f8 <mbedtls_mpi_sub_int>
20029a8e:	4603      	mov	r3, r0
20029a90:	2800      	cmp	r0, #0
20029a92:	d17c      	bne.n	20029b8e <mbedtls_rsa_private+0x22a>
20029a94:	463b      	mov	r3, r7
20029a96:	462a      	mov	r2, r5
20029a98:	211c      	movs	r1, #28
20029a9a:	a813      	add	r0, sp, #76	@ 0x4c
20029a9c:	f7ff f9fb 	bl	20028e96 <mbedtls_mpi_fill_random>
20029aa0:	4603      	mov	r3, r0
20029aa2:	2800      	cmp	r0, #0
20029aa4:	d173      	bne.n	20029b8e <mbedtls_rsa_private+0x22a>
20029aa6:	aa13      	add	r2, sp, #76	@ 0x4c
20029aa8:	a90d      	add	r1, sp, #52	@ 0x34
20029aaa:	a816      	add	r0, sp, #88	@ 0x58
20029aac:	f7fe fcba 	bl	20028424 <mbedtls_mpi_mul_mpi>
20029ab0:	4603      	mov	r3, r0
20029ab2:	2800      	cmp	r0, #0
20029ab4:	d16b      	bne.n	20029b8e <mbedtls_rsa_private+0x22a>
20029ab6:	a916      	add	r1, sp, #88	@ 0x58
20029ab8:	4652      	mov	r2, sl
20029aba:	4608      	mov	r0, r1
20029abc:	f7fe fc4f 	bl	2002835e <mbedtls_mpi_add_mpi>
20029ac0:	4603      	mov	r3, r0
20029ac2:	2800      	cmp	r0, #0
20029ac4:	d163      	bne.n	20029b8e <mbedtls_rsa_private+0x22a>
20029ac6:	463b      	mov	r3, r7
20029ac8:	462a      	mov	r2, r5
20029aca:	211c      	movs	r1, #28
20029acc:	a813      	add	r0, sp, #76	@ 0x4c
20029ace:	f7ff f9e2 	bl	20028e96 <mbedtls_mpi_fill_random>
20029ad2:	4603      	mov	r3, r0
20029ad4:	2800      	cmp	r0, #0
20029ad6:	d15a      	bne.n	20029b8e <mbedtls_rsa_private+0x22a>
20029ad8:	aa13      	add	r2, sp, #76	@ 0x4c
20029ada:	a910      	add	r1, sp, #64	@ 0x40
20029adc:	a819      	add	r0, sp, #100	@ 0x64
20029ade:	f7fe fca1 	bl	20028424 <mbedtls_mpi_mul_mpi>
20029ae2:	4603      	mov	r3, r0
20029ae4:	2800      	cmp	r0, #0
20029ae6:	d152      	bne.n	20029b8e <mbedtls_rsa_private+0x22a>
20029ae8:	a919      	add	r1, sp, #100	@ 0x64
20029aea:	464a      	mov	r2, r9
20029aec:	4608      	mov	r0, r1
20029aee:	f7fe fc36 	bl	2002835e <mbedtls_mpi_add_mpi>
20029af2:	4603      	mov	r3, r0
20029af4:	2800      	cmp	r0, #0
20029af6:	d14a      	bne.n	20029b8e <mbedtls_rsa_private+0x22a>
20029af8:	f10d 0964 	add.w	r9, sp, #100	@ 0x64
20029afc:	f10d 0a58 	add.w	sl, sp, #88	@ 0x58
20029b00:	f104 0374 	add.w	r3, r4, #116	@ 0x74
20029b04:	f104 082c 	add.w	r8, r4, #44	@ 0x2c
20029b08:	9300      	str	r3, [sp, #0]
20029b0a:	4652      	mov	r2, sl
20029b0c:	4643      	mov	r3, r8
20029b0e:	a904      	add	r1, sp, #16
20029b10:	a807      	add	r0, sp, #28
20029b12:	f7fe ff2e 	bl	20028972 <mbedtls_mpi_exp_mod>
20029b16:	4603      	mov	r3, r0
20029b18:	2800      	cmp	r0, #0
20029b1a:	d138      	bne.n	20029b8e <mbedtls_rsa_private+0x22a>
20029b1c:	f104 0380 	add.w	r3, r4, #128	@ 0x80
20029b20:	f104 0738 	add.w	r7, r4, #56	@ 0x38
20029b24:	9300      	str	r3, [sp, #0]
20029b26:	464a      	mov	r2, r9
20029b28:	463b      	mov	r3, r7
20029b2a:	a904      	add	r1, sp, #16
20029b2c:	a80a      	add	r0, sp, #40	@ 0x28
20029b2e:	f7fe ff20 	bl	20028972 <mbedtls_mpi_exp_mod>
20029b32:	4603      	mov	r3, r0
20029b34:	bb58      	cbnz	r0, 20029b8e <mbedtls_rsa_private+0x22a>
20029b36:	aa0a      	add	r2, sp, #40	@ 0x28
20029b38:	a907      	add	r1, sp, #28
20029b3a:	a804      	add	r0, sp, #16
20029b3c:	f7fe fc35 	bl	200283aa <mbedtls_mpi_sub_mpi>
20029b40:	4603      	mov	r3, r0
20029b42:	bb20      	cbnz	r0, 20029b8e <mbedtls_rsa_private+0x22a>
20029b44:	f104 025c 	add.w	r2, r4, #92	@ 0x5c
20029b48:	a904      	add	r1, sp, #16
20029b4a:	a807      	add	r0, sp, #28
20029b4c:	f7fe fc6a 	bl	20028424 <mbedtls_mpi_mul_mpi>
20029b50:	4603      	mov	r3, r0
20029b52:	b9e0      	cbnz	r0, 20029b8e <mbedtls_rsa_private+0x22a>
20029b54:	4642      	mov	r2, r8
20029b56:	a907      	add	r1, sp, #28
20029b58:	a804      	add	r0, sp, #16
20029b5a:	f7fe fed8 	bl	2002890e <mbedtls_mpi_mod_mpi>
20029b5e:	4603      	mov	r3, r0
20029b60:	b9a8      	cbnz	r0, 20029b8e <mbedtls_rsa_private+0x22a>
20029b62:	463a      	mov	r2, r7
20029b64:	a904      	add	r1, sp, #16
20029b66:	a807      	add	r0, sp, #28
20029b68:	f7fe fc5c 	bl	20028424 <mbedtls_mpi_mul_mpi>
20029b6c:	4603      	mov	r3, r0
20029b6e:	b970      	cbnz	r0, 20029b8e <mbedtls_rsa_private+0x22a>
20029b70:	aa07      	add	r2, sp, #28
20029b72:	a90a      	add	r1, sp, #40	@ 0x28
20029b74:	a804      	add	r0, sp, #16
20029b76:	f7fe fbf2 	bl	2002835e <mbedtls_mpi_add_mpi>
20029b7a:	4603      	mov	r3, r0
20029b7c:	b938      	cbnz	r0, 20029b8e <mbedtls_rsa_private+0x22a>
20029b7e:	2d00      	cmp	r5, #0
20029b80:	d15f      	bne.n	20029c42 <mbedtls_rsa_private+0x2de>
20029b82:	6862      	ldr	r2, [r4, #4]
20029b84:	9926      	ldr	r1, [sp, #152]	@ 0x98
20029b86:	a804      	add	r0, sp, #16
20029b88:	f7fe f9a1 	bl	20027ece <mbedtls_mpi_write_binary>
20029b8c:	4603      	mov	r3, r0
20029b8e:	a804      	add	r0, sp, #16
20029b90:	9303      	str	r3, [sp, #12]
20029b92:	f7fe f8a6 	bl	20027ce2 <mbedtls_mpi_free>
20029b96:	a807      	add	r0, sp, #28
20029b98:	f7fe f8a3 	bl	20027ce2 <mbedtls_mpi_free>
20029b9c:	a80a      	add	r0, sp, #40	@ 0x28
20029b9e:	f7fe f8a0 	bl	20027ce2 <mbedtls_mpi_free>
20029ba2:	a80d      	add	r0, sp, #52	@ 0x34
20029ba4:	f7fe f89d 	bl	20027ce2 <mbedtls_mpi_free>
20029ba8:	a810      	add	r0, sp, #64	@ 0x40
20029baa:	f7fe f89a 	bl	20027ce2 <mbedtls_mpi_free>
20029bae:	a813      	add	r0, sp, #76	@ 0x4c
20029bb0:	f7fe f897 	bl	20027ce2 <mbedtls_mpi_free>
20029bb4:	9b03      	ldr	r3, [sp, #12]
20029bb6:	b135      	cbz	r5, 20029bc6 <mbedtls_rsa_private+0x262>
20029bb8:	a816      	add	r0, sp, #88	@ 0x58
20029bba:	f7fe f892 	bl	20027ce2 <mbedtls_mpi_free>
20029bbe:	a819      	add	r0, sp, #100	@ 0x64
20029bc0:	f7fe f88f 	bl	20027ce2 <mbedtls_mpi_free>
20029bc4:	9b03      	ldr	r3, [sp, #12]
20029bc6:	b10b      	cbz	r3, 20029bcc <mbedtls_rsa_private+0x268>
20029bc8:	f5a3 4386 	sub.w	r3, r3, #17152	@ 0x4300
20029bcc:	4618      	mov	r0, r3
20029bce:	b01d      	add	sp, #116	@ 0x74
20029bd0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029bd4:	9b03      	ldr	r3, [sp, #12]
20029bd6:	3b01      	subs	r3, #1
20029bd8:	9303      	str	r3, [sp, #12]
20029bda:	d107      	bne.n	20029bec <mbedtls_rsa_private+0x288>
20029bdc:	4b24      	ldr	r3, [pc, #144]	@ (20029c70 <mbedtls_rsa_private+0x30c>)
20029bde:	e7d6      	b.n	20029b8e <mbedtls_rsa_private+0x22a>
20029be0:	230b      	movs	r3, #11
20029be2:	f104 0b98 	add.w	fp, r4, #152	@ 0x98
20029be6:	9303      	str	r3, [sp, #12]
20029be8:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
20029bec:	6861      	ldr	r1, [r4, #4]
20029bee:	463b      	mov	r3, r7
20029bf0:	462a      	mov	r2, r5
20029bf2:	4658      	mov	r0, fp
20029bf4:	3901      	subs	r1, #1
20029bf6:	f7ff f94e 	bl	20028e96 <mbedtls_mpi_fill_random>
20029bfa:	4603      	mov	r3, r0
20029bfc:	2800      	cmp	r0, #0
20029bfe:	d1c6      	bne.n	20029b8e <mbedtls_rsa_private+0x22a>
20029c00:	4632      	mov	r2, r6
20029c02:	4659      	mov	r1, fp
20029c04:	4640      	mov	r0, r8
20029c06:	f7ff f8c8 	bl	20028d9a <mbedtls_mpi_gcd>
20029c0a:	4603      	mov	r3, r0
20029c0c:	2800      	cmp	r0, #0
20029c0e:	d1be      	bne.n	20029b8e <mbedtls_rsa_private+0x22a>
20029c10:	2101      	movs	r1, #1
20029c12:	4640      	mov	r0, r8
20029c14:	f7fe faf7 	bl	20028206 <mbedtls_mpi_cmp_int>
20029c18:	2800      	cmp	r0, #0
20029c1a:	d1db      	bne.n	20029bd4 <mbedtls_rsa_private+0x270>
20029c1c:	4632      	mov	r2, r6
20029c1e:	4659      	mov	r1, fp
20029c20:	4640      	mov	r0, r8
20029c22:	f7ff f955 	bl	20028ed0 <mbedtls_mpi_inv_mod>
20029c26:	4603      	mov	r3, r0
20029c28:	2800      	cmp	r0, #0
20029c2a:	d1b0      	bne.n	20029b8e <mbedtls_rsa_private+0x22a>
20029c2c:	f104 0368 	add.w	r3, r4, #104	@ 0x68
20029c30:	9300      	str	r3, [sp, #0]
20029c32:	4641      	mov	r1, r8
20029c34:	4633      	mov	r3, r6
20029c36:	4640      	mov	r0, r8
20029c38:	f104 0214 	add.w	r2, r4, #20
20029c3c:	f7fe fe99 	bl	20028972 <mbedtls_mpi_exp_mod>
20029c40:	e6fe      	b.n	20029a40 <mbedtls_rsa_private+0xdc>
20029c42:	a904      	add	r1, sp, #16
20029c44:	4608      	mov	r0, r1
20029c46:	f104 0298 	add.w	r2, r4, #152	@ 0x98
20029c4a:	f7fe fbeb 	bl	20028424 <mbedtls_mpi_mul_mpi>
20029c4e:	4603      	mov	r3, r0
20029c50:	2800      	cmp	r0, #0
20029c52:	d19c      	bne.n	20029b8e <mbedtls_rsa_private+0x22a>
20029c54:	a904      	add	r1, sp, #16
20029c56:	4632      	mov	r2, r6
20029c58:	4608      	mov	r0, r1
20029c5a:	f7fe fe58 	bl	2002890e <mbedtls_mpi_mod_mpi>
20029c5e:	4603      	mov	r3, r0
20029c60:	2800      	cmp	r0, #0
20029c62:	d08e      	beq.n	20029b82 <mbedtls_rsa_private+0x21e>
20029c64:	e793      	b.n	20029b8e <mbedtls_rsa_private+0x22a>
20029c66:	f06f 0303 	mvn.w	r3, #3
20029c6a:	e790      	b.n	20029b8e <mbedtls_rsa_private+0x22a>
20029c6c:	4b01      	ldr	r3, [pc, #4]	@ (20029c74 <mbedtls_rsa_private+0x310>)
20029c6e:	e7ad      	b.n	20029bcc <mbedtls_rsa_private+0x268>
20029c70:	ffffbb80 	.word	0xffffbb80
20029c74:	ffffbf80 	.word	0xffffbf80

20029c78 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>:
20029c78:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029c7c:	4698      	mov	r8, r3
20029c7e:	e9dd a30c 	ldrd	sl, r3, [sp, #48]	@ 0x30
20029c82:	f1b8 0f01 	cmp.w	r8, #1
20029c86:	4606      	mov	r6, r0
20029c88:	460f      	mov	r7, r1
20029c8a:	4691      	mov	r9, r2
20029c8c:	9d0e      	ldr	r5, [sp, #56]	@ 0x38
20029c8e:	d103      	bne.n	20029c98 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x20>
20029c90:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
20029c94:	2a00      	cmp	r2, #0
20029c96:	d162      	bne.n	20029d5e <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c98:	2f00      	cmp	r7, #0
20029c9a:	d060      	beq.n	20029d5e <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c9c:	2b00      	cmp	r3, #0
20029c9e:	d05e      	beq.n	20029d5e <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029ca0:	2d00      	cmp	r5, #0
20029ca2:	d05c      	beq.n	20029d5e <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029ca4:	f11a 0f0c 	cmn.w	sl, #12
20029ca8:	6874      	ldr	r4, [r6, #4]
20029caa:	d858      	bhi.n	20029d5e <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029cac:	f10a 020b 	add.w	r2, sl, #11
20029cb0:	42a2      	cmp	r2, r4
20029cb2:	d854      	bhi.n	20029d5e <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029cb4:	4629      	mov	r1, r5
20029cb6:	2200      	movs	r2, #0
20029cb8:	eba4 040a 	sub.w	r4, r4, sl
20029cbc:	3c03      	subs	r4, #3
20029cbe:	f801 2b02 	strb.w	r2, [r1], #2
20029cc2:	f1b8 0f00 	cmp.w	r8, #0
20029cc6:	d131      	bne.n	20029d2c <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xb4>
20029cc8:	2202      	movs	r2, #2
20029cca:	4414      	add	r4, r2
20029ccc:	706a      	strb	r2, [r5, #1]
20029cce:	442c      	add	r4, r5
20029cd0:	42a1      	cmp	r1, r4
20029cd2:	d112      	bne.n	20029cfa <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x82>
20029cd4:	2200      	movs	r2, #0
20029cd6:	4620      	mov	r0, r4
20029cd8:	4619      	mov	r1, r3
20029cda:	f800 2b01 	strb.w	r2, [r0], #1
20029cde:	4652      	mov	r2, sl
20029ce0:	f000 fdaa 	bl	2002a838 <memcpy>
20029ce4:	f1b8 0f00 	cmp.w	r8, #0
20029ce8:	d12f      	bne.n	20029d4a <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xd2>
20029cea:	462a      	mov	r2, r5
20029cec:	4629      	mov	r1, r5
20029cee:	4630      	mov	r0, r6
20029cf0:	b003      	add	sp, #12
20029cf2:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029cf6:	f7ff bdff 	b.w	200298f8 <mbedtls_rsa_public>
20029cfa:	f04f 0b64 	mov.w	fp, #100	@ 0x64
20029cfe:	2201      	movs	r2, #1
20029d00:	4648      	mov	r0, r9
20029d02:	9301      	str	r3, [sp, #4]
20029d04:	9100      	str	r1, [sp, #0]
20029d06:	47b8      	blx	r7
20029d08:	9900      	ldr	r1, [sp, #0]
20029d0a:	9b01      	ldr	r3, [sp, #4]
20029d0c:	780a      	ldrb	r2, [r1, #0]
20029d0e:	b94a      	cbnz	r2, 20029d24 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xac>
20029d10:	f1bb 0b01 	subs.w	fp, fp, #1
20029d14:	d001      	beq.n	20029d1a <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029d16:	2800      	cmp	r0, #0
20029d18:	d0f1      	beq.n	20029cfe <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x86>
20029d1a:	f5a0 4089 	sub.w	r0, r0, #17536	@ 0x4480
20029d1e:	b003      	add	sp, #12
20029d20:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029d24:	2800      	cmp	r0, #0
20029d26:	d1f8      	bne.n	20029d1a <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029d28:	3101      	adds	r1, #1
20029d2a:	e7d1      	b.n	20029cd0 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x58>
20029d2c:	2001      	movs	r0, #1
20029d2e:	462a      	mov	r2, r5
20029d30:	f04f 0cff 	mov.w	ip, #255	@ 0xff
20029d34:	f802 0f01 	strb.w	r0, [r2, #1]!
20029d38:	1820      	adds	r0, r4, r0
20029d3a:	4428      	add	r0, r5
20029d3c:	4282      	cmp	r2, r0
20029d3e:	d101      	bne.n	20029d44 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xcc>
20029d40:	440c      	add	r4, r1
20029d42:	e7c7      	b.n	20029cd4 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x5c>
20029d44:	f802 cf01 	strb.w	ip, [r2, #1]!
20029d48:	e7f8      	b.n	20029d3c <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xc4>
20029d4a:	462b      	mov	r3, r5
20029d4c:	464a      	mov	r2, r9
20029d4e:	4639      	mov	r1, r7
20029d50:	4630      	mov	r0, r6
20029d52:	950c      	str	r5, [sp, #48]	@ 0x30
20029d54:	b003      	add	sp, #12
20029d56:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029d5a:	f7ff be03 	b.w	20029964 <mbedtls_rsa_private>
20029d5e:	4801      	ldr	r0, [pc, #4]	@ (20029d64 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xec>)
20029d60:	e7dd      	b.n	20029d1e <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa6>
20029d62:	bf00      	nop
20029d64:	ffffbf80 	.word	0xffffbf80

20029d68 <mbedtls_rsa_pkcs1_encrypt>:
20029d68:	b410      	push	{r4}
20029d6a:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029d6e:	b91c      	cbnz	r4, 20029d78 <mbedtls_rsa_pkcs1_encrypt+0x10>
20029d70:	f85d 4b04 	ldr.w	r4, [sp], #4
20029d74:	f7ff bf80 	b.w	20029c78 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>
20029d78:	4801      	ldr	r0, [pc, #4]	@ (20029d80 <mbedtls_rsa_pkcs1_encrypt+0x18>)
20029d7a:	f85d 4b04 	ldr.w	r4, [sp], #4
20029d7e:	4770      	bx	lr
20029d80:	ffffbf00 	.word	0xffffbf00

20029d84 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>:
20029d84:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20029d88:	4698      	mov	r8, r3
20029d8a:	f5ad 6d81 	sub.w	sp, sp, #1032	@ 0x408
20029d8e:	f1b8 0f01 	cmp.w	r8, #1
20029d92:	f8dd 3424 	ldr.w	r3, [sp, #1060]	@ 0x424
20029d96:	d103      	bne.n	20029da0 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x1c>
20029d98:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029d9c:	2c00      	cmp	r4, #0
20029d9e:	d17c      	bne.n	20029e9a <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029da0:	6845      	ldr	r5, [r0, #4]
20029da2:	f1a5 0410 	sub.w	r4, r5, #16
20029da6:	f5b4 7f7c 	cmp.w	r4, #1008	@ 0x3f0
20029daa:	d876      	bhi.n	20029e9a <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029dac:	ae02      	add	r6, sp, #8
20029dae:	f1b8 0f00 	cmp.w	r8, #0
20029db2:	d153      	bne.n	20029e5c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xd8>
20029db4:	4632      	mov	r2, r6
20029db6:	4619      	mov	r1, r3
20029db8:	f7ff fd9e 	bl	200298f8 <mbedtls_rsa_public>
20029dbc:	4604      	mov	r4, r0
20029dbe:	2800      	cmp	r0, #0
20029dc0:	d140      	bne.n	20029e44 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029dc2:	f1b8 0f01 	cmp.w	r8, #1
20029dc6:	7831      	ldrb	r1, [r6, #0]
20029dc8:	7872      	ldrb	r2, [r6, #1]
20029dca:	f1a5 0703 	sub.w	r7, r5, #3
20029dce:	d149      	bne.n	20029e64 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xe0>
20029dd0:	f082 0202 	eor.w	r2, r2, #2
20029dd4:	ea41 0302 	orr.w	r3, r1, r2
20029dd8:	4684      	mov	ip, r0
20029dda:	4686      	mov	lr, r0
20029ddc:	4602      	mov	r2, r0
20029dde:	f10d 0109 	add.w	r1, sp, #9
20029de2:	f811 0f01 	ldrb.w	r0, [r1, #1]!
20029de6:	f10e 0e01 	add.w	lr, lr, #1
20029dea:	f1c0 0800 	rsb	r8, r0, #0
20029dee:	ea40 0008 	orr.w	r0, r0, r8
20029df2:	f3c0 10c0 	ubfx	r0, r0, #7, #1
20029df6:	f080 0001 	eor.w	r0, r0, #1
20029dfa:	ea4c 0c00 	orr.w	ip, ip, r0
20029dfe:	f1cc 0000 	rsb	r0, ip, #0
20029e02:	ea4c 0000 	orr.w	r0, ip, r0
20029e06:	f3c0 10c0 	ubfx	r0, r0, #7, #1
20029e0a:	f080 0001 	eor.w	r0, r0, #1
20029e0e:	45be      	cmp	lr, r7
20029e10:	4402      	add	r2, r0
20029e12:	d3e6      	bcc.n	20029de2 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x5e>
20029e14:	f10d 000a 	add.w	r0, sp, #10
20029e18:	1881      	adds	r1, r0, r2
20029e1a:	5c80      	ldrb	r0, [r0, r2]
20029e1c:	3101      	adds	r1, #1
20029e1e:	4303      	orrs	r3, r0
20029e20:	2a07      	cmp	r2, #7
20029e22:	bf98      	it	ls
20029e24:	f043 0301 	orrls.w	r3, r3, #1
20029e28:	bb9b      	cbnz	r3, 20029e92 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x10e>
20029e2a:	1b8b      	subs	r3, r1, r6
20029e2c:	1aea      	subs	r2, r5, r3
20029e2e:	f8dd 342c 	ldr.w	r3, [sp, #1068]	@ 0x42c
20029e32:	429a      	cmp	r2, r3
20029e34:	d82f      	bhi.n	20029e96 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x112>
20029e36:	f8dd 3420 	ldr.w	r3, [sp, #1056]	@ 0x420
20029e3a:	f8dd 0428 	ldr.w	r0, [sp, #1064]	@ 0x428
20029e3e:	601a      	str	r2, [r3, #0]
20029e40:	f000 fcfa 	bl	2002a838 <memcpy>
20029e44:	2300      	movs	r3, #0
20029e46:	461a      	mov	r2, r3
20029e48:	54f2      	strb	r2, [r6, r3]
20029e4a:	3301      	adds	r3, #1
20029e4c:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
20029e50:	d1fa      	bne.n	20029e48 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc4>
20029e52:	4620      	mov	r0, r4
20029e54:	f50d 6d81 	add.w	sp, sp, #1032	@ 0x408
20029e58:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20029e5c:	9600      	str	r6, [sp, #0]
20029e5e:	f7ff fd81 	bl	20029964 <mbedtls_rsa_private>
20029e62:	e7ab      	b.n	20029dbc <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x38>
20029e64:	f082 0201 	eor.w	r2, r2, #1
20029e68:	ea41 0302 	orr.w	r3, r1, r2
20029e6c:	4684      	mov	ip, r0
20029e6e:	4602      	mov	r2, r0
20029e70:	f10d 0109 	add.w	r1, sp, #9
20029e74:	f811 ef01 	ldrb.w	lr, [r1, #1]!
20029e78:	3001      	adds	r0, #1
20029e7a:	f1be 0fff 	cmp.w	lr, #255	@ 0xff
20029e7e:	bf18      	it	ne
20029e80:	f04c 0c01 	orrne.w	ip, ip, #1
20029e84:	42b8      	cmp	r0, r7
20029e86:	f08c 0e01 	eor.w	lr, ip, #1
20029e8a:	fa52 f28e 	uxtab	r2, r2, lr
20029e8e:	d3f1      	bcc.n	20029e74 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xf0>
20029e90:	e7c0      	b.n	20029e14 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x90>
20029e92:	4c03      	ldr	r4, [pc, #12]	@ (20029ea0 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x11c>)
20029e94:	e7d6      	b.n	20029e44 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029e96:	4c03      	ldr	r4, [pc, #12]	@ (20029ea4 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x120>)
20029e98:	e7d4      	b.n	20029e44 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029e9a:	4c03      	ldr	r4, [pc, #12]	@ (20029ea8 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x124>)
20029e9c:	e7d9      	b.n	20029e52 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xce>
20029e9e:	bf00      	nop
20029ea0:	ffffbf00 	.word	0xffffbf00
20029ea4:	ffffbc00 	.word	0xffffbc00
20029ea8:	ffffbf80 	.word	0xffffbf80

20029eac <mbedtls_rsa_pkcs1_decrypt>:
20029eac:	b410      	push	{r4}
20029eae:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029eb2:	b91c      	cbnz	r4, 20029ebc <mbedtls_rsa_pkcs1_decrypt+0x10>
20029eb4:	f85d 4b04 	ldr.w	r4, [sp], #4
20029eb8:	f7ff bf64 	b.w	20029d84 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>
20029ebc:	4801      	ldr	r0, [pc, #4]	@ (20029ec4 <mbedtls_rsa_pkcs1_decrypt+0x18>)
20029ebe:	f85d 4b04 	ldr.w	r4, [sp], #4
20029ec2:	4770      	bx	lr
20029ec4:	ffffbf00 	.word	0xffffbf00

20029ec8 <mbedtls_rsa_rsassa_pkcs1_v15_sign>:
20029ec8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029ecc:	4692      	mov	sl, r2
20029ece:	2200      	movs	r2, #0
20029ed0:	b089      	sub	sp, #36	@ 0x24
20029ed2:	2b01      	cmp	r3, #1
20029ed4:	4604      	mov	r4, r0
20029ed6:	461f      	mov	r7, r3
20029ed8:	e9cd 2206 	strd	r2, r2, [sp, #24]
20029edc:	f89d 8048 	ldrb.w	r8, [sp, #72]	@ 0x48
20029ee0:	f8dd 904c 	ldr.w	r9, [sp, #76]	@ 0x4c
20029ee4:	9e15      	ldr	r6, [sp, #84]	@ 0x54
20029ee6:	9102      	str	r1, [sp, #8]
20029ee8:	d107      	bne.n	20029efa <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
20029eea:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
20029eee:	b122      	cbz	r2, 20029efa <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
20029ef0:	4d59      	ldr	r5, [pc, #356]	@ (2002a058 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x190>)
20029ef2:	4628      	mov	r0, r5
20029ef4:	b009      	add	sp, #36	@ 0x24
20029ef6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029efa:	f8d4 b004 	ldr.w	fp, [r4, #4]
20029efe:	f1ab 0503 	sub.w	r5, fp, #3
20029f02:	f1b8 0f00 	cmp.w	r8, #0
20029f06:	d014      	beq.n	20029f32 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x6a>
20029f08:	4640      	mov	r0, r8
20029f0a:	f7fb ff77 	bl	20025dfc <mbedtls_md_info_from_type>
20029f0e:	4681      	mov	r9, r0
20029f10:	2800      	cmp	r0, #0
20029f12:	d0ed      	beq.n	20029ef0 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029f14:	4640      	mov	r0, r8
20029f16:	aa06      	add	r2, sp, #24
20029f18:	a907      	add	r1, sp, #28
20029f1a:	f7ff f9d3 	bl	200292c4 <mbedtls_oid_get_oid_by_md>
20029f1e:	2800      	cmp	r0, #0
20029f20:	d1e6      	bne.n	20029ef0 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029f22:	9a06      	ldr	r2, [sp, #24]
20029f24:	4648      	mov	r0, r9
20029f26:	1aaa      	subs	r2, r5, r2
20029f28:	f1a2 050a 	sub.w	r5, r2, #10
20029f2c:	f7fb ff72 	bl	20025e14 <mbedtls_md_get_size>
20029f30:	4681      	mov	r9, r0
20029f32:	eba5 0209 	sub.w	r2, r5, r9
20029f36:	2a07      	cmp	r2, #7
20029f38:	d9da      	bls.n	20029ef0 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029f3a:	4593      	cmp	fp, r2
20029f3c:	d3d8      	bcc.n	20029ef0 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029f3e:	46b3      	mov	fp, r6
20029f40:	2500      	movs	r5, #0
20029f42:	2101      	movs	r1, #1
20029f44:	f80b 5b02 	strb.w	r5, [fp], #2
20029f48:	4658      	mov	r0, fp
20029f4a:	7071      	strb	r1, [r6, #1]
20029f4c:	21ff      	movs	r1, #255	@ 0xff
20029f4e:	9203      	str	r2, [sp, #12]
20029f50:	f000 fc58 	bl	2002a804 <memset>
20029f54:	9a03      	ldr	r2, [sp, #12]
20029f56:	eb0b 0002 	add.w	r0, fp, r2
20029f5a:	f80b 5002 	strb.w	r5, [fp, r2]
20029f5e:	f1b8 0f00 	cmp.w	r8, #0
20029f62:	d10c      	bne.n	20029f7e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xb6>
20029f64:	464a      	mov	r2, r9
20029f66:	9914      	ldr	r1, [sp, #80]	@ 0x50
20029f68:	3001      	adds	r0, #1
20029f6a:	f000 fc65 	bl	2002a838 <memcpy>
20029f6e:	bb8f      	cbnz	r7, 20029fd4 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x10c>
20029f70:	4632      	mov	r2, r6
20029f72:	4631      	mov	r1, r6
20029f74:	4620      	mov	r0, r4
20029f76:	f7ff fcbf 	bl	200298f8 <mbedtls_rsa_public>
20029f7a:	4605      	mov	r5, r0
20029f7c:	e7b9      	b.n	20029ef2 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
20029f7e:	2130      	movs	r1, #48	@ 0x30
20029f80:	7041      	strb	r1, [r0, #1]
20029f82:	9a06      	ldr	r2, [sp, #24]
20029f84:	70c1      	strb	r1, [r0, #3]
20029f86:	3208      	adds	r2, #8
20029f88:	fa52 f289 	uxtab	r2, r2, r9
20029f8c:	7082      	strb	r2, [r0, #2]
20029f8e:	9a06      	ldr	r2, [sp, #24]
20029f90:	f100 0807 	add.w	r8, r0, #7
20029f94:	b2d1      	uxtb	r1, r2
20029f96:	f101 0c04 	add.w	ip, r1, #4
20029f9a:	f880 c004 	strb.w	ip, [r0, #4]
20029f9e:	f04f 0c06 	mov.w	ip, #6
20029fa2:	7181      	strb	r1, [r0, #6]
20029fa4:	f880 c005 	strb.w	ip, [r0, #5]
20029fa8:	9907      	ldr	r1, [sp, #28]
20029faa:	4640      	mov	r0, r8
20029fac:	9203      	str	r2, [sp, #12]
20029fae:	f000 fc43 	bl	2002a838 <memcpy>
20029fb2:	2105      	movs	r1, #5
20029fb4:	9a03      	ldr	r2, [sp, #12]
20029fb6:	fa5f fb89 	uxtb.w	fp, r9
20029fba:	eb08 0002 	add.w	r0, r8, r2
20029fbe:	f808 1002 	strb.w	r1, [r8, r2]
20029fc2:	2204      	movs	r2, #4
20029fc4:	7045      	strb	r5, [r0, #1]
20029fc6:	7082      	strb	r2, [r0, #2]
20029fc8:	f880 b003 	strb.w	fp, [r0, #3]
20029fcc:	464a      	mov	r2, r9
20029fce:	9914      	ldr	r1, [sp, #80]	@ 0x50
20029fd0:	3004      	adds	r0, #4
20029fd2:	e7ca      	b.n	20029f6a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xa2>
20029fd4:	6865      	ldr	r5, [r4, #4]
20029fd6:	2001      	movs	r0, #1
20029fd8:	4629      	mov	r1, r5
20029fda:	f000 fb31 	bl	2002a640 <calloc>
20029fde:	4607      	mov	r7, r0
20029fe0:	b140      	cbz	r0, 20029ff4 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x12c>
20029fe2:	4629      	mov	r1, r5
20029fe4:	2001      	movs	r0, #1
20029fe6:	f000 fb2b 	bl	2002a640 <calloc>
20029fea:	4680      	mov	r8, r0
20029fec:	b928      	cbnz	r0, 20029ffa <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x132>
20029fee:	4638      	mov	r0, r7
20029ff0:	f000 fb42 	bl	2002a678 <free>
20029ff4:	f06f 050f 	mvn.w	r5, #15
20029ff8:	e77b      	b.n	20029ef2 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
20029ffa:	4633      	mov	r3, r6
20029ffc:	4652      	mov	r2, sl
20029ffe:	4620      	mov	r0, r4
2002a000:	9902      	ldr	r1, [sp, #8]
2002a002:	9700      	str	r7, [sp, #0]
2002a004:	f7ff fcae 	bl	20029964 <mbedtls_rsa_private>
2002a008:	4605      	mov	r5, r0
2002a00a:	b9a0      	cbnz	r0, 2002a036 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
2002a00c:	4642      	mov	r2, r8
2002a00e:	4639      	mov	r1, r7
2002a010:	4620      	mov	r0, r4
2002a012:	f7ff fc71 	bl	200298f8 <mbedtls_rsa_public>
2002a016:	4605      	mov	r5, r0
2002a018:	b968      	cbnz	r0, 2002a036 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
2002a01a:	4601      	mov	r1, r0
2002a01c:	4603      	mov	r3, r0
2002a01e:	6862      	ldr	r2, [r4, #4]
2002a020:	429a      	cmp	r2, r3
2002a022:	d10f      	bne.n	2002a044 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x17c>
2002a024:	f88d 1017 	strb.w	r1, [sp, #23]
2002a028:	f89d 3017 	ldrb.w	r3, [sp, #23]
2002a02c:	b98b      	cbnz	r3, 2002a052 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x18a>
2002a02e:	4639      	mov	r1, r7
2002a030:	4630      	mov	r0, r6
2002a032:	f000 fc01 	bl	2002a838 <memcpy>
2002a036:	4638      	mov	r0, r7
2002a038:	f000 fb1e 	bl	2002a678 <free>
2002a03c:	4640      	mov	r0, r8
2002a03e:	f000 fb1b 	bl	2002a678 <free>
2002a042:	e756      	b.n	20029ef2 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
2002a044:	f818 0003 	ldrb.w	r0, [r8, r3]
2002a048:	5cf4      	ldrb	r4, [r6, r3]
2002a04a:	3301      	adds	r3, #1
2002a04c:	4060      	eors	r0, r4
2002a04e:	4301      	orrs	r1, r0
2002a050:	e7e6      	b.n	2002a020 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x158>
2002a052:	4d02      	ldr	r5, [pc, #8]	@ (2002a05c <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x194>)
2002a054:	e7ef      	b.n	2002a036 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
2002a056:	bf00      	nop
2002a058:	ffffbf80 	.word	0xffffbf80
2002a05c:	ffffbd00 	.word	0xffffbd00

2002a060 <mbedtls_rsa_pkcs1_sign>:
2002a060:	b430      	push	{r4, r5}
2002a062:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a066:	f89d 4008 	ldrb.w	r4, [sp, #8]
2002a06a:	b91d      	cbnz	r5, 2002a074 <mbedtls_rsa_pkcs1_sign+0x14>
2002a06c:	9402      	str	r4, [sp, #8]
2002a06e:	bc30      	pop	{r4, r5}
2002a070:	f7ff bf2a 	b.w	20029ec8 <mbedtls_rsa_rsassa_pkcs1_v15_sign>
2002a074:	4801      	ldr	r0, [pc, #4]	@ (2002a07c <mbedtls_rsa_pkcs1_sign+0x1c>)
2002a076:	bc30      	pop	{r4, r5}
2002a078:	4770      	bx	lr
2002a07a:	bf00      	nop
2002a07c:	ffffbf00 	.word	0xffffbf00

2002a080 <mbedtls_rsa_rsassa_pkcs1_v15_verify>:
2002a080:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a084:	461c      	mov	r4, r3
2002a086:	f2ad 4d2c 	subw	sp, sp, #1068	@ 0x42c
2002a08a:	f89d 3450 	ldrb.w	r3, [sp, #1104]	@ 0x450
2002a08e:	2c01      	cmp	r4, #1
2002a090:	9303      	str	r3, [sp, #12]
2002a092:	f8dd 8454 	ldr.w	r8, [sp, #1108]	@ 0x454
2002a096:	f8dd 345c 	ldr.w	r3, [sp, #1116]	@ 0x45c
2002a09a:	d108      	bne.n	2002a0ae <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
2002a09c:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a0a0:	b12d      	cbz	r5, 2002a0ae <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
2002a0a2:	4d60      	ldr	r5, [pc, #384]	@ (2002a224 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a4>)
2002a0a4:	4628      	mov	r0, r5
2002a0a6:	f20d 4d2c 	addw	sp, sp, #1068	@ 0x42c
2002a0aa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a0ae:	6846      	ldr	r6, [r0, #4]
2002a0b0:	f1a6 0510 	sub.w	r5, r6, #16
2002a0b4:	f5b5 7f7c 	cmp.w	r5, #1008	@ 0x3f0
2002a0b8:	d8f3      	bhi.n	2002a0a2 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
2002a0ba:	af0a      	add	r7, sp, #40	@ 0x28
2002a0bc:	b954      	cbnz	r4, 2002a0d4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x54>
2002a0be:	463a      	mov	r2, r7
2002a0c0:	4619      	mov	r1, r3
2002a0c2:	f7ff fc19 	bl	200298f8 <mbedtls_rsa_public>
2002a0c6:	4605      	mov	r5, r0
2002a0c8:	2800      	cmp	r0, #0
2002a0ca:	d1eb      	bne.n	2002a0a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a0cc:	783b      	ldrb	r3, [r7, #0]
2002a0ce:	b12b      	cbz	r3, 2002a0dc <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x5c>
2002a0d0:	4d55      	ldr	r5, [pc, #340]	@ (2002a228 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a8>)
2002a0d2:	e7e7      	b.n	2002a0a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a0d4:	9700      	str	r7, [sp, #0]
2002a0d6:	f7ff fc45 	bl	20029964 <mbedtls_rsa_private>
2002a0da:	e7f4      	b.n	2002a0c6 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x46>
2002a0dc:	787b      	ldrb	r3, [r7, #1]
2002a0de:	ac06      	add	r4, sp, #24
2002a0e0:	f10d 002a 	add.w	r0, sp, #42	@ 0x2a
2002a0e4:	2b01      	cmp	r3, #1
2002a0e6:	6020      	str	r0, [r4, #0]
2002a0e8:	d1f2      	bne.n	2002a0d0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a0ea:	1e73      	subs	r3, r6, #1
2002a0ec:	443b      	add	r3, r7
2002a0ee:	7802      	ldrb	r2, [r0, #0]
2002a0f0:	b992      	cbnz	r2, 2002a118 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x98>
2002a0f2:	3001      	adds	r0, #1
2002a0f4:	1bc7      	subs	r7, r0, r7
2002a0f6:	2f0a      	cmp	r7, #10
2002a0f8:	6020      	str	r0, [r4, #0]
2002a0fa:	dde9      	ble.n	2002a0d0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a0fc:	1bf6      	subs	r6, r6, r7
2002a0fe:	4546      	cmp	r6, r8
2002a100:	d112      	bne.n	2002a128 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a102:	9b03      	ldr	r3, [sp, #12]
2002a104:	b983      	cbnz	r3, 2002a128 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a106:	4642      	mov	r2, r8
2002a108:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a10c:	f000 fb6a 	bl	2002a7e4 <memcmp>
2002a110:	2800      	cmp	r0, #0
2002a112:	d0c7      	beq.n	2002a0a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a114:	4d45      	ldr	r5, [pc, #276]	@ (2002a22c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1ac>)
2002a116:	e7c5      	b.n	2002a0a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a118:	4298      	cmp	r0, r3
2002a11a:	d2d9      	bcs.n	2002a0d0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a11c:	2aff      	cmp	r2, #255	@ 0xff
2002a11e:	f100 0001 	add.w	r0, r0, #1
2002a122:	d1d5      	bne.n	2002a0d0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a124:	6020      	str	r0, [r4, #0]
2002a126:	e7e2      	b.n	2002a0ee <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x6e>
2002a128:	9803      	ldr	r0, [sp, #12]
2002a12a:	f7fb fe67 	bl	20025dfc <mbedtls_md_info_from_type>
2002a12e:	2800      	cmp	r0, #0
2002a130:	d0b7      	beq.n	2002a0a2 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
2002a132:	f7fb fe6f 	bl	20025e14 <mbedtls_md_get_size>
2002a136:	f8d4 a000 	ldr.w	sl, [r4]
2002a13a:	af05      	add	r7, sp, #20
2002a13c:	eb0a 0806 	add.w	r8, sl, r6
2002a140:	4681      	mov	r9, r0
2002a142:	2330      	movs	r3, #48	@ 0x30
2002a144:	463a      	mov	r2, r7
2002a146:	4641      	mov	r1, r8
2002a148:	4620      	mov	r0, r4
2002a14a:	f7fd fb95 	bl	20027878 <mbedtls_asn1_get_tag>
2002a14e:	2800      	cmp	r0, #0
2002a150:	d1e0      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a152:	f8d4 b000 	ldr.w	fp, [r4]
2002a156:	f10a 0a02 	add.w	sl, sl, #2
2002a15a:	45d3      	cmp	fp, sl
2002a15c:	d1da      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a15e:	683b      	ldr	r3, [r7, #0]
2002a160:	3302      	adds	r3, #2
2002a162:	42b3      	cmp	r3, r6
2002a164:	d1d6      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a166:	2330      	movs	r3, #48	@ 0x30
2002a168:	463a      	mov	r2, r7
2002a16a:	4641      	mov	r1, r8
2002a16c:	4620      	mov	r0, r4
2002a16e:	f7fd fb83 	bl	20027878 <mbedtls_asn1_get_tag>
2002a172:	2800      	cmp	r0, #0
2002a174:	d1ce      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a176:	f8d4 a000 	ldr.w	sl, [r4]
2002a17a:	f10b 0b02 	add.w	fp, fp, #2
2002a17e:	45da      	cmp	sl, fp
2002a180:	d1c8      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a182:	683b      	ldr	r3, [r7, #0]
2002a184:	3306      	adds	r3, #6
2002a186:	444b      	add	r3, r9
2002a188:	42b3      	cmp	r3, r6
2002a18a:	d1c3      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a18c:	2306      	movs	r3, #6
2002a18e:	4641      	mov	r1, r8
2002a190:	4620      	mov	r0, r4
2002a192:	aa08      	add	r2, sp, #32
2002a194:	ae07      	add	r6, sp, #28
2002a196:	f7fd fb6f 	bl	20027878 <mbedtls_asn1_get_tag>
2002a19a:	2800      	cmp	r0, #0
2002a19c:	d1ba      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a19e:	6823      	ldr	r3, [r4, #0]
2002a1a0:	f10a 0a02 	add.w	sl, sl, #2
2002a1a4:	4553      	cmp	r3, sl
2002a1a6:	d1b5      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1a8:	9a08      	ldr	r2, [sp, #32]
2002a1aa:	f10d 0a13 	add.w	sl, sp, #19
2002a1ae:	9309      	str	r3, [sp, #36]	@ 0x24
2002a1b0:	4651      	mov	r1, sl
2002a1b2:	4413      	add	r3, r2
2002a1b4:	4630      	mov	r0, r6
2002a1b6:	6023      	str	r3, [r4, #0]
2002a1b8:	f7ff f86a 	bl	20029290 <mbedtls_oid_get_md_alg>
2002a1bc:	2800      	cmp	r0, #0
2002a1be:	d1a9      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1c0:	f89d 3013 	ldrb.w	r3, [sp, #19]
2002a1c4:	9a03      	ldr	r2, [sp, #12]
2002a1c6:	4293      	cmp	r3, r2
2002a1c8:	d1a4      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1ca:	2305      	movs	r3, #5
2002a1cc:	463a      	mov	r2, r7
2002a1ce:	4641      	mov	r1, r8
2002a1d0:	4620      	mov	r0, r4
2002a1d2:	f8d4 a000 	ldr.w	sl, [r4]
2002a1d6:	f7fd fb4f 	bl	20027878 <mbedtls_asn1_get_tag>
2002a1da:	2800      	cmp	r0, #0
2002a1dc:	d19a      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1de:	6826      	ldr	r6, [r4, #0]
2002a1e0:	f10a 0a02 	add.w	sl, sl, #2
2002a1e4:	4556      	cmp	r6, sl
2002a1e6:	d195      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1e8:	2304      	movs	r3, #4
2002a1ea:	463a      	mov	r2, r7
2002a1ec:	4641      	mov	r1, r8
2002a1ee:	4620      	mov	r0, r4
2002a1f0:	f7fd fb42 	bl	20027878 <mbedtls_asn1_get_tag>
2002a1f4:	2800      	cmp	r0, #0
2002a1f6:	d18d      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1f8:	6824      	ldr	r4, [r4, #0]
2002a1fa:	3602      	adds	r6, #2
2002a1fc:	42b4      	cmp	r4, r6
2002a1fe:	d189      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a200:	683b      	ldr	r3, [r7, #0]
2002a202:	454b      	cmp	r3, r9
2002a204:	d186      	bne.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a206:	464a      	mov	r2, r9
2002a208:	4620      	mov	r0, r4
2002a20a:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a20e:	f000 fae9 	bl	2002a7e4 <memcmp>
2002a212:	2800      	cmp	r0, #0
2002a214:	f47f af7e 	bne.w	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a218:	444c      	add	r4, r9
2002a21a:	45a0      	cmp	r8, r4
2002a21c:	f43f af42 	beq.w	2002a0a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a220:	e778      	b.n	2002a114 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a222:	bf00      	nop
2002a224:	ffffbf80 	.word	0xffffbf80
2002a228:	ffffbf00 	.word	0xffffbf00
2002a22c:	ffffbc80 	.word	0xffffbc80

2002a230 <mbedtls_rsa_pkcs1_verify>:
2002a230:	b430      	push	{r4, r5}
2002a232:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a236:	f89d 4008 	ldrb.w	r4, [sp, #8]
2002a23a:	b91d      	cbnz	r5, 2002a244 <mbedtls_rsa_pkcs1_verify+0x14>
2002a23c:	9402      	str	r4, [sp, #8]
2002a23e:	bc30      	pop	{r4, r5}
2002a240:	f7ff bf1e 	b.w	2002a080 <mbedtls_rsa_rsassa_pkcs1_v15_verify>
2002a244:	4801      	ldr	r0, [pc, #4]	@ (2002a24c <mbedtls_rsa_pkcs1_verify+0x1c>)
2002a246:	bc30      	pop	{r4, r5}
2002a248:	4770      	bx	lr
2002a24a:	bf00      	nop
2002a24c:	ffffbf00 	.word	0xffffbf00

2002a250 <mbedtls_rsa_free>:
2002a250:	b510      	push	{r4, lr}
2002a252:	4604      	mov	r4, r0
2002a254:	308c      	adds	r0, #140	@ 0x8c
2002a256:	f7fd fd44 	bl	20027ce2 <mbedtls_mpi_free>
2002a25a:	f104 0098 	add.w	r0, r4, #152	@ 0x98
2002a25e:	f7fd fd40 	bl	20027ce2 <mbedtls_mpi_free>
2002a262:	f104 0080 	add.w	r0, r4, #128	@ 0x80
2002a266:	f7fd fd3c 	bl	20027ce2 <mbedtls_mpi_free>
2002a26a:	f104 0074 	add.w	r0, r4, #116	@ 0x74
2002a26e:	f7fd fd38 	bl	20027ce2 <mbedtls_mpi_free>
2002a272:	f104 0068 	add.w	r0, r4, #104	@ 0x68
2002a276:	f7fd fd34 	bl	20027ce2 <mbedtls_mpi_free>
2002a27a:	f104 005c 	add.w	r0, r4, #92	@ 0x5c
2002a27e:	f7fd fd30 	bl	20027ce2 <mbedtls_mpi_free>
2002a282:	f104 0050 	add.w	r0, r4, #80	@ 0x50
2002a286:	f7fd fd2c 	bl	20027ce2 <mbedtls_mpi_free>
2002a28a:	f104 0044 	add.w	r0, r4, #68	@ 0x44
2002a28e:	f7fd fd28 	bl	20027ce2 <mbedtls_mpi_free>
2002a292:	f104 0038 	add.w	r0, r4, #56	@ 0x38
2002a296:	f7fd fd24 	bl	20027ce2 <mbedtls_mpi_free>
2002a29a:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
2002a29e:	f7fd fd20 	bl	20027ce2 <mbedtls_mpi_free>
2002a2a2:	f104 0020 	add.w	r0, r4, #32
2002a2a6:	f7fd fd1c 	bl	20027ce2 <mbedtls_mpi_free>
2002a2aa:	f104 0014 	add.w	r0, r4, #20
2002a2ae:	f7fd fd18 	bl	20027ce2 <mbedtls_mpi_free>
2002a2b2:	f104 0008 	add.w	r0, r4, #8
2002a2b6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002a2ba:	f7fd bd12 	b.w	20027ce2 <mbedtls_mpi_free>
	...

2002a2c0 <__aeabi_uldivmod>:
2002a2c0:	b953      	cbnz	r3, 2002a2d8 <__aeabi_uldivmod+0x18>
2002a2c2:	b94a      	cbnz	r2, 2002a2d8 <__aeabi_uldivmod+0x18>
2002a2c4:	2900      	cmp	r1, #0
2002a2c6:	bf08      	it	eq
2002a2c8:	2800      	cmpeq	r0, #0
2002a2ca:	bf1c      	itt	ne
2002a2cc:	f04f 31ff 	movne.w	r1, #4294967295
2002a2d0:	f04f 30ff 	movne.w	r0, #4294967295
2002a2d4:	f000 b9b2 	b.w	2002a63c <__aeabi_idiv0>
2002a2d8:	f1ad 0c08 	sub.w	ip, sp, #8
2002a2dc:	e96d ce04 	strd	ip, lr, [sp, #-16]!
2002a2e0:	f000 f806 	bl	2002a2f0 <__udivmoddi4>
2002a2e4:	f8dd e004 	ldr.w	lr, [sp, #4]
2002a2e8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
2002a2ec:	b004      	add	sp, #16
2002a2ee:	4770      	bx	lr

2002a2f0 <__udivmoddi4>:
2002a2f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a2f4:	468c      	mov	ip, r1
2002a2f6:	9e09      	ldr	r6, [sp, #36]	@ 0x24
2002a2f8:	4604      	mov	r4, r0
2002a2fa:	460f      	mov	r7, r1
2002a2fc:	2b00      	cmp	r3, #0
2002a2fe:	d148      	bne.n	2002a392 <__udivmoddi4+0xa2>
2002a300:	428a      	cmp	r2, r1
2002a302:	4615      	mov	r5, r2
2002a304:	d95e      	bls.n	2002a3c4 <__udivmoddi4+0xd4>
2002a306:	fab2 f382 	clz	r3, r2
2002a30a:	b13b      	cbz	r3, 2002a31c <__udivmoddi4+0x2c>
2002a30c:	f1c3 0220 	rsb	r2, r3, #32
2002a310:	409f      	lsls	r7, r3
2002a312:	409d      	lsls	r5, r3
2002a314:	409c      	lsls	r4, r3
2002a316:	fa20 f202 	lsr.w	r2, r0, r2
2002a31a:	4317      	orrs	r7, r2
2002a31c:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a320:	fa1f fc85 	uxth.w	ip, r5
2002a324:	0c22      	lsrs	r2, r4, #16
2002a326:	fbb7 f1fe 	udiv	r1, r7, lr
2002a32a:	fb0e 7711 	mls	r7, lr, r1, r7
2002a32e:	fb01 f00c 	mul.w	r0, r1, ip
2002a332:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
2002a336:	4290      	cmp	r0, r2
2002a338:	d907      	bls.n	2002a34a <__udivmoddi4+0x5a>
2002a33a:	18aa      	adds	r2, r5, r2
2002a33c:	f101 37ff 	add.w	r7, r1, #4294967295
2002a340:	d202      	bcs.n	2002a348 <__udivmoddi4+0x58>
2002a342:	4290      	cmp	r0, r2
2002a344:	f200 8158 	bhi.w	2002a5f8 <__udivmoddi4+0x308>
2002a348:	4639      	mov	r1, r7
2002a34a:	1a12      	subs	r2, r2, r0
2002a34c:	b2a4      	uxth	r4, r4
2002a34e:	fbb2 f0fe 	udiv	r0, r2, lr
2002a352:	fb0e 2210 	mls	r2, lr, r0, r2
2002a356:	fb00 fc0c 	mul.w	ip, r0, ip
2002a35a:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a35e:	45a4      	cmp	ip, r4
2002a360:	d90b      	bls.n	2002a37a <__udivmoddi4+0x8a>
2002a362:	192c      	adds	r4, r5, r4
2002a364:	f100 32ff 	add.w	r2, r0, #4294967295
2002a368:	bf2c      	ite	cs
2002a36a:	2701      	movcs	r7, #1
2002a36c:	2700      	movcc	r7, #0
2002a36e:	45a4      	cmp	ip, r4
2002a370:	d902      	bls.n	2002a378 <__udivmoddi4+0x88>
2002a372:	2f00      	cmp	r7, #0
2002a374:	f000 8143 	beq.w	2002a5fe <__udivmoddi4+0x30e>
2002a378:	4610      	mov	r0, r2
2002a37a:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
2002a37e:	eba4 040c 	sub.w	r4, r4, ip
2002a382:	2100      	movs	r1, #0
2002a384:	b11e      	cbz	r6, 2002a38e <__udivmoddi4+0x9e>
2002a386:	40dc      	lsrs	r4, r3
2002a388:	2300      	movs	r3, #0
2002a38a:	e9c6 4300 	strd	r4, r3, [r6]
2002a38e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a392:	428b      	cmp	r3, r1
2002a394:	d906      	bls.n	2002a3a4 <__udivmoddi4+0xb4>
2002a396:	b10e      	cbz	r6, 2002a39c <__udivmoddi4+0xac>
2002a398:	e9c6 0100 	strd	r0, r1, [r6]
2002a39c:	2100      	movs	r1, #0
2002a39e:	4608      	mov	r0, r1
2002a3a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a3a4:	fab3 f183 	clz	r1, r3
2002a3a8:	2900      	cmp	r1, #0
2002a3aa:	d151      	bne.n	2002a450 <__udivmoddi4+0x160>
2002a3ac:	4563      	cmp	r3, ip
2002a3ae:	f0c0 8116 	bcc.w	2002a5de <__udivmoddi4+0x2ee>
2002a3b2:	4282      	cmp	r2, r0
2002a3b4:	f240 8113 	bls.w	2002a5de <__udivmoddi4+0x2ee>
2002a3b8:	4608      	mov	r0, r1
2002a3ba:	2e00      	cmp	r6, #0
2002a3bc:	d0e7      	beq.n	2002a38e <__udivmoddi4+0x9e>
2002a3be:	e9c6 4700 	strd	r4, r7, [r6]
2002a3c2:	e7e4      	b.n	2002a38e <__udivmoddi4+0x9e>
2002a3c4:	2a00      	cmp	r2, #0
2002a3c6:	f000 80af 	beq.w	2002a528 <__udivmoddi4+0x238>
2002a3ca:	fab2 f382 	clz	r3, r2
2002a3ce:	2b00      	cmp	r3, #0
2002a3d0:	f040 80c2 	bne.w	2002a558 <__udivmoddi4+0x268>
2002a3d4:	1a8a      	subs	r2, r1, r2
2002a3d6:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a3da:	b2af      	uxth	r7, r5
2002a3dc:	2101      	movs	r1, #1
2002a3de:	0c20      	lsrs	r0, r4, #16
2002a3e0:	fbb2 fcfe 	udiv	ip, r2, lr
2002a3e4:	fb0e 221c 	mls	r2, lr, ip, r2
2002a3e8:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
2002a3ec:	fb07 f00c 	mul.w	r0, r7, ip
2002a3f0:	4290      	cmp	r0, r2
2002a3f2:	d90e      	bls.n	2002a412 <__udivmoddi4+0x122>
2002a3f4:	18aa      	adds	r2, r5, r2
2002a3f6:	f10c 38ff 	add.w	r8, ip, #4294967295
2002a3fa:	bf2c      	ite	cs
2002a3fc:	f04f 0901 	movcs.w	r9, #1
2002a400:	f04f 0900 	movcc.w	r9, #0
2002a404:	4290      	cmp	r0, r2
2002a406:	d903      	bls.n	2002a410 <__udivmoddi4+0x120>
2002a408:	f1b9 0f00 	cmp.w	r9, #0
2002a40c:	f000 80f0 	beq.w	2002a5f0 <__udivmoddi4+0x300>
2002a410:	46c4      	mov	ip, r8
2002a412:	1a12      	subs	r2, r2, r0
2002a414:	b2a4      	uxth	r4, r4
2002a416:	fbb2 f0fe 	udiv	r0, r2, lr
2002a41a:	fb0e 2210 	mls	r2, lr, r0, r2
2002a41e:	fb00 f707 	mul.w	r7, r0, r7
2002a422:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a426:	42a7      	cmp	r7, r4
2002a428:	d90e      	bls.n	2002a448 <__udivmoddi4+0x158>
2002a42a:	192c      	adds	r4, r5, r4
2002a42c:	f100 32ff 	add.w	r2, r0, #4294967295
2002a430:	bf2c      	ite	cs
2002a432:	f04f 0e01 	movcs.w	lr, #1
2002a436:	f04f 0e00 	movcc.w	lr, #0
2002a43a:	42a7      	cmp	r7, r4
2002a43c:	d903      	bls.n	2002a446 <__udivmoddi4+0x156>
2002a43e:	f1be 0f00 	cmp.w	lr, #0
2002a442:	f000 80d2 	beq.w	2002a5ea <__udivmoddi4+0x2fa>
2002a446:	4610      	mov	r0, r2
2002a448:	1be4      	subs	r4, r4, r7
2002a44a:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
2002a44e:	e799      	b.n	2002a384 <__udivmoddi4+0x94>
2002a450:	f1c1 0520 	rsb	r5, r1, #32
2002a454:	408b      	lsls	r3, r1
2002a456:	fa0c f401 	lsl.w	r4, ip, r1
2002a45a:	fa00 f901 	lsl.w	r9, r0, r1
2002a45e:	fa22 f705 	lsr.w	r7, r2, r5
2002a462:	fa2c fc05 	lsr.w	ip, ip, r5
2002a466:	408a      	lsls	r2, r1
2002a468:	431f      	orrs	r7, r3
2002a46a:	fa20 f305 	lsr.w	r3, r0, r5
2002a46e:	0c38      	lsrs	r0, r7, #16
2002a470:	4323      	orrs	r3, r4
2002a472:	fa1f fe87 	uxth.w	lr, r7
2002a476:	0c1c      	lsrs	r4, r3, #16
2002a478:	fbbc f8f0 	udiv	r8, ip, r0
2002a47c:	fb00 cc18 	mls	ip, r0, r8, ip
2002a480:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
2002a484:	fb08 fc0e 	mul.w	ip, r8, lr
2002a488:	45a4      	cmp	ip, r4
2002a48a:	d90e      	bls.n	2002a4aa <__udivmoddi4+0x1ba>
2002a48c:	193c      	adds	r4, r7, r4
2002a48e:	f108 3aff 	add.w	sl, r8, #4294967295
2002a492:	bf2c      	ite	cs
2002a494:	f04f 0b01 	movcs.w	fp, #1
2002a498:	f04f 0b00 	movcc.w	fp, #0
2002a49c:	45a4      	cmp	ip, r4
2002a49e:	d903      	bls.n	2002a4a8 <__udivmoddi4+0x1b8>
2002a4a0:	f1bb 0f00 	cmp.w	fp, #0
2002a4a4:	f000 80b8 	beq.w	2002a618 <__udivmoddi4+0x328>
2002a4a8:	46d0      	mov	r8, sl
2002a4aa:	eba4 040c 	sub.w	r4, r4, ip
2002a4ae:	fa1f fc83 	uxth.w	ip, r3
2002a4b2:	fbb4 f3f0 	udiv	r3, r4, r0
2002a4b6:	fb00 4413 	mls	r4, r0, r3, r4
2002a4ba:	fb03 fe0e 	mul.w	lr, r3, lr
2002a4be:	ea4c 4404 	orr.w	r4, ip, r4, lsl #16
2002a4c2:	45a6      	cmp	lr, r4
2002a4c4:	d90e      	bls.n	2002a4e4 <__udivmoddi4+0x1f4>
2002a4c6:	193c      	adds	r4, r7, r4
2002a4c8:	f103 30ff 	add.w	r0, r3, #4294967295
2002a4cc:	bf2c      	ite	cs
2002a4ce:	f04f 0c01 	movcs.w	ip, #1
2002a4d2:	f04f 0c00 	movcc.w	ip, #0
2002a4d6:	45a6      	cmp	lr, r4
2002a4d8:	d903      	bls.n	2002a4e2 <__udivmoddi4+0x1f2>
2002a4da:	f1bc 0f00 	cmp.w	ip, #0
2002a4de:	f000 809f 	beq.w	2002a620 <__udivmoddi4+0x330>
2002a4e2:	4603      	mov	r3, r0
2002a4e4:	ea43 4008 	orr.w	r0, r3, r8, lsl #16
2002a4e8:	eba4 040e 	sub.w	r4, r4, lr
2002a4ec:	fba0 ec02 	umull	lr, ip, r0, r2
2002a4f0:	4564      	cmp	r4, ip
2002a4f2:	4673      	mov	r3, lr
2002a4f4:	46e0      	mov	r8, ip
2002a4f6:	d302      	bcc.n	2002a4fe <__udivmoddi4+0x20e>
2002a4f8:	d107      	bne.n	2002a50a <__udivmoddi4+0x21a>
2002a4fa:	45f1      	cmp	r9, lr
2002a4fc:	d205      	bcs.n	2002a50a <__udivmoddi4+0x21a>
2002a4fe:	ebbe 0302 	subs.w	r3, lr, r2
2002a502:	eb6c 0c07 	sbc.w	ip, ip, r7
2002a506:	3801      	subs	r0, #1
2002a508:	46e0      	mov	r8, ip
2002a50a:	b15e      	cbz	r6, 2002a524 <__udivmoddi4+0x234>
2002a50c:	ebb9 0203 	subs.w	r2, r9, r3
2002a510:	eb64 0408 	sbc.w	r4, r4, r8
2002a514:	fa04 f505 	lsl.w	r5, r4, r5
2002a518:	fa22 f301 	lsr.w	r3, r2, r1
2002a51c:	40cc      	lsrs	r4, r1
2002a51e:	431d      	orrs	r5, r3
2002a520:	e9c6 5400 	strd	r5, r4, [r6]
2002a524:	2100      	movs	r1, #0
2002a526:	e732      	b.n	2002a38e <__udivmoddi4+0x9e>
2002a528:	0842      	lsrs	r2, r0, #1
2002a52a:	462f      	mov	r7, r5
2002a52c:	084b      	lsrs	r3, r1, #1
2002a52e:	46ac      	mov	ip, r5
2002a530:	ea42 72c1 	orr.w	r2, r2, r1, lsl #31
2002a534:	46ae      	mov	lr, r5
2002a536:	07c4      	lsls	r4, r0, #31
2002a538:	0c11      	lsrs	r1, r2, #16
2002a53a:	b292      	uxth	r2, r2
2002a53c:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
2002a540:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a544:	fbb1 f1f5 	udiv	r1, r1, r5
2002a548:	fbb3 f0f5 	udiv	r0, r3, r5
2002a54c:	231f      	movs	r3, #31
2002a54e:	eba2 020c 	sub.w	r2, r2, ip
2002a552:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
2002a556:	e742      	b.n	2002a3de <__udivmoddi4+0xee>
2002a558:	409d      	lsls	r5, r3
2002a55a:	f1c3 0220 	rsb	r2, r3, #32
2002a55e:	4099      	lsls	r1, r3
2002a560:	409c      	lsls	r4, r3
2002a562:	fa2c fc02 	lsr.w	ip, ip, r2
2002a566:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a56a:	fa20 f202 	lsr.w	r2, r0, r2
2002a56e:	b2af      	uxth	r7, r5
2002a570:	fbbc f8fe 	udiv	r8, ip, lr
2002a574:	430a      	orrs	r2, r1
2002a576:	fb0e cc18 	mls	ip, lr, r8, ip
2002a57a:	0c11      	lsrs	r1, r2, #16
2002a57c:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
2002a580:	fb08 fc07 	mul.w	ip, r8, r7
2002a584:	458c      	cmp	ip, r1
2002a586:	d950      	bls.n	2002a62a <__udivmoddi4+0x33a>
2002a588:	1869      	adds	r1, r5, r1
2002a58a:	f108 30ff 	add.w	r0, r8, #4294967295
2002a58e:	bf2c      	ite	cs
2002a590:	f04f 0901 	movcs.w	r9, #1
2002a594:	f04f 0900 	movcc.w	r9, #0
2002a598:	458c      	cmp	ip, r1
2002a59a:	d902      	bls.n	2002a5a2 <__udivmoddi4+0x2b2>
2002a59c:	f1b9 0f00 	cmp.w	r9, #0
2002a5a0:	d030      	beq.n	2002a604 <__udivmoddi4+0x314>
2002a5a2:	eba1 010c 	sub.w	r1, r1, ip
2002a5a6:	fbb1 f8fe 	udiv	r8, r1, lr
2002a5aa:	fb08 fc07 	mul.w	ip, r8, r7
2002a5ae:	fb0e 1118 	mls	r1, lr, r8, r1
2002a5b2:	b292      	uxth	r2, r2
2002a5b4:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a5b8:	4562      	cmp	r2, ip
2002a5ba:	d234      	bcs.n	2002a626 <__udivmoddi4+0x336>
2002a5bc:	18aa      	adds	r2, r5, r2
2002a5be:	f108 31ff 	add.w	r1, r8, #4294967295
2002a5c2:	bf2c      	ite	cs
2002a5c4:	f04f 0901 	movcs.w	r9, #1
2002a5c8:	f04f 0900 	movcc.w	r9, #0
2002a5cc:	4562      	cmp	r2, ip
2002a5ce:	d2be      	bcs.n	2002a54e <__udivmoddi4+0x25e>
2002a5d0:	f1b9 0f00 	cmp.w	r9, #0
2002a5d4:	d1bb      	bne.n	2002a54e <__udivmoddi4+0x25e>
2002a5d6:	f1a8 0102 	sub.w	r1, r8, #2
2002a5da:	442a      	add	r2, r5
2002a5dc:	e7b7      	b.n	2002a54e <__udivmoddi4+0x25e>
2002a5de:	1a84      	subs	r4, r0, r2
2002a5e0:	eb6c 0203 	sbc.w	r2, ip, r3
2002a5e4:	2001      	movs	r0, #1
2002a5e6:	4617      	mov	r7, r2
2002a5e8:	e6e7      	b.n	2002a3ba <__udivmoddi4+0xca>
2002a5ea:	442c      	add	r4, r5
2002a5ec:	3802      	subs	r0, #2
2002a5ee:	e72b      	b.n	2002a448 <__udivmoddi4+0x158>
2002a5f0:	f1ac 0c02 	sub.w	ip, ip, #2
2002a5f4:	442a      	add	r2, r5
2002a5f6:	e70c      	b.n	2002a412 <__udivmoddi4+0x122>
2002a5f8:	3902      	subs	r1, #2
2002a5fa:	442a      	add	r2, r5
2002a5fc:	e6a5      	b.n	2002a34a <__udivmoddi4+0x5a>
2002a5fe:	442c      	add	r4, r5
2002a600:	3802      	subs	r0, #2
2002a602:	e6ba      	b.n	2002a37a <__udivmoddi4+0x8a>
2002a604:	eba5 0c0c 	sub.w	ip, r5, ip
2002a608:	f1a8 0002 	sub.w	r0, r8, #2
2002a60c:	4461      	add	r1, ip
2002a60e:	fbb1 f8fe 	udiv	r8, r1, lr
2002a612:	fb08 fc07 	mul.w	ip, r8, r7
2002a616:	e7ca      	b.n	2002a5ae <__udivmoddi4+0x2be>
2002a618:	f1a8 0802 	sub.w	r8, r8, #2
2002a61c:	443c      	add	r4, r7
2002a61e:	e744      	b.n	2002a4aa <__udivmoddi4+0x1ba>
2002a620:	3b02      	subs	r3, #2
2002a622:	443c      	add	r4, r7
2002a624:	e75e      	b.n	2002a4e4 <__udivmoddi4+0x1f4>
2002a626:	4641      	mov	r1, r8
2002a628:	e791      	b.n	2002a54e <__udivmoddi4+0x25e>
2002a62a:	eba1 010c 	sub.w	r1, r1, ip
2002a62e:	4640      	mov	r0, r8
2002a630:	fbb1 f8fe 	udiv	r8, r1, lr
2002a634:	fb08 fc07 	mul.w	ip, r8, r7
2002a638:	e7b9      	b.n	2002a5ae <__udivmoddi4+0x2be>
2002a63a:	bf00      	nop

2002a63c <__aeabi_idiv0>:
2002a63c:	4770      	bx	lr
2002a63e:	bf00      	nop

2002a640 <calloc>:
2002a640:	4b02      	ldr	r3, [pc, #8]	@ (2002a64c <calloc+0xc>)
2002a642:	460a      	mov	r2, r1
2002a644:	4601      	mov	r1, r0
2002a646:	6818      	ldr	r0, [r3, #0]
2002a648:	f000 b802 	b.w	2002a650 <_calloc_r>
2002a64c:	20044908 	.word	0x20044908

2002a650 <_calloc_r>:
2002a650:	b570      	push	{r4, r5, r6, lr}
2002a652:	fba1 5402 	umull	r5, r4, r1, r2
2002a656:	b934      	cbnz	r4, 2002a666 <_calloc_r+0x16>
2002a658:	4629      	mov	r1, r5
2002a65a:	f000 f837 	bl	2002a6cc <_malloc_r>
2002a65e:	4606      	mov	r6, r0
2002a660:	b928      	cbnz	r0, 2002a66e <_calloc_r+0x1e>
2002a662:	4630      	mov	r0, r6
2002a664:	bd70      	pop	{r4, r5, r6, pc}
2002a666:	220c      	movs	r2, #12
2002a668:	2600      	movs	r6, #0
2002a66a:	6002      	str	r2, [r0, #0]
2002a66c:	e7f9      	b.n	2002a662 <_calloc_r+0x12>
2002a66e:	462a      	mov	r2, r5
2002a670:	4621      	mov	r1, r4
2002a672:	f000 f8c7 	bl	2002a804 <memset>
2002a676:	e7f4      	b.n	2002a662 <_calloc_r+0x12>

2002a678 <free>:
2002a678:	4b02      	ldr	r3, [pc, #8]	@ (2002a684 <free+0xc>)
2002a67a:	4601      	mov	r1, r0
2002a67c:	6818      	ldr	r0, [r3, #0]
2002a67e:	f000 b8e9 	b.w	2002a854 <_free_r>
2002a682:	bf00      	nop
2002a684:	20044908 	.word	0x20044908

2002a688 <sbrk_aligned>:
2002a688:	b570      	push	{r4, r5, r6, lr}
2002a68a:	4e0f      	ldr	r6, [pc, #60]	@ (2002a6c8 <sbrk_aligned+0x40>)
2002a68c:	460c      	mov	r4, r1
2002a68e:	4605      	mov	r5, r0
2002a690:	6831      	ldr	r1, [r6, #0]
2002a692:	b911      	cbnz	r1, 2002a69a <sbrk_aligned+0x12>
2002a694:	f000 f8be 	bl	2002a814 <_sbrk_r>
2002a698:	6030      	str	r0, [r6, #0]
2002a69a:	4621      	mov	r1, r4
2002a69c:	4628      	mov	r0, r5
2002a69e:	f000 f8b9 	bl	2002a814 <_sbrk_r>
2002a6a2:	1c43      	adds	r3, r0, #1
2002a6a4:	d103      	bne.n	2002a6ae <sbrk_aligned+0x26>
2002a6a6:	f04f 34ff 	mov.w	r4, #4294967295
2002a6aa:	4620      	mov	r0, r4
2002a6ac:	bd70      	pop	{r4, r5, r6, pc}
2002a6ae:	1cc4      	adds	r4, r0, #3
2002a6b0:	f024 0403 	bic.w	r4, r4, #3
2002a6b4:	42a0      	cmp	r0, r4
2002a6b6:	d0f8      	beq.n	2002a6aa <sbrk_aligned+0x22>
2002a6b8:	1a21      	subs	r1, r4, r0
2002a6ba:	4628      	mov	r0, r5
2002a6bc:	f000 f8aa 	bl	2002a814 <_sbrk_r>
2002a6c0:	3001      	adds	r0, #1
2002a6c2:	d1f2      	bne.n	2002a6aa <sbrk_aligned+0x22>
2002a6c4:	e7ef      	b.n	2002a6a6 <sbrk_aligned+0x1e>
2002a6c6:	bf00      	nop
2002a6c8:	2004a3b4 	.word	0x2004a3b4

2002a6cc <_malloc_r>:
2002a6cc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002a6d0:	1ccd      	adds	r5, r1, #3
2002a6d2:	4606      	mov	r6, r0
2002a6d4:	f025 0503 	bic.w	r5, r5, #3
2002a6d8:	3508      	adds	r5, #8
2002a6da:	2d0c      	cmp	r5, #12
2002a6dc:	bf38      	it	cc
2002a6de:	250c      	movcc	r5, #12
2002a6e0:	2d00      	cmp	r5, #0
2002a6e2:	db01      	blt.n	2002a6e8 <_malloc_r+0x1c>
2002a6e4:	42a9      	cmp	r1, r5
2002a6e6:	d904      	bls.n	2002a6f2 <_malloc_r+0x26>
2002a6e8:	230c      	movs	r3, #12
2002a6ea:	6033      	str	r3, [r6, #0]
2002a6ec:	2000      	movs	r0, #0
2002a6ee:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
2002a6f2:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 2002a7c8 <_malloc_r+0xfc>
2002a6f6:	f000 f869 	bl	2002a7cc <__malloc_lock>
2002a6fa:	f8d8 3000 	ldr.w	r3, [r8]
2002a6fe:	461c      	mov	r4, r3
2002a700:	bb44      	cbnz	r4, 2002a754 <_malloc_r+0x88>
2002a702:	4629      	mov	r1, r5
2002a704:	4630      	mov	r0, r6
2002a706:	f7ff ffbf 	bl	2002a688 <sbrk_aligned>
2002a70a:	1c43      	adds	r3, r0, #1
2002a70c:	4604      	mov	r4, r0
2002a70e:	d158      	bne.n	2002a7c2 <_malloc_r+0xf6>
2002a710:	f8d8 4000 	ldr.w	r4, [r8]
2002a714:	4627      	mov	r7, r4
2002a716:	2f00      	cmp	r7, #0
2002a718:	d143      	bne.n	2002a7a2 <_malloc_r+0xd6>
2002a71a:	2c00      	cmp	r4, #0
2002a71c:	d04b      	beq.n	2002a7b6 <_malloc_r+0xea>
2002a71e:	6823      	ldr	r3, [r4, #0]
2002a720:	4639      	mov	r1, r7
2002a722:	4630      	mov	r0, r6
2002a724:	eb04 0903 	add.w	r9, r4, r3
2002a728:	f000 f874 	bl	2002a814 <_sbrk_r>
2002a72c:	4581      	cmp	r9, r0
2002a72e:	d142      	bne.n	2002a7b6 <_malloc_r+0xea>
2002a730:	6821      	ldr	r1, [r4, #0]
2002a732:	4630      	mov	r0, r6
2002a734:	1a6d      	subs	r5, r5, r1
2002a736:	4629      	mov	r1, r5
2002a738:	f7ff ffa6 	bl	2002a688 <sbrk_aligned>
2002a73c:	3001      	adds	r0, #1
2002a73e:	d03a      	beq.n	2002a7b6 <_malloc_r+0xea>
2002a740:	6823      	ldr	r3, [r4, #0]
2002a742:	442b      	add	r3, r5
2002a744:	6023      	str	r3, [r4, #0]
2002a746:	f8d8 3000 	ldr.w	r3, [r8]
2002a74a:	685a      	ldr	r2, [r3, #4]
2002a74c:	bb62      	cbnz	r2, 2002a7a8 <_malloc_r+0xdc>
2002a74e:	f8c8 7000 	str.w	r7, [r8]
2002a752:	e00f      	b.n	2002a774 <_malloc_r+0xa8>
2002a754:	6822      	ldr	r2, [r4, #0]
2002a756:	1b52      	subs	r2, r2, r5
2002a758:	d420      	bmi.n	2002a79c <_malloc_r+0xd0>
2002a75a:	2a0b      	cmp	r2, #11
2002a75c:	d917      	bls.n	2002a78e <_malloc_r+0xc2>
2002a75e:	1961      	adds	r1, r4, r5
2002a760:	42a3      	cmp	r3, r4
2002a762:	6025      	str	r5, [r4, #0]
2002a764:	bf18      	it	ne
2002a766:	6059      	strne	r1, [r3, #4]
2002a768:	6863      	ldr	r3, [r4, #4]
2002a76a:	bf08      	it	eq
2002a76c:	f8c8 1000 	streq.w	r1, [r8]
2002a770:	5162      	str	r2, [r4, r5]
2002a772:	604b      	str	r3, [r1, #4]
2002a774:	4630      	mov	r0, r6
2002a776:	f000 f82f 	bl	2002a7d8 <__malloc_unlock>
2002a77a:	f104 000b 	add.w	r0, r4, #11
2002a77e:	1d23      	adds	r3, r4, #4
2002a780:	f020 0007 	bic.w	r0, r0, #7
2002a784:	1ac2      	subs	r2, r0, r3
2002a786:	bf1c      	itt	ne
2002a788:	1a1b      	subne	r3, r3, r0
2002a78a:	50a3      	strne	r3, [r4, r2]
2002a78c:	e7af      	b.n	2002a6ee <_malloc_r+0x22>
2002a78e:	6862      	ldr	r2, [r4, #4]
2002a790:	42a3      	cmp	r3, r4
2002a792:	bf0c      	ite	eq
2002a794:	f8c8 2000 	streq.w	r2, [r8]
2002a798:	605a      	strne	r2, [r3, #4]
2002a79a:	e7eb      	b.n	2002a774 <_malloc_r+0xa8>
2002a79c:	4623      	mov	r3, r4
2002a79e:	6864      	ldr	r4, [r4, #4]
2002a7a0:	e7ae      	b.n	2002a700 <_malloc_r+0x34>
2002a7a2:	463c      	mov	r4, r7
2002a7a4:	687f      	ldr	r7, [r7, #4]
2002a7a6:	e7b6      	b.n	2002a716 <_malloc_r+0x4a>
2002a7a8:	461a      	mov	r2, r3
2002a7aa:	685b      	ldr	r3, [r3, #4]
2002a7ac:	42a3      	cmp	r3, r4
2002a7ae:	d1fb      	bne.n	2002a7a8 <_malloc_r+0xdc>
2002a7b0:	2300      	movs	r3, #0
2002a7b2:	6053      	str	r3, [r2, #4]
2002a7b4:	e7de      	b.n	2002a774 <_malloc_r+0xa8>
2002a7b6:	230c      	movs	r3, #12
2002a7b8:	4630      	mov	r0, r6
2002a7ba:	6033      	str	r3, [r6, #0]
2002a7bc:	f000 f80c 	bl	2002a7d8 <__malloc_unlock>
2002a7c0:	e794      	b.n	2002a6ec <_malloc_r+0x20>
2002a7c2:	6005      	str	r5, [r0, #0]
2002a7c4:	e7d6      	b.n	2002a774 <_malloc_r+0xa8>
2002a7c6:	bf00      	nop
2002a7c8:	2004a3b8 	.word	0x2004a3b8

2002a7cc <__malloc_lock>:
2002a7cc:	4801      	ldr	r0, [pc, #4]	@ (2002a7d4 <__malloc_lock+0x8>)
2002a7ce:	f000 b831 	b.w	2002a834 <__retarget_lock_acquire_recursive>
2002a7d2:	bf00      	nop
2002a7d4:	2004a4f8 	.word	0x2004a4f8

2002a7d8 <__malloc_unlock>:
2002a7d8:	4801      	ldr	r0, [pc, #4]	@ (2002a7e0 <__malloc_unlock+0x8>)
2002a7da:	f000 b82c 	b.w	2002a836 <__retarget_lock_release_recursive>
2002a7de:	bf00      	nop
2002a7e0:	2004a4f8 	.word	0x2004a4f8

2002a7e4 <memcmp>:
2002a7e4:	3901      	subs	r1, #1
2002a7e6:	4402      	add	r2, r0
2002a7e8:	b510      	push	{r4, lr}
2002a7ea:	4290      	cmp	r0, r2
2002a7ec:	d101      	bne.n	2002a7f2 <memcmp+0xe>
2002a7ee:	2000      	movs	r0, #0
2002a7f0:	e005      	b.n	2002a7fe <memcmp+0x1a>
2002a7f2:	7803      	ldrb	r3, [r0, #0]
2002a7f4:	f811 4f01 	ldrb.w	r4, [r1, #1]!
2002a7f8:	42a3      	cmp	r3, r4
2002a7fa:	d001      	beq.n	2002a800 <memcmp+0x1c>
2002a7fc:	1b18      	subs	r0, r3, r4
2002a7fe:	bd10      	pop	{r4, pc}
2002a800:	3001      	adds	r0, #1
2002a802:	e7f2      	b.n	2002a7ea <memcmp+0x6>

2002a804 <memset>:
2002a804:	4402      	add	r2, r0
2002a806:	4603      	mov	r3, r0
2002a808:	4293      	cmp	r3, r2
2002a80a:	d100      	bne.n	2002a80e <memset+0xa>
2002a80c:	4770      	bx	lr
2002a80e:	f803 1b01 	strb.w	r1, [r3], #1
2002a812:	e7f9      	b.n	2002a808 <memset+0x4>

2002a814 <_sbrk_r>:
2002a814:	b538      	push	{r3, r4, r5, lr}
2002a816:	2300      	movs	r3, #0
2002a818:	4d05      	ldr	r5, [pc, #20]	@ (2002a830 <_sbrk_r+0x1c>)
2002a81a:	4604      	mov	r4, r0
2002a81c:	4608      	mov	r0, r1
2002a81e:	602b      	str	r3, [r5, #0]
2002a820:	f000 f862 	bl	2002a8e8 <_sbrk>
2002a824:	1c43      	adds	r3, r0, #1
2002a826:	d102      	bne.n	2002a82e <_sbrk_r+0x1a>
2002a828:	682b      	ldr	r3, [r5, #0]
2002a82a:	b103      	cbz	r3, 2002a82e <_sbrk_r+0x1a>
2002a82c:	6023      	str	r3, [r4, #0]
2002a82e:	bd38      	pop	{r3, r4, r5, pc}
2002a830:	2004a4f4 	.word	0x2004a4f4

2002a834 <__retarget_lock_acquire_recursive>:
2002a834:	4770      	bx	lr

2002a836 <__retarget_lock_release_recursive>:
2002a836:	4770      	bx	lr

2002a838 <memcpy>:
2002a838:	440a      	add	r2, r1
2002a83a:	1e43      	subs	r3, r0, #1
2002a83c:	4291      	cmp	r1, r2
2002a83e:	d100      	bne.n	2002a842 <memcpy+0xa>
2002a840:	4770      	bx	lr
2002a842:	b510      	push	{r4, lr}
2002a844:	f811 4b01 	ldrb.w	r4, [r1], #1
2002a848:	4291      	cmp	r1, r2
2002a84a:	f803 4f01 	strb.w	r4, [r3, #1]!
2002a84e:	d1f9      	bne.n	2002a844 <memcpy+0xc>
2002a850:	bd10      	pop	{r4, pc}
	...

2002a854 <_free_r>:
2002a854:	b538      	push	{r3, r4, r5, lr}
2002a856:	4605      	mov	r5, r0
2002a858:	2900      	cmp	r1, #0
2002a85a:	d041      	beq.n	2002a8e0 <_free_r+0x8c>
2002a85c:	f851 3c04 	ldr.w	r3, [r1, #-4]
2002a860:	1f0c      	subs	r4, r1, #4
2002a862:	2b00      	cmp	r3, #0
2002a864:	bfb8      	it	lt
2002a866:	18e4      	addlt	r4, r4, r3
2002a868:	f7ff ffb0 	bl	2002a7cc <__malloc_lock>
2002a86c:	4a1d      	ldr	r2, [pc, #116]	@ (2002a8e4 <_free_r+0x90>)
2002a86e:	6813      	ldr	r3, [r2, #0]
2002a870:	b933      	cbnz	r3, 2002a880 <_free_r+0x2c>
2002a872:	6063      	str	r3, [r4, #4]
2002a874:	6014      	str	r4, [r2, #0]
2002a876:	4628      	mov	r0, r5
2002a878:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
2002a87c:	f7ff bfac 	b.w	2002a7d8 <__malloc_unlock>
2002a880:	42a3      	cmp	r3, r4
2002a882:	d908      	bls.n	2002a896 <_free_r+0x42>
2002a884:	6820      	ldr	r0, [r4, #0]
2002a886:	1821      	adds	r1, r4, r0
2002a888:	428b      	cmp	r3, r1
2002a88a:	bf01      	itttt	eq
2002a88c:	6819      	ldreq	r1, [r3, #0]
2002a88e:	685b      	ldreq	r3, [r3, #4]
2002a890:	1809      	addeq	r1, r1, r0
2002a892:	6021      	streq	r1, [r4, #0]
2002a894:	e7ed      	b.n	2002a872 <_free_r+0x1e>
2002a896:	461a      	mov	r2, r3
2002a898:	685b      	ldr	r3, [r3, #4]
2002a89a:	b10b      	cbz	r3, 2002a8a0 <_free_r+0x4c>
2002a89c:	42a3      	cmp	r3, r4
2002a89e:	d9fa      	bls.n	2002a896 <_free_r+0x42>
2002a8a0:	6811      	ldr	r1, [r2, #0]
2002a8a2:	1850      	adds	r0, r2, r1
2002a8a4:	42a0      	cmp	r0, r4
2002a8a6:	d10b      	bne.n	2002a8c0 <_free_r+0x6c>
2002a8a8:	6820      	ldr	r0, [r4, #0]
2002a8aa:	4401      	add	r1, r0
2002a8ac:	1850      	adds	r0, r2, r1
2002a8ae:	6011      	str	r1, [r2, #0]
2002a8b0:	4283      	cmp	r3, r0
2002a8b2:	d1e0      	bne.n	2002a876 <_free_r+0x22>
2002a8b4:	6818      	ldr	r0, [r3, #0]
2002a8b6:	685b      	ldr	r3, [r3, #4]
2002a8b8:	4408      	add	r0, r1
2002a8ba:	6053      	str	r3, [r2, #4]
2002a8bc:	6010      	str	r0, [r2, #0]
2002a8be:	e7da      	b.n	2002a876 <_free_r+0x22>
2002a8c0:	d902      	bls.n	2002a8c8 <_free_r+0x74>
2002a8c2:	230c      	movs	r3, #12
2002a8c4:	602b      	str	r3, [r5, #0]
2002a8c6:	e7d6      	b.n	2002a876 <_free_r+0x22>
2002a8c8:	6820      	ldr	r0, [r4, #0]
2002a8ca:	1821      	adds	r1, r4, r0
2002a8cc:	428b      	cmp	r3, r1
2002a8ce:	bf02      	ittt	eq
2002a8d0:	6819      	ldreq	r1, [r3, #0]
2002a8d2:	685b      	ldreq	r3, [r3, #4]
2002a8d4:	1809      	addeq	r1, r1, r0
2002a8d6:	6063      	str	r3, [r4, #4]
2002a8d8:	bf08      	it	eq
2002a8da:	6021      	streq	r1, [r4, #0]
2002a8dc:	6054      	str	r4, [r2, #4]
2002a8de:	e7ca      	b.n	2002a876 <_free_r+0x22>
2002a8e0:	bd38      	pop	{r3, r4, r5, pc}
2002a8e2:	bf00      	nop
2002a8e4:	2004a3b8 	.word	0x2004a3b8

2002a8e8 <_sbrk>:
2002a8e8:	4a05      	ldr	r2, [pc, #20]	@ (2002a900 <_sbrk+0x18>)
2002a8ea:	4603      	mov	r3, r0
2002a8ec:	6810      	ldr	r0, [r2, #0]
2002a8ee:	b110      	cbz	r0, 2002a8f6 <_sbrk+0xe>
2002a8f0:	4403      	add	r3, r0
2002a8f2:	6013      	str	r3, [r2, #0]
2002a8f4:	4770      	bx	lr
2002a8f6:	4803      	ldr	r0, [pc, #12]	@ (2002a904 <_sbrk+0x1c>)
2002a8f8:	4403      	add	r3, r0
2002a8fa:	6013      	str	r3, [r2, #0]
2002a8fc:	4770      	bx	lr
2002a8fe:	bf00      	nop
2002a900:	2004a4fc 	.word	0x2004a4fc
2002a904:	20042000 	.word	0x20042000
2002a908:	50041000 	.word	0x50041000
2002a90c:	00000002 	.word	0x00000002
2002a910:	10000000 	.word	0x10000000
2002a914:	00000004 	.word	0x00000004
2002a918:	00000000 	.word	0x00000000
2002a91c:	50081008 	.word	0x50081008
2002a920:	00000000 	.word	0x00000000
2002a924:	00000032 	.word	0x00000032
2002a928:	00000000 	.word	0x00000000
2002a92c:	50042000 	.word	0x50042000
2002a930:	00000002 	.word	0x00000002
2002a934:	12000000 	.word	0x12000000
2002a938:	00000004 	.word	0x00000004
2002a93c:	00000000 	.word	0x00000000
2002a940:	5008101c 	.word	0x5008101c
2002a944:	00000000 	.word	0x00000000
2002a948:	00000033 	.word	0x00000033
2002a94c:	00000001 	.word	0x00000001
2002a950:	62636573 	.word	0x62636573
2002a954:	20746f6f 	.word	0x20746f6f
2002a958:	6b676973 	.word	0x6b676973
2002a95c:	70207965 	.word	0x70207965
2002a960:	65206275 	.word	0x65206275
2002a964:	00217272 	.word	0x00217272
2002a968:	62636573 	.word	0x62636573
2002a96c:	20746f6f 	.word	0x20746f6f
2002a970:	20676d69 	.word	0x20676d69
2002a974:	68736168 	.word	0x68736168
2002a978:	67697320 	.word	0x67697320
2002a97c:	72726520 	.word	0x72726520
2002a980:	65730021 	.word	0x65730021
2002a984:	6f6f6263 	.word	0x6f6f6263
2002a988:	78652074 	.word	0x78652074
2002a98c:	20747063 	.word	0x20747063
2002a990:	6c6c756e 	.word	0x6c6c756e
2002a994:	41480021 	.word	0x41480021
2002a998:	535f4853 	.word	0x535f4853
2002a99c:	49545445 	.word	0x49545445
2002a9a0:	253d474e 	.word	0x253d474e
2002a9a4:	0a583830 	.word	0x0a583830
2002a9a8:	616f4c00 	.word	0x616f4c00
2002a9ac:	56492064 	.word	0x56492064
2002a9b0:	646e6120 	.word	0x646e6120
2002a9b4:	6e656c20 	.word	0x6e656c20
2002a9b8:	20687467 	.word	0x20687467
2002a9bc:	48534148 	.word	0x48534148
2002a9c0:	5445535f 	.word	0x5445535f
2002a9c4:	474e4954 	.word	0x474e4954
2002a9c8:	3830253d 	.word	0x3830253d
2002a9cc:	69202c58 	.word	0x69202c58
2002a9d0:	656c2076 	.word	0x656c2076
2002a9d4:	6874676e 	.word	0x6874676e
2002a9d8:	0a64253d 	.word	0x0a64253d
2002a9dc:	73655200 	.word	0x73655200
2002a9e0:	20746c75 	.word	0x20746c75
2002a9e4:	3d6e656c 	.word	0x3d6e656c
2002a9e8:	000a6425 	.word	0x000a6425
2002a9ec:	2070614d 	.word	0x2070614d
2002a9f0:	6f727265 	.word	0x6f727265
2002a9f4:	6c203a72 	.word	0x6c203a72
2002a9f8:	6369676f 	.word	0x6369676f
2002a9fc:	2c642520 	.word	0x2c642520
2002aa00:	79687020 	.word	0x79687020
2002aa04:	0a642520 	.word	0x0a642520
2002aa08:	52524500 	.word	0x52524500
2002aa0c:	2032203a 	.word	0x2032203a
2002aa10:	69676f6c 	.word	0x69676f6c
2002aa14:	6c622063 	.word	0x6c622063
2002aa18:	736b636f 	.word	0x736b636f
2002aa1c:	70616d20 	.word	0x70616d20
2002aa20:	206f7420 	.word	0x206f7420
2002aa24:	656d6173 	.word	0x656d6173
2002aa28:	6b6c6220 	.word	0x6b6c6220
2002aa2c:	6f6c203a 	.word	0x6f6c203a
2002aa30:	30636967 	.word	0x30636967
2002aa34:	2c642520 	.word	0x2c642520
2002aa38:	79687020 	.word	0x79687020
2002aa3c:	64252030 	.word	0x64252030
2002aa40:	6f6c202c 	.word	0x6f6c202c
2002aa44:	31636967 	.word	0x31636967
2002aa48:	2c642520 	.word	0x2c642520
2002aa4c:	79687020 	.word	0x79687020
2002aa50:	64252031 	.word	0x64252031
2002aa54:	614d000a 	.word	0x614d000a
2002aa58:	72652070 	.word	0x72652070
2002aa5c:	30726f72 	.word	0x30726f72
2002aa60:	6f6c203a 	.word	0x6f6c203a
2002aa64:	20636967 	.word	0x20636967
2002aa68:	202c6425 	.word	0x202c6425
2002aa6c:	20796870 	.word	0x20796870
2002aa70:	000a6425 	.word	0x000a6425
2002aa74:	20746547 	.word	0x20746547
2002aa78:	2070616d 	.word	0x2070616d
2002aa7c:	636f6c62 	.word	0x636f6c62
2002aa80:	7265206b 	.word	0x7265206b
2002aa84:	20726f72 	.word	0x20726f72
2002aa88:	2d206425 	.word	0x2d206425
2002aa8c:	25203e2d 	.word	0x25203e2d
2002aa90:	42000a64 	.word	0x42000a64
2002aa94:	76204d42 	.word	0x76204d42
2002aa98:	69737265 	.word	0x69737265
2002aa9c:	6e206e6f 	.word	0x6e206e6f
2002aaa0:	6920746f 	.word	0x6920746f
2002aaa4:	6572636e 	.word	0x6572636e
2002aaa8:	64657361 	.word	0x64657361
2002aaac:	7270203a 	.word	0x7270203a
2002aab0:	25207665 	.word	0x25207665
2002aab4:	63202c64 	.word	0x63202c64
2002aab8:	20727275 	.word	0x20727275
2002aabc:	000a6425 	.word	0x000a6425
2002aac0:	41544144 	.word	0x41544144
2002aac4:	746f6e20 	.word	0x746f6e20
2002aac8:	61657220 	.word	0x61657220
2002aacc:	616e6f73 	.word	0x616e6f73
2002aad0:	20656c62 	.word	0x20656c62
2002aad4:	42206e69 	.word	0x42206e69
2002aad8:	62204d42 	.word	0x62204d42
2002aadc:	25206b6c 	.word	0x25206b6c
2002aae0:	61702064 	.word	0x61702064
2002aae4:	25206567 	.word	0x25206567
2002aae8:	30203a64 	.word	0x30203a64
2002aaec:	0a782578 	.word	0x0a782578
2002aaf0:	61655200 	.word	0x61655200
2002aaf4:	62622064 	.word	0x62622064
2002aaf8:	6c62206d 	.word	0x6c62206d
2002aafc:	6425206b 	.word	0x6425206b
2002ab00:	67617020 	.word	0x67617020
2002ab04:	64252065 	.word	0x64252065
2002ab08:	69616620 	.word	0x69616620
2002ab0c:	49000a6c 	.word	0x49000a6c
2002ab10:	6c61766e 	.word	0x6c61766e
2002ab14:	42206469 	.word	0x42206469
2002ab18:	49204d42 	.word	0x49204d42
2002ab1c:	25205844 	.word	0x25205844
2002ab20:	56000a64 	.word	0x56000a64
2002ab24:	64252031 	.word	0x64252031
2002ab28:	206e6920 	.word	0x206e6920
2002ab2c:	636f6c62 	.word	0x636f6c62
2002ab30:	6425206b 	.word	0x6425206b
2002ab34:	3256202c 	.word	0x3256202c
2002ab38:	20642520 	.word	0x20642520
2002ab3c:	62206e69 	.word	0x62206e69
2002ab40:	6b636f6c 	.word	0x6b636f6c
2002ab44:	0a642520 	.word	0x0a642520
2002ab48:	6d615300 	.word	0x6d615300
2002ab4c:	69687465 	.word	0x69687465
2002ab50:	6d20676e 	.word	0x6d20676e
2002ab54:	20747375 	.word	0x20747375
2002ab58:	77206562 	.word	0x77206562
2002ab5c:	676e6f72 	.word	0x676e6f72
2002ab60:	6567202c 	.word	0x6567202c
2002ab64:	656e2074 	.word	0x656e2074
2002ab68:	65762077 	.word	0x65762077
2002ab6c:	6f697372 	.word	0x6f697372
2002ab70:	6425206e 	.word	0x6425206e
2002ab74:	206f6420 	.word	0x206f6420
2002ab78:	20746f6e 	.word	0x20746f6e
2002ab7c:	656d6173 	.word	0x656d6173
2002ab80:	206f7420 	.word	0x206f7420
2002ab84:	76657270 	.word	0x76657270
2002ab88:	65686320 	.word	0x65686320
2002ab8c:	25206b63 	.word	0x25206b63
2002ab90:	43000a64 	.word	0x43000a64
2002ab94:	63204352 	.word	0x63204352
2002ab98:	6b636568 	.word	0x6b636568
2002ab9c:	72726520 	.word	0x72726520
2002aba0:	0a20726f 	.word	0x0a20726f
2002aba4:	61655200 	.word	0x61655200
2002aba8:	62622064 	.word	0x62622064
2002abac:	6c62206d 	.word	0x6c62206d
2002abb0:	6425206b 	.word	0x6425206b
2002abb4:	67617020 	.word	0x67617020
2002abb8:	64252065 	.word	0x64252065
2002abbc:	74616420 	.word	0x74616420
2002abc0:	6f6e2061 	.word	0x6f6e2061
2002abc4:	72772074 	.word	0x72772074
2002abc8:	20657469 	.word	0x20657469
2002abcc:	20726f66 	.word	0x20726f66
2002abd0:	20646e32 	.word	0x20646e32
2002abd4:	656d6974 	.word	0x656d6974
2002abd8:	6552000a 	.word	0x6552000a
2002abdc:	62206461 	.word	0x62206461
2002abe0:	62206d62 	.word	0x62206d62
2002abe4:	25206b6c 	.word	0x25206b6c
2002abe8:	61702064 	.word	0x61702064
2002abec:	25206567 	.word	0x25206567
2002abf0:	61662064 	.word	0x61662064
2002abf4:	66206c69 	.word	0x66206c69
2002abf8:	3220726f 	.word	0x3220726f
2002abfc:	7420646e 	.word	0x7420646e
2002ac00:	3f656d69 	.word	0x3f656d69
2002ac04:	614c000a 	.word	0x614c000a
2002ac08:	74736574 	.word	0x74736574
2002ac0c:	72657620 	.word	0x72657620
2002ac10:	6e6f6973 	.word	0x6e6f6973
2002ac14:	0a642520 	.word	0x0a642520
2002ac18:	74654700 	.word	0x74654700
2002ac1c:	79687020 	.word	0x79687020
2002ac20:	6b6c6220 	.word	0x6b6c6220
2002ac24:	726f6620 	.word	0x726f6620
2002ac28:	20642520 	.word	0x20642520
2002ac2c:	6c696166 	.word	0x6c696166
2002ac30:	65687720 	.word	0x65687720
2002ac34:	6572206e 	.word	0x6572206e
2002ac38:	000a6461 	.word	0x000a6461
2002ac3c:	636f6c42 	.word	0x636f6c42
2002ac40:	6425206b 	.word	0x6425206b
2002ac44:	61726520 	.word	0x61726520
2002ac48:	66206573 	.word	0x66206573
2002ac4c:	2c6c6961 	.word	0x2c6c6961
2002ac50:	72616d20 	.word	0x72616d20
2002ac54:	7361206b 	.word	0x7361206b
2002ac58:	64616220 	.word	0x64616220
2002ac5c:	6c42000a 	.word	0x6c42000a
2002ac60:	206b636f 	.word	0x206b636f
2002ac64:	63206425 	.word	0x63206425
2002ac68:	6b636568 	.word	0x6b636568
2002ac6c:	20736120 	.word	0x20736120
2002ac70:	20646162 	.word	0x20646162
2002ac74:	636f6c62 	.word	0x636f6c62
2002ac78:	42000a6b 	.word	0x42000a6b
2002ac7c:	6b636f6c 	.word	0x6b636f6c
2002ac80:	20642520 	.word	0x20642520
2002ac84:	62207369 	.word	0x62207369
2002ac88:	69206461 	.word	0x69206461
2002ac8c:	7375206e 	.word	0x7375206e
2002ac90:	62207265 	.word	0x62207265
2002ac94:	6b636f6c 	.word	0x6b636f6c
2002ac98:	6162000a 	.word	0x6162000a
2002ac9c:	64252064 	.word	0x64252064
2002aca0:	6572202c 	.word	0x6572202c
2002aca4:	63616c70 	.word	0x63616c70
2002aca8:	64252065 	.word	0x64252065
2002acac:	6f4e000a 	.word	0x6f4e000a
2002acb0:	63616220 	.word	0x63616220
2002acb4:	2070756b 	.word	0x2070756b
2002acb8:	636f6c62 	.word	0x636f6c62
2002acbc:	6e61206b 	.word	0x6e61206b
2002acc0:	6f6d2079 	.word	0x6f6d2079
2002acc4:	000a6572 	.word	0x000a6572
2002acc8:	74706d65 	.word	0x74706d65
2002accc:	61742079 	.word	0x61742079
2002acd0:	20656c62 	.word	0x20656c62
2002acd4:	6e206425 	.word	0x6e206425
2002acd8:	6520746f 	.word	0x6520746f
2002acdc:	67756f6e 	.word	0x67756f6e
2002ace0:	6f662068 	.word	0x6f662068
2002ace4:	6e692072 	.word	0x6e692072
2002ace8:	61697469 	.word	0x61697469
2002acec:	55000a6c 	.word	0x55000a6c
2002acf0:	74616470 	.word	0x74616470
2002acf4:	61742065 	.word	0x61742065
2002acf8:	20656c62 	.word	0x20656c62
2002acfc:	66206f74 	.word	0x66206f74
2002ad00:	6873616c 	.word	0x6873616c
2002ad04:	6e6f6420 	.word	0x6e6f6420
2002ad08:	49000a65 	.word	0x49000a65
2002ad0c:	6974696e 	.word	0x6974696e
2002ad10:	74206c61 	.word	0x74206c61
2002ad14:	656c6261 	.word	0x656c6261
2002ad18:	69616620 	.word	0x69616620
2002ad1c:	42000a6c 	.word	0x42000a6c
2002ad20:	69204d42 	.word	0x69204d42
2002ad24:	6974696e 	.word	0x6974696e
2002ad28:	7a696c61 	.word	0x7a696c61
2002ad2c:	62206465 	.word	0x62206465
2002ad30:	726f6665 	.word	0x726f6665
2002ad34:	64202c65 	.word	0x64202c65
2002ad38:	6f6e206f 	.word	0x6f6e206f
2002ad3c:	6e692074 	.word	0x6e692074
2002ad40:	61207469 	.word	0x61207469
2002ad44:	6d20796e 	.word	0x6d20796e
2002ad48:	0a65726f 	.word	0x0a65726f
2002ad4c:	54454400 	.word	0x54454400
2002ad50:	20642520 	.word	0x20642520
2002ad54:	0a646162 	.word	0x0a646162
2002ad58:	4b4c4200 	.word	0x4b4c4200
2002ad5c:	20642520 	.word	0x20642520
2002ad60:	64616572 	.word	0x64616572
2002ad64:	69616620 	.word	0x69616620
2002ad68:	6d202c6c 	.word	0x6d202c6c
2002ad6c:	206b7261 	.word	0x206b7261
2002ad70:	62207361 	.word	0x62207361
2002ad74:	000a6461 	.word	0x000a6461
2002ad78:	20746564 	.word	0x20746564
2002ad7c:	206d6262 	.word	0x206d6262
2002ad80:	6c626174 	.word	0x6c626174
2002ad84:	69772065 	.word	0x69772065
2002ad88:	25206874 	.word	0x25206874
2002ad8c:	25202c64 	.word	0x25202c64
2002ad90:	25202c64 	.word	0x25202c64
2002ad94:	64000a64 	.word	0x64000a64
2002ad98:	63657465 	.word	0x63657465
2002ad9c:	65722074 	.word	0x65722074
2002ada0:	746c7573 	.word	0x746c7573
2002ada4:	0a642520 	.word	0x0a642520
2002ada8:	20317600 	.word	0x20317600
2002adac:	69206425 	.word	0x69206425
2002adb0:	6c62206e 	.word	0x6c62206e
2002adb4:	6425206b 	.word	0x6425206b
2002adb8:	3276202c 	.word	0x3276202c
2002adbc:	20642520 	.word	0x20642520
2002adc0:	62206e69 	.word	0x62206e69
2002adc4:	6b636f6c 	.word	0x6b636f6c
2002adc8:	0a642520 	.word	0x0a642520
2002adcc:	65684300 	.word	0x65684300
2002add0:	62206b63 	.word	0x62206b63
2002add4:	74206d62 	.word	0x74206d62
2002add8:	656c6261 	.word	0x656c6261
2002addc:	69616620 	.word	0x69616620
2002ade0:	64000a6c 	.word	0x64000a6c
2002ade4:	63657465 	.word	0x63657465
2002ade8:	65722074 	.word	0x65722074
2002adec:	746c7573 	.word	0x746c7573
2002adf0:	20642520 	.word	0x20642520
2002adf4:	20746f6e 	.word	0x20746f6e
2002adf8:	73616572 	.word	0x73616572
2002adfc:	62616e6f 	.word	0x62616e6f
2002ae00:	000a656c 	.word	0x000a656c
2002ae04:	204d4242 	.word	0x204d4242
2002ae08:	3a4d454d 	.word	0x3a4d454d
2002ae0c:	78746320 	.word	0x78746320
2002ae10:	2c702520 	.word	0x2c702520
2002ae14:	70616d20 	.word	0x70616d20
2002ae18:	70252031 	.word	0x70252031
2002ae1c:	616d202c 	.word	0x616d202c
2002ae20:	25203270 	.word	0x25203270
2002ae24:	000a2070 	.word	0x000a2070
2002ae28:	5f666973 	.word	0x5f666973
2002ae2c:	5f6d6262 	.word	0x5f6d6262
2002ae30:	74696e69 	.word	0x74696e69
2002ae34:	6e6f6420 	.word	0x6e6f6420
2002ae38:	53000a65 	.word	0x53000a65
2002ae3c:	31354148 	.word	0x31354148
2002ae40:	48530032 	.word	0x48530032
2002ae44:	34383341 	.word	0x34383341
2002ae48:	41485300 	.word	0x41485300
2002ae4c:	00363532 	.word	0x00363532
2002ae50:	32414853 	.word	0x32414853
2002ae54:	60003432 	.word	0x60003432
2002ae58:	65014886 	.word	0x65014886
2002ae5c:	04020403 	.word	0x04020403
2002ae60:	2d646900 	.word	0x2d646900
2002ae64:	32616873 	.word	0x32616873
2002ae68:	60003432 	.word	0x60003432
2002ae6c:	65014886 	.word	0x65014886
2002ae70:	01020403 	.word	0x01020403
2002ae74:	2d646900 	.word	0x2d646900
2002ae78:	32616873 	.word	0x32616873
2002ae7c:	60003635 	.word	0x60003635
2002ae80:	65014886 	.word	0x65014886
2002ae84:	02020403 	.word	0x02020403
2002ae88:	2d646900 	.word	0x2d646900
2002ae8c:	33616873 	.word	0x33616873
2002ae90:	60003438 	.word	0x60003438
2002ae94:	65014886 	.word	0x65014886
2002ae98:	03020403 	.word	0x03020403
2002ae9c:	2d646900 	.word	0x2d646900
2002aea0:	35616873 	.word	0x35616873
2002aea4:	2b003231 	.word	0x2b003231
2002aea8:	0702030e 	.word	0x0702030e
2002aeac:	73656400 	.word	0x73656400
2002aeb0:	00434243 	.word	0x00434243
2002aeb4:	2d534544 	.word	0x2d534544
2002aeb8:	00434243 	.word	0x00434243
2002aebc:	8648862a 	.word	0x8648862a
2002aec0:	07030df7 	.word	0x07030df7
2002aec4:	73656400 	.word	0x73656400
2002aec8:	6564652d 	.word	0x6564652d
2002aecc:	62632d33 	.word	0x62632d33
2002aed0:	45440063 	.word	0x45440063
2002aed4:	44452d53 	.word	0x44452d53
2002aed8:	432d3345 	.word	0x432d3345
2002aedc:	2a004342 	.word	0x2a004342
2002aee0:	f7864886 	.word	0xf7864886
2002aee4:	0101010d 	.word	0x0101010d
2002aee8:	61737200 	.word	0x61737200
2002aeec:	72636e45 	.word	0x72636e45
2002aef0:	69747079 	.word	0x69747079
2002aef4:	52006e6f 	.word	0x52006e6f
2002aef8:	2a004153 	.word	0x2a004153
2002aefc:	3dce4886 	.word	0x3dce4886
2002af00:	69000102 	.word	0x69000102
2002af04:	63652d64 	.word	0x63652d64
2002af08:	6c627550 	.word	0x6c627550
2002af0c:	654b6369 	.word	0x654b6369
2002af10:	65470079 	.word	0x65470079
2002af14:	6972656e 	.word	0x6972656e
2002af18:	43452063 	.word	0x43452063
2002af1c:	79656b20 	.word	0x79656b20
2002af20:	04812b00 	.word	0x04812b00
2002af24:	69000c01 	.word	0x69000c01
2002af28:	63652d64 	.word	0x63652d64
2002af2c:	45004844 	.word	0x45004844
2002af30:	656b2043 	.word	0x656b2043
2002af34:	6f662079 	.word	0x6f662079
2002af38:	43452072 	.word	0x43452072
2002af3c:	2a004844 	.word	0x2a004844
2002af40:	f7864886 	.word	0xf7864886
2002af44:	0e01010d 	.word	0x0e01010d
2002af48:	61687300 	.word	0x61687300
2002af4c:	57343232 	.word	0x57343232
2002af50:	52687469 	.word	0x52687469
2002af54:	6e454153 	.word	0x6e454153
2002af58:	70797263 	.word	0x70797263
2002af5c:	6e6f6974 	.word	0x6e6f6974
2002af60:	41535200 	.word	0x41535200
2002af64:	74697720 	.word	0x74697720
2002af68:	48532068 	.word	0x48532068
2002af6c:	32322d41 	.word	0x32322d41
2002af70:	862a0034 	.word	0x862a0034
2002af74:	0df78648 	.word	0x0df78648
2002af78:	000b0101 	.word	0x000b0101
2002af7c:	32616873 	.word	0x32616873
2002af80:	69573635 	.word	0x69573635
2002af84:	53526874 	.word	0x53526874
2002af88:	636e4541 	.word	0x636e4541
2002af8c:	74707972 	.word	0x74707972
2002af90:	006e6f69 	.word	0x006e6f69
2002af94:	20415352 	.word	0x20415352
2002af98:	68746977 	.word	0x68746977
2002af9c:	41485320 	.word	0x41485320
2002afa0:	3635322d 	.word	0x3635322d
2002afa4:	48862a00 	.word	0x48862a00
2002afa8:	010df786 	.word	0x010df786
2002afac:	73000c01 	.word	0x73000c01
2002afb0:	38336168 	.word	0x38336168
2002afb4:	74695734 	.word	0x74695734
2002afb8:	41535268 	.word	0x41535268
2002afbc:	72636e45 	.word	0x72636e45
2002afc0:	69747079 	.word	0x69747079
2002afc4:	52006e6f 	.word	0x52006e6f
2002afc8:	77204153 	.word	0x77204153
2002afcc:	20687469 	.word	0x20687469
2002afd0:	2d414853 	.word	0x2d414853
2002afd4:	00343833 	.word	0x00343833
2002afd8:	8648862a 	.word	0x8648862a
2002afdc:	01010df7 	.word	0x01010df7
2002afe0:	6873000d 	.word	0x6873000d
2002afe4:	32313561 	.word	0x32313561
2002afe8:	68746957 	.word	0x68746957
2002afec:	45415352 	.word	0x45415352
2002aff0:	7972636e 	.word	0x7972636e
2002aff4:	6f697470 	.word	0x6f697470
2002aff8:	5352006e 	.word	0x5352006e
2002affc:	69772041 	.word	0x69772041
2002b000:	53206874 	.word	0x53206874
2002b004:	352d4148 	.word	0x352d4148
2002b008:	2a003231 	.word	0x2a003231
2002b00c:	f7864886 	.word	0xf7864886
2002b010:	0a01010d 	.word	0x0a01010d
2002b014:	41535200 	.word	0x41535200
2002b018:	2d415353 	.word	0x2d415353
2002b01c:	00535350 	.word	0x00535350
2002b020:	2e617372 	.word	0x2e617372
2002b024:	7372004e 	.word	0x7372004e
2002b028:	00452e61 	.word	0x00452e61

2002b02c <pin_pad_func_lcpu>:
	...
2002b04c:	032100b2 00000301 00000000 024b023b     ..!.........;.K.
2002b05c:	00000237 00000000 00000000 00000000     7...............
2002b06c:	032200b3 00000302 00000000 024b023c     ..".........<.K.
2002b07c:	00000238 00000000 00000000 00000000     8...............
2002b08c:	032300b4 00000303 00000000 024b023d     ..#.........=.K.
2002b09c:	0000023a 00000000 00000000 00000000     :...............
2002b0ac:	032400b5 00000304 00000000 024b023e     ..$.........>.K.
2002b0bc:	00000239 00000000 00000000 00000000     9...............

2002b0cc <pin_pad_func_hcpu>:
	...
2002b0ec:	000400f2 00000000 000b0000 00000000     ................
	...
2002b10c:	000900f3 00000000 00030000 00000000     ................
	...
2002b12c:	000a00f4 00000000 000a0000 00000000     ................
	...
2002b14c:	000b00f5 00000000 000b0000 00000000     ................
	...
2002b16c:	000c00f6 00000000 00030000 00000000     ................
	...
2002b18c:	000300f7 000d0000 00000009 00000000     ................
	...
2002b1ac:	000200f8 000e0000 0000000b 00000000     ................
	...
2002b1cc:	000100f9 000f0000 0009000a 00000000     ................
	...
2002b1ec:	000d00fa 00100000 000c0003 00000000     ................
	...
2002b20c:	000e00fb 00060000 00010001 00000000     ................
	...
2002b22c:	000f00fc 00010000 000c000c 00000000     ................
	...
2002b24c:	001000fd 00030000 00090000 00000000     ................
	...
2002b26c:	000500fe 00000006 00000000 00000000     ................
	...
2002b28c:	01540052 00000000 026302b2 016a0000     R.T.......c...j.
	...
2002b2ac:	00000053 00000000 026402b3 00000000     S.........d.....
	...
2002b2cc:	01550054 01c60000 026502b4 016b019a     T.U.......e...k.
2002b2dc:	023b0000 02270000 00000000 00000000     ..;...'.........
2002b2ec:	014e0055 01c80000 026602b5 015f0199     U.N.......f..._.
2002b2fc:	023c0000 02280000 00000000 00000000     ..<...(.........
2002b30c:	014f0056 01c70000 026702b6 015e0197     V.O.......g...^.
2002b31c:	023d0000 02290000 00000000 00000000     ..=...).........
2002b32c:	01500057 01c40000 026802b7 01680195     W.P.......h...h.
2002b33c:	023e0000 022a0000 00000000 00000000     ..>...*.........
2002b34c:	01510058 01c50000 026902b8 01690194     X.Q.......i...i.
2002b35c:	023f0000 022b0000 00000000 00000000     ..?...+.........
2002b36c:	01520059 01d40000 026a02b9 01600192     Y.R.......j...`.
2002b37c:	02400000 022c0000 00000000 00000000     ..@...,.........
2002b38c:	0153005a 01d50000 026b02ba 01610191     Z.S.......k...a.
2002b39c:	02410000 0000023a 00000000 00000000     ..A.:...........
2002b3ac:	0000005b 00000000 026c02bb 00000000     [.........l.....
2002b3bc:	02420000 00000239 00000000 00000000     ..B.9...........
2002b3cc:	0000005c 00000000 026d02bc 00000000     \.........m.....
	...
2002b3ec:	0000005d 00000000 026e02bd 00000000     ].........n.....
2002b3fc:	01d30000 02210237 00000000 00000000     ....7.!.........
2002b40c:	001b005e 000001b7 026f02be 00000000     ^.........o.....
2002b41c:	00000000 02220238 00000000 00000000     ....8.".........
2002b42c:	0022005f 000001b8 027002bf 00000000     _.".......p.....
2002b43c:	00000000 02230000 00000000 00000000     ......#.........
2002b44c:	00230060 000001b2 027102c0 00000000     `.#.......q.....
2002b45c:	00000000 02240000 00000000 00000000     ......$.........
2002b46c:	00210061 000001b4 027202c1 00000000     a.!.......r.....
2002b47c:	00000000 02250000 00000000 00000000     ......%.........
2002b48c:	00190062 000001b5 027302c2 00000000     b.........s.....
2002b49c:	00000000 02260000 00000000 00000000     ......&.........
2002b4ac:	00240063 000001b6 027402c3 00000000     c.$.......t.....
	...
2002b4cc:	00000064 0000021a 027502c4 00000000     d.........u.....
	...
2002b4ec:	00000065 00000219 027602c5 00000000     e.........v.....
	...
2002b50c:	00000066 00000000 027702c6 00000000     f.........w.....
2002b51c:	024b0000 00000000 00000000 00000000     ..K.............
2002b52c:	00000067 00000000 027802c7 00000000     g.........x.....
	...
2002b54c:	00000068 01d40000 027902c8 00000000     h.........y.....
	...
2002b56c:	00000069 01d50000 027a02c9 00000000     i.........z.....
	...
2002b58c:	0000006a 01c60149 027b02ca 00000000     j...I.....{.....
	...
2002b5ac:	0000006b 01c80148 027c02cb 00000000     k...H.....|.....
	...
2002b5cc:	0000006c 00000000 027d02cc 00000000     l.........}.....
	...
2002b5ec:	0000006d 00000000 027e02cd 00000000     m.........~.....
	...
2002b60c:	0000006e 01c70146 027f02ce 00000000     n...F...........
	...
2002b62c:	0000006f 01c40147 028002cf 00000000     o...G...........
	...
2002b64c:	00000070 01c50000 028102d0 00000000     p...............
	...
2002b66c:	00000071 00000000 028202d1 00000000     q...............
2002b67c:	02430000 00000000 00000000 00000000     ..C.............
2002b68c:	00000072 00000000 028302d2 00000000     r...............
	...
2002b6ac:	00000073 00000000 028402d3 00000000     s...............
	...
2002b6cc:	00000074 00000000 028502d4 00000000     t...............
	...
2002b6ec:	00000075 00000000 028602d5 00000000     u...............
	...
2002b70c:	00000076 00000000 028702d6 00000000     v...............
	...
2002b72c:	00000077 0000014d 028802d7 01620000     w...M.........b.
2002b73c:	02440000 00000000 00000000 00000000     ..D.............
2002b74c:	00000078 0000014c 028902d8 00000000     x...L...........
	...
2002b76c:	00000079 0000014a 028a02d9 01630190     y...J.........c.
2002b77c:	02450000 022f0000 00000000 00000000     ..E.../.........
2002b78c:	0000007a 0000014b 028b02da 0164018f     z...K.........d.
2002b79c:	02460000 02300000 00000000 00000000     ..F...0.........
2002b7ac:	0000007b 00000000 028c02db 01650193     {.............e.
2002b7bc:	02470000 02310000 00000000 00000000     ..G...1.........
2002b7cc:	0000007c 00000000 028d02dc 01660196     |.............f.
2002b7dc:	02480000 02320000 00000000 00000000     ..H...2.........
2002b7ec:	0000007d 00000000 028e02dd 01670198     }.............g.
2002b7fc:	02490000 02330000 00000000 00000000     ..I...3.........
2002b80c:	0000007e 00000000 028f02de 00000000     ~...............
2002b81c:	024a0000 02340000 00000000 00000000     ..J...4.........

2002b82c <HASH_SIZE>:
2002b82c:	20202014 00000000 04030201 00000000     .   ............
2002b83c:	01060204                                ....

2002b840 <CSWTCH.47>:
2002b840:	0000003f 00003f00 003f0000              ?....?....?.

2002b84c <hpsys_dll2_limit>:
	...
2002b854:	112a8800 112a8800                       ..*...*.

2002b85c <hpsys_dvfs_config>:
2002b85c:	000906fb 00100330 000a08fd 00110331     ....0.......1...
2002b86c:	000d0b00 00130213 000f0d02 00130213     ................

2002b87c <crc32tab>:
2002b87c:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
2002b88c:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
2002b89c:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
2002b8ac:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
2002b8bc:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
2002b8cc:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
2002b8dc:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
2002b8ec:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
2002b8fc:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
2002b90c:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
2002b91c:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
2002b92c:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
2002b93c:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
2002b94c:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
2002b95c:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
2002b96c:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
2002b97c:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
2002b98c:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
2002b99c:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
2002b9ac:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
2002b9bc:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
2002b9cc:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
2002b9dc:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
2002b9ec:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
2002b9fc:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
2002ba0c:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
2002ba1c:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
2002ba2c:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
2002ba3c:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
2002ba4c:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
2002ba5c:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
2002ba6c:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
2002ba7c:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
2002ba8c:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
2002ba9c:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
2002baac:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
2002babc:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
2002bacc:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
2002badc:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
2002baec:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
2002bafc:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
2002bb0c:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
2002bb1c:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
2002bb2c:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
2002bb3c:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
2002bb4c:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
2002bb5c:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
2002bb6c:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
2002bb7c:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
2002bb8c:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
2002bb9c:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
2002bbac:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
2002bbbc:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
2002bbcc:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
2002bbdc:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
2002bbec:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
2002bbfc:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
2002bc0c:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
2002bc1c:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
2002bc2c:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
2002bc3c:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
2002bc4c:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
2002bc5c:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
2002bc6c:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

2002bc7c <CSWTCH.5>:
2002bc7c:	2002bd1c 2002bcec 2002bcbc 2002bc8c     ... ... ... ... 

2002bc8c <mbedtls_sha512_info>:
2002bc8c:	00000008 2002ae3b 00000040 00000080     ....;.. @.......
2002bc9c:	20025eb5 20025eab 20025ea7 20025ea1     .^. .^. .^. .^. 
2002bcac:	20025e85 20025e73 20025e6f 20025e6b     .^. s^. o^. k^. 

2002bcbc <mbedtls_sha384_info>:
2002bcbc:	00000007 2002ae42 00000030 00000080     ....B.. 0.......
2002bccc:	20025eaf 20025eab 20025ea7 20025e9b     .^. .^. .^. .^. 
2002bcdc:	20025e85 20025e73 20025e6f 20025e6b     .^. s^. o^. k^. 

2002bcec <mbedtls_sha256_info>:
2002bcec:	00000006 2002ae49 00000020 00000040     ....I..  ...@...
2002bcfc:	20025e65 20025e5b 20025e57 20025e51     e^. [^. W^. Q^. 
2002bd0c:	20025e35 20025e23 20025e1f 20025e1b     5^. #^. .^. .^. 

2002bd1c <mbedtls_sha224_info>:
2002bd1c:	00000005 2002ae50 0000001c 00000040     ....P.. ....@...
2002bd2c:	20025e5f 20025e5b 20025e57 20025e4b     _^. [^. W^. K^. 
2002bd3c:	20025e35 20025e23 20025e1f 20025e1b     5^. #^. .^. .^. 

2002bd4c <sha256_padding>:
2002bd4c:	00000080 00000000 00000000 00000000     ................
	...

2002bd8c <K>:
2002bd8c:	428a2f98 71374491 b5c0fbcf e9b5dba5     ./.B.D7q........
2002bd9c:	3956c25b 59f111f1 923f82a4 ab1c5ed5     [.V9...Y..?..^..
2002bdac:	d807aa98 12835b01 243185be 550c7dc3     .....[....1$.}.U
2002bdbc:	72be5d74 80deb1fe 9bdc06a7 c19bf174     t].r........t...
2002bdcc:	e49b69c1 efbe4786 0fc19dc6 240ca1cc     .i...G.........$
2002bddc:	2de92c6f 4a7484aa 5cb0a9dc 76f988da     o,.-..tJ...\...v
2002bdec:	983e5152 a831c66d b00327c8 bf597fc7     RQ>.m.1..'....Y.
2002bdfc:	c6e00bf3 d5a79147 06ca6351 14292967     ....G...Qc..g)).
2002be0c:	27b70a85 2e1b2138 4d2c6dfc 53380d13     ...'8!...m,M..8S
2002be1c:	650a7354 766a0abb 81c2c92e 92722c85     Ts.e..jv.....,r.
2002be2c:	a2bfe8a1 a81a664b c24b8b70 c76c51a3     ....Kf..p.K..Ql.
2002be3c:	d192e819 d6990624 f40e3585 106aa070     ....$....5..p.j.
2002be4c:	19a4c116 1e376c08 2748774c 34b0bcb5     .....l7.LwH'...4
2002be5c:	391c0cb3 4ed8aa4a 5b9cca4f 682e6ff3     ...9J..NO..[.o.h
2002be6c:	748f82ee 78a5636f 84c87814 8cc70208     ...toc.x.x......
2002be7c:	90befffa a4506ceb bef9a3f7 c67178f2     .....lP......xq.

2002be8c <sha512_padding>:
2002be8c:	00000080 00000000 00000000 00000000     ................
	...

2002bf10 <K>:
2002bf10:	d728ae22 428a2f98 23ef65cd 71374491     ".(../.B.e.#.D7q
2002bf20:	ec4d3b2f b5c0fbcf 8189dbbc e9b5dba5     /;M.............
2002bf30:	f348b538 3956c25b b605d019 59f111f1     8.H.[.V9.......Y
2002bf40:	af194f9b 923f82a4 da6d8118 ab1c5ed5     .O....?...m..^..
2002bf50:	a3030242 d807aa98 45706fbe 12835b01     B........opE.[..
2002bf60:	4ee4b28c 243185be d5ffb4e2 550c7dc3     ...N..1$.....}.U
2002bf70:	f27b896f 72be5d74 3b1696b1 80deb1fe     o.{.t].r...;....
2002bf80:	25c71235 9bdc06a7 cf692694 c19bf174     5..%.....&i.t...
2002bf90:	9ef14ad2 e49b69c1 384f25e3 efbe4786     .J...i...%O8.G..
2002bfa0:	8b8cd5b5 0fc19dc6 77ac9c65 240ca1cc     ........e..w...$
2002bfb0:	592b0275 2de92c6f 6ea6e483 4a7484aa     u.+Yo,.-...n..tJ
2002bfc0:	bd41fbd4 5cb0a9dc 831153b5 76f988da     ..A....\.S.....v
2002bfd0:	ee66dfab 983e5152 2db43210 a831c66d     ..f.RQ>..2.-m.1.
2002bfe0:	98fb213f b00327c8 beef0ee4 bf597fc7     ?!...'........Y.
2002bff0:	3da88fc2 c6e00bf3 930aa725 d5a79147     ...=....%...G...
2002c000:	e003826f 06ca6351 0a0e6e70 14292967     o...Qc..pn..g)).
2002c010:	46d22ffc 27b70a85 5c26c926 2e1b2138     ./.F...'&.&\8!..
2002c020:	5ac42aed 4d2c6dfc 9d95b3df 53380d13     .*.Z.m,M......8S
2002c030:	8baf63de 650a7354 3c77b2a8 766a0abb     .c..Ts.e..w<..jv
2002c040:	47edaee6 81c2c92e 1482353b 92722c85     ...G....;5...,r.
2002c050:	4cf10364 a2bfe8a1 bc423001 a81a664b     d..L.....0B.Kf..
2002c060:	d0f89791 c24b8b70 0654be30 c76c51a3     ....p.K.0.T..Ql.
2002c070:	d6ef5218 d192e819 5565a910 d6990624     .R........eU$...
2002c080:	5771202a f40e3585 32bbd1b8 106aa070     * qW.5.....2p.j.
2002c090:	b8d2d0c8 19a4c116 5141ab53 1e376c08     ........S.AQ.l7.
2002c0a0:	df8eeb99 2748774c e19b48a8 34b0bcb5     ....LwH'.H.....4
2002c0b0:	c5c95a63 391c0cb3 e3418acb 4ed8aa4a     cZ.....9..A.J..N
2002c0c0:	7763e373 5b9cca4f d6b2b8a3 682e6ff3     s.cwO..[.....o.h
2002c0d0:	5defb2fc 748f82ee 43172f60 78a5636f     ...]...t`/.Coc.x
2002c0e0:	a1f0ab72 84c87814 1a6439ec 8cc70208     r....x...9d.....
2002c0f0:	23631e28 90befffa de82bde9 a4506ceb     (.c#.........lP.
2002c100:	b2c67915 bef9a3f7 e372532b c67178f2     .y......+Sr..xq.
2002c110:	ea26619c ca273ece 21c0c207 d186b8c7     .a&..>'....!....
2002c120:	cde0eb1e eada7dd6 ee6ed178 f57d4f7f     .....}..x.n..O}.
2002c130:	72176fba 06f067aa a2c898a6 0a637dc5     .o.r.g.......}c.
2002c140:	bef90dae 113f9804 131c471b 1b710b35     ......?..G..5.q.
2002c150:	23047d84 28db77f5 40c72493 32caab7b     .}.#.w.(.$.@{..2
2002c160:	15c9bebc 3c9ebe0a 9c100d4c 431d67c4     .......<L....g.C
2002c170:	cb3e42b6 4cc5d4be fc657e2a 597f299c     .B>....L*~e..).Y
2002c180:	3ad6faec 5fcb6fab 4a475817 6c44198c     ...:.o._.XGJ..Dl

2002c190 <oid_md_alg>:
2002c190:	2002ae57 00000009 2002ae61 2002af6a     W.. ....a.. j.. 
2002c1a0:	00000005 2002ae6b 00000009 2002ae75     ....k.. ....u.. 
2002c1b0:	2002af9d 00000006 2002ae7f 00000009     ... ....... ....
2002c1c0:	2002ae89 2002afd0 00000007 2002ae93     ... ... ....... 
2002c1d0:	00000009 2002ae9d 2002b003 00000008     ....... ... ....
	...

2002c1f4 <oid_pk_alg>:
2002c1f4:	2002aedf 00000009 2002aee9 2002aef7     ... ....... ... 
2002c204:	00000001 2002aefb 00000007 2002af03     ....... ....... 
2002c214:	2002af12 00000002 2002af21 00000005     ... ....!.. ....
2002c224:	2002af27 2002af2f 00000003 00000000     '.. /.. ........
	...

2002c244 <mbedtls_rsa_info>:
2002c244:	00000001 2002aef7 20029527 2002951b     ....... '.. ... 
2002c254:	20029601 200295dd 200295b1 20029581     ... ... ... ... 
2002c264:	2002957d 20029563 20029551 2002952d     }.. c.. Q.. -.. 

2002c274 <_init>:
2002c274:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c276:	bf00      	nop
2002c278:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c27a:	bc08      	pop	{r3}
2002c27c:	469e      	mov	lr, r3
2002c27e:	4770      	bx	lr

2002c280 <_fini>:
2002c280:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c282:	bf00      	nop
2002c284:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c286:	bc08      	pop	{r3}
2002c288:	469e      	mov	lr, r3
2002c28a:	4770      	bx	lr

2002c28c <__EH_FRAME_BEGIN__>:
2002c28c:	0000 0000                                   ....

Disassembly of section .l1_ret_text_HAL_PMU_ConfigPeriLdo:

2002c290 <HAL_PMU_ConfigPeriLdo>:
2002c290:	b538      	push	{r3, r4, r5, lr}
2002c292:	b150      	cbz	r0, 2002c2aa <HAL_PMU_ConfigPeriLdo+0x1a>
2002c294:	4c18      	ldr	r4, [pc, #96]	@ (2002c2f8 <HAL_PMU_ConfigPeriLdo+0x68>)
2002c296:	6863      	ldr	r3, [r4, #4]
2002c298:	b2db      	uxtb	r3, r3
2002c29a:	2b07      	cmp	r3, #7
2002c29c:	d101      	bne.n	2002c2a2 <HAL_PMU_ConfigPeriLdo+0x12>
2002c29e:	2000      	movs	r0, #0
2002c2a0:	bd38      	pop	{r3, r4, r5, pc}
2002c2a2:	6863      	ldr	r3, [r4, #4]
2002c2a4:	b2db      	uxtb	r3, r3
2002c2a6:	2b0f      	cmp	r3, #15
2002c2a8:	d0f9      	beq.n	2002c29e <HAL_PMU_ConfigPeriLdo+0xe>
2002c2aa:	4c13      	ldr	r4, [pc, #76]	@ (2002c2f8 <HAL_PMU_ConfigPeriLdo+0x68>)
2002c2ac:	6863      	ldr	r3, [r4, #4]
2002c2ae:	b2db      	uxtb	r3, r3
2002c2b0:	2b07      	cmp	r3, #7
2002c2b2:	d0f4      	beq.n	2002c29e <HAL_PMU_ConfigPeriLdo+0xe>
2002c2b4:	6863      	ldr	r3, [r4, #4]
2002c2b6:	b2db      	uxtb	r3, r3
2002c2b8:	2b0f      	cmp	r3, #15
2002c2ba:	d0f0      	beq.n	2002c29e <HAL_PMU_ConfigPeriLdo+0xe>
2002c2bc:	2810      	cmp	r0, #16
2002c2be:	d818      	bhi.n	2002c2f2 <HAL_PMU_ConfigPeriLdo+0x62>
2002c2c0:	4b0e      	ldr	r3, [pc, #56]	@ (2002c2fc <HAL_PMU_ConfigPeriLdo+0x6c>)
2002c2c2:	40c3      	lsrs	r3, r0
2002c2c4:	07db      	lsls	r3, r3, #31
2002c2c6:	d514      	bpl.n	2002c2f2 <HAL_PMU_ConfigPeriLdo+0x62>
2002c2c8:	2900      	cmp	r1, #0
2002c2ca:	f04f 0421 	mov.w	r4, #33	@ 0x21
2002c2ce:	bf0c      	ite	eq
2002c2d0:	2120      	moveq	r1, #32
2002c2d2:	2101      	movne	r1, #1
2002c2d4:	4d0a      	ldr	r5, [pc, #40]	@ (2002c300 <HAL_PMU_ConfigPeriLdo+0x70>)
2002c2d6:	4084      	lsls	r4, r0
2002c2d8:	6deb      	ldr	r3, [r5, #92]	@ 0x5c
2002c2da:	4081      	lsls	r1, r0
2002c2dc:	ea23 0304 	bic.w	r3, r3, r4
2002c2e0:	430b      	orrs	r3, r1
2002c2e2:	65eb      	str	r3, [r5, #92]	@ 0x5c
2002c2e4:	2a00      	cmp	r2, #0
2002c2e6:	d0da      	beq.n	2002c29e <HAL_PMU_ConfigPeriLdo+0xe>
2002c2e8:	f241 3088 	movw	r0, #5000	@ 0x1388
2002c2ec:	f7f5 fde9 	bl	20021ec2 <HAL_Delay_us>
2002c2f0:	e7d5      	b.n	2002c29e <HAL_PMU_ConfigPeriLdo+0xe>
2002c2f2:	2001      	movs	r0, #1
2002c2f4:	e7d4      	b.n	2002c2a0 <HAL_PMU_ConfigPeriLdo+0x10>
2002c2f6:	bf00      	nop
2002c2f8:	5000b000 	.word	0x5000b000
2002c2fc:	00010101 	.word	0x00010101
2002c300:	500ca000 	.word	0x500ca000

Disassembly of section .l1_ret_text_HAL_PMU_Reboot:

2002c304 <HAL_PMU_Reboot>:
2002c304:	b508      	push	{r3, lr}
2002c306:	f3ef 8310 	mrs	r3, PRIMASK
2002c30a:	2501      	movs	r5, #1
2002c30c:	f385 8810 	msr	PRIMASK, r5
2002c310:	2002      	movs	r0, #2
2002c312:	f7f6 fbc1 	bl	20022a98 <HAL_HPAON_WakeCore>
2002c316:	4628      	mov	r0, r5
2002c318:	f7f8 ff9e 	bl	20025258 <HAL_RCC_Reset_and_Halt_LCPU>
2002c31c:	462a      	mov	r2, r5
2002c31e:	2100      	movs	r1, #0
2002c320:	2008      	movs	r0, #8
2002c322:	f7ff ffb5 	bl	2002c290 <HAL_PMU_ConfigPeriLdo>
2002c326:	f44f 50fa 	mov.w	r0, #8000	@ 0x1f40
2002c32a:	f7f5 fd6b 	bl	20021e04 <HAL_Delay_us_>
2002c32e:	2000      	movs	r0, #0
2002c330:	f7f8 fd92 	bl	20024e58 <HAL_RCC_HCPU_GetClockSrc>
2002c334:	4604      	mov	r4, r0
2002c336:	b928      	cbnz	r0, 2002c344 <HAL_PMU_Reboot+0x40>
2002c338:	f7f6 fbd8 	bl	20022aec <HAL_HPAON_EnableXT48>
2002c33c:	4629      	mov	r1, r5
2002c33e:	4620      	mov	r0, r4
2002c340:	f7f8 fe52 	bl	20024fe8 <HAL_RCC_HCPU_ClockSelect>
2002c344:	f245 0250 	movw	r2, #20560	@ 0x5050
2002c348:	4c09      	ldr	r4, [pc, #36]	@ (2002c370 <HAL_PMU_Reboot+0x6c>)
2002c34a:	4b0a      	ldr	r3, [pc, #40]	@ (2002c374 <HAL_PMU_Reboot+0x70>)
2002c34c:	6763      	str	r3, [r4, #116]	@ 0x74
2002c34e:	4b0a      	ldr	r3, [pc, #40]	@ (2002c378 <HAL_PMU_Reboot+0x74>)
2002c350:	631a      	str	r2, [r3, #48]	@ 0x30
2002c352:	6823      	ldr	r3, [r4, #0]
2002c354:	075b      	lsls	r3, r3, #29
2002c356:	d506      	bpl.n	2002c366 <HAL_PMU_Reboot+0x62>
2002c358:	6823      	ldr	r3, [r4, #0]
2002c35a:	4808      	ldr	r0, [pc, #32]	@ (2002c37c <HAL_PMU_Reboot+0x78>)
2002c35c:	f023 0304 	bic.w	r3, r3, #4
2002c360:	6023      	str	r3, [r4, #0]
2002c362:	f7f5 fdae 	bl	20021ec2 <HAL_Delay_us>
2002c366:	6823      	ldr	r3, [r4, #0]
2002c368:	f043 0304 	orr.w	r3, r3, #4
2002c36c:	6023      	str	r3, [r4, #0]
2002c36e:	e7fe      	b.n	2002c36e <HAL_PMU_Reboot+0x6a>
2002c370:	500ca000 	.word	0x500ca000
2002c374:	0a50c015 	.word	0x0a50c015
2002c378:	500cb000 	.word	0x500cb000
2002c37c:	000186a0 	.word	0x000186a0

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef:

2002c380 <HAL_PMU_GetHpsysVoutRef>:
2002c380:	4b04      	ldr	r3, [pc, #16]	@ (2002c394 <HAL_PMU_GetHpsysVoutRef+0x14>)
2002c382:	781a      	ldrb	r2, [r3, #0]
2002c384:	b122      	cbz	r2, 2002c390 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c386:	b118      	cbz	r0, 2002c390 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c388:	78db      	ldrb	r3, [r3, #3]
2002c38a:	7003      	strb	r3, [r0, #0]
2002c38c:	2000      	movs	r0, #0
2002c38e:	4770      	bx	lr
2002c390:	2001      	movs	r0, #1
2002c392:	4770      	bx	lr
2002c394:	20049f64 	.word	0x20049f64

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef2:

2002c398 <HAL_PMU_GetHpsysVoutRef2>:
2002c398:	4b04      	ldr	r3, [pc, #16]	@ (2002c3ac <HAL_PMU_GetHpsysVoutRef2+0x14>)
2002c39a:	781a      	ldrb	r2, [r3, #0]
2002c39c:	b122      	cbz	r2, 2002c3a8 <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c39e:	b118      	cbz	r0, 2002c3a8 <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c3a0:	7b5b      	ldrb	r3, [r3, #13]
2002c3a2:	7003      	strb	r3, [r0, #0]
2002c3a4:	2000      	movs	r0, #0
2002c3a6:	4770      	bx	lr
2002c3a8:	2001      	movs	r0, #1
2002c3aa:	4770      	bx	lr
2002c3ac:	20049f64 	.word	0x20049f64
