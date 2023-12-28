#

def likes(names)
  case names.size
    when 0
      "no one likes this"
    when 1
      "#{names[0]} likes this"
    when 2
      "#{names[0]} and #{names[1]} like this"
    when 3
      "#{names[0]}, #{names[1]} and #{names[2]} like this"
    else
      "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
  end
end



def longest_consec(strarr, k)
  return "" if strarr.empty?
  return "" if k == 0
  return "" if k > strarr.size
  concat_array = []
  strarr.each_with_index do |word, i|
    if i <= strarr.size - k
      concat = ""
      j = 0
      while (j < k)
        concat += strarr[i + j]
        j += 1
      end
      concat_array << concat
    end
  end
  array_length_max = concat_array.map { |word| word.size}.max
  concat_array[concat_array.find_index { |word| word.size == array_length_max}]
end

array = [2,3,4,5]

#I want to make pairs [2 * 3, 2 * 4, 2 * 5, 2 * 6, 3 * 4, 3 * 5 ... 5 * 6]

pairs = []

answer = []
word = 'abcdefghijklmnop'

word.split('').each_cons(3) { |i| answer.push(i)}

#Easy 9

#1

def greetings(arr, hash)
  answer = ""
  arr.each { |name| answer += "#{name} "}
  answer = answer.slice(0...-1) + "!"

  "Hello #{answer} Nice to have a #{hash[:title]} #{hash[:occupation]} around here!"
end

#2

def twice(num)
  return num * 2 if num.to_s.size % 2 == 1
  
  half = ((num.to_s.size)/2) - 1
  left_half = num.to_s.slice(0..half)
  right_half = num.to_s.slice(half + 1..-1)
  
  right_half == left_half ? num : num * 2
end

def negative(num)
  num < 0 ? num : -num
end

def sequence(num)
  answer = []
  (num).times { |i| answer.push(i + 1) }
  answer
end

def word_lengths(str)
  str.split.map { |word| word + " " + word.size.to_s}
end

def sequence(size, multi)
  answer = []
  size.times { |i| answer.push((i + 1) * multi)}
  answer
end

def buy_fruit(array)
  answer = []
  array.each { |sub_array| sub_array[1].times { |i| answer.push(sub_array[0])} }
  answer
end

def anagrams(arr)
  answer = []
  arr.each do |word|
    grouped = []
    j = 0
    loop do
      if word.split('').sort == arr[j].split('').sort
        grouped << arr[j]
        grouped << word
      end
      j += 1
      break if j == arr.size
    end
    answer << grouped.uniq
  end
  answer.map!(&:sort).uniq
end


words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#Medium 1

#1

def rotate_array(arr, k)
  answer = []
  arr.each_with_index do |e, i|
    if i != 0
      answer.push(e)
    end
  end
  answer << arr[0]
end

def rotate_arr(arr)
  arr[1..-1] + [arr[0]]
end

#2

def rotate_rightmost_digits(num, rot)
  return num if rot == 1

  arr_num = num.to_s.split('')
  digit = arr_num[-rot]
  
  arr_num.delete(digit)

  arr_num.push(digit).join('').to_i
end


#4 1000 lights problem

# def lights(n)
#   lights_array = (2..n).to_a
#   answer = [1]
#   lights_array.each do |num|
#     k = 0
#     j = 1
#     loop do
#       k += 1 if num % j == 0
#       j += 1
#       break if j > num
#     end
#     if k % 2 == 1
#       answer.push(num)
#     end
#   end
#   answer
# end

#5 diamonds


# j = 4
# i = 1
# loop do
#   puts j
#   j -= i
#   if j == 0
#     i = -i
#   end
#   break if j == 5
# end

  
def diamondI(n)
  j = (n/2).floor
  i = 1
  k = 1

  loop do
    puts " " * j + "*" * k + " " * j
    j -= i 
    k += i * 2
    if j == 0
      i = -i
    end
    break if j > (n/2).ceil
  end
end

def diamondII(n)
  j = (n/2).floor #outside space
  k = 1 #inside space
  rows = 1 #rows
  i = 1 #polarity
 

  loop do
    if rows == 1 || rows == n
      puts " " * j + "*" + " " * j
    else 
      puts " " * j + "*" + " " * k + "*"
    end
    k += i * 2 if rows != 1
    j -= i 
    i = -i if j == 0
    rows += 1
    break if rows > n
  end
end

def word_to_digit(str)
  text_num = { "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5",
                "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9", "zero" => "0"}

    answer = str.split(' ').map! do |word|
      if text_num[word]
        text_num[word]
      elsif text_num[word.slice(0...-1)]
        text_num[word.slice(0...-1)] + "."
      else
        word
      end
    end
  answer.join(' ')
end

def fib_rec(n)
  return 1 if n <= 2

  fib_rec(n-2) + fib_rec(n-1)
end

def fib_proc(n)
  first, last = [1,1]

  3.upto(n) do
    first, last = [last, first + last]
  end

  last
end




#Medium 2

#1

def longest_sentence(text)
  sentences = text.split(/\.|\?|!/)
  words = sentences.map{ |sentence| sentence.split(' ')}
  max = 0
  index_of_longest = 0
  words.each_with_index do |word_sentence, index|
    if word_sentence.size > max
      max = word_sentence.size
      index_of_longest = index
    end
  end
  [max, words[index_of_longest].join(' ')]

end

#2

def block_word?(word)
  return false if word.upcase.split("").uniq != word.upcase.split("")
  
  block_hash = {
    1 => ["B", "O"], 2 => ["X", "K"], 3 => ["D", "Q"], 4 => ["C", "P"],
    5 => ["N", "A"], 6 => ["G", "T"], 7 => ["R", "E"], 8 => ["F", "S"],
    9 => ["J", "W"], 10 => ["H", "U"], 11 => ["V", "I"], 12 => ["L", "Y"],
    13 => ["Z", "M"]  
  }

  word = word.upcase.split("")
  answer = []

  word.each do |letter|
    block_hash.each do |k, v|
      if block_hash[k].include?(letter)
        answer.push(k)
      end
    end
  end
  answer.uniq == answer
end

animal_array = ["caterpillar", "cat"]

LOWER = ("a"..."z").to_a
UPPER = ("A"..."Z").to_a


def letter_percentages(str)
  answer = {lowercase: 0, uppercase: 0, neither: 0}

  str.split('').each do |ltr|
    if LOWER.include?(ltr)
      answer[:lowercase] += 1
    elsif UPPER.include?(ltr)
      answer[:uppercase] += 1
    else
      answer[:neither] += 1
    end
  end
  answer = answer.map do |k,v|
    
  end
  answer
end

#4 

def balanced?(str)
  chars = str.chars
  toggle = 0
  chars.each do |ltr|
    break if toggle < 0
    if ltr == "("
      toggle += 1
    elsif ltr == ")"
      toggle -= 1
    end
  end
  toggle == 0
end


#5

def triangle(side1, side2, side3)
  return :invalid if side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1
  if side1 == side2 && side2 == side3
    return :equilateral
  elsif side1 == side2 || side2 == side3 || side1 == side3
    return :isosceles
  else 
    return :scalene
  end
end

def triangle(ang1, ang2, ang3)
  return :invalid if ang1 + ang2 + ang3 != 180

  if %w(ang1 ang2 ang3).include?(90)
    return :right
  elsif ang1 > 90 || ang2 > 90 || ang3 > 90
    return :obtuse
  else
    return :acute
  end
end

#6 unlucky days
require 'date'

def friday_13th(year)
  counter = 0

  n = 1
  loop do
    if Date.new(year, n, 13).friday?
      counter += 1
    end
    n += 1
    break if n == 13
  end

  counter
end



def featured(num)
  answer = 0

  n = num
  loop do
    n += 1
    if n % 2 == 1 && n % 7 == 0 && n.to_s.split('').uniq == n.to_s.split('')
      answer = n
      break
    end
   
    break if answer != 0
  end
  answer
end


def sum_square_difference(num)
  sum_of_squares = 0

  1.upto(num) { |i| sum_of_squares += i * i }

  square_of_sum = 0

  1.upto(num) { |j| square_of_sum += j}

  square_of_sum * square_of_sum - sum_of_squares
end

def bubble_sort(arr)
  swapped = false
  
  while !swapped
    counter = 0
    (arr.size - 1).times do |i|
      if arr[i] > arr[i + 1]
      arr[i], arr[i+1] = arr[i + 1], arr[i]
      counter += 1
      end
    end
    swapped = true if counter == 0
  end
  arr
end



#Advanced

#Transpose 3x3 matrix

def transpose(arr)

  new_matrix = [[], [], []]

  i = 0
  loop do
    j = 0
    loop do
      new_matrix[i].push(arr[j][i])
      j += 1
      break if j == 3
    end
    i += 1
    break if i == 3
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

p transpose(matrix)


