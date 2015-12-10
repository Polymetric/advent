input = File.read('1.input')
up=0
down=0
input.chars.to_a.each_with_index do |char, pos|
  if char == '(' then up += 1 end
  if char == ')' then down += 1 end
  if up-down == -1
    puts pos+1
    break
  end
end
