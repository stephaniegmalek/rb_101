# ----- Problem -----
# input: 3 angles of a triangle
# output: symbol depending on whether the triangle is a right, acute, obtuse or invalid
# rules:
#       Explicit Requirements:
#       - right: one angle of the triangle is a right angle (90)
#       - acute: all 3 angles of the triangle are less than 90 degrees
#       - obtuse: 1 angle is greater than 90
#       - invalid: sum of angles is NOT 180, all angles are NOT > 0
#       - angles are integers and in degrees

# ----- Examples -----
# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid

# ----- Data Structure -----
# integers, case statement

# ----- Algorithm -----
# SET sides array to s1, s2, and s3
# SET sum variable equal to sides array sum 
# CASE
# WHEN sum is NOT equal to 180 OR sides array includes a 0
#   :invalid
# WHEN s1 == 90 || s2 == 90 || s3 == 90
#   :right
# WHEN s1 < 90 && s1 < 90 && s3 < 90
#   :acute
# ELSE
#   :obtuse

# ----- Code -----
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  
  case 
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) # == :acute
p triangle(30, 90, 60) # == :right
p triangle(120, 50, 10) # == :obtuse
p triangle(0, 90, 90) # == :invalid
p triangle(50, 50, 50) # == :invalid