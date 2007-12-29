module Animals
  class Animal
    def eats?(food)
      return foods_i_eat.include?(food)
    end
  end
  
  class Mouse < Animal
    def foods_i_eat
      [:cheese]
    end
  end
end