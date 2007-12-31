package ioprocessor;

public class JavaStringIO
{
	private String string;
	
	public JavaStringIO(String string)
	{
		this.string = string;
	}
	
	public char[] read()
	{
		return string.toCharArray();
	}
}
