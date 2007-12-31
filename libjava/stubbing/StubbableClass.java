package stubbing;

public class StubbableClass
{
	public static String find(int id)
	{
		return "original_return";
	}
	
	public static String msg(String arg)
	{
		return "original_msg_return_" + arg;
	}
}

