$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rack-flash'
require 'sinatra'
require "sinatra/json"
require "sinatra/content_for"
use Rack::Logger
use Rack::Session::Cookie, :secret => 'changeme'
use Rack::Flash, :sweep => true

require 'haml'

get '/' do
  haml :index
end
