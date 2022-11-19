require_relative './../models/car'
require_relative './../models/bike'

class BuildVehicle
  def self.call(args)
    new(args).send(:call)
  end

  private

  def call
    @cars_reqs.each do |car_req|
      car_params = car_req.transform_keys(&:to_sym)
      @build_cars << @car_class.new(car_params)
    end

    @bikes_reqs.each do |bike_req|
      bike_params = bike_req.transform_keys(&:to_sym)
      @build_bikes << @bike_class.new(bike_params)
    end

    {
      cars: @build_cars,
      bikes: @build_bikes
    }
  end

  def initialize(args)
    @cars_reqs = args.fetch(:cars_reqs, [])
    @bikes_reqs = args.fetch(:bikes_reqs, [])
    @car_class = args.fetch(:car_class, Car)
    @bike_class = args.fetch(:bike_class, Bike)
    @build_cars = []
    @build_bikes = []
  end
end
