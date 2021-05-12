.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8002DFA4
/* 93A4 8002DFA4 3C08800B */  lui       $t0, %hi(D_800B1D60)
/* 93A8 8002DFA8 25081D60 */  addiu     $t0, $t0, %lo(D_800B1D60)
/* 93AC 8002DFAC 00042400 */  sll       $a0, $a0, 0x10
/* 93B0 8002DFB0 00042403 */  sra       $a0, $a0, 0x10
/* 93B4 8002DFB4 00041880 */  sll       $v1, $a0, 2
/* 93B8 8002DFB8 00641821 */  addu      $v1, $v1, $a0
/* 93BC 8002DFBC 00031880 */  sll       $v1, $v1, 2
/* 93C0 8002DFC0 00641823 */  subu      $v1, $v1, $a0
/* 93C4 8002DFC4 000310C0 */  sll       $v0, $v1, 3
/* 93C8 8002DFC8 00621821 */  addu      $v1, $v1, $v0
/* 93CC 8002DFCC 000318C0 */  sll       $v1, $v1, 3
/* 93D0 8002DFD0 00681821 */  addu      $v1, $v1, $t0
/* 93D4 8002DFD4 A467000A */  sh        $a3, 0xa($v1)
/* 93D8 8002DFD8 A465000E */  sh        $a1, 0xe($v1)
/* 93DC 8002DFDC 00E0282D */  daddu     $a1, $a3, $zero
/* 93E0 8002DFE0 A4660010 */  sh        $a2, 0x10($v1)
/* 93E4 8002DFE4 8FA40010 */  lw        $a0, 0x10($sp)
/* 93E8 8002DFE8 240201FF */  addiu     $v0, $zero, 0x1ff
/* 93EC 8002DFEC A46200A4 */  sh        $v0, 0xa4($v1)
/* 93F0 8002DFF0 A46200AC */  sh        $v0, 0xac($v1)
/* 93F4 8002DFF4 A46200B4 */  sh        $v0, 0xb4($v1)
/* 93F8 8002DFF8 9462000E */  lhu       $v0, 0xe($v1)
/* 93FC 8002DFFC 00052C00 */  sll       $a1, $a1, 0x10
/* 9400 8002E000 A46000A6 */  sh        $zero, 0xa6($v1)
/* 9404 8002E004 A46000AE */  sh        $zero, 0xae($v1)
/* 9408 8002E008 A46000B6 */  sh        $zero, 0xb6($v1)
/* 940C 8002E00C A464000C */  sh        $a0, 0xc($v1)
/* 9410 8002E010 00052403 */  sra       $a0, $a1, 0x10
/* 9414 8002E014 00052FC2 */  srl       $a1, $a1, 0x1f
/* 9418 8002E018 00852021 */  addu      $a0, $a0, $a1
/* 941C 8002E01C 00042043 */  sra       $a0, $a0, 1
/* 9420 8002E020 00441021 */  addu      $v0, $v0, $a0
/* 9424 8002E024 00021400 */  sll       $v0, $v0, 0x10
/* 9428 8002E028 8464000A */  lh        $a0, 0xa($v1)
/* 942C 8002E02C 00021383 */  sra       $v0, $v0, 0xe
/* 9430 8002E030 A46200A8 */  sh        $v0, 0xa8($v1)
/* 9434 8002E034 9462000C */  lhu       $v0, 0xc($v1)
/* 9438 8002E038 44840000 */  mtc1      $a0, $f0
/* 943C 8002E03C 00000000 */  nop
/* 9440 8002E040 46800020 */  cvt.s.w   $f0, $f0
/* 9444 8002E044 00021400 */  sll       $v0, $v0, 0x10
/* 9448 8002E048 00022403 */  sra       $a0, $v0, 0x10
/* 944C 8002E04C 000217C2 */  srl       $v0, $v0, 0x1f
/* 9450 8002E050 00822021 */  addu      $a0, $a0, $v0
/* 9454 8002E054 00C0102D */  daddu     $v0, $a2, $zero
/* 9458 8002E058 00042043 */  sra       $a0, $a0, 1
/* 945C 8002E05C 00441021 */  addu      $v0, $v0, $a0
/* 9460 8002E060 00021400 */  sll       $v0, $v0, 0x10
/* 9464 8002E064 00021383 */  sra       $v0, $v0, 0xe
/* 9468 8002E068 46000000 */  add.s     $f0, $f0, $f0
/* 946C 8002E06C A46200AA */  sh        $v0, 0xaa($v1)
/* 9470 8002E070 8462000A */  lh        $v0, 0xa($v1)
/* 9474 8002E074 4600010D */  trunc.w.s $f4, $f0
/* 9478 8002E078 44042000 */  mfc1      $a0, $f4
/* 947C 8002E07C 44820000 */  mtc1      $v0, $f0
/* 9480 8002E080 00000000 */  nop
/* 9484 8002E084 46800020 */  cvt.s.w   $f0, $f0
/* 9488 8002E088 46000000 */  add.s     $f0, $f0, $f0
/* 948C 8002E08C 8462000C */  lh        $v0, 0xc($v1)
/* 9490 8002E090 3C068007 */  lui       $a2, %hi(D_8007417C)
/* 9494 8002E094 8CC6417C */  lw        $a2, %lo(D_8007417C)($a2)
/* 9498 8002E098 44821000 */  mtc1      $v0, $f2
/* 949C 8002E09C 00000000 */  nop
/* 94A0 8002E0A0 468010A0 */  cvt.s.w   $f2, $f2
/* 94A4 8002E0A4 4600010D */  trunc.w.s $f4, $f0
/* 94A8 8002E0A8 44022000 */  mfc1      $v0, $f4
/* 94AC 8002E0AC 00000000 */  nop
/* 94B0 8002E0B0 A46200B0 */  sh        $v0, 0xb0($v1)
/* 94B4 8002E0B4 8462000C */  lh        $v0, 0xc($v1)
/* 94B8 8002E0B8 46021080 */  add.s     $f2, $f2, $f2
/* 94BC 8002E0BC A46400A0 */  sh        $a0, 0xa0($v1)
/* 94C0 8002E0C0 44820000 */  mtc1      $v0, $f0
/* 94C4 8002E0C4 00000000 */  nop
/* 94C8 8002E0C8 46800020 */  cvt.s.w   $f0, $f0
/* 94CC 8002E0CC 46000000 */  add.s     $f0, $f0, $f0
/* 94D0 8002E0D0 4600110D */  trunc.w.s $f4, $f2
/* 94D4 8002E0D4 44042000 */  mfc1      $a0, $f4
/* 94D8 8002E0D8 00000000 */  nop
/* 94DC 8002E0DC A46400A2 */  sh        $a0, 0xa2($v1)
/* 94E0 8002E0E0 4600010D */  trunc.w.s $f4, $f0
/* 94E4 8002E0E4 44022000 */  mfc1      $v0, $f4
/* 94E8 8002E0E8 00000000 */  nop
/* 94EC 8002E0EC A46200B2 */  sh        $v0, 0xb2($v1)
/* 94F0 8002E0F0 00E0102D */  daddu     $v0, $a3, $zero
/* 94F4 8002E0F4 00021400 */  sll       $v0, $v0, 0x10
/* 94F8 8002E0F8 00022403 */  sra       $a0, $v0, 0x10
/* 94FC 8002E0FC 000217C2 */  srl       $v0, $v0, 0x1f
/* 9500 8002E100 00822021 */  addu      $a0, $a0, $v0
/* 9504 8002E104 00042043 */  sra       $a0, $a0, 1
/* 9508 8002E108 90C50082 */  lbu       $a1, 0x82($a2)
/* 950C 8002E10C 9462000E */  lhu       $v0, 0xe($v1)
/* 9510 8002E110 00052E00 */  sll       $a1, $a1, 0x18
/* 9514 8002E114 00052E03 */  sra       $a1, $a1, 0x18
/* 9518 8002E118 00441021 */  addu      $v0, $v0, $a0
/* 951C 8002E11C 00021400 */  sll       $v0, $v0, 0x10
/* 9520 8002E120 00021383 */  sra       $v0, $v0, 0xe
/* 9524 8002E124 00A22821 */  addu      $a1, $a1, $v0
/* 9528 8002E128 A46500B8 */  sh        $a1, 0xb8($v1)
/* 952C 8002E12C 90C50083 */  lbu       $a1, 0x83($a2)
/* 9530 8002E130 9462000C */  lhu       $v0, 0xc($v1)
/* 9534 8002E134 00052E00 */  sll       $a1, $a1, 0x18
/* 9538 8002E138 00052E03 */  sra       $a1, $a1, 0x18
/* 953C 8002E13C 00021400 */  sll       $v0, $v0, 0x10
/* 9540 8002E140 00022403 */  sra       $a0, $v0, 0x10
/* 9544 8002E144 000217C2 */  srl       $v0, $v0, 0x1f
/* 9548 8002E148 00822021 */  addu      $a0, $a0, $v0
/* 954C 8002E14C 94620010 */  lhu       $v0, 0x10($v1)
/* 9550 8002E150 00042043 */  sra       $a0, $a0, 1
/* 9554 8002E154 00441021 */  addu      $v0, $v0, $a0
/* 9558 8002E158 00021400 */  sll       $v0, $v0, 0x10
/* 955C 8002E15C 00021383 */  sra       $v0, $v0, 0xe
/* 9560 8002E160 00A22821 */  addu      $a1, $a1, $v0
/* 9564 8002E164 24020200 */  addiu     $v0, $zero, 0x200
/* 9568 8002E168 A46500BA */  sh        $a1, 0xba($v1)
/* 956C 8002E16C A46200BC */  sh        $v0, 0xbc($v1)
/* 9570 8002E170 03E00008 */  jr        $ra
/* 9574 8002E174 A46000BE */   sh       $zero, 0xbe($v1)
