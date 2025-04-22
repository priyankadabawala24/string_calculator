require 'string_calculator'
 
RSpec.describe StringCalculator do
    it "return 0 if the string is empty" do 
        expect(StringCalculator.add("")).to eq(0)
    end

    it "return number itself if single number" do 
        expect(StringCalculator.add("1")).to eq(1)
    end 

    it "return sum of two numbers" do 
        expect(StringCalculator.add("1,4")).to eq(5)
    end 

    it "return sum of more than two numbers" do 
        expect(StringCalculator.add("5,2,3")).to eq(10)
    end 

    it "return sum of numbers seprated by , or new lines" do 
        expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "return sum of numbers seprated by custom delimeters" do 
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it "raise exception for negative number" do 
        expect { StringCalculator.add("-1,-2,-3") }.to raise_error(RuntimeError, "negative numbers not allowed") 
    end

end