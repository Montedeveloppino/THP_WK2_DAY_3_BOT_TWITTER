require 'pry'
require 'twitter'
require 'dotenv'

  Dotenv.load('../.env')


client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end 

  array = []
  n = 19
  while array.uniq[19] == nil
    client.search("#bonjour_monde", result_type: "recent").take(n).collect do |tweet|
      array << tweet.user.screen_name
  
    end
    new_array = array.uniq
    n = n + 4
  end
  new_array.each do |f|
   client.follow(f)
  end