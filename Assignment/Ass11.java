import java.io.*;
import java.util.*;

public class Ass11
{
public static void main(String args[])
{

int cnt=0;

	try{
	String line;
	Process p=Runtime.getRuntime().exec("who");

	BufferedReader input= new BufferedReader(new InputStreamReader(p.getInputStream()));

	while((line=input.readLine())!=null)
	{
	
	System.out.println(line);
	cnt++;
	}
	System.out.println("\nNumber of Users: "+cnt);
	System.out.println("\n");
	}
	catch(Exception e)
	{

	e.printStackTrace();
	}

	

	try{
	String proc;
	int cnt1=0;
	Process p=Runtime.getRuntime().exec("ps axl");

	BufferedReader input= new BufferedReader(new InputStreamReader(p.getInputStream()));

	while((proc=input.readLine())!=null)
	{
	
	System.out.println(proc);
	cnt1++;
	}
	System.out.println("\nNumber of Processes: "+cnt1);
	System.out.println("\n");
	}
	catch(Exception e)
	{

	e.printStackTrace();
	}

	
	try{
	String user;
	int cnt2=0;
	Scanner obj = new Scanner(System.in);
	System.out.println("\nEnter User ID:");
	String uid = obj.nextLine();
	System.out.println("\n");
	Process p=Runtime.getRuntime().exec("pgrep -l -a -U "+uid);

	BufferedReader input= new BufferedReader(new InputStreamReader(p.getInputStream()));

	while((user=input.readLine())!=null)
	{
	
	System.out.println(user);
	cnt2++;
	}
	System.out.println("\nNumber of Processes Associated With this User:"+cnt2);
	System.out.println("\n");
	}
	catch(Exception e)
	{

	e.printStackTrace();
	}



}
}
