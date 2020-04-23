# ----- Problem -----
# input: string of letters, whitespace, punctuation, nums
# output: boolean true or false
#         true if string reversed matches org string
#         false if string reversed doesnt match original string
# rules: case insensitive and alphanumeric chars only
# mental model: Take in a string, remove all whitespace and punctuation. Make a copy
# and reverse it. If matches, return true else false. 
# ----- Examples -----
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false
# ----- Data Structure -----
# input: string 
# output: boolean
# ----- Algorithm -----
# take string downcase, remove whitespace, remove punctuation. 
# make copy of string and reverse 
# compare string == string.reverse 
# ----- Code -----
def palindrome?(string)
  string.reverse == string
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

p real_palindrome?('madam') 
#== true
p real_palindrome?('Madam') 
#== true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam")
# == true # (only alphanumerics matter)
p real_palindrome?('356653')
# == true
p real_palindrome?('356a653')
# == true
p real_palindrome?('123ab321')
# == false

