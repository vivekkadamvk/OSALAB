#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>





int main()
{

int PPID,PID;

PPID=getpid();
printf("I am in Parent Process\n");
printf("Parent Process ID is %d\n",PPID);

PID=fork();

if(PID<0)
{
	printf("Creation of Child Process is Unsuccesful\n");
	exit(-1);
}


else if(PID==0)
{
	 printf("Child is Successfullly created\n");
	 printf("Now ps Command is running in Child Process\n");
	 printf("I am in Child Process\n");
	 execl("/bin/ps","ps",NULL);
	 
}	

else
{
	printf("Child Process ID is %d\n",PID);
	exit(0);
}



}
