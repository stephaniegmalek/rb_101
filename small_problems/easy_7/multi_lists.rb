# ----- Problem -----
# input: 2 arrays
# output: 1 array
# rules: returned array contains the product of each pair of numbers from input arrays
# that have the same index. the 2 arrays will have the same number of elements

# ----- Examples -----
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
# multiply_list([1, 2, 3], [4, 5, 6]) == [4, 10, 18]

# ----- Data Structure -----
# input: 2 arrays
# output: 1 array with elements being the product of 2 arrays
# iterate thru both arrays and multiple array1[0] * array2[0] and so on

# ----- Algorithm -----
# SET i = 0
# SET product_array = []
# loop do
#   product_array << array1[i] * array[i]
#   i +=1
#   break if i > array.length
# RETURN product_array

# ----- Code -----
def multiply_list(array1, array2)
  product_array = []
  
  array1.each_with_index do |ele, idx|
    product_array << ele * array2[idx]
  end
  product_array
end

def multiply_list2(array1, array2)
  array1.zip(array2).map { |array| array.reduce(:*) }
end

p multiply_list2([3, 5, 7], [9, 10, 11])
p multiply_list2([1, 2, 3], [4, 5, 6])