# ----- Problem -----
# input: an array of elements
# output: an array of odd indexed elements
# mental model: given an array of elements, shovel odd indexed elements into 
# new array, print new array
# ----- Example -----
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
# ----- Data Structure -----
# input: an array of elements
# outnew: new array with odd indexed elements of input array
# ----- Algorithm -----
# SET odd_array = []
# Iterate through original array and select if array[index] is odd? go to odd_array
# ----- Code -----
def oddities(array)
  odd_list = []
  array.each_with_index do |ele, i| 
    if i.even?
      odd_list << ele
    end
  end
  odd_list
end

p oddities([2, 3, 4, 5, 6]) 
# == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) 
# == [1, 3, 5]
p oddities(['abc', 'def']) 
# == ['abc']
p oddities([123]) 
# == [123]
p oddities([])
# == []