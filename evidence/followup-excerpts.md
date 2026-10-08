# 补充静态摘录

仅系统代码；不包含用户日志。

## daemon 0x100006898–0x1000069b0

```text
100006898:	7f 23 03 d5	pacibsp
10000689c:	fa 67 bb a9	stp	x26, x25, [sp, #-0x50]!
1000068a0:	f8 5f 01 a9	stp	x24, x23, [sp, #0x10]
1000068a4:	f6 57 02 a9	stp	x22, x21, [sp, #0x20]
1000068a8:	f4 4f 03 a9	stp	x20, x19, [sp, #0x30]
1000068ac:	fd 7b 04 a9	stp	x29, x30, [sp, #0x40]
1000068b0:	fd 03 01 91	add	x29, sp, #0x40
1000068b4:	f6 03 03 aa	mov	x22, x3
1000068b8:	f5 03 02 aa	mov	x21, x2
1000068bc:	f4 03 01 aa	mov	x20, x1
1000068c0:	cf 64 03 94	bl	0x1000dfbfc ; symbol stub for: _objc_retain
1000068c4:	f3 03 00 aa	mov	x19, x0
1000068c8:	e0 03 14 aa	mov	x0, x20
1000068cc:	cc 64 03 94	bl	0x1000dfbfc ; symbol stub for: _objc_retain
1000068d0:	f4 03 00 aa	mov	x20, x0
1000068d4:	e0 03 15 aa	mov	x0, x21
1000068d8:	c9 64 03 94	bl	0x1000dfbfc ; symbol stub for: _objc_retain
1000068dc:	f5 03 00 aa	mov	x21, x0
1000068e0:	e0 03 16 aa	mov	x0, x22
1000068e4:	c6 64 03 94	bl	0x1000dfbfc ; symbol stub for: _objc_retain
1000068e8:	f6 03 00 aa	mov	x22, x0
1000068ec:	f3 02 00 b4	cbz	x19, 0x100006948
1000068f0:	e8 0a 00 f0	adrp	x8, 351 ; 0x100165000
1000068f4:	00 e1 0f 91	add	x0, x8, #0x3f8
1000068f8:	e2 82 03 94	bl	0x1000e7480 ; SELECTOR sharedDatabase
1000068fc:	fd 03 1d aa	mov	x29, x29
100006900:	cb 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006904:	f7 03 00 aa	mov	x23, x0
100006908:	2e 67 03 94	bl	0x1000e05c0 ; SELECTOR accessoriesDictionary
10000690c:	fd 03 1d aa	mov	x29, x29
100006910:	c7 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006914:	f8 03 00 aa	mov	x24, x0
100006918:	e2 03 13 aa	mov	x2, x19
10000691c:	09 79 03 94	bl	0x1000e4d40 ; SELECTOR objectForKey:
100006920:	fd 03 1d aa	mov	x29, x29
100006924:	c2 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006928:	f9 03 00 aa	mov	x25, x0
10000692c:	e0 03 18 aa	mov	x0, x24
100006930:	af 64 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
100006934:	e0 03 13 aa	mov	x0, x19
100006938:	d9 00 00 b4	cbz	x25, 0x100006950
10000693c:	b0 64 03 94	bl	0x1000dfbfc ; symbol stub for: _objc_retain
100006940:	f8 03 00 aa	mov	x24, x0
100006944:	1d 00 00 14	b	0x1000069b8
100006948:	18 00 80 d2	mov	x24, #0x0
10000694c:	1f 00 00 14	b	0x1000069c8
100006950:	e2 03 15 aa	mov	x2, x21
100006954:	e3 03 16 aa	mov	x3, x22
100006958:	e1 fe ff 97	bl	0x1000064dc
10000695c:	fd 03 1d aa	mov	x29, x29
100006960:	b3 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006964:	fa 03 00 aa	mov	x26, x0
100006968:	e0 03 17 aa	mov	x0, x23
10000696c:	15 67 03 94	bl	0x1000e05c0 ; SELECTOR accessoriesDictionary
100006970:	fd 03 1d aa	mov	x29, x29
100006974:	ae 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100006978:	f8 03 00 aa	mov	x24, x0
10000697c:	e2 03 1a aa	mov	x2, x26
100006980:	f0 78 03 94	bl	0x1000e4d40 ; SELECTOR objectForKey:
100006984:	fd 03 1d aa	mov	x29, x29
100006988:	a9 64 03 94	bl	0x1000dfc2c ; symbol stub for: _objc_retainAutoreleasedReturnValue
10000698c:	f9 03 00 aa	mov	x25, x0
100006990:	e0 03 18 aa	mov	x0, x24
100006994:	96 64 03 94	bl	0x1000dfbec ; symbol stub for: _objc_release
100006998:	b9 00 00 b4	cbz	x25, 0x1000069ac
10000699c:	e0 03 1a aa	mov	x0, x26
1000069a0:	97 64 03 94	bl	0x1000dfbfc ; symbol stub for: _objc_retain
1000069a4:	f8 03 00 aa	mov	x24, x0
1000069a8:	02 00 00 14	b	0x1000069b0
1000069ac:	18 00 80 d2	mov	x24, #0x0
1000069b0:	e0 03 1a aa	mov	x0, x26
```

## usbpd 0x100010280–0x1000102a8

```text
100010280:	e0 03 1c aa	mov	x0, x28
100010284:	57 a2 01 94	bl	0x100078be0 ; SELECTOR identifier
100010288:	fd 03 1d aa	mov	x29, x29
10001028c:	97 9d 01 94	bl	0x1000778e8 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100010290:	f9 03 00 aa	mov	x25, x0
100010294:	e0 03 18 aa	mov	x0, x24
100010298:	e2 03 19 aa	mov	x2, x25
10001029c:	a3 07 00 d0	adrp	x3, 246 ; 0x100106000
1000102a0:	63 00 09 91	add	x3, x3, #0x240 ; Objc cfstring ref: @"com.apple.iokit.matching"
1000102a4:	e4 03 1b aa	mov	x4, x27
1000102a8:	de a2 01 94	bl	0x100078e20 ; SELECTOR initWithIdentifier:xpcEventStream:matchingDictionary:
```

## usbpd 0x1000049f0–0x100004a5c

```text
1000049f0:	00 31 42 f9	ldr	x0, [x8, #0x460] ; literal pool symbol address: _OBJC_CLASS_$_UARPSupportedAccessory
1000049f4:	e2 03 1c aa	mov	x2, x28
1000049f8:	62 cf 01 94	bl	0x100078780 ; SELECTOR findByHardwareID:
1000049fc:	fd 03 1d aa	mov	x29, x29
100004a00:	ba cb 01 94	bl	0x1000778e8 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004a04:	fb 03 00 aa	mov	x27, x0
100004a08:	c0 09 00 b4	cbz	x0, 0x100004b40
100004a0c:	e0 03 19 aa	mov	x0, x25
100004a10:	5c d5 01 94	bl	0x100079f80 ; SELECTOR requiresAuthentication
100004a14:	80 00 00 34	cbz	w0, 0x100004a24
100004a18:	e0 03 19 aa	mov	x0, x25
100004a1c:	91 d1 01 94	bl	0x100079060 ; SELECTOR isAuthenticated
100004a20:	c0 0c 00 36	tbz	w0, #0x0, 0x100004bb8
100004a24:	48 08 00 90	adrp	x8, 264 ; 0x10010c000
100004a28:	00 61 2b 91	add	x0, x8, #0xad8
100004a2c:	5f cb 01 94	bl	0x1000777a8 ; symbol stub for: _objc_alloc
100004a30:	f7 03 00 aa	mov	x23, x0
100004a34:	e0 03 1b aa	mov	x0, x27
100004a38:	6a d0 01 94	bl	0x100078be0 ; SELECTOR identifier
100004a3c:	fd 03 1d aa	mov	x29, x29
100004a40:	aa cb 01 94	bl	0x1000778e8 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004a44:	f8 03 00 aa	mov	x24, x0
100004a48:	e0 03 17 aa	mov	x0, x23
100004a4c:	e2 03 1c aa	mov	x2, x28
100004a50:	e3 03 18 aa	mov	x3, x24
100004a54:	e4 03 19 aa	mov	x4, x25
100004a58:	e5 03 19 aa	mov	x5, x25
100004a5c:	d1 d0 01 94	bl	0x100078da0 ; SELECTOR initWithHardwareID:identifier:vuarpDelegate:hpmDelegate:
```

## usbpd 0x10000da34–0x10000da78

```text
10000da34:	7f 23 03 d5	pacibsp
10000da38:	ff 83 01 d1	sub	sp, sp, #0x60
10000da3c:	fa 67 01 a9	stp	x26, x25, [sp, #0x10]
10000da40:	f8 5f 02 a9	stp	x24, x23, [sp, #0x20]
10000da44:	f6 57 03 a9	stp	x22, x21, [sp, #0x30]
10000da48:	f4 4f 04 a9	stp	x20, x19, [sp, #0x40]
10000da4c:	fd 7b 05 a9	stp	x29, x30, [sp, #0x50]
10000da50:	fd 43 01 91	add	x29, sp, #0x50
10000da54:	f8 03 05 aa	mov	x24, x5
10000da58:	f9 03 04 aa	mov	x25, x4
10000da5c:	fa 03 03 aa	mov	x26, x3
10000da60:	f7 03 00 aa	mov	x23, x0
10000da64:	e0 03 02 aa	mov	x0, x2
10000da68:	94 a7 01 94	bl	0x1000778b8 ; symbol stub for: _objc_retain
10000da6c:	f3 03 00 aa	mov	x19, x0
10000da70:	e0 03 1a aa	mov	x0, x26
10000da74:	91 a7 01 94	bl	0x1000778b8 ; symbol stub for: _objc_retain
10000da78:	f4 03 00 aa	mov	x20, x0
```

## usbpd 0x10000daf4–0x10000dafc

```text
10000daf4:	e0 e2 00 91	add	x0, x23, #0x38
10000daf8:	e1 03 1a aa	mov	x1, x26
10000dafc:	83 a7 01 94	bl	0x100077908 ; symbol stub for: _objc_storeStrong
```

## usbpd 0x10000dbac–0x10000dbb0

```text
10000dbac:	00 1c 40 f9	ldr	x0, [x0, #0x38]
10000dbb0:	4a a7 01 14	b	0x1000778d8 ; symbol stub for: _objc_retainAutoreleaseReturnValue
```

## coreuarp 0x19f58ffb4–0x19f590028

```text
0x19F58FFB4   pacibsp                       
0x19F58FFB8   sub      sp, sp, #0x20        
0x19F58FFBC   stp      x29, x30, [sp, #0x10] 
0x19F58FFC0   add      x29, sp, #0x10       
0x19F58FFC4   ldr      x8, [x0, #0x78]      
0x19F58FFC8   cbz      x8, 0x19f58fff8      
0x19F58FFCC   ldr      x9, [x0, #0x80]      
0x19F58FFD0   cbz      x9, 0x19f58fff8      
0x19F58FFD4   adrp     x10, 288250          ; 0x1e5b89000
0x19F58FFD8   ldr      x0, [x10, #0xb50]    
0x19F58FFDC   stp      x8, x9, [sp]         
0x19F58FFE0   adrp     x2, 331562           ; 0x1f04b9000
0x19F58FFE4   add      x2, x2, #0xed8       
0x19F58FFE8   bl       "_objc_msgSend$stringWithFormat:" 
0x19F58FFEC   mov      x29, x29             
0x19F58FFF0   bl       _objc_retainAutoreleasedReturnValue 
0x19F58FFF4   b        0x19f590010          
0x19F58FFF8   ldr      x0, [x0, #0x70]      
0x19F58FFFC   cbz      x0, 0x19f590008      
0x19F590000   bl       _objc_retain         
0x19F590004   b        0x19f590010          
0x19F590008   adrp     x0, 331568           ; 0x1f04c0000
0x19F59000C   add      x0, x0, #0x938       
0x19F590010   ldp      x29, x30, [sp, #0x10] 
0x19F590014   add      sp, sp, #0x20        
0x19F590018   autibsp                       
0x19F59001C   eor      x16, x30, x30, lsl #1 
0x19F590020   tbz      x16, #0x3e, 0x19f590028 
0x19F590024   brk      #0xc471              
0x19F590028   b        _objc_autoreleaseReturnValue 
```

## coreuarp 0x19f5921e4–0x19f59221c

```text
0x19F5921E4   mov      w2, #0x70            
0x19F5921E8   mov      w3, #0x1             
0x19F5921EC   b        _objc_getProperty    
0x19F5921F0   mov      w3, #0x70            
0x19F5921F4   b        _objc_setProperty_atomic_copy 
0x19F5921F8   mov      w2, #0x78            
0x19F5921FC   mov      w3, #0x1             
0x19F592200   b        _objc_getProperty    
0x19F592204   mov      w3, #0x78            
0x19F592208   b        _objc_setProperty_atomic_copy 
0x19F59220C   mov      w2, #0x80            
0x19F592210   mov      w3, #0x1             
0x19F592214   b        _objc_getProperty    
0x19F592218   mov      w3, #0x80            
0x19F59221C   b        _objc_setProperty_atomic_copy 
```

## identifier 格式 CFString

```text
0x1F04B9ED8: E8 26 C9 F1 01 00 00 00 C8 07 00 00 00 00 00 00 
0x1F04B9EE8: 77 C1 A8 A4 01 00 00 00 04 00 00 00 00 00 00 00 
0x19F5B8170: 65 35 65 35 31 38 00 25 40 25 40 00 63 6F 6D 2E 
```
