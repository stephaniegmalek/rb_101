# Understand the problem
# input: a positive integer
# output: array of integers each 0 - 9
# Examples / Test Cases
#puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
#puts digit_list(7) == [7]                     # => true
#puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
#puts digit_list(444) == [4, 4, 4]             # => true
# Data Structure
# integer into a string into an array
# Algorithm
# make number a string
# split string and separate each number into the array
# change stringd back to integers
def digit_list(integer)
  integer.to_s.chars.map { |ele| ele.to_i }
end
#def digit_list(number)
#  digits = []
#  loop do
#    number, remainder = number.divmod(10)
#    digits.unshift(remainder)
#    break if number == 0
#  end  
#  digits
#end
p digit_list(12345) #== [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true