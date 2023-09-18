                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           import java.lang.management.ManagementFactory;

public class Ass10
{
	public static void main(String args[])
	{
		com.sun.management.OperatingSystemMXBean mxbean=(com.sun.management.OperatingSystemMXBean)ManagementFactory.getOperatingSystemMXBean();
		System.out.println("\nTotal Memory");
		System.out.println(mxbean.getTotalPhysicalMemorySize()/(1024*1024)+" MB\n");

		System.out.println("Free Memory");
		System.out.println(mxbean.getFreePhysicalMemorySize()/(1024*1024)+" MB\n");

		System.out.println("Virtual Memory");
		System.out.println(mxbean.getCommittedVirtualMemorySize()/(1024*1024)+" MB\n");

		System.out.println("Total Swap Memory");
		System.out.println(mxbean.getTotalSwapSpaceSize()/(1024*1024)+" MB\n");

		System.out.println("Free Swap Memory");
		System.out.println(mxbean.getFreeSwapSpaceSize()/(1024*1024)+" MB\n");
	}
}
