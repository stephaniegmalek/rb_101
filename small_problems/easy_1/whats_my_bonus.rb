# Understand the Problem
# input: 1 positive integer, 1 boolean value
# output: integer
# rules: if boolean value is true, integer half salary else 0
# Examples / Test Cases
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# Data Structures
# input: 1 positive integer, 1 boolean value
# output: integer
# Algorithm
# if true
#   given integer / 2 = bonus
# if false
#   bonus = 0
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end
puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)