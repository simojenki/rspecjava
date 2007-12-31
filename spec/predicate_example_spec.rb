require File.dirname(__FILE__) + '/spec_helper'

BddFramework=Java::predicate.BddFramework

class Spec::Matchers::Be
  
  alias pre_jruby_predicate predicate 
  
  def predicate
    rspec_predicate = pre_jruby_predicate
    return rspec_predicate if @actual.respond_to? rspec_predicate
    return "#{@expected.to_s}".to_sym
  end
end


describe "BDD framework" do

  before(:each) do
    @bdd_framework = BddFramework.new
  end

  it "should be adopted quickly" do
    @bdd_framework.should be_adopted_quickly
  end
  
  it "should be intuitive" do
    @bdd_framework.should be_intuitive  
  end
end

describe "BDD framework workaround using different matcher" do

  before(:each) do
    @bdd_framework = BddFramework.new
  end

  it "should be adopted quickly" do
    @bdd_framework.adopted_quickly.should be_true
  end
  
  it "should be intuitive" do
    @bdd_framework.intuitive.should be_true 
  end
end



