require 'open-uri'
require 'json'
require 'net/http'

class GetRequester 
  attr_accessor :url
  
  def initialize(url)
    @url = url
  end 
  
  def get_response_body 
    uri = URI.parse(self.url)
    responses = Net::HTTP.get_respnse(uri)
    
  end 
  
  # def parse_json
  #   JSON.parse(get_response_body.body)
  # end 
end 