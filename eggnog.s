    .global	main
main:
    // pre-increment the stack point to create space for two 8-byte registers
    // link register (x30), and frame pointer (x29), and store them.
	stp	x29, x30, [sp, -16]!

    // Load the argument and perform the call. Like 'printf("...")' in C.
	ldr	x0, =message0
	bl	printf

    // initialize the return value in the return register
	mov	x0, 0

    // restore the registers and post-decrement 
    // the stack pointer for consistency
	ldp	x29, x30, [sp], 16


    // pre-increment the stack point to create space for two 8-byte registers
    // link register (x30), and frame pointer (x29), and store them.
	stp	x29, x30, [sp, -16]!

    // Load the argument and perform the call. Like 'printf("...")' in C.
	ldr	x0, =message1
	bl	printf

    // initialize the return value in the return register
	mov	x0, 0

    // restore the registers and post-decrement 
    // the stack pointer for consistency
	ldp	x29, x30, [sp], 16

    // pre-increment the stack point to create space for two 8-byte registers
    // link register (x30), and frame pointer (x29), and store them.
	stp	x29, x30, [sp, -16]!

    // Load the argument and perform the call. Like 'printf("...")' in C.
	ldr	x0, =message2
	bl	printf

    // initialize the return value in the return register
	mov	x0, 0

    // restore the registers and post-decrement 
    // the stack pointer for consistency
	ldp	x29, x30, [sp], 16
    // return from the call
	ret

message0:
	.asciz "Eggnog is quite rich!\n"

message1:
	.asciz "I know no drink that is so!\n"

message2:
	.asciz "That makes everyone glad!\n"
