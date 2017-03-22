# Given: an array containing hashes of names

# Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

# Example:

# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# # returns 'Bart, Lisa & Maggie'

# list([ {name: 'Bart'}, {name: 'Lisa'} ])
# # returns 'Bart & Lisa'

# list([ {name: 'Bart'} ])
# # returns 'Bart'

# list([])
# # returns ''

# Solution:


def list(nameables)

  return '' if nameables.nil? || nameables.empty?

  names = nameables.map { |nameable| nameable[:name] }

  names.one? ? names.first : "#{names[0...-1].join(', ')} & #{names.last}"

end

# Example Tests:


# Test.assert_equals(list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]), 'Bart, Lisa, Maggie, Homer & Marge',

# "Must work with many names")

# Test.assert_equals(list([{name: 'Bart'},{name: 'Lisa'}]), 'Bart & Lisa', 

# "Must work with two names")

# Test.assert_equals(list([{name: 'Bart'}]), 'Bart', "Wrong output for a single name")