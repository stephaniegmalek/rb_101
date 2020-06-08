# ----- Problem -----
# input: a number
# output: the nth Fibonacci number
# rules:
#       Explicit Requirements:
#       - it must be a recursive method
#       - F(n) = F(n - 1) + F(n - 2) where n > 2

# ----- Examples -----
# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765

# 1 + 1 = 2
# 1 + 2 = 3
# 2 + 3 = 5

# ----- Data Structure -----
# integers

# ----- Algorithm -----
# RETURN n if n is less than 2
# ELSE
#   F(n-1) + F(n -2)

# ----- Code -----
def fibonacci(n)
  if n < 2
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)
p fibonacci(12)
p fibonacci(20)