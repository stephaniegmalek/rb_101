# ----- Problem -----
# input: string
# output: new string where every uppercase letter is replaced by lowercase and vice versa
# rules: no String#swapcase
# mental model: Iterate thru each character, if uppercase make lowercase, if lowercase
# make uppercase

# ----- Example -----
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# ----- Data Structure -----
# input: string
# output: string 
# Iterate thru each char of string, if uppercase make lowercase, if lowercase make upper 

# ----- Algorithm -----
# Iterate thru string with chars
#   if char.match?(/[A-Z]/)
#     char.downcase
#   if char.match?(/[a-z]/)
#     char.upcase

# ----- Code -----
def swapcase(string)
  swapped = string.chars.map do |char|
    if char =~ /[A-Z]/
      char.downcase
    elsif char =~ /[a-z]/
      char.upcase
    else
     char 
    end
  end
  swapped.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')