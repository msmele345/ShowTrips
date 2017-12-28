# require 'net/http'

# class AppleResponse
#   def self.grab_songs(band)
#     ##grab base link for api endpoint and pass in band name
#     base_url = "https://itunes.apple.com/search?term=#{band}"
#     p base_url
#     ##create get response object and pass in url
#     resp = Net::HTTP.get_response(URI.parse(base_url))
#     buffer = resp.body
#     result = JSON.parse(buffer)
#     ##take response and carve out JSON objs
#     p "*************"
#     songs = result["results"]
#     ##traverse down and map over to get desired results
#     songs.map {|data| data["trackName"]}
#   end
# end













# class AppleResponse < ApplicationRecord


#   BASE_URL="https://itunes.apple.com/search?"

#   def self.get_songs(band)
#     @url = "#{BASE_URL}term=#{band}?limit=5"
#     @response = HTTParty.get(url)

#     buffer = @response.body
#     result = JSON.parse(buffer)
#   end

# end