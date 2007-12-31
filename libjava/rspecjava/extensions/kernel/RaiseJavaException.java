package rspecjava.extensions.kernel;

public class RaiseJavaException
{
	public static void raise(Throwable t) throws Throwable
	{
		throw t;
	}
}
