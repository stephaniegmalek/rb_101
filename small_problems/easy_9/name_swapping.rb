# ----- Problem -----
# input: single string
# output: single string
# rules:
#       Explicit Requirements:
#       - input string will have a first name, a space and a last name
#       - output string will be the last name, a comma, a space and the first name

# ----- Examples -----
# swap_name('Joe Roberts') == 'Roberts, Joe'
# swap_name('Stephanie Malek') == 'Malek, Stephanie'
# swap_name('Josh McCollom') == 'McCollom, Josh'

# ----- Data Structure -----
# strings 

# ----- Algorithm -----
# SET name_arr variable to string split 
# OUTPUT "#{name_arr[-1]}, #{name_arr[0]}"

# ----- Code -----
def swap_name(name)
  name_arr = name.split
  puts "#{name_arr[-1]}, #{name_arr[0]}"
end

def swap_name2(name)
  name.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts')
p swap_name('Stephanie Malek')
p swap_name('Josh McCollom')