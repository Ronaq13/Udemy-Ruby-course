require_relative 'vehicle'

class Car < Vehicle
	def self.get_cars_count
		self.get_vehicles_count
	end

	def initialize(model, colour, wheels = 4)
		super(model, colour, wheels)
	end

	def describe
		puts "------- Car -----------"
		super
		puts "***********************"
	end
end
