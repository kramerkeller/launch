def prompt(message)
  Kernel.puts("=> #{message}")
end

def ask(question)
  prompt(question)
  Kernel.gets().chomp()
end

def compute_payments(principle, interest_rate_monthly, loan_duration_months)
  principle * (interest_rate_monthly / (1 - (1 + interest_rate_monthly)**(-loan_duration_months)))
end

# def in_dollars(number)
#   # https://stackoverflow.com/questions/8733924/convert-string-into-currency-format
#   '$' + sprintf('%.2f',number).gsub('.00','').reverse.scan(/(\d*\.\d{1,3}|\d{1,3})/).join(',').reverse
# end

# Lets just make a currency converter instead of the above :)
class String
  def in_dollars
    '$' + sprintf('%.2f',self).gsub('.00','').reverse.scan(/(\d*\.\d{1,3}|\d{1,3})/).join(',').reverse
  end
end

loan_amount = ''
apr = ''
loan_duration = ''

prompt("Welcome to the Mortgage Calculator!")
prompt("Please answer the following questions:")

loop do
  loan_amount = ask("What is the amount of your loan?")
  break unless loan_amount.to_i <= 0
  prompt("Must enter a positive number")
end
prompt("The amount of your loan is #{loan_amount.in_dollars}")

loop do
  apr = ask("What is your loan's Annual Percentage Rate (APR)?")
  break unless apr.to_f <= 0
  prompt("Must enter a positive number")
end
prompt("Your APR is #{apr}%")

loop do
  loan_duration = ask("What is the duration of your loan (years)")
  break unless loan_duration.to_i <= 0
  prompt("Must enter a positive number")
end
prompt("Your loan is for #{loan_duration} years")

principle = loan_amount.to_i
monthly_interest_rate = apr.to_f / 100 / 12
loan_duration_months = loan_duration.to_i * 12
payments = compute_payments(principle, monthly_interest_rate, loan_duration_months)

prompt("Your payments are #{payments.to_s.in_dollars} a month.")
