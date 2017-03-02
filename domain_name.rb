#https://www.codewars.com/kata/extract-the-domain-name-from-a-url-1/train/ruby
#Extract the domain name from a URL

def domain_name(url)
  url.gsub(/www./,"").match(/\/\/(.*?)\./){$1}
  #url.match(/(http|https):\/\/(?:www\.)?(?<domain_name>.*?)\./){$1}
end

p domain_name("http://github.com/carbonfive/raygun")
p domain_name("http://www.zombie-bites.com")
p domain_name("https://www.cnet.com") 
