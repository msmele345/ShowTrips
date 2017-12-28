class AppleResponse < ApplicationRecord
  include HTTParty

  BASE_URL="https://itunes.apple.com/search?"

  def self.get_songs(band)
    @url = "#{BASE_URL}term=#{band}?limit=5"
    @response = HTTParty.get(url)

    buffer = @response.body
    result = JSON.parse(buffer)
  end

end