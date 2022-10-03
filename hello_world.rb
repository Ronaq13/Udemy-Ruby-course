# Traversing array: each, each_with_index

cars = ['Audi A4', 'BMW i8', 'Mercedes Benz']

# for car in cars do 
#     puts "I have a #{car} car"
# end

cars.each do |car|
    puts "I have a #{car} car"
end

cars.each_with_index do |car, index|
    puts "I have a #{car} car. It is parked at #{index} floor"
end
