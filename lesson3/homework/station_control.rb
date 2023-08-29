# frozen_string_literal: true

require_relative 'station'
require_relative 'route'
require_relative 'train'

station_murmansk = Station.new('Murmanks')
station_moscow = Station.new('Moscow')
station_saint_p = Station.new('Saint-Petersburg')

train = Train.new('236', 'passenger', 8)
train2 = Train.new('137', 'passenger', 6)

route1 = Route.new(station_murmansk, station_moscow)
route2 = Route.new(station_saint_p, station_moscow)

train.assign_route(route1)
train2.assign_route(route2)

puts train.current_station
puts train2.current_station

route1.add_station(station_saint_p)

puts train.next_station
puts train.previous_station

train.move_to_next_station
puts train.current_station

train.speed = 80
train.unhitch_wagons
puts train.wagons
train.brake
train.hitch_wagons
puts train.wagons

station_murmansk.receive_train(train)
puts station_murmansk.trains

puts station_murmansk.passenger_trains

puts route1.get_station_by_index(1)