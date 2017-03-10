def palindrome?(num)
  mun = num.to_s.chars.reverse.join.to_i
  is_prime?(mun) if num != mun
end

def is_prime?(num)
  return false if num <= 1
  Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
  true
end

def backwardsPrime(start, stop)
  [*start..stop].select { |x| 
    is_prime?(x) && palindrome?(x)
  }
end

p backwardsPrime(7000,7100) #=>[7027, 7043, 7057]
