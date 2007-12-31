package fileaccessor;

public class FileAccessor
{
	public void openAndHandleWith(RubyFile pathname, RubyProcessor processor)
	{
		Object io = pathname.open();
		processor.process(io);
	}
	
	
}
