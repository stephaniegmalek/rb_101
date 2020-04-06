# Understand the problem
# input: 1 string, containing 1 or more words
# output: 1 string, containing 1 or more words, reversed
# rules: if word is < 5 spaces, word isn't reversed 
# Examples / Test Cases
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS
# Data Structures
# input: string of 1 or more words 
# output: string of 1 or more words 
# use an array to separate the words and then nest another array
# so [ ["W", "a", "l", "k"], ["a","r", "o", "u", "n", "d"]]
# before rejoining all the letters and words back into 1 string
# Algorithms
# take a sentence string and split into array of words
# take each word of array and split into letters
# if word length >= 5 letters, reverse order of letters
# join letters back together and then join words back together
def reverse_words(sentence)
  reversed = []
  sentence.split.each do |word|
    if word.size >= 5
      reversed << word.reverse
    else
      reversed << word 
    end
  end
  p reversed.join(" ")
end
reverse_words('Professional')          # => lanoisseforP
reverse_words('Walk around the block') # => Walk dnuora the kcolb
reverse_words('Launch School')  