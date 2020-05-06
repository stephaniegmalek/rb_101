# ----- Problem -----
# input: floating point number that reps an angle
# output: string reps angle in degree, minutes and seconds
# rules: - use degree symbol, " and '
#        - a degree have 60 minutes, a minute has 60 secs
#        - use leading zeros when formatting minutes and seconds
# mental model: For degrees, use the whole part of number. For minutes, multiple 
# remaining decimal by 60 and use the whole number part. For seconds, multiple 
# remaining decimal from finding minutes by 60 and use the whole numer part

# ----- Examples -----
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# ----- Data Structure -----
# input: float
# output: string rep float in degree, minutes and seconds 
# whole number of float is degrees, remainder of float % 1 * 60 to get minutes
# remainder of minutes % 1 * 60 to get seconds 

# ----- Algorithm -----
# SET degrees, minutes = float.divmod(1)
# minutes *= 60
# SET minutes, seconds = minutes.divmod(1)
# seconds *= 60
# format('%03d:%02d'%02d"', degrees, minutes, seconds)

# ----- Code -----
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
SECONDS_PER_CIRCLE = SECONDS_PER_DEGREE * 360

def dms(float)
  degrees, minutes = float.divmod(1)
  minutes *= 60
  minutes, seconds = minutes.divmod(1)
  seconds *= 60
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

def dms2(float)
  total_seconds = (float * SECONDS_PER_DEGREE).round
  seconds_in_day = total_seconds % SECONDS_PER_CIRCLE
  degrees, remaining_seconds = seconds_in_day.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end  

p dms2(400)
p dms2(-40)
p dms2(-420)
p dms2(30)
p dms2(76.73)
p dms2(254.6)
p dms2(93.034773)
p dms2(0)
p dms2(360)
p dms(93.034773)