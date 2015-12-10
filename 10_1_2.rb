input = '1321131112'
# 40.times do
50.times do
  input = input.gsub(/(.)\1*/) { |match| match.size.to_s + match[0] }
end
puts input.length
