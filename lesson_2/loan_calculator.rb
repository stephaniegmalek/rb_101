MESSAGES = {
  welcome: "Welcome to the Mortgage Calculator!
   -----------------------------------",
  loan_amt: "Please enter your loan amount. Note don't include the $ sign",
  loan_amt_error: "Invalid loan amount. Please try again.",
  annual_rate: "Please enter your annual percentage rate (APR).",
  annual_rate_ex: "(For example, please input 5% as 5, not 0.05)",
  annual_rate_error: "Invalid APR. Please try again.",
  loan_duration: "Please enter your loan duration in years:",
  loan_duration_error: "Invalid loan duration. Please try again.",
  confirmation: "It looks like your loan amount is ${loan_amt},
   your annual percentage rate is {annual_rate}%,
   and your loan duration is {loan_duration} years.
   Press 'Y' to confirm.",
  monthly_payment: "Your monthly payment is: ${monthly}",
  preform_another: "Would you like to preform another calculation?",
  thanks: "Thank you for using the Mortgage Calculator!
   Goodbye!",
}

# return messages to the user
def prompt(message)
  puts("=> #{message}")
end

# function to space out prompts
def space_prompts
  puts ""  
end

# functions to validate inputs from the user
# checks that a number is positive and either a valid integer or a valid float
def valid_number?(number)
  number.to_f.positive? && (valid_integer?(number) || valid_float?(number))
end

# checks that input consists of some number of digits
def valid_integer?(number)
  number =~ /^\d+$/
end

# checks that input follow a float format ( XX.XX | XX. | .XX )
def valid_float?(number)
  number =~ /^\d+[.]\d+$|^\d+[.]{1}$|^[.]\d+$/
end

# properly formats the dollar amounts with commas and 2 decimal places
def format_dollar_amts(num_as_string)
  formated_amt = num_as_string.reverse.scan(%r/\d{3}|
  \d{1}[.]\d{3}|\d{2}[.]\d{3}|.+/x).join(",").reverse
  formated_amt << '0' if formated_amt =~ /[.]\d{1}$/
  formated_amt
end

# ask user for loan amount
def ask_for_loan_amt
  prompt(MESSAGES[:loan_amt])
  loop do
    loan_amt = gets.chomp
    if valid_number?(loan_amt)
      return loan_amt.to_f
    else
      space_prompts
      prompt(MESSAGES[:loan_amt_error])
    end
  end
end

# ask user for annual percentage interest rate
def ask_for_apr
  prompt(MESSAGES[:annual_rate])
  prompt(MESSAGES[:annual_rate_ex])
  loop do
    annual_rate = gets.chomp
    if valid_number?(annual_rate) && annual_rate.to_i > 0
      return annual_rate.to_f
    else
      prompt(MESSAGES[:annual_rate_error])
    end
  end
end

# ask user for loan duration in years
def ask_for_loan_duration
  prompt(MESSAGES[:loan_duration])
  loop do
    years = gets.chomp
    if valid_number?(years)
      return years.to_f
    else
      prompt(MESSAGES[:loan_duration_error])
    end
  end
end

#confirm user's input is correct
def confirm_input(loan_amt, annual_rate, years)
  puts prompt(MESSAGES[:confirmation].sub('{loan_amt}', format_dollar_amts(loan_amt.to_s))\
    .sub('{annual_rate}', annual_rate.to_s)\
    .sub('{loan_duration}', years.to_s))
  gets.chomp
end

# calculate monthly payment
def calculate_monthly_payment(loan_amt, annual_rate, years)
  monthly_interest_rate = annual_rate / 12 / 100
  months = years.to_i * 12
  monthly_payment = loan_amt *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months)))
  return monthly_payment.round(2)
end

#clear screen before beginning
system "clear"
space_prompts
# start of program
prompt(MESSAGES[:welcome])
space_prompts
loan_amt = 0
annual_rate = 0
years = 0
#main loop
loop do
  loop do
    #ask user for loan amount
    loan_amt = ask_for_loan_amt
    space_prompts
    #ask user for APR
    annual_rate = ask_for_apr
    space_prompts
    #ask user for loan duration in years
    years = ask_for_loan_duration
    space_prompts
    #confirm with user the entered amount is correct
    confirmation = confirm_input(loan_amt, annual_rate, years)
    break if confirmation.downcase.start_with?('y')
  end
  #calculate the monthly payment
  monthly = calculate_monthly_payment(loan_amt, annual_rate, years)
  prompt(MESSAGES[:monthly_payment].sub('{monthly}', format_dollar_amts(monthly.to_s)))
  space_prompts
  #ask user if they want to calculate a payment for another loan
  prompt(MESSAGES[:preform_another])
  space_prompts
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES[:thanks])
