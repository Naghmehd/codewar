# Ones and Zeros
# Given an array of one's and zero's convert the equivalent binary value to an integer.
#
# Eg: [0, 0, 0, 1] is treated as 0001 which is the binary representation of 1
#
# Examples:
#
# Testing: [0, 0, 0, 1] ==> 1
# Testing: [0, 0, 1, 0] ==> 2
# Testing: [0, 1, 0, 1] ==> 5
# Testing: [1, 0, 0, 1] ==> 9
# Testing: [0, 0, 1, 0] ==> 2
# Testing: [0, 1, 1, 0] ==> 6
# Testing: [1, 1, 1, 1] ==> 15
# Testing: [1, 0, 1, 1] ==> 11

# Solution1:
def binary_array_to_number(arr)
 arr.join("").to_i(2)
end

# solution2:
def binary_array_to_number(arr)
  Integer(arr.join, 2)
end

# Example Tests:

Test.describe("Example tests") do
Test.assert_equals(binary_array_to_number([0,0,0,1]), 1)
Test.assert_equals(binary_array_to_number([0,0,1,0]), 2)
Test.assert_equals(binary_array_to_number([1,1,1,1]), 15)
Test.assert_equals(binary_array_to_number([0,1,1,0]), 6)
end
