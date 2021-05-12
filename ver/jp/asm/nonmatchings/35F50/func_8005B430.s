.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8005B430
/* 36830 8005B430 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 36834 8005B434 00042400 */  sll       $a0, $a0, 0x10
/* 36838 8005B438 00042403 */  sra       $a0, $a0, 0x10
/* 3683C 8005B43C 000410C0 */  sll       $v0, $a0, 3
/* 36840 8005B440 00441023 */  subu      $v0, $v0, $a0
/* 36844 8005B444 3C03800B */  lui       $v1, %hi(D_800B42C4)
/* 36848 8005B448 8C6342C4 */  lw        $v1, %lo(D_800B42C4)($v1)
/* 3684C 8005B44C 00021080 */  sll       $v0, $v0, 2
/* 36850 8005B450 AFB30024 */  sw        $s3, 0x24($sp)
/* 36854 8005B454 0000982D */  daddu     $s3, $zero, $zero
/* 36858 8005B458 AFBF0034 */  sw        $ra, 0x34($sp)
/* 3685C 8005B45C AFB60030 */  sw        $s6, 0x30($sp)
/* 36860 8005B460 AFB5002C */  sw        $s5, 0x2c($sp)
/* 36864 8005B464 AFB40028 */  sw        $s4, 0x28($sp)
/* 36868 8005B468 AFB20020 */  sw        $s2, 0x20($sp)
/* 3686C 8005B46C AFB1001C */  sw        $s1, 0x1c($sp)
/* 36870 8005B470 AFB00018 */  sw        $s0, 0x18($sp)
/* 36874 8005B474 0062A021 */  addu      $s4, $v1, $v0
/* 36878 8005B478 8682000A */  lh        $v0, 0xa($s4)
/* 3687C 8005B47C 3C038000 */  lui       $v1, 0x8000
/* 36880 8005B480 A6850008 */  sh        $a1, 8($s4)
/* 36884 8005B484 00022040 */  sll       $a0, $v0, 1
/* 36888 8005B488 00822021 */  addu      $a0, $a0, $v0
/* 3688C 8005B48C 8E820000 */  lw        $v0, ($s4)
/* 36890 8005B490 00042080 */  sll       $a0, $a0, 2
/* 36894 8005B494 00431025 */  or        $v0, $v0, $v1
/* 36898 8005B498 0C00AB5C */  jal       func_8002AD70
/* 3689C 8005B49C AE820000 */   sw       $v0, ($s4)
/* 368A0 8005B4A0 0040A82D */  daddu     $s5, $v0, $zero
/* 368A4 8005B4A4 8E91000C */  lw        $s1, 0xc($s4)
/* 368A8 8005B4A8 8682000A */  lh        $v0, 0xa($s4)
/* 368AC 8005B4AC 02A0B02D */  daddu     $s6, $s5, $zero
/* 368B0 8005B4B0 18400015 */  blez      $v0, .L8005B508
/* 368B4 8005B4B4 AFA00010 */   sw       $zero, 0x10($sp)
/* 368B8 8005B4B8 27B20010 */  addiu     $s2, $sp, 0x10
/* 368BC 8005B4BC 26300008 */  addiu     $s0, $s1, 8
.L8005B4C0:
/* 368C0 8005B4C0 02A0202D */  daddu     $a0, $s5, $zero
/* 368C4 8005B4C4 0240302D */  daddu     $a2, $s2, $zero
/* 368C8 8005B4C8 26730001 */  addiu     $s3, $s3, 1
/* 368CC 8005B4CC 8E250000 */  lw        $a1, ($s1)
/* 368D0 8005B4D0 0C016D94 */  jal       func_8005B650
/* 368D4 8005B4D4 26310040 */   addiu    $s1, $s1, 0x40
/* 368D8 8005B4D8 02A0202D */  daddu     $a0, $s5, $zero
/* 368DC 8005B4DC 8E05FFFC */  lw        $a1, -4($s0)
/* 368E0 8005B4E0 0C016D94 */  jal       func_8005B650
/* 368E4 8005B4E4 0240302D */   daddu    $a2, $s2, $zero
/* 368E8 8005B4E8 02A0202D */  daddu     $a0, $s5, $zero
/* 368EC 8005B4EC 8E050000 */  lw        $a1, ($s0)
/* 368F0 8005B4F0 0C016D94 */  jal       func_8005B650
/* 368F4 8005B4F4 0240302D */   daddu    $a2, $s2, $zero
/* 368F8 8005B4F8 8682000A */  lh        $v0, 0xa($s4)
/* 368FC 8005B4FC 0262102A */  slt       $v0, $s3, $v0
/* 36900 8005B500 1440FFEF */  bnez      $v0, .L8005B4C0
/* 36904 8005B504 26100040 */   addiu    $s0, $s0, 0x40
.L8005B508:
/* 36908 8005B508 8FA20010 */  lw        $v0, 0x10($sp)
/* 3690C 8005B50C 0000982D */  daddu     $s3, $zero, $zero
/* 36910 8005B510 00022040 */  sll       $a0, $v0, 1
/* 36914 8005B514 00822021 */  addu      $a0, $a0, $v0
/* 36918 8005B518 97A20012 */  lhu       $v0, 0x12($sp)
/* 3691C 8005B51C 000420C0 */  sll       $a0, $a0, 3
/* 36920 8005B520 0C00AB5C */  jal       func_8002AD70
/* 36924 8005B524 A6820014 */   sh       $v0, 0x14($s4)
/* 36928 8005B528 8FA30010 */  lw        $v1, 0x10($sp)
/* 3692C 8005B52C 0040902D */  daddu     $s2, $v0, $zero
/* 36930 8005B530 18600013 */  blez      $v1, .L8005B580
/* 36934 8005B534 AE920018 */   sw       $s2, 0x18($s4)
/* 36938 8005B538 0060202D */  daddu     $a0, $v1, $zero
/* 3693C 8005B53C 26430008 */  addiu     $v1, $s2, 8
.L8005B540:
/* 36940 8005B540 8EC20000 */  lw        $v0, ($s6)
/* 36944 8005B544 26D60004 */  addiu     $s6, $s6, 4
/* 36948 8005B548 C4400000 */  lwc1      $f0, ($v0)
/* 3694C 8005B54C 26730001 */  addiu     $s3, $s3, 1
/* 36950 8005B550 E4600004 */  swc1      $f0, 4($v1)
/* 36954 8005B554 E6400000 */  swc1      $f0, ($s2)
/* 36958 8005B558 C4400004 */  lwc1      $f0, 4($v0)
/* 3695C 8005B55C 26520018 */  addiu     $s2, $s2, 0x18
/* 36960 8005B560 E4600008 */  swc1      $f0, 8($v1)
/* 36964 8005B564 E460FFFC */  swc1      $f0, -4($v1)
/* 36968 8005B568 C4400008 */  lwc1      $f0, 8($v0)
/* 3696C 8005B56C 0264102A */  slt       $v0, $s3, $a0
/* 36970 8005B570 E460000C */  swc1      $f0, 0xc($v1)
/* 36974 8005B574 E4600000 */  swc1      $f0, ($v1)
/* 36978 8005B578 1440FFF1 */  bnez      $v0, .L8005B540
/* 3697C 8005B57C 24630018 */   addiu    $v1, $v1, 0x18
.L8005B580:
/* 36980 8005B580 8E920018 */  lw        $s2, 0x18($s4)
/* 36984 8005B584 8682000A */  lh        $v0, 0xa($s4)
/* 36988 8005B588 8E91000C */  lw        $s1, 0xc($s4)
/* 3698C 8005B58C 18400024 */  blez      $v0, .L8005B620
/* 36990 8005B590 0000982D */   daddu    $s3, $zero, $zero
/* 36994 8005B594 27B60010 */  addiu     $s6, $sp, 0x10
/* 36998 8005B598 26300008 */  addiu     $s0, $s1, 8
.L8005B59C:
/* 3699C 8005B59C 02A0202D */  daddu     $a0, $s5, $zero
/* 369A0 8005B5A0 02C0302D */  daddu     $a2, $s6, $zero
/* 369A4 8005B5A4 8E250000 */  lw        $a1, ($s1)
/* 369A8 8005B5A8 0C016DA9 */  jal       func_8005B6A4
/* 369AC 8005B5AC 26730001 */   addiu    $s3, $s3, 1
/* 369B0 8005B5B0 02A0202D */  daddu     $a0, $s5, $zero
/* 369B4 8005B5B4 02C0302D */  daddu     $a2, $s6, $zero
/* 369B8 8005B5B8 00021840 */  sll       $v1, $v0, 1
/* 369BC 8005B5BC 00621821 */  addu      $v1, $v1, $v0
/* 369C0 8005B5C0 000318C0 */  sll       $v1, $v1, 3
/* 369C4 8005B5C4 02431821 */  addu      $v1, $s2, $v1
/* 369C8 8005B5C8 AE230000 */  sw        $v1, ($s1)
/* 369CC 8005B5CC 8E05FFFC */  lw        $a1, -4($s0)
/* 369D0 8005B5D0 0C016DA9 */  jal       func_8005B6A4
/* 369D4 8005B5D4 26310040 */   addiu    $s1, $s1, 0x40
/* 369D8 8005B5D8 02A0202D */  daddu     $a0, $s5, $zero
/* 369DC 8005B5DC 02C0302D */  daddu     $a2, $s6, $zero
/* 369E0 8005B5E0 00021840 */  sll       $v1, $v0, 1
/* 369E4 8005B5E4 00621821 */  addu      $v1, $v1, $v0
/* 369E8 8005B5E8 000318C0 */  sll       $v1, $v1, 3
/* 369EC 8005B5EC 8E050000 */  lw        $a1, ($s0)
/* 369F0 8005B5F0 02431821 */  addu      $v1, $s2, $v1
/* 369F4 8005B5F4 0C016DA9 */  jal       func_8005B6A4
/* 369F8 8005B5F8 AE03FFFC */   sw       $v1, -4($s0)
/* 369FC 8005B5FC 00021840 */  sll       $v1, $v0, 1
/* 36A00 8005B600 00621821 */  addu      $v1, $v1, $v0
/* 36A04 8005B604 000318C0 */  sll       $v1, $v1, 3
/* 36A08 8005B608 02431821 */  addu      $v1, $s2, $v1
/* 36A0C 8005B60C AE030000 */  sw        $v1, ($s0)
/* 36A10 8005B610 8682000A */  lh        $v0, 0xa($s4)
/* 36A14 8005B614 0262102A */  slt       $v0, $s3, $v0
/* 36A18 8005B618 1440FFE0 */  bnez      $v0, .L8005B59C
/* 36A1C 8005B61C 26100040 */   addiu    $s0, $s0, 0x40
.L8005B620:
/* 36A20 8005B620 0C00AB6D */  jal       func_8002ADB4
/* 36A24 8005B624 02A0202D */   daddu    $a0, $s5, $zero
/* 36A28 8005B628 8FBF0034 */  lw        $ra, 0x34($sp)
/* 36A2C 8005B62C 8FB60030 */  lw        $s6, 0x30($sp)
/* 36A30 8005B630 8FB5002C */  lw        $s5, 0x2c($sp)
/* 36A34 8005B634 8FB40028 */  lw        $s4, 0x28($sp)
/* 36A38 8005B638 8FB30024 */  lw        $s3, 0x24($sp)
/* 36A3C 8005B63C 8FB20020 */  lw        $s2, 0x20($sp)
/* 36A40 8005B640 8FB1001C */  lw        $s1, 0x1c($sp)
/* 36A44 8005B644 8FB00018 */  lw        $s0, 0x18($sp)
/* 36A48 8005B648 03E00008 */  jr        $ra
/* 36A4C 8005B64C 27BD0038 */   addiu    $sp, $sp, 0x38
