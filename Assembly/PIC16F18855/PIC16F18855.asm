; Code by Jingtian Li for Micprocessor II Lab 1. Chip: Pic16F18855
; Analog input= RA4   LED= RC0  Power supply=3.4V

#include <P16F18855.inc>


    errorlevel -302                     ;supress the 'not in bank0' warning

    ; -------------------LATC-----------------
    ; Bit#:  -7---6---5---4---3---2---1---0---
    ; LED:   ---------------|DS4|DS3|DS2|DS1|-
    ; -----------------------------------------
   cblock 0x70                         ;shared memory location that is accessible from all banks
    Result
   endc

    ORG 0                               ;start of code at address 0x0000
Start:
    BANKSEL TRISA                       ;already in bank1
    bsf            TRISA, 4            ;Potentimator is connected to RA4....set as input
    
     BANKSEL        ANSELA              ;bank3
     bsf            ANSELA, 4           ;analog for ADC

     BANKSEL ADCON0
     movlw          b'10000100'          
    movwf          ADCON0		 ;enable the ADC, right justified   
     
    BANKSEL ADREF                       ;ADref is Vdd, ADnref is Vss.
     MOVLW         B'000000000'
     MOVWF  ADREF
     
     BANKSEL ADCLK
     MOVLW	    b'00000011'		 ;Fosc/8 speed
    movwf ADCLK
     
     banksel	    ADPCH
     movlw	    b'00000100'         
     movwf	    ADPCH		;select ANA4 as analog input
     
                                        ;Configure the LEDs
     banksel        TRISC               ;bank1
     movlw         b'11111110'
     movwf           TRISC               ;BIT0 of PORTC an output
     
     banksel        LATC                ;select the bank where LATC is
     movlw          b'00000001'         ;start by setting DS0 ON
     movwf          LATC                ;write contents of the working register to the latch

MainLoop:
                                        ;Start the ADC
    nop                                 ;requried ADC delay of 8uS => (1/(Fosc/4)) = (1/(500KHz/4)) = 8uS
    banksel         ADCON0
    BSF ADCON0,ADGO ;Start conversion          ;start the ADC
    BTFSC ADCON0,ADGO ;Is conversion done?         ;this bit will be cleared when the conversion is complete
    goto            $-1                 ;keep checking the above line until GO bit is clear
    movf           ADRESH, w           ;Get the low 4 MSbs (remember that the ADC result is LEFT justified!)
    MOVWF Result

   
    BTFSS Result, 0     ; Check the last bit of ADRESH to switch the LED on/off
    goto Condition1
    movlw          b'00000001' 
    goto Condition2
 Condition1:
    movlw          b'00000000' ;
 Condition2:
    banksel         LATC
    movwf           LATC                ;move into the LEDs
   bra  MainLoop
end