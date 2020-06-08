def url?(string)
  !!string.match(/\Ahttps?:\/\/\S+\z/)
end

url?('http://launchschool.com')   # -> true
url?('https://example.com')       # -> true
url?('https://example.com hello') # -> false
url?('   https://example.com')    # -> false

def fields(text)
  text.split(/[ \t,]+/)
end

fields("Pete,201,Student")
# -> ['Pete', '201', 'Student']
fields("Pete \t 201    ,  TA")
# -> ['Pete', '201', 'TA']
fields("Pete \t 201")
# -> ['Pete', '201']

def mystery_math(string)
  string.sub(/[\+\-\*\/]/, '?')
end

mystery_math('4 + 3 - 5 = 2')
# -> '4 ? 3 - 5 = 2'
mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
# -> '(4 ? 3 + 2) / 7 - 1 = 1'

def mysterious_math(equation)
  equation.gsub(/[\+\-\*\/]/, '?')
end

mysterious_math('4 + 3 - 5 = 2')           # -> '4 ? 3 ? 5 = 2'
mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') # -> '(4 ? 3 ? 2) ? 7 ? 1 = 1'

def danish(string)
  string.sub(/\b(apple|blueberry|cherry)\b/, 'danish')
end

danish('An apple a day keeps the doctor away')
# -> 'An danish a day keeps the doctor away'
danish('My favorite is blueberry pie')
# -> 'My favorite is danish pie'
danish('The cherry of my eye')
# -> 'The danish of my eye'
danish('apple. cherry. blueberry.')
# -> 'danish. cherry. blueberry.'
danish('I love pineapple')
# -> 'I love pineapple'

def format_date(date)
  date.sub(/\A(\d\d\d\d)-(\d\d)-(\d\d)\z/, '\3.\2.\1')
end

format_date('2016-06-17')
# -> '17.06.2016'
format_date('2016/06/17')
# -> '2016/06/17' (no change)

def format_date2(date)
  date_regex = /\A(\d\d\d\d)([\-\/])(\d\d)\2(\d\d)\z/
  date.sub(date_regex, '\4.\3.\1')
end

p format_date2('2016-06-17') # -> '17.06.2016'
p format_date2('2017/05/03') # -> '03.05.2017'
p format_date2('2015/01-31') # -> '2015/01-31' (no change)