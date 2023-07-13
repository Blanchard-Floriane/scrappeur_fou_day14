require 'rubygems'
require 'nokogiri'
require 'open-uri'

PAGE_URL = "http://ruby.bastardsbook.com/files/hello-webpage.html"

# set URL to point to where the page exists
page = Nokogiri::HTML(URI.open(PAGE_URL))
links = page.css("a")
puts links.length   # => 6
puts links[0].text   # => Click here
puts links[0]["href"] # => http://www.google.com
