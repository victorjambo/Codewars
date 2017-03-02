#https://www.codewars.com/kata/what-the-biggest-search-keys/train/ruby
#What is the biggest search keys

def the_biggest_search_keys(*args)
  hash = {}
  args.sort.each do |word|
    hash[word] = word.length
  end
  a = hash.sort_by(&:length)
  max_length = hash.values.max
  a.delete_if { |x| x[1] != max_length }
  b= a.flat_map{|x|x}
  b.delete(max_length)
  b.map { |i| "'" + i.to_s + "'" }.join(", ")
end

p the_biggest_search_keys('coding', 'sorting', 'tryruby') #=>  "'sorting', 'tryruby'"
