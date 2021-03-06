//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

DATA LCDATA1<>+0x000(SB)/8, $0x0000000000000001
GLOBL LCDATA1<>(SB), 8, $8

TEXT ·_asm_add_avx2(SB), $0-16

	MOVQ addr+0(FP), DI
	MOVQ len+8(FP), SI
	LEAQ LCDATA1<>(SB), BP

	WORD $0xf685                           // test    esi, esi
	JLE  LBB0_12
	WORD $0x6348; BYTE $0xc6               // movsxd    rax, esi
	LONG $0xc7048d48                       // lea    rax, [rdi + 8*rax]
	LONG $0x08578d48                       // lea    rdx, [rdi + 8]
	WORD $0x3948; BYTE $0xd0               // cmp    rax, rdx
	LONG $0xd0470f48                       // cmova    rdx, rax
	WORD $0x8948; BYTE $0xf9               // mov    rcx, rdi
	WORD $0xf748; BYTE $0xd1               // not    rcx
	WORD $0x0148; BYTE $0xd1               // add    rcx, rdx
	LONG $0x03e9c148                       // shr    rcx, 3
	WORD $0xff48; BYTE $0xc1               // inc    rcx
	LONG $0x10f98348                       // cmp    rcx, 16
	JB   LBB0_11
	QUAD $0xfffffffffff0b849; WORD $0x3fff // mov    r8, 4611686018427387888
	WORD $0x2149; BYTE $0xc8               // and    r8, rcx
	JE   LBB0_11
	LONG $0xf0708d49                       // lea    rsi, [r8 - 16]
	WORD $0x8948; BYTE $0xf2               // mov    rdx, rsi
	LONG $0x04eac148                       // shr    rdx, 4
	LONG $0xe6ba0f48; BYTE $0x04           // bt    rsi, 4
	JB   LBB0_4
	LONG $0x597de2c4; WORD $0x0045         // vpbroadcastq    ymm0, qword 0[rbp] /* [rip + .LCPI0_0] */
	LONG $0x0fd4fdc5                       // vpaddq    ymm1, ymm0, yword [rdi]
	LONG $0x57d4fdc5; BYTE $0x20           // vpaddq    ymm2, ymm0, yword [rdi + 32]
	LONG $0x5fd4fdc5; BYTE $0x40           // vpaddq    ymm3, ymm0, yword [rdi + 64]
	LONG $0x47d4fdc5; BYTE $0x60           // vpaddq    ymm0, ymm0, yword [rdi + 96]
	LONG $0x0f7ffec5                       // vmovdqu    yword [rdi], ymm1
	LONG $0x577ffec5; BYTE $0x20           // vmovdqu    yword [rdi + 32], ymm2
	LONG $0x5f7ffec5; BYTE $0x40           // vmovdqu    yword [rdi + 64], ymm3
	LONG $0x477ffec5; BYTE $0x60           // vmovdqu    yword [rdi + 96], ymm0
	LONG $0x0010b941; WORD $0x0000         // mov    r9d, 16
	JMP  LBB0_6

LBB0_4:
	WORD $0x3145; BYTE $0xc9 // xor    r9d, r9d

LBB0_6:
	WORD $0x8548; BYTE $0xd2       // test    rdx, rdx
	JE   LBB0_9
	WORD $0x894c; BYTE $0xc6       // mov    rsi, r8
	WORD $0x294c; BYTE $0xce       // sub    rsi, r9
	QUAD $0x000000e0cf948d4a       // lea    rdx, [rdi + 8*r9 + 224]
	LONG $0x597de2c4; WORD $0x0045 // vpbroadcastq    ymm0, qword 0[rbp] /* [rip + .LCPI0_0] */

LBB0_8:
	QUAD $0xffffff208ad4fdc5                   // vpaddq    ymm1, ymm0, yword [rdx - 224]
	QUAD $0xffffff4092d4fdc5                   // vpaddq    ymm2, ymm0, yword [rdx - 192]
	QUAD $0xffffff609ad4fdc5                   // vpaddq    ymm3, ymm0, yword [rdx - 160]
	LONG $0x62d4fdc5; BYTE $0x80               // vpaddq    ymm4, ymm0, yword [rdx - 128]
	QUAD $0xffffff208a7ffec5                   // vmovdqu    yword [rdx - 224], ymm1
	QUAD $0xffffff40927ffec5                   // vmovdqu    yword [rdx - 192], ymm2
	QUAD $0xffffff609a7ffec5                   // vmovdqu    yword [rdx - 160], ymm3
	LONG $0x627ffec5; BYTE $0x80               // vmovdqu    yword [rdx - 128], ymm4
	LONG $0x4ad4fdc5; BYTE $0xa0               // vpaddq    ymm1, ymm0, yword [rdx - 96]
	LONG $0x52d4fdc5; BYTE $0xc0               // vpaddq    ymm2, ymm0, yword [rdx - 64]
	LONG $0x5ad4fdc5; BYTE $0xe0               // vpaddq    ymm3, ymm0, yword [rdx - 32]
	LONG $0x22d4fdc5                           // vpaddq    ymm4, ymm0, yword [rdx]
	LONG $0x4a7ffec5; BYTE $0xa0               // vmovdqu    yword [rdx - 96], ymm1
	LONG $0x527ffec5; BYTE $0xc0               // vmovdqu    yword [rdx - 64], ymm2
	LONG $0x5a7ffec5; BYTE $0xe0               // vmovdqu    yword [rdx - 32], ymm3
	LONG $0x227ffec5                           // vmovdqu    yword [rdx], ymm4
	LONG $0x00c28148; WORD $0x0001; BYTE $0x00 // add    rdx, 256
	LONG $0xe0c68348                           // add    rsi, -32
	JNE  LBB0_8

LBB0_9:
	WORD $0x394c; BYTE $0xc1 // cmp    rcx, r8
	JE   LBB0_12
	LONG $0xc73c8d4a         // lea    rdi, [rdi + 8*r8]

LBB0_11:
	WORD $0xff48; BYTE $0x07 // inc    qword [rdi]
	LONG $0x08c78348         // add    rdi, 8
	WORD $0x3948; BYTE $0xc7 // cmp    rdi, rax
	JB   LBB0_11

LBB0_12:
	VZEROUPPER
	RET

DATA LCDATA2<>+0x000(SB)/8, $0x0000000000000001
DATA LCDATA2<>+0x008(SB)/8, $0x0000000000000001
GLOBL LCDATA2<>(SB), 8, $16

TEXT ·_asm_add2_avx2(SB), $0-16

	MOVQ addr+0(FP), DI
	MOVQ len+8(FP), SI
	LEAQ LCDATA2<>(SB), BP

	WORD $0xf685                 // test    esi, esi
	JLE  LBB1_7
	WORD $0x6348; BYTE $0xc6     // movsxd    rax, esi
	LONG $0xc7048d48             // lea    rax, [rdi + 8*rax]
	LONG $0x10578d48             // lea    rdx, [rdi + 16]
	WORD $0x3948; BYTE $0xd0     // cmp    rax, rdx
	LONG $0xd0470f48             // cmova    rdx, rax
	WORD $0x8948; BYTE $0xf9     // mov    rcx, rdi
	WORD $0xf748; BYTE $0xd1     // not    rcx
	WORD $0x0148; BYTE $0xd1     // add    rcx, rdx
	WORD $0xca89                 // mov    edx, ecx
	WORD $0xeac1; BYTE $0x04     // shr    edx, 4
	WORD $0xc2ff                 // inc    edx
	LONG $0x07e28348             // and    rdx, 7
	JE   LBB1_4
	WORD $0xf748; BYTE $0xda     // neg    rdx
	LONG $0x456ff9c5; BYTE $0x00 // vmovdqa    xmm0, oword 0[rbp] /* [rip + .LCPI1_0] */

LBB1_3:
	LONG $0x0fd4f9c5         // vpaddq    xmm1, xmm0, oword [rdi]
	LONG $0x0f7ffac5         // vmovdqu    oword [rdi], xmm1
	LONG $0x107f8d48         // lea    rdi, [rdi + 16]
	WORD $0xff48; BYTE $0xc2 // inc    rdx
	JNE  LBB1_3

LBB1_4:
	LONG $0x70f98348             // cmp    rcx, 112
	JB   LBB1_7
	LONG $0x456ff9c5; BYTE $0x00 // vmovdqa    xmm0, oword 0[rbp] /* [rip + .LCPI1_0] */

LBB1_6:
	LONG $0x0fd4f9c5             // vpaddq    xmm1, xmm0, oword [rdi]
	LONG $0x0f7ffac5             // vmovdqu    oword [rdi], xmm1
	LONG $0x4fd4f9c5; BYTE $0x10 // vpaddq    xmm1, xmm0, oword [rdi + 16]
	LONG $0x4f7ffac5; BYTE $0x10 // vmovdqu    oword [rdi + 16], xmm1
	LONG $0x4fd4f9c5; BYTE $0x20 // vpaddq    xmm1, xmm0, oword [rdi + 32]
	LONG $0x4f7ffac5; BYTE $0x20 // vmovdqu    oword [rdi + 32], xmm1
	LONG $0x4fd4f9c5; BYTE $0x30 // vpaddq    xmm1, xmm0, oword [rdi + 48]
	LONG $0x4f7ffac5; BYTE $0x30 // vmovdqu    oword [rdi + 48], xmm1
	LONG $0x4fd4f9c5; BYTE $0x40 // vpaddq    xmm1, xmm0, oword [rdi + 64]
	LONG $0x4f7ffac5; BYTE $0x40 // vmovdqu    oword [rdi + 64], xmm1
	LONG $0x4fd4f9c5; BYTE $0x50 // vpaddq    xmm1, xmm0, oword [rdi + 80]
	LONG $0x4f7ffac5; BYTE $0x50 // vmovdqu    oword [rdi + 80], xmm1
	LONG $0x4fd4f9c5; BYTE $0x60 // vpaddq    xmm1, xmm0, oword [rdi + 96]
	LONG $0x4f7ffac5; BYTE $0x60 // vmovdqu    oword [rdi + 96], xmm1
	LONG $0x4fd4f9c5; BYTE $0x70 // vpaddq    xmm1, xmm0, oword [rdi + 112]
	LONG $0x4f7ffac5; BYTE $0x70 // vmovdqu    oword [rdi + 112], xmm1
	LONG $0x80ef8348             // sub    rdi, -128
	WORD $0x3948; BYTE $0xc7     // cmp    rdi, rax
	JB   LBB1_6

LBB1_7:
	RET

DATA LCDATA3<>+0x000(SB)/8, $0x0000000000000001
GLOBL LCDATA3<>(SB), 8, $8

TEXT ·_asm_add4_avx2(SB), $0-16

	MOVQ addr+0(FP), DI
	MOVQ len+8(FP), SI
	LEAQ LCDATA3<>(SB), BP

	WORD $0xf685                   // test    esi, esi
	JLE  LBB2_7
	WORD $0x6348; BYTE $0xc6       // movsxd    rax, esi
	LONG $0xc7048d48               // lea    rax, [rdi + 8*rax]
	LONG $0x20578d48               // lea    rdx, [rdi + 32]
	WORD $0x3948; BYTE $0xd0       // cmp    rax, rdx
	LONG $0xd0470f48               // cmova    rdx, rax
	WORD $0x8948; BYTE $0xf9       // mov    rcx, rdi
	WORD $0xf748; BYTE $0xd1       // not    rcx
	WORD $0x0148; BYTE $0xd1       // add    rcx, rdx
	WORD $0xca89                   // mov    edx, ecx
	WORD $0xeac1; BYTE $0x05       // shr    edx, 5
	WORD $0xc2ff                   // inc    edx
	LONG $0x07e28348               // and    rdx, 7
	JE   LBB2_4
	WORD $0xf748; BYTE $0xda       // neg    rdx
	LONG $0x597de2c4; WORD $0x0045 // vpbroadcastq    ymm0, qword 0[rbp] /* [rip + .LCPI2_0] */

LBB2_3:
	LONG $0x0fd4fdc5         // vpaddq    ymm1, ymm0, yword [rdi]
	LONG $0x0f7ffec5         // vmovdqu    yword [rdi], ymm1
	LONG $0x207f8d48         // lea    rdi, [rdi + 32]
	WORD $0xff48; BYTE $0xc2 // inc    rdx
	JNE  LBB2_3

LBB2_4:
	LONG $0xe0f98148; WORD $0x0000; BYTE $0x00 // cmp    rcx, 224
	JB   LBB2_7
	LONG $0x597de2c4; WORD $0x0045             // vpbroadcastq    ymm0, qword 0[rbp] /* [rip + .LCPI2_0] */

LBB2_6:
	LONG $0x0fd4fdc5                           // vpaddq    ymm1, ymm0, yword [rdi]
	LONG $0x0f7ffec5                           // vmovdqu    yword [rdi], ymm1
	LONG $0x4fd4fdc5; BYTE $0x20               // vpaddq    ymm1, ymm0, yword [rdi + 32]
	LONG $0x4f7ffec5; BYTE $0x20               // vmovdqu    yword [rdi + 32], ymm1
	LONG $0x4fd4fdc5; BYTE $0x40               // vpaddq    ymm1, ymm0, yword [rdi + 64]
	LONG $0x4f7ffec5; BYTE $0x40               // vmovdqu    yword [rdi + 64], ymm1
	LONG $0x4fd4fdc5; BYTE $0x60               // vpaddq    ymm1, ymm0, yword [rdi + 96]
	LONG $0x4f7ffec5; BYTE $0x60               // vmovdqu    yword [rdi + 96], ymm1
	QUAD $0x000000808fd4fdc5                   // vpaddq    ymm1, ymm0, yword [rdi + 128]
	QUAD $0x000000808f7ffec5                   // vmovdqu    yword [rdi + 128], ymm1
	QUAD $0x000000a08fd4fdc5                   // vpaddq    ymm1, ymm0, yword [rdi + 160]
	QUAD $0x000000a08f7ffec5                   // vmovdqu    yword [rdi + 160], ymm1
	QUAD $0x000000c08fd4fdc5                   // vpaddq    ymm1, ymm0, yword [rdi + 192]
	QUAD $0x000000c08f7ffec5                   // vmovdqu    yword [rdi + 192], ymm1
	QUAD $0x000000e08fd4fdc5                   // vpaddq    ymm1, ymm0, yword [rdi + 224]
	QUAD $0x000000e08f7ffec5                   // vmovdqu    yword [rdi + 224], ymm1
	LONG $0x00c78148; WORD $0x0001; BYTE $0x00 // add    rdi, 256
	WORD $0x3948; BYTE $0xc7                   // cmp    rdi, rax
	JB   LBB2_6

LBB2_7:
	VZEROUPPER
	RET

DATA LCDATA4<>+0x000(SB)/8, $0x0000000000000001
GLOBL LCDATA4<>(SB), 8, $8

TEXT ·_asm_add8_avx2(SB), $0-16

	MOVQ addr+0(FP), DI
	MOVQ len+8(FP), SI
	LEAQ LCDATA4<>(SB), BP

	WORD $0xf685                   // test    esi, esi
	JLE  LBB3_8
	WORD $0x6348; BYTE $0xc6       // movsxd    rax, esi
	LONG $0xc7048d48               // lea    rax, [rdi + 8*rax]
	LONG $0x404f8d48               // lea    rcx, [rdi + 64]
	WORD $0x3948; BYTE $0xc8       // cmp    rax, rcx
	LONG $0xc8470f48               // cmova    rcx, rax
	WORD $0x8948; BYTE $0xfa       // mov    rdx, rdi
	WORD $0xf748; BYTE $0xd2       // not    rdx
	WORD $0x0148; BYTE $0xca       // add    rdx, rcx
	WORD $0xd689                   // mov    esi, edx
	WORD $0xeec1; BYTE $0x06       // shr    esi, 6
	WORD $0xc6ff                   // inc    esi
	LONG $0x03e68348               // and    rsi, 3
	JE   LBB3_2
	WORD $0xf748; BYTE $0xde       // neg    rsi
	LONG $0x597de2c4; WORD $0x0045 // vpbroadcastq    ymm0, qword 0[rbp] /* [rip + .LCPI3_0] */

LBB3_4:
	LONG $0x0fd4fdc5             // vpaddq    ymm1, ymm0, yword [rdi]
	LONG $0x0f7ffec5             // vmovdqu    yword [rdi], ymm1
	LONG $0x404f8d48             // lea    rcx, [rdi + 64]
	LONG $0x4fd4fdc5; BYTE $0x20 // vpaddq    ymm1, ymm0, yword [rdi + 32]
	LONG $0x4f7ffec5; BYTE $0x20 // vmovdqu    yword [rdi + 32], ymm1
	WORD $0x8948; BYTE $0xcf     // mov    rdi, rcx
	WORD $0xff48; BYTE $0xc6     // inc    rsi
	JNE  LBB3_4
	JMP  LBB3_5

LBB3_2:
	WORD $0x8948; BYTE $0xf9 // mov    rcx, rdi

LBB3_5:
	LONG $0xc0fa8148; WORD $0x0000; BYTE $0x00 // cmp    rdx, 192
	JB   LBB3_8
	LONG $0x597de2c4; WORD $0x0045             // vpbroadcastq    ymm0, qword 0[rbp] /* [rip + .LCPI3_0] */

LBB3_7:
	LONG $0x09d4fdc5                           // vpaddq    ymm1, ymm0, yword [rcx]
	LONG $0x097ffec5                           // vmovdqu    yword [rcx], ymm1
	LONG $0x49d4fdc5; BYTE $0x20               // vpaddq    ymm1, ymm0, yword [rcx + 32]
	LONG $0x497ffec5; BYTE $0x20               // vmovdqu    yword [rcx + 32], ymm1
	LONG $0x49d4fdc5; BYTE $0x40               // vpaddq    ymm1, ymm0, yword [rcx + 64]
	LONG $0x497ffec5; BYTE $0x40               // vmovdqu    yword [rcx + 64], ymm1
	LONG $0x49d4fdc5; BYTE $0x60               // vpaddq    ymm1, ymm0, yword [rcx + 96]
	LONG $0x497ffec5; BYTE $0x60               // vmovdqu    yword [rcx + 96], ymm1
	QUAD $0x0000008089d4fdc5                   // vpaddq    ymm1, ymm0, yword [rcx + 128]
	QUAD $0x00000080897ffec5                   // vmovdqu    yword [rcx + 128], ymm1
	QUAD $0x000000a089d4fdc5                   // vpaddq    ymm1, ymm0, yword [rcx + 160]
	QUAD $0x000000a0897ffec5                   // vmovdqu    yword [rcx + 160], ymm1
	QUAD $0x000000c089d4fdc5                   // vpaddq    ymm1, ymm0, yword [rcx + 192]
	QUAD $0x000000c0897ffec5                   // vmovdqu    yword [rcx + 192], ymm1
	QUAD $0x000000e089d4fdc5                   // vpaddq    ymm1, ymm0, yword [rcx + 224]
	QUAD $0x000000e0897ffec5                   // vmovdqu    yword [rcx + 224], ymm1
	LONG $0x00c18148; WORD $0x0001; BYTE $0x00 // add    rcx, 256
	WORD $0x3948; BYTE $0xc1                   // cmp    rcx, rax
	JB   LBB3_7

LBB3_8:
	VZEROUPPER
	RET
