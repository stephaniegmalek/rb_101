# ----- Problem -----
# input: string 
# output: array of substrings that are palindromes
# rules:
#       Explicit Requirements:
#       - palindrome consists of the same sequence of characters forwards as it does backwards
#       - consider all characters 
#       - pay attention to case "AbcbA" is but "Abcba" nor "Abc-bA" is NOT
#       - single characters are NOT palindromes
#       - use substrings method from previous exercise

# ----- Examples -----
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# ----- Data Structure -----
# strings, arrays of substrings 

# ----- Algorithm -----
# SET result variable to empty array
# SET substrings to result of substrings method  
# Iterate thru substrings array 
#   - if substring is equal to substring reversed 
#   -   add substring to result variable
# RETURN result variable 

# ----- Code -----
def substrings_at_start(string)
  substrings = []
  0.upto(string.size - 1) do |index|
    substrings << string[0..index]
  end
  substrings
end

def substrings(string)
  results = []
  string.gsub!(/[^a-zA-Z0-9]/, '')
  (0...string.size).each do |start_index|
    substring = string[start_index..-1]
    results.concat(substrings_at_start(substring))
  end
  results
end

def palindromes(string)
  result = []
  substrings_array = substrings(string)
  substrings_array.each do |substring|
    if substring == substring.reverse && substring.size > 1
      result << substring
    end
  end
  result 
end

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye') 
# == [ 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#      'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#      '-madam-', 'madam', 'ada', 'oo']
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]