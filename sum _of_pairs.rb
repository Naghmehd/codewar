# Sum of Pairs
# Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.

# Youssef's Solution:

def sum_pairs(ints, s)
  pair  = nil
  pairs = {}
  max = ints.length - 1

  ints.each_index do |i|
    current_val   = ints[i]
    difference    = s - current_val
    matching_pair = pairs[difference]

    if matching_pair && i <= max && matching_pair <= max
      max  = i > matching_pair ? i : matching_pair
      pair = i < matching_pair ? [current_val, difference] : [difference, current_val]
    end

    tmp = pairs[current_val]
    if tmp.nil? || i < tmp
      pairs[current_val] = i
    end
  end

  pair
end

#Solution that times out
def sum_pairs(ints, s)
  matches = {}
  ints.each_with_index do |val, index|

    ints.each_with_index do |val2, index2|

      next if index >= index2

      if val + val2 == s
        matches[index2] = [val, val2]
      end
    end
  end
  return nil if matches.empty?
  matches.sort.first.last
end

#codewar solution:
def sum_pairs(ints, s)
  h = Hash.new(false)
  ints.each do |v|
    sv = s - v
    if h[sv]
      return [sv,v]
    end
    h[v] = true
  end
  nil
end


#Eplaination for Youssef's solution:
# The basic idea is to keep a cache of values and their index of if you have an array of `[23, 314, 123, 432, 121, 23]`then you iterate through the array and keep a cache of each value and it’s lowest index:
#
# {
#   23: 0,
#   314: 1,
#   123: 2,
#   423: 3,
#   121: 4
# }
#
# notice that `23` appears twice but we only keep the lowest index (that’s what what the if statements do)
# and as we are iterating, let’s say `i = 2`, which means the current element is `123`, we get the difference between the sum `s` we want and the current value so if `s = 500`, `difference = 500 - 123 = 377`
# so we check in our cache, if we have a value where the key is `377`: `pairs[377]` which in our example will return `nil`, which means we don’t. so the current value does not have a match and so on and so forth so the idea is that the first element to have a previous element such as the sum of both equals `s` will be the first pair to match
#
# # Example Tests:
#
# l1= [1, 4, 8, 7, 3, 15]
# l2= [1, -2, 3, 0, -6, 1]
# l3= [20, -13, 40]
# l4= [1, 2, 3, 4, 1, 0]
# l5= [10, 5, 2, 3, 7, 5]
# l6= [4, -2, 3, 3, 4]
# l7= [0, 2, 0]
# l8= [5, 9, 13, -3]
#
# Test.describe("Testing For Sum of Pairs")do
#
# Test.expect(sum_pairs(l1, 8) == [1, 7], "Basic: ["+l1.join(", ")+"] should return [1, 7] for sum = 8")
# Test.expect(sum_pairs(l2, -6) == [0, -6], "Negatives: ["+l2.join(", ")+"] should return [0, -6] for sum = -6")
# Test.expect(sum_pairs(l3, -7) == nil, "No Match: ["+l3.join(", ")+"] should return nil for sum = -7")
# Test.expect(sum_pairs(l4, 2) == [1, 1], "First Match From Left: ["+l4.join(", ")+"] should return [1, 1] for sum = 2 ")
# Test.expect(sum_pairs(l5, 10) == [3, 7], "First Match From Left REDUX!: ["+l5.join(", ")+"] should return [3, 7] for sum = 10 ")
# Test.expect(sum_pairs(l6, 8) == [4, 4], "Duplicates: ["+l6.join(", ")+"] should return [4, 4] for sum = 8")
# Test.expect(sum_pairs(l7, 0) == [0, 0], "Zeroes: ["+l7.join(", ")+"] should return [0, 0] for sum = 0")
# Test.expect(sum_pairs(l8, 10) == [13, -3], "Subtraction: ["+l8.join(", ")+"] should return [13, -3] for sum = 10")
# end
