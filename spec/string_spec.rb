require 'spec_helper'

describe "random_fu's String#random" do
    
  let(:string) { "abcdefghijklmnopqrstuvwxyz0123456789" }

  describe "when called incorrectly" do

    describe "with no arguments" do
      it "should raise an ArgumentError" do
        lambda { rand = string.random }.should raise_exception(ArgumentError)
      end
    end

    describe "with a non Integer" do
      it "should raise an ArgumentError" do
        lambda { rand = string.random("foo")  }.should raise_exception(ArgumentError)
        lambda { rand = string.random(-1)  }.should raise_exception(ArgumentError)
        lambda { rand = string.random(0)  }.should raise_exception(ArgumentError)
      end
    end

    describe "on a empty" do
      it "should return a blank string" do
        "".random(100).should == ""
      end
    end

    describe "on a single char string" do
      it "should return a sting made up of just that char" do
        "f".random(30).should == "f"*30
        # I can't see this as a valid use case, but don't feel
        # it should throw an error.  So I left it awaiting
        # community feedback.
      end
    end

  end

  describe "should return a random string which" do

    it "should be created only from the characters of the String" do
      rand = string.random(string.length)
      rand.should_not == string
      # Cant simply set theory, as rand may not contain all chars 
      # from string (e.g. "abcd".random might return "cabc")
      (string.split(//) & rand.split(//)).each do |odd_char|
        string.should include(odd_char)
      end
    end

    it "should be the same length as the argument" do
      [ 1, 5, string.length, string.length*2 ].each do |arg|
        string.random(arg).length.should == arg
      end
    end

  end

end




# 
# 
# 
# 
# 
#     it "should return a random string of the same length" do
#       rand = string.random
#       rand.length.should == string.length
#       rand.should_not == string
#       rand.chars.each do |char|
#         string.should include(char)
#       end
#     end
#     
#     it "should not use an index greater than its length" do
#       string = "ab"
#       1.upto(99) do
#         string.random.length.should == string.length 
#         # nil returned from String#[index to high] would not increase
#         # the length of the result string after foo.join.  Thus, if  
#         # random went out of bounds on index, the result string 
#         # would be less in size.
#       end
#     end
#   
#   end
# 
#   describe "with argument of 0" do
# 
#     it "should return a blank string" do
#       rand = string.random(0)
#       rand.should == ""
#     end
# 
#   end
# 
#   describe "with invalid arguments" do
# 
#     it "should raise an exception when count is too high" do
#       lambda { rand = string.random(string.length+1) }.should raise_exception
#     end
# 
#     it "should raise an exception if it's negative" do
#       lambda { rand = string.random(-1) }.should raise_exception
#     end
# 
#     it "should raise an exception if not an Integer class" do
#       lambda { rand = string.random("foo") }.should raise_exception
#       lambda { rand = string.random(0.1) }.should raise_exception
#     end
# 
#   end
#  

