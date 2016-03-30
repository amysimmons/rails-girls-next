require "pry"

def roman(n)
  numbers = {
    1 => "I",
    4 => "IV",
    5 =>"V",
    6 =>"VI",
    7 =>"VII",
    9 =>"IX",
    10 => "X",
    50 => "L",
    100=> "C",
    500 =>"D",
    1000 => "M"
  }

  return numbers[n];
end

require "minitest/spec"
require "minitest/autorun"

describe "roman" do
  it "converts the number 1 to the string I" do
    roman(1).must_equal "I"
  end
end