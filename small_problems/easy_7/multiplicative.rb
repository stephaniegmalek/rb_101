# ----- Problem -----
# input: array of ints
# output: result of multiple all ints and dividing by num of ints
# rules: result rounded to 3 decimal places, array is non-empty
# mental model: Take array, multiple each element together, divide result by size
# of array, print result rounded to 3 decimal places

# ----- Example -----
# show_multiplicative_average([3, 5])
# The result is 7.500

# show_multiplicative_average([6])
# The result is 6.000

# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

# ----- Data Structure -----
# input: array of integers
# output: result of multiplying integers together then dividing by num of integers
# Iterate thru array, multiplying ints together then diving by array.length

# ----- Algorithm -----
# SET result = array.each.reduce(:*)
# SET total = result / array.length
# PRINT "The result is #{total.round(3)}"

# ----- Code -----
def show_multiplicative_average(array)
  sum = array.reduce(:*)
  total = sum.to_f / array.length
  puts "The result is #{format('%.3f', total)}"
end

def show_multiplicative_average2(array)
  product = 1.to_f
  array.each { |number| product *= number }
  average = product / array.size
  puts "The result is #{format('%.3f', average)}"
end

p show_multiplicative_average([3, 5])
p show_multiplicative_average([6])
p show_multiplicative_average([2, 5, 7, 11, 13, 17])