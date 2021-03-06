require File.dirname(__FILE__) + '/spec_helper'

module AnimalSpecHelper
  class Eat
    def initialize(food)
      @food = food
    end
    
    def matches?(animal)
      @animal = animal
      @animal.eats(@food)
    end
    
    def failure_message
      "expected #{@animal} to eat #{@food}, but it does not"
    end
    
    def negative_failure_message
      "expected #{@animal} not to eat #{@food}, but it does"
    end
  end
    
  def eat(food)
    Eat.new(food)
  end
end

Mouse=Java::animals.Mouse

module Animals

  describe Mouse do
    include AnimalSpecHelper
    before(:each) do
      @mouse = Mouse.new
    end
  
    it "should eat cheese" do
      @mouse.should eat('cheese')
    end
  
    it "should not eat cat" do
      @mouse.should_not eat('cat')
    end
  end

end
