# ----- Problem -----
# input: array
# output: reversed array
# rules: mutates the caller, no #reverse!
# mental model: Iterate thru array, sending last element to front

# ----- Examples -----
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) == []
# list == []

# ----- Data Structure -----
# input: array
# output: same array, elements reversed in place
# swap first element with last element, swap second element with second from last element etc

# ----- Algorithm -----
# SET first index = 0
# SET last index = -1
# SET counter = 1
# while list.legnth < counter 
#   list[first index], list[last index] = list[last index], list[first index]
#   first index += 1
#   last index += 1
#   counter += 1
# end

# ----- Code -----
def reverse!(list)
  left_index = 0
  right_index = -1
  while left_index < list.length / 2
    list[left_index], list[right_index] = list[right_index], list[left_index]
    left_index += 1
    right_index -= 1
  end
  list
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []
