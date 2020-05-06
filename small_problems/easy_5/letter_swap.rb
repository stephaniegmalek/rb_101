# ----- Problem -----
# input: string of words separated by spaces
# output: string of words where the first and last letters of every word are swapped
# rules: every word contains at least 1 letter, every string contains at least 1 word
# each string only has letters and spaces
# mental model: Take a string and split into words. Iterate over each word and 
# swap first letter for last letter, rejoin and print

# ----- Examples -----
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# ----- Data Structure -----
# input: string of words and spaces
# output: string of words and spaces
# convert input string to array of substrings/words to iterate over each word/char

# ----- Algorithm -----
# SET words = string.split
# Iterate over each word 
#   - SET word[0] = word[-1]
#   - SET word[-1] = word[0]
# RETURN words.join

# ----- Code -----
def swap(string)
  words = string.split
  words.each do |word| 
    word[0], word[-1] = word[-1], word[0]
  end
  words.join(" ")
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')