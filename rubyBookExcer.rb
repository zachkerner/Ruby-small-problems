#The Basics

#1

first = "Zach"
last = "Korner"

full = first + last
first << " " << last

my_first = "Zach"
my_last = "Korner"

my_first.concat(" ", my_last)

#2

four_digit = 4567

four_digit = four_digit.to_s.split('')

thousands = four_digit[0].to_i
hundreds = four_digit[1].to_i
tens = four_digit[2].to_i
ones = four_digit[3].to_i

four = 3876

thousands = four / 1000
hundreds = four % 1000 / 100
tens = four % 1000 % 100 / 10
ones = four % 1000 % 100 % 10


#3

movies = {
  IndianaJones: 1977,
  StarWarsI: 1979,
  TheMatrix: 2000,
  ToyStory: 1996
}
=begin
puts movies[:IndianaJones]
puts movies[:StarWarsI]
puts movies[:TheMatrix]
puts movies[:ToyStory]
=end

#4

movie_years = [movies[:IndianaJones], movies[:StarWarsI], movies[:TheMatrix], movies[:ToyStory]]

=begin
puts movie_years[0]
puts movie_years[1]
puts movie_years[2]
puts movie_years[3]
=end

#5

factorial_5 = 5 * 4 * 3 * 2
factorial_6 = 6 * factorial_5
factorial_7 = 7 * factorial_6
factorial_8 = 8 * factorial_7

=begin
puts factorial_5
puts factorial_6
puts factorial_7
puts factorial_8
=end

#6

=begin
puts 5.4 ** 2
puts 1.000001 ** 2
puts 3.14159 ** 2
=end

#7



#Variables

name = 'John Doe'

def greet(first_name, last_name)
  puts "hey there #{first_name} #{last_name}"
end

name1 = "Someone"

def full_name(first, last)
  name1 = first + ' ' + last
  puts name1
end



total = 0
[2,3,4].each do |num|
  total += num
end

sum = 0
[2,3,4].each { |num| sum += num }

a = 5

def change_a
  a = 3
end



#1

# puts 'Enter your name'
# name = gets.chomp

# puts "Hi #{name}"

#2

# puts 'How old are you now?'
# age = gets.chomp.to_i

# puts "In 10 years you will be #{age + 10}"
# puts "In 20 years you will be #{age + 20}"
# puts "In 30 years you will be #{age + 30}"

#3

# puts "Enter your name"
# name = gets.chomp

# 10.times { puts name }

#4

# puts "Enter first name"
# first_name = gets.chomp

# puts "Enter last name"
# last_name = gets.chomp

# puts "#{first_name} #{last_name}"

#5

# in first program x = 3

# in second program x throws an error as it is out of scope

#Methods

array = [1,2,3]

def mutate_caller(array)
  array.pop
end

def add_three(num)
  puts num + 3
end




#1

def greeting(name)
  "hey there mr. #{name}"
end

#2

# 1. x = 2        => 2

# 2. puts x = 2      => nil

# 3. p name = "Joe"   => "Joe"

# 4. four = "four"     => 'four'

# 5. print something = "nothing"    "nothing"=> nil

#3

def multiply(a, b)
  a * b
end

#4

def scream(words)
  words = words + "!!!!"
  puts words
  return
end

#5 - still returns nil

#6

#It tells me that the method expected 2 arguments but only 1 argument was provided

=begin

for example:

def full_name(first, last)
  puts first + " " + last
end

full_name('Joe')
full_name('Dimaggio')

=end

#Flow Control

x = 3

answer = case x
  when 3
    'x is 3'
  when 4
    'x is 4'
  else 
    'x is neither'
end

#1

(32 * 4) >= 129
#false
false != !true
#false
true == 4
#false
false == (847 == '874')
#true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
#true

#2

def capitalize(word)
  if word.length > 10
    word.upcase
  else
    word
  end
end

value1 = capitalize("hello world")
value2 = capitalize('pizza')


#3

=begin
puts 'enter number'
user_num = gets.chomp.to_i

if user_num > 0 && user_num <= 50
  puts 'number between 1 and 50'
elsif user_num > 50 && user_num <=100
  puts 'number between 51 and 100'
else 
  puts 'number less than 0 or greater than 100'
end

=end

#4

# # Snippet 1
# '4' == 4 ? puts("TRUE") : puts("FALSE")

# #will output "FALSE"

# # Snippet 2
# x = 2
# if ((x * 3) / 2) == (4 + 4 - x - 3)
#   puts "Did you get it right?"
# else
#   puts "Did you?"
# end

# #Did you get it right?

# # Snippet 3
# y = 9
# x = 10
# if (x + 1) <= (y)
#   puts "Alright."
# elsif (x + 1) >= (y)
#   puts "Alright now!"
# elsif (y + 1) == x
#   puts "ALRIGHT NOW!"
# else
#   puts "Alrighty!"
# end

#"Alright now!" since it appears first


#5

#Missing end keyword for the if statements

#Loops


# x = 42

# loop do
#   puts x
#   x = 2
#   break
# end

# puts x

#1

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

#It returns the same array as x.
#It seems like the developer intended to use .map or .collect or to populate an empty array.

#2

# while true do
#   puts 'Enter STOP to stop or anything else to continue'
#   user_input = gets.chomp
#   if user_input == "STOP"
#     break
#   end
# end

#3

def counts_to_zero(num)
  if num > 0
    puts num
    counts_to_zero(num - 1)
  elsif num < 0
    puts num
    counts_to_zero(num + 1)
  else
    puts 0
  end
end



#Arrays

#1

arr = [1, 3, 5, 7, 9, 11]
number = 3

# puts arr.include?(number)

# selection = arr.select do |num|
#   num = number
# end

# if selection.length >= 1
#   puts "Yes"
# else
#   puts "No"
# end

#2

arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)



arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)


#3

arr = [["test", "hello", "world"],["example", "mem"]]

arr[1][0] #more JS than Ruby

arr.last.first

#4

arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)
#It returns 3, the first index at which the argument, 5, appears.

# arr.index[5]
#throws an error

arr[5]
#It returns 8, the element at the 5th index position (counting up from 0).

#5

string = "Welcome to America!"
a = string[6] #e
b = string[11] #A
c = string[19] #error? => nil

#6

names = ['bob', 'joe', 'susan', 'margaret']

#arrays are number indexed. You cannot access an array using bracket notation
# with a string passed through. You may use this method to access keys in
#hashes given that the keys are strings.

#fix

names[3] = 'jody'

#7

cities_visited = ["Paris", "Copenhagen", "Stockholm", "Lisbon"]

#cities_visited.each_with_index { |city, index| puts "I have visited #{index + 1}: #{city}"}

#8

og_array = [1,2,3,4,5]
incre_array = og_array.collect { |num| num + 2 }

new_array = []

og_array.each do |num|
  new_array << num + 2
end
 og_array
 incre_array
 new_array

#Hashes

#1

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

close_family_members = family.select { |key, value| key == :brothers || key == :sisters}


#2

hash_1 = {Michael: "Jordan", Kobe: "Bryant"}
hash_2 = {Lebron: "James", Magic: "Johnson"}
hash_3 = {Steph: "Curry", Klay: "Thompson"}

hash_1.merge!(hash_2)

combo_hash = hash_2.merge(hash_3)

#3

# hash_1.each do |key, value|
#   puts key
# end

# puts "----"

# hash_1.each do |key, value|
#   puts value
# end

# puts "----"

# hash_1.each { |k, v| puts  "#{k}: #{v}"}

#4

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# puts person[:name]

#5

# if person.value?(:social_security_number)
#   puts 'do you want his credit card too?'
# else 
#   puts 'no can do!'
# end

#6

#Line 2 uses x as a symbol
#Line 3 uses x as a string.

#7

#B
