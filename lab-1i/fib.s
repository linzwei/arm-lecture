	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	  push {r3, lr}	@function prolog

	  mov r3, r0
	  mov r1, #0xFFFFFFFF
	  mov r2, #1
.Loop:
	  add r0, r1, r2
	  mov r1, r2
	  mov r2,r0

	  subs r3, r3, #1
	 
	  bge .Loop
	 
	  pop {r3, pc}

	.size fibonacci, .-fibonacci
	.end
