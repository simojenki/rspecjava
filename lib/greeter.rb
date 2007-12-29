class Greeter
  def initialize(person = nil)
    @person = person
  end

  def greet
    @person.nil? ? "Hi there!" : "Hi #{@person}!"
  end
end