$LOAD_PATH << File.expand_path('../../app', __FILE__)
require 'sinatra/base'
require 'mongoid'
require 'pry'
require 'models'

class App < Sinatra::Base

	Mongoid.load!('./mongoid.yml', :development)

	get '/' do
	  user = User.new(:first_name => "Ludwig", :last_name => "Beethoven")
	  
	  user.save

	  "Hello, I am #{user.first_name} #{user.last_name}"
	  binding.pry
	end

end