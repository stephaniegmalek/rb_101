# Understand the Problem
# input: 1 string 
# output: 1 string with words in reverse order
# Examples / Test Cases
# reverse_sentence('') == ''
# reverse_sentence('Hello World') => 'World Hello'
# reverse_sentence('Reverse these words') == 'words these Reverse'
# Data Structure
# input is string
# want to convert to array to reverse order of words then convert
# back to string for output
# Algorthms
# take a string, split the string by whitespace in array of words
# reverse order of words, convert back to string
def reverse_sentence(sentence)
  sentence.split.reverse.join(" ")
end
puts reverse_sentence('Hello World')
puts reverse_sentence('Reverse these words')