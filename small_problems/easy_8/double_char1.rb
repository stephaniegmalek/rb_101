# ----- Problem -----
# input: string
# output: new string in which every character is doubled
# rules: 
#       Explicit Requirements:
#       - new string
#       - every character in string doubled 
#       Implicit Requirements:
#       - spaces and characters too, unless string empty

# ----- Examples -----
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

# ----- Data Structure -----
# strings 

# ----- Algorithm -----
# SET result variable to empty string
# Iterate thru string
#   - add char twice to result variable 
# RETRUN result 

# ----- Code -----
def repeater(string)
  result = ''
  string.chars do |char|
    result << char << char 
  end
  result 
end

p repeater('Hello')
p repeater('Good job!')
p repeater('')