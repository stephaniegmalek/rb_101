# ----- Problem -----
# input: user generagted strings
# output: string 
# rules:
#       Explicit Requirements:
#       - Ask user for noun, verb, adjective and adverb

# ----- Example -----
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

# ----- Data Structure -----
# strings 

# ----- Algorithm -----
# puts "Enter a noun:"
# SET noun variable to gets
# puts "Enter a verb:"
# SET verb variable to gets
# puts "Enter an adjective:"
# SET adjective variable to gets
# puts "Enter an adverb:"
# SET adverb variable to gets 
# puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

# ----- Code -----
puts "Enter a noun:"
noun = gets.chomp

puts "Enter a verb:"
verb = gets.chomp

puts "Enter an adjective:"
adjective = gets.chomp

puts "Enter an adverb:"
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"