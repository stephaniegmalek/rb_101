# ----- Problem 1 -----
arr_1 = ['10', '11', '9', '7', '8']

arr_1.sort do |a, b|
  b.to_i <=> a.to_i
end

# ------ Problem 2 -----
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |book|
  book[:published]
end

# ----- Problem 3 -----
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].key(0)

# ----- Problem 4 -----
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4

# ----- Problem 5 -----
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0
munsters.each_value do |info|
  total_male_age += info["age"] if info["gender"] == "male"
end
total_male_age

# ----- Problem 6 -----
munsters.each do |name, info|
  puts "#{name} is a #{info["age"]}-year-old #{info["gender"]}."
end

# could also use #each_pair method

# ----- Problem 7 -----
a = 2
b = [5, 8]
arr = [a, b]
# arr = [2, [5, 8] ]

arr[0] += 2
# arr = [4, [5, 8] ]
# a = 2
# reassigned the element of array at id 0 so pointing to different obj

arr[1][0] -= a 
# arr = [4, [3, 8] ]
# b = [3, 8]
# reassigned the element of array within array at id 1 so both objs still pointing to same
# array obj

# ----- Problem 8 -----
hsh8 = {
  first: ['the', 'quick'], 
  second: ['brown', 'fox'], 
  third: ['jumped'], 
  fourth: ['over', 'the', 'lazy', 'dog']
}

hsh8.each do |_, value|
  value.each do |word|
    word.chars do |char|
      puts char if "aeiou".include?(char)
    end
  end
end

# ----- Problem 9 -----
arr9 = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr9.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a 
  end
end

# ----- Problem 10 -----
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  incremented = {}
  hash.each do |k, v|
    incremented[k] = v + 1
  end
  incremented
end

# ----- Problem 11 -----
arr11 = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr11.map do |sub_arr|
  sub_arr.select do |num|
    num % 3 == 0
  end
end

# ----- Problem 12 -----
arr12 = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: 
# {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hsh12 = {}
arr12.each do |sub_arr|
  hsh12[sub_arr[0]] = sub_arr[1]
end
hsh12

# ----- Problem 13 -----
arr13 = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr13.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end

# ----- Problem 14 -----
hsh14 = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh14.map do |_, info|
  if info[:type] == 'fruit'
    info[:colors].map do |color|
      color.capitalize
    end
  elsif info[:type] == 'vegetable'
    info[:size].upcase
  end
end

# ----- Problem 15 -----
arr15 = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr15.select do |hash|
  hash.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end

# ----- Problem 16 -----

# ----- Problem -----
# input: none
# output: UUID
# rules:
#       Explicit Requirements:
#       - UUID is string, consists of 32 hexadecimal characters, broken into 5 sections
#         like this 8-4-4-4-12
#       - uses randomization 
#       Implicit Requirements:
#       - each section separated by -
#       - numbers used 0 - 9, alphas used a - f 

# ----- Example -----
# generate_UUID == "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# ----- Data Structure -----
# integers, strings, arrays

# ----- Algorithm -----
# SET characters varaible to empty array
# ADD numbers 0 thru 9 as strings to characters variable array
# ADD letters a thru f to characters variable array
# SET uuid variable to empty string
# SET sections variable to array containing eles 8, 4, 4, 4, 12
# Iterate over sections variable with index
#   - in each section add a random selected character from characters array
#     the element number of times
#   - add a '-' at end of each section which will be index = section - 1
# RETURN uuid

# ----- Code -----
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }
  
  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end
  uuid
end

p generate_UUID


a = 'hi'
english_greetings = ['hello', a, 'good morning']
# ['hello', 'hi', 'good morning']

greetings = {
  french: ['bonjour', 'salut', 'allo'],
  english: english_greetings,
  italian: ['buongiorno', 'buonasera', 'ciao']
}

greetings[:english][1] = 'hey'
# english_greetings = ['hello', 'hey', 'good morning']

greetings.each do |language, greeting_list|
  greeting_list.each { |greeting| greeting.upcase! }
end

puts a
puts english_greetings[1]
puts greetings[:english][1]

order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
]

customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
]

[
  {:customer_name=>"Emma Lopez", 
  :customer_id=>12, 
  :orders=>[
    {:order_fulfilled=>false, :order_value=>58.0}
    ]}, 
{:customer_name=>"Michael Richards", 
:customer_id=>32, :
orders=>[{:order_fulfilled=>false, :order_value=>85.65}]}] 

all_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},
  {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65},
  # rest of data
]

fulfilled_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
  {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
  # rest of data
]

[
  {:customer_id=>12, :customer_name=>"Emma Lopez", :total_order_value=>483.48}, 
  {:customer_id=>32, :customer_name=>"Michael Richards", :total_order_value=>205.65}
  ] 
[
  {:customer_id=>12, :customer_name=>"Emma Lopez", :total_order_value=>483.48}, 
  {:customer_id=>32, :customer_name=>"Michael Richards", :total_order_value=>205.65}
]
[
  {:customer_id=>12, :customer_name=>"Emma Lopez", :total_order_value=>483.48}, 
  {:customer_id=>32, :customer_name=>"Michael Richards", :total_order_value=>205.65}
]


fulfilled_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    #if order[:order_fulfilled]
      total + order[:order_value] if true
    # p order_value
  end
  p order_value
  fulfilled_orders[index][:order_value] = order_value
end