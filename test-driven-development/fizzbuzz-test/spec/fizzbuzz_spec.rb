require "fizzbuzz"
# RSpec adds lib to the LOAD_PATH by default. It will look for required files in lib dir and add rb at the end of the file required automatically

# Test cases
#  when given multiple of 3, return "Fizz"
#  when given multiple of 5, return "Buzz"
#  when given multiple of 3 and 5 (i.e. 15), return "FizzBuzz"
#  otherwise, return the number

RSpec.describe FizzBuzz do
  describe "#play" do
    it "returns Fizz when given 3" do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.play(3)).to eq "Fizz"
    end

    it "returns Buzz when given 5" do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.play(5)).to eq "Buzz"
    end

    it "returns FizzBuzz when given 15" do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.play(15)). to eq "FizzBuzz"
    end

    it "returns 1 when given 1" do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.play(1)). to eq 1
    end
  end

  describe "#is_divisible" do
    it "returns true when given 3 and 3" do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.is_divisible_by?(3,3)).to be true
    end

    it "returns true when given 3 and 9" do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.is_divisible_by?(9,3)).to be true
    end

    it "returns false when given 5 and 6" do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.is_divisible_by?(5,6)).to be false
    end
  end
end