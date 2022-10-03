# Loops: for, while, loop, until. 

age = 25

while age < 50
    puts age
    age = age + 5
end

until age > 50
    puts age
    age = age + 5
end

loop do
    puts age
    break if age > 50
    age = age + 5
end

cars = ['a', 'b', 'c']

for car in cars do
    puts car
end


puts "Out of the loop"