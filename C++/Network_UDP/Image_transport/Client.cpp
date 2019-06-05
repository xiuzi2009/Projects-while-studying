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


	///////////////////////////////////////////////blow parts are changed for phrase 2//////////////// 
	#define BUFFER_LEN 1024    // define packet size =1024
	#define FILE_NAME  "test.jpeg"  //   set a interface for file name

	  char buff[BUFFER_LEN];					  //set recieve buffer size
	  int i=0;									  // set for counting number of packets

	 FILE *fp = fopen(FILE_NAME, "wb"); // open file and Write as binary 
	 if(NULL != fp) 
	 { 
	  	
	   
	

    printf("UDP Client start!\r\n");    //show message on screen before sending string to server

	char servercmd[]="Link Start!!\r\n";
		int check;		
		 if(sendto(s,servercmd,sizeof(servercmd),0,(sockaddr*)&addr,n)!=SOCKET_ERROR)// send commend to server
		{

		while (TRUE)
			{

		  check= recvfrom(s,buff,sizeof(buff),0,(sockaddr*)&addr,&n); //start to recieve data
		  
		  
			if(check>0)																//check whether the packets arrive successfully.
				{
        		printf ("Recieve %d of data \r\n", check);                         //printf("Received Data from server: %s \r\n",buff); //print the recieved string  only for debugging
        		printf("Get %d of data which is %d. \r\n",i=i+1,check);

				fwrite(buff, 1, check, fp);									//write data into files
				memset(buff, 0, sizeof(buff));								 // Clean buffer area
				sendto(s,servercmd,sizeof(servercmd),0,(sockaddr*)&addr,n);	//Send a message to server to get next packet
				if (check!=1024){break;	}									//	if the this is the last of packet, break the Loop and end the client, for preventing unexpected lost packets of file tail.					
        		}else
				{
				printf("Recieving data process end. \r\n");
				break;
				}
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
	/*reference:
	http://www.jb51.net/article/53735.htm
	http://blog.csdn.net/btooth/article/details/995097
	
	*/

