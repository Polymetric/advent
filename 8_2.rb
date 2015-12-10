total_code = 0
total_new = 0

File.readlines("8.input").each do |line|
  line.chomp!
  total_code += line.length
  total_new += line.dump.length
end

p "code: #{total_code}"
p "new: #{total_new}"
p "diff: #{total_new - total_code}"
