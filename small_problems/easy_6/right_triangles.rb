# ----- Problem -----
# input: number
# output: displays right triangle whose side have number of starts
# rules: hypotenuse of triangle should have 1 end at the lower-left of triangle and the
# other at the upper right. 
# mental model: Given a number. first line will have n - 1 spaces and 1 star. line 2 will have
# n - 2 spaces and 2 stars. etc until num of stars == num

# ----- Examples -----
# triangle(5)
#
#     *
#    **
#   ***
#  ****
# *****

# triangle(9)
#
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

# triangle(3)
# 
#   *
#  **
# ***

# ----- Data Structure -----
# input: num/integer positive
# output: triangle display made up of stars and spaces

# ----- Algorithm-----
# SET SPACE = " "
# SET STAR = "*"
# SET i = 1
# loop
# (num - i) * SPACE + i * STAR
# break if i == num
# i += 1

# ----- Code -----
SPACE = " "
STAR = "*"

def triangle(num)
  i = 1
  loop do
    puts "#{SPACE * (num - i)} #{STAR * i}"
    break if i == num
    i += 1
  end
end

def triangle2(num)
  spaces = num - 1
  starts = 1
  
  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

def triangle_upside_down(num)
  spaces = 0
  stars = num
  
  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1
  end
end

def triangle_upper_right(num)
  spaces = 0
  stars = num
  
  num.times do |n|
    puts ('*' * stars) + (' ' * spaces)
    spaces += 1
    stars -= 1
  end
end

def triangle_lower_left(num)
  spaces = num - 1
  stars = 1
  
  num.times do |n|
    puts ('*' * stars) + (' ' * spaces)
    spaces -= 1
    stars += 1
  end
end

p triangle(4)
p triangle_upside_down(4)
p triangle_upper_right(4)
p triangle_lower_left(4)
# p triangle(9)
# p triangle(4)

