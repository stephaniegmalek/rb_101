# ----- Problem -----
# input: number of digits
# output: index of the first Fibonacci number that has the input number of digits
# rules: index starts at 1, input/argument always >= 2
# mental model: Given a number. Computate the Fibonacci series until we get a result
# that is the number of digits given. We then return that results index 

# ----- Examples -----
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# ----- Data Structure -----
# input: number/integer 
# output: number/index
# 

# ----- Algorithm -----
# SET counter = 1
# loop do
#   preform fibonacci (counter)
#   if fibonacci(counter).digits.size == input
#     return counter
#   counter += 1

# ----- Code -----
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

def find_fibonacci_index_by_length(length)
  index = 2
  first = 1
  second = 1
  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= length
    
    first = second
    second = fibonacci
  end
  index
end

p find_fibonacci_index_by_length(2)
p find_fibonacci_index_by_length(3)
p find_fibonacci_index_by_length(10)
p find_fibonacci_index_by_length(100)
p find_fibonacci_index_by_length(1000)
p find_fibonacci_index_by_length(10000)