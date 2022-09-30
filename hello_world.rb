# Procs

def car_running(car_number, proc)
    puts "My car number is: #{car_number}"
    puts "Running in the method"
    proc.call
    puts "Running in the method again"
end

# Lambda
journey = ->(car_number) do
    puts "Running in lambda with car number: #{car_number}"
    puts "Starting in the lambda"
    return
    puts "Running in the lambda"
    puts "end of the lambda"
end

# Proc
journey = Proc.new do |car_number|
    puts "Running in Proc with car number: #{car_number}"
    puts "Starting in the Proc"
    return
    puts "Running in the Proc"
    puts "end of the Proc"
end

car_running(23, journey)
car_running(34, journey)

