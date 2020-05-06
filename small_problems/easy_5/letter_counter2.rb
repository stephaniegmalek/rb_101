def word_sizes(string)
  counter = Hash.new(0)
  string.split.each do |word|
    clean = word.delete('^a-zA-Z')
    counter[clean.length] += 1
  end
  counter
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')