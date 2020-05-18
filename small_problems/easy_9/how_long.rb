# ----- Problem -----
# input: string 
# output: array 
# rules:
#       Explicit Requirements:
#       - output array contains every word from the string with a space and word length added
#       - input string has words separated by 1 space and any substring of non-space char is word
#       Implicit Requirements:
#       - non-alpha characters in words count towards word length 

# ----- Example -----
# word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# word_lengths("") == []

# ----- Data Structure -----
# strings, arrays

# ----- Algorithm -----
# SET array variable to input string split along spaces
# Iterate thru array 
#   - for each sub-string, append " substring.size"

# ----- Code -----
def word_lengths(string)
  array = []
  string.split.each do |substring|
    array << substring + " #{substring.size}"
  end
  array
end

def word_lengths2(string)
  words = string.split
  
  words.map do |word|
    word + ' ' + word.length.to_s
  end
end

p word_lengths("cow sheep chicken")
p word_lengths("baseball hot dogs and apple pie")
p word_lengths("It ain't easy, is it?")
p word_lengths("Supercalifragilisticexpialidocious") 
p word_lengths("")