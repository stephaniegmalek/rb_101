# ----- Problem -----
# input: array of elements
# output new array of elements in reverse order
# rules: original array unmodified, 
# mental model: create new array, add elements one by one to new array starting from 
# last element of original array working backwards

# ----- Examples -----
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true

# ----- Data Structure -----
# input: array of elements
# output: new array of elements in reverse order, original array in tack
# work through array backwards, adding each element to new array 

# ----- Algorithm -----
# SET reversed_list = []
# index = -1
# loop do
#   reversed_list << list[index]
#   index -= 1
#   breal if reversed_list.size == list.size 
# end
# RETURN reversed_list

# ----- Code -----
def reverse(array)
  reversed_array = []
  index = -1
  loop do
    reversed_array << array[index]
    index -= 1
    break if reversed_array.size == array.size
  end
  reversed_array
end

def reverse2(array)
  result = []
  array.reverse_each { |element| result << element }
  result
end

def reverse3(array)
  array.reduce([], :unshift)
end

def reverse4(array)
  array.each_with_object([]) { |ele, reversed_array| reversed_array.prepend(ele) }
end

p reverse3([1,2,3,4]) # == [4,3,2,1]          # => true
p reverse3(%w(a b e d c)) # == %w(c d e b a)  # => true
p reverse3(['abc']) # == ['abc']              # => true
p reverse3([]) # == [] 