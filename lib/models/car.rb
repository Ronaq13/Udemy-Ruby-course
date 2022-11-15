require_relative 'vehicle'
require_relative 'stereo'

class Car < Vehicle
	attr_accessor :stereo

	def self.get_cars_count
		self.get_vehicles_count
	end

	def initialize(model, colour, wheels = 4)
		@stereo = Stereo.new('Harman Kardon')
		super(model, colour, wheels)
	end

	def describe
		puts "------- Car -----------"
		super
		puts "Stereo: #{stereo.model} ; Rims: #{rim.model}"
		puts '-----------------------'
	end
end
