@grid = Hash.new 0

def set(state, x1, y1, x2, y2)
  for x in x1..x2
    for y in y1..y2
      case state
      when 'on'
        @grid["#{x},#{y}"] += 1
      when 'off'
        @grid["#{x},#{y}"] -= 1 unless @grid["#{x},#{y}"] == 0
      when 'toggle'
        @grid["#{x},#{y}"] += 2
      end
    end
  end
end

instructions = File.read("6.input")

instructions.split("\n").each do |instruction|
  p "#{Time.now.strftime('%H:%M:%S.%L')} :: " + instruction
  instruction.gsub!(/turn |through /, "")
  instruction.gsub!(/,/, " ")
  i = instruction.split(" ")
  set(i[0], i[1], i[2], i[3], i[4])
end

p @grid.values.inject(:+)
