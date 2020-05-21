require 'open-uri'

class GetRequester 
  attr_accessor :url
  
  def initialize(url)
    @url = url
  end 
  
  def get_response_body 
    uri = URI.parse(self.url)
    uri.open.string
  end 
end 