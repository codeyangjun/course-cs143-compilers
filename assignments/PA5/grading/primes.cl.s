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
	.word	3
_bool_tag:
	.word	4
_string_tag:
	.word	5
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
str_const15:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	5
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"continue"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"halt"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	" is prime.\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	5
	.word	10
	.word	String_dispTab
	.word	int_const12
	.ascii	"2 is trivially prime.\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	"./primes.cl"
	.byte	0	
	.align	2
	.word	-1
int_const12:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	22
	.word	-1
int_const11:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const10:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const9:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const8:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const7:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const6:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const5:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const3:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const2:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	500
	.word	-1
int_const1:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const0:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
bool_const0:
	.word	4
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	4
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
	.word	str_const9
	.word	str_const10
	.word	str_const14
	.word	str_const11
	.word	str_const12
	.word	str_const13
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Main_protObj
	.word	Main_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Main.main
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
	.word	2
	.word	8
	.word	Main_dispTab
	.word	int_const0
	.word	int_const0
	.word	int_const0
	.word	int_const0
	.word	0
	.word	-1
String_protObj:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.word	0
	.word	-1
Bool_protObj:
	.word	4
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	3
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
	la	$a0 int_const0
	sw	$a0 12($s0)
	la	$a0 int_const0
	sw	$a0 16($s0)
	la	$a0 int_const0
	sw	$a0 24($s0)
	move	$a0 $zero
	sw	$a0 28($s0)
	move	$a0 $s0
	jal	IO_init
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -4
	la	$a0 str_const1
	sw	$a0 4($sp)
	move	$a0 $s0
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label0:
	move	$a0 $s0
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	addiu	$sp $sp 8
	la	$a0 int_const1
	sw	$a0 12($s0)
	lw	$a0 12($s0)
	sw	$a0 16($s0)
	la	$a0 int_const2
	sw	$a0 24($s0)
label1:
	la	$a0 bool_const1
	lw	$a0 12($a0)
	beqz	$a0 label2
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 16($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const3
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
	sw	$a0 16($s0)
	addiu	$sp $sp 4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	lw	$s0 4($sp)
	sw	$a0 20($s0)
	addiu	$sp $sp 4
label3:
	lw	$a0 16($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$a0 4($sp)
	lw	$a0 12($a0)
	blt	$a0 $t1 label8
	la	$a0 bool_const0
	b	label9
label8:
	la	$a0 bool_const1
label9:
	addiu	$sp $sp 4
	lw	$a0 12($a0)
	bne	$a0 $zero label5
label6:
	lw	$a0 16($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 16($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
	lw	$t1 4($sp)
	addiu	$sp $sp 4
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label13
	la	$a1 bool_const0
	jal	equality_test
label13:
	lw	$a0 12($a0)
	bne	$a0 $zero label10
label11:
	la	$a0 bool_const1
	b	label12
label10:
	la	$a0 bool_const0
label12:
	b	label7
label5:
	la	$a0 bool_const0
label7:
	lw	$a0 12($a0)
	beqz	$a0 label4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const3
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
	sw	$a0 20($s0)
	addiu	$sp $sp 4
	b	label3
label4:
	move	$a0 $zero
	lw	$a0 16($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 8($sp)
	jal	Object.copy
	lw	$t1 12($a0)
	lw	$t2 4($sp)
	lw	$t2 12($t2)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 8
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$a0 4($sp)
	lw	$a0 12($a0)
	blt	$a0 $t1 label17
	la	$a0 bool_const0
	b	label18
label17:
	la	$a0 bool_const1
label18:
	addiu	$sp $sp 4
	lw	$a0 12($a0)
	bne	$a0 $zero label14
label15:
	la	$a0 int_const0
	b	label16
label14:
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 16($s0)
	lw	$s0 4($sp)
	sw	$a0 12($s0)
	addiu	$sp $sp 4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	sw	$a0 4($sp)
	move	$a0 $s0
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label19:
	move	$a0 $s0
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	addiu	$sp $sp 8
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -4
	la	$a0 str_const2
	sw	$a0 4($sp)
	move	$a0 $s0
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label20:
	move	$a0 $s0
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	addiu	$sp $sp 8
label16:
	lw	$a0 24($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 16($s0)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$a0 4($sp)
	lw	$a0 12($a0)
	ble	$a0 $t1 label24
	la	$a0 bool_const0
	b	label25
label24:
	la	$a0 bool_const1
label25:
	addiu	$sp $sp 4
	lw	$a0 12($a0)
	bne	$a0 $zero label21
label22:
	la	$a0 str_const4
	b	label23
label21:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	la	$a0 str_const3
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label26:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	addiu	$sp $sp 8
label23:
	b	label1
label2:
	move	$a0 $zero
	sw	$a0 28($s0)
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
	la	$a0 int_const0
	lw	$ra 4($sp)
	addiu	$sp $sp 4
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
