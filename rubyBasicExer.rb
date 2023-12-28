#Reading Documentation

#1 Where to find documentation?

#ruby-doc.org click core api

#2 Where to find while loop documentation

#After clicking core api I searched for control and clicked on control expressions, then scrolled down.

#I learned that the do keyword is optional - lemme check that out.

# counter = 0

# while counter < 3
#   p counter
#   counter +=1
# end

#3

#A while loop returns nil unless a value is specified using break

#4 - return value of break

#Here's the code snippet from the documentation

# result = [1, 2, 3].each do |value|
#   break value * 2 if value.even?
# end

# p result # prints 4

#5 large numbers

# you can write large numbers with scientific style notations using baseEexponent


#you can separate long numbers with underscores as commas (or periods for Europeans)

#ex: 156789545 == 156_789_545

#p 19_87_65_4321 this works!

#6

#Reading Documentation 2

#1

str = 'xyz'
str.upcase!


#2

arr = %w(a b c d e)
arr.insert(3, 5, 6, 7)


#3

# s = 'abc def ghi,jkl mno pqr,stu vwx yz'
# puts s.split.inspect
# puts s.split(',').inspect
# puts s.split(',', 2).inspect

#Variable Scope

#1

# a = 7

# def my_value(b)
#   b += 10
# end

# my_value(a)
# puts a


#The value of a remains 7.

#2

#Teh value of a remains 7.

#3

#The value of a remains 7.

#4

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)

# a = "Xy-zy"

#5

# a = "Xyzzy"

#6

#error! no access to a

#7 

# a is 3 thanks to the open nature of method invocation scope with block

#8

#Loops 1

#1

# loop do
#   puts 'Just keep printing...'
#   break
# end

#2

# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end
#   break
# end

#3

# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   break if iterations > 5
# end


#4

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == "yes"
#   puts "This will loop until you write 'yes'
# end

#5

# say_hello = true
# counter = 1
# while say_hello
#   puts 'Hello!'
#   say_hello = false if counter == 5
#   counter += 1
# end

# 5.times do
#   puts "Hello!"
# end

# 5.times { puts "easy" }

#6

# numbers = []

# while numbers.length < 5
#   numbers.push(rand(100))
# end

# puts numbers

#7


# count = 1

# until count > 10
#   puts count
#   count += 1
# end

#8

# numbers = [7, 9, 13, 25, 18]
# count = 0

# until count > 4
#   puts numbers[count]
#   count += 1
# end

#9

# for i in 1..100
#   puts i if i % 2 == 1
# end

#10

friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for i in (0...friends.length)
#   puts friends[i]
# end

#Loop 2

#1

# count = 1

# loop do
#   if count % 2 == 0
#     puts "#{count} is even"
#   else
#     puts "#{count} is odd"
#   end
#   count += 1
#   break if count > 5
# end

#2

# loop do
#   number = rand(100)
#   if number.between?(0, 10)
#     break
#   else
#     puts number
#   end
# end

#3

# process_the_loop = [true, false].sample

# if process_the_loop
#   puts "The loop was processed"
# else
#   puts "The loop was not processed"
# end

#4

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   break if answer == 4
# end

#5


# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers.push(input)
#   break if numbers.size == 5
# end
# puts numbers

#6

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.shift
#   if names.empty?
#     break
#   end
# end

#7

# 5.times do |index|
#   puts index
#   break if index == 2
# end

# 5.times do |index|
#   puts index
#   break if index > 7
# end

#8

# number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end

#9

# number_a = 0
# number_b = 0

# counter = 1

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   counter += 1
#   next unless number_a == 5 || number_b == 5
#   puts "5 was reached in #{counter} iterations"
#   break
# end

#10

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#   greeting
#   number_of_greetings -= 1
# end

#User Input

#4

# choice = nil
# loop do
#   puts 'Do you want me to print something? (y/n)'
#   choice = gets.chomp.downcase
#   break if [y,n].include?(choice)
#   puts "Invalid input - enter y or n"
# end

# puts 'something' if choice == 'y'

#5

# lines = nil

# loop do
#   puts 'How many lines of output do you want? Please enter a number >= 3.'
#   lines = 4
#   break if lines >= 3
#   puts "Must enter a number 3 or higher!"
# end

# lines.times { puts "Launch school is the best!"}

#6

# password = nil

# loop do
#   puts 'Please enter your password'
#   password = gets.chomp
#   break if password = 'thereisnospoon'
#   puts 'invalid password'
# end

# puts "Welcome back!" if password

#7



#Strings

#1

empty = ''

#2

"It's now 12 o'clock."

#3

name = 'Roger'
imposter = "roGEr"

name.casecmp?("roGer")
name == "DAVE"

#6

state = 'teXAs'
state.capitalize!
state

#7

greeting = "Hello"
greeting.gsub!("Hello", "Goodbye")


#8

alphabet = 'abcdefghijklmnopqrstuvwxyz'

#9

# words = 'car human elephant airplane'
# words.split(' ').each do |word|
#   puts word + 's'
# end

#10

# colors = 'blue pink yellow orange'

# puts colors.include?('yellow')
# puts colors.include?('purple')

#Arrays

#1

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pet = pets[2]
# puts "I have a pet #{my_pet}"

#2

pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets[2..3]

#3

# pets = ['cat', 'dog', 'fish', 'lizard']
# pets.delete_at(3)
# my_pets = pets[2..3]

#4

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
my_pets << pets[1]
p my_pets

#Methods

#1

# def print_me
#   puts "I'm printing within the method look at me!!"
# end

# print_me

#3

# def hello
#   "Hello"
# end

# def world
#   "World"
# end

# puts "#{hello} #{world}"

#4


# def hello
#   'Hello'
# end

# def world
#   'World'
# end

# def greet
#   "#{hello} #{world}"
# end

# puts greet


#5

# def car(make, model)
#   puts "#{make} #{model}"
# end

# car('Toyota', 'Corolla')

#6

# daylight = [true, false].sample

# def time_of_day(parameter)
#   if parameter
#     "its daylight"
#   else
#     "its nighttime"
#   end
# end

# puts time_of_day(daylight)

#7


# def dog(name)
#   return name
# end

# def cat
#   return "Ginger"
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat}."

#8

# def assign_name(name="Bob")
#   name
# end

# puts assign_name('Kevin') == 'Kevin'
# puts assign_name == 'Bob'

#9

# def add(x, y)
#   x + y
# end

# def multiply(x, y)
#   x * y
# end

# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36

#10
# def name(names)
#   names.sample
# end

# def activity(activities)
#   activities.sample
# end

# def sentence(name, activity)
#   "#{name} went #{activity} today"
# end

# names = ['Dave', 'Sally', 'George', 'Jessica']
# activities = ['walking', 'running', 'cycling']

# puts sentence(name(names), activity(activities))

#Return

#1

#Breakfast

#2

#Evening

#3

#Breakfast

#4

#Dinner
#Breakfast

#5

#Dinner
#nil

#6


#Breakfast

#7

#5.times returns 5

# 0
# 1
# 2
# 3
# 4
# 5

#8

# 0
# 1
# 2
# 3
# 4
# 10

#9

#0
#1
#2
#nil

#10

#1

#Conditionals

#1

# sun = ['visible', 'hidden'].sample


# puts "the sun is so bright" if sun == 'visible'

#2

# sun = ['visible', 'hidden'].sample

# puts "the sun is blocked out!" unless sun == 'hidden'

#3

# sun = ['visible', 'hidden'].sample

# puts 'its so bright' if sun == 'visible'
# puts 'i cant see a thing' unless sun == 'visible'

#5

#It will print the if and not the else since 7 is truthy. Only false and nil are falsy in Ruby.

#6

# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green'
#   puts 'Go'
# when 'yellow'
#   puts 'Speed up'
# when 'red'
#   puts 'Stop'
# end

#8

# status = ['awake', 'tired'].sample

# advice = if status == 'awake'
#   puts 'be productive'
# else
#   puts 'get some sleep kid'
# end

# puts advice

#9


# number = rand(10)

# if number == 5
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end

#10

# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green' then puts 'Go!'
# when 'yellow' then puts 'Slow down!'
# else puts 'Stop!'
# end

#Hashes

#1
car = {
  type: "sedan",
  color: "blue",
  mileage: 80_000
}

#2

car[:year] = 2003

#3

car.delete(:mileage)


#4

car[:color]

#5

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

# numbers.each do |k, v|
#   puts "A #{k} number is #{v}"
# end

#6



half_numbers = numbers.map do |k, v|
  v / 2
end

#7

low_numbers = numbers.select do |k, v|
  v < 25
end

#8

numbers.select! { |k,v| v < 25 }


#9

nested_hash = {
  car: {
    type: "sedan",
    color: "blue",
    year: 2003
  }

  truck: {
    type: "pickup",
    color: "red",
    year: 1998
  }
}

#10

car = [[:type, 'sedan'], [:color, "blue"], [:year, 2003]]



#Debugging

#1
# def find_first_nonzero_among(*numbers)
#   numbers.each do |n|
#   return n if n.nonzero?
#   end
# end

# # Examples

# puts find_first_nonzero_among(0, 0, 1, 0, 2, 0)
# puts find_first_nonzero_among(1)

#2

#since 'false' is truthy, sunshine is always truthy and the if statement 
#will always return 'Today's weather will be sunny".

#We fix the code by changing the if conditional to sunshine == 'true'

# def predict_weather
#   sunshine = ['true', 'false'].sample

#   if sunshine == 'true'
#     puts "Today's weather will be sunny!"
#   else
#     puts "Today's weather will be cloudy!"
#   end
# end

# predict_weather

#3

#string#gets receives a string as input. It must be converted to an integer with to_i

# def multiply_by_five(n)
#   n * 5
# end

# puts "Hello! Which number would you like to multiply by 5?"
# number = gets.chomp.to_i

# puts "The result is #{multiply_by_five(number)}!"

#4

# pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

 #pets[:dog] << 'bowser'

# pets[:dog].concat(['bowser'])

#5

# numbers = [5, 2, 9, 6, 3, 1, 8]

# even_numbers = numbers.select do |n|
#   n if n.even?
# end

# p even_numbers # expected output: [2, 6, 8]

#6


# def get_quote(person)
#   if person == 'Yoda'
#     return 'Do. Or do not. There is no try.'
#   end

#   if person == 'Confucius'
#     return 'I hear and I forget. I see and I remember. I do and I understand.'
#   end

#   if person == 'Einstein'
#     return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
#   end
# end

# puts 'Confucius says:'
# puts '"' + get_quote('Yoda') + '"'

#7

# balance = 0

# # Here's what you earned and spent during the first three months.

# january = {
#   income: [ 1200, 75 ],
#   expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
# }

# february = {
#   income: [ 1200 ],
#   expenses: [ 650, 140, 320, 46.7, 122.5 ]
# }

# march = {
#   income: [ 1200, 10, 75 ],
#   expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
# }

# # Let's see how much you've got now...

# def calculate_balance(month)
#   plus  = month[:income].sum
#   minus = month[:expenses].sum

#   plus - minus
# end



# [january, february, march].each do |month|
#   balance += calculate_balance(month)
# end

# puts balance.truncate(2)

#8

# colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
# things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

# colors.shuffle!
# things.shuffle!

# i = 0
# loop do
#   break if i >= things.length

#   if i == 0
#     puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
#   else
#     puts 'And a ' + colors[i] + ' ' + things[i] + '.'
#   end

#   i += 1
# end

#Since colors.size > things.size the final iteration of the loop attempts 
#to acccess an element inside of things beyond its length - 1, returning nil.

#9

# def digit_product(str_num)
#   digits = str_num.chars.map { |n| n.to_i }
#   product = 0

#   digits.each do |digit|
#     product *= digit
#   end

#   product
# end


# p digit_product('12345')

#A classic mistake!. Product should be initialized to 1 and not 0 since 0 times anything is 0.

#10

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

# character_classes = {
#   warrior: { strength:  20 },
#   thief:   { dexterity: 20 },
#   scout:   { stamina:   20 },
#   mage:    { charisma:  20 }
# }

# puts 'Please type your class (warrior, thief, scout, mage):'
# input = gets.chomp.downcase

# player.merge(character_classes[input.to_sym])

# puts 'Your character stats:'
# puts player

#This returns nil. The keys in the character class hash are symbols, not strings. gets.chomp returns a string.

