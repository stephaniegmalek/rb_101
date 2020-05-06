# ----- Problem -----
# input: time of day in 24 hour format hh:mm
# output: number of minutes before (negative) or after (positive) midnight
# rules: return number in range of 0..1439
# mental model: convert hours into minutes, add to minutes and then if before 
# midnight subtract from minutes_per_day

# ----- Examples -----
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# ----- Data Structure -----
# input: time in hh: mm
# output: time in minutes
# convert input to float then use divmod to separate hours and minutes
# or split string and then convert to ints 

# ----- Algorithm -----
# after_midnight
# time.split(":")
# hours = time[0].to_i
# minutes = time[1].to_i
# total_mins = hours * 60 + minutes

# before_midnight
# 1440 - after_midnight

# ----- Code -----
MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def after_midnight(time_string)
  hours, minutes = time_string.split(":").map { |x| x.to_i}
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_string)
  total_mins = MINUTES_PER_DAY - after_midnight(time_string)
  total_mins = 0 if total_mins == MINUTES_PER_DAY
  total_mins
end

p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')