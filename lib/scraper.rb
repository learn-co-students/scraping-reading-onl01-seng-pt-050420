#require 'nokogiri'
#require 'open-uri'

#html = open("https://flatironschool.com/")

#require 'nokogiri'
#require 'open-uri'
 
#doc = Nokogiri::HTML(open("https://flatironschool.com/"))
#doc.css(".headline-26OIBN").text

#require 'nokogiri'
#require 'open-uri'
 
#html = open("https://flatironschool.com/")
#doc = Nokogiri::HTML(html)
 
#doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")


require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper

  def get_page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
  end

  def get_courses
    self.get_page.css(".post")
  end

  def make_courses
    self.get_courses.each do |post|
      course = Course.new
      course.title = post.css("h2").text
      course.schedule = post.css(".date").text
      course.description = post.css("p").text
    end
  end

  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

end