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

module Kernel
  class << self
    
    alias orig_raise raise
    
    def raise *args
      Java::rspecjava.extensions.kernel.RaiseJavaException.raise(args[0]) if (args.length == 1 && args[0].respond_to?(:java_object))
      orig_raise *args
    end
  end
end



