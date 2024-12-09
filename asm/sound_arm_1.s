	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	.GLOBAL sound_arm_1_start
sound_arm_1_start:

	ARM_FUNC_START arm_clear_audio_buffer
@ Zeros a 16-byte aligned buffer
@ params:
@	r0 = pointer to buffer 
@	r1 = length in number of 4-byte units
arm_clear_audio_buffer:
	add r1, r0, r1, lsl #2
	mov r2, #0
  1:
	str r2, [r0], #4
	str r2, [r0], #4
	str r2, [r0], #4
	str r2, [r0], #4
	cmp r0, r1
	bne 1b
	bx lr
ARM_FUNC_END arm_clear_audio_buffer

	ARM_FUNC_START arm_load_sound_16bit_to_8bit
@ Clamps stereo sound data from 16-bit PCM to 8-bit PCM)
@ params:
@	r0 = audio source (16-bit PCM with channels interleaved)
@	r1 = bufA, left channel audio (8-bit PCM)
@	r2 = bufB, right channel audio (8-bit PCM)
@	r3 = length
arm_load_sound_16bit_to_8bit:
	add r3, r0, r3, lsl #2
  1:
	@ read 16-bit value
	ldrsh	r12, [r0], #2
	@ clamp to 8-bit signed range -127,127
	cmp 	r12, #-127
	movle 	r12, #-127
	cmp 	r12, #127
	movge 	r12, #127
	@ store it into bufA
	strb 	r12, [r1], #1
	@ read 16-bit value
	ldrsh	r12, [r0], #2
	@ clamp to 8-bit signed range -127,127
	cmp 	r12, #-127
	movle 	r12, #-127
	cmp 	r12, #127
	movge 	r12, #127
	@ store it into bufB
	strb 	r12, [r2], #1
	cmp 	r0, r3
	blt 1b
	bx lr
ARM_FUNC_END arm_load_sound_16bit_to_8bit

	ARM_FUNC_START arm_update_sound_dma_transfer
arm_update_sound_dma_transfer:
	@ some kind of timer check?
	ldr r0, =gSoundWork
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	subs r1, r1, #1
	strb r1, [r0, #2]
	bxgt lr
	mov r2, #REG_BASE
	@ Stop DMA
	mov r3, #0
	str r3, [r2, #REG_OFFSET_DMA1CNT]
	str r3, [r2, #REG_OFFSET_DMA2CNT]
	ldrb r1, [r0, #7]
	strb r1, [r0, #6]
	mov r12, #0x240
	add r3, r0, #0x10
	mla r1, r12, r1, r3  @ ptr to sound buffers
	str r1, [r2, #REG_OFFSET_DMA1SAD]
	add r1, r1, #0x120
	str r1, [r2, #REG_OFFSET_DMA2SAD]
	@ Upper DMA Flags
	mov r1, #(DMA_ENABLE | DMA_INTR_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT) << 16
	orr r1, r1, #DMA_DEST_RELOAD << 16
	@ Transfer of 16 bytes at a time
	orr r1, r1, #16 / 4
	str r1, [r2, #REG_OFFSET_DMA1CNT]
	str r1, [r2, #REG_OFFSET_DMA2CNT]
	mov r3, #18
	strb r3, [r0, #2]
	ldrb r3, [r0, #1]
	orr r3, r3, #2
	strb r3, [r0, #1]
	bx lr
	.pool
ARM_FUNC_END arm_update_sound_dma_transfer
