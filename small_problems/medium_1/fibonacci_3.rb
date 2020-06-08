# ----- Problem -----
# input: a number
# output: the last digit of the nth number of the fibonacci sequence
# rules: 
#       Explicit Requirements:
#       - use procedural method

# ----- Examples -----
# fibonacci_last(12)        # -> 4
# fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# fibonacci_last(123456789) # -> 4

# ----- Data Structure -----
# numbers/integers, arrays

# ----- Algorithm -----
# SET num1 variable and num2 variable equal to array with elements 1 and 1
# for n - 2 times 
#   SET num1 and num2 variable equal to num2 variable and num1 + num 2 variable 
# Convert num2 to string, then to an array of substring to return last element of array

# ----- Code -----
def fibonacci_last(nth)
  num1, num2 = [1, 1]
  3.upto(nth) do
    num1, num2 = [num2, num1 + num2]
  end
  num2.to_s[-1].to_i
end

def fibonacci_last2(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end
  last_2.last
end

p fibonacci_last(12)
p fibonacci_last2(12)
#p fibonacci_last2(15)
#p fibonacci_last(20)
#p fibonacci_last(100)
#p fibonacci_last2(100_001)
#p fibonacci_last2(1_000_007)
#p fibonacci_last2(123456789)