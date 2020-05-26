# ----- Problem -----
# input: array, optional joiner elements
# output: string of elements of array joined 
# rules:
#       Explicit Requirements:
#       - if no 2nd arguement is given, last elements joined by 'or'
#         - if 1st argument only 2 elements no comma
#         - if 1st argument > 2 elements add a comma to element before 'or'
#           EX: "1, 2, or 3"
#       - if second argument given and 1 element, use second element instead of comma
#       - if second arguement given and 2 elements given, use those instead of comma / or

# ----- Examples -----
# joinor([1, 2])                   # => "1 or 2"
# joinor([1, 2, 3])                # => "1, 2, or 3"
# joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
# joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

# ----- Data Struture -----
# strings, arrays, numbers

# ----- Algorithm -----
# SET length variable to input array size
# CASE length
#   - WHEN 2 
#     THEN join array elements with word argument
#   - WHEN 3
#     THEN IF default join element
#       - join array elements 0 to -2 with ', '
#       - join array elements -2 and -1 with ', or '


# ----- Code -----
def joinor(array, delimiter=', ', word='or')
  case array.size
  when 0 then ''
  when 1 then array.join
  when 2 then array.join(" #{word} ")
  else
    array[-1] = "#{word} #{array.last}"
    array.join(delimiter) 
  end
end

p joinor([1])
p joinor([1, 2])
p joinor([1, 2, 3])
p joinor([1, 2, 3], '; ')
p joinor([1, 2, 3], '; ', 'and')