# ----- Problem -----
# input: num/integer
# output: string of num/integer
# rules: no standard conversions. look at each digit of num and convert to string and combine
# mental model: take number. split into each digit. convert each digit to string, combine all strings
# ----- Example -----
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'
# integer_to_string(1234) == '1234'
# ----- Data Structure -----
# input: num/integer
# output: string of num/integer
# separate all digits into array, convert each ele to str, combine all strings
# ----- Algorithm -----
# num_array = number into digits
# iterate through num_array and convert each digit to string
# combine all substrings 
# ----- Code -----
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
  digits = ""
  loop do
    integer, remainder = integer.divmod(10)
    digits.prepend(DIGITS[remainder])
    break if integer == 0
  end
  digits
end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)