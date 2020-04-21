# ----- Problem -----
# input: Ask user for 2 positive integers
# output: print results of:
#         - addition
#         - subtraction
#         - product
#         - quotient
#         - remainder
#         - power
# rules: don't worry about input validation
# ----- Examples -----
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103
# ----- Data Structure -----
# input: will be string need to convert to int
# output: will be string concat with int/variables
# ----- Algorithm -----
# Ask user for num 1
# SET num 1 to gets.chomp.to_i
# Ask user for num 2 
# SET num 2 = gets.chomp.to_i
# PRINT num 1 + num 2 = result
# PRINT num1 - num2 = result
# PRINT num1 * num2 = result
# PRINT num1 / num2 = result
# PRINT num1 % num2 = result
# PRINT num1 ** num2 = result
# ----- Code -----
puts "==> Enter the first number:"
num1 = gets.chomp.to_i

puts "==> Enter the second number:"
num2 = gets.chomp.to_i

puts "==> #{num1} + #{num2} = #{num1 + num2}"
puts "==> #{num1} - #{num2} = #{num1 - num2}"
puts "==> #{num1} * #{num2} = #{num1 * num2}"
puts "==> #{num1} / #{num2} = #{num1 / num2}"
puts "==> #{num1} % #{num2} = #{num1 % num2}"
puts "==> #{num1} ** #{num2} = #{num1 ** num2}"