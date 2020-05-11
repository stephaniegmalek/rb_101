# ----- Problem -----
# input: string
# output: new string with every consonant char doubled
# rules: 
#       Explicit Requirements:
#       - every consonant char is doubled
#       - vowels (a,e,i,o,u), digits, punctuation and whitespace is NOT
#       - new string 

# ----- Examples -----
# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

# ----- Data Structure -----
# strings, arrays

# ----- Algorithm -----
# SET result variable to empty string
# Iterate thru strings characters 
#   - IF character matches a consonant
#     add character to result variable twice 
#   - ELSE 
#     add character to result variable once
# RETURN result 

# ----- Code -----
def double_consonants(string)
  result = ''
  string.chars do |char|
    if char.match?(/[a-zA-Z]/)
      result << char << char
    else 
      result << char
    end
  end
  result
end

p double_consonants('String')
p double_consonants('Hello-World!')
p double_consonants('July 4th')
p double_consonants('')