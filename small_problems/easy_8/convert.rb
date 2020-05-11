# ----- Problem -----
# input: positive integer
# output: reversed input
# rules: 
#       Explicit Requirements:
#       - no leading zeros in return value

# ----- Examples -----
# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1

# ----- Data Structure -----
# integers , arrays 

# ----- Algorithm -----
# SET result variable to empty array 
# convert integer to string 
# SET counter variable to -1
# LOOP
#   break if counter equals string size as negative
#   add string[counter] to result array 
#   increment counter by -1 
# Combine results array into string then convert to integer

# ----- Code -----
def reversed_number(number)
  result = []
  number_as_string = number.to_s
  counter = -1
  loop do
    break if counter < -(number_as_string.size)
    result << number_as_string[counter]
    counter -= 1
  end
  result.join('').to_i
end

def reversed_number2(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

p reversed_number(12345)
p reversed_number(12213)
p reversed_number(456)
p reversed_number(12000)
p reversed_number(12003)
p reversed_number(1)