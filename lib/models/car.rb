# Object oriented: A way thinking/seeing the world
# Object: Something which has data and properties/methods ; data/attributes
# Class is the blueprint and object is the instance of it.
# 4 fundamentals of OOPs: Abstraction, Encapsulation, Inheritance, Polymorphism 

class Car

	@@cars_count = 0

	def self.increment_cars_count
		@@cars_count += 1
	end

	def self.get_cars_count
		@@cars_count
	end

	def initialize(model, colour, wheels = 4)
		@model = model
		@colour = colour
		@wheels = wheels
		self.class.increment_cars_count
	end

	def describe
		puts "It has #{@wheels} wheels"
		puts "It's colour is #{@colour}"
		puts "It's model is #{@model}"
	end
end
