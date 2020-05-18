# ----- Problem -----
# input: string 
# output: boolean
# rules:
#       Explicit Requirments:
#       - true if all alphabetic characters in input string are uppercase
#       - ignore non-alphabetic characters 
#       - if no alphabetic characters in input string output true

# # ----- Examples -----
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

# ----- Data Structure -----
# strings, booleans

# ----- Algorithm -----
# Remove non-alphabetic characters 
# SET str_arr variable to string array of chars 
# Iterate thru each str_arr to test if all uppercase 
#   - char is uppercase letter ?
# RETURN false

[4, 'S', 'C', 'O', 'R', 'E', '!']

# ----- Code -----
def uppercase?(string)
  string.gsub!(/[^a-zA-Z]/, '')
  str_arr = string.chars
  str_arr.all? do |char|
    char == char.upcase
  end
end

def uppercase2?(string)
  string == string.upcase
end

p uppercase?('t') # == false
p uppercase?('T') # == true
p uppercase?('Four Score') # == false
p uppercase?('FOUR SCORE') # == true
p uppercase?('4SCORE!') # == true
p uppercase?('') # == true