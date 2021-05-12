.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8004B3F8
/* 267F8 8004B3F8 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 267FC 8004B3FC AFB40030 */  sw        $s4, 0x30($sp)
/* 26800 8004B400 0080A02D */  daddu     $s4, $a0, $zero
/* 26804 8004B404 AFBF0038 */  sw        $ra, 0x38($sp)
/* 26808 8004B408 AFB50034 */  sw        $s5, 0x34($sp)
/* 2680C 8004B40C AFB3002C */  sw        $s3, 0x2c($sp)
/* 26810 8004B410 AFB20028 */  sw        $s2, 0x28($sp)
/* 26814 8004B414 AFB10024 */  sw        $s1, 0x24($sp)
/* 26818 8004B418 AFB00020 */  sw        $s0, 0x20($sp)
/* 2681C 8004B41C 8E820030 */  lw        $v0, 0x30($s4)
/* 26820 8004B420 8E830168 */  lw        $v1, 0x168($s4)
/* 26824 8004B424 24420001 */  addiu     $v0, $v0, 1
/* 26828 8004B428 10600004 */  beqz      $v1, .L8004B43C
/* 2682C 8004B42C AE820030 */   sw       $v0, 0x30($s4)
/* 26830 8004B430 0C01345B */  jal       func_8004D16C
/* 26834 8004B434 00000000 */   nop
/* 26838 8004B438 AE800168 */  sw        $zero, 0x168($s4)
.L8004B43C:
/* 2683C 8004B43C 0280802D */  daddu     $s0, $s4, $zero
.L8004B440:
/* 26840 8004B440 92030090 */  lbu       $v1, 0x90($s0)
/* 26844 8004B444 10600035 */  beqz      $v1, .L8004B51C
/* 26848 8004B448 2C620002 */   sltiu    $v0, $v1, 2
/* 2684C 8004B44C 10400033 */  beqz      $v0, .L8004B51C
/* 26850 8004B450 00031040 */   sll      $v0, $v1, 1
/* 26854 8004B454 00431021 */  addu      $v0, $v0, $v1
/* 26858 8004B458 00021040 */  sll       $v0, $v0, 1
/* 2685C 8004B45C 3C038008 */  lui       $v1, %hi(D_8007833A)
/* 26860 8004B460 2463833A */  addiu     $v1, $v1, %lo(D_8007833A)
/* 26864 8004B464 00433021 */  addu      $a2, $v0, $v1
/* 26868 8004B468 94C20002 */  lhu       $v0, 2($a2)
/* 2686C 8004B46C 10400020 */  beqz      $v0, .L8004B4F0
/* 26870 8004B470 0000882D */   daddu    $s1, $zero, $zero
/* 26874 8004B474 0040282D */  daddu     $a1, $v0, $zero
/* 26878 8004B478 0200202D */  daddu     $a0, $s0, $zero
/* 2687C 8004B47C 0280182D */  daddu     $v1, $s4, $zero
.L8004B480:
/* 26880 8004B480 94620202 */  lhu       $v0, 0x202($v1)
/* 26884 8004B484 54450015 */  bnel      $v0, $a1, .L8004B4DC
/* 26888 8004B488 26310001 */   addiu    $s1, $s1, 1
/* 2688C 8004B48C 94C20000 */  lhu       $v0, ($a2)
/* 26890 8004B490 A7A00012 */  sh        $zero, 0x12($sp)
/* 26894 8004B494 A7A00016 */  sh        $zero, 0x16($sp)
/* 26898 8004B498 A7A20010 */  sh        $v0, 0x10($sp)
/* 2689C 8004B49C 90C20004 */  lbu       $v0, 4($a2)
/* 268A0 8004B4A0 30420001 */  andi      $v0, $v0, 1
/* 268A4 8004B4A4 50400008 */  beql      $v0, $zero, .L8004B4C8
/* 268A8 8004B4A8 A7A00014 */   sh       $zero, 0x14($sp)
/* 268AC 8004B4AC 90820093 */  lbu       $v0, 0x93($a0)
/* 268B0 8004B4B0 50400005 */  beql      $v0, $zero, .L8004B4C8
/* 268B4 8004B4B4 A7A00014 */   sh       $zero, 0x14($sp)
/* 268B8 8004B4B8 90820093 */  lbu       $v0, 0x93($a0)
/* 268BC 8004B4BC 00021200 */  sll       $v0, $v0, 8
/* 268C0 8004B4C0 244200FF */  addiu     $v0, $v0, 0xff
/* 268C4 8004B4C4 A7A20014 */  sh        $v0, 0x14($sp)
.L8004B4C8:
/* 268C8 8004B4C8 A3A00018 */  sb        $zero, 0x18($sp)
/* 268CC 8004B4CC 0280202D */  daddu     $a0, $s4, $zero
/* 268D0 8004B4D0 27A50010 */  addiu     $a1, $sp, 0x10
/* 268D4 8004B4D4 08012D45 */  j         .L8004B514
/* 268D8 8004B4D8 0000302D */   daddu    $a2, $zero, $zero
.L8004B4DC:
/* 268DC 8004B4DC 2E220008 */  sltiu     $v0, $s1, 8
/* 268E0 8004B4E0 1440FFE7 */  bnez      $v0, .L8004B480
/* 268E4 8004B4E4 246300AC */   addiu    $v1, $v1, 0xac
/* 268E8 8004B4E8 08012D48 */  j         .L8004B520
/* 268EC 8004B4EC AE000090 */   sw       $zero, 0x90($s0)
.L8004B4F0:
/* 268F0 8004B4F0 0280202D */  daddu     $a0, $s4, $zero
/* 268F4 8004B4F4 27A50010 */  addiu     $a1, $sp, 0x10
/* 268F8 8004B4F8 94C20000 */  lhu       $v0, ($a2)
/* 268FC 8004B4FC 0000302D */  daddu     $a2, $zero, $zero
/* 26900 8004B500 A7A00012 */  sh        $zero, 0x12($sp)
/* 26904 8004B504 A7A00014 */  sh        $zero, 0x14($sp)
/* 26908 8004B508 A7A00016 */  sh        $zero, 0x16($sp)
/* 2690C 8004B50C A3A00018 */  sb        $zero, 0x18($sp)
/* 26910 8004B510 A7A20010 */  sh        $v0, 0x10($sp)
.L8004B514:
/* 26914 8004B514 0C012DC9 */  jal       func_8004B724
/* 26918 8004B518 00000000 */   nop
.L8004B51C:
/* 2691C 8004B51C AE000090 */  sw        $zero, 0x90($s0)
.L8004B520:
/* 26920 8004B520 26100004 */  addiu     $s0, $s0, 4
/* 26924 8004B524 26820010 */  addiu     $v0, $s4, 0x10
/* 26928 8004B528 0202102B */  sltu      $v0, $s0, $v0
/* 2692C 8004B52C 1440FFC4 */  bnez      $v0, .L8004B440
/* 26930 8004B530 0000902D */   daddu    $s2, $zero, $zero
/* 26934 8004B534 24130001 */  addiu     $s3, $zero, 1
/* 26938 8004B538 241100A0 */  addiu     $s1, $zero, 0xa0
/* 2693C 8004B53C 0280802D */  daddu     $s0, $s4, $zero
.L8004B540:
/* 26940 8004B540 960200A0 */  lhu       $v0, 0xa0($s0)
/* 26944 8004B544 10400009 */  beqz      $v0, .L8004B56C
/* 26948 8004B548 0280202D */   daddu    $a0, $s4, $zero
/* 2694C 8004B54C 27A50010 */  addiu     $a1, $sp, 0x10
/* 26950 8004B550 02913021 */  addu      $a2, $s4, $s1
/* 26954 8004B554 A7B30010 */  sh        $s3, 0x10($sp)
/* 26958 8004B558 A7A00012 */  sh        $zero, 0x12($sp)
/* 2695C 8004B55C A7A00014 */  sh        $zero, 0x14($sp)
/* 26960 8004B560 A7A00016 */  sh        $zero, 0x16($sp)
/* 26964 8004B564 0C012DC9 */  jal       func_8004B724
/* 26968 8004B568 A3A00018 */   sb       $zero, 0x18($sp)
.L8004B56C:
/* 2696C 8004B56C A60000A0 */  sh        $zero, 0xa0($s0)
/* 26970 8004B570 26310006 */  addiu     $s1, $s1, 6
/* 26974 8004B574 26520001 */  addiu     $s2, $s2, 1
/* 26978 8004B578 2E420004 */  sltiu     $v0, $s2, 4
/* 2697C 8004B57C 1440FFF0 */  bnez      $v0, .L8004B540
/* 26980 8004B580 26100006 */   addiu    $s0, $s0, 6
/* 26984 8004B584 92820164 */  lbu       $v0, 0x164($s4)
/* 26988 8004B588 92830163 */  lbu       $v1, 0x163($s4)
/* 2698C 8004B58C 0043A823 */  subu      $s5, $v0, $v1
/* 26990 8004B590 06A20001 */  bltzl     $s5, .L8004B598
/* 26994 8004B594 26B50010 */   addiu    $s5, $s5, 0x10
.L8004B598:
/* 26998 8004B598 26A2FFFF */  addiu     $v0, $s5, -1
/* 2699C 8004B59C 2C42000F */  sltiu     $v0, $v0, 0xf
/* 269A0 8004B5A0 10400033 */  beqz      $v0, .L8004B670
/* 269A4 8004B5A4 0060882D */   daddu    $s1, $v1, $zero
/* 269A8 8004B5A8 12A0002F */  beqz      $s5, .L8004B668
/* 269AC 8004B5AC 0000902D */   daddu    $s2, $zero, $zero
/* 269B0 8004B5B0 00111080 */  sll       $v0, $s1, 2
/* 269B4 8004B5B4 00511021 */  addu      $v0, $v0, $s1
/* 269B8 8004B5B8 00021040 */  sll       $v0, $v0, 1
/* 269BC 8004B5BC 245300C2 */  addiu     $s3, $v0, 0xc2
/* 269C0 8004B5C0 02938021 */  addu      $s0, $s4, $s3
.L8004B5C4:
/* 269C4 8004B5C4 96030000 */  lhu       $v1, ($s0)
/* 269C8 8004B5C8 306223FF */  andi      $v0, $v1, 0x23ff
/* 269CC 8004B5CC 1040001B */  beqz      $v0, .L8004B63C
/* 269D0 8004B5D0 30628000 */   andi     $v0, $v1, 0x8000
/* 269D4 8004B5D4 10400005 */  beqz      $v0, .L8004B5EC
/* 269D8 8004B5D8 3065FFFF */   andi     $a1, $v1, 0xffff
/* 269DC 8004B5DC 0C012FD5 */  jal       func_8004BF54
/* 269E0 8004B5E0 0280202D */   daddu    $a0, $s4, $zero
/* 269E4 8004B5E4 08012D90 */  j         .L8004B640
/* 269E8 8004B5E8 A6000000 */   sh       $zero, ($s0)
.L8004B5EC:
/* 269EC 8004B5EC 30621C00 */  andi      $v0, $v1, 0x1c00
/* 269F0 8004B5F0 14400007 */  bnez      $v0, .L8004B610
/* 269F4 8004B5F4 30620C00 */   andi     $v0, $v1, 0xc00
/* 269F8 8004B5F8 0280202D */  daddu     $a0, $s4, $zero
/* 269FC 8004B5FC 0200282D */  daddu     $a1, $s0, $zero
/* 26A00 8004B600 0C012DC9 */  jal       func_8004B724
/* 26A04 8004B604 0000302D */   daddu    $a2, $zero, $zero
/* 26A08 8004B608 08012D90 */  j         .L8004B640
/* 26A0C 8004B60C A6000000 */   sh       $zero, ($s0)
.L8004B610:
/* 26A10 8004B610 10400004 */  beqz      $v0, .L8004B624
/* 26A14 8004B614 00000000 */   nop
/* 26A18 8004B618 96050000 */  lhu       $a1, ($s0)
/* 26A1C 8004B61C 0C012FC6 */  jal       func_8004BF18
/* 26A20 8004B620 0280202D */   daddu    $a0, $s4, $zero
.L8004B624:
/* 26A24 8004B624 96020000 */  lhu       $v0, ($s0)
/* 26A28 8004B628 30421000 */  andi      $v0, $v0, 0x1000
/* 26A2C 8004B62C 10400003 */  beqz      $v0, .L8004B63C
/* 26A30 8004B630 0280202D */   daddu    $a0, $s4, $zero
/* 26A34 8004B634 0C013002 */  jal       func_8004C008
/* 26A38 8004B638 0200282D */   daddu    $a1, $s0, $zero
.L8004B63C:
/* 26A3C 8004B63C A6000000 */  sh        $zero, ($s0)
.L8004B640:
/* 26A40 8004B640 26310001 */  addiu     $s1, $s1, 1
/* 26A44 8004B644 2E220010 */  sltiu     $v0, $s1, 0x10
/* 26A48 8004B648 14400003 */  bnez      $v0, .L8004B658
/* 26A4C 8004B64C 2673000A */   addiu    $s3, $s3, 0xa
/* 26A50 8004B650 241300C2 */  addiu     $s3, $zero, 0xc2
/* 26A54 8004B654 0000882D */  daddu     $s1, $zero, $zero
.L8004B658:
/* 26A58 8004B658 26520001 */  addiu     $s2, $s2, 1
/* 26A5C 8004B65C 0255102B */  sltu      $v0, $s2, $s5
/* 26A60 8004B660 1440FFD8 */  bnez      $v0, .L8004B5C4
/* 26A64 8004B664 02938021 */   addu     $s0, $s4, $s3
.L8004B668:
/* 26A68 8004B668 92820164 */  lbu       $v0, 0x164($s4)
/* 26A6C 8004B66C A2820163 */  sb        $v0, 0x163($s4)
.L8004B670:
/* 26A70 8004B670 8FBF0038 */  lw        $ra, 0x38($sp)
/* 26A74 8004B674 8FB50034 */  lw        $s5, 0x34($sp)
/* 26A78 8004B678 8FB40030 */  lw        $s4, 0x30($sp)
/* 26A7C 8004B67C 8FB3002C */  lw        $s3, 0x2c($sp)
/* 26A80 8004B680 8FB20028 */  lw        $s2, 0x28($sp)
/* 26A84 8004B684 8FB10024 */  lw        $s1, 0x24($sp)
/* 26A88 8004B688 8FB00020 */  lw        $s0, 0x20($sp)
/* 26A8C 8004B68C 03E00008 */  jr        $ra
/* 26A90 8004B690 27BD0040 */   addiu    $sp, $sp, 0x40