def withdraw(amount)
  if amount <= 0 # this deals with some of the situations...
    return false
  end
  # ToDo: figure out this bit

  if amount % 5 == 0
    return true
  else
    return false
  end
end

# import required testing libraries
require 'minitest/spec'
require 'minitest/autorun'

# BELOW ARE THE TESTS FOR AUTOMATICALLY CHECKING YOUR SOLUTION.
# THESE TESTS ARE FOR STEP 1.
# THESE NEED TO BE REPLACED AFTER EACH STEP.
describe 'atm' do
  [
    [-1, false],
    [0, false],
    [1, false],
    [43, false],
    [17, false],
    [5, true],
    [20, true],
    [35, true],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end