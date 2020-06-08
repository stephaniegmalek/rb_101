# ----- Problem -----
# input: single integer
# output: next featured number that is greater than the argument
# rules: 
#       Explicit Requirments:
#       - a featured number is: 
#         - odd number
#         - multiple of 7 
#         - each digit occurs exactly once
# mental model:
# - starting from the argument test if each number after it is a featured number

# ----- Examples -----
# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987
# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# ----- Data Structure -----
# numbers

# ----- Algorithm -----
# LOOP
#   number += 1
#   If number.odd? && number % 7 == 0 && number.digits == number.digits.uniq
#     break
# RETURN number

# ----- Code -----
def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0
  
  loop do
    return number if number.digits == number.digits.uniq
    number += 14
    break if number >= 9_876_543_210
  end
  'There is no possible number that fulfills those requirements.'
end

p featured(12) # == 21
p featured(20) # == 21
p featured(21) # == 35
p featured(997) # == 1029
p featured(1029) # == 1043
p featured(999_999) # == 1_023_547
p featured(999_999_987) # == 1_023_456_987
p featured(9_999_999_999)