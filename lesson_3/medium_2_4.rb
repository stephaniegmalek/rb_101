def tricky_method(a_string, an_array)
  a_string << 'rutabaga'
  an_array = ['pumpkin', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# my_string will now be "pumpkinsrutabaga"
puts "My array looks like this now: #{my_array}"
# my_array will remain unchanged

# my_string is passed into method so a_string and my_string are pointing to same
# object. Ruby executes the << to add on "rutabaga" to object in place so both strings
# still point to same object and my_string is now changed outside method

# my_array is passed in the same way for an_array but the difference is an_array is 
# reassigned to a new value so now an_array is pointing to a different object and
# my_array and an_array are no longer pointing to same so my_array appears unchanged