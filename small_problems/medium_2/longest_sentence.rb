# ----- Problem -----
# input: text file
# output: longest sentence in text file based on number of words and num of words
# rules:
#       Explicit Requirements:
#       - Sentences may end with periods, exclamations points or question marks
#       - any sequence of chars that are not spaces or sentence ending should be treated
#         as a word

# ----- Example -----


# ----- Data Structure -----
# strings, arrays

# ----- Algorithm -----
# SET text variable equal to txt file
# SET sentences variable equal to text variable split by sentence ending chars (.!?)
# Iterate thru sentence variable by sentence
#   RETURN max sentence length
# SET word_count variable to sentence.size
# PRINT sentence variable
# PRINT word_count variable 

# ----- Code -----
text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
longest_sentence = sentences.max_by { |sentence| sentence.split.size }
longest_sentence = longest_sentence.strip
word_count = longest_sentence.split.size

puts "#{longest_sentence}"
puts "Containing #{word_count} words"