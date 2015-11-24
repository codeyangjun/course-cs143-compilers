# start of generated code
	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
_int_tag:
	.word	6
_bool_tag:
	.word	7
_string_tag:
	.word	8
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const16:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const2
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bazz"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Razz"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bar"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Foo"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	8
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	8
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	8
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	8
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	8
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"do nothing"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	8
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"./hairyscary.cl"
	.byte	0	
	.align	2
	.word	-1
int_const9:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	15
	.word	-1
int_const8:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const7:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const6:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const5:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const3:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const1:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const0:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
bool_const0:
	.word	7
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	7
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
	.word	str_const6
	.word	str_const7
	.word	str_const14
	.word	str_const11
	.word	str_const13
	.word	str_const12
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const15
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Bazz_protObj
	.word	Bazz_init
	.word	Foo_protObj
	.word	Foo_init
	.word	Razz_protObj
	.word	Razz_init
	.word	Bar_protObj
	.word	Bar_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	Main_protObj
	.word	Main_init
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
Bazz_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Bazz.doh
Razz_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
Bar_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
Foo_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
IO_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	-1
Main_protObj:
	.word	9
	.word	7
	.word	Main_dispTab
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
Bazz_protObj:
	.word	2
	.word	6
	.word	Bazz_dispTab
	.word	int_const2
	.word	0
	.word	0
	.word	-1
Razz_protObj:
	.word	4
	.word	10
	.word	Razz_dispTab
	.word	int_const2
	.word	0
	.word	0
	.word	0
	.word	int_const2
	.word	0
	.word	int_const2
	.word	-1
Bar_protObj:
	.word	5
	.word	12
	.word	Bar_dispTab
	.word	int_const2
	.word	0
	.word	0
	.word	0
	.word	int_const2
	.word	0
	.word	int_const2
	.word	int_const2
	.word	0
	.word	-1
Foo_protObj:
	.word	3
	.word	8
	.word	Foo_dispTab
	.word	int_const2
	.word	0
	.word	0
	.word	0
	.word	int_const2
	.word	-1
String_protObj:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const2
	.word	0
	.word	-1
Bool_protObj:
	.word	7
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
IO_protObj:
	.word	1
	.word	3
	.word	IO_dispTab
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
Main_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	move	$fp $sp
	move	$s0 $a0
	move	$a0 $zero
	sw	$a0 12($s0)
	move	$a0 $zero
	sw	$a0 16($s0)
	move	$a0 $zero
	sw	$a0 20($s0)
	move	$a0 $zero
	sw	$a0 24($s0)
	move	$a0 $s0
	jal	Object_init
	la	$a0 Bazz_protObj
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	jal	Bazz_init
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	sw	$a0 12($s0)
	la	$a0 Foo_protObj
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	jal	Foo_init
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	sw	$a0 16($s0)
	la	$a0 Razz_protObj
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	jal	Razz_init
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	sw	$a0 20($s0)
	la	$a0 Bar_protObj
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	jal	Bar_init
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	sw	$a0 24($s0)
	move	$a0 $s0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Main.main:
	move	$fp $sp
	move	$s0 $a0
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const1
	lw	$ra 4($sp)
	addiu	$sp $sp 4
	lw	$s0 4($sp)
	lw	$fp 8($sp)
	jr	$ra	
Bazz_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	move	$fp $sp
	move	$s0 $a0
	la	$a0 int_const2
	sw	$a0 12($s0)
	move	$a0 $zero
	sw	$a0 16($s0)
	move	$a0 $zero
	sw	$a0 20($s0)
	move	$a0 $s0
	jal	IO_init
	la	$a0 int_const1
	sw	$a0 12($s0)
	addiu	$sp $sp -4
	move	$a0 $s0
	sw	$a0 0($fp)
	beqz	$a0 label2
	li	$t5 -1
	la	$t6 label0
label4:
	lw	$t1 0($a0)
	li	$t2 2
	beq	$t1 $t2 label5
	blt	$t1 2 label6
	bgt	$t1 5 label6
	bgt	$t5 2 label6
	li	$t5 2
	la	$t6 label5
	b	label6
label5:
	la	$a0 Foo_protObj
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	jal	Foo_init
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	b	label3
label6:
	lw	$t1 0($a0)
	li	$t2 4
	beq	$t1 $t2 label7
	blt	$t1 4 label8
	bgt	$t1 5 label8
	bgt	$t5 4 label8
	li	$t5 4
	la	$t6 label7
	b	label8
label7:
	la	$a0 Bar_protObj
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	jal	Bar_init
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	b	label3
label8:
	lw	$t1 0($a0)
	li	$t2 3
	beq	$t1 $t2 label9
	blt	$t1 3 label10
	bgt	$t1 5 label10
	bgt	$t5 3 label10
	li	$t5 3
	la	$t6 label9
	b	label10
label9:
	la	$a0 Razz_protObj
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	jal	Razz_init
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	b	label3
label10:
	lw	$t1 0($a0)
	li	$t2 5
	beq	$t1 $t2 label11
	blt	$t1 5 label1
	bgt	$t1 5 label1
	bgt	$t5 5 label1
	li	$t5 5
	b	label11
label11:
	lw	$a0 0($fp)
	b	label3
label1:
	jalr		$t6
label2:
	la	$a0 str_const0
	li	$t1 1
	jal	_case_abort2
label0:
	move	$a0 $s0
	jal	_case_abort
label3:
	addiu	$sp $sp 4
	sw	$a0 16($s0)
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$a0 $s0
	bne	$a0 $zero label12
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label12:
	move	$a0 $s0
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
	addiu	$sp $sp 8
	sw	$a0 20($s0)
	move	$a0 $s0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Bazz.printh:
	move	$fp $sp
	move	$s0 $a0
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	sw	$a0 4($sp)
	move	$a0 $s0
	bne	$a0 $zero label13
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label13:
	move	$a0 $s0
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	addiu	$sp $sp 8
	la	$a0 int_const2
	lw	$ra 4($sp)
	addiu	$sp $sp 4
	lw	$s0 4($sp)
	lw	$fp 8($sp)
	jr	$ra	
Bazz.doh:
	move	$fp $sp
	move	$s0 $a0
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	sw	$a0 0($fp)
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	lw	$s0 4($sp)
	sw	$a0 12($s0)
	addiu	$sp $sp 4
	lw	$a0 0($fp)
	lw	$ra 4($sp)
	addiu	$sp $sp 8
	lw	$s0 4($sp)
	lw	$fp 8($sp)
	jr	$ra	
Razz_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	move	$fp $sp
	move	$s0 $a0
	la	$a0 int_const2
	sw	$a0 12($s0)
	move	$a0 $zero
	sw	$a0 16($s0)
	move	$a0 $zero
	sw	$a0 20($s0)
	move	$a0 $zero
	sw	$a0 24($s0)
	la	$a0 int_const2
	sw	$a0 28($s0)
	move	$a0 $zero
	sw	$a0 32($s0)
	la	$a0 int_const2
	sw	$a0 36($s0)
	move	$a0 $s0
	jal	Foo_init
	addiu	$sp $sp -4
	move	$a0 $s0
	sw	$a0 0($fp)
	beqz	$a0 label16
	li	$t5 -1
	la	$t6 label14
label18:
	lw	$t1 0($a0)
	li	$t2 4
	beq	$t1 $t2 label19
	blt	$t1 4 label20
	bgt	$t1 5 label20
	bgt	$t5 4 label20
	li	$t5 4
	la	$t6 label19
	b	label20
label19:
	la	$a0 Bar_protObj
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	jal	Bar_init
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	b	label17
label20:
	lw	$t1 0($a0)
	li	$t2 5
	beq	$t1 $t2 label21
	blt	$t1 5 label15
	bgt	$t1 5 label15
	bgt	$t5 5 label15
	li	$t5 5
	b	label21
label21:
	lw	$a0 0($fp)
	b	label17
label15:
	jalr		$t6
label16:
	la	$a0 str_const0
	li	$t1 1
	jal	_case_abort2
label14:
	move	$a0 $s0
	jal	_case_abort
label17:
	addiu	$sp $sp 4
	sw	$a0 32($s0)
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	lw	$a0 24($s0)
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label22:
	la	$t1 Bazz_dispTab
	lw	$t1 32($t1)
	jalr		$t1
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	lw	$a0 16($s0)
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label23:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	lw	$a0 32($s0)
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label24:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$a0 $s0
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label25:
	move	$a0 $s0
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$a0 $s0
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label26:
	move	$a0 $s0
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	sw	$a0 36($s0)
	move	$a0 $s0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Bar_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	move	$fp $sp
	move	$s0 $a0
	la	$a0 int_const2
	sw	$a0 12($s0)
	move	$a0 $zero
	sw	$a0 16($s0)
	move	$a0 $zero
	sw	$a0 20($s0)
	move	$a0 $zero
	sw	$a0 24($s0)
	la	$a0 int_const2
	sw	$a0 28($s0)
	move	$a0 $zero
	sw	$a0 32($s0)
	la	$a0 int_const2
	sw	$a0 36($s0)
	la	$a0 int_const2
	sw	$a0 40($s0)
	move	$a0 $zero
	sw	$a0 44($s0)
	move	$a0 $s0
	jal	Razz_init
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$a0 $s0
	bne	$a0 $zero label27
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label27:
	move	$a0 $s0
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	addiu	$sp $sp 8
	sw	$a0 40($s0)
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$a0 $s0
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label28:
	move	$a0 $s0
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
	addiu	$sp $sp 8
	sw	$a0 44($s0)
	move	$a0 $s0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Foo_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	move	$fp $sp
	move	$s0 $a0
	la	$a0 int_const2
	sw	$a0 12($s0)
	move	$a0 $zero
	sw	$a0 16($s0)
	move	$a0 $zero
	sw	$a0 20($s0)
	move	$a0 $zero
	sw	$a0 24($s0)
	la	$a0 int_const2
	sw	$a0 28($s0)
	move	$a0 $s0
	jal	Bazz_init
	addiu	$sp $sp -4
	move	$a0 $s0
	sw	$a0 0($fp)
	beqz	$a0 label31
	li	$t5 -1
	la	$t6 label29
label33:
	lw	$t1 0($a0)
	li	$t2 4
	beq	$t1 $t2 label34
	blt	$t1 4 label35
	bgt	$t1 5 label35
	bgt	$t5 4 label35
	li	$t5 4
	la	$t6 label34
	b	label35
label34:
	la	$a0 Bar_protObj
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	jal	Bar_init
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	b	label32
label35:
	lw	$t1 0($a0)
	li	$t2 3
	beq	$t1 $t2 label36
	blt	$t1 3 label37
	bgt	$t1 5 label37
	bgt	$t5 3 label37
	li	$t5 3
	la	$t6 label36
	b	label37
label36:
	la	$a0 Razz_protObj
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	jal	Razz_init
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	b	label32
label37:
	lw	$t1 0($a0)
	li	$t2 5
	beq	$t1 $t2 label38
	blt	$t1 5 label30
	bgt	$t1 5 label30
	bgt	$t5 5 label30
	li	$t5 5
	b	label38
label38:
	lw	$a0 0($fp)
	b	label32
label30:
	jalr		$t6
label31:
	la	$a0 str_const0
	li	$t1 1
	jal	_case_abort2
label29:
	move	$a0 $s0
	jal	_case_abort
label32:
	addiu	$sp $sp 4
	sw	$a0 24($s0)
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	lw	$a0 24($s0)
	bne	$a0 $zero label39
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label39:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	lw	$a0 16($s0)
	bne	$a0 $zero label40
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label40:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$a0 $s0
	bne	$a0 $zero label41
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label41:
	move	$a0 $s0
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$a0 $s0
	bne	$a0 $zero label42
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label42:
	move	$a0 $s0
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	sw	$a0 28($s0)
	move	$a0 $s0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Foo.doh:
	move	$fp $sp
	move	$s0 $a0
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	sw	$a0 0($fp)
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	lw	$s0 4($sp)
	sw	$a0 12($s0)
	addiu	$sp $sp 4
	lw	$a0 0($fp)
	lw	$ra 4($sp)
	addiu	$sp $sp 8
	lw	$s0 4($sp)
	lw	$fp 8($sp)
	jr	$ra	
String_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	move	$fp $sp
	move	$s0 $a0
	move	$a0 $s0
	jal	Object_init
	move	$a0 $s0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Bool_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	move	$fp $sp
	move	$s0 $a0
	move	$a0 $s0
	jal	Object_init
	move	$a0 $s0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Int_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	move	$fp $sp
	move	$s0 $a0
	move	$a0 $s0
	jal	Object_init
	move	$a0 $s0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
IO_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	move	$fp $sp
	move	$s0 $a0
	move	$a0 $s0
	jal	Object_init
	move	$a0 $s0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Object_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	move	$fp $sp
	move	$s0 $a0
	move	$a0 $s0
	move	$a0 $s0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	

# end of generated code
