module RandomFu

  module StringInstanceMethods
    def random(count)
      if !count.is_a?(Integer) || count < 1 then 
        raise(ArgumentError, "count needs to be a Integer >= 1") 
      end
      return "" if self.empty?

      char = []
      1.upto(count) do
        char << self[rand(self.length)]
      end
      char.join
    end
  end

end
