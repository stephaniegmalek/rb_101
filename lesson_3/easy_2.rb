# ----- Problem 1 -----
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.key?("Spot")
p ages.include?("Spot")
p ages.member?("Spot")
# ----- Probelm 2 -----
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.swapcase!
p munsters_description.capitalize!
p munsters_description.downcase!
p munsters_description.upcase!
# ----- Problem 3 -----
ages_hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages_hash.merge!(additional_ages)
p ages_hash
# ----- Problem 4 -----
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.match?("Dino")
# not a perfect solution since would match any substring with Dino in it
# ----- Problem 5 -----
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# ----- Problem 6 -----
flintstones << "Dino"
# ----- Problem 7 -----
flintstones.push("Dino").push("Happy")
flintstones.concat(%w(Dino Happy))
# ----- Problem 8 -----
advice_1 = "Few things in life are as important as house training your pet dinosaur."
advice_1.splice!(0, advice.index('house'))
# ----- Problem 9 -----
statement = "The Flintstones Rock!"
statement.count('t')
# ----- Problem 10 -----
title = "Flintstone Family Members"
title.center(40)