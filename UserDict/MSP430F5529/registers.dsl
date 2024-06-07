#NAME "MSP430F5529-registers"
#INDEX_LANGUAGE "English"
#CONTENTS_LANGUAGE "English"

SYSBERRIV
	Bus Error Interrupt Vector Generator. The offset value in SYSBERRIV can be added inside the NMI routine to automatically jump to the appropriate routine. In this way, the SYSBERRIV can be thought of as an extension to the user NMI vectors. Chapter 1.3.7.2

{JMBOUT0 and }JMBOUT1
JMBOUT0{ and JMBOUT1}
	Two 16-bit registers are available for outgoing messages to the JTAG port. JMBOUT0 is only used when using 16-bit transfer mode (JMBMODE = 0). JMBOUT1 is used in addition to JMBOUT0 when using 32-bit transfer mode (JMBMODE = 1). When the application wishes to send a message to the JTAG port, it writes data to JMBOUT0 for 16-bit mode, or JMBOUT0 and JMBOUT1 for 32-bit mode.

{JMBIN0 and }JMBIN1
JMBIN0{ and JMBIN1}
Two 16-bit registers are available for incoming messages from the JTAG port. Only JMBIN0 is used when in 16-bit transfer mode (JMBMODE = 0). JMBIN1 is used in addition to JMBIN0 when using 32-bit transfer mode (JMBMODE = 1). When the JTAG port wishes to send a message to the application, it writes data to JMBIN0 for 16-bit mode, or JMBIN0 and JMBIN1 for 32-bit mode.

PMMCTL1 {Register}
	Power Management Module Control Register 1
	Chapter: 2.3.2
