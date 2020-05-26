# ----- Problem -----
# input: 2 arguements: number and digit
# output: 1 number with the last n digits rotated
# rules:
#       Explicit Requiremnents:
#       - may use the rotate_array method from previous exercise
#       - may assume n is always a positive number

# ----- Examples -----
# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

# ----- Data Structure -----
# integers, strings, arrays

# ----- Algorithm -----
# SET string_int variable to arguement 1 converted to string
# convert string_int to array 
# slice array from 0 to n - 1 
# slice array from n to end of array (-1)
# slice array from n - 1

# ----- Code -----
def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  num_arr = number.to_s.chars
  rotated = num_arr[0..(-n-1)] + rotate_array(num_arr[-n..-1])
  rotated.join('').to_i
end



p rotate_rightmost_digits(735291, 1)
p rotate_rightmost_digits(735291, 2)
p rotate_rightmost_digits(735291, 3)
p rotate_rightmost_digits(735291, 4)
p rotate_rightmost_digits(735291, 5)
p rotate_rightmost_digits(735291, 6)