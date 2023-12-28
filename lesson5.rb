#Practice Problems

#1

#arr = ['10', '11', '9', '7', '8'].map!{|num| num.to_i}.sort!.reverse!


# arr = ['10', '11', '9', '7', '8']

# ans = arr.sort do |a, b|
#   b.to_i <=> a.to_i
# end

#2

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

 books_sorted = books.sort_by do |hsh|
  hsh[:title]
end

#3

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]] 
arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1["b"][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].keys[0]

#4

arr1 = [1, [2, 3], 4]
arr1[1][1] = 4
arr1

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4


hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2] = 4
hsh1

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4

#5


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

ages = []

munsters.each do |k, v|
  ages.push(v["age"])
end

ages.inject(:+)

#6

# munsters.each do |k, v|
#   puts "#{k}, #{v["age"]}, #{v["gender"]}"
# end

#8

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = ""

hsh.each do |k, v|
  v.each do |word|
    word.chars.each do |letter|
      if letter.match(/[aeiou]/)
        vowels += letter
      end
    end
  end
end

# 9

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.each do |sub_arr|
  sub_arr.sort! do |a, b|
    b <=> a
  end
end

#10
ans = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  hsh.each {|k, v| hsh[k] = hsh[k] + 1}
end


#11

arr = [[2], [3, 5, 7], [9], [11, 13, 15]].map do |subarr|
  subarr.select{|num| num % 3 == 0}
end

#12

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = {}

arr.each do |item|
  hsh[item[0]] = item[1]
end

#13


arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

arr.sort_by do |subarr|
  subarr.select{ |num| num.odd?}
end

#14


hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

ans = []

hsh.each do |k, v|
  if v[:type] == "fruit"
    ans.push(v[:colors].each{|color| color.upcase!})
  elsif v[:type] == "vegetable"
    ans.push(v[:size])
  end
end
#15


arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

ans = arr.select do |hsh|
  hsh.all? do |k, v|
    v.all? do |elem|
      elem.even?
    end
  end
end




#16

def uuid
  x = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
  ans = ""

  36.times do |i|
    if i == 8 || i == 13 || i == 18 || i == 23
      ans += "-"
    else
      ans += x.sample
    end
  end
  ans

  
end

arr = ["1", "2", "13"]
p "1" <=> "2"
