require_relative 'rim'
require_relative 'Concerns/comparable/mileage'
require_relative 'Concerns/cost/rim'

class Vehicle
	include Concerns::Comparable::Mileage
	include Concerns::Cost::Rim
  attr_accessor :model, :colour, :wheels, :rim

	@@vehicles_count = 0

	def self.increment_vehicles_count
		@@vehicles_count += 1
	end

	def self.get_vehicles_count
		@@vehicles_count
	end

	def initialize(args)
		@model = args.fetch(:model, defaults[:model])
		@colour = args.fetch(:colour, defaults[:colour])
		@wheels = args.fetch(:wheels, defaults[:wheels])
		rim_model = args.fetch(:rim_model, defaults[:rim_model])
		add_rim(rim_model)
		self.class.increment_vehicles_count
	end

	def describe
		puts "It has #{wheels} wheels"
		puts "It's colour is #{colour}"
		puts "It's model is #{model}"
	end

	private

	def add_rim(rim_model)
		@rim = Rim.new(rim_model)
	end

	def defaults
		{
			model: 'BMW',
			colour: 'Black',
			wheels: 0,
			rim_model: 'BMW series 3'
		}
	end
end
