package fileaccessor;

public class FileAccessor
{
	public void openAndHandleWith(RubyFile pathname, RubyProcessor processor)
	{
		processor.process(pathname.open());
	}
	
	
}
