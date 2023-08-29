# frozen_string_literal: true

class Train
  attr_accessor :speed
  attr_reader :wagons, :type

  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
    @route = nil
  end

  def pick_up_speed(speed)
    @speed = speed
  end

  def brake
    @speed = 0
  end

  def hitch_wagons
    @wagons += 1 if speed.zero?
  end

  def unhitch_wagons
    @wagons -= 1 if speed.zero?
  end

  def assign_route(route)
    @route = route
    @current_station_index = 0
    current_station = @route.get_station_by_index(@current_station_index)
    current_station.receive_train(self)
  end

  def previous_station
    @route.get_station_by_index(@current_station_index - 1) unless @current_station_index.zero?
  end

  def next_station
    @route.get_station_by_index(@current_station_index + 1) if @current_station_index < @route.stations.size - 1
  end

  def current_station
    @route.get_station_by_index(@current_station_index)
  end

  def move_to_prev_station
    return unless previous_station

    current_station = @route.get_station_by_index(@current_station_index)
    current_station.depart_train(self)
    @current_station_index -= 1
    current_station.receive_train(self)
  end

  def move_to_next_station
    return unless next_station

    current_station = @route.get_station_by_index(@current_station_index)
    current_station.depart_train(self)
    @current_station_index += 1
    current_station.receive_train(self)
  end
end