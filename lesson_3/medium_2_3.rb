def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# my_string will be unchanged and stay "pumpkins"
puts "My array looks like like now: #{my_array}"
# my_array will be changed and now be ["pumpkins", "rutabaga"]

# my_string was passed into the method and so "a_string_param" and "my_string"
# were pointing to the same object. When we += "rutabaga" to "a_string_param" we
# are re assigning the variable and creating a new object "pumpkinrutabaga" and 
# "my_string" and "a_string_param"
# are no longer pointing to the same object and "my_string" remains unchanged. 

# the array is treated the same. The main difference is what happens when we execute
# << . Since arrays can have multiple elements when we attach a new element using <<
# Ruby keeps the same object so "my_array" and "an_array_param" are pointing to the same
# objects which is why "my_array" is changed. 