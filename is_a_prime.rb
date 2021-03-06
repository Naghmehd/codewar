# Is a number prime?
# Define a function isPrime that takes one integer argument and returns true or false depending on if the integer is a prime.
#
# Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.
#
# Example
#
# isPrime(5)
# => true
# Assumptions
#
# You can assume you will be given an integer input.
# You can not assume that the integer will be only positive. You may be given negative numbers.
# Bug!
# The Haskell version uses a wrong test case, where negative primes should also return True, e.g. it expects isPrime (-2) == True. Use abs or similar measures to take care of negative numbers. The test cases cannot get changed at this point. Sorry for the inconvenience.

# solution
def is_prime(num)
  return false if num <= 1
  Math.sqrt(num).to_i.downto(2).each { |i| return false if num % == 0 }
  true
end

# solution2
def isPrime(num)
  return false if num < 2

  (2...num).each { |i|
    return false if num % i == 0
  }
  return true
end

# solution3
def isPrime(num)
    require "prime"
    return num.prime?
end
# Example Tests:
#
# Test.assert_equals(isPrime(2), true)
# Test.assert_equals(isPrime(4), false)
# Test.assert_equals(isPrime(11), true)
