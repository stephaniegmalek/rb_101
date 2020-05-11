# ----- Question 4 -----
def snake(str)
  words = str.split
  current_word = 0
  
  loop do
    words[current_word].downcase!
    
    current_word += 1
    break if current_word >= words.size
  end
  
  words.join('_')
end

def camel(str)
  words = str.split(' ')
  counter = 0
  
  while counter < words.size
    words[counter] = words[counter].capitalize
    
    counter = counter + 1
  end
  words.join
end

def upper_snake(str)
  words = str.split
  current_word = 0
  
  loop do
    break if current_word == words.size
    words[current_word].upcase!
    current_word += 1
  end
  words.join('_')
end

sentence = 'The sky was blue'
snake(sentence)
camel(sentence)
upper_snake(sentence)

# ----- Question 10 -----
def some_method(words)
  arr = []
  counter = 0
  
  loop do
    word = words[counter]
    arr << word if word.size < 4
    
    counter += 1
    break if counter == words.size
  end
  arr
end

poem = %w(April is the cruelest month)
some_method(poem)

# ----- Question 11 -----
def star_method(stars)
  arr = []
  stars.each do |star|
    arr.push(star.upcase)
  end
  arr
end

def star_method2(stars)
  arr = []
  counter = 0
  
  until counter == stars.size
    star = stars[counter]
    arr << star if star.size > 4
    
    counter += 1
  end
  arr
end

def star_method3(stars)
  for star in stars
    star.downcase
  end
end

def star_method4(stars)
  arr = []
  counter = 0
  
  until counter == stars.size do
    arr << stars[counter][0, 3]
    
    counter += 1
  end
  arr
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method3(stars_1)
p stars_1
p stars_2
p star_method3(stars_1)
p stars_1 == stars_2

# ----- Question 19 -----
countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}

# ----- Question 20 -----
mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]

counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  full_name = mailing_campaign_leads[counter][:name]
  names = full_name.split

  names_counter = 0
  loop do
    break if names_counter == names.size
    name = names[names_counter]
    names[names_counter] = name.capitalize

    names_counter += 1
  end

  capitalized_full_name = names.join(' ')
  mailing_campaign_leads[counter][:name] = capitalized_full_name

  counter += 1
end

usable_leads = []
counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  last_login = mailing_campaign_leads[counter][:days_since_login]
  subscribed_to_list = mailing_campaign_leads[counter][:mailing_list]

  if last_login < 60 && subscribed_to_list
    usable_leads << mailing_campaign_leads[counter]
  end

  counter += 1
end

