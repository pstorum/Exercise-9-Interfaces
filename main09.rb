class Employee

  def prepare(bike)
    bike.prepare()
  end

end

module Bike

  def prepare
    raise "Not Implemented"
  end

end


class BmxBike 
  include Bike

  def prepare
    puts 'Cleaning...'
  end

end

class RoadBike
  include Bike

  def prepare
    puts 'Lubricating gears...'
  end

end

class MountainBike
  include Bike

  def prepare
    puts 'Adjusting suspension...'
  end

end

class Tricycle
  include Bike

  def prepare
    puts 'Adjusting seat...'
  end

end

bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]

employee = Employee.new

bikes.each do |bike|
  employee.prepare(bike)
end