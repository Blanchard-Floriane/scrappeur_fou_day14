require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

PAGE_URL = "http://annuaire-des-mairies.com/val-d-oise.html"

@page = Nokogiri::HTML(URI.open(PAGE_URL))


def get_townhall_email(townhall_url) do
  
end

def get_townhall_urls do
  
end