# ----- Problem -----
# input: string
# output: array of all substrings of string
# rules: 
#       Explicit Requirements:
#       - output list is ordered by where in the string the substring begins
#       - output list then ordered from shortest to longest
#       - use substrings_at_start method

# ----- Example -----
# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# ----- Data Structure -----
# strings, array of strings 

# ----- Algorithm -----
# SET results variable to empty array
# SET start_index variable to 0
# LOOP
#   - break if start_index variable == string size 
#   - find all substrings for first char
#   - increment start_index variable by 1
# RETURN results 

# ----- Code -----
def substrings_at_start(string)
  substrings = []
  0.upto(string.size - 1) do |index|
    substrings << string[0..index]
  end
  substrings
end

def substrings(string)
  substrings = []
  start_index = 0
  loop do
    break if start_index == string.size
    start_index.upto(string.size - 1) do |index|
      substrings << string[start_index..index]
    end
    start_index += 1
  end
  substrings
end

def substrings2(string)
  results = []
  (0...string.size).each do |start_index|
    substring = string[start_index..-1]
    results.concat(substrings_at_start(substring))
  end
  results
end

p substrings2('abcde')