# Block: A block is always invoked with a function or can say passed to a method call
# Invoke a block: yield; &block

def car_running(car_number)
    puts "My car number is: #{car_number}"
    puts "Running in the method"
    yield
    puts "Running in the method again"
end

car_running(23) do
    puts "Starting in the block"
    puts "Running in the block"
    puts "end of the block"
end
