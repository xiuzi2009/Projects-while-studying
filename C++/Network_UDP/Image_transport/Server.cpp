

#include <iostream>					// basic I/O lib
#include <Winsock2.h>				// for sock operation
#include <fstream.h>				// for file operation

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
 
    addr.sin_family=AF_INET;// set socket as internet protocol
    addr.sin_port=htons(1023);//pot=1023
    addr.sin_addr.S_un.S_addr=inet_addr("127.0.0.1");// Auto get IP address

    bind(s,(sockaddr*)&addr,sizeof(addr));// bind address and port to the socket as server

///////////////////////////////////////////////blow parts are changed for phrase 2//////////////// 

	#define BUFFER_LEN 1024    // define packet size =1024
	#define FILE_NAME  "test.jpeg"  //   set a interface for file name
	char buff[BUFFER_LEN];				//recieve string size
	
     FILE *fp = fopen(FILE_NAME, "rb");  // open file and read as binary
	if(fp != NULL)  //Prepare files
    { 
      
    printf("File %s loads sucessfully! \r\n", FILE_NAME);
	


	 fseek (fp , 0 , SEEK_END);   //move fp to end
	 long lSize = ftell (fp); 		  //get the longth of file
	 rewind (fp);				  //move fp back first line
	 printf("The size of %s is %d. \r\n",FILE_NAME,lSize);// output
	 
	int blocknum= lSize/BUFFER_LEN+1;  // calculate how many full-packets are necessary
	int i=1;						//for counts how many full-packets has sent
	char buffer[BUFFER_LEN];          //set buffer size
	int len;  						// get return value of fread
    printf("UDP server has start\r\n");
	int remaindata;					// for conut size of left data 

	
	
	while(TRUE)
		{ // always monitor the port
	if (i==blocknum)												//detect whether is the last of packet
		{
		remaindata=lSize-BUFFER_LEN*(i-1);
		}
		else {remaindata =BUFFER_LEN;}

      if(len = fread(buffer,remaindata, 1, fp) > 0) 
			{															// printf("%s\r\n len=%d\r\n",buffer,len);  //only for debugging
	  
        if(recvfrom(s,buff,sizeof(buff),0,(sockaddr*)&addr,&n)!=0){  // if get any char
            printf("%s connected \r\n",inet_ntoa(addr.sin_addr));    // print IP on screen
            printf("Get commend from client: %s\r\n",buff);          // print client's string
            
        
			 if(sendto(s,buffer,remaindata,0,(sockaddr*)&addr,n)!=0)//Send data back to client
			{printf("Have Sent %d size of data (%d of %d) to client. \r\n",remaindata,i,blocknum); 
			 memset(buffer, 0, sizeof(buffer)); }  					 // Clean buffer area
			else
				{
			printf("Send data error.\r\n",buff);
			break;
				}
        	}
           // 
        }
		else
        	{
        	break;
        	}
		i=i+1;
    }
	

     fclose(fp);	//close file
    closesocket(s);// close socket
	}
	else
		{
		printf("Open file failed.\r\n"); 
		}


    WSACleanup();// clean socket
printf("Server has ended, press Enter to exit.. \r\n"); 
    	
  while (1)
{
if(getchar()){break;}
}
  return 0;
}

/*reference:
http://www.jb51.net/article/53735.htm
http://blog.csdn.net/btooth/article/details/995097

*/
