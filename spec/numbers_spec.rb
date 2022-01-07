require 'rspec'
require 'numbers'
# Easy

# You are given two arrays representing two non-negative integers.
# The digits are stored in reverse order, and each of their nodes contains a single digit.
# Add the two numbers and return the sum as a array in reverse order.

# "Simple addition, they said. They never said how that data was stored though."

describe Numbers do
  it 'converts and adds the reversed groups of numbers' do
    # array1, array2 = [2,4,3], [5,6,4]
    numbers = Numbers.add_two_numbers([2, 4, 3], [5, 6, 4])
    # Explanation: 342 + 465 = 807.
    expect(numbers).to eq([7, 0, 8])
  end

  it 'converts and adds the reversed groups of numbers' do
    numbers = Numbers.add_two_numbers([1, 7], [67, 4, 2])
    expect(numbers).to eq([8, 3, 5, 2])
  end

  it 'converts and adds the reversed groups of numbers' do
    numbers = Numbers.add_two_numbers([3, 2], [0])
    expect(numbers).to eq([3, 2])
  end
end
