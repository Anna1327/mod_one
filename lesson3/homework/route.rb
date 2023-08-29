# frozen_string_literal: true

class Route
  attr_reader :stations, :current_station

  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
    @current_station = first_station
  end
  
  def add_station(station)
    stations.insert(stations.size - 1, station)
  end

  def delete_station(station)
    stations.detele(station)
  end

  def prev_station
    return nil if stations.index(current_station).zero?
    stations[stations.index(current_station) - 1]
  end

  def next_station
    return nil if stations.index(current_station) == stations.size - 1
    stations[stations.index(current_station) + 1]
  end

  def show_stations
    stations.each { |station| puts station.name }
  end
end