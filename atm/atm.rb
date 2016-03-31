def withdraw(amount)

  notes = []
  values = [50, 20, 10, 5]

  if amount <= 0 # this deals with some of the situations...
    return false
  end

  #checks if the amount is divisible by the smallest note
  if amount % values.min != 0
    return false
  end

  values.each do |v|
    (amount / v).times do notes << v end
    amount = amount % v
  end

  return notes

end

# import required testing libraries
require 'minitest/spec'
require 'minitest/autorun'

# Replace your existing tests with the ones below.
describe 'atm' do
  [
    [-1, false],
    [0, false],
    [7, false],
    [53, false],
    [35, [20, 10, 5]],
    [40, [20, 20]],
    [50, [50]],
    [51, false],
    [115, [50, 50, 10, 5]]
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end