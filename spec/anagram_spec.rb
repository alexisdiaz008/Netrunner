require 'rspec'
require 'anagram'
# Easy

# Given two strings,
# return true if the second word is an anagram of the first,
# and false otherwise.

# "We've got the access key's cypher, we just need to make sure it's valid."

describe Anagram do
  it 'checks if the second word is an anagram of the first' do
    expect(Anagram.check('anagram', 'nagaram')).to eq(true)
    expect(Anagram.check('rat', 'car')).to eq(false)
    expect(Anagram.check('a', 'b')).to eq(false)
    expect(Anagram.check('asdf', '')).to eq(false)
    expect(Anagram.check('a', 'a')).to eq(true)
  end
end
