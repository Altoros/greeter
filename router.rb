require 'sinatra'
require 'yaml'
require 'net/http'

config    = YAML.load_file(File.expand_path('../config.yml', __FILE__))
upstreams = config['upstreams']

get '/' do
  Net::HTTP.get(URI("http://#{upstreams.sample}"))
end
