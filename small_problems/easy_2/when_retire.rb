#----- Problem -----
# input: - user gives age (str)
#        - user gives age of retirement (str)
# output: -give current year and year it will be when user retr age
#         - give how many years difference it is
# mental model: User gives age and age they want to retire. Subtract
# age of retirement from current age. Add that number to current year
#----- Examples -----
# age: 30, retire: 70, retire year: 2060, years left: 40
# age: 25, retire: 65, retire year: 2060, years leff: 40
# age: 21, retire: 63, retire year: 2062, years left: 42
#----- Data Structures -----
# input: both strings, need to convert to int
#----- Algorithm -----
# PROMPT user for age
# SET age = gets.chomp
# SET age = age.to_i
# PROMPT user for age want to retire
# SET retirement_age = gets.chomp
# SET retirement_age = retirement_age.to_i
# SET years_to_retirement = retirement_age - age
# SET year_of_retirement = 2020 + years_to_retirement
# PRINT year_of_retirement
# PRINT years_to_retirement
puts "What is your age?"
age = gets.chomp.to_i

puts "What age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_to_retirement = retirement_age - age
year_of_retirement = current_year + years_to_retirement

puts "It's #{current_year}. You will retire in #{year_of_retirement}"
puts "You have only #{years_to_retirement} years of work to go!"