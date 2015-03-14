	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	push {r3, r4, r5, lr}

	cmp r0, #1
	beq .L4	@if r0 == 1 goto L4
	blt .L3     @if r0 <= 0 goto L3

	mov r4, r0

	sub r0, r4, #2
	bl fibonacci

	mov r5, r0

	sub r0,  r4, #1
	bl fibonacci

	add r0, r5, r0

	pop {r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION
.L3:
	mov r0, #0			@ R0 = 0
	pop {r3, r4, r5, pc}		@ EPILOG

.L4:
	mov r0, #1			@ R0 = 1
	pop {r3, r4, r5, pc}		@ EPILOG

	.size fibonacci, .-fibonacci
	.end
