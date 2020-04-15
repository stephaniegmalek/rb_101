#----- Problem -----
# input: - ask user for bill amount (int)
#        - ask user for tip rate/percentage (int)
# output: - the tip amount (float)
#         - the total bill amount (float)
# rules: outputs are floats rounded to 1st decimale
# mental mode: To find tip amount, divide the tip percentage 
# by 100 and multiple by bill. Add tip amount to bill for bill total
#----- Example -----
# bill: 200, tip %: 15, tip = 30, bill total = 230
# bill: 100, tip %: 10, tip = 10, bill total = 110
# bill: 300, tip %: 20, tip = 60, bill total = 360
#----- Data Structures -----
# input: str from user need to conver to float
# output: round float to 1 decimal
#----- Algorithm -----
# PROMPT user for bill amount
# SET bill amount
# PROMPT user for tip percentage
# SET tip percentage
# SET tip amount = (tip percentage.to_f / 100) * bill amount.to_f
# SET bill total = tip amount + bill amount.to_f
# PRINT tip amount
# PRINT bill total
puts "What is the bill?"
bill = gets.chomp
bill = bill.to_f

puts "What is the tip percentage?"
tip_percent = gets.chomp
tip_percent = tip_percent.to_f

tip = ((tip_percent / 100) * bill).round(2)
total = tip + bill

puts "The tip is $#{format('%02.2f', tip)}"
puts "The total is $#{format('%02.2f', total)}"