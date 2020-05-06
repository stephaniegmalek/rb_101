# ----- Problem -----
# input: array of ints between 0 - 19
# output: array of ints, sorted alphabetical based on english word for each int 
# mental model: take array of nums, convert to english word, sort by alpha, convert back to int 

# ----- Example -----
# alphabetic_number_sort((0..19).to_a) == [
#  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#  6, 16, 10, 13, 3, 12, 2, 0
#]

# ----- Data Structure -----
# input: array of ints
# output: array of ints sorted 
# iterate thru array of ints, compare with constant to get english word. sort array based on 
# english word, then compare with constant again to get int back

# ----- Algorithm -----
# array.sort_by { |num| NUM_WORDS[num] }

# ----- Code -----
NUM_WORDS = %w(zero one two three four
               five six seven eight nine
               ten eleven twelve thirteen fourteen
               fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUM_WORDS[number] }
end

def alphabetic_number_sort2(numbers)
  numbers.sort { |a, b| NUM_WORDS[a] <=> NUM_WORDS[b] }
end
p alphabetic_number_sort2((0..19).to_a)  == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]