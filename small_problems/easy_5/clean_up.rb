# ----- Problem -----
# input: string of words and non-alpha characters
# output: string of words and spaces only
# rules: never any consecutive spaces, words all lowercase
# mental model: iterate through each word and if characters match pattern (are 
# non-alpha chars) they will be deleted. words will be rejoined with spaces

# ----- Examples -----
# cleanup("---what's my +*& line?") == ' what s my line '
# cleanup("-you si$56lly dog!") == ' you silly dog '

# ----- Data Structure -----
# input: string of words and non-alpha chars and spaces
# output: string of words and spaces only
# use pattern to find and delete non-alpha

# ----- Algorithm -----
# Iterate through each character and delete('^a-z')
# PRINT words.join" "

# ----- Code -----
ALPHA = ('a'..'z').to_a

def cleanup(string)
  cleaned = []
  chrs = string.chars
  chrs.each do |letter|
    if ALPHA.include?(letter)
      cleaned << letter
    else
      cleaned << " " unless cleaned.last == " "
    end
  end
  cleaned.join
end

def cleanup2(string)
  string.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

p cleanup2("---what's my +*& line?")
