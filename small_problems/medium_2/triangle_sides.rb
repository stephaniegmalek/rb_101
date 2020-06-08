# ----- Problem -----
# input: 3 sides of a triangle
# output: symbol depending on if triangle is equilateral, isosceles, scalene or invalid
# rules:
#       Explicit Requirements:
#       - equilateral: all 3 sides are of equal length 
#       - isosceles: 2 sides are of equal length, 3rd is different
#       - scalene: all 3 sides are different length
#       - invalid: sum of the two shortest sides is NOT greater than length of 
#                  longest side. All sides aren't greater than 0

# ----- Examples -----
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

# ----- Data Structure -----
# numbers, symbols

# ----- Algorithm -----
# If side_1 is equal to zero or side_2 is equal to zero or side_3 is equal to zero
#   - RETURN :invalid
# ELSIF side_1 is equal to side_2
#   - IF side_1 + side_2 > side_3
#     - RETURN :isosceles
#   - ELSE
#     - RETURN :invalid
# ELSIF side_1 is equal to side_3
#   - IF side_1 + side_3 > side_2
#     - RETURN :isosceles
#   - ELSE 
#     - RETURN :invalid
# ELSIF side_2 is equal to side_3
#   - IF side_2 + side_3 > side_1
#     - RETURN :isosceles
#   - ELSE
#     - RETURN :invalid
# ELSE
#   - RETURN :equilateral

# ----- Code -----
def triangle(side_1, side_2, side_3)
  if side_1 == 0 || side_2 == 0 || side_3 == 0
    :invalid
  elsif side_1 == side_2 && side_1 == side_3
    :equilateral
  elsif side_1 == side_2
    if side_1 + side_2 > side_3
      :isosceles
    else
      :invalid
    end
  elsif side_1 == side_3
    if side_1 + side_3 > side_2
      :isosceles
    else
      :invalid
    end
  elsif side_2 == side_3
    if side_2 + side_3 > side_1
      :isosceles
    else
      :invalid
    end
  else
    :scalene
  end
end

def triangle2(side1, side2, side3)
  sides = [side1, side2, side3]
  largest = sides.max
  
  case
  when largest > sides.reduce(:+) - largest, sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side2 == side3 || side1 == side3
    :isosceles
  else
    :scalene
  end
end

def triangle3(s1, s2, s3)
  sides = [s1, s2, s3].sort
  if sides.include?(0) || sides[0] + sides[1] < sides[3]
    :invlaid
  elsif s1 == s2 && s2 == s3
    :equilateral
  elsif s1 == s2 || s2 == s3 || s1 == s3
    :isosceles
  else
    :scalene
  end
end

p triangle2(3, 3, 3) # == :equilateral
p triangle2(3, 3, 1.5) # == :isosceles
p triangle2(3, 4, 5) # == :scalene
p triangle2(0, 3, 3) # == :invalid
p triangle2(3, 1, 1) # == :invalid