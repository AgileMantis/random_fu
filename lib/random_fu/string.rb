module RandomFu

  module StringInstanceMethods
    def random(count=nil)
      count ||= self.length
      if count > self.length then raise(ArgumentError, "count needs to be <= string length") end
      return "" if count==0

      char = []
      1.upto(count) do
        char << self[rand(self.length)]
      end
      char.join
    end
  end

end
