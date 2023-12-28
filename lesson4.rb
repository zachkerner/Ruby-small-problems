produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  counter = 0
  hash.keys
  answer = {}

  loop do
    break if counter == hash.keys.size
    current_key = hash.keys[counter]
    current_value = hash[current_key]

    answer[current_key] = current_value if current_value == "Fruit"

    counter += 1
   
  end
  answer
end


def double_numbers(arr)
  counter = 0
  loop do
    break if counter == arr.size

    arr[counter] *= 2

    counter += 1
  end
  arr
end


def double_odd_index(arr)
  answer = []
  counter = 1

  loop do
    break if counter > arr.size

    answer.push(arr[counter] * 2)

    counter += 2
  end
  answer
end

def multiply_nums(arr, int)
  counter = 0

  loop do
    break if counter == arr.size

    arr[counter] = arr[counter] * int
    counter += 1
  end
  arr
end

def select_letter(str, letter)
  counter = 0
  answer = ""

  loop do
    break if counter == str.size
    answer << str[counter] if str[counter] == letter
    counter += 1
  end
  answer
end

part = (1..10).partition { |i| i.even?}



#Practice Problems 1

#1

#Prediction: []

#Result => [1,2,3] Why? The last line of Ruby methods is returned if no explicit return value is provided.
#The last line of the select method block, 'hi', always evalutes to true.

#2

#Prediction: the count method counts the number of times the block evalutes to true and returns that number

#Correct

#3

#Reject is the opposite of select, returning all elements that evaluate as false or nil.

#Here it should return [1,2,3] since puts evalutes to nil.

#4

#Prediction: {"a" => 'ant', "b" => "bear", "c" => "cat"}

#5

#hash.shift returns [:a, "ant"]
#hash is mutated to {b: "bear"}

#6

#The answer is 1. .pop returns the last element. Its size will always be 1.

#wrong! Since it returns a string. The size of the string is its length. It does not return
#['caterpillar'] but rather 'caterpillar'.

#7

#The block returns true-false-true on successive iterations.
#any? returns true.

#8

#I don't believe it is destructive. (Not easy to tell from the docs)
#It returns the first x number of elements in the form of a new array.

#9

#Prediction: map returns [nil, 'bear']

#10

#Prediction: map returns [1,nil,nil]

#Additional Practice

#1

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flint_hash = {}
flintstones.each_with_index { |e, i| flint_hash[e] = i}

#2

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

sum = 0 
ages.each { |k, v| sum += v}

ages.values.inject(:+)

#3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |k, v| v > 100}

#4

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.min

#5

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.find_index { |elem| elem.start_with?("Be")}

#6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |elem| elem = elem[0..2]}

#7

statement = "The Flintstones Rock"

answer = {}
statement.split('').each do |letter|
  if letter != " "
    answer[letter] ? answer[letter] += 1 : answer[letter] = 1
  end
end

#8

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

#Prediction: => 1, 4 
#Correction: shift(1) returns an array of only one element. I believed it returned an array of 2.


# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end
#Prediction: => 1, 2

#9

words = "the flintstones rock"

words.split.map! { |word| word.capitalize!}.join(' ')

#10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k, v|
  if v["age"] < 18
    v["age group"] = "kid"
  elsif v["age"].between?(18, 67)
    v["age group"] = "adult"
  else
    v["age group"] = "senior"
  end
end

def snake(str)
  words = str.split
  current_word = 1

  loop do
    words[current_word].downcase!

    current_word += 1
    break if current_word >= words.size
  end

  words.join('_')
end

snake('Nevermind i dont know how to do this')

  def star_method(stars)
    arr = []
    counter = 0
  
    until counter == stars.size do
      arr << stars[counter][0, 3]
  
      counter += 1
    end
    arr
  end

  num = 7
  
answer = if num > 3
  puts 5
end

