class HomeController < ApplicationController
  require 'json'
  def index
    @response = HTTParty.get('https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json?api_key=c8ee991950134f88add20e1eab83a749')

    @dom = @response.parsed_response["results"]["books"][0]["buy_links"][0]["name"]
  end

end
