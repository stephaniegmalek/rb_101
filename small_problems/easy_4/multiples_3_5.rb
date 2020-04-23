# ----- Problem -----
# input: number
# output: sum of multiples of 3 and 5 between 1 and number
# rules: number given is greater than 1, no duplicate multiples
# mental model: Given a number, find multiples of 3 or 5 that lie between 1 and number. Add
# multiples up. 
# ----- Examples -----
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168
# ----- Data Structure -----
# input: num/integer
# output: num/integer
# ----- Algorithm -----
# SET multiples = []
# (1..num).times do |num|
# if num % 3 == 0 && num % 5 != 0
#   multiples << num
# end
# multiples.sum
# ----- Code -----
def multisum(num)
  multiples = []
  (1..num).each do |num|
    if num % 3 == 0 || num % 5 == 0
      multiples << num
    end 
  end
  multiples.sum
end

p multisum(3) 
p multisum(5) 
p multisum(10) 
p multisum(20)
p multisum(1000) 
