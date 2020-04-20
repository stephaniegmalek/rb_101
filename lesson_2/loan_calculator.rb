require 'yaml'
MESSAGES = YAML.load_file('loan_calculator_messages.yml')

def messages(message)
  MESSAGES[message]
end

def prompt(message)
  puts "=> #{message}"
  puts ""
end

def valid_positive_number?(number)
  number.to_f.positive? && (valid_integer?(number) || valid_float?(number))
end

def number?(obj)
  obj = obj.to_s unless obj.is_a? String
  /\A[+-]?\d+(\.[\d]+)?\z/.match obj
end

def valid_integer?(number)
  number =~ /^\d+$/
end

def valid_float?(number)
  number =~ /^\d+[.]\d+$|^\d+[.]{1}$|^[.]\d+$/
end

def valid_apr?(apr)
  number?(apr) && apr.to_f >= 0.00 && apr.to_f <= 100
end

def answer_valid?(answer)
  answer == 'y' || answer == 'yes' || answer == 'n' || answer == 'no'
end

# properly formats the dollar amounts with commas and 2 decimal places
def format_dollar_amts(num_as_string)
  formated_amt = num_as_string.reverse.scan(%r/\d{3}|
  \d{1}[.]\d{3}|\d{2}[.]\d{3}|.+/x).join(",").reverse
  formated_amt << '0' if formated_amt =~ /[.]\d{1}$/
  formated_amt
end

def ask_for_loan_amt
  prompt(messages('loan_amt'))
  loop do
    loan_amt = gets.chomp
    if valid_positive_number?(loan_amt)
      return loan_amt.to_f
    else
      prompt(messages('loan_amt_error'))
    end
  end
end

def ask_for_apr
  prompt(messages('annual_rate'))
  prompt(messages('annual_rate_ex'))
  loop do
    annual_rate = gets.chomp
    if valid_apr?(annual_rate)
      return annual_rate.to_f
    else
      prompt(messages('annual_rate_error'))
    end
  end
end

def ask_for_loan_duration
  prompt(messages('loan_duration'))
  loop do
    years = gets.chomp
    if valid_integer?(years) && years.to_i > 0
      return years.to_f
    else
      prompt(messages('loan_duration_error'))
    end
  end
end

def confirm_input(loan_amt, annual_rate, years)
  loop do
    prompt format(messages('confirmation'),
                  loan_amt: format_dollar_amts(loan_amt.to_s),
                  annual_rate: "#{annual_rate}%",
                  loan_duration: years)
    confirm = gets.chomp
    if answer_valid?(confirm)
      return confirm
    else
      prompt(messages('invalid_answer'))
    end
  end
end

def calculate_monthly_payment(loan_amt, annual_rate, years)
  monthly_interest_rate = annual_rate / 12 / 100
  months = years.to_i * 12
  monthly_payment = loan_amt *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months)))
  monthly_payment.round(2)
end

def ask_preform_again
  loop do
    prompt(messages('preform_another'))
    answer = gets.chomp.downcase
    if answer_valid?(answer)
      return answer
    else
      prompt(messages('invalid_answer'))
    end
  end
end

system('clear') || system('cls')

# start of program
prompt(messages('welcome'))

loan_amt = 0
annual_rate = 0
years = 0

loop do
  loop do
    loan_amt = ask_for_loan_amt
    annual_rate = ask_for_apr
    years = ask_for_loan_duration

    confirmation = confirm_input(loan_amt, annual_rate, years)
    break if confirmation.downcase.start_with?('y')
  end

  monthly = calculate_monthly_payment(loan_amt, annual_rate, years)

  if monthly.nan?
    prompt format(messages('monthly_payment'), monthly: "$0.00")
  else
    prompt format(messages('monthly_payment'),
                  monthly: format_dollar_amts(monthly.to_s))
  end

  answer = ask_preform_again
  break unless ['y', 'yes'].include?(answer)
  system('clear') || system('cls')
end

prompt(messages('thanks'))
