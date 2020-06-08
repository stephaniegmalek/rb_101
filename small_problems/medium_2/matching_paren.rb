# ----- Problem -----
# input: string
# output: boolean
# rules:
#       Explicit Requirements
#       - return true if all parentheses in string are properly balanced
#       - to be properly balanced, parentheses must occur in matching '(' and ')' pairs
#       - balanced pairs must start with '(' NOT ')'
# mental model:
# - search for '(' and ')' characters. check if count of '(' same as ')'

# ----- Examples -----
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false

# ----- Data Structure -----
# string

# ----- Algorithm -----
# SET chars array equal to string converted to array of substrings 
# SET first variable equal to count of '(' in chars array
# SET second variable equal to count of ')' in chars array
# If firsr variable is equal to second variable return true

# ----- Code -----
def balanced?(string)
  parentheses = 0
  string.chars.each do |char|
    parentheses += 1 if char =~ /[\(\{\["']/
    parentheses -= 1 if char =~ /[\)\}\]"']/
    
    break if parentheses < 0
  end
  parentheses.zero?
end

balanced?('What (is) this?') #== true
balanced?('What is) this?') #== false
balanced?('What (is this?') #== false
balanced?('((What) (is this))?') #== true
balanced?('((What)) (is this))?') #== false
balanced?('Hey!') #== true
balanced?(')Hey!(') #== false
balanced?('What ((is))) up(') #== false

p balanced?("hi (t)here {")
p balanced?("hi (t)here {}")
