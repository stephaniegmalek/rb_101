# ----- Problem -----
# input: a year / int
# output: a string / the century
# rules: century ends with st, nd, rd, or th as appropriate for that number.
#       new centuries begin in years ending with 01
# mental model: Take in a number. Determine what century it is, add appropriate
# ending. 
# ----- Example -----
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'
# ----- Data Structure -----
# input: num/int
# output: string
# ----- Algorithm -----
# Get century year
# century year = ( year / 100 ) + 1
# Get century suffix
# if century end in 1
#   suffix = 'st'
# if centry end in 2
#   suffix = 'nd'
# if century end in 3
#   suffix = 'rd'
# if century end in 4, 5, 6, 7, 8, 9
#   suffix = 'th'
# if century end in 11, 12, 13
#   suffix = "th"
# ----- Code -----
def century(year)
  century = ( (year - 1 )/ 100) + 1
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  suffix = century % 10
  
  case suffix
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)