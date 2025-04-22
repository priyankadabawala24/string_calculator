class StringCalculator
    def self.add(number)
        return 0 if number.empty?
        delimeters = /,|\n/
        delimeters = number.split("//")[1][0] if number.include?("//")
        int_numb = number.split(delimeters).map(&:to_i)
        negative_numb = int_numb.select {|n| n.negative? }
        raise RuntimeError, "negative numbers not allowed" unless  negative_numb.empty?
        int_numb.sum()
    end
end
  