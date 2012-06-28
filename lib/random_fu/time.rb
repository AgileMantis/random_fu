# Top level module for random_fu
# 
# Author:: Brian Ledsworth of Ledsworth Consluting LLC
# Copyright:: Copyright (c) 2012 Ledsworth Consulting LLC. 
# License:: MIT License (http://www.opensource.org/licenses/mit-license.php)

module RandomFu

  # Instance methods mixed into Time
  module TimeInstanceMethods

    # Returns a new Time object which is a random time 
    # between self and other_time
    def random_between(other_time)
      if !other_time.is_a?(Time) then raise(ArgumentError,"Time expected") end
      return self if self==other_time

      # for large spans between time, to_i is not efficeint
      rnd = rand(self.to_i - other_time.to_i + 1) 
      # w/o +1, time may equal self but would never equal other_time
      # e.g. .30 seconds and .40 seconds, requires a random number
      # between 0 and 10, thus rand(11), or rand(40-30+1)

      time = Time._load(self._dump)
      time += ((self < other_time) ? rnd : -rnd)
    end

  end

end
