require_relative 'vehicle'

class Bike < Vehicle
	def self.get_bikes_count
		self.get_vehicles_count
	end

	def initialize(args)
		super(defaults.merge(args))
	end

	def describe
		puts "------- Bike -----------"
		super
		puts "Rims: #{rim.model}"
		puts '-----------------------'
	end

	def rim_cost
		100
	end

	private

	def defaults
		super.merge({
			wheels: 2
		})
	end
end
