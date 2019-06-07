//Jingtian Li---Galileo and Pic16f18855. This code is for Galileo. Need to run Yocuto system first 
//Galileo works on 3.3v, Pic on 5v
//Details on Lab2 Direction -micprocessor 2 summer verson.
#include <stdlib.h>
#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
/*
gpio6==pin4 -->  strobe
gpio38=pin7  --bit3
gpio40==pin8 --bit2
gpio4==pin9  --bit1
gpio10==pin10--bit0

*/

#define  MSG_RESET 0x00
#define  MSG_GET   0x02
#define  MSG_ACK   0x0E
#define  MSG_NOTHING 0x0F
#define  PIN4      "6"
#define  PIN7      "38"
#define  PIN8      "40"
#define  PIN9       "4"
#define  PIN10     "10"
#define INPUT  1
#define OUTPUT 0


//open GPIO and set the direction
void initialGPIO()

{
system("echo 6 > /sys/class/gpio/export");   //set control to pin4
system("echo 36 > /sys/class/gpio/export"); 
system("echo 37 > /sys/class/gpio/export"); 


system("echo 38 > /sys/class/gpio/export"); //set control to pin7

system("echo 40 > /sys/class/gpio/export"); //set control to pin8

system("echo 4 > /sys/class/gpio/export"); //set control to pin9
system("echo 22 > /sys/class/gpio/export"); 



system("echo 10 > /sys/class/gpio/export"); //set control to pin10
system("echo 26 > /sys/class/gpio/export"); 
system("echo 27 > /sys/class/gpio/export"); 



}


void closeGPIO()
{
	system("echo 6 > /sys/class/gpio/unexport"); //cancle control to pin4
	system("echo 36 > /sys/class/gpio/unexport");
	system("echo 37 > /sys/class/gpio/unexport");
	
	system("echo 38 > /sys/class/gpio/unexport");  //cancle control to pin7
	
	system("echo 40 > /sys/class/gpio/unexport"); //cancle control to pin8
	
	system("echo 4 > /sys/class/gpio/unexport");//cancle control to pin9
	system("echo 22 > /sys/class/gpio/unexport");
	
	system("echo 10 > /sys/class/gpio/unexport"); //cancle control to pin10
	system("echo 26 > /sys/class/gpio/unexport");
	system("echo 27 > /sys/class/gpio/unexport");

}

//write value
void Set_write_GPIO()
{
	
    system("echo out > /sys/class/gpio/gpio6/direction"); // set write to pin4
	system("echo out > /sys/class/gpio/gpio36/direction");
	
	system("echo out > /sys/class/gpio/gpio38/direction");//pin7
	
	system("echo out > /sys/class/gpio/gpio40/direction");//pin8
	
	system("echo out > /sys/class/gpio/gpio4/direction"); //pin9
	system("echo out > /sys/class/gpio/gpio22/direction");
	
	system("echo out > /sys/class/gpio/gpio10/direction"); //pin10
	system("echo out > /sys/class/gpio/gpio26/direction");
	system("echo out > /sys/class/gpio/gpio27/direction");
	
}

void Set_read_GPIO()
{
	
    system("echo out > /sys/class/gpio/gpio6/direction");// set write to pin4
	
	system("echo in > /sys/class/gpio/gpio38/direction");//pin7
	
	system("echo in > /sys/class/gpio/gpio40/direction");//pin8
	
	system("echo in > /sys/class/gpio/gpio4/direction");//pin9
	system("echo in > /sys/class/gpio/gpio22/direction");


	system("echo in > /sys/class/gpio/gpio10/direction");//pin10
	system("echo in > /sys/class/gpio/gpio26/direction");
	system("echo in > /sys/class/gpio/gpio27/direction");

}

void writeGPIO(char message)  //write value
{
	int i=0;
	int bit=0;

	system("echo 0 > /sys/class/gpio/gpio6/value");   //strobe high
	usleep(10000);
 
	for (i = 0; i < 4; i++)                          //write 4 times for 4 pins
		{
		 bit=message%2;								//get the last bit value of message
		 message=message/2;							//message shift right, to remove lowest bit	
	

		switch (i)
			{
			case 0:
			if (bit==0)								//set the value to corresponding pins
				 {
					system("echo 0 > /sys/class/gpio/gpio10/value");
				 }
		 	  else
		   		{
					system("echo 1 > /sys/class/gpio/gpio10/value");
				}
					break;
			case 1:
			if (bit==0)						
				{
					system("echo 0 > /sys/class/gpio/gpio4/value");
			 	}
		   	else
		   		{
					system("echo 1 > /sys/class/gpio/gpio4/value");
				}
					break;
			case 2:
			 if (bit==0)
				 {
					system("echo 0 > /sys/class/gpio/gpio40/value");
			 	}
		   	else
		   		{
					system("echo 1 > /sys/class/gpio/gpio40/value");
				}
					break;
			case 3:
			 if (bit==0)
				 {
					system("echo 0 > /sys/class/gpio/gpio38/value");
			 	}
		   	else
		   		{
					system("echo 1 > /sys/class/gpio/gpio38/value");
				}
				break;
			}

		}

	system("echo 1 > /sys/class/gpio/gpio6/value"); //set strobe high

	usleep(20000);									//wait 20ms

	system("echo 0 > /sys/class/gpio/gpio6/value");	//set strobe low

}



int readGPIO()
{
   FILE *f;
   int i, ioresult[4],convertedresult;
   char valuelocation[29];
   int gpio[4]={10,4,40,38};
   char var[4];
	/*
	gpio6==pin4 -->  strobe
	gpio38=pin7  --bit3
	gpio40==pin8 --bit2
	gpio4==pin9  --bit1
	gpio10==pin10--bit0
	
	*/

  
	system("echo 0 > /sys/class/gpio/gpio6/value"); //set strobe low
	usleep(300000);									// wait a little longer time for ADC coverting is done
	
	 system("echo 1 > /sys/class/gpio/gpio6/value");// set strobe high
	usleep(30000);									//wait for stable
	for(i=0;i<4;i++)								//read pin value from "/sys/class/gpio/gpio/value" file 4 times
	{
		sprintf(valuelocation,"/sys/class/gpio/gpio%d/value",gpio[i]);
		f=fopen(valuelocation,"r"); 
		fread(var,sizeof(var)+1,1,f);
		ioresult[i]=atoi(var);
		fclose(f);
	}
		
	convertedresult=ioresult[3]*8+ioresult[2]*4+ioresult[1]*2+ioresult[0]*1; // combine these value to one value
	printf("Read result is %d \n",convertedresult);
	system("echo 0 > /sys/class/gpio/gpio6/value");				///set strobe low	
	return convertedresult;
}


//main



int main()
{
	int result,i,ack;
	int choice=1;
	initialGPIO();
	printf("\n");
	printf("Hello user!\n");


	while (choice!='0')                       //0 is the choice for quit
		{
		printf("*****************************************************************\n");
		printf("1 for Ping test.\n");
		printf("2 for read ADC value.\n");
		printf("0 for quit.\n");
		printf("number=>");
		choice=getchar();
		getchar();							 //for avoid a final enter signal
	printf("\n");
			switch (choice)
				{
				case '1':
					printf("Ping test-->start!\n");   //for testing whether the connection is well. set--send--set--recieve. the testing word is MSG_ACK== E == 14
					Set_write_GPIO();
		
					writeGPIO(MSG_ACK);

					Set_read_GPIO();
	 
					ack = readGPIO();


					if (ack==MSG_ACK)
						{
						printf("Pic is connected well!\n");
						}
					else
						{
						printf("Communication is failed!\n");
						}
					break; 
				case '2':
					Set_write_GPIO();              //for getting ADC value from PIC. Read three times, total 8*3=24 bits. However, only 10 bits is used because of the limitation of PIC's ADCresult.
		
					writeGPIO(MSG_GET);
					result=0;
					
					
					for (i = 0; i < 3; i++)
						{   Set_read_GPIO();
							result = result*16 + readGPIO();
						}
					Set_read_GPIO();
					ack = readGPIO();			 // one more extra read for get MSG_ACK
						if (ack==MSG_ACK)
						{
						printf("Read ADC is successful!\n");
						}
					else
						{
						printf("Read ADC is failed!\n");
						}
					
					printf("get value from pic which is %d, hex is %x \n", result, result);
					
					
					break;
						
				case '0':						//zero for quit
					printf("Prepare for quit.\n");
					break;

				default :
					printf("Wrong commend, try again\n");
					break;
				}
 		printf("\n");
		}
	Set_write_GPIO();                          //once quit, clear bits and release the control of the pins.
	writeGPIO(MSG_RESET);
	closeGPIO();
	printf("Bye! \n");

return 0;
}

