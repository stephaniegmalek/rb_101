# ----- Problem -----
# input: string
# output: array of all substrings that start at beginning of original string
# rules: 
#       Explicit Requirements
#       - return array should be arranged from shortest to longest substrings

# ----- Examples -----
# substrings_at_start('abc') == ['a', 'ab', 'abc']
# substrings_at_start('a') == ['a']
# substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
# substrings_at_start('steph') == ['s', 'st', 'ste', 'step', 'steph']

# ----- Data Structure -----
# convert input string to array to iterate/loop

# ----- Algorithm -----
# SET substrings variable = []
# SET index variable to 0
# LOOP
#   - break if index same size of string
#   - SET substring to string index 0 to index 
#   - Add substring to substrings array
#   - increment index variable by 1
# RETURN substrings 

# ----- Code -----
def substrings_at_start(string)
  substrings = []
  index = 0
  loop do
    break if index == string.size
    substring = string[0..index]
    substrings << substring
    index += 1
  end
  substrings
end

def substrings_at_start2(string)
  substrings = []
  0.upto(string.size - 1) do |index|
    substrings << string[0..index]
  end
  substrings
end

p substrings_at_start('abc')
p substrings_at_start('a')
p substrings_at_start('xyzzy')