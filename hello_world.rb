# Array: Collection on objects. Generally same type

# decleration %w{}, []
            # 0       1        2
            # -3        -2      -1
fruits = ["Apple","Orange","Banana"]
fruits2 = %w{ Apple Orange Banana }

# size .length
puts fruits2.length


# adding
fruits << "Grapes"
p fruits
p fruits.length

# Replacing
fruits[0] = "Cherry"
p fruits

# deleting; delete_at; delete
# fruits.delete_at(0)
# p fruits

# fruits.delete("Grapes")
# p fruits

# accessing, from last[-1]
p fruits[-1]
p fruits[-2]


# accessing out of bound
p fruits[1000]


# Strings as array. Array of characters
greeting = "Hi!! I am Raounak"
p greeting[-1]