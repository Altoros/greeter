require 'sinatra'
require 'yaml'
require 'net/http'

config    = YAML.load_file(ENV['CONFIG_FILE'])
upstreams = config['upstreams']

get '/' do
  "Router says: '#{Net::HTTP.get(URI("http://#{upstreams.sample}"))}'\n"
end
