require File.dirname(__FILE__) + '/spec_helper'

BddFramework=Java::predicate.BddFramework

describe "BDD framework workaround by monkey patching rspec" do

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




