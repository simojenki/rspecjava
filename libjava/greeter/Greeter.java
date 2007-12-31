package greeter;

public class Greeter
{
	private String person;

	public Greeter()
	{
		this.person = null;
	}
	
	public Greeter(String person)
	{
		this.person = person;
	}
	
	public String greet()
	{
		return person == null ? "Hi there!" : "Hi " + person + "!";
	}
	
}
