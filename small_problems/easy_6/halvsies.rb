# ----- Problem -----
# input: an array
# output: 2 arrays, nested in array of input array divided in half
# rules: if input array has odd num, the middle element is placed in first half array
# mental model: Take array, if element index in first half of array, put in first half
# array, if element index in second half of array, put in second half array 

# ----- Examples -----
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# ----- Data Structure -----
# input: 1 dimensional array
# output: 1 2 dimensional array with 2 arrays nested 
# create 2 new arrays, first half and second half and append to original array

# ----- Algorithm -----
# SET first_half_array = []
# SET second_half_array = []
# SET result_array = []
# Iterate through array
#   for each ele if index < array.size/2 add to first_half_array
# result_array << first_half_array
# result_array << second_half_array
# RETURN result_array

# ----- Code -----
def halvsies(array)
  first_half_array = []
  second_half_array = []
  i = 0
  loop do
    if i < array.size / 2.0
      first_half_array << array[i]
    else
      second_half_array << array[i]
    end 
    i += 1
    break if i == array.size
  end
  [first_half_array, second_half_array]
end

def halvsies2(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

p halvsies2([1, 2, 3, 4])
p halvsies2([1, 5, 2, 4, 3])
p halvsies2([5])
p halvsies2([])