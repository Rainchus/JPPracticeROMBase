.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80068170
/* 43570 80068170 27BDFD68 */  addiu     $sp, $sp, -0x298
/* 43574 80068174 AFB00270 */  sw        $s0, 0x270($sp)
/* 43578 80068178 8FB002AC */  lw        $s0, 0x2ac($sp)
/* 4357C 8006817C A7A50256 */  sh        $a1, 0x256($sp)
/* 43580 80068180 97A50256 */  lhu       $a1, 0x256($sp)
/* 43584 80068184 AFB20278 */  sw        $s2, 0x278($sp)
/* 43588 80068188 00809021 */  addu      $s2, $a0, $zero
/* 4358C 8006818C AFB60288 */  sw        $s6, 0x288($sp)
/* 43590 80068190 0000B021 */  addu      $s6, $zero, $zero
/* 43594 80068194 AFB7028C */  sw        $s7, 0x28c($sp)
/* 43598 80068198 0000B821 */  addu      $s7, $zero, $zero
/* 4359C 8006819C AFB50284 */  sw        $s5, 0x284($sp)
/* 435A0 800681A0 0000A821 */  addu      $s5, $zero, $zero
/* 435A4 800681A4 AFA6025C */  sw        $a2, 0x25c($sp)
/* 435A8 800681A8 2CC30001 */  sltiu     $v1, $a2, 1
/* 435AC 800681AC AFBF0294 */  sw        $ra, 0x294($sp)
/* 435B0 800681B0 AFBE0290 */  sw        $fp, 0x290($sp)
/* 435B4 800681B4 AFB40280 */  sw        $s4, 0x280($sp)
/* 435B8 800681B8 AFB3027C */  sw        $s3, 0x27c($sp)
/* 435BC 800681BC AFB10274 */  sw        $s1, 0x274($sp)
/* 435C0 800681C0 2CA20001 */  sltiu     $v0, $a1, 1
/* 435C4 800681C4 00431025 */  or        $v0, $v0, $v1
/* 435C8 800681C8 14400020 */  bnez      $v0, .L8006824C
/* 435CC 800681CC AFA70264 */   sw       $a3, 0x264($sp)
/* 435D0 800681D0 260600FF */  addiu     $a2, $s0, 0xff
/* 435D4 800681D4 04C20001 */  bltzl     $a2, .L800681DC
/* 435D8 800681D8 260601FE */   addiu    $a2, $s0, 0x1fe
.L800681DC:
/* 435DC 800681DC 00069A03 */  sra       $s3, $a2, 8
/* 435E0 800681E0 8FA802A8 */  lw        $t0, 0x2a8($sp)
/* 435E4 800681E4 8FA6025C */  lw        $a2, 0x25c($sp)
/* 435E8 800681E8 8FA70264 */  lw        $a3, 0x264($sp)
/* 435EC 800681EC AFA80010 */  sw        $t0, 0x10($sp)
/* 435F0 800681F0 8FA802B0 */  lw        $t0, 0x2b0($sp)
/* 435F4 800681F4 02402021 */  addu      $a0, $s2, $zero
/* 435F8 800681F8 0C01A368 */  jal       func_80068DA0
/* 435FC 800681FC AFA80014 */   sw       $t0, 0x14($sp)
/* 43600 80068200 00401821 */  addu      $v1, $v0, $zero
/* 43604 80068204 10600003 */  beqz      $v1, .L80068214
/* 43608 80068208 24020005 */   addiu    $v0, $zero, 5
/* 4360C 8006820C 1462008F */  bne       $v1, $v0, .L8006844C
/* 43610 80068210 00601021 */   addu     $v0, $v1, $zero
.L80068214:
/* 43614 80068214 8FA802B0 */  lw        $t0, 0x2b0($sp)
/* 43618 80068218 8D030000 */  lw        $v1, ($t0)
/* 4361C 8006821C 2402FFFF */  addiu     $v0, $zero, -1
/* 43620 80068220 1462008A */  bne       $v1, $v0, .L8006844C
/* 43624 80068224 24020009 */   addiu    $v0, $zero, 9
/* 43628 80068228 02402021 */  addu      $a0, $s2, $zero
/* 4362C 8006822C 0C01A3D8 */  jal       func_80068F60
/* 43630 80068230 27A50240 */   addiu    $a1, $sp, 0x240
/* 43634 80068234 8FA20240 */  lw        $v0, 0x240($sp)
/* 43638 80068238 0050102A */  slt       $v0, $v0, $s0
/* 4363C 8006823C 14400083 */  bnez      $v0, .L8006844C
/* 43640 80068240 24020007 */   addiu    $v0, $zero, 7
/* 43644 80068244 16600003 */  bnez      $s3, .L80068254
/* 43648 80068248 02402021 */   addu     $a0, $s2, $zero
.L8006824C:
/* 4364C 8006824C 0801A113 */  j         .L8006844C
/* 43650 80068250 24020005 */   addiu    $v0, $zero, 5
.L80068254:
/* 43654 80068254 00002821 */  addu      $a1, $zero, $zero
/* 43658 80068258 8FA802B0 */  lw        $t0, 0x2b0($sp)
/* 4365C 8006825C 00003021 */  addu      $a2, $zero, $zero
/* 43660 80068260 00003821 */  addu      $a3, $zero, $zero
/* 43664 80068264 AFA00010 */  sw        $zero, 0x10($sp)
/* 43668 80068268 0C01A368 */  jal       func_80068DA0
/* 4366C 8006826C AFA80014 */   sw       $t0, 0x14($sp)
/* 43670 80068270 00401821 */  addu      $v1, $v0, $zero
/* 43674 80068274 10600003 */  beqz      $v1, .L80068284
/* 43678 80068278 24020005 */   addiu    $v0, $zero, 5
/* 4367C 8006827C 14620073 */  bne       $v1, $v0, .L8006844C
/* 43680 80068280 00601021 */   addu     $v0, $v1, $zero
.L80068284:
/* 43684 80068284 8FA802B0 */  lw        $t0, 0x2b0($sp)
/* 43688 80068288 8D030000 */  lw        $v1, ($t0)
/* 4368C 8006828C 2402FFFF */  addiu     $v0, $zero, -1
/* 43690 80068290 1062006E */  beq       $v1, $v0, .L8006844C
/* 43694 80068294 24020008 */   addiu    $v0, $zero, 8
/* 43698 80068298 92420064 */  lbu       $v0, 0x64($s2)
/* 4369C 8006829C 1040004A */  beqz      $v0, .L800683C8
/* 436A0 800682A0 00008821 */   addu     $s1, $zero, $zero
/* 436A4 800682A4 27B40120 */  addiu     $s4, $sp, 0x120
/* 436A8 800682A8 02402021 */  addu      $a0, $s2, $zero
.L800682AC:
/* 436AC 800682AC 27A50020 */  addiu     $a1, $sp, 0x20
/* 436B0 800682B0 00003021 */  addu      $a2, $zero, $zero
/* 436B4 800682B4 323000FF */  andi      $s0, $s1, 0xff
/* 436B8 800682B8 0C01A79B */  jal       func_80069E6C
/* 436BC 800682BC 02003821 */   addu     $a3, $s0, $zero
/* 436C0 800682C0 00401821 */  addu      $v1, $v0, $zero
/* 436C4 800682C4 14600048 */  bnez      $v1, .L800683E8
/* 436C8 800682C8 02402021 */   addu     $a0, $s2, $zero
/* 436CC 800682CC 27A50020 */  addiu     $a1, $sp, 0x20
/* 436D0 800682D0 02603021 */  addu      $a2, $s3, $zero
/* 436D4 800682D4 27A70244 */  addiu     $a3, $sp, 0x244
/* 436D8 800682D8 27A20248 */  addiu     $v0, $sp, 0x248
/* 436DC 800682DC AFA20014 */  sw        $v0, 0x14($sp)
/* 436E0 800682E0 27A2024C */  addiu     $v0, $sp, 0x24c
/* 436E4 800682E4 AFB00010 */  sw        $s0, 0x10($sp)
/* 436E8 800682E8 0C01A11F */  jal       func_8006847C
/* 436EC 800682EC AFA20018 */   sw       $v0, 0x18($sp)
/* 436F0 800682F0 00401821 */  addu      $v1, $v0, $zero
/* 436F4 800682F4 1460003C */  bnez      $v1, .L800683E8
/* 436F8 800682F8 2402FFFF */   addiu    $v0, $zero, -1
/* 436FC 800682FC 8FA30244 */  lw        $v1, 0x244($sp)
/* 43700 80068300 1062002B */  beq       $v1, $v0, .L800683B0
/* 43704 80068304 00000000 */   nop
/* 43708 80068308 12A0000F */  beqz      $s5, .L80068348
/* 4370C 8006830C 02402021 */   addu     $a0, $s2, $zero
/* 43710 80068310 02802821 */  addu      $a1, $s4, $zero
/* 43714 80068314 00161040 */  sll       $v0, $s6, 1
/* 43718 80068318 02821021 */  addu      $v0, $s4, $v0
/* 4371C 8006831C A0510000 */  sb        $s1, ($v0)
/* 43720 80068320 8FA30244 */  lw        $v1, 0x244($sp)
/* 43724 80068324 24060001 */  addiu     $a2, $zero, 1
/* 43728 80068328 32E700FF */  andi      $a3, $s7, 0xff
/* 4372C 8006832C 0C01A79B */  jal       func_80069E6C
/* 43730 80068330 A0430001 */   sb       $v1, 1($v0)
/* 43734 80068334 00401821 */  addu      $v1, $v0, $zero
/* 43738 80068338 10600006 */  beqz      $v1, .L80068354
/* 4373C 8006833C 00000000 */   nop
/* 43740 80068340 0801A113 */  j         .L8006844C
/* 43744 80068344 00000000 */   nop
.L80068348:
/* 43748 80068348 306300FF */  andi      $v1, $v1, 0xff
/* 4374C 8006834C 00111200 */  sll       $v0, $s1, 8
/* 43750 80068350 0043F025 */  or        $fp, $v0, $v1
.L80068354:
/* 43754 80068354 8FA20248 */  lw        $v0, 0x248($sp)
/* 43758 80068358 0053102A */  slt       $v0, $v0, $s3
/* 4375C 8006835C 1440000C */  bnez      $v0, .L80068390
/* 43760 80068360 27A40020 */   addiu    $a0, $sp, 0x20
/* 43764 80068364 00009821 */  addu      $s3, $zero, $zero
/* 43768 80068368 02402021 */  addu      $a0, $s2, $zero
/* 4376C 8006836C 27A50020 */  addiu     $a1, $sp, 0x20
/* 43770 80068370 24060001 */  addiu     $a2, $zero, 1
/* 43774 80068374 0C01A79B */  jal       func_80069E6C
/* 43778 80068378 322700FF */   andi     $a3, $s1, 0xff
/* 4377C 8006837C 00401821 */  addu      $v1, $v0, $zero
/* 43780 80068380 10600011 */  beqz      $v1, .L800683C8
/* 43784 80068384 00000000 */   nop
/* 43788 80068388 0801A113 */  j         .L8006844C
/* 4378C 8006838C 00000000 */   nop
.L80068390:
/* 43790 80068390 27A50120 */  addiu     $a1, $sp, 0x120
/* 43794 80068394 0C019188 */  jal       func_80064620
/* 43798 80068398 24060100 */   addiu    $a2, $zero, 0x100
/* 4379C 8006839C 8FB6024C */  lw        $s6, 0x24c($sp)
/* 437A0 800683A0 8FA20248 */  lw        $v0, 0x248($sp)
/* 437A4 800683A4 0220B821 */  addu      $s7, $s1, $zero
/* 437A8 800683A8 26B50001 */  addiu     $s5, $s5, 1
/* 437AC 800683AC 02629823 */  subu      $s3, $s3, $v0
.L800683B0:
/* 437B0 800683B0 92430064 */  lbu       $v1, 0x64($s2)
/* 437B4 800683B4 26310001 */  addiu     $s1, $s1, 1
/* 437B8 800683B8 322200FF */  andi      $v0, $s1, 0xff
/* 437BC 800683BC 0043102B */  sltu      $v0, $v0, $v1
/* 437C0 800683C0 1440FFBA */  bnez      $v0, .L800682AC
/* 437C4 800683C4 02402021 */   addu     $a0, $s2, $zero
.L800683C8:
/* 437C8 800683C8 1E600020 */  bgtz      $s3, .L8006844C
/* 437CC 800683CC 24020003 */   addiu    $v0, $zero, 3
/* 437D0 800683D0 8FA30244 */  lw        $v1, 0x244($sp)
/* 437D4 800683D4 2402FFFF */  addiu     $v0, $zero, -1
/* 437D8 800683D8 14620005 */  bne       $v1, $v0, .L800683F0
/* 437DC 800683DC 27A50230 */   addiu    $a1, $sp, 0x230
/* 437E0 800683E0 0801A113 */  j         .L8006844C
/* 437E4 800683E4 24020003 */   addiu    $v0, $zero, 3
.L800683E8:
/* 437E8 800683E8 0801A113 */  j         .L8006844C
/* 437EC 800683EC 00601021 */   addu     $v0, $v1, $zero
.L800683F0:
/* 437F0 800683F0 97A80256 */  lhu       $t0, 0x256($sp)
/* 437F4 800683F4 8FA40264 */  lw        $a0, 0x264($sp)
/* 437F8 800683F8 A7A80224 */  sh        $t0, 0x224($sp)
/* 437FC 800683FC 8FA8025C */  lw        $t0, 0x25c($sp)
/* 43800 80068400 24060010 */  addiu     $a2, $zero, 0x10
/* 43804 80068404 A7BE0226 */  sh        $fp, 0x226($sp)
/* 43808 80068408 A7A0022A */  sh        $zero, 0x22a($sp)
/* 4380C 8006840C 0C019188 */  jal       func_80064620
/* 43810 80068410 AFA80220 */   sw       $t0, 0x220($sp)
/* 43814 80068414 8FA402A8 */  lw        $a0, 0x2a8($sp)
/* 43818 80068418 27A5022C */  addiu     $a1, $sp, 0x22c
/* 4381C 8006841C 0C019188 */  jal       func_80064620
/* 43820 80068420 24060004 */   addiu    $a2, $zero, 4
/* 43824 80068424 8FA802B0 */  lw        $t0, 0x2b0($sp)
/* 43828 80068428 8E46005C */  lw        $a2, 0x5c($s2)
/* 4382C 8006842C 8D020000 */  lw        $v0, ($t0)
/* 43830 80068430 27A70220 */  addiu     $a3, $sp, 0x220
/* 43834 80068434 AFA00010 */  sw        $zero, 0x10($sp)
/* 43838 80068438 8E440004 */  lw        $a0, 4($s2)
/* 4383C 8006843C 8E450008 */  lw        $a1, 8($s2)
/* 43840 80068440 00C23021 */  addu      $a2, $a2, $v0
/* 43844 80068444 0C01A8E8 */  jal       func_8006A3A0
/* 43848 80068448 30C6FFFF */   andi     $a2, $a2, 0xffff
.L8006844C:
/* 4384C 8006844C 8FBF0294 */  lw        $ra, 0x294($sp)
/* 43850 80068450 8FBE0290 */  lw        $fp, 0x290($sp)
/* 43854 80068454 8FB7028C */  lw        $s7, 0x28c($sp)
/* 43858 80068458 8FB60288 */  lw        $s6, 0x288($sp)
/* 4385C 8006845C 8FB50284 */  lw        $s5, 0x284($sp)
/* 43860 80068460 8FB40280 */  lw        $s4, 0x280($sp)
/* 43864 80068464 8FB3027C */  lw        $s3, 0x27c($sp)
/* 43868 80068468 8FB20278 */  lw        $s2, 0x278($sp)
/* 4386C 8006846C 8FB10274 */  lw        $s1, 0x274($sp)
/* 43870 80068470 8FB00270 */  lw        $s0, 0x270($sp)
/* 43874 80068474 03E00008 */  jr        $ra
/* 43878 80068478 27BD0298 */   addiu    $sp, $sp, 0x298
