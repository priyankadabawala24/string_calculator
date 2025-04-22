class StringCalculator
    def self.add(number)
        return 0 if number.empty?
        p number.split(",").map(&:to_i)
        number.split(",").map(&:to_i).sum()
    end
end
  