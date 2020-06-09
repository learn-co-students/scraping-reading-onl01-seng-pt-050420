require 'nokogiri'
require 'open-uri'

#html = open("https://flatironschool.com/")

#doc = Nokogiri::HTML(html)

#<h1 class="headline-26OIBN">...</h1>

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
doc.css(".headline-26OIBN")