# Which are in?
# Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2.
#
# Example 1:
#
# a1 = ["arp", "live", "strong"]
#
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
#
# returns ["arp", "live", "strong"]
#
# Example 2:
#
# a1 = ["tarp", "mice", "bull"]
#
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
#
# returns []
#
# Notes:

Arrays are written in "general" notation. See "Your Test Cases" for examples in your language.

Beware: r must be without duplicates.
# solution 1
def in_array(array1, array2)
  array3 = []
  array1.each do |x|
    array2.each do |s|
      if s.match(x)
        array3 << x
      end
    end
  end
  array3.uniq.sort
end
# solution 2
def in_array(array1, array2)
  new_array =
    array1.map do |str|
      str if array2.any?{ |str2| str2.match(str) }
    end.compact
end
# solution2
def in_array(array1, array2)
  array1.select{|s| array2.any?{|w| w.include?(s) } }.sort
end
# Example Tests:
#
# a1 = ["arp", "live", "strong"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# Test.assert_equals(in_array(a1, a2), ["arp", "live", "strong"])
# a1 = ["tarp", "mice", "bull"]
# Test.assert_equals(in_array(a1, a2), [])
#
# a1 = ["arp", "live", "strong"]
#
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
#
# Test.assert_equals(in_array(a1, a2), ["arp", "live", "strong"])
#
# a1 = ["tarp", "mice", "bull"]
#
# Test.assert_equals(in_array(a1, a2), [])
