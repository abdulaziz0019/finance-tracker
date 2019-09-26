class Stock < ApplicationRecord
  require 'get_news'


def self.new_form_lookup(news_title)
  @main = GetNews::Main.new
  result = @main.get_news("#{news_title}", 20)
  return result
end

def self.search_google (title)
  request = GoogleCustomSearchApi.search(title)
  result =  request["items"].first
  last = result["link"]
  return last 
end
end
