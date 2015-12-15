input = File.read("12.input")
nums = Array.new

p input.scan(/[+-]?\d+(?:\.\d+)?/).map { |s| s.to_i }.inject(:+)
