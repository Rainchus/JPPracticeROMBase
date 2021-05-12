.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8004A12C
/* 2552C 8004A12C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 25530 8004A130 AFB20038 */  sw        $s2, 0x38($sp)
/* 25534 8004A134 0080902D */  daddu     $s2, $a0, $zero
/* 25538 8004A138 AFBF0048 */  sw        $ra, 0x48($sp)
/* 2553C 8004A13C AFB50044 */  sw        $s5, 0x44($sp)
/* 25540 8004A140 AFB40040 */  sw        $s4, 0x40($sp)
/* 25544 8004A144 AFB3003C */  sw        $s3, 0x3c($sp)
/* 25548 8004A148 AFB10034 */  sw        $s1, 0x34($sp)
/* 2554C 8004A14C AFB00030 */  sw        $s0, 0x30($sp)
/* 25550 8004A150 8E510148 */  lw        $s1, 0x148($s2)
/* 25554 8004A154 86240008 */  lh        $a0, 8($s1)
/* 25558 8004A158 0C00E9EB */  jal       func_8003A7AC
/* 2555C 8004A15C 00A0802D */   daddu    $s0, $a1, $zero
/* 25560 8004A160 8E43000C */  lw        $v1, 0xc($s2)
/* 25564 8004A164 0240202D */  daddu     $a0, $s2, $zero
/* 25568 8004A168 8C650000 */  lw        $a1, ($v1)
/* 2556C 8004A16C 0C0B1EAF */  jal       func_802C7ABC
/* 25570 8004A170 0040A82D */   daddu    $s5, $v0, $zero
/* 25574 8004A174 AFA00010 */  sw        $zero, 0x10($sp)
/* 25578 8004A178 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 2557C 8004A17C 8C630030 */  lw        $v1, 0x30($v1)
/* 25580 8004A180 AFA30014 */  sw        $v1, 0x14($sp)
/* 25584 8004A184 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 25588 8004A188 8C63001C */  lw        $v1, 0x1c($v1)
/* 2558C 8004A18C AFA30018 */  sw        $v1, 0x18($sp)
/* 25590 8004A190 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 25594 8004A194 8C630024 */  lw        $v1, 0x24($v1)
/* 25598 8004A198 AFA3001C */  sw        $v1, 0x1c($sp)
/* 2559C 8004A19C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 255A0 8004A1A0 8C630028 */  lw        $v1, 0x28($v1)
/* 255A4 8004A1A4 27B40010 */  addiu     $s4, $sp, 0x10
/* 255A8 8004A1A8 AFA30020 */  sw        $v1, 0x20($sp)
/* 255AC 8004A1AC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 255B0 8004A1B0 3C014282 */  lui       $at, 0x4282
/* 255B4 8004A1B4 44810000 */  mtc1      $at, $f0
/* 255B8 8004A1B8 8C63002C */  lw        $v1, 0x2c($v1)
/* 255BC 8004A1BC 0040982D */  daddu     $s3, $v0, $zero
/* 255C0 8004A1C0 E7A00028 */  swc1      $f0, 0x28($sp)
/* 255C4 8004A1C4 A7A0002C */  sh        $zero, 0x2c($sp)
/* 255C8 8004A1C8 16000005 */  bnez      $s0, .L8004A1E0
/* 255CC 8004A1CC AFA30024 */   sw       $v1, 0x24($sp)
/* 255D0 8004A1D0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 255D4 8004A1D4 30420004 */  andi      $v0, $v0, 4
/* 255D8 8004A1D8 1040002B */  beqz      $v0, .L8004A288
/* 255DC 8004A1DC 00000000 */   nop
.L8004A1E0:
/* 255E0 8004A1E0 2404F7FF */  addiu     $a0, $zero, -0x801
/* 255E4 8004A1E4 AE400070 */  sw        $zero, 0x70($s2)
/* 255E8 8004A1E8 A6A0008E */  sh        $zero, 0x8e($s5)
/* 255EC 8004A1EC 8E2200CC */  lw        $v0, 0xcc($s1)
/* 255F0 8004A1F0 8EA30000 */  lw        $v1, ($s5)
/* 255F4 8004A1F4 8C420000 */  lw        $v0, ($v0)
/* 255F8 8004A1F8 00641824 */  and       $v1, $v1, $a0
/* 255FC 8004A1FC AEA30000 */  sw        $v1, ($s5)
/* 25600 8004A200 AEA20028 */  sw        $v0, 0x28($s5)
/* 25604 8004A204 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 25608 8004A208 8C420034 */  lw        $v0, 0x34($v0)
/* 2560C 8004A20C 54400005 */  bnel      $v0, $zero, .L8004A224
/* 25610 8004A210 2402FDFF */   addiu    $v0, $zero, -0x201
/* 25614 8004A214 34620200 */  ori       $v0, $v1, 0x200
/* 25618 8004A218 2403FFF7 */  addiu     $v1, $zero, -9
/* 2561C 8004A21C 0801288B */  j         .L8004A22C
/* 25620 8004A220 00431024 */   and      $v0, $v0, $v1
.L8004A224:
/* 25624 8004A224 00621024 */  and       $v0, $v1, $v0
/* 25628 8004A228 34420008 */  ori       $v0, $v0, 8
.L8004A22C:
/* 2562C 8004A22C AEA20000 */  sw        $v0, ($s5)
/* 25630 8004A230 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 25634 8004A234 30420004 */  andi      $v0, $v0, 4
/* 25638 8004A238 10400004 */  beqz      $v0, .L8004A24C
/* 2563C 8004A23C 24020063 */   addiu    $v0, $zero, 0x63
/* 25640 8004A240 AE420070 */  sw        $v0, 0x70($s2)
/* 25644 8004A244 08012899 */  j         .L8004A264
/* 25648 8004A248 AE400074 */   sw       $zero, 0x74($s2)
.L8004A24C:
/* 2564C 8004A24C 8E220000 */  lw        $v0, ($s1)
/* 25650 8004A250 3C034000 */  lui       $v1, 0x4000
/* 25654 8004A254 00431024 */  and       $v0, $v0, $v1
/* 25658 8004A258 10400002 */  beqz      $v0, .L8004A264
/* 2565C 8004A25C 2402000C */   addiu    $v0, $zero, 0xc
/* 25660 8004A260 AE420070 */  sw        $v0, 0x70($s2)
.L8004A264:
/* 25664 8004A264 3C05BFFF */  lui       $a1, 0xbfff
/* 25668 8004A268 34A5FFFF */  ori       $a1, $a1, 0xffff
/* 2566C 8004A26C 2404FFFB */  addiu     $a0, $zero, -5
/* 25670 8004A270 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 25674 8004A274 8E230000 */  lw        $v1, ($s1)
/* 25678 8004A278 00441024 */  and       $v0, $v0, $a0
/* 2567C 8004A27C 00651824 */  and       $v1, $v1, $a1
/* 25680 8004A280 AE2200B0 */  sw        $v0, 0xb0($s1)
/* 25684 8004A284 AE230000 */  sw        $v1, ($s1)
.L8004A288:
/* 25688 8004A288 8E430070 */  lw        $v1, 0x70($s2)
/* 2568C 8004A28C 2C620064 */  sltiu     $v0, $v1, 0x64
/* 25690 8004A290 10400038 */  beqz      $v0, .L8004A374
/* 25694 8004A294 00031080 */   sll      $v0, $v1, 2
/* 25698 8004A298 3C01800A */  lui       $at, %hi(D_80098708)
/* 2569C 8004A29C 00220821 */  addu      $at, $at, $v0
/* 256A0 8004A2A0 8C228708 */  lw        $v0, %lo(D_80098708)($at)
/* 256A4 8004A2A4 00400008 */  jr        $v0
/* 256A8 8004A2A8 00000000 */   nop
/* 256AC 8004A2AC 0240202D */  daddu     $a0, $s2, $zero
/* 256B0 8004A2B0 0260282D */  daddu     $a1, $s3, $zero
/* 256B4 8004A2B4 0C012494 */  jal       func_80049250
/* 256B8 8004A2B8 0280302D */   daddu    $a2, $s4, $zero
/* 256BC 8004A2BC 0240202D */  daddu     $a0, $s2, $zero
/* 256C0 8004A2C0 0260282D */  daddu     $a1, $s3, $zero
/* 256C4 8004A2C4 0C0124DA */  jal       func_80049368
/* 256C8 8004A2C8 0280302D */   daddu    $a2, $s4, $zero
/* 256CC 8004A2CC 080128DD */  j         .L8004A374
/* 256D0 8004A2D0 00000000 */   nop
/* 256D4 8004A2D4 0240202D */  daddu     $a0, $s2, $zero
/* 256D8 8004A2D8 0260282D */  daddu     $a1, $s3, $zero
/* 256DC 8004A2DC 0C0125FD */  jal       func_800497F4
/* 256E0 8004A2E0 0280302D */   daddu    $a2, $s4, $zero
/* 256E4 8004A2E4 0240202D */  daddu     $a0, $s2, $zero
/* 256E8 8004A2E8 0260282D */  daddu     $a1, $s3, $zero
/* 256EC 8004A2EC 0C01262D */  jal       func_800498B4
/* 256F0 8004A2F0 0280302D */   daddu    $a2, $s4, $zero
/* 256F4 8004A2F4 080128DD */  j         .L8004A374
/* 256F8 8004A2F8 00000000 */   nop
/* 256FC 8004A2FC 0240202D */  daddu     $a0, $s2, $zero
/* 25700 8004A300 0260282D */  daddu     $a1, $s3, $zero
/* 25704 8004A304 0C0126BB */  jal       func_80049AEC
/* 25708 8004A308 0280302D */   daddu    $a2, $s4, $zero
/* 2570C 8004A30C 0240202D */  daddu     $a0, $s2, $zero
/* 25710 8004A310 0260282D */  daddu     $a1, $s3, $zero
/* 25714 8004A314 0C0126DF */  jal       func_80049B7C
/* 25718 8004A318 0280302D */   daddu    $a2, $s4, $zero
/* 2571C 8004A31C 080128DD */  j         .L8004A374
/* 25720 8004A320 00000000 */   nop
/* 25724 8004A324 0240202D */  daddu     $a0, $s2, $zero
/* 25728 8004A328 0260282D */  daddu     $a1, $s3, $zero
/* 2572C 8004A32C 0C01270B */  jal       func_80049C2C
/* 25730 8004A330 0280302D */   daddu    $a2, $s4, $zero
/* 25734 8004A334 0240202D */  daddu     $a0, $s2, $zero
/* 25738 8004A338 0260282D */  daddu     $a1, $s3, $zero
/* 2573C 8004A33C 0C012775 */  jal       func_80049DD4
/* 25740 8004A340 0280302D */   daddu    $a2, $s4, $zero
/* 25744 8004A344 8E430070 */  lw        $v1, 0x70($s2)
/* 25748 8004A348 2402000E */  addiu     $v0, $zero, 0xe
/* 2574C 8004A34C 14620009 */  bne       $v1, $v0, .L8004A374
/* 25750 8004A350 00000000 */   nop
/* 25754 8004A354 0240202D */  daddu     $a0, $s2, $zero
/* 25758 8004A358 0260282D */  daddu     $a1, $s3, $zero
/* 2575C 8004A35C 0C012826 */  jal       func_8004A098
/* 25760 8004A360 0280302D */   daddu    $a2, $s4, $zero
/* 25764 8004A364 080128DD */  j         .L8004A374
/* 25768 8004A368 00000000 */   nop
/* 2576C 8004A36C 0C0128FB */  jal       func_8004A3EC
/* 25770 8004A370 0240202D */   daddu    $a0, $s2, $zero
.L8004A374:
/* 25774 8004A374 8FBF0048 */  lw        $ra, 0x48($sp)
/* 25778 8004A378 8FB50044 */  lw        $s5, 0x44($sp)
/* 2577C 8004A37C 8FB40040 */  lw        $s4, 0x40($sp)
/* 25780 8004A380 8FB3003C */  lw        $s3, 0x3c($sp)
/* 25784 8004A384 8FB20038 */  lw        $s2, 0x38($sp)
/* 25788 8004A388 8FB10034 */  lw        $s1, 0x34($sp)
/* 2578C 8004A38C 8FB00030 */  lw        $s0, 0x30($sp)
/* 25790 8004A390 0000102D */  daddu     $v0, $zero, $zero
/* 25794 8004A394 03E00008 */  jr        $ra
/* 25798 8004A398 27BD0050 */   addiu    $sp, $sp, 0x50
/* 2579C 8004A39C 00000000 */  nop
