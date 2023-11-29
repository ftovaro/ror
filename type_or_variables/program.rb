class Vehicle
  @@total_of_vehicles = 0

  def initialize
    @stop_light = "off"
    @@total_of_vehicles += 1
    $god = "here"
  end

  def drive
    shift = 1
    p "drive"
    p "shift: #{defined?(shift)}"
    p "stop_light #{defined?(@stop_light)}"
  end

  def stop
    p "stop"
    p "shift: #{defined?(shift)}"
    p "stop_light #{defined?(@stop_light)}"
    p "total_of_vehicles #{defined?(@@total_of_vehicles)}"
    p "god #{defined?($god)}"
    p "god: #{$god}"
  end

  def self.total_of_vehicles
    @@total_of_vehicles
  end
end

class Animal
  def initialize
  end

  def eat
    p "god #{defined?($god)}"
    p "god: #{$god}"
  end
end

car = Vehicle.new
car.drive
car.stop

truck = Vehicle.new
bike = Vehicle.new
p "Total: #{Vehicle.total_of_vehicles}"

dog = Animal.new
p "dog, God: #{dog.eat}"
p $god