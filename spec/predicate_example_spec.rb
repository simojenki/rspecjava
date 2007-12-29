require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/../lib/predicate'

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
