require 'set'

input = File.read('3.input')

location = [0,0]
locations = Set.new
locations << location

directions = input.split("")
directions.each do |direction|
  case direction
  when "^"
    location[1] += 1
  when "v"
    location[1] += -1
  when ">"
    location[0] += 1
  when "<"
    location[0] += -1
  end
  locations << location.clone
end

p locations.size
