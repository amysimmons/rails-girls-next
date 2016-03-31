def withdraw(amount)

  notes = []
  value20 = 20
  valueTen = 10
  valueFive = 5

  if amount <= 0 # this deals with some of the situations...
    return false
  end

  if amount % value20 == 0 || amount % valueTen == 0 || amount % valueFive == 0

    #pushes all 20s into array
    (amount / value20).times do notes << value20 end

    #gets the remaining amount after 20s are given
    amount = amount % value20

    #pushes all 10s into array
    (amount / valueTen).times do notes << valueTen end

    #gets the remaining amount after tens are given
    amount = amount % valueTen

    #pushes all 5s into the array
      (amount / valueFive).times do notes << valueFive end

    return notes

  else
    return false
  end
end

# import required testing libraries
require 'minitest/spec'
require 'minitest/autorun'

# Replace your existing tests with the ones below.
# Replace your existing tests with the ones below.
describe 'atm' do
  [
    [-1, false],
    [0, false],
    [7, false],
    [53, false],
    [35, [20, 10, 5]],
    [40, [20, 20]],
    [65, [20, 20, 20, 5]],
    [70, [20, 20, 20, 10]],
    [75, [20, 20, 20, 10, 5]],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end