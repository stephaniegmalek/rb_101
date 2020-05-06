# ----- Problem -----
# input: 2 arrays
# output: 1 array (new array)
# rules:
#       Explicit Requirements:
#       - output array contains product of every pair of numbers that can be formed
#         between the elements of the 2 arrays
#       - products sorted by increasing value
#       - neither argument array is empty
#       Implicit Requirements:
#       - argument arrays don't have to be the same number of elements 
#       - numbers only 

# ----- Example -----
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# ----- Data Structure -----
# arrays

# ----- Algorithm -----
# SET result variable = empty array
# SET index_1 = 0
# SET index_2 = 0
# LOOP which will break when index_1 == array_1.size
#   Within loop enter inner LOOP the will break when index_2 == array_2.size
#     - append to result array array_1[index_1] * array[index_2]
#     - increment index_2 += 1
#   END inner loop
# increment index_1 += 1
# Reassign index_2 = 0
# END outer loop
# sort result array by increasing value
# RETURN resullt array

# ----- Code -----
def multiply_all_pairs(array_1, array_2)
  result = []
  index_1 = 0
  index_2 = 0
  loop do
    break if index_1 == array_1.size
    loop do
      break if index_2 == array_2.size
      result << array_1[index_1] * array_2[index_2]
      index_2 += 1
    end 
    index_1 += 1
    index_2 = 0
  end
  result.sort
end

def multiply_all_pairs2(array_1, array_2)
  products = []
  array_1.each do |ele_1|
    array_2.each do |ele_2|
      products << ele_1 * ele_2 
    end
  end
  products.sort
end

def multiply_all_pairs3(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

p multiply_all_pairs3([2, 4], [4, 3, 1, 2]) 