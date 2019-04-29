    li  $v1, 0x01 # syscall
    beq $v0, $v1, syscall_ex
    nop
    li  $v1, 0x02 # break
    beq $v0, $v1, break_ex
    nop
    li  $v1, 0x03 # eret
    beq $v0, $v1, eret_ex
    nop
    li  $v1, 0x04 # overflow
    beq $v0, $v1, overflow_ex
    nop
    li  $v1, 0x05 # adel(load)
    beq $v0, $v1, adel_load_ex
    nop
    li  $v1, 0x06 # ades
    beq $v0, $v1, ades_ex
    nop
    li  $v1, 0x07 # adel(inst fetch)
    beq $v0, $v1, adel_if_ex
    nop
    li  $v1, 0x08 # reserved inst
    beq $v0, $v1, reserved_inst_ex
    nop
    li  $v1, 0x09 # delay slot
    beq $v0, $v1, delay_slot_ex
    nop
    b other_ex
    nop
syscall_ex:
    addu  $v0, $zero, $zero
    mfc0 $k0, $14#c0_epc
    la   $k1, 0x00000008#syscall_pc
    bne  $k0, $k1, other_ex
    nop
    mfc0 $k0, $13#c0_cause
    andi $k0, $k0, 0x7c # 6..2
    li   $k1, 0x20 # 010_00
    bne  $k0, $k1, other_ex
    nop
    mfc0 $k0, $12#c0_status
    andi $k0, $k0, 0x02
    li   $k1, 0x02
    bne  $k0, $k1, other_ex
    nop
    lui  $v0, 0x00ff
    b other_ex
    nop
break_ex:
    addu  $v0, $zero, $zero
    mfc0 $k0, $14#c0_epc
    la   $k1, 0x00000008#break_pc
    bne  $k0, $k1, other_ex
    nop
    mfc0 $k0, $13#c0_cause
    andi $k0, $k0, 0x7c # 6..2
    li   $k1, 0x24 # 010_0100
    bne  $k0, $k1, other_ex
    nop
    mfc0 $k0, $12#c0_status
    andi $k0, $k0, 0x02 # exl
    li   $k1, 0x02 # exl = 1
    bne  $k0, $k1, other_ex
    nop
    lui  $v0, 0xff00
    b other_ex
    nop
eret_ex:
    la  $k0, 0x00000020#eret_ret_pc
    mtc0 $k0, $14#c0_epc
    lui  $v0, 0x0f0f
    b other_ex
    nop
overflow_ex:
    addu $v0, $zero, $zero                                                  41c8
    mfc0 $k0, $13#c0_cause                                                  41cc
    andi $k0, $k0, 0x7c # 6..2 exc code                                     41d0
    li   $k1, 0x30 # 011_0000                                               41d4
    bne  $k0, $k1, other_ex                                                 41d8
    nop                                                                     41dc
    mfc0 $k0, $12#c0_status                                                 41e0
    andi $k0, $k0, 0x02 # exl                                               41e4
    li $k1, 0x02 # exl = 1                                                  41e8
    bne $k0, $k1, other_ex                                                  41ec
    nop                                                                     41f0
    lui $v0, 0x1234                                                         41f4
    b other_ex
    nop
adel_load_ex:
    addu $v0, $zero, $zero
    mfc0 $k0, $13#c0_cause
    andi $k0, $k0, 0x7c # 6..2 exc code
    li   $k1, 0x10 # 001_0000
    bne  $k0, $k1, other_ex
    nop
    mfc0 $k0, $12#c0_status
    andi $k0, $k0, 0x02 # exl
    li $k1, 0x02 # exl = 1
    bne $k0, $k1, other_ex
    nop
    lui $v0, 0x5678
    b other_ex
    nop
ades_ex:
    addu $v0, $zero, $zero 
    mfc0 $k0, $13#c0_cause
    andi $k0, $k0, 0x7c # 6..2 exc code
    li   $k1, 0x14 # 001_0100
    bne  $k0, $k1, other_ex
    nop
    mfc0 $k0, $12#c0_status
    andi $k0, $k0, 0x02 # exl
    li $k1, 0x02 # exl = 1
    bne $k0, $k1, other_ex
    nop
    lui $v0, 0x1111
    b other_ex
    nop
adel_if_ex:
    addu $v0, $zero, $zero 
    mtc0 $k1, $14#c0_epc
    mfc0 $k0, $13#c0_cause
    andi $k0, $k0, 0x7c # 6..2 exc code
    li   $k1, 0x10 # 001_0000
    bne  $k0, $k1, other_ex
    nop
    mfc0 $k0, $12#c0_status
    andi $k0, $k0, 0x02 # exl
    li $k1, 0x02 # exl = 1
    bne $k0, $k1, other_ex
    nop
    lui $v0, 0x2222
    b other_ex
    nop
reserved_inst_ex:
    addu $v0, $zero, $zero 
    mfc0 $k0, $13#c0_cause
    andi $k0, $k0, 0x7c # 6..2 exc code
    li   $k1, 0x28 # 010_1000
    bne  $k0, $k1, other_ex
    nop
    mfc0 $k0, $12#c0_status
    andi $k0, $k0, 0x02 # exl
    li $k1, 0x02 # exl = 1
    bne $k0, $k1, other_ex
    nop
    lui $v0, 0x3333
    b other_ex
    nop
delay_slot_ex:
    addu $v0, $zero, $zero
    mfc0 $k0, $13#c0_cause
    lui $k1, 0x8000
    and $k0, $k0, $k1
    bne $k0, $k1, other_ex
    nop
    lui $v0, 0x4444
other_ex:
    mfc0 $k0,$13#c0_cause
    mfc0 $v1,$14#c0_epc
    lui $k1,0x8000
    addiu $v1,$v1,0x4
    and $k0,$k0,$k1
    beq $k0,$zero, L1
    nop
    addiu $v1,$v1,0x4
L1:  
    mtc0  $v1,$14#c0_epc
    bne $v0, $zero, ex_ret
    nop
    lui $v0, 0xffff
ex_ret:
    eret
    nop
    nop
    nop
