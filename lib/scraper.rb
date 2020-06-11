require 'nokogiri'
require 'open-uri'

# html = open("https://flatironschool.com/")

# Nokogiri::HTML(html)
# doc = Nokogiri::HTML(html)
doc = Nokogiri::HTML(open("https://flatironschool.com/"))
puts doc.css(".headline-26OIBN")