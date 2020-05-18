# ----- Problem -----
# input: integer
# output: array of integers, 1 to integer
# rules: 
#       Explicit Requirments:
#       - input integer always greater than 0 
#       - array will have all integers in sequence from 1 to argument

# ----- Examples -----
# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]

# ----- Data Structure -----
# integers, arrays

# ----- Algorithm -----
# SET array variable to empty array
# Iterate adding a integer into the array variable as many times as the arguement
# RETURN array variable

# ----- Code -----
def sequence(number)
  array = []
  1.upto(number) do |n|
    array << n
  end
  array
end

def sequence2(number)
  (1..number).to_a
end

def sequence3(number)
  if number < 0
    (number..1).to_a
  else
    (1..number).to_a
  end
end

sequence(5)
sequence(3)
sequence(1)
p sequence3(-1)