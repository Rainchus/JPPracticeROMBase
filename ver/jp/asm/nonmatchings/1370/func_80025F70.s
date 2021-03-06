.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80025F70
/* 1370 80025F70 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1374 80025F74 3C038000 */  lui       $v1, %hi(D_80000300)
/* 1378 80025F78 8C630300 */  lw        $v1, %lo(D_80000300)($v1)
/* 137C 80025F7C 24020001 */  addiu     $v0, $zero, 1
/* 1380 80025F80 1462000D */  bne       $v1, $v0, .L80025FB8
/* 1384 80025F84 AFBF0010 */   sw       $ra, 0x10($sp)
/* 1388 80025F88 0C017C2C */  jal       func_8005F0B0
/* 138C 80025F8C 00000000 */   nop
/* 1390 80025F90 3C048009 */  lui       $a0, %hi(D_80095800)
/* 1394 80025F94 24845800 */  addiu     $a0, $a0, %lo(D_80095800)
/* 1398 80025F98 0C019B78 */  jal       func_80066DE0
/* 139C 80025F9C 00000000 */   nop
/* 13A0 80025FA0 0C019B8C */  jal       func_80066E30
/* 13A4 80025FA4 2404005A */   addiu    $a0, $zero, 0x5a
/* 13A8 80025FA8 0C017C2C */  jal       func_8005F0B0
/* 13AC 80025FAC 00000000 */   nop
/* 13B0 80025FB0 080097F0 */  j         .L80025FC0
/* 13B4 80025FB4 00000000 */   nop
.L80025FB8:
/* 13B8 80025FB8 080097EE */  j         .L80025FB8
/* 13BC 80025FBC 00000000 */   nop
.L80025FC0:
/* 13C0 80025FC0 0C009718 */  jal       func_80025C60
/* 13C4 80025FC4 00000000 */   nop
/* 13C8 80025FC8 0C017C84 */  jal       func_8005F210
/* 13CC 80025FCC 00000000 */   nop
/* 13D0 80025FD0 0C017CB0 */  jal       func_8005F2C0
/* 13D4 80025FD4 00000000 */   nop
/* 13D8 80025FD8 3C038007 */  lui       $v1, %hi(D_8007417C)
/* 13DC 80025FDC 8C63417C */  lw        $v1, %lo(D_8007417C)($v1)
/* 13E0 80025FE0 0C00B280 */  jal       func_8002CA00
/* 13E4 80025FE4 A0620073 */   sb       $v0, 0x73($v1)
/* 13E8 80025FE8 0C0AC800 */  jal       func_802B2000
/* 13EC 80025FEC 00000000 */   nop
/* 13F0 80025FF0 0C0AC80F */  jal       func_802B203C
/* 13F4 80025FF4 00000000 */   nop
/* 13F8 80025FF8 3C048002 */  lui       $a0, %hi(D_80026040)
/* 13FC 80025FFC 24846040 */  addiu     $a0, $a0, %lo(D_80026040)
/* 1400 80026000 0C017BC0 */  jal       func_8005EF00
/* 1404 80026004 00000000 */   nop
/* 1408 80026008 3C048002 */  lui       $a0, %hi(gfxPreNMI_Callback)
/* 140C 8002600C 248466E8 */  addiu     $a0, $a0, %lo(gfxPreNMI_Callback)
/* 1410 80026010 0C017BD0 */  jal       func_8005EF40
/* 1414 80026014 00000000 */   nop
/* 1418 80026018 0C019674 */  jal       func_800659D0
/* 141C 8002601C 00000000 */   nop
/* 1420 80026020 3C048007 */  lui       $a0, %hi(D_800743F0)
/* 1424 80026024 248443F0 */  addiu     $a0, $a0, %lo(D_800743F0)
/* 1428 80026028 8C830000 */  lw        $v1, ($a0)
/* 142C 8002602C 00621821 */  addu      $v1, $v1, $v0
/* 1430 80026030 0C017C38 */  jal       func_8005F0E0
/* 1434 80026034 AC830000 */   sw       $v1, ($a0)
.L80026038:
/* 1438 80026038 0800980E */  j         .L80026038
/* 143C 8002603C 00000000 */   nop
/* 1440 80026040 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1444 80026044 AFB10014 */  sw        $s1, 0x14($sp)
/* 1448 80026048 3C118007 */  lui       $s1, %hi(D_80073DE0)
/* 144C 8002604C 26313DE0 */  addiu     $s1, $s1, %lo(D_80073DE0)
/* 1450 80026050 AFBF0018 */  sw        $ra, 0x18($sp)
/* 1454 80026054 AFB00010 */  sw        $s0, 0x10($sp)
/* 1458 80026058 8E230000 */  lw        $v1, ($s1)
/* 145C 8002605C 10600022 */  beqz      $v1, .L800260E8
/* 1460 80026060 0080802D */   daddu    $s0, $a0, $zero
/* 1464 80026064 24020001 */  addiu     $v0, $zero, 1
/* 1468 80026068 14620016 */  bne       $v1, $v0, .L800260C4
/* 146C 8002606C 00000000 */   nop
/* 1470 80026070 0C017BE0 */  jal       func_8005EF80
/* 1474 80026074 00000000 */   nop
/* 1478 80026078 16000012 */  bnez      $s0, .L800260C4
/* 147C 8002607C 00000000 */   nop
/* 1480 80026080 0C019A60 */  jal       func_80066980
/* 1484 80026084 00000000 */   nop
/* 1488 80026088 3C10800A */  lui       $s0, %hi(D_8009A660)
/* 148C 8002608C 2610A660 */  addiu     $s0, $s0, %lo(D_8009A660)
/* 1490 80026090 0200202D */  daddu     $a0, $s0, $zero
/* 1494 80026094 AE020008 */  sw        $v0, 8($s0)
/* 1498 80026098 AE020004 */  sw        $v0, 4($s0)
/* 149C 8002609C AE020000 */  sw        $v0, ($s0)
/* 14A0 800260A0 3C018007 */  lui       $at, %hi(D_80073DE4)
/* 14A4 800260A4 AC223DE4 */  sw        $v0, %lo(D_80073DE4)($at)
/* 14A8 800260A8 0C017BE8 */  jal       func_8005EFA0
/* 14AC 800260AC 24050003 */   addiu    $a1, $zero, 3
/* 14B0 800260B0 8E040000 */  lw        $a0, ($s0)
/* 14B4 800260B4 0C019BFC */  jal       func_80066FF0
/* 14B8 800260B8 00000000 */   nop
/* 14BC 800260BC 24020002 */  addiu     $v0, $zero, 2
/* 14C0 800260C0 AE220000 */  sw        $v0, ($s1)
.L800260C4:
/* 14C4 800260C4 3C038007 */  lui       $v1, %hi(D_80073DE0)
/* 14C8 800260C8 8C633DE0 */  lw        $v1, %lo(D_80073DE0)($v1)
/* 14CC 800260CC 24020002 */  addiu     $v0, $zero, 2
/* 14D0 800260D0 14620018 */  bne       $v1, $v0, .L80026134
/* 14D4 800260D4 00000000 */   nop
/* 14D8 800260D8 0C009852 */  jal       func_80026148
/* 14DC 800260DC 00000000 */   nop
/* 14E0 800260E0 0800984D */  j         .L80026134
/* 14E4 800260E4 00000000 */   nop
.L800260E8:
/* 14E8 800260E8 3C038007 */  lui       $v1, %hi(D_80073DEA)
/* 14EC 800260EC 24633DEA */  addiu     $v1, $v1, %lo(D_80073DEA)
/* 14F0 800260F0 94620000 */  lhu       $v0, ($v1)
/* 14F4 800260F4 38420001 */  xori      $v0, $v0, 1
/* 14F8 800260F8 1440000E */  bnez      $v0, .L80026134
/* 14FC 800260FC A4620000 */   sh       $v0, ($v1)
/* 1500 80026100 0C0099C4 */  jal       func_perFrameC
/* 1504 80026104 00000000 */   nop
/* 1508 80026108 3C038007 */  lui       $v1, %hi(D_80073DE8)
/* 150C 8002610C 24633DE8 */  addiu     $v1, $v1, %lo(D_80073DE8)
/* 1510 80026110 24020001 */  addiu     $v0, $zero, 1
/* 1514 80026114 A4620000 */  sh        $v0, ($v1)
/* 1518 80026118 2A020003 */  slti      $v0, $s0, 3
/* 151C 8002611C 10400005 */  beqz      $v0, .L80026134
/* 1520 80026120 00000000 */   nop
/* 1524 80026124 0C009A70 */  jal       func_800269C0
/* 1528 80026128 A4600000 */   sh       $zero, ($v1)
/* 152C 8002612C 0C009AB5 */  jal       func_80026AD4
/* 1530 80026130 00000000 */   nop
.L80026134:
/* 1534 80026134 8FBF0018 */  lw        $ra, 0x18($sp)
/* 1538 80026138 8FB10014 */  lw        $s1, 0x14($sp)
/* 153C 8002613C 8FB00010 */  lw        $s0, 0x10($sp)
/* 1540 80026140 03E00008 */  jr        $ra
/* 1544 80026144 27BD0020 */   addiu    $sp, $sp, 0x20
