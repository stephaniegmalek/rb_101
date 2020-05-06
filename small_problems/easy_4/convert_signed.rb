# ----- Problem -----
# input: string of positive or negative number
# output: positive or negative number
# rules: if - sign, return negative num. if + sign, return positive num. if no sign, 
# return positive number. Can't use standard conversion methods.
# mental model. Check if string has + or - sign at start. If - sign, convert to negative num,
# else convert to positive. 
# ----- Examples -----
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100
# ----- Data Structure -----
# input: string
# output: number
# want to get string as array. Then match each char to int. then use match to combime 
# into final num 
# ----- Algorithm -----
# SET num_array = string and split into array of chars, map each char to corresponding int 
# if num_array[0] = -
#   iterate thru array combining nums into 1 int via sub
#   num * 10 - digit
# else
#   iterate thru array combining nums into 1 int via add
#   num = 10 * num + digit
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

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

def string_to_signed_integer2(string)
  string.delete!("+") if string[0] == "+"
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end 

p string_to_signed_integer2('4321')
p string_to_signed_integer2('-570')
p string_to_signed_integer2('+100')

# -----
# def string_to_signed_integer(string)
#  digits = string.split(//).map { |char| DIGITS[char] }
  
#   num = 0
#   if digits[0] == "-"
#     digits.shift
#     digits.each { |digit| num = 10 * num - digit }
#   elsif digits[0] == "+"
#     digits.shift
#     digits.each { |digit| num = 10 * num + digit }
#   else
#     digits.each { |digit| num = 10 * num + digit }
#   end
#   num
# end