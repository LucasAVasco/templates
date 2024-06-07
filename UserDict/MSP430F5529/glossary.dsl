#NAME "MSP430F5529-glossary"
#INDEX_LANGUAGE "English"
#CONTENTS_LANGUAGE "English"

ACLK
	Auxiliary Clock; see Section 5.1

ADC
	Analog-to-Digital Converter

BOR
	Brownout Reset; see Section 1.2

BSL
	Bootloader; see www.ti.com/msp430 for application reports

CPU
	Central Processing Unit; see Section 6.1

DAC
	Digital-to-Analog Converter

DCO
	Digitally Controlled Oscillator; see Section 5.2.6

dst
	Destination; see Section 6.5

FLL
	Frequency Locked Loop; see Section 5.2.7

GIE Modes
	General Interrupt Enable; see Section 1.3.3

INT(\(N/2\))
	Integer portion of N/2

I/O
	Input/Output; see Chapter 12

ISR
	Interrupt Service Routine

LSB
	Least Significant Bit

LSD
	Least Significant Digit

LPM
	Low-Power Mode; see Section 1.4; also named PM for Power Mode

MAB
	Memory Address Bus

MCLK
	Master Clock; see Section 5.1

MDB
	Memory Data Bus

MSB
	Most Significant Bit

MSD
	Most Significant Digit

NMI
	(Non)Maskable Interrupt; see Section 1.3.1; also split to UNMI and SNMI

PC
	Program Counter; see Section 6.3.1

PM
	Power Mode; see Section 1.4

POR
	Power-on Reset; see Section 1.2

PUC
	Power-up Clear; see Section 1.2

RAM
	Random Access Memory

SCG
	System Clock Generator; see Section 6.3.3

SFR
	Special Function Register; Section 1.14

SMCLK
	Sub-System Master Clock; see Section 5.1

SNMI
	System <<NMI>>; see Section 1.3.1

SP
	Stack Pointer; see Section 6.3.2

SR
	Status Register; see Section 6.3.3

src
	Source; see Section 6.5

TOS
	Top of stack; see Section 6.3.2

UNMI
	User <<NMI>>; see Section 1.3.1

WDT
	Watchdog Timer; see Chapter 16

z16
	16-bit address space

rw
	Read/write

r
	Read only

r0
	Read as 0

r1
	Read as 1

w
	Write only

w0
	Write as 0

w1
	Write as 1

\(w\)
	No register bit implemented; writing a 1 results in a pulse. The register bit is always read as 0.

h0
	Cleared by hardware

h1
	Set by hardware

-0,-1
	Condition after PUC

-\(0\),-\(1\)
	Condition after POR

-[0],-[1]
	Condition after BOR

-\{0\},-\{1\}
	Condition after Brownout
