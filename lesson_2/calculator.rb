require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

language = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts("=> #{message}")
  puts ""
end

def valid_lang?(lang)
  lang == '2' || lang == '1'
end

def define_language(lang)
  lang == '2' ? 'es' : 'en'
end

def valid_number?(number)
  valid_integer?(number) || valid_float?(number)
end

def valid_integer?(number)
  /^[+-]\d+$/.match(number) || /^\d+$/.match(number)
end

def valid_float?(number)
  /\d/.match(number) &&
    (/^[+-]\d*\.?\d*$/.match(number) ||
    /^\d*\.?\d*$/.match(number))
end

def invalid_name?(name)
  name.match?(/^[+-]\d+$/) ||
    name.match?(/^\d+$/) ||
    name.start_with?(" ") ||
    name.empty?
end

def answer_valid?(answer)
  answer == 'y' || answer == 'yes' || answer == 'n' || answer == 'no'
end

def div_by_zero(number, language)
  if number == 0.0
    prompt(messages('divide_by_zero_error', language))
    true
  else
    false
  end
end

def select_language(lang='1')
  loop do
    prompt(messages('select_lang'))
    lang = gets.chomp
    if valid_lang?(lang)
      return define_language(lang)
    else
      prompt(messages('lang_error'))
    end
  end
end

def ask_for_name(language)
  loop do
    prompt(messages('ask_name', language))
    name = gets.chomp
    if !invalid_name?(name)
      return name.capitalize!
    else
      prompt(messages('invalid_name', language))
    end
  end
end

def ask_for_number(which_num)
  loop do
    prompt(which_num)
    number = gets.chomp
    if valid_number?(number)
      return number
    else
      prompt('invalid_number')
    end
  end
end

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

def ask_preform_again(language)
  loop do
    prompt(messages('preform_again', language))
    answer = gets.chomp.downcase
    if answer_valid?(answer)
      return answer
    else
      prompt(messages('invalid_answer', language))
    end
  end
end

# start
system('clear') || system('cls')

language = select_language

prompt(messages('welcome', language))

name = ask_for_name(language)
puts format(messages('hi', language), name: name)

# main loop
loop do
  number1 = ask_for_number(messages('first_number', language))
  number2 = ask_for_number(messages('second_number', language))

  operator = ask_for_operator(language)

  operation_message = operation_to_message(operator, language)
  prompt(operation_message)

  result = result(operator, number1, number2)

  if !div_by_zero(number2.to_f, language)
    puts format(messages('result', language), result: result)
  end

  answer = ask_preform_again(language)
  break unless ['y', 'yes'].include?(answer)
end

prompt(messages('goodbye', language))
