# ----- Problem -----
# input: number/integer positive or negative
# output: string of num/integer
# rules: num can be positive or negative. no standard conversions. returned string will have +
# or - sign in front, except for 0
# mental model: given a number, separate each digit and convert to string 
# ----- Example -----
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'
# ----- Data Structure -----
# input: integer
# output: string of integers with + or - except for 0
# ----- Algorithm -----
# take number, divide by 10 to get last digit as remainder. 
# convert remainder to string. and add to string 
# ----- Code -----
DIGITS = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(integer)
  digits = ""
  loop do
    integer, remainder = integer.divmod(10)
    digits.prepend(DIGITS[remainder])
    break if integer == 0
  end
  digits
end

def signed_integer_to_string(integer)
  case integer <=> 0
  when -1 then "-#{integer_to_string(-integer)}"
  when 1 then "+#{integer_to_string(integer)}"
  else        integer_to_string(integer)
  end
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)

# def signed_integer_to_string(integer)
#  if integer.negative?
#    "-" + integer_to_string(integer * -1)
#  elsif integer.positive?
#    "+" + integer_to_string(integer)
#  else
#    integer_to_string(integer)
#  end
#end