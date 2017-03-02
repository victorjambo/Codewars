#https://www.codewars.com/kata/even-or-odd/train/ruby
#Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers

def even_or_odd(number)
  number.even? ? "Even" : "Odd"
end

p even_or_odd(2) #=> "Even"
