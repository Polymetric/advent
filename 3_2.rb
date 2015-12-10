require 'set'

input = File.read('3.input')

location_santa = [0,0]
location_robo = [0,0]

locations_santa = Set.new
locations_robo = Set.new

locations_santa << location_santa.clone
locations_robo << location_robo.clone

directions_santa = Array.new
directions_robo = Array.new

directions = input.split("")

directions.each_with_index do |direction, i|
  if i%2 == 0
    directions_santa << direction.clone
  else
    directions_robo << direction.clone
  end
end

directions_santa.each do |direction|
  case direction
  when "^"
    location_santa[1] += 1
  when "v"
    location_santa[1] += -1
  when ">"
    location_santa[0] += 1
  when "<"
    location_santa[0] += -1
  end
  locations_santa << location_santa.clone
end

directions_robo.each do |direction|
  case direction
  when "^"
    location_robo[1] += 1
  when "v"
    location_robo[1] += -1
  when ">"
    location_robo[0] += 1
  when "<"
    location_robo[0] += -1
  end
  locations_robo << location_robo.clone
end

p locations_santa.merge(locations_robo).size
