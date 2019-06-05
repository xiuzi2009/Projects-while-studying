

#include <iostream>
#include <Winsock2.h>

#pragma comment(lib,"WS2_32.lib")

int main(){
//initial
    WSADATA data;//Define constructer for Sockets implementation
    WORD w=MAKEWORD(2,0);//set socket version== 2.0
    WSAStartup(w,&data);//WSA start

    

    SOCKET s;
    s=socket(AF_INET,SOCK_DGRAM,0);// set s as UDP socket

    sockaddr_in addr;              //define add as sockaddr class							
    int n=sizeof(addr);            // get IP length
    char buff[256];                //recieve string size=256
    addr.sin_family=AF_INET;// set socket as internet protocol
    addr.sin_port=htons(1023);//pot=1023
    addr.sin_addr.S_un.S_addr=inet_addr("127.0.0.1");// Auto get IP address

    bind(s,(sockaddr*)&addr,sizeof(addr));// bind address and port to the socket as server

    printf("UDP server has start\r\n");
    char datastring[]="This is data..3.14159265358979323846264338327950288419716939937510 \r\n";//String needs to be sent
    while(true){ // always monitor the port
        
        if(recvfrom(s,buff,sizeof(buff),0,(sockaddr*)&addr,&n)!=0){  // if get any char
            printf("%s connected \r\n",inet_ntoa(addr.sin_addr));    // print IP on screen
            printf("Get commend from client: %s\r\n",buff);          // print client's string
            
            if(sendto(s,datastring,sizeof(datastring),0,(sockaddr*)&addr,n)!=0)//Send data back to client
			{printf("Have Sent data to client. \r\n");  }   // print client's string
			else
				{
			printf("Send data error.\r\n",buff);	
				}
            break;
        }
    }

    
    closesocket(s);// close socket

    WSACleanup();// clean socket
printf("Server has ended, press Enter to exit.. \r\n"); 
    	
  while (1)
{
if(getchar()){break;}
}
}