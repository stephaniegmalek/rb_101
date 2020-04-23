# ----- Problem -----
# input: array of numbers
# output: array of numbers with same num of ele, each ele running total of org array
# mental model: take an array of nums, add ele 1 to ele 2, add new ele 2 to ele3 and so on
# ----- Examples -----
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []
# ----- Data Structure -----
# input: array
# output: new array
# ----- Algorithm -----
# iterate through array
# each time add previous element and put in new array
# ----- Code -----
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])