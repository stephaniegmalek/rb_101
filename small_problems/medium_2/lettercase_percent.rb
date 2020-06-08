# ----- Problem -----
# input: string of uppercase and lowercase characters and characters that are neither
# output: hash with percentage of chars in string that are lowercase, percentage
#         of chars that are uppercase and percentage of chars that are neither
# rules: 
#       Explicit Requirements:
#       - string will always contain at least one character
#       - percentage is float or integer
# mental model:
#       - determine which chars are uppercase, lowercase or neither. Find sum of eacch
#         divide sum of each by total characters

# ----- Examples -----
# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# ----- Data Structure -----
# strings, hash, int/float

# ----- Algorithm -----
# SET percentages variable equal to empty hash
# SET sum_lower variable equal to zero
# SET sum_upper variable equal to zero
# SET sum_neither variable equal to zero
# Iterate thru substrings of string
#   - IF string matches uppercase characters
#     - sum_upper variable equals sum_upper + 1
#   - IF string matches lowercase characters
#     - sum_lower variable equals sum_lower + 1
#   - IF string matches neither 
#     - sum_neither variable equals sum_neither + 1
# SET percentages hash key lowercase equal to (sum_lower / string.length) * 100
# SET percentage hash key uppercase equal to (sum_upper / string.length) * 100
# SET percentage hash key neither equal to (sum_neither / string length) * 100

# ----- Code -----
def letter_percentages(string)
  percentages = {}
  counts = { sum_lower: 0, sum_upper: 0, sum_neither: 0 }
  string.chars.each do |char|
    if char.match(/[a-z]/)
      counts[:sum_lower] += 1
    elsif char.match(/[A-Z]/)
      counts[:sum_upper] += 1
    elsif char.match(/[^a-z]/i)
      counts[:sum_neither] += 1
    end
  end
  percentages[:lowercase] = (counts[:sum_lower] / string.length.to_f) * 100
  percentages[:uppercase] = (counts[:sum_upper] / string.length.to_f) * 100
  percentages[:neither] = (counts[:sum_neither] / string.length.to_f) * 100
  percentages
end

p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
 letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }