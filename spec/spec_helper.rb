require 'java'

$:.unshift File.dirname(__FILE__) + '/../target/rspecjava.jar'
require 'target/rspecjava.jar'


class Spec::Matchers::Be
  
  alias rspec_predicate predicate 
  
  def predicate
    sym = rspec_predicate
    return sym if @actual.respond_to? sym
    return "#{@expected.to_s}".to_sym
  end
end

