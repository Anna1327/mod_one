# frozen_string_literal: true

class Station
  attr_reader :trains, :name

  def initialize(name)
    @name = name
    @trains = []
  end

  def take_train(train)
    @trains << train
  end

  def send_train(train)
    @trains.delete(train)
  end

  def show_trains
    @trains.each { |train| puts train.number }
  end

  def train_list
    cargo_trains = @trains.select { |train| train.type == "cargo" }
    passenger_trains = @trains.select { |train| train.type == "passenger" }
    puts "Cargo trains: #{cargo_trains.coint}, passenger trains: #{passenger_trains.coint}"
  end
end