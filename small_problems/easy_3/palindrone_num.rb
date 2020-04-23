def palindrome?(string)
  string.reverse == string
end

def palindromic_number?(num)
  string = num.to_s
  palindrome?(string)
end

p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5) 