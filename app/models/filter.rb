require "mongoid"

class Filter
	include Mongoid::Document
	store_in collection: "Filter"
	field :type
	field :property
	field :operator
	field :value, type: Array
	belongs_to :Column
end