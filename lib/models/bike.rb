require_relative 'vehicle'

class Bike < Vehicle
	def self.get_bikes_count
		self.get_vehicles_count
	end

	def initialize(model, colour, wheels = 2)
		super(model, colour, wheels)
	end

	def describe
		puts "------- Bike -----------"
		puts "It has #{wheels} wheels"
		puts "It's colour is #{colour}"
		puts "It's model is #{model}"
	end
end
