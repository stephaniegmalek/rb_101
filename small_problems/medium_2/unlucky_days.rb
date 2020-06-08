# ----- Problem -----
# input: year
# output: number of Friday the 13ths in given year
# rules:
#       Explicit Requirements:
#         - year is greater than 1752 - Gregorian Calendar
# mental model:
# - check if the 13th of each month is a friday

# ----- Examples -----
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

# ----- Data Structure -----
# Date object

# ----- Algorithm -----
# SET 13_count variable equal to 0
# SET 13th variable to new Date object with input year and 1 13
# 12 times do
#   - if 13th variable is a friday
#     Add 1 to 13_count
#   - Reassign 13th to the 13th of next month
# RETURN 13_count variable 

# ----- Code -----
require 'date'

def friday_13th(year)
  count = 0
  thirteen = Date.new(year, 1, 13)
  12.times do |n|
    if thirteen.friday?
      count += 1
    end
    thirteen = thirteen.next_month
  end
  count
end

p friday_13th(2015) # == 3
p friday_13th(1986) # == 1
p friday_13th(2019) # == 2