# ----- Problem -----
# input: number of minutes before or after midnight
# ouput: time of day in 24 hour format hh:mm
# rules: time is after midnight if number is positive, time is before midnight 
# if number is negative. should work with any integer input. 60 mins in hour, 24 hours in day
# 0 is midnight
# mental model: to get hours divide num of minuts by 60. Take remainder and multiple by 60 to get mins

# ----- Examples -----
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# ----- Data Structure -----
# input: num of minutes
# output: hh: mm
# convert minutes to hours / by div by 60 
# if more than 24 hours subtract 24
# convert remaining decimal to mins by multiple 60

# ----- Algorithm -----
# SET minutes_per_hour = 60
# SET hours_per_day = 24
# SET minutes_per_day = minutes_per_hour * hours_per_day
# minutes = minutes / minutes_per_day
# hours = minutes divmod minutes_per_hour
# take remainder  = minutes

# ----- Code -----
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(minutes_input)
  minutes_input = minutes_input % MINUTES_PER_DAY
  hours, minutes = minutes_input.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
