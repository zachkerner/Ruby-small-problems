#Easy I

#1

def repeat(str, num)
  str * num
end

def repeater(str, num)
  answer = ""
  num.times { answer += str }
  answer
end

def repeatLS(str, num)
  num.times do 
    puts str
  end
end

#2

def is_odd(num)
  num.abs % 2 == 1
end

#3

def list_of_digits(num)
  num.digits.reverse.join.to_i
end



#4

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv', "TRUCK"
]

def counter(array)
  counter_hash = {}
  array.map(&:downcase).each do |element|
    counter_hash[element] ? counter_hash[element] += 1 : counter_hash[element] = 1
  end
  counter_hash
end



#5

def reverse_sentence(sentence)
    return "" if sentence.strip == ""
    sentence.split().reverse.join(' ')
end

#6

def reverse_words(sentence)
  sentence.split.map(&:reverse).join(' ')
end

#7

def stringy(num)
  answer = ""
  (num/2).times { answer += "10"}
  return answer if num % 2 == 0
  return answer + "1" if num % 2 == 1
end

#8

def average(array)
  array.sum/array.size
end

#9

def sum(num)
  num.digits.sum
end

#10
def calculate_bonus(num, boo)
  if boo
    return num/2
  else
    return 0
  end
end

#Easy 2

#1

def teddy_age
  age = rand(20..200)
  "Teddy is #{age} years old today."
end

#2

# puts "Enter the length of the room in meters"
# length = gets.chomp.to_f
# puts "Enter the width of the room in meters"
# # width = gets.chomp.to_f
#puts "The area of the room is #{width * length} square meters (#{width * length * 10.7639} square feet"

#6

# num = 1

# while num <= 99
#   puts num
#   num += 2
# end

#7

# num = 2

# while num < 99
#   puts num
#   num += 2
# end

#8

# puts "Please enter an integer greater than 0"
# integer = gets.to_i
# puts "Do you want to add or sum with that integer? s for sum, a for add"
# choice = gets.chomp
# if choice == 's'
#   puts (0..integer).inject(:+)
# elsif choice == 'p'
#   puts (1..integer).inject(:*)
# else
#   puts "Invalid choice"
# end

#9

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

#Easy III

#1

# input_array = []
# puts "Enter a number"
# first = gets.to_i
# input_array << first
# puts "Enter a number"
# second = gets.to_i
# input_array << second
# puts "Enter a number"
# third = gets.to_i
# input_array << third
# puts "Enter a final number"
# final = gets.to_i

# if input_array.include?(final)
#   puts "#{final} is part of the array #{input_array}."
# else
#   puts "It is not part of the array"
# end


#2

# puts "Enter a first number"
# first = gets.to_i
# puts "Enter a second number"
# second = gets.to_i

# puts first + second
# puts first - second
# puts first * second
# puts first / second
# puts first % second
# puts first ** second

#3

# puts "Enter a word or a short sentence."
# short_sentence = gets.chomp

# puts "There are #{short_sentence.size} characters in '#{short_sentence}'"

#6



# def xor?(arg1, arg2)
#   if arg1 == true && arg2 == true
#     return false
#   elsif arg1 == false && arg2 == false
#     return false
#   else 
#     return true
#   end
# end

#7

# def oddities(array)
#   array.select.with_index{ |elem, index| index % 2 == 0}
# end

#8

# def palindrome?(word)
#   word == word.reverse
# end

#9

# def real_palindrome?(word)
#   wordArr = word.split('').select{ |char| char.match(/[a-zA-Z0-9]/)}.join('')
#   wordArr.downcase == wordArr.downcase.reverse
# end

#10

# def palindromic_number?(number)
#   arr = [number.to_s, number.to_s.reverse]
#   p arr[0] == arr[1]

# end

#Easy 4

#1

# def short_long_short(str1, str2)
#   return str1 + str2 + str1 if str1.length < str2.length
#   return str2 + str1 + str2 if str1.length > str2.length
# end

#3/4

def leap_year?(year)
  if year < 1752
    p true if year % 4 == 0
  else
    p true if (year % 4 == 0 && year % 400 == 0) || year % 100 != 0
  end
end

#6

# def running_total(array)
#   sum = 0
#   array.map{ |elem| sum += elem}
# end

#7

def string_to_integer(string)
  
end



#Easy 5

#1

def ascii_value(str)
  sum = 0
  str.chars.each {|char| sum += char.ord}
  puts sum
end

#2

def time_of_day(num)
  num = num % 1440
  hours = (num / 60).to_s
  minutes = (num % 60).to_s
  "#{hours.rjust(2, "0")}:#{minutes.rjust(2,"0")}"
end

#3

def after_midnight(time)
  hours = time.split(":")[0].to_i * 60
  minutes = time.split(":")[1].to_i
  (hours + minutes) % 1440
end

def before_midnight(time)
  hours = time.split(":")[0].to_i * 60
  minutes = time.split(":")[1].to_i
  return 0 if time == "00:00" || time == "24:00"
  1440 - ((hours + minutes) % 1440)
end

#4

def swap(words)
  answer = words.split(' ').map do |word|
    if word.size > 1
      first = word[0]
      last = word[-1]
      word = word.slice(1..-2)
      last << word << first
    else
      word
    end
  end
  answer.join(' ')
end

#5

def cleanup(sentence)
  sentence = sentence.gsub(/\W/, ' ')
  while sentence.match('  ')
    sentence.gsub!('  ', ' ')
  end
  sentence
end

#6/7

def word_sizes(sentence)
  answer = {}
  sentence.split(' ').map{ |word| word.gsub(/[^a-z^A-Z]/, "").size}.each do |length|
    answer[length] ? answer[length] += 1 : answer[length] = 1
  end
  p answer
end

#9

def crunch(str)
  answer = ""
  str.chars.each do |char|
    answer += char if answer[-1] != char
  end
  answer
end


#10

def print_in_box(str)
  puts "+" + "-" * (str.size + 2) + "+"
  puts "|" + " " * (str.size + 2) + "|"
  puts "| " + str + " |"
  puts "|" + " " * (str.size + 2 )+ "|"
  puts "+" + "-" * (str.size + 2) + "+"
end

#11

#Easy 6

#2

def remove_vowels(arr)
  arr.map{|str| str.gsub(/[aeiouAEIOU]/, "")}
end

#3

def find_fibonacci_index_by_length(num)
  fib_index = []
  counter = 1
  while fib_index.last.to_s.size < num
    def generate_fib(n)
      if n < 2 
        return n
      else 
        generate_fib(n-1) + generate_fib(n-2)
      end
    end
    fib_index.push(generate_fib(counter))
    counter += 1
  end
  fib_index.find_index(fib_index.last) + 1
end

#4

def reverse_manual(arr)
  (arr.size - 1).times do |i|
    last = arr.pop
    arr.insert(i, last)
  end
  arr
end


#5


def reverse_manual2(arr)
  (arr.size - 1).times do |i|
    first = arr.shift
    arr.insert(arr.size - i, first)
  end
  arr
end

def reverse_LS(arr)
  left_index = 0
  right_index = -1

  while left_index < arr.size/2
    arr[left_index], arr[right_index] = arr[right_index], arr[left_index]
    right_index -= 1
    left_index += 1
  end

  arr
end






#6

def merge(arr1, arr2)
  (arr1 << arr2).flatten.uniq
end

#7

def halvsies(arr)
  half = arr.size.round/2
  [[arr.slice(0...half)], [arr.slice(half..-1)]].flatten(1)
end

#8

def find_dup(arr)
  hash = {}
  arr.each do |i|
    hash[i] ? hash[i] += 1 : hash[i] = 1
  end
  hash.select{|k, v| hash[k] == 2}.keys[0]
end

#9

def include?(arr, thing)
  answer = arr.select{ |i| i == thing}
  answer.size > 0
end

#10

def triangle(num)
  num.times{|i| puts " " * (num - (i + 1))+ "*" * (i + 1)}
end

#Easy 7

#1

def interleave(arr1, arr2)
  answer = []
  counter = 0

  loop do
    break if counter == arr1.size
    answer.push(arr1[counter], arr2[counter])
    counter += 1
  end
  answer
end

def interleave_zip(arr1, arr2)
  arr1.zip(arr2).flatten
end


#2

def letter_case_count(str)
  hsh = {lowercase: 0, uppercase: 0, neither: 0}

  str.chars.each do |letter|
    if letter.match(/[a-z]/)
      hsh[:lowercase] += 1
    elsif letter.match(/[A-Z]/)
      hsh[:uppercase] += 1
    else
      hsh[:neither] += 1
    end
  end
  hsh
end




letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

#3

def word_cap(str)
  str.split.map!{|word| word.capitalize!}.join(" ")
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

#4

def swapcase(str)
 answer =  str.split('').map! do |char|
    if char.match(/[a-z]/)
      char = char.upcase
    elsif char.match(/[A-Z]/)
      char = char.downcase
    else
      char
    end
  end
  answer.join
end

swapcase('FiCk yOur')

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#5

# def staggered_case(str)
#   str = str.chars.each_with_index.map do |letter, index|
#     if index.even?
#       letter = letter.upcase
#     else
#       letter = letter.downcase
#     end
#   end
#   str.join
# end




#6

def staggered_case(str)
  parallel_arr = []
  counter = 0
  str.chars.each do |char|
    
    if char.match(/[a-zA-Z]/)
      parallel_arr.push(counter)
      counter += 1
    else
      parallel_arr.push(nil)
    end
  end
  
  answer = str.chars.each_with_index.map do |char, index|
    if parallel_arr[index] && parallel_arr[index].even?
      char = char.upcase
    elsif parallel_arr[index] && parallel_arr[index].odd?
      char = char.downcase
    else
      char
    end
  end
  answer.join
end

#7

def show_multiplicative_average(arr)
  answer = (arr.inject(:*).to_f/arr.size).round(3)
  format("%.3f", answer)
end

#8

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map!{|arr| arr.inject(:*)}
end

#9

# def multiply_all_pairs(arr1, arr2)
#   answer = []
#   counter_outer = 0

#   loop do
#     break if counter_outer == arr1.size
#     counter_inner = 0
#     loop do
#       break if counter_inner == arr2.size
#       answer.push(arr1[counter_outer] * arr2[counter_inner])
#       counter_inner += 1
#     end
#     counter_outer += 1
#   end
#   answer
# end

def multiply_all_pairs(arr1, arr2)
  products = []
  arr1.each do |item1|
    arr2.each do |item2|
      products.push(item1 * item2)
    end
  end
  products.sort
end


#10

def penultimate(sentence)
  sentence.split[-2]
end


#Easy 9

#1

# def sum_of_sums(arr)
#   sum = []
#   slicer = 1

#   loop do
#     sum << arr.slice(0...slicer)
#     break if slicer == arr.size
#     slicer += 1
#   end
#   sum.flatten.inject(:+)
# end

def sum_of_sums(arr)
  sum = 0
  accumulator = 0

  arr.each do |num|
    accumulator += num
    sum += accumulator
  end
  sum
end



#3

def leading_substrings(str)
  sum = []
  accumulator = ""

  str.chars.each do |char|
    accumulator += char
    sum << accumulator
  end
  sum
end

#4

def substrings(str)
  ans = []

  str.chars.each_with_index do |char, index|
    j = index + 1
    loop do
      ans << str.slice(index...j)
      break if j == str.size
      j += 1
    end
  end
  ans
end

#5

def palindromes(str)
  sub_strings = []

  str.chars.each_with_index do |char, i|
    j = i + 1
    loop do
      sub_strings << str.slice(i...j)
      break if j == str.size
      j += 1
    end
  end
  ans = sub_strings.select do |sub|
    sub == sub.reverse && sub.size > 1
  end
  ans
end

#6

def fizzbuzz(num)
  ans = []
  (1..num).to_a.each do |num|
    if num % 3 == 0 && num % 5 == 0
      ans.push("FizzBuzz")
    elsif num % 3 == 0
      ans.push("Fizz")
    elsif num % 5 == 0
      ans.push("Buzz")
    else
      ans.push(num)
    end
  end
  ans
end

#7

def repeater(str)
  ans = ""

  str.chars.each do |char|
    ans += char * 2
  end
  ans
end

#8

def double_consonants(str)
  ans = ""

  str.chars.each do |char|
    if char.match(/[aeiouAEIOU0-9]/) || char.match(" ") || char.match(/[[:punct:]]+/)
      ans += char
    else 
      ans += char * 2
    end
  end
ans
end

#9
def reversed_number(num)
  num.to_s.reverse.to_i
end



#10

def center_of(str)
  str.size % 2 == 1 ? str[(str.size/2).floor] : str[str.size/2 - 1] + str[str.size/2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
pcenter_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'




