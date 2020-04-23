# ----- Easy 1 -----
#
# ----- 1 -----
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
# => 1
# => 2
# => 2
# => 3
# ----- 3 -----
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.gsub("important", "urgent")
# ----- 4 -----
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
# returns 2 and mutates numbers, now [1, 3, 4, 5]
numbers.delete(1)
# returns "1" and mutates numbers, now [3, 4, 5]
# ----- 5 -----
(10..100).include?(42)
# ----- 6 -----
famous_words = "seven years ago..."
puts "Four score and #{famous_words}"
p famous_words.insert(0, "Four score and ")
p famous_words.prepend("Four score and ")
# ----- 7 -----
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!
# ----- 8 -----
flintstones = { 
  "Fred" => 0, 
  "Wilma" => 1, 
  "Barney" => 2, 
  "Betty" => 3, 
  "BamBam" => 4, 
  "Pebbles" => 5
}
flintstones.assoc("Barney")
