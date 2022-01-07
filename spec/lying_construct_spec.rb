require 'rspec'
require 'lying_construct'
#  Hard

# Background
# You encounter a construct, that unreliably
# takes the sequence of all numbers from 1 to n (where n > 0).
# Within that sequence, it chooses two numbers, a and b.
# It says that the product of a and b
# should be equal to the sum of all numbers in the sequence,
# excluding a and b.
# Given a number n, could you tell me the numbers he excluded from the sequence?

# The function takes the parameter: n (n is always strictly greater than 0) and returns an array

# [[a, b], ...]

# with all (a, b) which are the possible removed numbers in the sequence 1 to n.

# [[a, b], ...] will be sorted in increasing order of the "a".

# It happens that there are several possible (a, b).

# The function returns an empty array

# if no possible numbers are found it proves that the
# construct has told us the truth!

# Examples:
# remove_number(26) should return [[15, 21], [21, 15]]

# "The life expectancy of a jacked construct is about that of a mayfly."

describe LastWord do
  it 'checks the length of the last word' do
    expect(LyingConstruct.remove_number(26)).to eq([[15, 21], [21, 15]])
    expect(LyingConstruct.remove_number(100)).to eq([])
    expect(LyingConstruct.remove_number(101)).to eq([[55, 91], [91, 55]])
    expect(LyingConstruct.remove_number(102)).to eq([[70, 73], [73, 70]])
    expect(LyingConstruct.remove_number(110)).to eq([[70, 85], [85, 70]])
    expect(LyingConstruct.remove_number(1006)).to eq([[546, 925], [925, 546]])
    expect(LyingConstruct.remove_number(103)).to eq([])
    expect(LyingConstruct.remove_number(446)).to eq([[252, 393], [393, 252]])
    expect(LyingConstruct.remove_number(846)).to eq([[498, 717], [717, 498]])
    expect(LyingConstruct.remove_number(1_000_003)).to eq([[550_320, 908_566], [559_756, 893_250], [893_250, 559_756], [908_566, 550_320]])
    expect(LyingConstruct.remove_number(1_000_008)).to eq([[677_076, 738_480], [738_480, 677_076]])
  end
end
