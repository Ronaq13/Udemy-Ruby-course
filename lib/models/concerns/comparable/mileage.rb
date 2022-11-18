require_relative '../../vehicle'

module Concerns
  module Comparable
    module Mileage
      def compare_mileage(other_vehicle)
        return 'Only for vehicle' unless (self.is_a?(Vehicle) && other_vehicle.is_a?(Vehicle))

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
    end
  end
end