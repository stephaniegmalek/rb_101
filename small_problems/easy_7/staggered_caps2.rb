def staggered_case(string)
  staggered = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        staggered += char.upcase
      else
        staggered += char.downcase
      end
      need_upper = !need_upper
    else
      staggered += char
    end
  end
  staggered
end

p staggered_case('I Love Launch School!')