#include <iostream>
#include <Winsock2.h>
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
    char buff[256];										//recieve string size=256
    addr.sin_family=AF_INET;							// set socket as internet protocol
    addr.sin_port=htons(1023);							//pot=1023
    addr.sin_addr.S_un.S_addr=inet_addr("127.0.0.1"); //aim ip=127.0.0.1
	
	bind(s,(sockaddr*)&addr,sizeof(addr));// bind address and port to the socket



    printf("UDP Client start!\r\n");    //show message on screen before sending string to server

	char servercmd[]="Link Start!!\r\n";
		
		 if(sendto(s,servercmd,sizeof(servercmd),0,(sockaddr*)&addr,n)!=0)// send commend to server
		{
        recvfrom(s,buff,sizeof(buff),0,(sockaddr*)&addr,&n); //start to recieve data

		if(buff[0]=='T')                                  //check data first letter
			{
        printf("Received Data from server: %s \r\n",buff); //print the recieved string
        	}else
			{
			printf("Recieve data from server fail. \r\n");
			}
        

     
        closesocket(s);// close socket

        WSACleanup();// clean socket

		printf("Client has ended, press Enter to exit.. \r\n"); 
    	}
    
while (1)
{
if(getchar()){break;}
}
}