# ----- Problem -----
# input: array 
# output: new array with first element at end of array
# rules:
#       Explicit Requirements:
#       - original array isn't modified
#       - can't use Array#rotate or Array#rotate!

# ----- Examples -----
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]

# ----- Data Structure -----
# arrays

# ----- Algorithm -----
# SET rotated variable to input array
# SET first variable to rotated variable shift
# append first variable to rotated variable 
# return rotated variable 

# ----- Code -----
def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_string(string)
  string[1..-1] + string[0]
end

def rotate_integer(integer)
  int_string = rotate_string(integer.to_s)
  int_string.to_i
end

p rotate_array([7, 3, 5, 2, 9, 1])
p rotate_array(['a', 'b', 'c'])
p rotate_array(['a'])

x = [1, 2, 3, 4]
p rotate_array(x)
p x == [1, 2, 3, 4]