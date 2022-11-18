require_relative 'rim'

class Vehicle
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

	def rims_cost
		rim.cost(self)
	end

	def describe
		puts "It has #{wheels} wheels"
		puts "It's colour is #{colour}"
		puts "It's model is #{model}"
	end

	def compare_mileage(other_vehicle)
		my_mileage = self.calculate_mileage
		other_mileage = other_vehicle.calculate_mileage
		winner_vehicle = my_mileage > other_mileage ? self : other_vehicle
		puts "#{winner_vehicle.model} has more mileage"
	rescue ArgumentError
		puts 'Something went wrong!!'
	end

	protected

	def calculate_mileage
		distance = gets.chomp.to_i
		fuel = gets.chomp.to_i
		mileage_calculator(distance, fuel)
	end 

	private

	def mileage_calculator(distance, fuel)
		distance/fuel
	rescue ZeroDivisionError
		puts 'Fuel cannot be zero!!'
	end

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
