# ----- Problem -----
# input: a string
# output: the ASCII string value
# rules: ASCII string value is the sum of the ASCII value of every char
# in string. Can use String#ord to determine ASCII value of each char
# mental model: Iterate over each char of string to determine ASCII value. Then 
# add all together
# ----- Example -----
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0
# ----- Data Structure -----
# input: string
# output: integer
# convert string to array of chars convert each char to int via #ord find sum of all ints in array
# ----- Algorithm -----
# SET chars = string.split(//)
# Iterate over chars and transform each char to ASCII value using #ord
# find sum of ASCII values and output
# ----- Code -----
def ascii_value(string)
  chars = string.split(//)
  values = chars.map { |char| char.ord }
  values.sum
end

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')

# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end