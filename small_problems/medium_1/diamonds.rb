# ----- Problem -----
# input: number
# output: 4-pointed diamond in a n x n grid
# rules: 
#       Explicit Requirements:
#       - n / input is an odd integer

# ----- Examples -----
# diamond(1)
#
# *

# diamond(3)
#
#  *
# ***
#  *

# diamond(9)
# 
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# ----- Data Structure -----
# integers

# ----- Algorithm -----
# SET space_start variable equal to n / 2 rounded down
# SET star_start variable equal to 1
# LOOP 
#   - break if star_start > n 
#   - PRINT space ' ' * space_start + star '*' * star_start
#   - space_start -= 1
#   - star_start += 2
# END 
# LOOP
#   - break if star_start == 1
#   - space_start += 1
#   - star_start -= 2
#   - PRINT space ' ' * space_start + star '*' * star_start
# END

# ----- Code -----
SPACE = ' '
STAR = '*'

def diamond(n)
  puts ""
  num_of_spaces = n / 2
  num_of_stars = 1
  loop do
    puts "#{SPACE * num_of_spaces} #{STAR * num_of_stars}"
    break if num_of_stars == n
    num_of_spaces -= 1
    num_of_stars += 2
  end
  loop do
    break if num_of_stars == 1
    num_of_spaces += 1
    num_of_stars -= 2
    puts "#{SPACE * num_of_spaces} #{STAR * num_of_stars}"
  end
end

def print_row(grid_size, distance_from_center)
  num_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * num_of_stars
  puts stars.center(grid_size)
end

def diamond2(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

def hallow_diamond(int)
  arr = (1..int).select { |n| n.odd? }
  arr.append(arr.first(arr.size-1).reverse).flatten!
  arr.each do |n|
    if n == 1
      puts (' ' * ((int - n) / 2)) + ('*')
    elsif int == n 
      puts ('*') + (' ' * (n - 2)) + ('*')
    else
      puts (' ' * ((int - n) / 2)) + ('*') + (' ' * (n - 2)) + ('*')
    end
  end
end

hallow_diamond(5)

# p diamond2(9)
#p diamond(5)
# p diamond(3)
# p diamond(9)