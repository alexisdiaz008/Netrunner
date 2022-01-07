require 'rspec'
require 'palindrome_number'
# Easy

# Given an integer, return true if the integer is a palindrome integer.
# An integer is a palindrome when it reads the same backward as forward.
# For example, 121 is a palindrome while 123 is not.

# Challenge Mode: solve without turning into a string.

# "The answer is as simple as looking in a mirror, or at least the mathematical equivalent"

describe PalindromeNumber do
  it 'converts and adds the reversed groups of numbers' do
    expect(PalindromeNumber.is_palindrome(121)).to eq(true)
    expect(PalindromeNumber.is_palindrome(123)).to eq(false)
    expect(PalindromeNumber.is_palindrome(-111)).to eq(false)
    expect(PalindromeNumber.is_palindrome(112_211)).to eq(true)
  end
end
