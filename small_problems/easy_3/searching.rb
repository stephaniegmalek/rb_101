# ----- Problem -----
# input: ask user for 6 numbers
# output: describe is last num appears in first 5 numbers 
#         str + array of first five nums
# ----- Examples -----
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].
# ----- Data Structures -----
# input: num as str
# output: str + arr of nums
# ----- Algorithm -----
# SET array
# ask user for num 5 times
# - add num into array
# ask user for sixth/last num
# - check if included in num array
# - if it is print it does appear + num arr
# - else print it doesn't appear + num arr
# ----- Code -----
numbers = []
puts "==> Enter the 1st number:"
numbers << gets.chomp.to_i
puts "==> Enter the 2nd number:"
numbers << gets.chomp.to_i
puts "==> Enter the 3rd number:"
numbers << gets.chomp.to_i
puts "==> Enter the 4th number:"
numbers << gets.chomp.to_i
puts "==> Enter the 5th number:"
numbers << gets.chomp.to_i
puts "==> Enter the last number:"
num = gets.chomp.to_i

if numbers.include?(num)
  puts "The number #{num} appears in #{numbers}."
else
  puts "The number #{num} does not appear in #{numbers}."
end
