#https://www.codewars.com/kata/duplicate-encoder/train/ruby
#convert a string to a new string where each character in the  new string is '(' if that character appears more than once then ')'

def duplicate_encode(word)
  word.downcase.chars.map{ |xter| word.downcase.chars.count(xter) == 1 ? "(" : ")"}.join
end

p duplicate_encode("Success") #=> ")())())"
