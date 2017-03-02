#https://www.codewars.com/kata/find-duplicates-with-string-dot-match/train/ruby
#Find Duplicates with String.match

def num_duplicates(message)
  arr = message.split(' ').map(&:downcase)
  arr2 = []
  arr.each{|x|arr2 << x.match(/^(\w+)/)[0]}
  arr2
  
  hash = Hash.new(0)
  arr2.each do |word|
    hash[word] += 1
  end
  hash.values.count(hash.values.max)
end

str = 'Kata make the brain grow strong. The brain like kata.'
p num_duplicates(str) #=>  3
