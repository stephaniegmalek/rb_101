# ----- Question 1 -----
if false
  greeting = "hello world"
end

greeting
# greeting is nil. When you initilize a local variable within an if block, even if the
# if block doesn't get executed, the local variable is initialized to nil. 

# ----- Question 2 -----
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting # => "hi there"
puts greetings # => { a: "hi there"}

# ----- Question 3 -----

# A
def mess_with_vars_a(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars_a(one, two, three)

puts "one is #{one}" # => "one"
puts "two is #{two}" # => "two"
puts "three is #{three}" # => "three"

# B
def mess_with_vars_b(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars_b(one, two, three)

puts "one is #{one}" # => "one"
puts "two is #{two}" # => "two"
puts "three is #{three}" # => "three"

#C
def mess_with_vars_c(one, two, three)
  one.gsub!("one", "two")
  two.gsub!("two", "three")
  three.gsub!("three", "one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars_c(one, two, three)

puts "one is #{one}" # => "two"
puts "two is #{two}" # => "three"
puts "three is #{three}" # => "one"

# ----- Question 4 -----
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
    
  while dot_separated_words.size > 0 do 
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end
