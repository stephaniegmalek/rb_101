# ----- Problem -----
# input: string
# output: string / substring
# rules:
#       Explicit Requirements:
#       - return the next to last word of string argument
#       - words are any sequence of non-blank ccharacters
#       - input strings will always contain at least two words

# ----- Examples -----
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'

# ----- Data Structure -----
# strings, arrays of substrings

# ----- Algorithm -----
# SET words_arr to split string 
# RETURN words_arr[-2]

# ----- Code -----
def penultimate(string)
  word_array = string.split
  word_array[-2]
end

p penultimate('last word')
p penultimate('Launch School is great!')