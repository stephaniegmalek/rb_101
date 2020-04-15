#----- Solution 1 -----
#(1..99).each { |i| puts i if i.odd?}

#----- Solution 2 -----
#count = 1
#while count < 100
#  puts count
#  count += 2
#end
#----- Solution 3 -----
count = 1
loop do
  puts count
  count += 2
  break if count > 100
end
#----- Solution 4 -----
1.upto(99) { |i| put i if i.odd?}