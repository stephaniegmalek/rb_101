# ----- Problem -----
# input: integer
# output: integer
# rules: 
#       Explicit Requirments: 
#       - output integer is 2x input integer unless input integer is a double number
#       - double number is:
#           - even number of digits
#           - left side digits match exactly with right side digits
#           - exs: 44, 3333, 103103 
#           - NOT: 444, 3344333, 107
#       - if input integer is double number - return number as is 
#     Implicit Requirments:
#     - input is positive and so is output
#     - underscores are acceptable

# ----- Examples -----
# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

# ----- Data Structure -----
# integers , strings 

# ----- Algorithm -----
# convert number to string
# IF string length is even
#   - SET first_half variable to string[0, string length / 2]
#   - SET second_half variable to string[(string lenght / 2) + 1, -1]
#   - IF first_half == second_half
#     - RETURN number
#   - ELSE
#     - RETURN number * 2
# ELSE
#   - RETURN number * 2

# ----- Code -----
def twice(number)
  string = number.to_s
  if string.size.even?
    mid = string.size / 2 
    first_half = string[0, mid]
    second_half = string[mid, mid]
    if first_half == second_half
      number
    else
      number * 2
    end
  else
    number * 2
  end
end

p twice(37) # == 74
p twice(44) # == 44
p twice(334433) # = 668866
p twice(444) # == 888
p twice(107) # == 214
p twice(103103) # == 103103
p twice(3333) # == 3333
p twice(7676) # == 7676
p twice(123_456_789_123_456_789) # == 123_456_789_123_456_789
p twice(5) # = 10