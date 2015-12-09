@grid = Hash.new

def set(state, x1, y1, x2, y2)
  for x in x1..x2
    for y in y1..y2
      case state
      when 'on'
        @grid["#{x},#{y}"] = true
      when 'off'
        @grid["#{x},#{y}"] = false
      when 'toggle'
        @grid["#{x},#{y}"] = !@grid["#{x},#{y}"]
      end
    end
  end
end

p "#{Time.now.strftime('%H:%M:%S.%L')} :: " + "Building Grid"
set 'off', 0, 0, 999, 999

instructions = File.read("6.input")

instructions.split("\n").each do |instruction|
  p "#{Time.now.strftime('%H:%M:%S.%L')} :: " + instruction
  instruction.gsub!(/turn |through /, "")
  instruction.gsub!(/,/, " ")
  i = instruction.split(" ")
  set(i[0], i[1], i[2], i[3], i[4])
end

on = @grid.values - [false]
p on.size
