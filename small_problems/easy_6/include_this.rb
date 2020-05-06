# ----- Problem -----
# input: array and search value
# output: true or false
# rules: can't use Array#include?
# mental model: iterate thru elements of array and compare each one to search value, if they
# match return true

# ----- Example -----
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# ----- Data Structure -----
# input: array
# output: boolean
# 

# ----- Algorithm -----
# iterate thru array.each
#   return true if ele == value

# ----- Code -----
def include?(array, value)
  array.each { |ele| return true if ele == value }
  false
end

def include_2?(array, value)
  !!array.find_index(value)
end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3) 
p include?([nil], nil)
p include?([], nil)