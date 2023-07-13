require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

PAGE_URL = "https://coinmarketcap.com/all/views/all/"

@page = Nokogiri::HTML(URI.open(PAGE_URL))


def crypto_symbol_method
  html_elements_crypto_symbols = @page.xpath('//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[2]/div/a[1]')
  
  crypto_symbol_array = []
  html_elements_crypto_symbols.each do |element|
    crypto_symbol_array << element.text # element.text correspond au final à ma crypto_symbol
  end
  return crypto_symbol_array
end

def crypto_price_method
  html_elements_crypto_prices = @page.xpath('//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/div/a/span')
  
  crypto_price_array = []
  html_elements_crypto_prices.each do |element|
    crypto_price_array << element.text # element.text correspond au final à ma crypto_price
  end
  return crypto_price_array
end

def array_hashes_together
  crypto_symbol_array = crypto_symbol_method
  crypto_price_array = crypto_price_method

  result_array = [] #my array that will content all my mini-hashs

  if crypto_symbol_array.length == crypto_price_array.length
    crypto_symbol_array.each_index do |i|
      mini_hash = {
        crypto_symbol_array[i] =>
        crypto_price_array[i]
      }
      result_array << mini_hash
    end
  end
  return result_array
end