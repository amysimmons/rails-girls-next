require "pry"

def roman(n)

  numbers = {
    1000 => "M",
    500 => "D",
    100=> "C",
    50 => "L",
    10 => "X",
    5 => "V",
    1 => "I"
  }

  numeral = []

  if n.is_a?(Integer)

    numbers.each do | k, v |
      if (n / k) > 0
        (n / k).times do numeral.push(v) end
        n = (n % k)
      end
    end

    return numeral.join

  else
    return "Cannot convert a string to Roman numerals"
  end

end

require "minitest/spec"
require "minitest/autorun"

describe "roman" do
  it "converts the number 1 to the string I" do
    roman(1).must_equal "I"
  end

  it "converts the number 5 to the string V" do
    roman(5).must_equal "V"
  end

  it "converts the number 4 to the string IIII" do
    roman(4).must_equal "IIII"
  end

  it "converts the number 6 to the string VI" do
    roman(6).must_equal "VI"
  end

  it "converts the number 7 to the string VII" do
    roman(7).must_equal "VII"
  end

  it "converts the number 10 to the string X" do
    roman(10).must_equal "X"
  end

  it "converts the number 3120 to the string MMMCXX" do
    roman(3127).must_equal "MMMCXXVII"
  end

  it "returns error message when string is passed to roman" do
    roman("1").must_equal "Cannot convert a string to Roman numerals"
  end
end