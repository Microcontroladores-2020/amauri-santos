INICIO
	BSF STATUS, RP0
	CLRF TRISB
	BCF STATUS, RP0
	MOVLW 0X01
	MOVWF PORTB
LOOP	
	BTFSC PORTB, 7
	GOTO RESET
	NOP
	RLF PORTB, 1
	GOTO LOOP
RESET
	MOVWF PORTB
	GOTO LOOP