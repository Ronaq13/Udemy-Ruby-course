require_relative 'models/car'
require_relative 'models/bike'


audi = Car.new('A3', 'White')

s1000rr = Bike.new('BMW S1000RR', 'white')

# s1000rr.compare_mileage(audi)
puts audi.rims_cost
puts s1000rr.rims_cost

audi.describe

s1000rr.describe
