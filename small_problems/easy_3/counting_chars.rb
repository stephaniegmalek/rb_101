# ----- Problem -----
# input: a word or multiple words (strings)
# output: a str with num of characters in input and the original input
# rules: don't count spaces
# mental model: if multiple words, get rid of spaces. count characters. print
# how many characters in given word/words
# ----- Examples -----
# Please write word or multiple words: walk
# There are 4 characters in "walk".
# Please write word or multiple words: walk, don't run
# There are 13 characters in "walk, don't run". 
# Please write word or multiple words: hey there!
# There are 9 characters in "hey there!".
# ----- Data Structures -----
# input: strings
# output: strings concatenated with nums
# ----- Algorithm -----
# ASK user to write word or multiple words
# SET input = gets.chomp
# split input by spaces
# rejoin substrings into 1 string and count length of string
# PRINT There are string.length characters in input 
# ----- Code -----
puts "==> Please write word or multiple words:"
input = gets.chomp
input_length = input.split.join.size
puts "There are #{input_length} characters in \"#{input}\"."