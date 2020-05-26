# ----- Problem -----
# input: number
# output: rotated number
# rules:
#       Explicit Requirements:
#       - use previous rotate methods
#       - will not need to handle multiple 0s 

# ----- Examples -----
# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845

# ----- Data Structure -----
# numbers, strings, arrays

# ----- Algorithm -----
# SET num_length variable to input number converted to a string, string size
# SET counter variable to number length
# LOOP
#   - break if counter equals 0
#   - SET number equal to result of rotate_rightmost_digits method with number and counter as arguments
#   - counter -= 1
# END
# RETURN number

# ----- Code -----
def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  length = number.to_s.size
  length.downto(2) do |n|
     number = rotate_rightmost_digits(number, n)
  end
  number
end

p max_rotation(735291)
p max_rotation(3)
p max_rotation(35)
p max_rotation(105)
p max_rotation(8_703_529_146)