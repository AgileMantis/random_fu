require 'spec_helper'

describe "random_fu's String#random_order" do
    
  let(:string) { "abcdefghijklmnopqrstuvwxyz0123456789" }

  describe "when called on an empy string" do
    it "should return an empty string" do
      "".random_order.should == ""
      # I can't see this as a valid use case, but don't feel
      # it should throw an error.  So I left it awaiting
      # community feedback.
    end
  end

  describe "when called on a single char string" do
    it "should return same string" do
      "f".random_order.should == "f"
      # I can't see this as a valid use case, but don't feel
      # it should throw an error.  So I left it awaiting
      # community feedback.
    end
  end

  describe "should return a random string which" do

    it "should be the same length" do
      string.random_order.should_not == string 
    end

    it "should contain the exact same characters but jumbled" do
      rand = string.random_order
      rand.length.should == string.length
      rand_set = rand.split(//) - string.split(//)
      rand_set.should be_empty, rand_set
    end

  end

end
