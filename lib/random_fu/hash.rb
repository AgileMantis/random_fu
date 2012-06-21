# Top level module for random_fu
# 
# Author:: Brian Ledsworth of Ledsworth Consluting LLC
# Copyright:: Copyright (c) 2012 Ledsworth Consulting LLC. 
# License:: MIT License (http://www.opensource.org/licenses/mit-license.php)

module RandomFu

  # Instance methods mixed into Hash
  module HashInstanceMethods

    # Returns the value from a random key.  
    def random
      return nil if self.empty?
      keys = self.keys
      self[keys[rand(keys.size)]]
    end

  end

end
