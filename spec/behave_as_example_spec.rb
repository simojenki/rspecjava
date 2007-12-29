require File.dirname(__FILE__) + '/spec_helper'

BluesGuitarist = Java::behaveAsExample.BluesGuitarist
RockGuitarist = Java::behaveAsExample.RockGuitarist
ClassicGuitarist = Java::behaveAsExample.ClassicGuitarist

def behave_as_electric_musician
  respond_to(:read_notes, :turn_down_amp)
end

def behave_as_musician
  respond_to(:read_notes)
end

module BehaveAsExample
  
  describe BluesGuitarist do
    it "should behave as guitarist" do
      BluesGuitarist.new.should behave_as_electric_musician
    end
  end

  describe RockGuitarist do
    it "should behave as guitarist" do
      RockGuitarist.new.should behave_as_electric_musician
    end
  end

  describe ClassicGuitarist do
    it "should not behave as guitarist" do
      ClassicGuitarist.new.should behave_as_musician
    end
  end
  
end
