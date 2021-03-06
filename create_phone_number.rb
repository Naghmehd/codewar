# createPhoneNumber
# Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.
#
# Example:
#
# createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
# The returned format must be correct in order to complete this challenge.
# Don't forget the space after the closing parenthese!

# Solution:
def createPhoneNumber(numbers)
 numbers.join('') =~ /^(\d{3})(\d{3})(\d{4})$/
    "(#{$1}) #{$2}-#{$3}"
end

# Ideal Solution
def createPhoneNumber(numbers)
  "(%d%d%d) %d%d%d-%d%d%d%d" % numbers
end

#Codewar solution:
def createPhoneNumber(numbers)
  numbers.join.gsub /(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3'
end

Example Tests:
Test.assert_equals(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), "(123) 456-7890");
