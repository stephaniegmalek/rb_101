#----- Solution 1 -----
100.times { |i| puts i if i.even?}

#----- Solution 2 -----
(1..99).each { |i| puts i if i % 2 == 0 }

#----- Solution 3 -----
count = 2
while count < 99
  puts count
  count += 2
end

#----- Solution 4 -----
count = 1
while count <= 99
  puts count if count.even?
  count += 1
end