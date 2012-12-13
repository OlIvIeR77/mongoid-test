# miapp.rb
$LOAD_PATH << File.expand_path('../models', __FILE__)
require 'sinatra'
require 'mongoid'
require 'pry'
require 'user'

Mongoid.load!('./mongoid.yml', :development)

get '/' do
  person = User.new(:first_name => "Ludwig", :last_name => "Beethoven")
  person.save

  "Hello, I am #{person.first_name} #{person.last_name}"
  binding.pry
end

