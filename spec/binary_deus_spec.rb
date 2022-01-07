require 'rspec'
require 'binary_deus'
# Hard

# Background
# You've become trapped within a rogue ai's labyrinth.
# Luckily you've logged the data you need to escape. Use this 'map' to find the exit.

# The map is represented as a 2D array. See the example below:
# let mapExample = [[1,3,5],[2,0,10],[-3,1,4],[4,2,4],[1,1,5],[-3,0,12],[2,1,12],[-2,2,6]];

# Here are what the values of each subarray represent:

#     Time Dilation: With each additional layer of time dilation entered, time slows by a factor of 2.
#       At layer 0, time passes normally. At layer 1, time passes at half the rate of layer 0. At layer 2,
#       time passes at half the rate of layer 1, and therefore one quarter the rate of layer 0.
#     Directions are as follow: 0 = North, 1 = East, 2 = South, 3 = West
#     Distance Traveled: This represents the distance traveled relative to the current time dilation layer. See below:

# The following are equivalent distances (all equal a Standard Distance of 100):
# Layer: 0, Distance: 100
# Layer: 1, Distance: 50
# Layer: 2, Distance: 25

# For the mapExample above:

# mapExample[0] -> [1,3,5]
# 1 represents the level shift of time dilation
# 3 represents the direction
# 5 represents the distance traveled relative to the current time dilation layer

# Your new location becomes[-10,0]

# mapExample[1] -> [2,0,10]
# At this point, you have shifted 2 layers deeper.
# you are now at time dilation layer 3.
# you move North a Standard Distance of 80.
# your new location becomes [-10,80]

# mapExample[2] -> [-3,1,4]
# At this point, you have shifted out 3 layers.
# He is now at time dilation layer 0.
# you move East a Standard Distance of 4.
# your new location becomes [-6,80]

# Your function should return the exit's [x,y] coordinates.

# For mapExample, the correct output is [346,40].
# Additional Technical Details

#     Inputs are always valid.
#     you begin at time dilation level 0, at [x,y] coordinates [0,0].
#     Time dilation level at any point will always be 0 or greater.
#     Standard Distance is the distance at time dilation level 0 (100).
#     For given distance d for each value in the array: d >= 0.
#     Do not mutate the input

# "Certain areas of cyberspace are dominated by a single digital entity. Runners call them 'Gods',"

describe BinaryDeus do
  it 'returns the exits coordinates' do
    map_to_exit = [[1, 3, 5], [2, 0, 10], [-3, 1, 4], [4, 2, 4], [1, 1, 5], [-3, 0, 12], [2, 1, 12], [-2, 2, 6]]
    exit_position = [346, 40]
    expect(BinaryDeus.escape(map_to_exit)).to eq(exit_position)
  end

  it 'returns the exits coordinates' do
    map_to_exit = [[4, 0, 8], [2, 1, 2], [1, 0, 5], [-3, 3, 16], [2, 2, 2], [-1, 1, 7], [0, 0, 5], [-4, 3, 14]]
    exit_position = [68, 800]
    expect(BinaryDeus.escape(map_to_exit)).to eq(exit_position)
  end

  it 'returns the exits coordinates' do
    map_to_exit = [[1, 1, 20], [1, 2, 30], [1, 3, 8], [1, 0, 2], [1, 1, 6], [1, 2, 4], [1, 3, 6], [-7, 0, 100]]
    exit_position = [-600, -244]
    expect(BinaryDeus.escape(map_to_exit)).to eq(exit_position)
  end

  it 'returns the exits coordinates' do
    map_to_exit = [[2, 2, 100], [3, 1, 25], [4, 0, 8], [-6, 3, 25], [-1, 2, 80], [8, 0, 12], [-10, 3, 220], [0, 1, 150]]
    exit_position = [530, 15_664]
    expect(BinaryDeus.escape(map_to_exit)).to eq(exit_position)
  end

  it 'returns the exits coordinates' do
    map_to_exit = [[3, 2, 80], [1, 1, 25], [6, 0, 8], [-5, 3, 50], [1, 2, 100], [4, 0, 9], [-8, 3, 260], [0, 1, 90]]
    exit_position = [-1880, 10_368]
    expect(BinaryDeus.escape(map_to_exit)).to eq(exit_position)
  end
end
