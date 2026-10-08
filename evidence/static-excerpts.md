# 静态证据摘录

本文件仅摘录系统代码，不含用户日志或配件身份。

## daemon 0x1000050d0–0x100005154

```text
1000050d0:	7f 23 03 d5	pacibsp
1000050d4:	f6 57 bd a9	stp	x22, x21, [sp, #-0x30]!
1000050d8:	f4 4f 01 a9	stp	x20, x19, [sp, #0x10]
1000050dc:	fd 7b 02 a9	stp	x29, x30, [sp, #0x20]
1000050e0:	fd 83 00 91	add	x29, sp, #0x20
1000050e4:	f4 03 00 aa	mov	x20, x0
1000050e8:	c8 09 00 90	adrp	x8, 312 ; 0x10013d000
1000050ec:	00 31 42 f9	ldr	x0, [x8, #0x460] ; literal pool symbol address: _OBJC_CLASS_$_NSUserDefaults
1000050f0:	02 0a 00 90	adrp	x2, 320 ; 0x100145000
1000050f4:	42 20 08 91	add	x2, x2, #0x208 ; Objc cfstring ref: @"accessories"
1000050f8:	4a 6c 03 94	bl	0x1000e0220 ; SELECTOR AUDeveloperSettingsObjectWithKey:
1000050fc:	fd 03 1d aa	mov	x29, x29
100005100:	cb 6a 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100005104:	f3 03 00 aa	mov	x19, x0
100005108:	d5 09 00 90	adrp	x21, 312 ; 0x10013d000
10000510c:	a0 0e 42 f9	ldr	x0, [x21, #0x418] ; literal pool symbol address: _OBJC_CLASS_$_NSDictionary
100005110:	a7 6a 03 94	bl	0x1000dfbac ; symbol stub for: _objc_opt_class
100005114:	e1 03 00 aa	mov	x1, x0
100005118:	e0 03 13 aa	mov	x0, x19
10000511c:	a8 6a 03 94	bl	0x1000dfbbc ; symbol stub for: _objc_opt_isKindOfClass
100005120:	60 00 00 36	tbz	w0, #0x0, 0x10000512c
100005124:	93 01 00 b5	cbnz	x19, 0x100005154
100005128:	08 00 00 14	b	0x100005148
10000512c:	94 06 40 f9	ldr	x20, [x20, #0x8]
100005130:	e0 03 14 aa	mov	x0, x20
100005134:	01 02 80 52	mov	w1, #0x10
100005138:	ed 6a 03 94	bl	0x1000dfcec ; symbol stub for: _os_log_type_enabled
10000513c:	e0 01 00 35	cbnz	w0, 0x100005178
100005140:	e0 03 13 aa	mov	x0, x19
100005144:	aa 6a 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
100005148:	a0 0e 42 f9	ldr	x0, [x21, #0x418]
10000514c:	6c 6a 03 94	bl	0x1000dfafc ; symbol stub for: _objc_alloc_init
100005150:	f3 03 00 aa	mov	x19, x0
100005154:	e0 03 13 aa	mov	x0, x19
```

## daemon 0x100006a14–0x100006bb8

```text
100006a14:	7f 23 03 d5	pacibsp
100006a18:	f8 5f bc a9	stp	x24, x23, [sp, #-0x40]!
100006a1c:	f6 57 01 a9	stp	x22, x21, [sp, #0x10]
100006a20:	f4 4f 02 a9	stp	x20, x19, [sp, #0x20]
100006a24:	fd 7b 03 a9	stp	x29, x30, [sp, #0x30]
100006a28:	fd c3 00 91	add	x29, sp, #0x30
100006a2c:	74 64 03 94	bl	0x1000dfbfc ; symbol stub for: _objc_retain
100006a30:	f3 03 00 aa	mov	x19, x0
100006a34:	3b 7e 03 94	bl	0x1000e6320 ; SELECTOR serialNumber
100006a38:	fd 03 1d aa	mov	x29, x29
100006a3c:	7c 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006a40:	f4 03 00 aa	mov	x20, x0
100006a44:	e0 03 13 aa	mov	x0, x19
100006a48:	a6 77 03 94	bl	0x1000e48e0 ; SELECTOR modelNumber
100006a4c:	fd 03 1d aa	mov	x29, x29
100006a50:	77 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006a54:	f5 03 00 aa	mov	x21, x0
100006a58:	e0 03 13 aa	mov	x0, x19
100006a5c:	e1 72 03 94	bl	0x1000e35e0 ; SELECTOR hwFusingType
100006a60:	fd 03 1d aa	mov	x29, x29
100006a64:	72 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006a68:	f6 03 00 aa	mov	x22, x0
100006a6c:	e0 03 13 aa	mov	x0, x19
100006a70:	04 79 03 94	bl	0x1000e4e80 ; SELECTOR partnerSerialNumbers
100006a74:	fd 03 1d aa	mov	x29, x29
100006a78:	6d 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006a7c:	f7 03 00 aa	mov	x23, x0
100006a80:	e0 03 13 aa	mov	x0, x19
100006a84:	5a 64 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
100006a88:	e0 03 14 aa	mov	x0, x20
100006a8c:	e1 03 15 aa	mov	x1, x21
100006a90:	e2 03 16 aa	mov	x2, x22
100006a94:	e3 03 17 aa	mov	x3, x23
100006a98:	10 00 00 94	bl	0x100006ad8
100006a9c:	f3 03 00 aa	mov	x19, x0
100006aa0:	e0 03 17 aa	mov	x0, x23
100006aa4:	52 64 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
100006aa8:	e0 03 16 aa	mov	x0, x22
100006aac:	50 64 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
100006ab0:	e0 03 15 aa	mov	x0, x21
100006ab4:	4e 64 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
100006ab8:	e0 03 14 aa	mov	x0, x20
100006abc:	4c 64 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
100006ac0:	e0 03 13 aa	mov	x0, x19
100006ac4:	fd 7b 43 a9	ldp	x29, x30, [sp, #0x30]
100006ac8:	f4 4f 42 a9	ldp	x20, x19, [sp, #0x20]
100006acc:	f6 57 41 a9	ldp	x22, x21, [sp, #0x10]
100006ad0:	f8 5f c4 a8	ldp	x24, x23, [sp], #0x40
100006ad4:	ff 0f 5f d6	retab
100006ad8:	7f 23 03 d5	pacibsp
100006adc:	f8 5f bc a9	stp	x24, x23, [sp, #-0x40]!
100006ae0:	f6 57 01 a9	stp	x22, x21, [sp, #0x10]
100006ae4:	f4 4f 02 a9	stp	x20, x19, [sp, #0x20]
100006ae8:	fd 7b 03 a9	stp	x29, x30, [sp, #0x30]
100006aec:	fd c3 00 91	add	x29, sp, #0x30
100006af0:	6a ff ff 97	bl	0x100006898
100006af4:	fd 03 1d aa	mov	x29, x29
100006af8:	4d 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006afc:	f3 03 00 aa	mov	x19, x0
100006b00:	40 04 00 b4	cbz	x0, 0x100006b88
100006b04:	e8 0a 00 f0	adrp	x8, 351 ; 0x100165000
100006b08:	00 e1 0f 91	add	x0, x8, #0x3f8
100006b0c:	5d 82 03 94	bl	0x1000e7480 ; SELECTOR sharedDatabase
100006b10:	fd 03 1d aa	mov	x29, x29
100006b14:	46 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006b18:	f4 03 00 aa	mov	x20, x0
100006b1c:	a9 66 03 94	bl	0x1000e05c0 ; SELECTOR accessoriesDictionary
100006b20:	fd 03 1d aa	mov	x29, x29
100006b24:	42 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006b28:	f5 03 00 aa	mov	x21, x0
100006b2c:	e2 03 13 aa	mov	x2, x19
100006b30:	84 78 03 94	bl	0x1000e4d40 ; SELECTOR objectForKey:
100006b34:	fd 03 1d aa	mov	x29, x29
100006b38:	3d 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006b3c:	f6 03 00 aa	mov	x22, x0
100006b40:	e0 03 15 aa	mov	x0, x21
100006b44:	2a 64 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
100006b48:	56 02 00 b4	cbz	x22, 0x100006b90
100006b4c:	a8 09 00 f0	adrp	x8, 311 ; 0x10013d000
100006b50:	08 a1 26 91	add	x8, x8, #0x9a8
100006b54:	02 01 40 f9	ldr	x2, [x8]
100006b58:	e0 03 16 aa	mov	x0, x22
100006b5c:	81 78 03 94	bl	0x1000e4d60 ; SELECTOR objectForKeyedSubscript:
100006b60:	fd 03 1d aa	mov	x29, x29
100006b64:	32 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006b68:	f7 03 00 aa	mov	x23, x0
100006b6c:	15 69 03 94	bl	0x1000e0fc0 ; SELECTOR boolValue
100006b70:	f5 03 00 aa	mov	x21, x0
100006b74:	e0 03 17 aa	mov	x0, x23
100006b78:	1d 64 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
100006b7c:	e0 03 16 aa	mov	x0, x22
100006b80:	1b 64 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
100006b84:	04 00 00 14	b	0x100006b94
100006b88:	15 00 80 52	mov	w21, #0x0
100006b8c:	04 00 00 14	b	0x100006b9c
100006b90:	15 00 80 52	mov	w21, #0x0
100006b94:	e0 03 14 aa	mov	x0, x20
100006b98:	15 64 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
100006b9c:	e0 03 13 aa	mov	x0, x19
100006ba0:	13 64 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
100006ba4:	e0 03 15 aa	mov	x0, x21
100006ba8:	fd 7b 43 a9	ldp	x29, x30, [sp, #0x30]
100006bac:	f4 4f 42 a9	ldp	x20, x19, [sp, #0x20]
100006bb0:	f6 57 41 a9	ldp	x22, x21, [sp, #0x10]
100006bb4:	f8 5f c4 a8	ldp	x24, x23, [sp], #0x40
100006bb8:	ff 0f 5f d6	retab
```

## daemon 0x10001b884–0x10001b8fc

```text
10001b884:	7f 23 03 d5	pacibsp
10001b888:	f4 4f be a9	stp	x20, x19, [sp, #-0x20]!
10001b88c:	fd 7b 01 a9	stp	x29, x30, [sp, #0x10]
10001b890:	fd 43 00 91	add	x29, sp, #0x10
10001b894:	e0 03 02 aa	mov	x0, x2
10001b898:	42 09 00 f0	adrp	x2, 299 ; 0x100146000
10001b89c:	42 20 37 91	add	x2, x2, #0xdc8 ; Objc cfstring ref: @"."
10001b8a0:	40 17 03 94	bl	0x1000e15a0 ; SELECTOR componentsSeparatedByString:
10001b8a4:	f3 03 00 aa	mov	x19, x0
10001b8a8:	08 09 00 f0	adrp	x8, 291 ; 0x10013e000
10001b8ac:	08 61 22 91	add	x8, x8, #0x898
10001b8b0:	00 01 40 f9	ldr	x0, [x8]
10001b8b4:	08 09 00 f0	adrp	x8, 291 ; 0x10013e000
10001b8b8:	08 21 22 91	add	x8, x8, #0x888
10001b8bc:	01 01 40 f9	ldr	x1, [x8]
10001b8c0:	d3 0b 03 94	bl	0x1000de80c ; symbol stub for: _CFPreferencesCopyAppValue
10001b8c4:	f4 03 00 aa	mov	x20, x0
10001b8c8:	e0 03 13 aa	mov	x0, x19
10001b8cc:	02 00 80 d2	mov	x2, #0x0
10001b8d0:	fc 24 03 94	bl	0x1000e4cc0 ; SELECTOR objectAtIndex:
10001b8d4:	e2 03 00 aa	mov	x2, x0
10001b8d8:	e0 03 14 aa	mov	x0, x20
10001b8dc:	21 25 03 94	bl	0x1000e4d60 ; SELECTOR objectForKeyedSubscript:
10001b8e0:	b8 15 03 94	bl	0x1000e0fc0 ; SELECTOR boolValue
10001b8e4:	f3 03 00 aa	mov	x19, x0
10001b8e8:	e0 03 14 aa	mov	x0, x20
10001b8ec:	c0 10 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
10001b8f0:	e0 03 13 aa	mov	x0, x19
10001b8f4:	fd 7b 41 a9	ldp	x29, x30, [sp, #0x10]
10001b8f8:	f4 4f c2 a8	ldp	x20, x19, [sp], #0x20
10001b8fc:	ff 0f 5f d6	retab
```

## daemon 0x100037b70–0x100037c2c

```text
100037b70:	7f 23 03 d5	pacibsp
100037b74:	ff 43 07 d1	sub	sp, sp, #0x1d0
100037b78:	fc 6f 17 a9	stp	x28, x27, [sp, #0x170]
100037b7c:	fa 67 18 a9	stp	x26, x25, [sp, #0x180]
100037b80:	f8 5f 19 a9	stp	x24, x23, [sp, #0x190]
100037b84:	f6 57 1a a9	stp	x22, x21, [sp, #0x1a0]
100037b88:	f4 4f 1b a9	stp	x20, x19, [sp, #0x1b0]
100037b8c:	fd 7b 1c a9	stp	x29, x30, [sp, #0x1c0]
100037b90:	fd 03 07 91	add	x29, sp, #0x1c0
100037b94:	f8 03 04 aa	mov	x24, x4
100037b98:	f5 03 03 aa	mov	x21, x3
100037b9c:	f3 03 02 aa	mov	x19, x2
100037ba0:	f4 03 00 aa	mov	x20, x0
100037ba4:	28 08 00 d0	adrp	x8, 262 ; 0x10013d000
100037ba8:	08 b1 41 f9	ldr	x8, [x8, #0x360] ; literal pool symbol address: ___stack_chk_guard
100037bac:	08 01 40 f9	ldr	x8, [x8]
100037bb0:	a8 83 19 f8	stur	x8, [x29, #-0x68]
100037bb4:	9f 00 00 39	strb	wzr, [x4]
100037bb8:	e0 03 02 aa	mov	x0, x2
100037bbc:	b1 a2 02 94	bl	0x1000e0680 ; SELECTOR accessoryID
100037bc0:	d8 b9 02 94	bl	0x1000e6320 ; SELECTOR serialNumber
100037bc4:	60 0a 00 b4	cbz	x0, 0x100037d10
100037bc8:	f5 0f 00 b9	str	w21, [sp, #0xc]
100037bcc:	f6 83 02 91	add	x22, sp, #0xa0
100037bd0:	e0 03 14 aa	mov	x0, x20
100037bd4:	e2 03 13 aa	mov	x2, x19
100037bd8:	32 a2 02 94	bl	0x1000e04a0 ; SELECTOR _mergePartnerAccessoriesInAssetSettings:
100037bdc:	e0 03 13 aa	mov	x0, x19
100037be0:	a8 a2 02 94	bl	0x1000e0680 ; SELECTOR accessoryID
100037be4:	cf b9 02 94	bl	0x1000e6320 ; SELECTOR serialNumber
100037be8:	de 3d ff 97	bl	0x100007360
100037bec:	68 09 00 d0	adrp	x8, 302 ; 0x100165000
100037bf0:	00 e1 0f 91	add	x0, x8, #0x3f8
100037bf4:	23 be 02 94	bl	0x1000e7480 ; SELECTOR sharedDatabase
100037bf8:	f7 03 00 aa	mov	x23, x0
100037bfc:	71 a2 02 94	bl	0x1000e05c0 ; SELECTOR accessoriesDictionary
100037c00:	f5 03 14 aa	mov	x21, x20
100037c04:	f4 03 00 aa	mov	x20, x0
100037c08:	e0 03 13 aa	mov	x0, x19
100037c0c:	9d a2 02 94	bl	0x1000e0680 ; SELECTOR accessoryID
100037c10:	c4 b9 02 94	bl	0x1000e6320 ; SELECTOR serialNumber
100037c14:	e2 03 00 aa	mov	x2, x0
100037c18:	e0 03 14 aa	mov	x0, x20
100037c1c:	49 b4 02 94	bl	0x1000e4d40 ; SELECTOR objectForKey:
100037c20:	f9 03 00 aa	mov	x25, x0
100037c24:	f8 cf 01 a9	stp	x24, x19, [sp, #0x18]
100037c28:	f5 0b 00 f9	str	x21, [sp, #0x10]
100037c2c:	a0 08 00 b4	cbz	x0, 0x100037d40
```

## daemon 0x100037f8c–0x100038018

```text
100037f8c:	e0 13 40 f9	ldr	x0, [sp, #0x20]
100037f90:	bc a1 02 94	bl	0x1000e0680 ; SELECTOR accessoryID
100037f94:	a0 3a ff 97	bl	0x100006a14
100037f98:	20 03 00 34	cbz	w0, 0x100037ffc
100037f9c:	e8 0b 40 f9	ldr	x8, [sp, #0x10]
100037fa0:	14 c9 7b f8	ldr	x20, [x8, w27, sxtw]
100037fa4:	e0 03 14 aa	mov	x0, x20
100037fa8:	01 00 80 52	mov	w1, #0x0
100037fac:	50 9f 02 94	bl	0x1000dfcec ; symbol stub for: _os_log_type_enabled
100037fb0:	00 02 00 34	cbz	w0, 0x100037ff0
100037fb4:	e0 13 40 f9	ldr	x0, [sp, #0x20]
100037fb8:	9a ad 02 94	bl	0x1000e3620 ; SELECTOR identifier
100037fbc:	a8 05 00 b0	adrp	x8, 181 ; 0x1000ec000
100037fc0:	00 65 43 fd	ldr	d0, [x8, #0x6c8]
100037fc4:	e0 a3 00 bd	str	s0, [sp, #0xa0]
100037fc8:	e0 43 0a f8	stur	x0, [sp, #0xa4]
100037fcc:	40 fe ff b0	adrp	x0, -55 ; 0x100000000
100037fd0:	00 00 00 91	add	x0, x0, #0x0
100037fd4:	e3 07 00 b0	adrp	x3, 253 ; 0x100134000
100037fd8:	63 48 33 91	add	x3, x3, #0xcd2 ; literal pool for: "Entry found in AUDeveloperSettingsDatabase Accessory:%@ with OTA Update disabled, not attempting update"
100037fdc:	e4 83 02 91	add	x4, sp, #0xa0
100037fe0:	e1 03 14 aa	mov	x1, x20
100037fe4:	02 00 80 52	mov	w2, #0x0
100037fe8:	85 01 80 52	mov	w5, #0xc
100037fec:	14 9d 02 94	bl	0x1000df43c ; symbol stub for: __os_log_impl
100037ff0:	28 00 80 52	mov	w8, #0x1
100037ff4:	e9 0f 40 f9	ldr	x9, [sp, #0x18]
100037ff8:	28 01 00 39	strb	w8, [x9]
100037ffc:	28 08 00 d0	adrp	x8, 262 ; 0x10013d000
100038000:	08 01 27 91	add	x8, x8, #0x9c0
100038004:	02 01 40 f9	ldr	x2, [x8]
100038008:	e0 03 19 aa	mov	x0, x25
10003800c:	55 b3 02 94	bl	0x1000e4d60 ; SELECTOR objectForKeyedSubscript:
100038010:	f4 03 00 aa	mov	x20, x0
100038014:	f3 0f 40 f9	ldr	x19, [sp, #0x18]
100038018:	a0 01 00 b4	cbz	x0, 0x10003804c
```

## daemon 0x100038d14–0x100038d74

```text
100038d14:	e0 03 13 aa	mov	x0, x19
100038d18:	22 a0 02 94	bl	0x1000e0da0 ; SELECTOR assetID
100038d1c:	a9 b3 02 94	bl	0x1000e5bc0 ; SELECTOR remoteURL
100038d20:	a0 02 00 b5	cbnz	x0, 0x100038d74
100038d24:	e0 03 16 aa	mov	x0, x22
100038d28:	b6 bb 02 94	bl	0x1000e7c00 ; SELECTOR supportsInternalSettings
100038d2c:	40 02 00 34	cbz	w0, 0x100038d74
100038d30:	e4 7f 00 91	add	x4, sp, #0x1f
100038d34:	e0 03 14 aa	mov	x0, x20
100038d38:	e2 03 13 aa	mov	x2, x19
100038d3c:	23 00 80 52	mov	w3, #0x1
100038d40:	88 bc 02 94	bl	0x1000e7f60 ; SELECTOR updateAssetSettingsForAccessory:checkForUpdate:automaticUpdatesDisabled:
100038d44:	e8 7f 40 39	ldrb	w8, [sp, #0x1f]
100038d48:	80 00 00 36	tbz	w0, #0x0, 0x100038d58
100038d4c:	88 00 00 37	tbnz	w8, #0x0, 0x100038d5c
100038d50:	00 00 80 52	mov	w0, #0x0
100038d54:	3a 00 00 14	b	0x100038e3c
100038d58:	e8 00 00 36	tbz	w8, #0x0, 0x100038d74
100038d5c:	e0 03 14 aa	mov	x0, x20
100038d60:	c2 00 80 52	mov	w2, #0x6
100038d64:	e3 03 13 aa	mov	x3, x19
100038d68:	04 00 80 d2	mov	x4, #0x0
100038d6c:	6d af 02 94	bl	0x1000e4b20 ; SELECTOR notifyFirmwareUpdateAvailabilityStatus:accessory:downstreamAppleModelNumber:
100038d70:	32 00 00 14	b	0x100038e38
100038d74:	e0 03 13 aa	mov	x0, x19
```

## usbpd 0x10000c26c–0x10000c2bc

```text
10000c26c:	7f 23 03 d5	pacibsp
10000c270:	f4 4f be a9	stp	x20, x19, [sp, #-0x20]!
10000c274:	fd 7b 01 a9	stp	x29, x30, [sp, #0x10]
10000c278:	fd 43 00 91	add	x29, sp, #0x10
10000c27c:	f3 03 00 aa	mov	x19, x0
10000c280:	08 10 40 f9	ldr	x8, [x0, #0x20]
10000c284:	14 1d 40 f9	ldr	x20, [x8, #0x38]
10000c288:	e0 03 14 aa	mov	x0, x20
10000c28c:	41 00 80 52	mov	w1, #0x2
10000c290:	aa ad 01 94	bl	0x100077938 ; symbol stub for: _os_log_type_enabled
10000c294:	60 01 00 35	cbnz	w0, 0x10000c2c0
10000c298:	60 16 40 f9	ldr	x0, [x19, #0x28]
10000c29c:	61 b0 01 94	bl	0x100078420 ; SELECTOR copy
10000c2a0:	69 12 40 f9	ldr	x9, [x19, #0x20]
10000c2a4:	28 29 40 f9	ldr	x8, [x9, #0x50]
10000c2a8:	20 29 00 f9	str	x0, [x9, #0x50]
10000c2ac:	e0 03 08 aa	mov	x0, x8
10000c2b0:	7e ad 01 94	bl	0x1000778a8 ; symbol stub for: _objc_release
10000c2b4:	fd 7b 41 a9	ldp	x29, x30, [sp, #0x10]
10000c2b8:	f4 4f c2 a8	ldp	x20, x19, [sp], #0x20
10000c2bc:	ff 0f 5f d6	retab
```

## usbpd 0x1000061c0–0x1000062e0

```text
1000061c0:	95 2a 40 f9	ldr	x21, [x20, #0x50]
1000061c4:	e0 03 13 aa	mov	x0, x19
1000061c8:	86 ca 01 94	bl	0x100078be0 ; SELECTOR identifier
1000061cc:	fd 03 1d aa	mov	x29, x29
1000061d0:	c6 c5 01 94	bl	0x1000778e8 ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000061d4:	f6 03 00 aa	mov	x22, x0
1000061d8:	e0 03 15 aa	mov	x0, x21
1000061dc:	e2 03 16 aa	mov	x2, x22
1000061e0:	e8 cc 01 94	bl	0x100079580 ; SELECTOR objectForKeyedSubscript:
1000061e4:	fd 03 1d aa	mov	x29, x29
1000061e8:	c0 c5 01 94	bl	0x1000778e8 ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000061ec:	f7 03 00 aa	mov	x23, x0
1000061f0:	f4 c7 01 94	bl	0x1000781c0 ; SELECTOR boolValue
1000061f4:	f5 03 00 aa	mov	x21, x0
1000061f8:	e0 03 17 aa	mov	x0, x23
1000061fc:	ab c5 01 94	bl	0x1000778a8 ; symbol stub for: _objc_release
100006200:	e0 03 16 aa	mov	x0, x22
100006204:	a9 c5 01 94	bl	0x1000778a8 ; symbol stub for: _objc_release
100006208:	96 1e 40 f9	ldr	x22, [x20, #0x38]
10000620c:	e0 03 16 aa	mov	x0, x22
100006210:	21 00 80 52	mov	w1, #0x1
100006214:	c9 c5 01 94	bl	0x100077938 ; symbol stub for: _os_log_type_enabled
100006218:	00 05 00 34	cbz	w0, 0x1000062b8
10000621c:	e0 03 16 aa	mov	x0, x22
100006220:	a6 c5 01 94	bl	0x1000778b8 ; symbol stub for: _objc_retain
100006224:	f6 03 00 aa	mov	x22, x0
100006228:	e0 03 13 aa	mov	x0, x19
10000622c:	6d ca 01 94	bl	0x100078be0 ; SELECTOR identifier
100006230:	fd 03 1d aa	mov	x29, x29
100006234:	ad c5 01 94	bl	0x1000778e8 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006238:	f7 03 00 aa	mov	x23, x0
10000623c:	88 07 00 90	adrp	x8, 240 ; 0x1000f6000
100006240:	08 29 1c 91	add	x8, x8, #0x70a ; literal pool for: "NO"
100006244:	a9 03 00 d0	adrp	x9, 118 ; 0x10007c000
100006248:	20 c9 45 fd	ldr	d0, [x9, #0xb90]
10000624c:	89 07 00 90	adrp	x9, 240 ; 0x1000f6000
100006250:	29 8d 1b 91	add	x9, x9, #0x6e3 ; literal pool for: "-[UARPUSBPDUpdater qAddAccessory:]"
100006254:	69 43 00 f8	stur	x9, [x27, #0x4]
100006258:	89 07 00 90	adrp	x9, 240 ; 0x1000f6000
10000625c:	29 19 1c 91	add	x9, x9, #0x706 ; literal pool for: "YES"
100006260:	a0 03 17 bc	stur	s0, [x29, #-0x90]
100006264:	bf 02 00 71	cmp	w21, #0x0
100006268:	28 11 88 9a	csel	x8, x9, x8, ne
10000626c:	09 08 81 52	mov	w9, #0x840
100006270:	a9 c3 17 78	sturh	w9, [x29, #-0x84]
100006274:	60 e3 00 f8	stur	x0, [x27, #0xe]
100006278:	09 04 81 52	mov	w9, #0x820
10000627c:	a9 63 18 78	sturh	w9, [x29, #-0x7a]
100006280:	a8 83 18 f8	stur	x8, [x29, #-0x78]
100006284:	c0 ff ff d0	adrp	x0, -6 ; 0x100000000
100006288:	00 00 00 91	add	x0, x0, #0x0
10000628c:	63 07 00 d0	adrp	x3, 238 ; 0x1000f4000
100006290:	63 cc 0c 91	add	x3, x3, #0x333 ; literal pool for: "%s: Disabled state for %@ is %s"
100006294:	a4 43 02 d1	sub	x4, x29, #0x90
100006298:	e1 03 16 aa	mov	x1, x22
10000629c:	22 00 80 52	mov	w2, #0x1
1000062a0:	05 04 80 52	mov	w5, #0x20
1000062a4:	ad c4 01 94	bl	0x100077558 ; symbol stub for: __os_log_impl
1000062a8:	e0 03 17 aa	mov	x0, x23
1000062ac:	7f c5 01 94	bl	0x1000778a8 ; symbol stub for: _objc_release
1000062b0:	e0 03 16 aa	mov	x0, x22
1000062b4:	7d c5 01 94	bl	0x1000778a8 ; symbol stub for: _objc_release
1000062b8:	55 01 00 34	cbz	w21, 0x1000062e0
1000062bc:	94 1e 40 f9	ldr	x20, [x20, #0x38]
1000062c0:	e0 03 14 aa	mov	x0, x20
1000062c4:	01 02 80 52	mov	w1, #0x10
1000062c8:	9c c5 01 94	bl	0x100077938 ; symbol stub for: _os_log_type_enabled
1000062cc:	e0 18 00 34	cbz	w0, 0x1000065e8
1000062d0:	e0 03 13 aa	mov	x0, x19
1000062d4:	e1 03 14 aa	mov	x1, x20
1000062d8:	6c a8 01 94	bl	0x100070488
1000062dc:	c3 00 00 14	b	0x1000065e8
1000062e0:	00 e4 00 6f	movi.2d	v0, #0000000000000000
```

## coreuarp 0x19f545680–0x19f5458d4

```text
0x19F545680   pacibsp                       
0x19F545684   sub      sp, sp, #0x130       
0x19F545688   stp      x28, x27, [sp, #0xe0] 
0x19F54568C   stp      x24, x23, [sp, #0xf0] 
0x19F545690   stp      x22, x21, [sp, #0x100] 
0x19F545694   stp      x20, x19, [sp, #0x110] 
0x19F545698   stp      x29, x30, [sp, #0x120] 
0x19F54569C   add      x29, sp, #0x120      
0x19F5456A0   adrp     x8, 288434           ; 0x1e5bf7000
0x19F5456A4   ldr      x8, [x8, #0xf70]     
0x19F5456A8   ldr      x8, [x8]             
0x19F5456AC   stur     x8, [x29, #-0x48]    
0x19F5456B0   adrp     x8, 292306           ; 0x1e6b17000
0x19F5456B4   ldr      x8, [x8, #0xb88]     
0x19F5456B8   stp      x0, x8, [sp, #0x48]  
0x19F5456BC   adrp     x8, 372097           ; 0x1fa2c6000
0x19F5456C0   add      x1, x8, #0xf8        
0x19F5456C4   add      x0, sp, #0x48        
0x19F5456C8   bl       _objc_msgSendSuper2  
0x19F5456CC   mov      x19, x0              
0x19F5456D0   cbz      x0, 0x19f545854      
0x19F5456D4   adrp     x22, 292301          ; 0x1e6b12000
0x19F5456D8   ldr      x0, [x22, #0x1f8]    ; _OBJC_CLASS_$_UARPSupportedAccessoryA2363@got
0x19F5456DC   bl       _objc_msgSend$appleModelNumber 
0x19F5456E0   mov      x29, x29             
0x19F5456E4   bl       _objc_retainAutoreleasedReturnValue 
0x19F5456E8   mov      x20, x0              
0x19F5456EC   mov      x0, x19              
0x19F5456F0   mov      x2, x20              
0x19F5456F4   bl       "_objc_msgSend$setAppleModelNumber:" 
0x19F5456F8   mov      x0, x20              
0x19F5456FC   bl       _objc_release        
0x19F545700   adrp     x2, 331641           ; 0x1f04be000
0x19F545704   add      x2, x2, #0xcf8       
0x19F545708   mov      x0, x19              
0x19F54570C   bl       "_objc_msgSend$setModelName:" 
0x19F545710   mov      x0, x19              
0x19F545714   mov      w2, #0x1             
0x19F545718   bl       "_objc_msgSend$setSupportsLogs:" 
0x19F54571C   mov      x0, x19              
0x19F545720   mov      w2, #0x1             
0x19F545724   bl       "_objc_msgSend$setSupportsAnalytics:" 
0x19F545728   movi.2d  v0, #0000000000000000 
0x19F54572C   stp      q0, q0, [sp, #0x20]  
0x19F545730   stp      q0, q0, [sp]         
0x19F545734   ldr      x0, [x22, #0x1f8]    
0x19F545738   bl       _objc_msgSend$alternativeAppleModelNumbers 
0x19F54573C   mov      x29, x29             
0x19F545740   bl       _objc_retainAutoreleasedReturnValue 
0x19F545744   mov      x20, x0              
0x19F545748   mov      x2, sp               
0x19F54574C   add      x3, sp, #0x58        
0x19F545750   mov      w4, #0x10            
0x19F545754   bl       "_objc_msgSend$countByEnumeratingWithState:objects:count:" 
0x19F545758   cbz      x0, 0x19f5457bc      
0x19F54575C   mov      x21, x0              
0x19F545760   ldr      x8, [sp, #0x10]      
0x19F545764   ldr      x23, [x8]            
0x19F545768   mov      x24, #0x0            
0x19F54576C   ldr      x8, [sp, #0x10]      
0x19F545770   ldr      x8, [x8]             
0x19F545774   cmp      x8, x23              
0x19F545778   b.eq     0x19f545784          
0x19F54577C   mov      x0, x20              
0x19F545780   bl       _objc_enumerationMutation 
0x19F545784   ldr      x8, [sp, #0x8]       
0x19F545788   ldr      x2, [x8, x24, lsl #3] 
0x19F54578C   mov      x0, x19              
0x19F545790   bl       "_objc_msgSend$addAlternativeAppleModelNumber:" 
0x19F545794   add      x24, x24, #0x1       
0x19F545798   cmp      x21, x24             
0x19F54579C   b.ne     0x19f54576c          
0x19F5457A0   mov      x2, sp               
0x19F5457A4   add      x3, sp, #0x58        
0x19F5457A8   mov      x0, x20              
0x19F5457AC   mov      w4, #0x10            
0x19F5457B0   bl       "_objc_msgSend$countByEnumeratingWithState:objects:count:" 
0x19F5457B4   mov      x21, x0              
0x19F5457B8   cbnz     x0, 0x19f545768      
0x19F5457BC   mov      x0, x20              
0x19F5457C0   bl       _objc_release        
0x19F5457C4   adrp     x8, 292301           ; 0x1e6b12000
0x19F5457C8   ldr      x0, [x8, #0x58]      ; _OBJC_CLASS_$_UARPAccessoryHardwareUSBPD@got
0x19F5457CC   bl       _objc_alloc          
0x19F5457D0   mov      x20, x0              
0x19F5457D4   adrp     x8, 292301           ; 0x1e6b12000
0x19F5457D8   ldr      x0, [x8, #0x450]     ; _OBJC_CLASS_$_UARPSupportedAccessoryUSBPD@got
0x19F5457DC   bl       _objc_msgSend$vendorID 
0x19F5457E0   mov      x21, x0              
0x19F5457E4   ldr      x0, [x22, #0x1f8]    
0x19F5457E8   bl       _objc_msgSend$productID 
0x19F5457EC   mov      x22, x0              
0x19F5457F0   adrp     x24, 292301          ; 0x1e6b12000
0x19F5457F4   ldr      x0, [x24, #0x460]    ; _OBJC_CLASS_$_UARPSupportedAccessoryUSBPDMagSafe@got
0x19F5457F8   bl       _objc_msgSend$deviceClass 
0x19F5457FC   mov      x23, x0              
0x19F545800   ldr      x0, [x24, #0x460]    
0x19F545804   bl       _objc_msgSend$locationType 
0x19F545808   mov      x24, x0              
0x19F54580C   mov      x0, x19              
0x19F545810   bl       _objc_msgSend$supportsAccMode7 
0x19F545814   mov      x6, x0               
0x19F545818   mov      x0, x20              
0x19F54581C   mov      x2, x21              
0x19F545820   mov      x3, x22              
0x19F545824   mov      x4, x23              
0x19F545828   mov      x5, x24              
0x19F54582C   bl       "_objc_msgSend$initWithVendorID:productID:usbpdClass:locationType:supportsAccMode7:" 
0x19F545830   adrp     x8, 306980           ; 0x1ea469000
0x19F545834   ldrsw    x20, [x8, #0x86c]    
0x19F545838   ldr      x8, [x19, x20]       
0x19F54583C   str      x0, [x19, x20]       
0x19F545840   mov      x0, x8               
0x19F545844   bl       _objc_release        
0x19F545848   ldr      x2, [x19, x20]       
0x19F54584C   mov      x0, x19              
0x19F545850   bl       "_objc_msgSend$setHardwareID:" 
0x19F545854   ldur     x8, [x29, #-0x48]    
0x19F545858   adrp     x9, 288434           ; 0x1e5bf7000
0x19F54585C   ldr      x9, [x9, #0xf70]     
0x19F545860   ldr      x9, [x9]             
0x19F545864   cmp      x9, x8               
0x19F545868   b.ne     0x19f54588c          
0x19F54586C   mov      x0, x19              
0x19F545870   ldp      x29, x30, [sp, #0x120] 
0x19F545874   ldp      x20, x19, [sp, #0x110] 
0x19F545878   ldp      x22, x21, [sp, #0x100] 
0x19F54587C   ldp      x24, x23, [sp, #0xf0] 
0x19F545880   ldp      x28, x27, [sp, #0xe0] 
0x19F545884   add      sp, sp, #0x130       
0x19F545888   retab                         
0x19F54588C   bl       ___stack_chk_fail    
0x19F545890   adrp     x0, 331641           ; 0x1f04be000
0x19F545894   add      x0, x0, #0xd38       
0x19F545898   ret                           
0x19F54589C   pacibsp                       
0x19F5458A0   sub      sp, sp, #0x20        
0x19F5458A4   stp      x29, x30, [sp, #0x10] 
0x19F5458A8   add      x29, sp, #0x10       
0x19F5458AC   adrp     x8, 288311           ; 0x1e5b7c000
0x19F5458B0   ldr      x0, [x8, #0x6e8]     
0x19F5458B4   str      xzr, [sp]            
0x19F5458B8   adrp     x2, 331641           ; 0x1f04be000
0x19F5458BC   add      x2, x2, #0xd18       
0x19F5458C0   bl       "_objc_msgSend$setWithObjects:" 
0x19F5458C4   ldp      x29, x30, [sp, #0x10] 
0x19F5458C8   add      sp, sp, #0x20        
0x19F5458CC   retab                         
0x19F5458D0   mov      w0, #0x7800          
0x19F5458D4   ret                           
```

## coreuarp 0x19f534f10–0x19f534f94

```text
0x19F534F10   pacibsp                       
0x19F534F14   sub      sp, sp, #0x30        
0x19F534F18   stp      x20, x19, [sp, #0x10] 
0x19F534F1C   stp      x29, x30, [sp, #0x20] 
0x19F534F20   add      x29, sp, #0x20       
0x19F534F24   adrp     x8, 292323           ; 0x1e6b17000
0x19F534F28   ldr      x8, [x8, #0xa80]     
0x19F534F2C   stp      x0, x8, [sp]         
0x19F534F30   adrp     x8, 372114           ; 0x1fa2c6000
0x19F534F34   add      x1, x8, #0xf8        
0x19F534F38   mov      x0, sp               
0x19F534F3C   bl       _objc_msgSendSuper2  
0x19F534F40   mov      x19, x0              
0x19F534F44   cbz      x0, 0x19f534f84      
0x19F534F48   adrp     x2, 331654           ; 0x1f04ba000
0x19F534F4C   add      x2, x2, #0x398       
0x19F534F50   mov      x0, x19              
0x19F534F54   bl       "_objc_msgSend$setVendorName:" 
0x19F534F58   adrp     x8, 292319           ; 0x1e6b13000
0x19F534F5C   add      x8, x8, #0x700       ; _kUARPStringUSBPDUpdaterName
0x19F534F60   ldr      x2, [x8]             
0x19F534F64   mov      x0, x19              
0x19F534F68   bl       "_objc_msgSend$setUpdaterName:" 
0x19F534F6C   mov      x0, x19              
0x19F534F70   mov      w2, #0x1             
0x19F534F74   bl       "_objc_msgSend$setSupportsInternalSettings:" 
0x19F534F78   mov      x0, x19              
0x19F534F7C   mov      w2, #0x1             
0x19F534F80   bl       "_objc_msgSend$setSupportsAccMode7:" 
0x19F534F84   mov      x0, x19              
0x19F534F88   ldp      x29, x30, [sp, #0x20] 
0x19F534F8C   ldp      x20, x19, [sp, #0x10] 
0x19F534F90   add      sp, sp, #0x30        
0x19F534F94   retab                         
```

## coreuarp 0x19f57ad74–0x19f57adb8

```text
0x19F57AD74   pacibsp                       
0x19F57AD78   sub      sp, sp, #0x20        
0x19F57AD7C   stp      x29, x30, [sp, #0x10] 
0x19F57AD80   add      x29, sp, #0x10       
0x19F57AD84   adrp     x8, 292253           ; 0x1e6b17000
0x19F57AD88   ldr      x8, [x8, #0xe70]     
0x19F57AD8C   stp      x0, x8, [sp]         
0x19F57AD90   adrp     x8, 372044           ; 0x1fa2c6000
0x19F57AD94   add      x1, x8, #0xf8        
0x19F57AD98   mov      x0, sp               
0x19F57AD9C   bl       _objc_msgSendSuper2  
0x19F57ADA0   ldp      x29, x30, [sp, #0x10] 
0x19F57ADA4   add      sp, sp, #0x20        
0x19F57ADA8   retab                         
0x19F57ADAC   mov      x0, #0x0             
0x19F57ADB0   ret                           
0x19F57ADB4   mov      w0, #0x1             
0x19F57ADB8   ret                           
```

## coreuarp 0x19f58ec2c–0x19f58ec58

```text
0x19F58EC2C   adrp     x8, 292229           ; 0x1e6b13000
0x19F58EC30   add      x8, x8, #0x5f8       ; _kUARPSupportedAccessoryKeySupportsDeveloperSettings
0x19F58EC34   ldr      x2, [x8]             
0x19F58EC38   mov      x0, x19              
0x19F58EC3C   bl       "_objc_msgSend$objectForKeyedSubscript:" 
0x19F58EC40   mov      x29, x29             
0x19F58EC44   bl       _objc_retainAutoreleasedReturnValue 
0x19F58EC48   mov      x22, x0              
0x19F58EC4C   bl       _objc_msgSend$boolValue 
0x19F58EC50   strb     w0, [x21, #0x63]     
0x19F58EC54   mov      x0, x22              
0x19F58EC58   bl       _objc_release        
```

## coreuarp 0x19f59230c–0x19f59231c

```text
0x19F59230C   ldrb     w8, [x0, #0x63]      
0x19F592310   and      w0, w8, #0x1         
0x19F592314   ret                           
0x19F592318   strb     w2, [x0, #0x63]      
0x19F59231C   ret                           
```

## 型号字符串交叉验证

CFString 内字符指针的共同 slide 为 `0x54d4000`，归一化后与原始 cstring 字节对应：

| CFString | 原字符指针 | 归一化 | 内容 |
|---|---|---|---|
| 0x1F04BED18 | 0x1A4A90596 | 0x19F5BC596 | A2363 |
| 0x1F04BED38 | 0x1A4A9059C | 0x19F5BC59C | A3285 |

```text
0x1F04BED18: E8 26 C9 F1 01 00 00 00 C8 07 00 00 00 00 00 00 
0x1F04BED28: 96 05 A9 A4 01 00 00 00 05 00 00 00 00 00 00 00 
0x1F04BED38: E8 26 C9 F1 01 00 00 00 C8 07 00 00 00 00 00 00 
0x1F04BED48: 9C 05 A9 A4 01 00 00 00 05 00 00 00 00 00 00 00 
0x19F5BC580: 00 4D 61 67 53 61 66 65 20 43 68 61 72 67 65 20 
0x19F5BC590: 43 61 62 6C 65 00 41 32 33 36 33 00 41 33 32 38 
0x19F5BC5A0: 35 00 63 6F 6D 2E 61 70 70 6C 65 2E 55 41 52 50 
```
