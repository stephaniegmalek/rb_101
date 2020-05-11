# ----- Problem -----
# input: string
# output: middle character/s
# rules: 
#       Explicit Requirements:
#       - input string is non-empty
#       - if string arguement has odd length, return 1 character
#       - if string arguement has even length, return 2 characters

# ----- Examples -----
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

# ----- Data Structure -----
# strings 

# ----- Algorithm -----
# SET length variable to string size
# SET index variable to string size / 2.0
# IF length is odd?
#   - RETURN string[index]
# ELSE
#   - RETURN string[index, index + 1]

# ----- Code -----
def center_of(string)
  length = string.size
  index = length / 2
  if length.odd?
    string[index]
  else
    string[index - 1, 2]
  end
end

p center_of('I love ruby')
p center_of('Launch School')
p center_of('Launch')
p center_of('Launchschool')
p center_of('x')