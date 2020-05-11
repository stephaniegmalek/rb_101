# ----- Problem -----
# input: 2 integers
# output: print out of numbers, fizz, buzz or fizzbuz
# rules: 
#       Explicit Requirements:
#       - print out numbers, 1st int is starting number, 2nd int is ending number
#       - if num between 1st and 2nd int is divisable by 3, print "Fizz"
#       - if num between 1st and 2nd int is divisable by 5, print "Buzz"
#       - if num between 1st and 2nd int is divisable by both 3 and 5, print "FizzBuzz"

# ----- Example -----
# fizzbuzz(1, 15) 
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# ----- Data Structure -----
# numbers/integers and strings

# ----- Algorithm -----
# start_num variable up to end_num variable for each num 
#   - IF num % 3 == 0 && num % 5 != 0
#     puts "Fizz"
#   - ELSIF num % 5 == 0 && num % 3 != 0
#     puts "Buzz"
#   - ELSIF num % 3 == 0 && num % 5 == 0
#     puts "FizzBuzz"
#   - ELSE
#     puts num 

# ----- Code -----
def fizzbuzz(num1, num2)
  result = []
  num1.upto(num2) do |num|
    result << fizzbuzz_value(num)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

p fizzbuzz(1, 15)