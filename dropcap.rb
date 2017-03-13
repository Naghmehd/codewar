# DropCaps means that the first letter of the starting word of the paragraph should be in caps and the remaining lowercase, same like you see in the newspaper.

# But for a change lets do that for each and every word of the given String. Your task is to capitalize very word that has length greater than 2, leaving smaller words as they are.

# *should work also on Leading and Trailing Spaces and caps.

# drop_cap('apple') => "Apple"
# drop_cap('apple of banana'); => "Apple of Banana"
# drop_cap('one   space'); => "One   Space" 
# drop_cap('   space WALK   '); => "   Space Walk   "
# Note: you will be provided atleast one word and should take string as input and return string as output.

def drop_cap(str)
  word = str.split(/\b/).map { |word| word.length > 2? word.capitalize : word}*''
end

# 1. Have a string divid the string into words.
# 2. separte the first letter of the word 
# 3. Make capitalize 
# 4. Giving it a condition that if the word which has length >  2 letters
# 5. Join the words make into a string again

Example Tests:

1
Test.assert_equals(drop_cap('Apple Banana'),"Apple Banana")
2
Test.assert_equals(drop_cap('Apple'),"Apple")
3
Test.assert_equals(drop_cap(''),"")
4
Test.assert_equals(drop_cap('of'),"of")