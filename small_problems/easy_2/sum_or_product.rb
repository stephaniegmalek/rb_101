#----- Problem -----
# input: - ask user for positive integer
#        - ask user if they want to add or multiple
# output: - if user wants sum, add all the numbers between 1 and integer
#         - if user wants product, mulitple all nums btwen 1 and integer
# rules: positive int, range is 1 to positive int
# mental model: get a number and then either add or multiple each number
# between 1 and num 
#----- Examples -----
# num: 5, sum: 1+2+3+4+5, result: 15
# num: 6, product:1*2*3*4*5*6, result: 720
# num: 4, sum: 1+2+3+4, result: 10
# num: 4, product: 1*2*3*4, result: 24
#----- Data Structure -----
# input is str convert to int 
#----- Algorithm -----
# PROMPT Please give positive int
# SET num = gets.chomp.to_i
# SET range = []
# num.times { |i| range << i }
# PROMPT sum or product? 
# SET selection = gets.chomp
# IF selection = 's'
#   SET sum = range.reduce(:+)
#   PRINT sum
# IF selection = 'p'
#   SET p = range.reduce(:*)
#   PRINT product
#----- Solution -----
def valid_num?(number)
  !!(/\d/.match(number) && number.to_i > 0)
end

def compute_sum(number)
  (1..number.to_i).reduce(:+)  
end

def compute_product(number)
  (1..number.to_i).reduce(:*)
end

puts "Welcome to 'Sum or Product?'"

loop do
  num = ''
  loop do
    puts "Please enter an integer greater than 0:"
    num = gets.chomp
    break if valid_num?(num)
    puts "Invalid number."
  end
  
  selection = ''
  loop do
    puts "Please enter 's' to compute the sum or 'p' to compute the product."
    selection = gets.chomp
    break if selection == 's' || selection == 'p'
    puts "Invalid selection."
  end
  
  if selection == 's'
    sum = compute_sum(num)
    puts "The sum of the integers between 1 and #{num} is #{sum}."
  elsif selection == 'p'
    product = compute_product(num)
    puts "The product of the integers between 1 and #{num} is #{product}."
  end
  
  puts "Would you like to play again? (y/n)"
  answer = gets.chomp.downcase
  break if answer != 'y'
end
puts "Goodbye!"