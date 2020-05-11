# ----- Problem 1 -----
flintstones = ["Fred", "Barney", "Wilma", "Pebbles", "BamBam"]

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash

# ----- Problem 2 -----
ages = { 
  "Herman" => 32, 
  "Lily" => 30, 
  "Grandpa" => 5843, 
  "Eddie" => 10, 
  "Marilyn" => 22, 
  "Spot" => 237
}

total_ages = 0
ages.each { |_, age| total_ages += age }

p total_ages

ages.values.inject(:+)

# ----- Problem 3 -----
age = {
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 402,
  "Eddie" => 10
}

age.select! { |_, age| age < 100 }
p age

age.keep_if { |_, age| age < 100 }

# ----- Problem 4 -----
munster_ages = { 
  "Herman" => 32, 
  "Lily" => 30, 
  "Grandpa" => 5843, 
  "Eddie" => 10, 
  "Marilyn" => 22, 
  "Spot" => 237
}

p munster_ages.values.sort!.first

munster_ages.values.min

# ----- Problem 5 -----
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
answer = 0
flintstones.each_with_index do |name, index|
  if name[0..1] == "Be"
    answer = index
  end
end
answer
flintstones.index { |name| name[0, 2] == "Be" }

# ----- Problem 6 -----
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0, 3]
end

flintstones.map { |name| name[0, 3] }

p flintstones

# ----- Problem 7 -----
statement = "The Flintstones Rock"
count_hash = Hash.new(0)
statement.chars.each do |letter|
  if count_hash.key?(letter)
    count_hash[letter] +=1
  else
    count_hash[letter] = 1
  end
end

p count_hash

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

# ----- Problem 8 -----
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
p numbers

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

p numbers 

# ----- Problem 9 -----
words = "the flintstones rock"

p words.split.map { |word| word.capitalize }.join(' ')

# ----- Problem 10 -----
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |member, info|
  case info["age"]
  when 0...18
    info['age_group'] = 'kid'
  when 18...65
    info['age_group'] = 'adult'
  else
    info['age_group'] = 'senior'
  end
end

p munsters