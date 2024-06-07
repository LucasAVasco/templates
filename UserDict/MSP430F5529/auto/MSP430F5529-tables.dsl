#NAME "MSP430F5529-tables"
#INDEX_LANGUAGE "English"
#CONTENTS_LANGUAGE "English"

UCSCTL5 {Register}
	Unified Clock System Control 5 Register
	Chapter: 5.4.6
	Table: Table 5-8. UCSCTL5 Register Description
	@ DIVPA
		Bit: 14-12
		Type: RW
		Reset: 0h
		Description: ACLK source divider available at external pin. Divides the frequency of ACLK and presents it to an external pin. 000b = fACLK/1 001b = fACLK/2 010b = fACLK/4 011b = fACLK/8 100b = fACLK/16 101b = fACLK/32 110b = Reserved for future use. Defaults to fACLK/32. 111b = Reserved for future use. Defaults to fACLK/32.
	Toplevel: <<UCSCTL5 {Register}>>
	@ DIVA
		Bit: 10-8
		Type: RW
		Reset: 0h
		Description: ACLK source divider. Divides the frequency of the ACLK clock source. 000b = fACLK/1 001b = fACLK/2 010b = fACLK/4 011b = fACLK/8 100b = fACLK/16 101b = fACLK/32 110b = Reserved for future use. Defaults to fACLK/32. 111b = Reserved for future use. Defaults to fACLK/32.
	Toplevel: <<UCSCTL5 {Register}>>
	@ DIVS
		Bit: 6-4
		Type: RW
		Reset: 0h
		Description: SMCLK source divider 000b = fSMCLK/1 001b = fSMCLK/2 010b = fSMCLK/4 011b = fSMCLK/8 100b = fSMCLK/16 101b = fSMCLK/32 110b = Reserved for future use. Defaults to fSMCLK/32. 111b = Reserved for future use. Defaults to fSMCLK/32.
	Toplevel: <<UCSCTL5 {Register}>>
	@ DIVM
		Bit: 2-0
		Type: RW
		Reset: 0h
		Description: MCLK source divider 000b = fMCLK/1 001b = fMCLK/2 010b = fMCLK/4 011b = fMCLK/8 100b = fMCLK/16 101b = fMCLK/32 110b = Reserved for future use. Defaults to fMCLK/32. 111b = Reserved for future use. Defaults to fMCLK/32.
	Toplevel: <<UCSCTL5 {Register}>>
	@

SYSBSLC {Register}
	Bootloader Configuration Register
	Chapter: 1.15.2
	Table: Table 1-18. SYSBSLC Register Description
	@ SYSBSLPE
		Bit: 15
		Type: RW
		Reset: 0h
		Description: BSL memory protection enable for the size covered in SYSBSLSIZE. By default, this bit is cleared by hardware with a BOR event (as indicated above), however the boot code that checks for an available BSL may set this bit by software to protect the BSL. Because devices normally come with a TI BSL preprogrammed and protected, the boot code sets this bit. 0b = Area not protected. Read, program, and erase of BSL memory is possible. 1b = Area protected
	Toplevel: <<SYSBSLC {Register}>>
	@ SYSBSLOFF
		Bit: 14
		Type: RW
		Reset: 0h
		Description: BSL memory disable for the size covered in SYSBSLSIZE 0b = BSL memory is addressed when this area is read. 1b = BSL memory behaves like vacant memory. Reads cause 3FFFh to be read. Fetches cause JMP $ to be executed.
	Toplevel: <<SYSBSLC {Register}>>
	@ SYSBSLR
		Bit: 2
		Type: RW
		Reset: 0h
		Description: RAM assigned to BSL 0b = No RAM assigned to BSL area 1b = Lowest 16 bytes of RAM assigned to BSL
	Toplevel: <<SYSBSLC {Register}>>
	@ SYSBSLSIZE
		Bit: 1-0
		Type: RW
		Reset: 03h
		Description: BSL size. Defines the space and size of flash memory that is reserved for the BSL. 00b = Size: BSL segment 3 01b = Size: BSL segments 2 and 3 10b = Size: BSL segments 1, 2, and 3 11b = Size: BSL segments 0, 1, 2, and 3
	Toplevel: <<SYSBSLC {Register}>>
	@

SFRIFG1 {Register}
	Interrupt Flag Register
	Chapter: 1.14.2
	Table: Table1-13. SFRIFG1 Register Description
	@ JMBOUTIFG
		Bit: 7
		Type: RW
		Reset: 1h
		Description: JTAG mailbox output interrupt flag 0b = No interrupt pending. When in 16-bit mode (JMBMODE = 0), this bit is cleared automatically when JMBO0 has been written with a new message to the JTAG module by the CPU. When in 32-bit mode (JMBMODE = 1), this bit is cleared automatically when both JMBO0 and JMBO1 have been written with new messages to the JTAG module by the CPU. This bit is also cleared when the associated vector in SYSUNIV has been read. 1b = Interrupt pending, JMBO registers are ready for new messages. In 16-bit mode (JMBMODE = 0), JMBO0 has been received by the JTAG module and is ready for a new message from the CPU. In 32-bit mode (JMBMODE = 1) , JMBO0 and JMBO1 have been received by the JTAG module and are ready for new messages from the CPU.
	Toplevel: <<SFRIFG1 {Register}>>
	@ JMBINIFG
		Bit: 6
		Type: RW
		Reset: 0h
		Description: JTAG mailbox input interrupt flag 0b = No interrupt pending. When in 16-bit mode (JMBMODE = 0), this bit is cleared automatically when JMBI0 is read by the CPU. When in 32-bit mode (JMBMODE = 1), this bit is cleared automatically when both JMBI0 and JMBI1 have been read by the CPU. This bit is also cleared when the associated vector in SYSUNIV has been read 1b = Interrupt pending, a message is waiting in the JMBIN registers. In 16-bit mode (JMBMODE = 0) when JMBI0 has been written by the JTAG module. In 32-bit mode (JMBMODE = 1) when JMBI0 and JMBI1 have been written by the JTAG module.
	Toplevel: <<SFRIFG1 {Register}>>
	@ NMIIFG
		Bit: 4
		Type: RW
		Reset: 0h
		Description: NMI pin interrupt flag 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<SFRIFG1 {Register}>>
	@ VMAIFG
		Bit: 3
		Type: RW
		Reset: 0h
		Description: Vacant memory access interrupt flag 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<SFRIFG1 {Register}>>
	@ OFIFG
		Bit: 1
		Type: RW
		Reset: 1h
		Description: Oscillator fault interrupt flag 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<SFRIFG1 {Register}>>
	@ WDTIFG
		Bit: 0
		Type: RW
		Reset: 0h
		Description: Watchdog timer interrupt flag. In watchdog mode, WDTIFG will self clear upon a watchdog timeout event. The SYSRSTIV can be read to determine if the reset was caused by a watchdog timeout event. In interval mode, WDTIFG is reset automatically by servicing the interrupt, or can be reset by software. Because other bits in ~IFG1 may be used for other modules, it is recommended to set or clear WDTIFG by using BIS.B or BIC.B instructions, rather than MOV.B or CLR.B instructions. 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<SFRIFG1 {Register}>>
	@

UCSCTL3 {Register}
	Unified Clock System Control 3 Registe.
	Chapter: 5.4.4
	Table: Table 5-6. UCSCTL3 Register Description
	@ SELREF
		Bit: 6-4
		Type: RW
		Reset: 0h
		Description: FLL reference select. These bits select the FLL reference clock source. 000b = XT1CLK 001b = Reserved for future use. Defaults to XT1CLK. 010b = REFOCLK 011b = Reserved for future use. Defaults to REFOCLK. 100b = Reserved for future use. Defaults to REFOCLK. 101b = XT2CLK when available, otherwise REFOCLK. 110b = Reserved for future use. XT2CLK when available, otherwise REFOCLK. 111b = Reserved for future use. XT2CLK when available, otherwise REFOCLK.
	Toplevel: <<UCSCTL3 {Register}>>
	@ FLLREFDIV
		Bit: 2-0
		Type: RW
		Reset: 0h
		Description: FLL reference divider. These bits define the divide factor for fFLLREFCLK. The divided frequency is used as the FLL reference frequency. 000b = fFLLREFCLK/1 001b = fFLLREFCLK/2 010b = fFLLREFCLK/4 011b = fFLLREFCLK/8 100b = fFLLREFCLK/12 101b = fFLLREFCLK/16 110b = Reserved for future use. Defaults to fFLLREFCLK/16. 111b = Reserved for future use. Defaults to fFLLREFCLK/16.
	Toplevel: <<UCSCTL3 {Register}>>
	@

SYSJMBI0 {Register}
	JTAG Mailbox Input 0 Register
	Chapter: 1.15.4
	Table: Table 1-20. SYSJMBI0 Register Description
	@ MSGHI
		Bit: 15-8
		Type: R
		Reset Description: 0h JTAG mailbox incoming message high byte
	Toplevel: <<SYSJMBI0 {Register}>>
	@ MSGLO
		Bit: 7-0
		Type: R
		Reset Description: 0h JTAG mailbox incoming message low byte
	Toplevel: <<SYSJMBI0 {Register}>>
	@

UCSCTL6 {Register}
	Unified Clock System Control 6 Register
	Chapter: 5.4.7
	Table: Table5-9.UCSCTL6 Register Description
	@ XT2DRIVE
		Bit: 15-14
		Type: RW
		Reset: 3h
		Description: The XT2 oscillator current can be adjusted to its drive needs. Initially, it starts with the highest supply current for reliable and quick startup. If needed, user software can reduce the drive strength. 00b = Lowest current consumption. XT2 oscillator operating range is 4 MHz to 8 MHz. 01b = Increased drive strength XT2 oscillator. XT2 oscillator operating range is 8 MHz to 16 MHz. 10b = Increased drive capability XT2 oscillator. XT2 oscillator operating range is 16 MHz to 24 MHz. 11b = Maximum drive capability and maximum current consumption for both XT2 oscillator. XT2 oscillator operating range is 24 MHz to 32 MHz.
	Toplevel: <<UCSCTL6 {Register}>>
	@ XT2BYPASS
		Bit: 12
		Type: RW
		Reset: 0h
		Description: XT2 bypass select 0b = XT2 sourced from external crystal 1b = XT2 sourced from external clock signal
	Toplevel: <<UCSCTL6 {Register}>>
	@ XT2OFF
		Bit: 8
		Type: RW
		Reset: 1h
		Description: Turns off the XT2 oscillator 0b = XT2 is on if XT2 is selected by the port selection and XT2 is not in bypass mode of operation 1b = XT2 is off if it is not used as a source for ACLK, MCLK, or SMCLK or is not used as a reference source required for FLL operation
	Toplevel: <<UCSCTL6 {Register}>>
	@ XT1DRIVE
		Bit: 7-6
		Type: RW
		Reset: 3h
		Description: The XT1 oscillator current can be adjusted to its drive needs. Initially, it starts with the highest supply current for reliable and quick startup. If needed, user software can reduce the drive strength. 00b = Lowest current consumption for XT1 LF mode. XT1 oscillator operating range in HF mode is 4 MHz to 8 MHz. 01b = Increased drive strength for XT1 LF mode. XT1 oscillator operating range in HF mode is 8 MHz to 16 MHz. 10b = Increased drive capability for XT1 LF mode. XT1 oscillator operating range in HF mode is 16 MHz to 24 MHz. 11b = Maximum drive capability and maximum current consumption for XT1 LF mode. XT1 oscillator operating range in HF mode is 24 MHz to 32 MHz.
	Toplevel: <<UCSCTL6 {Register}>>
	@ XTS
		Bit: 5
		Type: RW
		Reset: 0h
		Description: XT1 mode select 0b = Low-frequency mode. XCAP bits define the capacitance at the XIN and XOUT pins. 1b = High-frequency mode. XCAP bits are not used.
	Toplevel: <<UCSCTL6 {Register}>>
	@ XT1BYPASS
		Bit: 4
		Type: RW
		Reset: 0h
		Description: XT1 bypass select 0b = XT1 sourced from external crystal 1b = XT1 sourced from external clock signal
	Toplevel: <<UCSCTL6 {Register}>>
	@ XCAP
		Bit: 3-2
		Type: RW
		Reset: 3h
		Description: Oscillator capacitor selection. These bits select the capacitors applied to the LF crystal or resonator in the LF mode (XTS = 0). The effective capacitance (seen by the crystal) is C(eff) ≈ (C(XIN) + 2 pF) / 2. It is assumed that C(XIN) = C(XOUT) and that a parasitic capacitance of 2 pF is added by the package and the printed circuit board. For details about the typical internal and the effective capacitors, see the device-specific data sheet.
	Toplevel: <<UCSCTL6 {Register}>>
	@ SMCLKOFF
		Bit: 1
		Type: RW
		Reset: 0h
		Description: SMCLK off. This bit turns off the SMCLK. 0b = SMCLK on 1b = SMCLK off
	Toplevel: <<UCSCTL6 {Register}>>
	@ XT1OFF
		Bit: 0
		Type: RW
		Reset: 1h
		Description: XT1 off. This bit turns off the XT1. 0b = XT1 is on if XT1 is selected by the port selection and XT1 is not in bypass mode of operation. 1b = XT1 is off if it is not used as a source for ACLK, MCLK, or SMCLK or is not used as a reference source required for FLL operation.
	Toplevel: <<UCSCTL6 {Register}>>
	@

RCCTL0 {Register}
	RAM Controller Control 0 Register.
	Chapter: 9.3.1
	Table: Table9-2. RCCTL0 Register Description.
	@ RCKEY
		Bit: 15-8
		Type: RW
		Reset: 69h
		Description: RAM controller key. Always read as 69h. Must be written as 5Ah, otherwise the RAMCTL write is ignored.
	Toplevel: <<RCCTL0 {Register}>>
	@ RCRS7OFF
		Bit: 7
		Type: RW
		Reset: 0h
		Description: RAM controller RAM sector 7 off. Setting the bit to 1 turns off the RAM sector 7. All data of the RAM sector 7 is lost. See the device-specific data sheet to find the the number of RAM sectors available along with their respective address ranges and sizes.
	Toplevel: <<RCCTL0 {Register}>>
	@ RCRS6OFF
		Bit: 6
		Type: RW
		Reset: 0h
		Description: RAM controller RAM sector 6 off. Setting the bit to 1 turns off the RAM sector 6. All data of the RAM sector 6 is lost. See the device-specific data sheet to find the the number of RAM sectors available along with their respective address ranges and sizes.
	Toplevel: <<RCCTL0 {Register}>>
	@ RCRS5OFF
		Bit: 5
		Type: RW
		Reset: 0h
		Description: RAM controller RAM sector 5 off. Setting the bit to 1 turns off the RAM sector 5. All data of the RAM sector 5 is lost. See the device-specific data sheet to find the the number of RAM sectors available along with their respective address ranges and sizes.
	Toplevel: <<RCCTL0 {Register}>>
	@ RCRS4OFF
		Bit: 4
		Type: RW
		Reset: 0h
		Description: RAM controller RAM sector 4 off. Setting the bit to 1 turns off the RAM sector 4. All data of the RAM sector 4 is lost. See the device-specific data sheet to find the the number of RAM sectors available along with their respective address ranges and sizes.
	Toplevel: <<RCCTL0 {Register}>>
	@ RCRS3OFF
		Bit: 3
		Type: RW
		Reset: 0h
		Description: RAM controller RAM sector 3 off. Setting the bit to 1 turns off the RAM sector 3. All data of the RAM sector 3 is lost. See the device-specific data sheet to find the the number of RAM sectors available along with their respective address ranges and sizes.
	Toplevel: <<RCCTL0 {Register}>>
	@ RCRS2OFF
		Bit: 2
		Type: RW
		Reset: 0h
		Description: RAM controller RAM sector 2 off. Setting the bit to 1 turns off the RAM sector 2. All data of the RAM sector 2 is lost. See the device-specific data sheet to find the the number of RAM sectors available along with their respective address ranges and sizes.
	Toplevel: <<RCCTL0 {Register}>>
	@ RCRS1OFF
		Bit: 1
		Type: RW
		Reset: 0h
		Description: RAM controller RAM sector 1 off. Setting the bit to 1 turns off the RAM sector 1. All data of the RAM sector 1 is lost. See the device-specific data sheet to find the the number of RAM sectors available along with their respective address ranges and sizes.
	Toplevel: <<RCCTL0 {Register}>>
	@ RCRS0OFF
		Bit: 0
		Type: RW
		Reset: 0h
		Description: RAM controller RAM sector 0 off. Setting the bit to 1 turns off the RAM sector 0. All data of the RAM sector 0 is lost. See the device-specific data sheet to find the the number of RAM sectors available along with their respective address ranges and sizes.
	Toplevel: <<RCCTL0 {Register}>>
	@

SVSMIO {Register}
	SVSIN and SVMOUT Control Register.
	Chapter: 2.3.5
	Table: Table 2-20. SVSMIO Register Description.
	@ SVMHVLROE
		Bit: 12
		Type: RW
		Reset: 0h
		Description: SVM high-side voltage level reached output enable. If this bit is set, the SVMHVLRIFG bit is output to the device SVMOUT pin. The device-specific port logic has to be configured accordingly.
	Toplevel: <<SVSMIO {Register}>>
	@ SVMHOE
		Bit: 11
		Type: RW
		Reset: 0h
		Description: SVM high-side output enable. If this bit is set, the SVMHIFG bit is output to the device SVMOUT pin. The device-specific port logic has to be configured accordingly.
	Toplevel: <<SVSMIO {Register}>>
	@ SVMOUTPOL
		Bit: 5
		Type: RW
		Reset: 1h
		Description: SVMOUT pin polarity. If this bit is set, SVMOUT is active high. An error condition is signaled by a 1 at SVMOUT. If SVMOUTPOL is cleared, the error condition is signaled by a 0 at the SVMOUT pin.
	Toplevel: <<SVSMIO {Register}>>
	@ SVMLVLROE
		Bit: 4
		Type: RW
		Reset: 0h
		Description: SVM low-side voltage level reached output enable. If this bit is set, the SVMLVLRIFG bit is output to the device SVMOUT pin. The device-specific port logic has to be configured accordingly.
	Toplevel: <<SVSMIO {Register}>>
	@ SVMLOE
		Bit: 3
		Type: RW
		Reset: 0h
		Description: SVM low-side output enable. If this bit is set, the SVMLIFG bit is output to the device SVMOUT pin. The device-specific port logic has to be configured accordingly.
	Toplevel: <<SVSMIO {Register}>>
	@

UCSCTL9 {Register}
	Unified Clock System Control 9 Register
	Chapter: 5.4.10
	Table: Table5-12.UCSCTL9 Register Description
	@ XT2BYPASSLV
		Bit: 1
		Type: RW
		Reset Description: 0h Selects XT2 bypass input swing level. Must be set for reduced swing operation. 0b = Input range from 0 to DVCC 1b = Input range from 0 to DVIO
	Toplevel: <<UCSCTL9 {Register}>>
	@ XT1BYPASSLV
		Bit: 0
		Type: RW
		Reset Description: 0h Selects XT1 bypass input swing level. Must be set for reduced swing operation. 0b = Input range from 0 to DVCC 1b = Input range from 0 to DVIO
	Toplevel: <<UCSCTL9 {Register}>>
	@

SYSBERRIV {Register}
	System Bus Error Interrupt Vector Register
	Chapter: 1.15.11
	Table: Table 1-27. SYSBERRIV Register Description
	@ SYSBERRIV
		Bit: 15-0
		Type: R
		Reset: 0h
		Description: System bus error interrupt vector. Generates a value that can be used as an address offset for fast interrupt service routine handling. Writing to this register clears all pending flags. 00h = No interrupt pending 02h = USB module timed out. Wait state time out of 8 clock cycles. 16 clock cycles only on the F552x and F551x devices. 04h = Reserved for future extensions 06h = Reserved for future extensions 08h = Reserved for future extensions
		Toplevel: <<SYSBERRIV {Register}>>
	@

SVSMHCTL {Register}
	Supply Voltage Supervisor and Monitor High-Side Control Register
	Chapter: 2.3.3
	Table: Table 2-18.SVSMHCTL Register Description
	@ SVMHFP
		Bit: 15
		Type: RW
		Reset: 0h
		Description: SVM high-side full-performance mode. If this bit is set, the SVMH operates in full-performance mode. 0b = Normal mode. See the device-specific data sheet for response times. 1b = Full-performance mode. See the device-specific data sheet for response times.
	Toplevel: <<SVSMHCTL {Register}>>
	@ SVMHE
		Bit: 14
		Type: RW
		Reset: 1h
		Description: SVM high-side enable. If this bit is set, the SVMH is enabled.
	Toplevel: <<SVSMHCTL {Register}>>
	@ SVMHOVPE
		Bit: 12
		Type: RW
		Reset: 0h
		Description: SVM high-side overvoltage enable. If this bit is set, the SVMH overvoltage detection is enabled. If SVMHVLRPE is also set, a POR occurs on an overvoltage condition.
	Toplevel: <<SVSMHCTL {Register}>>
	@ SVSHFP
		Bit: 11
		Type: RW
		Reset: 0h
		Description: SVS high-side full-performance mode. If this bit is set, the SVSH operates in full- performance mode. 0b = Normal mode. See the device-specific data sheet for response times. 1b = Full-performance mode. See the device-specific data sheet for response times.
	Toplevel: <<SVSMHCTL {Register}>>
	@ SVSHE
		Bit: 10
		Type: RW
		Reset: 1h
		Description: SVS high-side enable. If this bit is set, the SVSH is enabled.
	Toplevel: <<SVSMHCTL {Register}>>
	@ SVSHRVL
		Bit: 9-8
		Type: RW
		Reset: 0h
		Description: SVS high-side reset voltage level. If DVCC falls short of the SVSH voltage level selected by SVSHRVL, a reset is triggered (if SVSHPE = 1). The voltage levels are defined in the device-specific data sheet. Note: SVSMHRRL must always be equal or larger than SVSHRVL.
	Toplevel: <<SVSMHCTL {Register}>>
	@ SVSMHACE
		Bit: 7
		Type: RW
		Reset: 0h
		Description: SVS and SVM high-side automatic control enable. If this bit is set, the low-power mode of the SVSH and SVMH circuits is under hardware control.
	Toplevel: <<SVSMHCTL {Register}>>
	@ SVSMHEVM
		Bit: 6
		Type: RW
		Reset: 0h
		Description: SVS and SVM high-side event mask. If this bit is set, the SVSH and SVMH events are masked. 0b = No events are masked. 1b = All events are masked.
	Toplevel: <<SVSMHCTL {Register}>>
	@ SVSHMD
		Bit: 4
		Type: RW
		Reset: 0h
		Description: SVS high-side mode. If this bit is set, the SVSH interrupt flag is set in LPM2, LPM3, and LPM4 in case of power-fail conditions. If this bit is not set, the SVSH interrupt is not set in LPM2, LPM3, and LPM4. Note: This bit also affects the control mode selection (see Table 2-5).
	Toplevel: <<SVSMHCTL {Register}>>
	@ SVSMHDLYST
		Bit: 3
		Type: R
		Reset: 0h
		Description: SVS and SVM high-side delay status. If this bit is set, the SVSH and SVMH events are masked for some delay time. The delay time depends on the power mode of the SVSH and SVMH. If SVMHFP = 1 and SVSHFP = 1 (that is, full- performance mode), the delay is shorter. See the device-specific data sheet for details. The bit is cleared by hardware if the delay has expired.
	Toplevel: <<SVSMHCTL {Register}>>
	@ SVSMHRRL
		Bit: 2-0
		Type: RW
		Reset: 0h
		Description: SVS and SVM high-side reset release voltage level. These bits define the reset release voltage level of the SVSH. It is also used for the SVMH to define the voltage reached level. The voltage levels are defined in the device-specific data sheet. Note: SVSMHRRL must always be equal or larger than SVSHRVL.
	Toplevel: <<SVSMHCTL {Register}>>
	@

UCSCTL4 {Register}
	Unified Clock System Control 4 Register
	Chapter: 5.4.5
	Table: Table5-7.UCSCTL4 Register Description
	@ SELA
		Bit: 10-8
		Type: RW
		Reset: 0h
		Description: Selects the ACLK source 000b = XT1CLK 001b = VLOCLK 010b = REFOCLK 011b = DCOCLK 100b = DCOCLKDIV 101b = XT2CLK when available, otherwise DCOCLKDIV 110b = Reserved for future use. Defaults to XT2CLK when available, otherwise DCOCLKDIV. 111b = Reserved for future use. Defaults to XT2CLK when available, otherwise DCOCLKDIV.
	Toplevel: <<UCSCTL4 {Register}>>
	@ SELS
		Bit: 6-4
		Type: RW
		Reset: 4h
		Description: Selects the SMCLK source 000b = XT1CLK 001b = VLOCLK 010b = REFOCLK 011b = DCOCLK 100b = DCOCLKDIV 101b = XT2CLK when available, otherwise DCOCLKDIV 110b = Reserved for future use. Defaults to XT2CLK when available, otherwise DCOCLKDIV. 111b = Reserved for future use. Defaults to XT2CLK when available, otherwise DCOCLKDIV.
	Toplevel: <<UCSCTL4 {Register}>>
	@ SELM
		Bit: 2-0
		Type: RW
		Reset: 4h
		Description: Selects the MCLK source 000b = XT1CLK 001b = VLOCLK 010b = REFOCLK 011b = DCOCLK 100b = DCOCLKDIV 101b = XT2CLK when available, otherwise DCOCLKDIV 110b = Reserved for future use. Defaults to XT2CLK when available, otherwise DCOCLKDIV. 111b = Reserved for future use. Defaults to XT2CLK when available, otherwise DCOCLKDIV.
	Toplevel: <<UCSCTL4 {Register}>>
	@

UCSCTL2 {Register}
	Unified Clock System Control 2 Register
	Chapter: 5.4.3
	Table: Table 5-5. UCSCTL2 Register Description
	@ FLLD
		Bit: 14-12
		Type: RW
		Reset: 1h
		Description: FLL loop divider. These bits divide fDCOCLK in the FLL feedback loop. This results in an additional multiplier for the multiplier bits. See also multiplier bits. 000b = fDCOCLK/1 001b = fDCOCLK/2 010b = fDCOCLK/4 011b = fDCOCLK/8 100b = fDCOCLK/16 101b = fDCOCLK/32 110b = Reserved for future use. Defaults to fDCOCLK/32. 111b = Reserved for future use. Defaults to fDCOCLK/32.
	Toplevel: <<UCSCTL2 {Register}>>
	@ FLLN
		Bit: 9-0
		Type: RW
		Reset: 1Fh
		Description: Multiplier bits. These bits set the multiplier value N of the DCO. N must be greater than 0. Writing zero to FLLN causes N to be set to 1.
	Toplevel: <<UCSCTL2 {Register}>>
	@

SYSJMBO0 {Register}
	JTAG Mailbox Output 0 Register
	Chapter: 1.15.6
	Table: Table 1-22. SYSJMBO0 Register Description
	@ MSGHI
		Bit: 15-8
		Type: RW
		Reset: 0h
		Description: JTAG mailbox outgoing message high byte
	Toplevel: <<SYSJMBO0 {Register}>>
	@ MSGLO
		Bit: 7-0
		Type: RW
		Reset: 0h
		Description: JTAG mailbox outgoing message low byte
	Toplevel: <<SYSJMBO0 {Register}>>
	@

WDTCTL
	Watchdog Timer Control Register
	Chapter: See chapter 16.3.1.
	Table: Table16-2. WDTCTL Register Description
	@ WDTPW
		Bit: 15-8
		Type: RW
		Reset: 69h
		Description: Watchdog timer password. Always read as 069h. Must be written as 5Ah; if any other value is written, a PUC is generated.
	Toplevel: <<WDTCTL>>
	@ WDTHOLD
		Bit: 7
		Type: RW
		Reset: 0h
		Description: Watchdog timer hold. This bit stops the watchdog timer. Setting WDTHOLD = 1 when the WDT is not in use conserves power. 0b = Watchdog timer is not stopped. 1b = Watchdog timer is stopped.
	Toplevel: <<WDTCTL>>
	@ WDTSSEL
		Bit: 6-5
		Type: RW
		Reset: 0h
		Description: Watchdog timer clock source select 00b = SMCLK 01b = ACLK 10b = VLOCLK 11b = X_CLK; VLOCLK in devices that do not support X_CLK
	Toplevel: <<WDTCTL>>
	@ WDTTMSEL
		Bit: 4
		Type: RW
		Reset: 0h
		Description: Watchdog timer mode select 0b = Watchdog mode 1b = Interval timer mode
	Toplevel: <<WDTCTL>>
	@ WDTCNTCL
		Bit: 3
		Type: RW
		Reset: 0h
		Description: Watchdog timer counter clear. Setting WDTCNTCL = 1 clears the count value to 0000h. WDTCNTCL is automatically reset. 0b = No action 1b = WDTCNT = 0000h
	Toplevel: <<WDTCTL>>
	@ WDTIS
		Bit: 2-0
		Type: RW
		Reset: 4h
		Description: Watchdog timer interval select. These bits select the watchdog timer interval to set the WDTIFG flag and/or generate a PUC. 000b = Watchdog clock source /(231) (18h:12m:16s at 32.768 kHz) 001b = Watchdog clock source /(227) (01h:08m:16s at 32.768 kHz) 010b = Watchdog clock source /(223) (00h:04m:16s at 32.768 kHz) 011b = Watchdog clock source /(219) (00h:00m:16s at 32.768 kHz) 100b = Watchdog clock source /(215) (1 s at 32.768 kHz) 101b = Watchdog clock source /(213) (250 ms at 32.768 kHz) 110b = Watchdog clock source /(29) (15.625 ms at 32.768 kHz) 111b = Watchdog clock source /(26) (1.95 ms at 32.768 kHz)
	Toplevel: <<WDTCTL>>
	@

PMMCTL0 {Register}
	Power Management Module Control Register 0
	Chapter: 2.3.1
	Table: Table 2-16. PMMCTL0 Register Description
	@ PMMPW
		Bit: 15-8
		Type: RW
		Reset: 96h
		Description: PMM password. Always read as 096h. When using word operations, must be written with 0A5h or a PUC is generated. When using byte operation, writing 0A5h unlocks all PMM registers. When using byte operation, writing anything different than 0A5h locks all PMM registers.
	Toplevel: <<PMMCTL0 {Register}>>
	@ PMMREGOFF
		Bit: 4
		Type: RW
		Reset: 0h
		Description: Regulator off (see the SYS chapter for details)
	Toplevel: <<PMMCTL0 {Register}>>
	@ PMMSWPOR
		Bit: 3
		Type: RW
		Reset: 0h
		Description: Software power-on reset. Setting this bit to 1 triggers a POR. This bit is self clearing.
	Toplevel: <<PMMCTL0 {Register}>>
	@ PMMSWBOR
		Bit: 2
		Type: RW
		Reset: 0h
		Description: Software brownout reset. Setting this bit to 1 triggers a BOR. This bit is self clearing.
	Toplevel: <<PMMCTL0 {Register}>>
	@ PMMCOREV
		Bit: 1-0
		Type: RW
		Reset: 0h
		Description: Core voltage (see the device-specific data sheet for supported levels and corresponding voltages) 00b = V(CORE) level 0 01b = V(CORE) level 1 10b = V(CORE) level 2 11b = V(CORE) level 3
		Toplevel: <<PMMCTL0 {Register}>>
	@


UCSCTL1 {Register}
	Unified Clock System Control 1 Register.
	Chapter: 5.4.2
	Table: Table 5-4. UCSCTL1 Register Description.
	@ DCORSEL
		Bit: 6-4
		Type: RW
		Reset: 2h
		Description: DCO frequency range select. These bits select the DCO frequency range of operation defined in the device-specific datasheet.
	Toplevel: <<UCSCTL1 {Register}>>
	@ DISMOD
		Bit: 0
		Type: RW
		Reset: 0h
		Description: Modulation. This bit enables or disables the modulation. 0b = Modulation enabled 1b = Modulation disabled
	Toplevel: <<UCSCTL1 {Register}>>
	@

PMMRIE {Register}
	Power Management Module Reset and Interrupt Enable Register.
	Chapter: 2.3.7
	Table: Table2-22.PMMRIE Register Description.
	@ SVMHVLRPE
		Bit: 13
		Type: RW
		Reset: 0h
		Description: SVM high-side voltage level reached power-on reset enable. If this bit is set, exceeding the SVMH voltage level triggers a POR.
	Toplevel: <<PMMRIE {Register}>>
	@ SVSHPE
		Bit: 12
		Type: RW
		Reset: 1h
		Description: SVS high-side power-on reset enable. If this bit is set, falling below the SVSH voltage level triggers a POR.
	Toplevel: <<PMMRIE {Register}>>
	@ SVMLVLRPE
		Bit: 9
		Type: RW
		Reset: 0h
		Description: SVM low-side voltage level reached power-on reset enable. If this bit is set, exceeding the SVML voltage level triggers a POR.
	Toplevel: <<PMMRIE {Register}>>
	@ SVSLPE
		Bit: 8
		Type: RW
		Reset: 1h
		Description: SVS low-side power-on reset enable. If this bit is set, falling below the SVSL voltage level triggers a POR.
	Toplevel: <<PMMRIE {Register}>>
	@ SVMHVLRIE
		Bit: 6
		Type: RW
		Reset: 0h
		Description: SVM high-side reset voltage level interrupt enable
	Toplevel: <<PMMRIE {Register}>>
	@ SVMHIE
		Bit: 5
		Type: RW
		Reset: 0h
		Description: SVM high-side interrupt enable. This bit is cleared by software or if the interrupt vector word is read.
	Toplevel: <<PMMRIE {Register}>>
	@ SVSMHDLYIE
		Bit: 4
		Type: RW
		Reset: 0h
		Description: SVS and SVM high-side delay expired interrupt enable
	Toplevel: <<PMMRIE {Register}>>
	@ SVMLVLRIE
		Bit: 2
		Type: RW
		Reset: 0h
		Description: SVM low-side reset voltage level interrupt enable
	Toplevel: <<PMMRIE {Register}>>
	@ SVMLIE
		Bit: 1
		Type: RW
		Reset: 0h
		Description: SVM low-side interrupt enable. This bit is cleared by software or if the interrupt vector word is read.
	Toplevel: <<PMMRIE {Register}>>
	@ SVSMLDLYIE
		Bit: 0
		Type: RW
		Reset: 0h
		Description: SVS and SVM low-side delay expired interrupt enable
	Toplevel: <<PMMRIE {Register}>>
	@

SVSMLCTL {Register}
	Supply Voltage Supervisor and Monitor Low-Side Control Register
	Chapter: 2.3.4
	Table: Table 2-19.SVSMLCTL Register Description
	@ SVMLFP
		Bit: 15
		Type: RW
		Reset: 0h
		Description: SVM low-side full-performance mode. If this bit is set, the SVML operates in full- performance mode. 0b = Normal mode. See the device-specific data sheet for response times. 1b = Full-performance mode. See the device-specific data sheet for response times.
	Toplevel: <<SVSMLCTL {Register}>>
	@ SVMLE
		Bit: 14
		Type: RW
		Reset: 1h
		Description: SVM low-side enable. If this bit is set, the SVML is enabled.
	Toplevel: <<SVSMLCTL {Register}>>
	@ SVMLOVPE
		Bit: 12
		Type: RW
		Reset: 0h
		Description: SVM low-side overvoltage enable. If this bit is set, the SVML overvoltage detection is enabled.
	Toplevel: <<SVSMLCTL {Register}>>
	@ SVSLFP
		Bit: 11
		Type: RW
		Reset: 0h
		Description: SVS low-side full-performance mode. If this bit is set, the SVSL operates in full- performance mode. 0b = Normal mode. See the device-specific data sheet for response times. 1b = Full-performance mode. See the device-specific data sheet for response times.
	Toplevel: <<SVSMLCTL {Register}>>
	@ SVSLE
		Bit: 10
		Type: RW
		Reset: 1h
		Description: SVS low-side enable. If this bit is set, the SVSL is enabled.
	Toplevel: <<SVSMLCTL {Register}>>
	@ SVSLRVL
		Bit: 9-8
		Type: RW
		Reset: 0h
		Description: SVS low-side reset voltage level. If V(CORE) falls short of the SVSL voltage level selected by SVSLRVL, a reset is triggered (if SVSLPE = 1). Note: SVSMLRRL must always be equal to or larger than SVSLRVL.
	Toplevel: <<SVSMLCTL {Register}>>
	@ SVSMLACE
		Bit: 7
		Type: RW
		Reset: 0h
		Description: SVS and SVM low-side automatic control enable. If this bit is set, the low-power mode of the SVSL and SVML circuits is under hardware control.
	Toplevel: <<SVSMLCTL {Register}>>
	@ SVSMLEVM
		Bit: 6
		Type: RW
		Reset: 0h
		Description: SVS and SVM low-side event mask. If this bit is set, the SVSL and SVML events are masked. 0b = No events are masked. 1b = All events are masked.
	Toplevel: <<SVSMLCTL {Register}>>
	@ SVSLMD
		Bit: 4
		Type: RW
		Reset: 0h
		Description: SVS low-side mode. If this bit is set, the SVSL interrupt flag is set in LPM2, LPM3 and LPM4 in case of power-fail conditions. If this bit is not set, the SVSL interrupt is not set in LPM2, LPM3, and LPM4. Note: This bit also affects the control mode selection (see Table 2-5).
	Toplevel: <<SVSMLCTL {Register}>>
	@ SVSMLDLYST
		Bit: 3
		Type: RW
		Reset: 0h
		Description: SVS and SVM low-side delay status. If this bit is set, the SVSL and SVML events are masked for a delay time. The delay time depends on the power mode of the SVSL and SVML. If SVMLFP = 1 and SVSLFP = 1 (that is, full-performance mode), the delay is shorter. The bit is cleared by hardware if the delay has expired.
	Toplevel: <<SVSMLCTL {Register}>>
	@ SVSMLRRL
		Bit: 2-0
		Type: RW
		Reset: 0h
		Description: SVS and SVM low-side reset release voltage level. These bits define the reset release voltage level of the SVSL. It is also used for the SVML to define the voltage reached level. Note: SVSMLRRL must always be equal or larger than SVSLRVL.
	Toplevel: <<SVSMLCTL {Register}>>
	@

PMMIFG {Register}
	Power Management Module Interrupt Flag Register.
	Chapter: 2.3.4
	Table: Table2-21.PMMIFG Register Description.
	@ PMMLPM5IFG
		Bit: 15
		Type: RW
		Reset: 0h
		Description: LPMx.5 flag. This bit is set if the system was in LPMx.5 before. The bit is cleared by software or by reading the reset vector word. A power failure on the DVCC domain clears the bit. 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<PMMIFG {Register}>>
	@ SVSLIFG
		Bit: 13
		Type: RW
		Reset: 0h
		Description: SVS low-side interrupt flag. The bit is cleared by software or by reading the reset vector word. 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<PMMIFG {Register}>>
	@ SVSHIFG
		Bit: 12
		Type: RW
		Reset: 0h
		Description: SVS high-side interrupt flag. The bit is cleared by software or by reading the reset vector word. 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<PMMIFG {Register}>>
	@ PMMPORIFG
		Bit: 10
		Type: RW
		Reset: 0h
		Description: PMM software power-on reset interrupt flag. This interrupt flag is set if a software POR is triggered. The bit is cleared by software or by reading the reset vector word, SYSRSTIV. 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<PMMIFG {Register}>>
	@ PMMRSTIFG
		Bit: 9
		Type: RW
		Reset: 0h
		Description: PMM reset pin interrupt flag. This interrupt flag is set if the RST/NMI pin is the reset source. The bit is cleared by software or by reading the reset vector word. 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<PMMIFG {Register}>>
	@ PMMBORIFG
		Bit: 8
		Type: RW
		Reset: 0h
		Description: PMM software brownout reset interrupt flag. This interrupt flag is set if a software BOR (PMMSWBOR) is triggered. The bit is cleared by software or by reading the reset vector word, SYSRSTIV. 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<PMMIFG {Register}>>
	@ SVMHVLRIFG
		Bit: 6
		Type: RW
		Reset: 0h
		Description: SVM high-side voltage level reached interrupt flag. The bit is cleared by software or by reading the reset vector (SVSHPE = 1) word or by reading the interrupt vector (SVSHPE = 0) word. 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<PMMIFG {Register}>>
	@ SVMHIFG
		Bit: 5
		Type: RW
		Reset: 0h
		Description: SVM high-side interrupt flag. The bit is cleared by software. 0b = No interrupt pending 1b = Interrupt pending voltage reached level. The voltage levels are defined in the device-specific data sheet. Note: SVSMHRRL must always be equal or larger than SVSHRVL.
	Toplevel: <<PMMIFG {Register}>>
	@ SVSMHDLYIFG
		Bit: 4
		Type: RW
		Reset: 0h
		Description: SVS and SVM high-side delay expired interrupt flag. This interrupt flag is set if the delay element expired. The bit is cleared by software or by reading the interrupt vector word. 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<PMMIFG {Register}>>
	@ SVMLVLRIFG
		Bit: 2
		Type: RW
		Reset: 0h
		Description: SVM low-side voltage level reached interrupt flag. The bit is cleared by software or by reading the reset vector (SVSLPE = 1) word or by reading the interrupt vector (SVSLPE = 0) word. 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<PMMIFG {Register}>>
	@ SVMLIFG
		Bit: 1
		Type: RW
		Reset: 0h
		Description: SVM low-side interrupt flag. The bit is cleared by software. 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<PMMIFG {Register}>>
	@ SVSMLDLYIFG
		Bit: 0
		Type: RW
		Reset: 0h
		Description: SVS and SVM low-side delay expired interrupt flag. This interrupt flag is set if the delay element expired. The bit is cleared by software or by reading the interrupt vector word. 0b = No interrupt pending 1b = Interrupt pending
	Toplevel: <<PMMIFG {Register}>>
	@

SFRRPCR {Register}
	Reset Pin Control Register
	Chapter: 1.14.3
	Table: Table 1-14. SFRRPCR Register Description
	@ SYSRSTRE
		Bit: 3
		Type: RW
		Reset: 1h
		Description: Reset pin resistor enable 0b = Pullup/pulldown resistor at the RST/NMI pin is disabled 1b = Pullup/pulldown resistor at the RST/NMI pin is enabled
	Toplevel: <<SFRRPCR {Register}>>
	@ SYSRSTUP
		Bit: 2
		Type: RW
		Reset: 1h
		Description: Reset resistor pin pullup/pulldown 0b = Pulldown is selected 1b = Pullup is selected
	Toplevel: <<SFRRPCR {Register}>>
	@ SYSNMIIES
		Bit: 1
		Type: RW
		Reset: 0h
		Description: NMI edge select. This bit selects the interrupt edge for the NMI when SYSNMI = 1. Modifying this bit can trigger an NMI. Modify this bit when SYSNMI = 0 to avoid triggering an accidental NMI. 0b = NMI on rising edge 1b = NMI on falling edge
	Toplevel: <<SFRRPCR {Register}>>
	@ SYSNMI
		Bit: 0
		Type: RW
		Reset: 0h
		Description: NMI select. This bit selects the function for the RST/NMI pin. 0b = Reset function 1b = NMI function
	Toplevel: <<SFRRPCR {Register}>>
	@

SYSUNIV {Register}
	User NMI Vector Register
	Chapter: 1.15.8
	Table: Table 1-24. SYSUNIV Register Description
	@ SYSUNIV
		Bit: 15-0
		Type: R
		Reset: 0h
		Description: User NMI vector. Generates a value that can be used as address offset for fast interrupt service routine handling. Writing to this register clears all pending user NMI flags. 00h = No interrupt pending 02h = NMIIFG interrupt pending (highest priority) 04h = OFIFG interrupt pending 06h = ACCVIFG interrupt pending 08h = BUSIFG interrupt pending (Not present on all devices. See device-specific datasheet)
	Toplevel: <<SYSUNIV {Register}>>
	@

SR
	The 16-bit Status Register (SR, also called R2), used as a source or destination register, can only be used in register mode addressed with word instructions. The remaining combinations of addressing modes are used to support the constant generator. Figure 6-9 shows the SR bits. Do not write 20-bit values to the SR. Unpredictable operation can result.
	Chapter: 6.3.3
	Table: Table 6-1. SR Bit Description
	@ V
		Description: Overflow. This bit is set when the result of an arithmetic operation overflows the signed-variable range. ADD(.B), ADDX(.B,.A), Set when: ADDC(.B), ADDCX(.B.A), positive + positive = negative ADDA negative + negative = positive otherwise reset SUB(.B), SUBX(.B,.A), Set when: SUBC(.B),SUBCX(.B,.A), positive – negative = negative negative – positive = positive SUBA, CMP(.B), otherwise reset CMPX(.B,.A), CMPA
	Toplevel: <<SR>>
	@ SCG1
		Description: System clock generator 1. This bit may be used to enable or disable functions in the clock system depending on the device family; for example, DCO bias enable or disable.
	Toplevel: <<SR>>
	@ SCG0
		Description: System clock generator 0. This bit may be used to enable or disable functions in the clock system depending on the device family; for example, FLL enable or disable.
	Toplevel: <<SR>>
	@ OSCOFF
		Description: Oscillator off. When this bit is set, it turns off the LFXT1 crystal oscillator when LFXT1CLK is not used for MCLK or SMCLK.
	Toplevel: <<SR>>
	@ CPUOFF
		Description: CPU off. When this bit is set, it turns off the CPU.
	Toplevel: <<SR>>
	@ GIE
		Description: General interrupt enable. When this bit is set, it enables maskable interrupts. When it is reset, all maskable interrupts are disabled.
	Toplevel: <<SR>>
	@ N
		Description: Negative. This bit is set when the result of an operation is negative and cleared when the result is positive.
	Toplevel: <<SR>>
	@ Z
		Description: Zero. This bit is set when the result of an operation is 0 and cleared when the result is not 0.
	Toplevel: <<SR>>
	@ C
		Description: Carry. This bit is set when the result of an operation produced a carry and cleared when no carry occurred.
	Toplevel: <<SR>>
	@

UCSCTL7 {Register}
	Unified Clock System Control 7 Register
	Chapter: 5.4.8
	Table: Table5-10.UCSCTL7 Register Description
	@ XT2OFFG (1)
		Bit: 3
		Type: RW
		Reset: 0h
		Description: XT2 oscillator fault flag. If this bit is set, the OFIFG flag is also set. XT2OFFG is set if a XT2 fault condition exists. XT2OFFG can be cleared by software. If the XT2 fault condition still remains, XT2OFFG is set. 0b = No fault condition occurred after the last reset. 1b = XT2 fault. An XT2 fault occurred after the last reset.
	Toplevel: <<UCSCTL7 {Register}>>
	@ XT1HFOFFG (1)
		Bit: 2
		Type: RW
		Reset: 0h
		Description: XT1 oscillator fault flag (HF mode). If this bit is set, the OFIFG flag is also set. XT1HFOFFG is set if a XT1 fault condition exists. XT1HFOFFG can be cleared by software. If the XT1 fault condition still remains, XT1HFOFFG is set. 0b = No fault condition occurred after the last reset. 1b = XT1 fault. An XT1 fault occurred after the last reset.
	Toplevel: <<UCSCTL7 {Register}>>
	@ XT1LFOFFG
		Bit: 1
		Type: RW
		Reset: 1h
		Description: XT1 oscillator fault flag (LF mode). If this bit is set, the OFIFG flag is also set. XT1LFOFFG is set if a XT1 fault condition exists. XT1LFOFFG can be cleared by software. If the XT1 fault condition still remains, XT1LFOFFG is set. 0b = No fault condition occurred after the last reset. 1b = XT1 fault (LF mode). A XT1 fault occurred after the last reset.
	Toplevel: <<UCSCTL7 {Register}>>
	@ DCOFFG
		Bit: 0
		Type: RW
		Reset: 1h
		Description: DCO fault flag. If this bit is set, the OFIFG flag is also set. The DCOFFG bit is set if DCO = {0} or DCO = {31}. DCOFFG can be cleared by software. If the DCO fault condition still remains, DCOFFG is set. 0b = No fault condition occurred after the last reset. 1b = DCO fault. A DCO fault occurred after the last reset.
	Toplevel: <<UCSCTL7 {Register}>>
	@

SYSJMBI1 {Register}
	JTAG Mailbox Input 0 Register
	Chapter: 1.15.5
	Table: Table 1-21. SYSJMBI1 Register Description
	@ MSGHI
		Bit: 15-8
		Type: R
		Reset Description: 0h JTAG mailbox incoming message high byte
	Toplevel: <<SYSJMBI1 {Register}>>
	@ MSGLO
		Bit: 7-0
		Type: R
		Reset Description: 0h JTAG mailbox incoming message low byte
	Toplevel: <<SYSJMBI1 {Register}>>
	@

SYSJMBC {Register}
	JTAG Mailbox Control Register
	Chapter: 1.15.3
	Table: Table 1-19. SYSJMBC Register Description
	@ JMBCLR1OFF
		Bit: 7
		Type: RW
		Reset: 0h
		Description: Incoming JTAG Mailbox 1 flag auto-clear disable 0b = JMBIN1FG cleared on read of JMB1IN register 1b = JMBIN1FG cleared by software
	Toplevel: <<SYSJMBC {Register}>>
	@ JMBCLR0OFF
		Bit: 6
		Type: RW
		Reset: 0h
		Description: Incoming JTAG Mailbox 0 flag auto-clear disable 0b = JMBIN0FG cleared on read of JMB0IN register 1b = JMBIN0FG cleared by software
	Toplevel: <<SYSJMBC {Register}>>
	@ JMBMODE
		Bit: 4
		Type: RW
		Reset: 0h
		Description: This bit defines the operation mode of JMB for JMBI0, JMBI1, JMBO0, and JMBO1. Before switching this bit, pad and flush out any partial content to avoid data drops. 0b = 16-bit transfers using JMBO0 and JMBI0 only 1b = 32-bit transfers using JMBI0, JMBI1, JMBO0, and JMBO1
	Toplevel: <<SYSJMBC {Register}>>
	@ JMBOUT1FG
		Bit: 3
		Type: RW
		Reset: 1h
		Description: Outgoing JTAG Mailbox 1 flag. This bit is cleared automatically when a message is written to the upper byte of JMBO1 or as word access (by the CPU, DMA,...) and is set after the message was read by JTAG. 0b = JMBO1 is not ready to receive new data. 1b = JMBO1 is ready to receive new data.
	Toplevel: <<SYSJMBC {Register}>>
	@ JMBOUT0FG
		Bit: 2
		Type: RW
		Reset: 1h
		Description: Outgoing JTAG Mailbox 0 flag. This bit is cleared automatically when a message is written to the upper byte of JMBO0 or as word access (by the CPU, DMA,...) and is set after the message was read by JTAG. 0b = JMBO0 is not ready to receive new data. 1b = JMBO0 is ready to receive new data.
	Toplevel: <<SYSJMBC {Register}>>
	@ JMBIN1FG
		Bit: 1
		Type: RW
		Reset: 0h
		Description: Incoming JTAG Mailbox 1 flag. This bit is set when a new message (provided by JTAG) is available in JMBI1. This flag is cleared automatically on read of JMBI1 when JMBCLR1OFF = 0 (auto clear mode). On JMBCLR1OFF = 1, JMBIN1FG needs to be cleared by software. 0b = JMBI1 has no new data. 1b = JMBI1 has new data available.
	Toplevel: <<SYSJMBC {Register}>>
	@ JMBIN0FG
		Bit: 0
		Type: RW
		Reset: 0h
		Description: Incoming JTAG Mailbox 0 flag. This bit is set when a new message (provided by JTAG) is available in JMBI0. This flag is cleared automatically on read of JMBI0 when JMBCLR0OFF = 0 (auto clear mode). On JMBCLR0OFF = 1, JMBIN0FG needs to be cleared by software. 0b = JMBI1 has no new data. 1b = JMBI1 has new data available.
	Toplevel: <<SYSJMBC {Register}>>
	@

SFRIE1 {Register}
	Interrupt Enable Register
	Chapter: 1.14.1
	Table: Table 1-12. SFRIE1 Register Description
	@ JMBOUTIE
		Bit: 7
		Type: RW
		Reset: 0h
		Description: JTAG mailbox output interrupt enable flag 0b = Interrupts disabled 1b = Interrupts enabled
	Toplevel: <<SFRIE1 {Register}>>
	@ JMBINIE
		Bit: 6
		Type: RW
		Reset: 0h
		Description: JTAG mailbox input interrupt enable flag 0b = Interrupts disabled 1b = Interrupts enabled
	Toplevel: <<SFRIE1 {Register}>>
	@ ACCVIE
		Bit: 5
		Type: RW
		Reset: 0h
		Description: Flash controller access violation interrupt enable flag 0b = Interrupts disabled 1b = Interrupts enabled
	Toplevel: <<SFRIE1 {Register}>>
	@ NMIIE
		Bit: 4
		Type: RW
		Reset: 0h
		Description: NMI pin interrupt enable flag 0b = Interrupts disabled 1b = Interrupts enabled
	Toplevel: <<SFRIE1 {Register}>>
	@ VMAIE
		Bit: 3
		Type: RW
		Reset: 0h
		Description: Vacant memory access interrupt enable flag 0b = Interrupts disabled 1b = Interrupts enabled
	Toplevel: <<SFRIE1 {Register}>>
	@ OFIE
		Bit: 1
		Type: RW
		Reset: 0h
		Description: Oscillator fault interrupt enable flag 0b = Interrupts disabled 1b = Interrupts enabled
	Toplevel: <<SFRIE1 {Register}>>
	@ WDTIE
		Bit: 0
		Type: RW
		Reset: 0h
		Description: Watchdog timer interrupt enable. This bit enables the WDTIFG interrupt for interval timer mode. It is not necessary to set this bit for watchdog mode. Because other bits in ~IE1 may be used for other modules, it is recommended to set or clear this bit using BIS.B or BIC.B instructions, rather than MOV.B or CLR.B instruction 0b = Interrupts disabled 1b = Interrupts enabled
	Toplevel: <<SFRIE1 {Register}>>
	@

SYSSNIV {Register}
	System NMI Vector Register
	Chapter: 1.15.9
	Table: Table 1-25. SYSSNIV Register Description
	@ SYSSNIV
		Bit: 15-0
		Type: R
		Reset: 0h
		Description: System NMI vector. Generates a value that can be used as address offset for fast interrupt service routine handling. Writing to this register clears all pending system NMI flags. 00h = No interrupt pending 02h = SVMLIFG interrupt pending (highest priority) 04h = SVMHIFG interrupt pending 06h = SVSMLDLYIFG interrupt pending 08h = SVSMHDLYIFG interrupt pending 0Ah = VMAIFG interrupt pending 0Ch = JMBINIFG interrupt pending 0Eh = JMBOUTIFG interrupt pending 10h = SVMLVLRIFG interrupt pending 12h = SVMHVLRIFG interrupt pending 14h = Reserved
	Toplevel: <<SYSSNIV {Register}>>
	@

UCSCTL0 {Register}
	Unified Clock System Control 0 Register
	Chapter: 5.4.1
	Table: Table 5-3. UCSCTL0 Register Description
	@ DCO
		Bit: 12-8
		Type: RW
		Reset: 0h
		Description: DCO tap selection. These bits select the DCO tap and are modified automatically during FLL operation.
	Toplevel: <<UCSCTL0 {Register}>>
	@ MOD
		Bit: 7-3
		Type: RW
		Reset: 0h
		Description: Modulation bit counter. These bits select the modulation pattern. All MOD bits are modified automatically during FLL operation. The DCO register value is incremented when the modulation bit counter rolls over from 31 to 0. If the modulation bit counter decrements from 0 to the maximum count, the DCO register value is also decremented.
	Toplevel: <<UCSCTL0 {Register}>>
	@

SYSRSTIV {Register}
	Reset Interrupt Vector Register
	Chapter: 1.15.10
	Table: Table 1-26. SYSRSTIV Register Description
	@ SYSRSTIV
		Bit: 15-0
		Type: R
		Reset: 02h- 3Eh (1)
		Description: Reset interrupt vector. Generates a value that can be used as address offset for fast interrupt service routine handling to identify the last cause of a reset (BOR, POR, PUC) . Writing to this register clears all pending reset source flags. 00h = No interrupt pending 02h = Brownout (BOR) (highest priority) 04h = RST/NMI (BOR) 06h = PMMSWBOR (BOR) 08h = Wakeup from LPMx.5 (BOR) 0Ah = Security violation (BOR) 0Ch = SVSL (POR) 0Eh = SVSH (POR) 10h = SVML_OVP (POR) 12h = SVMH_OVP (POR) 14h = PMMSWPOR (POR) 16h = WDT time out (PUC) 18h = WDT password violation (PUC) 1Ah = Flash password violation (PUC) 1Ch = Reserved 1Eh = PERF peripheral/configuration area fetch (PUC) 20h = PMM password violation (PUC) 22h to 3Eh = Reserved
	Toplevel: <<SYSRSTIV {Register}>>
	@

PM5CTL0 {Register}
	Power Mode 5 Control Register 0.
	Chapter: 2.3.8
	Table: Table 2-23. PM5CTL0 Register Description.
	@ LOCKLPM5
		Bit: 0
		Type: RW
		Reset: 0h
		Description: Lock I/O pin configuration upon entry to or exit from LPMx.5. When power is applied to the device, this bit, once set, can only be cleared by the user or via another power cycle. Note: This bit was formerly named LOCKIO, and some application reports and code examples may continue to use this terminology. 0b = I/O pin configuration is not locked and defaults to its reset condition. 1b = I/O pin configuration remains locked. Pin state is held during LPMx.5 entry and exit. voltage level triggers a POR.
	Toplevel: <<PM5CTL0 {Register}>>
	@


SYSCTL {Register}
	SYS Control Register
	Chapter: 1.15.1
	Table: Table 1-17. SYSCTL Register Description
	@ SYSJTAGPIN
		Bit: 5
		Type: RW
		Reset: 0h
		Description: Dedicated JTAG pins enable. Setting this bit disables the shared functionality of the JTAG pins and permanently enables the JTAG function. This bit can be set only once. After it is set, it remains set until a BOR occurs. 0b = Shared JTAG pins (JTAG mode selectable by SBW sequence) 1b = Dedicated JTAG pins (explicit 4-wire JTAG mode selection)
	Toplevel: <<SYSCTL {Register}>>
	@ SYSBSLIND
		Bit: 4
		Type: RW
		Reset: 0h
		Description: BSL entry indication. This bit indicates a BSL entry sequence detected on the Spy-Bi-Wire pins. 0b = No BSL entry sequence detected 1b = BSL entry sequence detected
	Toplevel: <<SYSCTL {Register}>>
	@ SYSPMMPE
		Bit: 2
		Type: RW
		Reset: 0h
		Description: PMM access protect. This controls the accessibility of the PMM control registers. Once set to 1, it only can be cleared by a BOR. 0b = Access from anywhere in memory 1b = Access only from the protected BSL segments
	Toplevel: <<SYSCTL {Register}>>
	@ SYSRIVECT
		Bit: 0
		Type: RW
		Reset: 0h
		Description: RAM-based interrupt vectors 0b = Interrupt vectors generated with end address TOP of lower 64KB of flash, FFFFh 1b = Interrupt vectors generated with end address TOP of RAM
	Toplevel: <<SYSCTL {Register}>>
	@

UCSCTL8 {Register}
	Unified Clock System Control 8 Register
	Chapter: 5.4.9
	Table: Table5-11.UCSCTL8 Register Description
	@ MODOSCREQEN
		Bit: 3
		Type: RW
		Reset: 0h
		Description: MODOSC clock request enable. Setting this enables conditional module requests for MODOSC. 0b = MODOSC conditional requests are disabled. 1b = MODOSC conditional requests are enabled.
	Toplevel: <<UCSCTL8 {Register}>>
	@ SMCLKREQEN
		Bit: 2
		Type: RW
		Reset: 1h
		Description: SMCLK clock request enable. Setting this enables conditional module requests for SMCLK 0b = SMCLK conditional requests are disabled. 1b = SMCLK conditional requests are enabled.
	Toplevel: <<UCSCTL8 {Register}>>
	@ MCLKREQEN
		Bit: 1
		Type: RW
		Reset: 1h
		Description: MCLK clock request enable. Setting this enables conditional module requests for MCLK 0b = MCLK conditional requests are disabled. 1b = MCLK conditional requests are enabled.
	Toplevel: <<UCSCTL8 {Register}>>
	@ ACLKREQEN
		Bit: 0
		Type: RW
		Reset: 1h
		Description: ACLK clock request enable. Setting this enables conditional module requests for ACLK 0b = ACLK conditional requests are disabled. 1b = ACLK conditional requests are enabled.
	Toplevel: <<UCSCTL8 {Register}>>
	@