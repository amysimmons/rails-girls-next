def withdraw(amount)

  notes = []
  valueTen = 10
  valueFive = 5

  if amount <= 0 # this deals with some of the situations...
    return false
  end

  if amount % valueTen == 0 || amount %valueFive == 0
    (amount / valueTen).times do notes << valueTen end
    amount = amount % valueTen
    if amount > 0
      (amount / valueFive).times do notes << valueFive end
    end
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
    [20, [10, 10]],
    [25, [10, 10, 5]],
    [35, [10, 10, 10, 5]],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end