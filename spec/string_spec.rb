require 'spec_helper'

describe "random_fu's String#random when called with" do
    
  let(:string) { "The quick brown fox jumped over the layz dog" }

  describe "with no arguments" do

    it "should return a random string of the same length" do
      rand = string.random
      rand.length.should == string.length
      rand.should_not == string
      rand.chars.each do |char|
        string.should include(char)
      end
    end
    
    it "should not use an index greater than its length" do
      string = "ab"
      1.upto(99) do
        string.random.length.should == string.length 
        # nil returned from String#[index to high] would not increase
        # the length of the result string after foo.join.  Thus, if  
        # random went out of bounds on index, the result string 
        # would be less in size.
      end
    end
  
  end

  describe "with argument of 0" do

    it "should return a blank string" do
      rand = string.random(0)
      rand.should == ""
    end

  end

  describe "with invalid arguments" do

    it "should raise an exception when count is too high" do
      lambda { rand = string.random(string.length+1) }.should raise_exception
    end

    it "should raise an exception if it's negative" do
      lambda { rand = string.random(-1) }.should raise_exception
    end

    it "should raise an exception if not an Integer class" do
      lambda { rand = string.random("foo") }.should raise_exception
      lambda { rand = string.random(0.1) }.should raise_exception
    end

  end
 
end
