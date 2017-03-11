# Get list sum recursively
# Write function sumR which returns the sum of values in a given list. 
# Try no to cheat and provide recursive solution.

def sum_r(x)
#I am assuming x is array
#this reduces the array by adding every element inthe collection
  x.reduce(0, :+)
end

# or using recursive solution: 
def sum_r(x)
  return 0 unless x.length > 0
  return x.shift + sum_r(x)
end

test: 
describe "sum_r" do
  it "should add values in a given list" do
    Test.assert_equals(sum_r([]), 0, "Empty case not implemented")
    Test.assert_equals(sum_r([1]), 1, "Single value case not implemented")
    Test.assert_equals(sum_r([1,1,1]), 3)
  end
end