require 'sinatra'
require 'yaml'
require 'wraith'

get '/' do
  @files = Dir.glob("configs/*.yaml").sort
  erb :index
end

get '/run' do
  erb :wraith
end
