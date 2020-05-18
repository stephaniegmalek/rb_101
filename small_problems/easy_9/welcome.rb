# ----- Problem -----
# input: array of strings, hash
# output: greeting using argument info
# rules:
#       Explicit Requirements:
#       - greeting uses full name and title and occupation
#       - array will contain 2 or more elements that when combined with spaces produces name
#       - hash will contain two keys: :title and :occupation

# ----- Examples -----
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
# greetings(['Ruth', 'Theesfield'], { title: 'Master', occupation: 'Baker' })
# => Hello, Ruth Theesfield! Nice to have a Master Baker around.

# ----- Data Structure -----
# strings, arrays, hashes

# ----- Algorithm -----
# convert array to string using join
# OUTPUT

# ----- Code -----
def greetings(array, hash)
  name = array.join(' ')
  puts "=> Hello, #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
greetings(['Ruth', 'Theesfield'], { title: 'Master', occupation: 'Baker' })