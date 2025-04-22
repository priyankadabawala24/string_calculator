class StringCalculator
    def self.add(number)
        return 0 if number.empty?
        delimeters = /,|\n/
        delimeters = number.split("//")[1][0] if number.include?("//")
        number.split(delimeters).map(&:to_i).sum()
    end
end
  