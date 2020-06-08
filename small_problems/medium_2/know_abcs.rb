# ----- Problem -----
# input: string / word
# output: boolean 
# rules:
#       Explicit Requirements:
#       - 13 blocks each with 2 letters
#       - each block can only be used once
#       - if input word can be spelled from blocks return true
#       Implicit Requirements:
#       - not case sensitive 

# ----- Examples -----
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true
# block_word?('cat') == true
# block_word?('QUIT') == true

# ----- Data Structure -----
# blocks as array of strings, strings

# ----- Algorithm -----
# SET word argument equal to word uppercased
# Iterate through blocks 
# if word includes block element 0 AND block element 1
# =>RETURN FALSE

# ----- Code -----
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

BLOCKS_TWO = [['b', 'o'], ['x', 'k'], ['d', 'q'], ['c', 'p'], ['n', 'a'],
          ['g', 't'], ['r', 'e'], ['f', 's'], ['j', 'w'], ['h', 'u'],
          ['v', 'i'], ['l', 'y'], ['z', 'm']]

def block_word?(word)
  word.upcase!
  BLOCKS.all? do |block|
    !(word.include?(block[0]) && word.include?(block[1]))
  end
end

def block_word2?(word)
  word = word.downcase
  BLOCKS_TWO.each do |block|
    return false if word.include?(block[0]) && word.include?(block[1])
  end
  true
end

# LS solution
def block_word3?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word2?('BATCH') # == true
p block_word2?('BUTCH') # == false
p block_word2?('jest') # == true