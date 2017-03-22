# Add a method to the Array class to map over itself with the given proc, but when the array is empty call the fallback proc. The method should return a new array when not empty.

# It's use should look like this:

# my_feelings = ["random", "stuff"]
# my_emptiness = []

# my_feelings.map_with_fallback ->(i) {
#   # map over my_feelings
# }, fallback: -> {
#   # run me when array is empty
# }
# # should return result of mapping over my_feelings with the first proc

# my_emptiness.map_with_fallback ->(i) {
#   # map over my_emptiness
# }, fallback: -> {
#   # run me when array is empty
# }
# # should return result of of the fallback proc
# Implement the Array#map_with_fallback method.
class Array
  def map_with_fallback(proc, fallback: {})
    if self.empty?
      return fallback.call
    else
      self.map do |n|
        proc.call(n)
      end
   end
  end
end

# Example Tests:


# items = [1,2,3]

# no_items = []

# ​

# Test.assert_equals items.map_with_fallback(->(i) { i + 1 }), [2,3,4]

# Test.assert_equals no_items.map_with_fallback(->(i){}, fallback: -> { 'empty' }), 'empty'