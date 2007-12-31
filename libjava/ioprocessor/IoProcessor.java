package ioprocessor;

public class IoProcessor
{
	public void process(JavaStringIO io)
	{
		// Does some fancy stuff unless the length of +io+ is shorter than 32
		if(io.read().length < 32) 
		{
			throw new DataTooShort();
		}
	}
}
