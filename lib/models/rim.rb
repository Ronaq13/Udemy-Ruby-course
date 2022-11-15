class Rim
  attr_accessor :model

  def initialize(model)
    @model = model
  end

  def cost(vehicle_type)
    case vehicle_type
    when Car
      vehicle_type.wheels * 200
    when Bike
      vehicle_type.wheels * 100
    end
  end
end
