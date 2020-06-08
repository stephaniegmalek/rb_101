def permutations(array)
  return [array] if array.size == 1

  result = []
  array.each_with_index do |element, index|
    sub_array = array[0...index] + array[(index + 1)..-1]
    p sub_array
    sub_permutations = permutations(sub_array)
    sub_permutations.each do |permutation|
      result << [element] + permutation
    end
  end

  puts result.inspect
  result
end

permutations([1, 2, 3])