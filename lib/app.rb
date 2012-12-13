$LOAD_PATH << File.expand_path('../../app', __FILE__)
require 'sinatra/base'
require 'mongoid'
require 'pry'
require 'models'

class App < Sinatra::Base

	Mongoid.load!('./mongoid.yml', :development)

	get '/' do
	  user = User.new
    personUser = PersonUser.new
    column = Column.new
    source = Source.new
    filter = Filter.new
	  
	  binding.pry
	end

end