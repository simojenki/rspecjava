require File.dirname(__FILE__) + '/spec_helper'

MockableClass=Java::partialmock.MockableClass

describe "A partial mock" do

  it "should work at the class level" do
    MockableClass.should_receive(:find).with(1).and_return {'stub_return'}
    MockableClass.find(1).should eql('stub_return')
  end

  it "should revert to the original after each spec" do
    MockableClass.find(1).should eql('original_return')
  end

  # look these methods dont even exist on the java interface!!  
  it "can be mocked w/ ordering" do
    MockableClass.should_receive(:msg_1).ordered
    MockableClass.should_receive(:msg_2).ordered
    MockableClass.should_receive(:msg_3).ordered
    MockableClass.msg_1
    MockableClass.msg_2
    MockableClass.msg_3
  end
end
