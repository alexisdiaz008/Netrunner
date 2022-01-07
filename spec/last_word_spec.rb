require 'rspec'
require 'last_word'
# Easy

# Given a string consisting of some words separated by some number of spaces,
# return the length of the last word in the string.
# A word is defined as a maximal substring consisting of non-space characters only.

# "Yeah, we don't need this other stuff."

describe LastWord do
  it 'checks the length of the last word' do
    expect(LastWord.length('Hello World')).to eq(5)
    expect(LastWord.length('   fly me   to   the moon  ')).to eq(4)
    expect(LastWord.length('   there once was a    hacker')).to eq(6)
  end
end
