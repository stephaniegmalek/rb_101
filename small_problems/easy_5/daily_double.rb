# ----- Problem -----
# input: string
# output: string with all consecutive duplicate characters collapsed into single characters
# rules: consecutive duplicate chars need to be removed. no built in ruby methody
# squeeze. 
# mental model: Iterate through each chr of string. If last/previous chr was same as current
# chr don't add to new string

# ----- Examples -----
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# ----- Data Structure -----
# input: string
# output: string
# create new empty string, iterate thru each chr of input str, add each chr to new
# str unless it matches the last char added to the new str 

# ----- Algorithm -----
# SET crunched = ''
# Iterate thru str chars 
#   crunched << char unless crunched.last == char 

# ----- Code -----
def crunch(string)
  crunched = ''
  string.chars { |char| crunched << char unless crunched[-1] == char }
  crunched
end

def crunch2(string)
  string.gsub(/(\w)\1+/) { |match| match[0] }
end

def crunch3(string)
  index = 0
  crunched = ''
  while index <= string.length - 1
    crunched << string[index] unless string[index] == string[index + 1]
    index += 1
  end
  crunched
end

p crunch3('ddaaiillyy ddoouubbllee')
p crunch3('4444abcabccba')
p crunch3('ggggggggggggggg')
p crunch('a')
p crunch('')