# ----- Problem -----
# input: number
# output: number
# rules: 
#       Explicit Requirments:
#       - if input number is positive, return the negative of that number
#       - if input number is 0 or negative, return original number 

# ----- Examples -----
# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0
# negative(-234) == -234
# negative(31) == -31

# ----- Data Structure ----
# integers, numbers

# ----- Algorithm -----
# IF number.negative?
#   - RETURN number
# ELSIF number == 0
#   - RETURN number
# ELSE
#   - RETURN number * -1

# ----- Code -----
def negative(number)
  if number.negative?
    number
  elsif number == 0
    number
  else
    number * -1
  end
end

def negative2(number)
  number > 0 ? -number : number
end

p negative(5)
p negative(-3)
p negative(0)