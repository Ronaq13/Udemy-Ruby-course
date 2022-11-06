# Object oriented: A way thinking/seeing the world
# Object: Something which has data and properties/methods ; data/attributes
# Class is the blueprint and object is the instance of it.
# 4 fundamentals of OOPs: Abstraction, Encapsulation, Inheritance, Polymorphism 

class Car

	def initialize(model, colour, wheels = 4)
		@model = model
		@colour = colour
		@wheels = wheels
	end

	def describe
		puts "It has #{@wheels} wheels"
		puts "It's colour is #{@colour}"
		puts "It's model is #{@model}"
	end
end
