# ----- Problem -----
# input: string 
# output: string 
# rules: output string contains org values but every other char is capitalized, chars
# that aren't letters should not be changed but count as char when switching between
# upper and lowercase
# mental model: Take string and iterate thru each char, even index is upper, odd 
# index is lowercase

# ----- Example -----
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# ----- Data Structure -----
# input: string
# output: modified string 
# convert string to array of characters and iterate thru, transforming each char
# based on its index 

# ----- Algorithm -----
# SET staggered = string.each_with_index
#   Iterate thru each char with index 
#     -if index is even?
#       char.upcase
#     if index is odd? 
#       char.downcase 
# Return staggered 

# ----- Code -----
def staggered_case(string)
  staggered = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      staggered += char.upcase
    else
      staggered += char.downcase
    end
    need_upper = !need_upper
  end
  staggered
end

def staggered_case2(string)
  letters = string.chars
  result = letters.map.with_index do |letter, index|
    index.odd? ? letter.downcase : letter.upcase
  end
  result.join
end

def staggered_case3(string, caps = "up")
  letters = string.chars
  result = letters.map.with_index do |letter, index|
    if caps == "up"
      index.even? ? letter.upcase : letter.downcase
    elsif caps == "down"
      index.even? ? letter.downcase : letter.upcase
    end
  end
  result.join
end

p staggered_case2('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')