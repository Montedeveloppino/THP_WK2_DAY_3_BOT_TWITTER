require 'twitter'
require 'pry'
require 'dotenv'

Dotenv.load('../.env')
client.update('Mon premier tweet en Ruby !!!!')

puts ENV['TWITTER_API_SECRET']
puts ENV['BEST_WEBSITE_EVER']