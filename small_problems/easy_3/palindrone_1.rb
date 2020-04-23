# ----- Problem -----
# input: a string, made up of letters, spaces, punctuation and nums
# output: true or false
#         true if string is palindrome
#         false if string is not palindrome
# rules: case sensitive and punctuation and spaces count
# mental model: Take in a string, reverse the string and compare to original string. 
# If they match return true, otherwise false.
# ----- Examples -----
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true
# ----- Data Structure -----
# input: string made up of characters, spaces, punctuation and nums
# output: boolean 
# need to create copy of input and reverse to compare the two
# ----- Algorithm -----
# return True if input.reverse == input
# ----- Code -----
def palindrome?(string)
  string.reverse == string
end

p palindrome?('madam')
# == true
p palindrome?('Madam')
# == false          # (case matters)
p palindrome?("madam i'm adam") 
# == false # (all characters matter)
p palindrome?('356653') 
# == true
p palindrome?(['12', '12'])