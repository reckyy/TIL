#10-2-1
require 'sinatra'
get '/omikuji' do
  ["大吉", "中吉", "末吉", "凶"].sample
end

#10-3-2
require 'net/http'
require 'uri'
uri = URI.parse("http://localhost:4567/hi")
p Net::HTTP.get(uri)

#10-3-3
require 'net/http'
require 'uri'
require 'cgi'
uri = URI.parse("http://localhost:4567/drink")
p Net::HTTP.get(uri)
p CGI.unescape("¥xE3¥x81¥x82")