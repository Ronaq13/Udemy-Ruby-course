# Lambda

def car_running(car_number, lambda)
    puts "My car number is: #{car_number}"
    puts "Running in the method"
    lambda.call(car_number)
    puts "Running in the method again"
end

journey = ->(car_number) do
    puts "Running in lambda with car number: #{car_number}"
    puts "Starting in the lambda"
    puts "Running in the lambda"
    puts "end of the lambda"
end

car_running(23, journey)
car_running(34, journey)

