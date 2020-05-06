# ----- Problem -----
# input: 2 arrays
# output: 1 array with elements from 2 arrays alternating 
# rules: input arrays are non-empty and have same number of elements
# mental model: iterate thru each array and put array 1 ele then array 2 ele so on and so forth

# ----- Example -----
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# ----- Data Structure -----
# input: 2 arrays
# output: 1 array interlaced 

# ----- Algorithm -----
# SET i = 0
# SET combined = []
# LOOP
#   combined << array_1[i]
#   combined << array_2[i]
#   i += 1
#   break if i == array_1.length
# END
# RETURN combined

# ----- Code -----
def interleave(array_1, array_2)
  combined = []
  i = 0
  loop do
    combined << array_1[i]
    combined << array_2[i]
    i += 1
    break if i == array_1.length
  end
  combined
end

def interleave2(array1, array2)
  result = []
  array1.each_with_index do |ele, index|
    result << ele << array2[index]
  end
  result
end

def interleave3(array1, array2)
  array1.zip(array2).flatten
end

p interleave3([1, 2, 3], ['a', 'b', 'c'])