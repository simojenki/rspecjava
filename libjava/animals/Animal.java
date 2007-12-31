package animals;

import java.util.Set;

public abstract class Animal
{

	public boolean eats(String food)
	{
		return foodsIEat().contains(food);
	}

	public abstract Set<String> foodsIEat();
}
