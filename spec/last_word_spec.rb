require 'rspec'
require 'last_word'
# "Yeah, we don't need any of this other stuff."

# Given a string consisting of some words separated by some number of spaces,
# return the length of the last word in the string.
# A word is defined as a maximal substring consisting of non-space characters only.

describe LastWord do
  it 'checks the length of the last word' do
    last_words_length = LastWord.length('Hello World')
    # EX: 'world' = 5
    expect(last_words_length).to eq(5)
  end

  it 'checks the length of the last word' do
    last_words_length = LastWord.length('   fly me   to   the moon  ')
    # EX: 'moon' = 5
    expect(last_words_length).to eq(4)
  end

  it 'checks the length of the last word' do
    last_words_length = LastWord.length('   there once was a    hacker')
    expect(last_words_length).to eq(6)
  end
end
