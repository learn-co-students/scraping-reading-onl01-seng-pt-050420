# require 'nokogiri'
# require 'open-uri'

# html = open("https://flatironschool.com/")

# doc = Nokogiri::HTML(html)
# doc.css(".headline-26OIBN").text


require 'nokogiri'
require 'open-uri'
 
doc = Nokogiri::HTML(open("https://flatironschool.com/"))
doc.css(".headline-26OIBN").text.strip
puts doc.css(".headline-26OIBN")

doc_two = Nokogiri::HTML(open("https://flatironschool.com/"))
doc_two.css(".buttonBlue-3yHkWz").text

doc.css(".headline-26OIBN").text
