require 'sinatra'
require 'yaml'
require 'wraith'

get '/' do
  erb :index
  @test = WraithJob.new
end

class WraithJob

  def initialize
    wraith = Wraith::CLI.new
  end

  def run_wraith
    wraith.capture('config')
  end
end
