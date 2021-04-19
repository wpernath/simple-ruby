require 'sinatra'
require 'pp'

set :bind, '0.0.0.0'
set :port, 8080

def greeting
    ENV['GREETING'] || 'Welcome'
end


get '/' do
   "#{greeting}!"
end

get '/:name' do
    "#{greeting}, #{params[:name]}!"
end

get '/env' do
    pp ENV.to_h
end