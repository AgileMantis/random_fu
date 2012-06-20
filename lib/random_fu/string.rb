module RandomFu

  module StringInstanceMethods
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
