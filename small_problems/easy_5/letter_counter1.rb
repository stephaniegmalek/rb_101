# ----- Problem -----
# input: string with 1 or more space separated words
# output: hash that shows number of words of different sizes
# rules: a word consist of any string of chars that don't include a space
# special characters are considered part of the word 
# mental model: Split string into words, count length and add to hash. Check if 
# length is already in hash, if is, add 1 to value. 

# ----- Example -----
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}
# word_sizes('What's up') == { 6 => 1, 2 => 1 }

# ----- Data Structure -----
# input: string with 1 or more space separated words
# output: hash that shows num of words of different sizes
# convert string to array of substring, split by spaces
# count length of each substring and make key of hash
# every time we find another substring with same length, add 1 to value

# ----- Algorithm -----
# words = string.split
# SET hash = {}
# iterate over array of words and get word.length
#   - add word.legnth to hash as key
#   - if already have word.length in hash as key, add 1 to value
# return hash

# ----- Code -----
def word_sizes(string)
  counter = Hash.new(0)
  string.split.each do |word|
    counter[word.length] += 1
  end
  counter
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')