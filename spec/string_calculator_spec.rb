require 'string_calculator'
 
RSpec.describe StringCalculator do
    it "return 0 if the string is empty" do 
        expect(StringCalculator.add("")).to eq(0)
    end
end