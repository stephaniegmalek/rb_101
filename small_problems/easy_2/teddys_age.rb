#----- Problem -----
# input: none
# output: "Teddy is num years old!"
# where num is a randomly generated integer between 20 - 200
# mental model: create a random num and insert into string
#----- Examples -----
# teddys_age() #=> "Teddy is 69 years old!"
# teddys_age() #=> "Teddy is 21 years old!"
# teddys_age() #=> "Teddy is 111 years old!"
#----- Data Structures -----
# integer and string
#----- Algorithm -----
# SET age = random num between 20..200
# PRINT "Teddy is #{age} years old!"
def teddys_age(name)
  name = "Teddy" if name.empty?
  age = rand(20..200)
  puts "#{name.capitalize} is #{age} years old!"
end

puts "What is your name?"
name = gets.chomp

teddys_age(name)
