require 'twitter'
class Comedian < ActiveRecord::Base
  has_many :events
  # geocoded_by :location
  # after_validation :geocode

  @client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "sI64LLmHlyvWywBxcdeIceMXA"
    config.consumer_secret     = "PvOoqt1I6hPQrLuoLCWbxXm7vYj7R0HlW6nAs87HmlyE21SftX"
    config.access_token        = "3226677368-6Rtj0M1vqa4t0hXITtBpEUzFN9DwbXma6dWIBeH"
    config.access_token_secret = "G6EF2mhRyXzxUEnByYRa7oFvveNrFv5v76WEcfaSw2D5G"
    end

  def get_tweets

  end



end