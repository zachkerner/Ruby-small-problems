#Problems that gave me difficulty
#Problems that I could not solve instantly

#1 - 6

#3 - 7

#4 - leap year, 5, 6


#easy 1

#1

def repeat(str, int)
  int.times {puts str}
end

#2

def is_odd(int)
  int.abs % 2 == 1
end

#3

def digits_list(num)
  num.to_s.split('').map(&:to_i)
end

#4

def counter(arr)
  answer = {}
  arr.each do |elem|
    answer[elem] ? answer[elem] += 1 : answer[elem] = 1
  end
  answer
end

#5

def reverse_sentence(str)
  str.split(' ').reverse.join(' ')
end

#6

def reverse_part2(str)
  answer = str.split(' ').map do |word|
    if word.size >= 5
      word.reverse
    else 
      word
    end
  end
  answer.join(' ')
end

#7

def string(num)
  answer = ""
  num.times do |i|
    if (i + 1) % 2 == 1
      answer << "1"
    else
      answer << "0"
    end
  end
  answer
end

#8

def average(arr)
  arr.inject(&:*).to_f/arr.size
end

#9

def sum(num)
  num.to_s.split('').map(&:to_i).inject(&:+)
end

#10

def bonus(num, bool)
  bool ? num/2 : 0
end

#2

#6

# 1.upto(99) { |i| puts i if i.odd?}

#7

# 2.upto(98) { |i| puts i if i.even?}



#3

#6

def xor?(bool1, bool2)
  if bool1 && bool2
    return false
  elsif !bool1 && !bool2
    return false
  else 
    return true
  end
end

#7

def oddities(arr)
  arr.select!.with_index { |e,i| i % 2 == 1}
end

#8

def palindrome?(str)
  str == str.reverse
end

#9

def real_palindrome?(str)
  ans = str.downcase.gsub(/[^a-z0-9]/, "")
  ans.reverse == ans
end

#10

def palindromic_number?(num)
  num.to_s.reverse.to_i == num
end

#4

#1

def short_long_short(str1, str2)
  str1.size > str2.size ? str2 + str1 + str2 : str1 + str2 + str1
end

#2

def leap_year?(year)
  year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
end

#5

def running_total(arr)
  answer = []
  acc = 0
  arr.each do |e|
    acc = acc + e
    answer.push(acc)
  end
  answer
end

#6/7

def string_to_integer(str)
  num_hash = {
    "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
    "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0
  }

  sign = ""

  if str[0] == "-" || str[0] == "+"
    sign = str[0]
    str = str[1..-1]
  end

  conversion_array = str.split('').map do |char|
    char = num_hash[char]
  end
  
  value = 0
  conversion_array.each_with_index { |num, i| value += num * (10 ** (conversion_array.size - (i + 1))) }
  
  value
end


#8/9

def integer_to_string(num)
  return "0" if num == 0
  
  num_hash = {
    "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
    "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0
  }

  sign = ""
  if num < 0 
    sign = "-"
  else
    sign = "+"
  end

  new_num = (num).abs
  
  str_arr = []
  
  digit_array = new_num.digits
  digit_array.each do |digit|
    num_hash.each do |key, value|
      if digit == value
        str_arr.push(key)
      end
    end
  end
  
  answer = str_arr.join('').reverse

  if num > 0
    return "+" + answer
  else
    return "-" + answer
  end
end

#5

#1

def ascii_value(str)
  sum = 0
  str.chars.each do |char|
    sum += char.ord
  end
  sum
end

#4

def swap(str)
  return str if str.size < 2

  answer = str.split(' ').map do |word|
      if word.size > 1
        first = word[0]
        last = word[-1]
        word = last + word.slice(1...-1) + first
      else
        word
      end
  end

  answer.join(' ')


end

#5

def cleanup(str)
  answer = str.gsub(/\W+/i, " ")
  answer
end

#6

def word_sizes(str)
  answer = {}

  str.split(" ").each do |word|
    answer[word.gsub(/\W/, "").size] ? answer[word.gsub(/\W/, "").size] += 1 : answer[word.gsub(/\W/, "").size] = 1
  end
  answer
end



#8

NUM_HASH = {
  0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six",
  7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve",
  13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
  18 => "eighteen", 19 => "nineteen"
}

def alpha_numbers(arr)

  answer = arr.map do |num|
    NUM_HASH[num]
  end

  answer.sort
end

#9

def crunch(str)
  answer = ""
  
  str.chars.each do |char|
    if answer[-1] != char
      answer += char
    end
  end
  answer
end

#10

def print_in_box(str)
  puts "+" + "-" * (str.size + 2) + "+"
  puts "|" + " " * (str.size + 2) + "|"
  puts "| " + str + " |"
  puts "|" + " " * (str.size + 2) + "|"
  puts "+" + "-" * (str.size + 2) + "+"
end


#5

#1

def remove_vowels(arr)
  answer = arr.map do |word|
    word.gsub(/[aeiou]/i, "")
  end

  answer.join(' ')
end

#2

def fib(n)
  first, last = [1,1]

  3.upto(n) do
    first, last = [last, last + first]
  end

  last
end


def find_fibonacci_index_by_length(num_of_digits)
  fib_array = []

  n = 1
  loop do
    fib_array.push(fib(n))
    n += 1
    break if fib_array.last.to_s.size == num_of_digits
  end
  fib_array.find_index(fib_array.last) + 1
end

#3

def natural_reverse(array)
  left_index = 0
  right_index = -1

  while left_index < array.size/2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

p natural_reverse([1,2,3,4])



















