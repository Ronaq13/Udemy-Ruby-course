class Vehicle
  attr_reader :model, :colour, :wheels
	attr_writer :model, :colour, :wheels

	@@vehicles_count = 0

	def self.increment_vehicles_count
		@@vehicles_count += 1
	end

	def self.get_vehicles_count
		@@vehicles_count
	end

	def initialize(model, colour, wheels = 0)
		@model = model
		@colour = colour
		@wheels = wheels
		self.class.increment_vehicles_count
	end

	def describe
		puts "It has #{wheels} wheels"
		puts "It's colour is #{colour}"
		puts "It's model is #{model}"
	end
end
