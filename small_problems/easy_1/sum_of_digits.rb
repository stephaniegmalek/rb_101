# Understand the Problem
# input: 1 positive integer
# output: sum of given integers digits
# Examples / Test Cases
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# Data Structures
# input: integer
# output: integer
# inbtwn: convert integer to an array and then add elements
# Algorithm
# Given integer, convert to array with digits
# use reduce(:+) to get sum of digits
#def sum(number)
#  number.digits.reduce(:+)
#end
#def sum(number)
#  arr = number.to_s.chars
#  sum = 0
#  arr.each do |num|
#    sum += num.to_i
#  end
#  sum
#end
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end
puts sum(456)
puts sum(23)
puts sum(496)
puts sum(123_456_789)