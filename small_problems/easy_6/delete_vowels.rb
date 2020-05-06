# ----- Problem -----
# input: array of one or more strings
# output: array of same strings with vowels removed (aeiou)
# rules: case insensitive
# mental model: iterate thru array, looking for chars that match vowels, if find
# a match, vowel is deleted

# ----- Examples -----
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# ----- Data Structure -----
# input: array of one or more strings
# output: array of same input strings with vowels removed
# iterate thru array to access each string to delete vowels

# ----- Algorithm -----
# Iterate through array
#   - in each string delete "aeiou"

# ----- Code -----
def remove_vowels(strings)
  strings.map { |string| string.delete("aeiouAEIOU") }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ)) 