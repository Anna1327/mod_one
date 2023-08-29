class Car
  attr_accessor :speed

  attr_reader :engine_volume

  def initialize(engine_volume, speed = 0)
    @speed = speed
    @engine_volume = engine_volume
  end

  def start_engine
    puts "Wroom!"
  end

  def beep
    puts "beep beep"
  end

  def stop
    self.speed = 0
  end

  def go
    self.speed = 50
  end
end

# car = Car.new(10)
# car.object_id

# car2 = Car.new(10)
# car2.object_id

# car.object_id.equal?(car2.object_id) # false

# car.beep
# car.go
# car.current_speed
# car.stop
# car.current_speed