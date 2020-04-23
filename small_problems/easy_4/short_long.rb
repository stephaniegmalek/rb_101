# ----- Problem -----
# input: 2 strings 
# output: shorter string + longer string + shorter string
# rules: strings are different lengths
# mental model: Given 2 strings. Determine which string is longer. Concat the two strings 
# in this order: shorter str + longer str + shorter str. 
# ----- Examples -----
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"
# short_long_short('a', 'lmnopqr') == 'almnopqra'
# ----- Data Structure -----
# input: 2 string
# output: 1 sting made up of 2 diff strings
# ----- Algorithm -----
# compare str1.length to str2.length
# if str1.length > str2.length 
#   - PRINT str2 + str1 + str2
# else
#   - PRINT str1 + str2 + str1
# ----- Code -----
def short_long_short(str1, str2)
  if str1.length > str2.length
    puts str2 + str1 + str2
  else
    puts str1 + str2 + str1
  end
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')