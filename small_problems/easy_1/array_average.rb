# Understand the Problem
# input: 1 array containing integers
# output: average of all nums in array
# rules: array never empty and nums positive
# Examples / Test Cases
# puts average([1, 5, 87, 45, 8, 8]) #=> 25
# puts average([9, 47, 23, 95, 16, 52]) #=> 40
# puts average([1, 2, 3]) #=> 2
# Data Structures
# input: array of integers
# output: 1 integer 
# Algorithm
# SET sum
# iterate through array of numbers, adding each number to sum
# divide sum by length of array
# return sum
#def average(array)
#  sum = 0
#  array.each { |number| sum += number }
#  sum / array.count
#end
def average(array)
  sum = array.reduce(:+)
  sum.to_f / array.count
end
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
