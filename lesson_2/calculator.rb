require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

language = 'en'

# checks user input for lang is valid
#def valid_lang?(lang)
#  lang == '1' || lang == '2'
#end

#def lang_to_message(lang)
#  language = 'es' if lang == '2'
#end

#ask user to select languages
#def ask_for_language
#  prompt(messages('select_lang'))
#  lang = gets.chomp

#  if valid_lang?(lang)
#    lang_to_message(lang)
#  else
#    prompt('lang_error')
#  end 
#end

# function to use the correct language for messages to user
def messages(message, lang='en')
  MESSAGES[lang][message]
end

# formats and returns all messages to user
def prompt(message)
  puts("=> #{message}")
end

# function to space out prompts
def space_prompts
  puts ""  
end

# functions to validate inputs from user
# checks that a number is a valid integer or a valid float 
def valid_number?(number)
  valid_integer?(number) || valid_float?(number)
end

# checks that input consists of some number of digits
def valid_integer?(number)
  /^\d+$/.match(number)
end

# checks that input valid float
def valid_float?(number)
  /\d/.match(number) && /^\d*\.?\d*$/.match(number)
end

# checks that name is valid 
def invalid_name?(name)
  name.match?(/^\d+$/) || name.start_with?(" ") || name.empty?
end

# check user isn't dividing by zero
def div_by_zero(number, language)
  if number == 0.0
    prompt(messages('divide_by_zero_error', language))
    true
  else
    false
  end
end

# ask user for their name
def ask_for_name(language)
  loop do
    # ask user for name
    prompt(messages('ask_name', language))
    name = gets.chomp
    if !invalid_name?(name)
      return name.capitalize! 
    else
      prompt(messages('invalid_name', language))
      space_prompts
    end
  end
end

# ask user for number
def ask_for_number(which_num)
  loop do
    #ask user for number
    prompt(which_num)
    number = gets.chomp
    if valid_number?(number)
      return number
    else
      prompt('invalid_number')
      space_prompts
    end
  end
end

# ask user for operator
def ask_for_operator(language)
  prompt(messages('operator_prompt', language))
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      return operator
    else
      prompt(messages('valid_operater', language))
    end
  end
end

def operation_to_message(op, language)
  msg = case op
         when '1'
           messages('add', language)
         when '2'
           messages('subtract', language)
         when '3'
           messages('multiply', language)
         when '4'
           messages('divide', language)
         end

  msg 
end

def result(operator, number1, number2)
  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
           end
  result
end

#start
system "clear"

# ask user for language
#language = ask_for_language
#check language is valid choice
#set language to selected language
prompt(messages('select_lang'))
  lang = gets.chomp

  language = 'es' if lang == '2'

prompt(messages('welcome', language))
space_prompts

# ask user for name
name = ask_for_name(language)
p name
puts format(messages('hi', language), name: name)
space_prompts

# main loop
loop do
  #ask user for first number
  number1 = ask_for_number(messages('first_number', language))
  space_prompts

  #ask user for second number
  number2 = ask_for_number(messages('second_number', language))
  space_prompts

  #ask user what operation they want to preform
  operator = ask_for_operator(language)
  space_prompts

  operation_message = operation_to_message(operator, language)

  # print to screen what operation is being preformed 
  prompt(operation_message)
  space_prompts

  # calculate the result 
  result = result(operator, number1, number2)
  
  # check that the user didn't divide by zero
  if !div_by_zero(number2.to_f, language)
    # print result to user 
    puts format(messages('result', language), result: result)
  end

  # ask user if they want to preform another calculation 
  prompt(messages('preform_again', language))
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt(messages('goodbye', language))

#need to check why number input validation is no longer accepting negative numbers
