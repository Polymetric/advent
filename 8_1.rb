total_code = 0
total_real = 0

File.readlines("8.input").each do |line|
  line.chomp!
  total_code += line.length
  total_real += eval(line).length
end

p "code: #{total_code}"
p "bytes: #{total_real}"
p "diff: #{total_code - total_real}"
