package animals;

import java.util.Collections;
import java.util.Set;

public class Mouse extends Animal
{

	@Override
	public Set<String> foodsIEat()
	{
		return Collections.singleton("cheese");
	}

}
