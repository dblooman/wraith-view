require 'sinatra'
require 'yaml'
require 'wraith'

get '/' do
  @files = Dir.glob("configs/*.yaml").sort
  erb :index
end

get '/run' do
  def initialize
    wraith = Wraith::CLI.new
    wraith.capture('config')
  end
end
