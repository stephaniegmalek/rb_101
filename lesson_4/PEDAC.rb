# ----- Problem -----
# input: string
# output: array of substrings
# rules:
#     Explicit requirements: 
#       - substrings are palindromes
#       - palindrome are case sensitive ("Dad" is not a palindrome but "dad" is)


# ----- Examples -----
# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# ----- Data Structure -----
# Arrays, strings

# ----- Algorithm -----
# substrings method
# =================
# SET result variable to empty array to contain all required substrings
# SET start_substring_idx variable = 0
# SET end_substring_idx variable = start_substring_idx + 1
# LOOP which will break when start_substring_idx == string.size
#   Within that loop enter another loop that will break if end_substring_idx == string.size
#     - append to result array part of the string from start_substring_idx to
#       end_substring_idx
#     - increment end_substring_idx by 1
#   END inner loop
# increment start_substring_idx by 1
# reassign end_substring_idx to start_substring_idx += 1
# END outer loop 
# RETURN result array

# is_palindrome? method
# ===================== 
#   - check whether the string value is equal to its reversed value. Use the 
#     String#reverse method

# palindrome_substrings method
# ============================ 
#   - SET result variable to empty array
#   - create an array named substring_arr that contains all of the substrings of
#     the input strnng that are at least 2 characters long
#   - loop thru the words in the substring_arr array
#     - if the word is a palindrome, append to the result array
#   - RETURN the result array

# ----- Code -----
def substrings(str)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx + 1
  loop do
    break if start_substring_idx == str.size
    loop do
      break if end_substring_idx == str.size
      result << str[start_substring_idx..end_substring_idx]
      end_substring_idx += 1
    end
    start_substring_idx += 1
    end_substring_idx = start_substring_idx + 1
  end
  result
end

def is_palindrome?(str)
  str == str.reverse 
end

def palindrome_substrings(str)
  result = []
  substring_arr = substrings(str)
  substring_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end