input = File.read('2.input')

total = 0

input.split("\n").each do |dimensions|
  nums = dimensions.split("x")
  sorted = nums.sort { |x,y| x.to_i <=> y.to_i }
  smallest = sorted[0...2]
  total += (smallest[0].to_i + smallest[1].to_i)*2
  total += nums[0].to_i * nums[1].to_i * nums[2].to_i
end

p total
