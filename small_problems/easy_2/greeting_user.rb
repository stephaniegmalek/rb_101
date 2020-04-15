#----- Problem -----
# input: - ask user for name
# output: - if user uses "!" respond with all caps
#         - if user doesn't, respond normally
# mental model: ask user for name. If input has "!" ask why scream
#----- Examples -----
# name: bob, response: hello bob
# name: Bob!, response: HELLO BOB. WHY ARE WE SCREAMING?
#----- Data Structure -----
# input is string, check if includes? "!"
#----- Algorithm -----
# PROMPT What is your name?
# SET name = gets
# IF name.includes?("!")
#   - PRINT HELLO name. WHY ARE WE SCREAMING?
# ELSE
#   - PRINT Hello name.
#----- Solution 1 -----
#puts "What is your name?"
#name = gets.chomp

#if name.include?("!")
#  name = name.chop
#  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
#else
#  puts "Hello #{name.capitalize}."
#end
#----- Solution 2 -----
puts "What is your name?"
name = gets.chomp

if name[-1] == "!"
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end

