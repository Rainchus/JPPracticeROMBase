.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8005C454
/* 37854 8005C454 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 37858 8005C458 F7BC0020 */  sdc1      $f28, 0x20($sp)
/* 3785C 8005C45C F7BA0018 */  sdc1      $f26, 0x18($sp)
/* 37860 8005C460 F7B80010 */  sdc1      $f24, 0x10($sp)
/* 37864 8005C464 F7B60008 */  sdc1      $f22, 8($sp)
/* 37868 8005C468 F7B40000 */  sdc1      $f20, ($sp)
/* 3786C 8005C46C C4800030 */  lwc1      $f0, 0x30($a0)
/* 37870 8005C470 44801000 */  mtc1      $zero, $f2
/* 37874 8005C474 00000000 */  nop
/* 37878 8005C478 46020032 */  c.eq.s    $f0, $f2
/* 3787C 8005C47C 00000000 */  nop
/* 37880 8005C480 4500000B */  bc1f      .L8005C4B0
/* 37884 8005C484 00000000 */   nop
/* 37888 8005C488 C4800034 */  lwc1      $f0, 0x34($a0)
/* 3788C 8005C48C 46020032 */  c.eq.s    $f0, $f2
/* 37890 8005C490 00000000 */  nop
/* 37894 8005C494 45000006 */  bc1f      .L8005C4B0
/* 37898 8005C498 00000000 */   nop
/* 3789C 8005C49C C4800038 */  lwc1      $f0, 0x38($a0)
/* 378A0 8005C4A0 46020032 */  c.eq.s    $f0, $f2
/* 378A4 8005C4A4 00000000 */  nop
/* 378A8 8005C4A8 4501012E */  bc1t      .L8005C964
/* 378AC 8005C4AC 0000102D */   daddu    $v0, $zero, $zero
.L8005C4B0:
/* 378B0 8005C4B0 8C820000 */  lw        $v0, ($a0)
/* 378B4 8005C4B4 3C01800A */  lui       $at, %hi(D_800A2040)
/* 378B8 8005C4B8 C4362040 */  lwc1      $f22, %lo(D_800A2040)($at)
/* 378BC 8005C4BC C4400000 */  lwc1      $f0, ($v0)
/* 378C0 8005C4C0 4600B381 */  sub.s     $f14, $f22, $f0
/* 378C4 8005C4C4 C4880030 */  lwc1      $f8, 0x30($a0)
/* 378C8 8005C4C8 460E4102 */  mul.s     $f4, $f8, $f14
/* 378CC 8005C4CC 00000000 */  nop
/* 378D0 8005C4D0 3C01800A */  lui       $at, %hi(D_800A2044)
/* 378D4 8005C4D4 C4382044 */  lwc1      $f24, %lo(D_800A2044)($at)
/* 378D8 8005C4D8 C4400004 */  lwc1      $f0, 4($v0)
/* 378DC 8005C4DC 4600C501 */  sub.s     $f20, $f24, $f0
/* 378E0 8005C4E0 C4820034 */  lwc1      $f2, 0x34($a0)
/* 378E4 8005C4E4 46141082 */  mul.s     $f2, $f2, $f20
/* 378E8 8005C4E8 00000000 */  nop
/* 378EC 8005C4EC 3C01800A */  lui       $at, %hi(D_800A2048)
/* 378F0 8005C4F0 C43C2048 */  lwc1      $f28, %lo(D_800A2048)($at)
/* 378F4 8005C4F4 C4400008 */  lwc1      $f0, 8($v0)
/* 378F8 8005C4F8 4600E401 */  sub.s     $f16, $f28, $f0
/* 378FC 8005C4FC C4860038 */  lwc1      $f6, 0x38($a0)
/* 37900 8005C500 46103002 */  mul.s     $f0, $f6, $f16
/* 37904 8005C504 00000000 */  nop
/* 37908 8005C508 8C830004 */  lw        $v1, 4($a0)
/* 3790C 8005C50C 46022100 */  add.s     $f4, $f4, $f2
/* 37910 8005C510 8C850008 */  lw        $a1, 8($a0)
/* 37914 8005C514 8482003C */  lh        $v0, 0x3c($a0)
/* 37918 8005C518 10400068 */  beqz      $v0, .L8005C6BC
/* 3791C 8005C51C 46002480 */   add.s    $f18, $f4, $f0
/* 37920 8005C520 4480D000 */  mtc1      $zero, $f26
/* 37924 8005C524 00000000 */  nop
/* 37928 8005C528 461A903C */  c.lt.s    $f18, $f26
/* 3792C 8005C52C 00000000 */  nop
/* 37930 8005C530 4503010C */  bc1tl     .L8005C964
/* 37934 8005C534 0000102D */   daddu    $v0, $zero, $zero
/* 37938 8005C538 3C01800A */  lui       $at, %hi(D_800A204C)
/* 3793C 8005C53C C42C204C */  lwc1      $f12, %lo(D_800A204C)($at)
/* 37940 8005C540 460C4002 */  mul.s     $f0, $f8, $f12
/* 37944 8005C544 00000000 */  nop
/* 37948 8005C548 3C01800A */  lui       $at, %hi(D_800A2054)
/* 3794C 8005C54C C42A2054 */  lwc1      $f10, %lo(D_800A2054)($at)
/* 37950 8005C550 460A3082 */  mul.s     $f2, $f6, $f10
/* 37954 8005C554 00000000 */  nop
/* 37958 8005C558 46020000 */  add.s     $f0, $f0, $f2
/* 3795C 8005C55C 4600D03E */  c.le.s    $f26, $f0
/* 37960 8005C560 00000000 */  nop
/* 37964 8005C564 450100FF */  bc1t      .L8005C964
/* 37968 8005C568 0000102D */   daddu    $v0, $zero, $zero
/* 3796C 8005C56C C4860010 */  lwc1      $f6, 0x10($a0)
/* 37970 8005C570 46003107 */  neg.s     $f4, $f6
/* 37974 8005C574 460A2102 */  mul.s     $f4, $f4, $f10
/* 37978 8005C578 00000000 */  nop
/* 3797C 8005C57C C480000C */  lwc1      $f0, 0xc($a0)
/* 37980 8005C580 460A0002 */  mul.s     $f0, $f0, $f10
/* 37984 8005C584 00000000 */  nop
/* 37988 8005C588 C4820014 */  lwc1      $f2, 0x14($a0)
/* 3798C 8005C58C 460C1082 */  mul.s     $f2, $f2, $f12
/* 37990 8005C590 00000000 */  nop
/* 37994 8005C594 460C3182 */  mul.s     $f6, $f6, $f12
/* 37998 8005C598 00000000 */  nop
/* 3799C 8005C59C 46047102 */  mul.s     $f4, $f14, $f4
/* 379A0 8005C5A0 00000000 */  nop
/* 379A4 8005C5A4 46068182 */  mul.s     $f6, $f16, $f6
/* 379A8 8005C5A8 00000000 */  nop
/* 379AC 8005C5AC 46020001 */  sub.s     $f0, $f0, $f2
/* 379B0 8005C5B0 4600A002 */  mul.s     $f0, $f20, $f0
/* 379B4 8005C5B4 00000000 */  nop
/* 379B8 8005C5B8 46002100 */  add.s     $f4, $f4, $f0
/* 379BC 8005C5BC 46062100 */  add.s     $f4, $f4, $f6
/* 379C0 8005C5C0 461A203C */  c.lt.s    $f4, $f26
/* 379C4 8005C5C4 00000000 */  nop
/* 379C8 8005C5C8 450100E6 */  bc1t      .L8005C964
/* 379CC 8005C5CC 00000000 */   nop
/* 379D0 8005C5D0 C488001C */  lwc1      $f8, 0x1c($a0)
/* 379D4 8005C5D4 46004007 */  neg.s     $f0, $f8
/* 379D8 8005C5D8 460A0002 */  mul.s     $f0, $f0, $f10
/* 379DC 8005C5DC 00000000 */  nop
/* 379E0 8005C5E0 C4840018 */  lwc1      $f4, 0x18($a0)
/* 379E4 8005C5E4 460A2102 */  mul.s     $f4, $f4, $f10
/* 379E8 8005C5E8 00000000 */  nop
/* 379EC 8005C5EC 460C4202 */  mul.s     $f8, $f8, $f12
/* 379F0 8005C5F0 00000000 */  nop
/* 379F4 8005C5F4 C4620000 */  lwc1      $f2, ($v1)
/* 379F8 8005C5F8 4602B081 */  sub.s     $f2, $f22, $f2
/* 379FC 8005C5FC 46001082 */  mul.s     $f2, $f2, $f0
/* 37A00 8005C600 00000000 */  nop
/* 37A04 8005C604 C4800020 */  lwc1      $f0, 0x20($a0)
/* 37A08 8005C608 460C0002 */  mul.s     $f0, $f0, $f12
/* 37A0C 8005C60C 00000000 */  nop
/* 37A10 8005C610 C4660004 */  lwc1      $f6, 4($v1)
/* 37A14 8005C614 4606C181 */  sub.s     $f6, $f24, $f6
/* 37A18 8005C618 46002101 */  sub.s     $f4, $f4, $f0
/* 37A1C 8005C61C 46043182 */  mul.s     $f6, $f6, $f4
/* 37A20 8005C620 00000000 */  nop
/* 37A24 8005C624 C4600008 */  lwc1      $f0, 8($v1)
/* 37A28 8005C628 4600E001 */  sub.s     $f0, $f28, $f0
/* 37A2C 8005C62C 46080002 */  mul.s     $f0, $f0, $f8
/* 37A30 8005C630 00000000 */  nop
/* 37A34 8005C634 46061080 */  add.s     $f2, $f2, $f6
/* 37A38 8005C638 46001080 */  add.s     $f2, $f2, $f0
/* 37A3C 8005C63C 461A103C */  c.lt.s    $f2, $f26
/* 37A40 8005C640 00000000 */  nop
/* 37A44 8005C644 450100C7 */  bc1t      .L8005C964
/* 37A48 8005C648 00000000 */   nop
/* 37A4C 8005C64C C4880028 */  lwc1      $f8, 0x28($a0)
/* 37A50 8005C650 46004007 */  neg.s     $f0, $f8
/* 37A54 8005C654 460A0002 */  mul.s     $f0, $f0, $f10
/* 37A58 8005C658 00000000 */  nop
/* 37A5C 8005C65C C4840024 */  lwc1      $f4, 0x24($a0)
/* 37A60 8005C660 460A2102 */  mul.s     $f4, $f4, $f10
/* 37A64 8005C664 00000000 */  nop
/* 37A68 8005C668 460C4202 */  mul.s     $f8, $f8, $f12
/* 37A6C 8005C66C 00000000 */  nop
/* 37A70 8005C670 C4A20000 */  lwc1      $f2, ($a1)
/* 37A74 8005C674 4602B081 */  sub.s     $f2, $f22, $f2
/* 37A78 8005C678 46001082 */  mul.s     $f2, $f2, $f0
/* 37A7C 8005C67C 00000000 */  nop
/* 37A80 8005C680 C480002C */  lwc1      $f0, 0x2c($a0)
/* 37A84 8005C684 460C0002 */  mul.s     $f0, $f0, $f12
/* 37A88 8005C688 00000000 */  nop
/* 37A8C 8005C68C C4A60004 */  lwc1      $f6, 4($a1)
/* 37A90 8005C690 4606C181 */  sub.s     $f6, $f24, $f6
/* 37A94 8005C694 46002101 */  sub.s     $f4, $f4, $f0
/* 37A98 8005C698 46043182 */  mul.s     $f6, $f6, $f4
/* 37A9C 8005C69C 00000000 */  nop
/* 37AA0 8005C6A0 C4A00008 */  lwc1      $f0, 8($a1)
/* 37AA4 8005C6A4 4600E001 */  sub.s     $f0, $f28, $f0
/* 37AA8 8005C6A8 46080002 */  mul.s     $f0, $f0, $f8
/* 37AAC 8005C6AC 00000000 */  nop
/* 37AB0 8005C6B0 46061080 */  add.s     $f2, $f2, $f6
/* 37AB4 8005C6B4 08017219 */  j         .L8005C864
/* 37AB8 8005C6B8 46001080 */   add.s    $f2, $f2, $f0
.L8005C6BC:
/* 37ABC 8005C6BC 3C01800A */  lui       $at, %hi(D_800A204C)
/* 37AC0 8005C6C0 C42C204C */  lwc1      $f12, %lo(D_800A204C)($at)
/* 37AC4 8005C6C4 460C4002 */  mul.s     $f0, $f8, $f12
/* 37AC8 8005C6C8 00000000 */  nop
/* 37ACC 8005C6CC 3C01800A */  lui       $at, %hi(D_800A2054)
/* 37AD0 8005C6D0 C42A2054 */  lwc1      $f10, %lo(D_800A2054)($at)
/* 37AD4 8005C6D4 460A3082 */  mul.s     $f2, $f6, $f10
/* 37AD8 8005C6D8 00000000 */  nop
/* 37ADC 8005C6DC 46020000 */  add.s     $f0, $f0, $f2
/* 37AE0 8005C6E0 46120002 */  mul.s     $f0, $f0, $f18
/* 37AE4 8005C6E4 00000000 */  nop
/* 37AE8 8005C6E8 4480D000 */  mtc1      $zero, $f26
/* 37AEC 8005C6EC 00000000 */  nop
/* 37AF0 8005C6F0 4600D03E */  c.le.s    $f26, $f0
/* 37AF4 8005C6F4 00000000 */  nop
/* 37AF8 8005C6F8 4501009A */  bc1t      .L8005C964
/* 37AFC 8005C6FC 0000102D */   daddu    $v0, $zero, $zero
/* 37B00 8005C700 C4860010 */  lwc1      $f6, 0x10($a0)
/* 37B04 8005C704 46003107 */  neg.s     $f4, $f6
/* 37B08 8005C708 460A2102 */  mul.s     $f4, $f4, $f10
/* 37B0C 8005C70C 00000000 */  nop
/* 37B10 8005C710 C480000C */  lwc1      $f0, 0xc($a0)
/* 37B14 8005C714 460A0002 */  mul.s     $f0, $f0, $f10
/* 37B18 8005C718 00000000 */  nop
/* 37B1C 8005C71C C4820014 */  lwc1      $f2, 0x14($a0)
/* 37B20 8005C720 460C1082 */  mul.s     $f2, $f2, $f12
/* 37B24 8005C724 00000000 */  nop
/* 37B28 8005C728 460C3182 */  mul.s     $f6, $f6, $f12
/* 37B2C 8005C72C 00000000 */  nop
/* 37B30 8005C730 46047102 */  mul.s     $f4, $f14, $f4
/* 37B34 8005C734 00000000 */  nop
/* 37B38 8005C738 46068182 */  mul.s     $f6, $f16, $f6
/* 37B3C 8005C73C 00000000 */  nop
/* 37B40 8005C740 46020001 */  sub.s     $f0, $f0, $f2
/* 37B44 8005C744 4600A002 */  mul.s     $f0, $f20, $f0
/* 37B48 8005C748 00000000 */  nop
/* 37B4C 8005C74C 46002100 */  add.s     $f4, $f4, $f0
/* 37B50 8005C750 46062100 */  add.s     $f4, $f4, $f6
/* 37B54 8005C754 46122102 */  mul.s     $f4, $f4, $f18
/* 37B58 8005C758 00000000 */  nop
/* 37B5C 8005C75C 461A203C */  c.lt.s    $f4, $f26
/* 37B60 8005C760 00000000 */  nop
/* 37B64 8005C764 4501007F */  bc1t      .L8005C964
/* 37B68 8005C768 00000000 */   nop
/* 37B6C 8005C76C C488001C */  lwc1      $f8, 0x1c($a0)
/* 37B70 8005C770 46004007 */  neg.s     $f0, $f8
/* 37B74 8005C774 460A0002 */  mul.s     $f0, $f0, $f10
/* 37B78 8005C778 00000000 */  nop
/* 37B7C 8005C77C C4840018 */  lwc1      $f4, 0x18($a0)
/* 37B80 8005C780 460A2102 */  mul.s     $f4, $f4, $f10
/* 37B84 8005C784 00000000 */  nop
/* 37B88 8005C788 460C4202 */  mul.s     $f8, $f8, $f12
/* 37B8C 8005C78C 00000000 */  nop
/* 37B90 8005C790 C4620000 */  lwc1      $f2, ($v1)
/* 37B94 8005C794 4602B081 */  sub.s     $f2, $f22, $f2
/* 37B98 8005C798 46001082 */  mul.s     $f2, $f2, $f0
/* 37B9C 8005C79C 00000000 */  nop
/* 37BA0 8005C7A0 C4800020 */  lwc1      $f0, 0x20($a0)
/* 37BA4 8005C7A4 460C0002 */  mul.s     $f0, $f0, $f12
/* 37BA8 8005C7A8 00000000 */  nop
/* 37BAC 8005C7AC C4660004 */  lwc1      $f6, 4($v1)
/* 37BB0 8005C7B0 4606C181 */  sub.s     $f6, $f24, $f6
/* 37BB4 8005C7B4 46002101 */  sub.s     $f4, $f4, $f0
/* 37BB8 8005C7B8 46043182 */  mul.s     $f6, $f6, $f4
/* 37BBC 8005C7BC 00000000 */  nop
/* 37BC0 8005C7C0 C4600008 */  lwc1      $f0, 8($v1)
/* 37BC4 8005C7C4 4600E001 */  sub.s     $f0, $f28, $f0
/* 37BC8 8005C7C8 46080002 */  mul.s     $f0, $f0, $f8
/* 37BCC 8005C7CC 00000000 */  nop
/* 37BD0 8005C7D0 46061080 */  add.s     $f2, $f2, $f6
/* 37BD4 8005C7D4 46001080 */  add.s     $f2, $f2, $f0
/* 37BD8 8005C7D8 46121082 */  mul.s     $f2, $f2, $f18
/* 37BDC 8005C7DC 00000000 */  nop
/* 37BE0 8005C7E0 461A103C */  c.lt.s    $f2, $f26
/* 37BE4 8005C7E4 00000000 */  nop
/* 37BE8 8005C7E8 4501005E */  bc1t      .L8005C964
/* 37BEC 8005C7EC 00000000 */   nop
/* 37BF0 8005C7F0 C4880028 */  lwc1      $f8, 0x28($a0)
/* 37BF4 8005C7F4 46004007 */  neg.s     $f0, $f8
/* 37BF8 8005C7F8 460A0002 */  mul.s     $f0, $f0, $f10
/* 37BFC 8005C7FC 00000000 */  nop
/* 37C00 8005C800 C4840024 */  lwc1      $f4, 0x24($a0)
/* 37C04 8005C804 460A2102 */  mul.s     $f4, $f4, $f10
/* 37C08 8005C808 00000000 */  nop
/* 37C0C 8005C80C 460C4202 */  mul.s     $f8, $f8, $f12
/* 37C10 8005C810 00000000 */  nop
/* 37C14 8005C814 C4A20000 */  lwc1      $f2, ($a1)
/* 37C18 8005C818 4602B081 */  sub.s     $f2, $f22, $f2
/* 37C1C 8005C81C 46001082 */  mul.s     $f2, $f2, $f0
/* 37C20 8005C820 00000000 */  nop
/* 37C24 8005C824 C480002C */  lwc1      $f0, 0x2c($a0)
/* 37C28 8005C828 460C0002 */  mul.s     $f0, $f0, $f12
/* 37C2C 8005C82C 00000000 */  nop
/* 37C30 8005C830 C4A60004 */  lwc1      $f6, 4($a1)
/* 37C34 8005C834 4606C181 */  sub.s     $f6, $f24, $f6
/* 37C38 8005C838 46002101 */  sub.s     $f4, $f4, $f0
/* 37C3C 8005C83C 46043182 */  mul.s     $f6, $f6, $f4
/* 37C40 8005C840 00000000 */  nop
/* 37C44 8005C844 C4A00008 */  lwc1      $f0, 8($a1)
/* 37C48 8005C848 4600E001 */  sub.s     $f0, $f28, $f0
/* 37C4C 8005C84C 46080002 */  mul.s     $f0, $f0, $f8
/* 37C50 8005C850 00000000 */  nop
/* 37C54 8005C854 46061080 */  add.s     $f2, $f2, $f6
/* 37C58 8005C858 46001080 */  add.s     $f2, $f2, $f0
/* 37C5C 8005C85C 46121082 */  mul.s     $f2, $f2, $f18
/* 37C60 8005C860 00000000 */  nop
.L8005C864:
/* 37C64 8005C864 461A103C */  c.lt.s    $f2, $f26
/* 37C68 8005C868 00000000 */  nop
/* 37C6C 8005C86C 4503003D */  bc1tl     .L8005C964
/* 37C70 8005C870 0000102D */   daddu    $v0, $zero, $zero
/* 37C74 8005C874 C4840030 */  lwc1      $f4, 0x30($a0)
/* 37C78 8005C878 3C01800A */  lui       $at, %hi(D_800A204C)
/* 37C7C 8005C87C C420204C */  lwc1      $f0, %lo(D_800A204C)($at)
/* 37C80 8005C880 46002102 */  mul.s     $f4, $f4, $f0
/* 37C84 8005C884 00000000 */  nop
/* 37C88 8005C888 C4820038 */  lwc1      $f2, 0x38($a0)
/* 37C8C 8005C88C 3C01800A */  lui       $at, %hi(D_800A2054)
/* 37C90 8005C890 C4202054 */  lwc1      $f0, %lo(D_800A2054)($at)
/* 37C94 8005C894 46001082 */  mul.s     $f2, $f2, $f0
/* 37C98 8005C898 00000000 */  nop
/* 37C9C 8005C89C 3C01800A */  lui       $at, %hi(D_800A2064)
/* 37CA0 8005C8A0 C4262064 */  lwc1      $f6, %lo(D_800A2064)($at)
/* 37CA4 8005C8A4 44800000 */  mtc1      $zero, $f0
/* 37CA8 8005C8A8 00000000 */  nop
/* 37CAC 8005C8AC 4606003E */  c.le.s    $f0, $f6
/* 37CB0 8005C8B0 00000000 */  nop
/* 37CB4 8005C8B4 45000007 */  bc1f      .L8005C8D4
/* 37CB8 8005C8B8 46022100 */   add.s    $f4, $f4, $f2
/* 37CBC 8005C8BC 46009007 */  neg.s     $f0, $f18
/* 37CC0 8005C8C0 46040003 */  div.s     $f0, $f0, $f4
/* 37CC4 8005C8C4 4600303E */  c.le.s    $f6, $f0
/* 37CC8 8005C8C8 00000000 */  nop
/* 37CCC 8005C8CC 45010025 */  bc1t      .L8005C964
/* 37CD0 8005C8D0 0000102D */   daddu    $v0, $zero, $zero
.L8005C8D4:
/* 37CD4 8005C8D4 46009007 */  neg.s     $f0, $f18
/* 37CD8 8005C8D8 46040003 */  div.s     $f0, $f0, $f4
/* 37CDC 8005C8DC 3C01800A */  lui       $at, %hi(D_800A204C)
/* 37CE0 8005C8E0 C422204C */  lwc1      $f2, %lo(D_800A204C)($at)
/* 37CE4 8005C8E4 3C01800A */  lui       $at, %hi(D_800A2040)
/* 37CE8 8005C8E8 C4262040 */  lwc1      $f6, %lo(D_800A2040)($at)
/* 37CEC 8005C8EC 3C01800A */  lui       $at, %hi(D_800A2044)
/* 37CF0 8005C8F0 C42C2044 */  lwc1      $f12, %lo(D_800A2044)($at)
/* 37CF4 8005C8F4 3C01800A */  lui       $at, %hi(D_800A2054)
/* 37CF8 8005C8F8 C4242054 */  lwc1      $f4, %lo(D_800A2054)($at)
/* 37CFC 8005C8FC 46001082 */  mul.s     $f2, $f2, $f0
/* 37D00 8005C900 00000000 */  nop
/* 37D04 8005C904 C4880030 */  lwc1      $f8, 0x30($a0)
/* 37D08 8005C908 C48A0034 */  lwc1      $f10, 0x34($a0)
/* 37D0C 8005C90C 3C01800A */  lui       $at, %hi(D_800A2064)
/* 37D10 8005C910 E4202064 */  swc1      $f0, %lo(D_800A2064)($at)
/* 37D14 8005C914 46002102 */  mul.s     $f4, $f4, $f0
/* 37D18 8005C918 00000000 */  nop
/* 37D1C 8005C91C 3C01800A */  lui       $at, %hi(D_800A2048)
/* 37D20 8005C920 C4202048 */  lwc1      $f0, %lo(D_800A2048)($at)
/* 37D24 8005C924 24020001 */  addiu     $v0, $zero, 1
/* 37D28 8005C928 3C01800A */  lui       $at, %hi(D_800A205C)
/* 37D2C 8005C92C E42C205C */  swc1      $f12, %lo(D_800A205C)($at)
/* 37D30 8005C930 3C01800A */  lui       $at, %hi(D_800A2068)
/* 37D34 8005C934 E4282068 */  swc1      $f8, %lo(D_800A2068)($at)
/* 37D38 8005C938 46023180 */  add.s     $f6, $f6, $f2
/* 37D3C 8005C93C 3C01800A */  lui       $at, %hi(D_800A206C)
/* 37D40 8005C940 E42A206C */  swc1      $f10, %lo(D_800A206C)($at)
/* 37D44 8005C944 C4820038 */  lwc1      $f2, 0x38($a0)
/* 37D48 8005C948 46040000 */  add.s     $f0, $f0, $f4
/* 37D4C 8005C94C 3C01800A */  lui       $at, %hi(D_800A2070)
/* 37D50 8005C950 E4222070 */  swc1      $f2, %lo(D_800A2070)($at)
/* 37D54 8005C954 3C01800A */  lui       $at, %hi(D_800A2058)
/* 37D58 8005C958 E4262058 */  swc1      $f6, %lo(D_800A2058)($at)
/* 37D5C 8005C95C 3C01800A */  lui       $at, %hi(D_800A2060)
/* 37D60 8005C960 E4202060 */  swc1      $f0, %lo(D_800A2060)($at)
.L8005C964:
/* 37D64 8005C964 D7BC0020 */  ldc1      $f28, 0x20($sp)
/* 37D68 8005C968 D7BA0018 */  ldc1      $f26, 0x18($sp)
/* 37D6C 8005C96C D7B80010 */  ldc1      $f24, 0x10($sp)
/* 37D70 8005C970 D7B60008 */  ldc1      $f22, 8($sp)
/* 37D74 8005C974 D7B40000 */  ldc1      $f20, ($sp)
/* 37D78 8005C978 03E00008 */  jr        $ra
/* 37D7C 8005C97C 27BD0028 */   addiu    $sp, $sp, 0x28
