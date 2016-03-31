def withdraw(amount)

  notes = []
  value = 10

  if amount <= 0 # this deals with some of the situations...
    return false
  end

  if amount % value == 0
    (amount / value).times do notes << value end
    return notes
  else
    return false
  end
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
    [45, false],
    [20, [10, 10]],
    [40, [10, 10, 10, 10]],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end