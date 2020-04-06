# Understand the problem 
# input: 1 integer. may be positive, negative or zero
# output: boolean value, true or false
# may not use #odd? or #even to test if integer's absolute value is odd
# Examples / Test Cases
# puts is_odd?(2) #=> false
# puts is_odd?(5) #=> true
# puts is_odd?(-17) #=> true
# puts is_odd?(-8) #=> false
# puts is_odd?(0) #=> false
# puts is_odd?(7) #=> true
# Data Structure 
# input => integers 
# output => boolean values
# Algorithms
# take in an integer
# if integer negative, multiple by -1 to make positive
# divide integer by 2 and if there is a remainder, the integer is odd
#def is_odd?(integer)
#  integer % 2 != 0
#end
def is_odd?(integer)
  integer.remainder(2) != 0
end
puts is_odd?(2) #=> false
puts is_odd?(5) #=> true
puts is_odd?(-17) #=> true
puts is_odd?(-8) #=> false
puts is_odd?(0) #=> false
puts is_odd?(7) #=> true