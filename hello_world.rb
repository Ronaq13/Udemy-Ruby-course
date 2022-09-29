# Hash: Unique key value store

# Decleration
person = { name: "Raounak", age: 25 }
p person

# Adding a value
person[:address] = "Germany"
p person

# Accessing
puts "Name of the person is: #{ person[:name] }"


# Default value
person.default = "This key is not present"
puts "Name of the person is: #{ person[:namee] }"


# Delete a key
person.delete(:age)
p person

# Deleting all; clear
person.clear
p person
