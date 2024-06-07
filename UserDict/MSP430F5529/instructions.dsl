#NAME "MSP430F5529-instructions"
#INDEX_LANGUAGE "English"
#CONTENTS_LANGUAGE "English"


RETI
	Return From Interrupt
	The interrupt handling routine terminates with the instruction:
	RETI //return from an interrupt service routine
	The return from the interrupt takes five cycles to exec

EINT:
	enable interrupts instruction (EINT)

DINT:
	disable interrupts instruction (DINT)
