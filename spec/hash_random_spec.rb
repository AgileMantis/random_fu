require 'spec_helper'

describe "random_fu's Hash#random" do
    
  let(:hash) { { fred: 'foo', tom: 'bar', jen: 'baz' } } 

  describe "when called on an empty hash" do
    it "should return nil" do
      {}.random.should be_nil
    end
  end

  describe "with called" do
    it "should return one value from a random key" do
      value = hash.random
      hash.value?(value).should be_true
    end
  end

end
