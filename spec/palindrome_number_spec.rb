require 'rspec'
require 'palindrome_number'
# "The answer is as simple as looking in a mirror, or at least the digital equivalent"

# Given an integer, return true if the integer is a palindrome integer.
# An integer is a palindrome when it reads the same backward as forward.
# For example, 121 is a palindrome while 123 is not.

# Challenge Mode: solve without turning into a string.

describe PalindromeNumber do
  it 'converts and adds the reversed groups of numbers' do
    palindrome = PalindromeNumber.is_palindrome(121)
    expect(palindrome).to eq(true)
  end

  it 'converts and adds the reversed groups of numbers' do
    palindrome = PalindromeNumber.is_palindrome(123)
    expect(palindrome).to eq(false)
  end

  it 'converts and adds the reversed groups of numbers' do
    palindrome = PalindromeNumber.is_palindrome(-111)
    expect(palindrome).to eq(false)
  end

  it 'converts and adds the reversed groups of numbers' do
    palindrome = PalindromeNumber.is_palindrome(112_211)
    expect(palindrome).to eq(true)
  end
end
