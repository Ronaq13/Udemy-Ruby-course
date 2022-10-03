# Conditional structures: if-else, unless, case

age = 25

if (age > 24)
    puts "You are an adult"
else
    puts "You are NOT an adult"
end

puts "YOu are 25 years old" if age == 25

unless age > 15
    puts "You are a child"
else
    puts "You are an adult"
end

case age
when 15
    puts "You are a child"
when 25
    puts "You are an adult"
else
    puts "I don't know about you"
end