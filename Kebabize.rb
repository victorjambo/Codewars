#https://www.codewars.com/kata/kebabize/train/ruby
#Modify the kebabize function so that it converts a camel case string into a kebab case.

def kebabize(str)
  str.split(/(?=[A-Z])/).join('-').gsub(/\d/,'').downcase.match(/(\w.*)/).to_a[0]
end

p kebabize('myCamelCasedString') #=> 'my-camel-cased-string'
