require_relative 'models/car'
require_relative 'models/bike'


audi = Car.new({
  model: 'A3',
  colour: 'Grey',
  stereo_model: 'Bang & Olufsen'
})

s1000rr = Bike.new({
  model: 'BMW S1000RR',
  colour: 'Blue'
})

# s1000rr.compare_mileage(audi)
puts audi.rims_cost
puts s1000rr.rims_cost

# audi.describe

# s1000rr.describe
