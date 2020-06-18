	.text
	.file	"add.c"
	.section	.text.add,"",@
	.hidden	add                     # -- Begin function add
	.globl	add
	.type	add,@function
add:                                    # @add
	.functype	add (i32, i32) -> (i32)
	.local  	i32
# %bb.0:
	global.get	__stack_pointer
	i32.const	16
	i32.sub 
	local.tee	2
	local.get	0
	i32.store	12
	local.get	2
	local.get	1
	i32.store	8
	local.get	2
	i32.load	12
	local.get	2
	i32.load	12
	i32.mul 
	local.get	2
	i32.load	8
	i32.add 
                                        # fallthrough-return
	end_function
.Lfunc_end0:
	.size	add, .Lfunc_end0-add
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.globaltype	__stack_pointer, i32
	.section	.custom_section.producers,"",@
	.int8	1
	.int8	12
	.ascii	"processed-by"
	.int8	1
	.int8	5
	.ascii	"clang"
	.int8	15
	.ascii	"10.0.0-4ubuntu1"
	.section	.text.add,"",@
