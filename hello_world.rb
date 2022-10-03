# Traversing Hash: each, each_key, each_value

vehicles = {
    car: 'Audi A4',
    bike: 'Yamaha R1',
    truck: 'Tesla truck'
}

vehicles.each do |key, value|
    puts "I have a #{key} model: #{value}"
end

vehicles.each_key do |key|
    puts "I have a #{key}"
end

vehicles.each_value do |value|
    puts "I have a #{value}"
end