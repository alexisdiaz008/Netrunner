require 'rspec'
require 'anagram'

# Given two strings,
# return true if the second word is an anagram of the first,
# and false otherwise.

describe Anagram do
  it 'converts and adds the reversed groups of numbers' do
    first_word, second_word = "anagram", "nagaram"
    anagram_check = Anagram.check(first_word, second_word)

    expect(anagram_check).to eq(true)
  end

  it 'converts and adds the reversed groups of numbers' do
    first_word, second_word = "rat", "car"
    anagram_check = Anagram.check(first_word, second_word)

    expect(anagram_check).to eq(false)
  end

  it 'converts and adds the reversed groups of numbers' do
    first_word, second_word = "a", "b"
    anagram_check = Anagram.check(first_word, second_word)

    expect(anagram_check).to eq(false)
  end

  it 'converts and adds the reversed groups of numbers' do
    first_word, second_word = "asdf", ""
    anagram_check = Anagram.check(first_word, second_word)

    expect(anagram_check).to eq(false)
  end

  it 'converts and adds the reversed groups of numbers' do
    first_word, second_word = "a", "a"
    anagram_check = Anagram.check(first_word, second_word)

    expect(anagram_check).to eq(true)
  end
end
