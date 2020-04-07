# Understand the Problem
# input: 1 positive integer
# output: 1 string of 0s and 1s alternating, length of input
# rules: always start string with 1
# Examples / Test Cases
# puts stringy(6) #=> '101010'
# puts stringy(9) #=> '101010101'
# puts stringy(4) #=> '1010'
# puts stringy(7) #=> '1010101'
# puts stringy(0) #=> ''
# Data Structures
# input: given positive integer
# output: string of 0s and 1s alternating, length of input
# need to iterate number of times to get correct length
# determine if 1 or 0 added if number even or odd
# convert to a string in last step
# Algorithm
# given a number, NUM which will be how many times we loop
# SET empty array
# for NUM times, for each num
# if num is odd number, add 0 to string (because times starts at 0)
# if numis even number, add 1 to string
# convert array to string with join
def stringy(number, start=1)
  numbers = []
  
  number.times do |i|
    first, second = start == 1 ? [1, 0] : [0, 1]
    number = i.even? ? first : second
    numbers << number
  end
  
  numbers.join
end
puts stringy(6, 0)
puts stringy(9, 0)
puts stringy(4)
puts stringy(7)