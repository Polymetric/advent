input = File.read('2.input')

total = 0

input.split(/\r?\n|\r/).each do |line|
  nums = line.split('x')
  l = nums[0].to_i
  w = nums[1].to_i
  h = nums[2].to_i
  lw_side = l*w
  wh_side = w*h
  hl_side = h*l
  min_side = [lw_side, wh_side, hl_side].min
  total += 2*l*w + 2*w*h + 2*h*l + min_side
end

p total
