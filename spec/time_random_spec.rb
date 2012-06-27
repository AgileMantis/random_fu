require 'spec_helper'

describe "random_fu's Time#random_between" do

  let(:time_now) { Time.now }
  let(:second_diffs) { [ 0, 1, 60, 100, 86_400, 2_592_000 ] }
  let(:multipliers) { [ 1, 10, 100, 1000, 10_000, 100_000 ] }

  describe "should return a random time between self and parameter" do

    it "when self is less than the paramter" do
      multipliers.each do |multiplier|
        second_diffs.each do |n|
          other_time = time_now + n*multiplier
          rnd_time = time_now.random_between(other_time)
          rnd_time.between?(time_now,other_time).should be_true
        end
      end
    end

    it "when self is greater than the paramter" do
      multipliers.each do |multiplier|
        second_diffs.each do |n|
          other_time = time_now - n*multiplier
          rnd_time = time_now.random_between(other_time)
          rnd_time.between?(other_time,time_now).should be_true
        end
      end
    end

  end

  describe "should be the same time" do
    it "when self is equal to the paramter" do
      time_now.random_between(time_now).should == time_now
    end
  end

  describe "when called incorrectly" do
    describe "without a parameter" do
      it "should raise an argument exception error" do
        lambda { time_now.random_between }.should raise_error(ArgumentError)
      end
    end
    describe "with a non Time object" do
      it "should raise an argument exception error" do
        lambda { time_now.random_between(1) }.should raise_error(ArgumentError, "Time expected")
      end
    end
  end

end
