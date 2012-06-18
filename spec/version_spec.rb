require 'spec_helper'

describe "random_fu" do
  describe "version" do
    it "should be current" do
      RandomFu::VERSION.should == '0.0.1'
    end
  end
end

