# ----- Problem -----
# input: string
# output: string in box
# rules: box width 2 char longer than string.length and 5 lines height with '+' at
# corners 
# mental model: take string, find length and add 2 to get length of box, 

# ----- Examples -----
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# ----- Data Structure -----
# input: string
# output: string in box
# find string.length to determine size of banner

# ----- Algorithm -----
# SET horizontal line = "+" + "- * #{string.length + 2}" + "+"
# SET empty lines = "| + string.length + 2 + |"
# SET message line = " | #{string} |"

# ----- Code -----
def print_in_box(string)
  horizontal = "+#{'-' * (string.length + 2)}+"
  empty = "|#{' ' * (string.length + 2)}|"
  
  puts horizontal
  puts empty
  puts "| #{string} |"
  puts empty
  puts horizontal
end

def format_string(string)
  string_array = []
  
  if string.strip.empty?
    space_qty = string.count(" ")
    string_array << (" " * space_qty)
  else
    string.split.each_slice(9) { |line| string_array << line.join(" ") }
  end
  string_array
end

def max_length(string)
  string_array = format_string(string)
  string_array.max_by(&:length).size
end

def print_string(string)
  string_array = format_string(string)
  max_length = max_length(string)
  
  string_array.map do |line|
    line_length = line.size
    difference = max_length - line_length
    
    puts "| #{line}#{" " * difference} |"
  end
end  

def top_bottom_art(string)
  max_length = max_length(string)
  puts "+-#{"-" * max_length}-+"
end

def empty_line_art(string)
  max_length = max_length(string)
  adjusted_edge_length = max_length + 2
  puts "|#{" " * adjusted_edge_length}|"
end

def print_to_box(string)
  top_bottom_art(string)
  empty_line_art(string)
  print_string(string)
  empty_line_art(string)
  top_bottom_art(string)
end

p print_to_box('To boldly go where no man has gone before. To boldly go where no woman has gone before. To boldly go where no alien has gone before/ To boldly go anywhere no one else has gone before.')

# p print_in_box('ghdjsksls')