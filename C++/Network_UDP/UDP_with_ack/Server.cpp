#include <iostream>					// basic I/O lib
#include <Winsock2.h>				// for sock operation
#include <fstream.h>				// for file operation
#include <string.h>                // for support string operation
//#include <ws2_32.lib>              // for phase 4

#pragma comment(lib,"WS2_32.lib")

int main(){
//initial socket//////////////////////////////////////////

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
	int nNetTimeout= 2000;                //set time out 2000ms

///////////////////////////////////////////////blow parts are changed for phrase 3 update//////////////// 

	#define BUFFER_LEN 1024    // define packet size =1024
	#define FILE_NAME  "test.jpeg"                  //   set a interface for file name	
	
	struct DefPack 
	{ 
	int ack;
	int checksum;
  	char buff[BUFFER_LEN];                          // buffer used for send or receive data
	} sendpacket, recievepacket,errorpacket;        // Define packet and its including
	recievepacket.checksum=1;
	recievepacket.ack=0;
	int delaycounter=0;
    FILE *fp = fopen(FILE_NAME, "rb");  // open file and read as binary
	if(fp != NULL)  //Prepare files
    { 
      
    printf("File %s loads sucessfully! \r\n", FILE_NAME);
	


	 fseek (fp , 0 , SEEK_END);   //move fp to end
	 long lSize = ftell (fp); 	  //get the longth of file
	 rewind (fp);				  //move fp back first line
	 printf("The size of %s is %d. \r\n",FILE_NAME,lSize);// output file size 
	int blocknum= lSize/BUFFER_LEN+1;  // calculate how many full-packets are necessary
	int i=1;						//for counts how many full-packets has sent
	int len=1;  						// get return value of fread
    printf("UDP server has start\r\n");
	int remaindata=0;					// for conut size of left data 
	int overtime=0;						// added for phase 4, flag of overtime
	int buffcheck=0;
	
	///////////////////////////////////////blow parts are changed for phrase 3 improved
	unsigned int checksum_calculating(char *pBuffer, int nSize); //  announce subfunction which used for caculating checksum 
	//variate for sequence													 
	bool revack=0;										 //variate for recieve ack number
    int opinion,probability;							 // opinion for choicing running mode.probability for choice error chance 
	int sendflag=0;									     // flag for whether should send normal packet instead of error packet
	sendpacket.ack=0;                                    //inital sendpacket ack

	//////////////////////////////////////blow parts are changed for phrase 5 ////////////////////////
	int get_seqnumber(int num, int times);           //for auto caculate seqnumber
	int window_upper_limit=0;  						//upper flag of the window,start from 1
	int window_lower_limit=0;							//lower flag of the window
	int window_size=10;	//right now the size of window is 10
	int j=0; //for test
	int seqnum=0;  // used for comparing with ack
	int framenum=0;//used for control frames
	int save=-1;    // for save frame number
	int sendcount=0;
	
	DefPack frame[10];
	for (j = 0; j <=9; j++)                           //initialize frames
		{
		frame[j].ack=j;
		memset(frame[j].buff, 0, sizeof(frame[j].buff));
		frame[j].checksum=1;
	
		}


		printf(" \r\n");
		printf("0. No loss/bit-errors.\r\n");
		printf("1.ACK packet bit-error\r\n");
		printf("2.Data packet bit-error\r\n");
		printf("3.ACK packet loss\r\n");
		printf("4.Data packet loss\r\n");
		printf("Choose file transfer opinion:\r\n");
		cin>>opinion;	

						
switch (opinion)
	{
	case 1:
		printf("1.ACK packet bit-error\r\n");
		printf("The probability of error is ____% :\r\n");
		cin>>probability;
		break;
	case 2:
		printf("2.Data packet bit-error\r\n");
		printf("The probability of error is ____% :\r\n");
		cin>>probability;
		break;
	case 3:
		printf("3.ACK packet loss\r\n");
		printf("The probability of error is ____% :\r\n");
		cin>>probability;
		break;
	case 4:
		printf("4.Data packet loss\r\n");
		printf("The probability of error is ____% :\r\n");
		cin>>probability;
		break;
	case 0:
		printf("0. No loss/bit-errors.\r\n");
		break;	
	default:
		opinion=0;
		printf("Unexpected input, choose opinion 0.\r\n");
		break;	
		
	}
	printf(" \r\n");
	printf("Waiting Client connnet... \r\n");
	
	while(TRUE){															// wait for client ready
				if (recvfrom(s,recievepacket.buff,sizeof(recievepacket.buff),0,(sockaddr*)&addr,&n)!=0)   // if get any char from client  
					{  
					printf("%s connected\r\n",inet_ntoa(addr.sin_addr));	 // print IP on screen
					printf("Get commend from client: %s\r\n",recievepacket.buff);   // print client's string
					printf(" \r\n");
					memset(recievepacket.buff, 0, sizeof(recievepacket.buff));// Clean buffer area

					break;
					}
				}
	
	if (SOCKET_ERROR ==  setsockopt(s,SOL_SOCKET, SO_RCVTIMEO, (char *)&nNetTimeout,sizeof(int))) //after initialization, set recive time out instruction
	 { 
			 printf("Set Ser_RecTIMEO error !\r\n"); 
	 } 

	/////////////////////////////////////////loop start from here///////////////////////////////////
	while(TRUE)                                                     // always monitor the port
		{
	
		if (i==blocknum)											//detect whether is the last of packet
		{
			remaindata=lSize-BUFFER_LEN*(i-1);	                        //BUFFER_LEN*(i-1)==the total size of 1024bit packets
		}							
		else 
		{	
			remaindata =BUFFER_LEN;
		}
		printf("__!__!__!__process start from here______\r\n");printf(" \r\n");	
	  if(opinion==1&&i>1&&((rand()%100)<probability))              // if choose opinion 1, it will disrupt sequence by chance
	  	{
	  		recievepacket.ack=0;
	    }
	  
	  if (recievepacket.ack==sendpacket.ack&&recievepacket.checksum==1&&overtime!=-1)								//if the last packet sent successfully, prepare to read next packet, if not ,re-sent last packet
		{//////////////////wait for next step/////////
			/*do{	 frame[window_upper_limit].ack=window_upper_limit;
				 len = fread(frame[window_upper_limit].buff,remaindata, 1, fp);															// read next data
				 frame[window_upper_limit].checksum=checksum_calculating(frame[window_upper_limit].buff, frame[window_upper_limit]);    // get checksum from data
				}while(window_upper_limit-window_lower_limit+1<window_size)*/
				
		////original program///////////////
			/*memset(sendpacket.buff, 0, sizeof(sendpacket.buff));					// Clean buffer area
			sendpacket.ack=!sendpacket.ack;											//prepare ack 
		    len = fread(sendpacket.buff,remaindata, 1, fp);						// read next data	  										
			sendpacket.checksum=checksum_calculating(sendpacket.buff, sizeof(sendpacket.buff));    //  get checksum from data
*/		//only place here for test
						
								
							
			
				if(window_upper_limit!=0){window_lower_limit++;}   //move window but not for first time
				while ((window_upper_limit-window_lower_limit<window_size)&&(len>0))						
							{
							save = get_seqnumber(save,1);
							memset(frame[save].buff, 0, sizeof(frame[save].buff));
							len = fread(frame[save].buff,remaindata, 1, fp);
							frame[save].ack=seqnum;	        //add sequence number to framed packets
							
							printf("frame[%d] seqnum=%d \r\n", save,seqnum);
							printf("upper=%d lower=%d \r\n", window_upper_limit,window_lower_limit);
							window_upper_limit++;
							seqnum=seqnum+1;
							}
	
			
		}
	  else
	  	{
	  		printf("**Decect error, send last acked packet** \r\n");printf(" \r\n");  // if not	
	  		i=i-1;	// lock the counter
	  		framenum--;							//send last success packet
			seqnum--;//if the last packet is error, the buffer size should be re-calculated	
			if(framenum==-1)(framenum=9);
			if (i==blocknum)																			
			{
				remaindata=lSize-BUFFER_LEN*(i-1);							 	
			}
			else 
			{
				remaindata =BUFFER_LEN;
			}
	  		
	  	 }

	
	 //if(len>0)
     if(len>0||window_upper_limit-window_lower_limit>0) 		        //when file is finish and all data in frames are sent, break the loop												// if read file succuessful
			{															// printf("%s\r\n len=%d\r\n",buffer,len);  //only for debugging
			 if(opinion==2&&i>1&&((rand()%100)<probability))      		// if choose opinion2, it will send a blank packet instead of file packet.  
			 	{
			 		errorpacket.ack=sendpacket.ack;							// give correct ack number to error packet
					errorpacket.checksum=sendpacket.checksum;				// give correct checksum number to error packet
			 		sendflag=sendto(s,(char*)&errorpacket,sizeof(errorpacket),0,(sockaddr*)&addr,n);	//then send the error packet	
			 	}
			 else
				{
					if (opinion==4&&((rand()%100)<probability))            //if choose opinion 4, it pass sending one packet,so the result should equal to drop the received DATA packet at the receiver.
					{
						printf("Packet loss simulation is actived,cancle send packet\r\n",len);
					}
					else
					{	
						
					
							
							//printf("sendcount=%d \r\n",sendcount);
							printf("len=%d \r\n",len);
							memset(sendpacket.buff, 0, sizeof(sendpacket.buff));
							sendpacket.ack=frame[framenum].ack;	
							memcpy(sendpacket.buff,frame[framenum].buff, sizeof(frame[framenum].buff));
								 sendpacket.checksum=checksum_calculating(sendpacket.buff, sizeof(sendpacket.buff));	//	get checksum from data
								 printf("Check successful, send next packet\r\n");printf(" \r\n");
								 printf("Current frame number is %d\r\n", framenum);
								 printf("Get checksum of read file is %d\r\n",sendpacket.checksum);
								 		//printf("Frame[%d] is %s\r\n",framenum,frame[framenum].buff); 
							//printf("Sendpacket is %s\r\n",sendpacket.buff);
							
								 ///end here		   
					

							sendflag=sendto(s,(char*)&sendpacket,sizeof(sendpacket),0,(sockaddr*)&addr,n); // no opinion is actived, send the normal packet
							printf("!!Current checksum of sendpacket is %d \r\n",buffcheck=checksum_calculating(sendpacket.buff,remaindata));
						//////added for phase 5///////
							framenum = get_seqnumber(framenum,1);
							
						
						//////end here////////////////
					}
				}

			 if(sendflag!=0)												//Send data to client successfully?
				{
					printf("Have Sent %d size of data (%d of %d) to client. \r\n",remaindata,i,blocknum+1); //print monitor information on screen
					printf("Have Sent sendpacket.ack %d to client. \r\n",sendpacket.ack); 
			 		printf("Have Sent checksum=  %d to client. \r\n",sendpacket.checksum);	 
			 	}
			 
			 printf(" \r\n");
 
			if (opinion==3&&((rand()%100)<probability))						//if choose opinion 3, it cancle packet send in this time
				{
					printf("Packet loss simulation is actived,cancle recieve ACK packet from reciever \r\n",len); 
				}
				else
					{
						if(overtime=recvfrom(s,(char*)&recievepacket,sizeof(recievepacket),0,(sockaddr*)&addr,&n)!=0)//none of error mode is active,so  wait for client's return ack
						{  																	
							printf("Recieve ack from client= %d,checksum=%d \r\n",recievepacket.ack,recievepacket.checksum);   				// print received client's ack and checksum
						}
						else																							//didn't get expected respond, so error must happened 
						{
							printf("Send data error..\r\n");
							printf("Re-Send last packet..\r\n");
						}
          			}
        	}
	  	 	
		else   // if read file unsuccuessful, quit the loop
        	{
        	break;
        	}
		 printf("________process END from here__!_!_!__\r\n");printf(" \r\n");   // signal for one cycle end
		i=i+1;
		
    }
	
	//////////////////////////all data has sent. send termination commmend////////////////////
	char *endsignal="Transmission complete @@@";
	strcpy(sendpacket.buff, endsignal);   											// copy above words to buffer
	sendflag=sendto(s,(char*)&sendpacket,sizeof(sendpacket),0,(sockaddr*)&addr,n); //  send checksum= -1  for end client
	printf("File is end, send end signal:Transmission complete @@@\r\n",sendpacket.buff);

	 fclose(fp);	//close file
    closesocket(s);// close socket
	}
	
	else // if open file unsuccessfully, end the program
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


	
unsigned int checksum_calculating(char *pBuffer, int nSize)
{
    unsigned long dwCksum = 0;        // caculate 32bits, the fucntion will caculate each 2 BYTE together, then get a int value
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

int get_seqnumber(int num, int times)
{
	for (int n = 0;  n< times;n++)
		{		
			num=num+1;
			if (num>9)
				{
				num=0;
				}
		}
	return num;
}
/*reference:
http://www.jb51.net/article/53735.htm
http://blog.csdn.net/btooth/article/details/995097
http://www.cnblogs.com/phinecos/archive/2009/01/05/1369761.html


*/
