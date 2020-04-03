# 1. a method that returns the sum of two integers
# --- Casual ---
# Given two integers
# Add two integers together to get sum
# return sum
# --- Formal ---
# START
# Given two integers called "num1" and "num2"
# Set sum = num1 + num2
# Return sum
# END

# 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
# --- Casual ---
# Given an array of strings
# Iterate through the array one by one
# for each iteration, add the current string to a new string
# after iterating through array, print the new string
# --- Formal ---
# START
# Given array of string
# SET iterator = 1
# SET new_string = ""
# WHILE iterator <= length of array
#   SET current_string = string within array collection at space "iterator"
#   new_string = new_string + current_string
# iterator = iterator + 1 
# PRINT new_string
# END
# 3. a method that takes an array of integers, and returns a new array with every other element
# --- Casual ---
# Given an array of integers / collection of numbers
# Iterate through the collection one by one
# add the first number/value
# skip the next number
# continue iterating through the collection, return new array
# --- Formal ---
# Given a collection of integers called "numbers"
# SET iterator = 1
# SET new_array = []
# WHILE iterator <= length of numbers
# =>SET current_ele = value within number collection at space "iterator"
# =>IF iterator is odd
# =>  new_array[iterator] = current_ele
# =>iterator = iterator + 1
# PRINT new_array
# END
  
