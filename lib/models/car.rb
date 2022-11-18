require_relative 'vehicle'
require_relative 'stereo'

class Car < Vehicle
	attr_accessor :stereo

	def self.get_cars_count
		self.get_vehicles_count
	end

	def initialize(args)
		stereo_model = args.fetch(:stereo_model, defaults[:stereo_model])
		add_stereo(stereo_model)
		super(defaults.merge(args))
	end

	def describe
		puts "------- Car -----------"
		super
		puts "Stereo: #{stereo.model} ; Rims: #{rim.model}"
		puts '-----------------------'
	end

	def rim_cost
		200
	end

	private

	def defaults
		super.merge({
			wheels: 4,
			stereo_model: 'Harman Kardon'
		})
	end

	def add_stereo(stereo_model)
		@stereo = Stereo.new(stereo_model)
	end
end
