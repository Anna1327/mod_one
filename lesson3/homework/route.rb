# frozen_string_literal: true

class Route
  attr_reader :stations

  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
  end
  
  def add_station(station)
    stations.insert(-2, station)
  end

  def delete_station(station)
    stations.detele(station)
  end

  def get_station_by_index(index)
    stations[index]
  end

  def show_stations
    stations.each { |station| puts station.name }
  end
end