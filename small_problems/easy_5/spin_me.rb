def spin_me(string)
  string.split.each do |word|
    word.reverse!
  end.join(" ")
end

def spin_me_arr(arr)
  arr.each do |word|
    word.reverse!
  end
end

arr = ['hello', 'world']
puts arr.object_id
puts spin_me_arr(arr).object_id

str = "hello world"
puts str.object_id
p spin_me(str).object_id