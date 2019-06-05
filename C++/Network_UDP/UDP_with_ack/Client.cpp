 #include <iostream>					// basic I/O lib
#include <Winsock2.h>				// for sock operation
#include <fstream.h>				// for file operation

#pragma comment(lib,"WS2_32.lib")//use win socket library

int main(){

    //initial
    WSADATA data;
    WORD w=MAKEWORD(2,0);//set socket version== 2.0

    WSAStartup(w,&data); //WSA start
	
    SOCKET s;   //create socket--> s
   
    s=socket(AF_INET,SOCK_DGRAM,0);// set s as UDP socket

    //Set address and port
    sockaddr_in addr;                                   //define add as sockaddr class
    int n=sizeof(addr);									// get IP length
  
    addr.sin_family=AF_INET;							// set socket as internet protocol
    addr.sin_port=htons(1023);							//pot=1023
    addr.sin_addr.S_un.S_addr=inet_addr("127.0.0.1"); //aim ip=127.0.0.1
	
	bind(s,(sockaddr*)&addr,sizeof(addr));// bind address and port to the socket

	int nNetTimeout= 2000;                //2000ms
if (SOCKET_ERROR ==  setsockopt(s,SOL_SOCKET, SO_RCVTIMEO, (char *)&nNetTimeout,sizeof(int))) 
 { 
         printf("Set Ser_RecTIMEO error !\r\n"); 
 } 
	///////////////////////////////////////////////blow parts are changed for phrase 2//////////////// 
	#define BUFFER_LEN 1024    // define packet size =1024
	#define FILE_NAME  "test.jpeg"  //   set a interface for file name
	  char *endsignal="Transmission complete @@@";

	  struct DefPack 
		  { 
		  int ack;
		  int checksum;
		  char buff[BUFFER_LEN];//recieve string size
		  
		  } sendpacket, recievepacket;		  // Define packet and its including

		int currentack=0;						// used for store current ack and compare 

	  int i=0;									  // set for counting number of packets

///////////////////////////////////////////////blow parts are changed for phrase 3//////////////// 
                 	
						

	  
	  	printf(" \r\n");
		printf("Active rdt 3.0 fixing function? \r\n");
		printf("(Y/N):");
		char rdtswtich;									//recieve mode choice

		cin>>rdtswtich;							
		bool rdtact;									// flag for control rdt
	   switch (rdtswtich)
	{
	case 'Y':
		rdtact=1;
		printf("Rdt 3.0 active");
		break;
	case 'y':
		rdtact=1;
		printf("Rdt 3.0 active");

		break;
	case 'N':
		rdtact=0;
		printf("Rdt 3.0 unactive");

		break;	
	case 'n':
		rdtact=0; 
		printf("Rdt 3.0 unactive");

		break;	
	default:
		rdtact=1;
		printf("Unexpected input, default active rdt 3.0. \r\n");
		break;	
		
	}

	 FILE *fp = fopen(FILE_NAME, "wb"); 					// open file and Write as binary 
	 if(NULL != fp) 
	 { 

	
	printf(" \r\n");
    printf("UDP Client start!\r\n");    					//show message on screen before sending string to server

	char servercmd[]="Link Start!!\r\n";
	printf("\r\n");
		int check;												 // for check the longth of packet
	

	 unsigned int checksum_calculating(char *pBuffer, int nSize); // annnouce subfunction
		sendpacket.ack=0,recievepacket.ack=0,sendpacket.checksum=0,recievepacket.checksum=0;
		 if(sendto(s,servercmd,sizeof(servercmd),0,(sockaddr*)&addr,n)!=SOCKET_ERROR)// send commend to server
		{

		while (TRUE)
			{
		  printf ("\r\n"); 
		  printf ("_!_!_!___recieving packet start from here_______\r\n"); 
		  check= recvfrom(s,(char*)&recievepacket,sizeof(recievepacket),0,(sockaddr*)&addr,&n); //start to recieve data
		  printf("Get %dth of data which is %d. \r\n",i=i+1,sizeof(recievepacket.buff));
		  printf ("Recieve %d of data \r\n", sizeof(recievepacket.buff));  
		  printf ("Recieve ack=%d ack \r\n", recievepacket.ack); 
		  printf ("Recieve checksum=%d\r\n", recievepacket.checksum); 
		if (strncmp(recievepacket.buff, endsignal,25)==0) ///     used for end file
			{
			  printf ("Recieve %s \r\n", recievepacket.buff); 
			  break;
			}
		  
		sendpacket.checksum=checksum_calculating(recievepacket.buff, sizeof(recievepacket.buff));					 // calculate checksum for recieved packet
		printf("Get checksum from packet which is %d ",sendpacket.checksum);
		if (sendpacket.checksum!=recievepacket.checksum&&rdtact==1)							// if the checksum test fail and rdt mode is active
			{sendpacket.checksum=0;												// report checksum error to server
		printf("Checksum fail\r\n");
			
			}
		else{
			sendpacket.checksum=1;              									 // if the rdt mode is unactive, ignore error and set checksum always=1
			}
			 
			printf("--- current stored ack= %d . \r\n",currentack);

			 
			if ((sendpacket.checksum==0||currentack!=(recievepacket.ack))&&(rdtact==1)) 						//when rdt is open and find any error in process of transport
			{
			
			printf("**Detect error,cancle saving packet! **\r\n");
			i=i-1;
			memset(recievepacket.buff, 0, sizeof(recievepacket.buff));											// Clean buffer area,wait for re-send
			
			}
			else{																	//if not, the packet is intact, write data into files
				fwrite(recievepacket.buff, 1, sizeof(recievepacket.buff), fp);											//write packet into file
				printf("write in file!\r\n");
				memset(recievepacket.buff, 0, sizeof(recievepacket.buff));// Clean buffer area
				currentack++;
				sendpacket.ack=recievepacket.ack;															//set ack == revack
				if (sizeof(recievepacket.buff)!=1024){break;	}											//file end? break
				}

				 if(sendto(s,(char*)&sendpacket,sizeof(sendpacket),0,(sockaddr*)&addr,n)!=0	)//send recieved ack back to server

				 {printf("Have Sent ack %d back to server. \r\n",recievepacket.ack); 
				
				printf("Have Sent checksum back %d to server. \r\n",sendpacket.checksum);
															
				
				printf ("\r\n"); 
				printf ("___recieving packet END from here____!_!_!___________\r\n"); 
												}
				 else
				 	{
				 	printf("Send data error.\r\n",sendpacket.buff);
					break;
				 	}

												//	if the this is the last of packet, break the Loop and end the client, for preventing unexpected lost packets of file tail.					
        	//	}else
			//	{
			//	printf("Recieving data process end. \r\n");
			//	break;
			//	}
		 		}
		 	}
	 }
		else 
			{printf("File:\t%s Can Not Open To Write\n", FILE_NAME);
			}
     	 fclose(fp);	//close file
        closesocket(s);// close socket

        WSACleanup();// clean socket

		printf("Client has ended, press Enter to exit.. \r\n"); 
    	
    
while (1)
{
if(getchar())
	{break;
	}
}
return 0;
	}

	unsigned int checksum_calculating(char *pBuffer, int nSize)
	{
		unsigned long dwCksum = 0;		  // caculate 32bits, the fucntion will caculate each 2 BYTE together, then get a int value
		while(nSize > 1)				  
		{
			dwCksum += *pBuffer++;
			nSize -= sizeof(unsigned short);
		}
		// Add the last byte by with the sum if it is the only one left
		if (nSize)
		{
			dwCksum += *(unsigned char*) pBuffer;
		}
		// add high and low bits
		dwCksum = (dwCksum >> 16) + (dwCksum & 0xffff);
		// add again for avoiding to left high bits
		dwCksum += (dwCksum >> 16);
		// return value to caller
		return (char) (~dwCksum);
	}
	
	/*reference:
	http://www.jb51.net/article/53735.htm
	http://blog.csdn.net/btooth/article/details/995097
	http://www.cnblogs.com/phinecos/archive/2009/01/05/1369761.html

	
	*/

