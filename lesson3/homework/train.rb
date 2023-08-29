# frozen_string_literal: true

class Train
  attr_accessor :speed, :wagons

  attr_writter :route

  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
  end

  def pick_up_speed(speed)
    self.speed = speed
  end

  def brake
    self.speed = 0
  end

  def hitch_wagons
    self.wagons += 1 if speed.zero?
  end

  def unhitch_wagons
    self.wagons -= 1 if speed.zero?
  end

  def assignee_route(route)
    @route = route
    @route.current_station.take_train(self)
  end

  def prev_station
    @route.prev_station
  end

  def next_station
    @route.next_station
  end

  def current_station
    @route.current_station
  end

  def move_to_prev_station
    current_station.send_train(self)
    prev_station.take_train(self)
  end

  def move_to_next_station
    current_station.send_train(self)
    next_station.take_train(self)
  end
end