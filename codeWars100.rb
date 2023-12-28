def powers_of_two(n)
  answer = []
  
  (n+1).times { |i| answer.push(2**i)}

  answer
end

def nearest_sq(n)
  Math.sqrt(n).round ** 2
end

def merge_arrays(arr1, arr2)
  (arr1 | arr2).uniq.sort
end

arr1 = [1,2,3,4]
arr2 = [2,5,6,7]

def disemvowel(str)
  str.gsub(/[aeiou]/i, "")
end


def square_digits num
  arr = num.digits.reverse.map do |dig|
    dig * dig
  end
 arr.join.to_i

end

def accum(str)
	answer = ''
  strArr = str.downcase.chars
  (str.length).times { |i| answer += strArr[i].upcase + ((strArr[i] * i)) + "-"}
  answer[0...-1]
end

str = '123456'

# def maskify(cc)
#   return cc if cc.size <= 4
#    cc[0..-4].gsub(/[0-9]/, "#") + cc[-4..]
# end

def maskify(cc)
  return cc if cc.size <=4
  cc[0..-4]
end

scrabble = {
  A: 1, E: 1, I: 1, O: 1, U: 1, L: 1, N: 1, R: 1, S: 1, T: 1,
  D: 2, G: 2,
  B: 3, C: 3, M: 3, P: 3,
  F: 4, H:4, V:4, W:4, Y:4,
  K:5, 
  J:8, X:8,
  Q: 10, Z: 10
}

def scrabble_score(str)
  sum = 0
  str.upcase.chars.each do |char|
    sum += scrabble[:char]
  end
  sum 
end

require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)