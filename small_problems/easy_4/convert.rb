# ----- Problem -----
# input: a string
# output: a number
# rules: not allowed to use ruby built in conversion methods
# mental model: split string into individual chars and then use comparison to match which num
# ----- Examples -----
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570
# string_to_integer('123') == 123
# ----- Data Structure -----
# input: string of numbers
# output: numbers
# ----- Algorithm -----
# Split string into individual chars
# iterate through array of chars and convert each one:
# If char == '1' then 1
# if char == '2' then 2
# if char == '3' then 3
# if char == '4' then 4
# if char == '5' then 5
# if char == '6' then 6
# if char == '7' then 7
# if char == '8' then 8
# if char == '9' then 9
# if char == '0' then 0
# join array of nums
# ----- Code -----
DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(string)
  digits = string.split(//).map { |char| DIGITS[char] }

  num = 0
  digits.each { |digit| num = 10 * num + digit }
  num
end

p string_to_integer('4321')
p string_to_integer('570')
p string_to_integer('123')
