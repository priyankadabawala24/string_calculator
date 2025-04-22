class StringCalculator
    def self.add(number)
        return 0 if number.empty?
        delimeters = /,|\n/
        if number.start_with?("//")
            delimeters, number = number.split("\n") 
            delimeters = delimeters[2..]
        end
        int_numb = number.split(delimeters).map(&:to_i)
        negative_numb = int_numb.select {|n| n.negative? }
        raise RuntimeError, "negative numbers not allowed" unless  negative_numb.empty?
        int_numb.sum()
    end
end
  