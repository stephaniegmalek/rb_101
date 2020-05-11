# ----- Problem -----
# input: array of numbers
# output: sum of the sums of each leading subsequence for array
# rules:
#       Explicit Requirements:
#       

# ----- Examples -----
# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == (1) + (1 + 2) + (1 + 2 + 3) + (1 + 2 + 3 + 4) + (1 + 2 + 3 + 4 + 5) # -> (35)

# ----- Data Structure -----
# arrays and integers

# ----- Algorithm -----
# SET sum variable = 0
# SET range variable = 0
# LOOP thru array
#   - break when range > array.size
#   - num variable = array.slice[0..range].sum
#   - sum += num
#   - range increment by 1

# ----- Code -----
def sum_of_sums(array)
  sum = 0
  range = 0
  loop do
    break if range == array.size
    num = array.slice(0..range).sum
    sum += num
    range += 1
  end
  sum
end

def sum_of_sums2(array)
  sum = 0
  accumulator = 0
  
  array.each do |number|
    accumulator += number
    sum += accumulator
  end
  sum
end

p sum_of_sums2([3, 5, 2])
p sum_of_sums2([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums2([1, 2, 3, 4, 5])