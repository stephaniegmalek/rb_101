# ----- Problem -----
# input: number / the nth fibonacci number
# output: the fibonacci number
# rules:
#       Explicit Requirements:
#       - must be a procedural method - no recursion

# ----- Examples -----
# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) # => 4202692702.....8285979669707537501

# 1 + 1 = 2 => f1 + f2 = f3
# 1 + 2 = 3 => f2 + f3 = f4
# 2 + 3 = 5 => f3 + f4 = f5
# f(n) = f(n - 1) + f(n - 2)

# ----- Data Structure -----
# integers

# ----- Algorithm -----
# IF number less than 2
#   - RETURN 1
# SET num1 variable equal to 1
# SET num2 variable equal to 1
# for number many times
#   sum variable equals num1 + num2
#   num1 = num2
#   num2 = sum 

# ----- Code -----
def fibonacci(n)
  return 1 if n <= 2
  num1 = 1
  num2 = 1
  sum = 0
  (n - 2).times do
    sum = num1 + num2
    num1 = num2
    num2 = sum
  end
  sum
end

def fibonacci2(nth)
  num1, num2 = [1, 1]
  3.upto(nth) do
    num1, num2 = [num2, num1 + num2]
  end
  
  num2 
end


p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)
p fibonacci(12)
p fibonacci(20)
p fibonacci(100)
# p fibonacci(100_001)