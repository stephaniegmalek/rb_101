#----- Problem -----
# input: 
#       - ask user for length of room in meters (str)
#       - ask user for width of room in meters (str)
# output: str "The area of the room is num square meters (num sq ft)
# rules: 1 sq meter == 10.7639 sq feet
# mental model: get length and width, multiple by each other, convert to sq ft
#----- Example -----
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 sq meters (753.47 sq feet).
#----- Data Structures -----
# input: both user inputs as strings, need to convert to floats
# output: string 
#----- Algorithm -----
# PROMPT user for length of room in meters
# SET length = gets.chomp.to_f
# PROMPT user for width of room in meters
# SET width = gets.chomp.to_f
# SET area in meters = length * width
# SET area in ft = area in meters * 10.7639
# PRINT "The area of the room is #{area in meters} square meters 
# (#{area in feet} sq feet.)
#----- Solution 1 -----
#SQ_METERS_TO_SQ_FEET = 10.7639

#puts "Enter the length of the room in meters:"
#length = gets.chomp

#puts "Enter the width of the room in meters:"
#width = gets.chomp

#area_in_meters = length.to_f * width.to_f
#area_in_feet = (area_in_meters * SQ_METERS_TO_SQ_FEET).round(2)
#puts "The area of the room is #{area_in_meters} square meters"
#puts "(#{area_in_feet} square feet)"
#----- Solution 2 -----
puts "Enter the length of the room in feet:"
length = gets.chomp

puts "Enter the width of the room in feet:"
width = gets.chomp

area_in_feet = length.to_f * width.to_f
area_in_inches = area_in_feet * 144
area_in_centimeters = (area_in_inches * 6.4516).round(2)

puts "The area of the room is #{area_in_feet} square feet"
puts "(#{area_in_inches} square inches)"
puts "(#{area_in_centimeters} square centimeters)"