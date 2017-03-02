#https://www.codewars.com/kata/529b418d533b76924600085d/solutions/ruby
#Convert PascalCase string into snake_case

def to_underscore(string)
  string.to_s.gsub(/([A-Z])/){'_'+$1}.downcase.match(/([a-z0-9].*)/){$1}
end

p to_underscore('TestController')
