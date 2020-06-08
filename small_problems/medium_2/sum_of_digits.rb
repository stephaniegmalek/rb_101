# ----- Problem -----
# input: number
# output: sum of the digits of number
# rules:
#       Explicit Requirements:
#       - take sum of digits of number, if more than 1 digit find the sum of those
#         digits until a single digit number is produced. 
# mental model:
# - Take n, separate into its digits. Add all the digits together. If sum more than 
# one digit, separate into it's digits and all digits together. repeat.

# ----- Examples -----
# digital_root(16)  -->  1 + 6 = 7
# digital_root(942)  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
# digital_root(132189)  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
# digital_root(493193)  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2

# ----- Data Structure -----
# arrays, integers

# ----- Algorithm -----
# SET digits variable to n split into digits
# SET sum variable to sum of digits
# IF sum.length >= 2 
#   SET digits equal to sum digits
#   SET sum variable to sum of digits

# ----- Code -----
def digital_root(n)
  digits = n.digits
  sum = digits.reduce(:+)
  while sum.digits.length >= 2
    digits = sum.digits
    sum = digits.reduce(:+)
  end
  sum
end

p digital_root(16)
p digital_root(942)
p digital_root(132189)
p digital_root(493193)