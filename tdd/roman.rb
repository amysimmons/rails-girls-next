require "pry"

def roman(n)

  # numbers = {
  #   1 => "I",
  #   5 => "V",
  #   10 => "X",
  #   50 => "L",
  #   100=> "C",
  #   500 => "D",
  #   1000 => "M"
  # }

  numeral = []

  if n.is_a?(Integer)

    if (n / 1000) > 0
      (n / 1000).times do numeral.push("M") end
      n = (n % 1000)
    end

    if (n / 500) > 0
      (n / 500).times do numeral.push("D") end
      n = (n % 500)
    end

    if (n / 100) > 0
      (n / 100).times do numeral.push("C") end
      n = (n % 100)
    end

    if (n / 50) > 0
      (n / 50).times do numeral.push("L") end
      n = (n % 50)
    end

    if (n / 10) > 0
      (n / 10).times do numeral.push("X") end
      n = (n % 10)
    end

    if (n / 5) > 0
      (n / 5).times do numeral.push("V") end
      n = (n % 5)
    end

    if (n / 1) > 0
      (n / 1).times do numeral.push("I") end
      n = (n % 1)
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

  it "returns error message when string is passed to roman" do
    roman("1").must_equal "Cannot convert a string to Roman numerals"
  end
end