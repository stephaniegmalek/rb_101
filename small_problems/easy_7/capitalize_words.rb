# ----- Problem -----
# input: 1 string
# output: 1 string with first char of every word capitalized
# rules: all other chars lowercase, words are non-blank chars 
# mental model: Take string and iterate over each word to capitalized first char 

# ----- Example -----
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# ----- Data Structure -----
# input: 1 sting
# output: copy of input string 
# convert string to array of substrings to iterate thru and capitalize

# ----- Algorithm -----
# SET words = string.split
# Iterate thru words using map
#   - word.capitalize
# RETURN words.join(" ")

# ----- Code -----
def word_cap(string)
  words = string.split
  words.map { |word| word.capitalize! }
  words.join(' ')
end

def word_cap2(string)
  string.split.map(&:capitalize).join(' ')  
end

def word_cap3(string)
  words = string.split.map do |word|
    word[0].upcase + word[1..-1].downcase
  end
  words.join(' ')
end

def word_cap4(string)
  words_array = string.split
  
  result = words_array.map do |word|
    chars = word.chars
    new_chars = chars.map.with_index do |char, index|
      index == 0 ? char.upcase : char
    end
    new_chars.join
  end
  result.join(' ')
end

p word_cap3('four score and seven')
p word_cap4('the javaScript language')
p word_cap('this is a "quoted" word')