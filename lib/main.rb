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
# puts audi.rims_cost
# puts s1000rr.rims_cost

# audi.describe

# s1000rr.describe

# about_file_path = './public/about.txt'
puts File.expand_path(File.join(File.dirname(__FILE__), 'public', 'about.txt'))
about_file_path = File.expand_path(File.join(File.dirname(__FILE__), 'public', 'about.txt'))
# Open
file = File.open(about_file_path)

# Read
p file.readlines.map { |line| line.chomp }

# Close
file.close