def prompt(message)
  puts "=> #{message}"
end

def is_pos_number?(number)
  num_hash = {
    "1" => 1, "2" => 2, "3" => 3, "4" => 4,
    "5" => 5, "6" => 6, "7" => 7, "8" => 8,
    "9" => 9, "0" => 0
  }

  num_converted = number.chars.map{|char| num_hash[char]}.select{|char| char}
  num_converted.size == number.size && number.to_i > 0
end

welcome_prompt = <<-MSG
  Welcome to the loan calculator app sponsored by Geico.
     You'll enter your loan amount, APR and loan duration and we'll tell you
     your monthly payment!
MSG

prompt(welcome_prompt)

loan_total = ""
loop do
  prompt("Enter loan amount in dollars: ")
  loan_total = gets.chomp
  break if is_pos_number?(loan_total)
end

apr = ""
loop do
  prompt("Enter APR:")
  apr = gets.chomp
  break if is_pos_number?(apr)
end

loan_years = ""
loop do
  prompt("Enter loan duration in years: ")
  loan_years = gets.chomp
  break if is_pos_number?(loan_years)
end

monthly_rate = (apr.to_f/100)/12
loan_months = loan_years.to_i * 12

monthly_payment = loan_total.to_f * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_months)))

prompt("...calculating...")

prompt("Your monthly payment comes out to $ #{monthly_payment.round(2)}.")

# input 5 , 4 years
# expected output 0.05, 48