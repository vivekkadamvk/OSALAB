#include<stdio.h>
#include<pwd.h>
#include<stdlib.h>
#include<unistd.h>

int main()
{
struct passwd *ptr;
ptr=getpwuid(getuid());
int ch;


do{



printf("\nMENU\n1.Display Username\n2.Display Password\n3.Display Additional user information\n4.Display User Directory\n5.Display Login Shell\n6.Display UID\n7.Display GID\n0.Exit\n");

printf("Enter your Choice:");
scanf("%d",&ch);

if (ch==1)
{
printf("\t%s\n",ptr->pw_name);
}
else if (ch==2)
{
printf("\t%s\n",ptr->pw_passwd);
}
else if (ch==3)
{
printf("\t%s\n",ptr->pw_gecos);
}
else if (ch==4)
{
printf("\t%s\n",ptr->pw_dir);
}
else if (ch==5)
{
printf("\t%s\n",ptr->pw_shell);
}
else if (ch==6)
{
printf("\t%lu\n",(long unsigned int)ptr->pw_uid);
}
else if (ch==7)
{
printf("\t%lu\n",(long unsigned int)ptr->pw_gid);
}


}while(ch!=0);
return 0;
}

