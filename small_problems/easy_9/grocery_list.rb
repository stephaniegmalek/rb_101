# ----- Problem -----
# input: 2D array
# output: 1D array
# rules:
#       Explicit Requirements:
#       - input array has array of fruits with quantitites ex: ['apples', 3]
#       - output array is 1 array with each fruit listed the quantity amount 
#         ex: ['apples', 'apples', 'apples']

# ----- Example -----
# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

# ----- Data Strutcure -----
# arrays, strings, integers

# ----- Algorithm -----
# SET new_array variable to empty array
# Iterate through each sub array
#   - ADD sub array element at index 0 to new_array variable sub array element at
#     index 1 times
# RETURN new_array

# ----- Code -----
def buy_fruit(list_array)
  new_list = []
  list_array.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { new_list << fruit }
  end
  new_list
end

def buy_fruit2(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit2([["apples", 3], ["orange", 1], ["bananas", 2]])