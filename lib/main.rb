require 'yaml'
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

# about_file_path = File.expand_path(File.join(File.dirname(__FILE__), 'public', 'about.txt'))

# # Writing
# File.open(about_file_path, 'w') do |file|
#   file.write('We are a new company in this town')
# end

# # Reading
# file = File.open(about_file_path)
# p file.readlines.map { |line| line.chomp }
# file.close

build_file_path = File.expand_path(File.join(File.dirname(__FILE__), 'build.yaml'))

vechiles = YAML.load_file(build_file_path)

p vechiles