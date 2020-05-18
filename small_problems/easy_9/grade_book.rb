# ----- Problem -----
# input: 3 integers
# output: string 
# rules:
#       Explicit Requirements:
#       - input values will be between 0 and 100. 
#       - output is the letter value associated with grade determined by average of 3 arguments
#       - 'A' => 90 <= score <= 100
#       - 'B' => 80 <= score <  90
#       - 'C' => 70 <= score <  80
#       - 'D' => 60 <= score <  70
#       - 'F' =>  0 <= score <  60
#       Implicit Requirements:
#       - average is 3 integers added together then dividied by 3 

# ----- Examples -----
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"

# ----- Data Strutcure -----
# integers, strings 

# ----- Algorithm -----
# SET sum variable to 3 arguements added together 
# SET average variable to sum divided by 3 
# CASE average
#   when 90..100 then 'A'
#   when 80..89 then 'B'
#   when 70..79 then 'C'
#   when 60..69 then 'D'
#   else
#     'F'
# END

# ----- Code -----
def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3) / 3
  
  case average
    when 90..100 then 'A'
    when 80..89 then 'B'
    when 70..79 then 'C'
    when 60..69 then 'D'
    else
      'F'
  end
end

p get_grade(95, 90, 93)
p get_grade(50, 50, 95)