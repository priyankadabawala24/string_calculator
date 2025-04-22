class StringCalculator
    def self.add(number)
        return 0 if number.empty?
        number.split(/,|\n/).map(&:to_i).sum()
    end
end
  