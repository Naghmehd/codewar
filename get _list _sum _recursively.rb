# Write function sumR which returns the sum of values in a given list. 
# try no to cheat and provide recursive solution.

def sum_r(x)
end

describe "sum_r" do
  it "should add values in a given list" do
    Test.assert_equals(sum_r([]), 0, "Empty case not implemented")
    Test.assert_equals(sum_r([1]), 1, "Single value case not implemented")
    Test.assert_equals(sum_r([1,1,1]), 3)
  end
end