# ----- Problem -----
# input: string
# output: hash with 3 keys: lowercase chars, uppercase chars and neither each with the 
# count of keys found in input string
# rules: spaces count
# mental model: Iterate thru string comparing each character to lowercase or uppercase
# if find one, increment count of appropriate keys 

# ----- Examples -----
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# ----- Data Structure -----
# input: string
# output: hash with counts

# ----- Algorithm -----
# SET count_hash = { lowercase: 0, uppercase: 0, neither: 0 }
# Iterate thru string.chars
#   if chars match? a-z
#     count_hash[lowercase:] += 1
#   if chars match? A-Z
#     count_hash[uppercase:] += 1
#   else
#     count_hash[neither:] += 1
# END
# RETURN count_hash

# ----- Code -----
def letter_case_count(string)
  count_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars do |char|
    if char.match?(/[a-z]/)
      count_hash[:lowercase] += 1
    elsif char.match?(/[A-Z]/)
      count_hash[:uppercase] += 1
    else 
      count_hash[:neither] += 1
    end
  end
  count_hash
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')