require 'sinatra'
require 'securerandom'

uuid = SecureRandom.uuid

get '/' do
  "Greetings from #{uuid} upstream"
end
