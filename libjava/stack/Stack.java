package stack;

import java.util.ArrayList;

public class Stack
{
	private ArrayList items = new ArrayList();
	
	public void push(Object object)
	{
		if(items.size() == 10)
		{
			throw new StackOverflowError();
		}
		items.add(object);
	}
	
	public Object pop()
	{
		if(items.isEmpty())
		{
			throw new StackUnderflowError();
		}
		Object last = items.get(items.size() - 1);
		items.remove(items.size() - 1);
		return last;
	}
	
	public Object peek()
	{
		if(items.isEmpty())
		{
			throw new StackUnderflowError();
		}
		return items.get(items.size() - 1);
	}
	
	public boolean empty()
	{
		return items.isEmpty();
	}
	
	public boolean full()
	{
		return items.size() == 10;
	}
	
}

