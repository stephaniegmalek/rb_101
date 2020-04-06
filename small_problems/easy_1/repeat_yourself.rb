# Understand the Problem
# input: 2 arguments, 1 string and 1 positive integer
# output: prints string as many times as integer indicates
# Examples / Test Cases
# repeat('Hello', 3) => Hello Hello Hello
# repeat('Goodbye', 2) => Goodbye Goodbye
# repeat ('howdy', 0) =>
# Data Structure
# strings and integers
# Algorithm
# for a given string and positive number, will print out the given
# string a positive number times
def repeat(string, number)
  number.times{ puts string }
end
repeat('Hello', 3)
repeat('Goodbye', 2)
repeat('howdy', 0)