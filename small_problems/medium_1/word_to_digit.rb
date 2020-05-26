# ----- Problem -----
# input: string of multiple words
# output: same string but with any sequence of words that are numbers converted to digits
# rules:
#       Explicit Requirements:
#       - 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
#         are to be converted to a string of digits

# ----- Example -----
# word_to_digit('Please call me at five five five one two three four. Thanks.')

# ----- Data Structure -----
# strings, hash

# ----- Algorithm -----
# SET DIGITS constant variable to hash
#   - each key is number 0 - 9 as word ex: 'zero'
#   - each value is corresponding digit as string
# Iterate through each key of DIGITS hash
#   - IF key matches one of words in the input sentence
#     - make substring the corresponding value of key
# RETURN sentence

# ----- Code -----
DIGITS = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}

def collapse_digits(sentence)
  sentence.gsub!(/(\d)\s(?=\d)/) { $1 }
end

def format_phone_numbers(sentence)
  sentence.gsub!(/(\d\d\d)?(\d\d\d)(\d\d\d\d)/) do 
    if $1 
      "(" + $1 + ") " + $2 + "-" + $3
    else
      $2 + "-" + $3
    end
  end
  sentence
end

def word_to_digit(sentence)
  DIGITS.keys.each do |word|
    sentence.gsub!(/\b#{word}\b/i, DIGITS[word])
  end
  collapse_digits(sentence)
  format_phone_numbers(sentence)
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')