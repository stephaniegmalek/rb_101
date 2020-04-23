# ----- Problem -----
# input: year
# output: true or false
# rules: leap year occurs if year % 4 && !( year % 100 == 0)
# if year % 100 && year % 400
# mental model: take in year greater than 0. Check if evenly div by 4 and not 100, then leap year. 
# if year evenly div by 100 and evenly div 400, then leap year. 
# ----- Examples -----
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true
# ----- Data Structure -----
# input: year/int
# output: boolean
# ----- Algorithm -----
# If year % 4 == 0 && !(year % 100 == 0)
#   return true
# If year % 100 == 0 && year % 400 == 0
#   return true
# else
#   false
# ----- Code -----
def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    true
  elsif year % 100 == 0 && year % 400 == 0
    true
  else
    false
  end
end

# (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)

p leap_year?(2016) 
# == true
p leap_year?(2015)
# == false
p leap_year?(2100)
# == false
p leap_year?(2400)
# == true
p leap_year?(240000)
# == true
p leap_year?(240001)
# == false
p leap_year?(2000)
# == true
p leap_year?(1900)
# == false
p leap_year?(1752)
# == true
p leap_year?(1700)
# == false
p leap_year?(1)
# == false
p leap_year?(100)
# == false
p leap_year?(400)
# == true