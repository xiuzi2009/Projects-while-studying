//Jingtian Li---Galileo and Pic16f18855. This code is for PIC. Need to download the code to PIC then run it.
//Galileo works on 3.3v, Pic on 5v
//Details on Lab2 Direction -micprocessor 2 summer verson.
/*
   STROBE   RA2
   PIN7     RC2
   PIN8     RC3
   PIN9     RC4
   PIN10    RC5
 */

#include <pic16f18855.h>
#pragma config WDTE = OFF     // Watchdog Timer Enable bit (WDT disabled)
#define  MSG_RESET 0x00
#define  MSG_GET   0x02
#define  MSG_ACK   0xE
#define  MSG_NOTHING 0x0F

unsigned int ADC_result;



void Set_send()
{
/*	
   1.set RA2 as input
   2.set RC2 RC3 RC4 RC5 as output
   3.set them as digital I/O */

	ANSELCbits.ANSC2=0;				 
	ANSELCbits.ANSC3=0;
	ANSELCbits.ANSC4=0;
	ANSELCbits.ANSC5=0;
	ANSELAbits.ANSA2=0;

	TRISCbits.TRISC2=0;
	TRISCbits.TRISC3=0;
	TRISCbits.TRISC4=0;
	TRISCbits.TRISC5=0;
	TRISAbits.TRISA2=1;

	LATC = 0x00;
}
void SendMsg(char message)
{

	Set_send();						//initialization
    LATCbits.LATC5=message%2;   	//set value to A5, A5 is the Lowest bits
	message=message/2;				//shift right the message for remove lowest pin
	LATCbits.LATC4=message%2;
	message=message/2;
	LATCbits.LATC3=message%2;
	message=message/2;
	LATCbits.LATC2=message%2;
 
 	while(PORTAbits.RA2==0);		//when RA2 is 0, that's preparing stage. wait until prepare period is done
	while(PORTAbits.RA2==1);		//hold it until send period is done
}

void Set_receive()
{
	/*
   1.set RA2 as input
   2.set RC2 RC3 RC4 RC5 as input
   3.set them as digital I/O
   */

	ANSELCbits.ANSC2=0;
	ANSELCbits.ANSC3=0;
	ANSELCbits.ANSC4=0;
	ANSELCbits.ANSC5=0;
	ANSELAbits.ANSA2=0;

	TRISCbits.TRISC2=1;
	TRISCbits.TRISC3=1;
	TRISCbits.TRISC4=1;
	TRISCbits.TRISC5=1;
	TRISAbits.TRISA2=1;

}

unsigned char Receive_msg()
{
	unsigned char message;
    Set_receive();                 //initialization
	
	message = PORTCbits.RC2*8+PORTCbits.RC3*4+PORTCbits.RC4*2+PORTCbits.RC5*1;  //read value from pins then combine them to a value.
	 
	while(PORTAbits.RA2==1);  	   // wait recieve stage is over. 
	return message;

}

void ADC_Inital()
{
    TRISA0 = 1;    				// set RA0 is input (ADC)
    ANSELAbits.ANSA0=1; 		//set RA0 is analog port
    ADPCH=0x00;					//choose RA0 as analog port
    ADCON1 = 0xc0;                  //right justified
    ADCON0 = 0x84;                   //adc on, fosc/64
}
unsigned int ADC_Get()
{ unsigned int adcval;
    GO_nDONE=1;						//start the converting
	while(GO_nDONE);                //wait until conversion is finished
    adcval = ((ADRESH<<8)|(ADRESL));    //store the result      
    return adcval;  
}

void main()
{	
	int part[3];
	int i;
    char Recieved_msg;
	
	/* 1.wait strobe high
    2.wait strobe low
    3.read the data
    4.wait strobe high
    5.return the data*/
    Set_receive();    //prepare for get commend from the Galileo
    ADC_Inital();	  //prepare for AD covnert
    
	 while(1)
		{
			if (PORTAbits.RA2==1)                  //Only start when strobe is high.
				{        
                     Recieved_msg=Receive_msg();   //read first message from Galileo which is commend

			switch (Recieved_msg)				   //compare with commends list
					{ 
						case MSG_ACK:
						SendMsg(MSG_ACK);		   //send acknowledgement back
						break;
						
						case MSG_GET:			   //get value from ADCresult, cut the result into 3 parts, send them back separately
						ADC_result=ADC_Get();
						part[0]=ADC_result/16/16;                     //shift 8 bits for getting the top 3 bits.
						part[1]=ADC_result/16-part[2]*16;             //shift 4 bits then remove top 3 bits, middle 4 bits is left.
						part[2]=ADC_result-part[1]*16-part[2]*16*16;  //get the last 4 bits
						for (i = 0; i < 3; i++)						  //send 3 times
							{
							SendMsg(part[i]);
							}
						SendMsg(MSG_ACK);							  //and a acknowledgement for checking
						break;

						default:                                      //if get any other commend, means connection has issue. Send the commend back for finding it out.
						SendMsg(Recieved_msg);
						break;
							
					}
				}
			else
				{
				LATC=0x00;
				}
    
		} 
}
