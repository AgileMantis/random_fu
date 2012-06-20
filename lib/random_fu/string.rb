# Top level module for random_fu
# 
# Author:: Brian Ledsworth of Ledsworth Consluting LLC
# Copyright:: Copyright (c) 2012 Ledsworth Consulting LLC. 
# License:: MIT License (http://www.opensource.org/licenses/mit-license.php)

module RandomFu

  # Instance methods mixed into String
  module StringInstanceMethods

    # Returns a random string the size of count created from the characters in 
    # the string.  Characters are used one or more times, and characters may 
    # repeat and/or not be used at all.  The source string is just a list of 
    # possible characters (to place a string in a random order, use 
    # String#random_order).  For example, "abcd".random(n) could result in 
    # just one letter used multiple times:
    def random(count)
      if !count.is_a?(Integer) || count < 1 then 
        raise(ArgumentError, "count needs to be a Integer >= 1") 
      end
      return "" if self.empty?

      result = ""
      1.upto(count) do
        result << self[rand(self.length)]
      end
      result
    end

    # Returns a random string created from the characters in the string.  
    # Characters in the string are used only once, and the result
    # will be the same length.  The result is simply a jumbled version.
    def random_order
      return "" if self.empty?

      result = ""
      chars = self.split(//)
      1.upto(chars.size) do
        result << chars.delete_at(rand(chars.size))
      end
      result
    end

  end

end
