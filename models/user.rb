require 'mongoid'

class User
  include Mongoid::Document
  field :first_name
  field :middle_initial
  field :last_name
end
