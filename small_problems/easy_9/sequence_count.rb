# ----- Problem -----
# input: 2 integers
# output: array of integers
# rules:
#       Explicit Requirements:
#       - first input integer is a count
#       - second input integer is the first number of the sequence in the output array 
#       - output array contains sequence of integers, starting with second argument
#         with same number of elements as first argument 
#       - each element is a multiple of the starting number or second argument

# ----- Examples -----
# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []

# ----- Data Structure -----
# integers, arrays

# ----- Algorithm -----
# SET array variable to empty array
# SET counter = 1
# LOOP 
# - break if counter > count
# - array << start_num * counter
# END
# RETURN array

# ----- Code -----
def sequence(count, start_num)
  array = []
  counter = 1
  loop do
    break if counter > count
    array << start_num * counter
    counter += 1
  end
  array 
end

def sequence2(count, start_num)
  sequence = []
  number = start_num
  
  count.times do 
    sequence << number 
    number += start_num
  end
  sequence
end

def sequence3(count, first)
  (1..count).map { |value| value * first }
end

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)