require_relative 'models/car'

bmw = Car.new('520D', 'Black')
bmw.describe
# puts bmw.colour
bmw.colour = 'White'
bmw.model = '320D'
bmw.describe

audi = Car.new('A3', 'White')
# audi.describe

audi = Car.new('A4', 'White')

puts Car.get_cars_count