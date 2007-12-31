require File.dirname(__FILE__) + '/spec_helper'

StubbableClass=Java::stubbing.StubbableClass

describe "A stubbed method on a class" do
  it "should return the stubbed value" do
    StubbableClass.stub!(:find).and_return("stub_return")
    StubbableClass.find(1).should eql("stub_return")
  end
  
  it "should revert to the original method after each spec" do
    StubbableClass.find(1).should eql("original_return")
  end

  # interestingly on this example the type of the parameters to msg makes no difference to rspec
  it "can stub! and mock the same message" do
    StubbableClass.stub!(:msg).and_return(:stub_value)
    StubbableClass.should_receive(:msg).with(:arg).and_return(:mock_value)

    StubbableClass.msg.should equal(:stub_value)
    StubbableClass.msg(:other_arg).should equal(:stub_value)
    StubbableClass.msg(:arg).should equal(:mock_value)
    StubbableClass.msg(:another_arg).should equal(:stub_value)
    StubbableClass.msg(:yet_another_arg).should equal(:stub_value)
    StubbableClass.msg.should equal(:stub_value)
  end
  
  it "should revert to the original msg method after each spec" do
    StubbableClass.msg("some arg").should eql("original_msg_return_some arg")
  end  
end

