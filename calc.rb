loop do

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  number.to_i() != 0
end

def operation_to_message(operation)
  case operation
  when 'a'
    'adding'
  when 's'
    'substracting'
  when 'm'
    'multiplying'
  when 'd'
    'dividing'
  end
end

prompt("Welcome to the calculator app. Enter your name.")

name = ''

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("please enter your name")
  else
    break
  end
end

number_1 =''

loop do
  prompt("Enter a number")
  number_1 = Kernel.gets().chomp()
  break if valid_number?(number_1)
end

number_2 = ''

loop do
  prompt("Enter another number")
  number_2 = Kernel.gets().chomp()
  break if valid_number?(number_2)
end

choice = ''

operator_prompt = <<-MSG
Please select:
  a) addition
  s) subtraction
  d) division
  m) multiplication
MSG

loop do
  prompt(operator_prompt)
  choice = Kernel.gets().chomp()
  break if %w(a s m d).include?(choice)
end

prompt("#{operation_to_message(choice)} your numbers...")

result = case choice
  when 'a'
    number_1.to_i + number_2.to_i
  when 's'
    number_1.to_i - number_2.to_i
  when 'm'
    number_1.to_i * number_2.to_i
  when 'd'
    (number_1.to_f / number_2.to_f).round(4)
  else 
    prompt("Error - command not recognized.")
  end

prompt("The result is #{result}.")

repeat = ''

loop do
  prompt("Do you want to perform another calculation? (y/n)")
  repeat = Kernel.gets().chomp()
  break if repeat.downcase == 'y' || repeat.downcase == 'n'
end

  break if repeat.downcase == 'n'
end

