#Easy 1

#1

#I expect it to print out the original array. There are two uniq methods
#one non-destructive and one destructive. The non-destructive uniq was applied to the array. 
#The array hasn't changed.

#Edit: p number would print out the original array. puts number outputs
#the content of the original array but with each element on its own line.

#2

#!, generally speaking, signals a destructive method.
#?, generally speaking, signals a method that returns a boolean.

#a) != is the non-equality comparison operator. It returns a boolean after checking
# to see whether the two operands match exactly.

#b) ! is the not operator. It flips the boolean polarity. !true is false; !false is true. 
#!x means "if x is falsy"

#c)! as in uniq! signals a destructive method, mutating the caller.

#d) ? before is the start of a ternary operator

#e) ? after something signals a boolean-returning method

#f) !! forces the Ruby interpreter to return a boolean.

#3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

#4

# delete_at removes the element at provided index
# delete removes the provided element at all indexes.

nums = [1,2,1,2]
nums.delete(1)


#5

(10..100).include?(42)

#6

famous_words = "seven years ago..."

lincoln = "Four score and " << famous_words

famous_words = "Four score and " + famous_words


#7

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]].flatten

#8

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
barney = flintstones.entries[2]


# Easy 2

#1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# p ages["Spot"] == nil
# p ages.any?("Spot")
# p ages.assoc("Spot") == nil
# p ages.fetch("Spot", 'go fish')

#2

munsters_description = "The Munsters are creepy in a good way."

# m = munsters_description.upcase
# m[0] = m[0].downcase
# m[4] = m[4].downcase
# p m
# p munsters_description.capitalize
# p munsters_description.downcase
# p munsters_description.upcase

#3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)


#4

advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.match?('Dino')

#5

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles) << "Dino"


#7

flintstones.push("Hoppy").push("Donny")
flintstones.concat(%w(Hoppy Donny))

#8

advice = "Few things in life are as important as house training your pet dinosaur."


advice.slice(0..38)

#9

statement = "The Flintstones Rock!"
statement.count("t")

#10

title = "Flintstone Family Members"

title.center(40)

#Medium 1

#1

# 10.times { |i| puts " " * i + "The Flintstones Rock"}

#2

#In Ruby unlike in JS there is no implicit conversion. You will receive an error saying
#that it is impossible to concatenate strings and numbers.

#Fix it using string interpolation:

# puts "the value of 40 + 2 is #{40 + 2}"

#3


#4

#5

# LIMIT = 15

# def fib(first_num, second_num)
#   while first_num + second_num < LIMIT
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

#I changed limit to a constant. Other solutions: pass limit as an argument to fib (need to add an xtra parameter)
#Or make limit a local variable within the definition.

#6

34

#7

#yes "what gets passed to a method isn't the value of the object. Ruby passes the object_id
#of each argument to the method. The program does not use a copy of the hash, but the hash itself.

#8

#paper

#9

#no

#Medium 2

#1

a = "forty two"
b = "forty two"
c = a

# p a.object_id
# p b.object_id
# p c.object_id

#b's 'forty two' is a different 'forty two' than that of a and c. Though they seem to live close to
#each other in Ruby's memory.

#2

a = 42
b = 42
c = a

# puts a.object_id
# puts b.object_id
# puts c.object_id

#Prediction: all three are different since numbers are immutable.

#My prediction was wrong! All 3 42s are the same.

#3

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

#Prediction: My string will stay the same since the "+" operator is non-destructive.
#'rutabaga' will be added to my_array since the shovel operator is destructive.

#I'm vindicated!

#4

#Prediction - the string will be altered; the array will stay the same.

#5

# def not_so_tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ["rutabaga"]

#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = not_so_tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

#6

# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

def color_valid(color)
  color == "blue" || color == "green" 
end

#Hard

#1

#An error will be thrown.

#2

