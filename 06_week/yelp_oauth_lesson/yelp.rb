require 'oauth'
require 'json'

consumer_key ='A9RP14Dxpu4eI9beHKZXKw'
consumer_secret = 'DAS3M0gQcJqgoMnHEeEBUAjpC8M'
access_token = 'Om0OeAvboduGRL7UJ-mhCT4JXGLIMsUI'
access_token_secret = 'cMFFsyFYWDY27yhCHPFvLCEJ4Do'


@consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {site: 'http://api.yelp.com'})
access_token = OAuth::AccessToken.new(@consumer, access_token, access_token_secret)

term = "restaurant"
location = "Santa+Monica"

my_hash = JSON.parse(access_token.get("/v2/search?term=#{term}&location=#{location}").body)
# Ruby doesn't like spaces, replace with + sign
puts my_hash.keys