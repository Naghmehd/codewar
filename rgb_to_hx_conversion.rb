# RGB To Hex Conversion
# The rgb() method is incomplete. Complete the method so that passing in RGB decimal values will result in a hexadecimal representation being returned. The valid decimal values for RGB are 0 - 255. Any (r,g,b) argument values that fall out of that range should be rounded to the closest valid value.
#
# The following are examples of expected output values:
#
# rgb(255, 255, 255) # returns FFFFFF
# rgb(255, 255, 300) # returns FFFFFF
# rgb(0,0,0) # returns 000000
# rgb(148, 0, 211) # returns 9400D3

def rgb(r, g, b)
  "#{to_hex r}#{to_hex g}#{to_hex b}"
end

def to_hex(n)
  n = 255 if n > 255
  n = 0 if n < 0
  n.to_s(16).ljust(2, '0').upcase
end

# Test Driven Development (TDD)

# # TODO: Replace examples and use TDD development by writing your own tests
# # These are some of the methods available:
# #   Test.expect(boolean, [optional] message)
# #   Test.assert_equals(actual, expected, [optional] message)
# #   Test.assert_not_equals(actual, expected, [optional] message)
# describe "Solution" do
#   it "should test for something" do
#     Test.assert_equals("rgb(148, 0, 211)", "9400D3", "This is just an example of how you can write your own TDD tests")
#   end
