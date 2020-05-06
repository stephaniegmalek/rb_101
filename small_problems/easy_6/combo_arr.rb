# ----- Problem -----
# input: 2 arrays
# ouput: 1 array with element of 2 arrays combined, no duplicates
# mental model: create new array, add all of elements of first array, add all elements
# of second array checking that there isn't already that element in the array

# ----- Examples -----
#merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# ----- Data Structure -----
# input: 2 arrays
# output: 1 array 

# ----- Algorithm -----
# SET merged_array = []
# Iterate thru first array 
#   add each ele to merged array 
# Iterate thru second array 
#   add ele to merged array if no match
# RETURN merged_array

# ----- Code -----
def merge(array_1, array_2)
  merged_array = []
  array_1.each { |ele| merged_array << ele }
  array_2.each { |ele| merged_array << ele if !merged_array.include?(ele) }
  merged_array
end 

def merge2(array_1, array_2)
  array_1.concat(array_2).uniq
end

def merge3(array_1, array_2)
  array_1 | array_2
end

p merge3([1, 3, 5], [3, 6, 9])