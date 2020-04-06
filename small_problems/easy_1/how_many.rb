# Understand the Problem
# input: array of strings
# output: count of each element, how many duplicates
# rules: words in array are case-sensitive
# Example / Test Cases 
# vehicles = [
#  'car', 'car', 'truck', 'car', 'SUV', 'truck',
#  'motorcycle', 'motorcycle', 'car', 'truck'
#]
# => car => 4, truck => 3, SUV => 1, motorcycle => 2
# Data Structure
# input: array
# output: hash
# Algorithm
# iterate through the array 
# assign each unique element as hash key
# each addiitonal time we find same key, add 1 to value 
# return each key value pair
#def count_occurrences(array)
#  count = {}
#  new_arr = array.map(&:downcase)
#  new_arr.each do |vehicle|
#    count[vehicle] = new_arr.count(vehicle)
#  end
#  count.each do |k, v|
#    puts "#{k} => #{v}"
#  end
#end
def count_occurrences(array)
  count = {}
  array.each do |vehicle|
    vehicle.downcase!
    if count.key?(vehicle)
      count[vehicle] += 1
    else
      count[vehicle] = 1
    end
  end
  count.each { |k, v| puts "#{k} => #{v}" }
end
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck',
  'suv', 'CAR'
]

count_occurrences(vehicles)