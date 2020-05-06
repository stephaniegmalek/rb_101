# ----- Problem -----
# input: string
# output: string / word - middle word of string arguement
# rules:
#       Explicit Requirements:
#       - return the middle word of string argument
#       - words are any sequence of non-blank characters
#       Implicit Requirements:
#       -

# ----- Examples -----
# middle_word('Launch School is great!') == 'is'
# middle_word('How are you today then?') == 'you'
# middle_word('Hi, my name is Bob') == 'name'
# middle_word('') == ''
# middle_word('Hello') == 'Hello'

# ----- Data Structure -----
# strings, arrays of substrings

# ----- Algorithm -----
# SET words_array to string.split
# RETURN words_array[words_array.size / 2.0]

# ----- Code -----
def middle_word(string)
  return '' if string.empty?
  words_array = string.split
  words_array[(words_array.size / 2.0).ceil-1]
end

p middle_word('Launch School is great!')
p middle_word('How are you today then?')
p middle_word('Hi, my name is Bob')
p middle_word('')
p middle_word('Hello')
p middle_word('Hello world')