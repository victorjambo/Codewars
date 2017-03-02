#https://www.codewars.com/kata/next-bigger-number-with-the-same-digits/train/ruby
#You have to create a function that takes a positive integer number and returns the next bigger number formed by the same digits:

def next_bigger n
  max = maxed n
  (n+1..max).each { |i| return i if max == maxed(i) }
  -1
end

def maxed n
  n.to_s.split('').sort.reverse.join.to_i
end

p next_bigger 513 #=> 531
