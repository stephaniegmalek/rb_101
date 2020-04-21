require 'yaml'
MESSAGES = YAML.load_file('loan_calculator_messages.yml')

VALID_ANSWERS = %w(y yes n no)
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
  VALID_ANSWERS.include?(answer)
end

# properly formats the dollar amounts with commas and 2 decimal places
def format_dollar_amts(num_as_string)
  formated_amt = num_as_string.reverse.scan(%r/\d{3}|
  \d{1}[.]\d{3}|\d{2}[.]\d{3}|.+/x).join(",").reverse
  formated_amt << '0' if formated_amt =~ /[.]\d{1}$/
  formated_amt
end

def ask_for_input(input_type)
  prompt(messages(input_type))
  input = nil
  loop do
    input = gets.chomp
    break if valid_input?(input, input_type)
    prompt(messages("#{input_type}_error"))
  end
  return input if input_type == "preform_another"
  input.to_f
end

def valid_input?(input, input_type)
  case input_type
  when "loan_amt"
    valid_positive_number?(input)
  when "annual_rate"
    valid_apr?(input)
  when "loan_duration"
    valid_integer?(input) && input.to_i > 0
  when "preform_another"
    answer_valid?(input.downcase)
  end
end

def confirm_input(loan_amt, annual_rate, years)
  loop do
    prompt format(messages('confirmation'),
                  loan_amt: format_dollar_amts(loan_amt.to_s),
                  annual_rate: "#{annual_rate}%",
                  loan_duration: years)
    confirm = gets.chomp.downcase
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
  monthly_payment = loan_amt.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months)))
  monthly_payment.round(2)
end

def calculate_zero_apr_monthly_payment(loan_amt, years)
  months = years.to_i * 12
  monthly_payment = loan_amt / months
  monthly_payment.round(2)
end

system('clear') || system('cls')

# start of program
prompt(messages('welcome'))

loan_amt = 0
annual_rate = 0
years = 0

loop do
  loop do
    loan_amt = ask_for_input('loan_amt')
    annual_rate = ask_for_input('annual_rate')
    years = ask_for_input('loan_duration')

    confirmation = confirm_input(loan_amt, annual_rate, years)
    break if confirmation.downcase.start_with?('y')
  end

  monthly = calculate_monthly_payment(loan_amt, annual_rate, years)

  if monthly.nan?
    monthly = calculate_zero_apr_monthly_payment(loan_amt, years)
    prompt format(messages('monthly_payment'), monthly: format_dollar_amts(monthly.to_s))
  else
    prompt format(messages('monthly_payment'),
                  monthly: format_dollar_amts(monthly.to_s))
  end

  answer = ask_for_input('preform_another')
  break unless ['y', 'yes'].include?(answer.downcase)
  system('clear') || system('cls')
end

prompt(messages('thanks'))
