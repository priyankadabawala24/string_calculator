require 'string_calculator'
 
RSpec.describe StringCalculator do
    it "return 0 if the string is empty" do 
        expect(StringCalculator.add("")).to eq(0)
    end

    it "return number itself if single number" do 
        expect(StringCalculator.add("1")).to eq(1)
    end 

    it "return sum of two numbers" do 
        expect(StringCalculator(1,4)).to eq(5)
    end 

end