# ----- Problem 1 -----
arr = ['10', '11', '9', '7', '8']

arr.sort do |a, b|
  b.to_i <=> a.to_i
end

# ----- Problem 2 -----
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
arr1[2] = 4

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
munsters.each do |person, info|
  if info["gender"] == "male"
    total_male_age += info["age"]
  end
end
total_male_age

# or since we aren't referencing the key could use Hash#each_value

total_male_age = 0
munsters.each_value do |info|
  total_male_age += info["age"] if info["gender"] == "male"
end
total_male_age

# ----- Problem 6 -----
munsters.each do |person, info|
  puts "#{person} is a #{info["age"]}-year-old #{info["gender"]}."
end

# could also use Hash#each_pair
munsters.each_pair do |name, info|
  puts "#{name} is a #{info['age']} year old #{info['gender']}."
end

# ----- Problem 7 -----
a = 2
b = [5, 8]
arr = [a, b]
# arr = [2, [5, 8] ]

arr[0] += 2
# this is modifying the array, not a - we are assigning a new obj at this index of the array
# so instead of arr[0] containing a, it now contains 4
# arr = [4, [5, 8] ]
# a = 2
# b = [5, 8]

arr[1][0] -= a
# the value of b does change because b is an array and we are modifying that array by 
# assigning a new value at index 0 of that array
# arr = [4, [3, 8] ]
# a = 2
# b = [3, 8]

# ----- Problem 8 -----
hsh = {
  first: ['the', 'quick'], 
  second: ['brown', 'fox'], 
  third: ['jumped'], 
  fourth: ['over', 'the', 'lazy', 'dog']
}

hsh.each do |_, array|
  array.each do |word|
    word.chars do |char|
      puts char if "aeiou".include?(char)
    end
  end
end

# ----- Problem 9 -----
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end

# ----- Problem 10 -----
arr_10 = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr_10.map do |hash|
  new_hsh = {}
  hash.each do |k, value|
    new_hsh[k] = value + 1
  end
  new_hsh
end

# Another solution would involve using the #each_with_object method instead of #map

arr_10.each_with_object([]) do |hsh, arr|
  incremented_hsh = {}
  hsh.each do |key, value|
    incremented_hsh[key] = value + 1
  end
  arr << incremented_hsh
end

# ----- Problem 11 -----
arr_11 = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr_11.map do |sub_arr|
  sub_arr.select do |num|
    num % 3 == 0
  end
end

# ----- Problem 12 -----
arr_12 = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: 
# {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hsh = {}
arr_12.each do |sub_arr|
    hsh[sub_arr[0]] = sub_arr[1]
end
hsh

# ----- Problem 13 -----
arr_13 = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr_13.sort_by do |sub_arr|
  sub_arr.select do |ele|
    ele.odd?
  end
end

# ----- Problem 14 -----
hsh_14 = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh_14.map do |_, value|
  if value[:type] == "fruit"
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == "vegetable"
    value[:size].upcase
  end
end

# ----- Problem 15 -----
arr_15 = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr_15.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end