input = File.read('5.input')

strings = input.split("\n")
nice = 0

strings.each do |string|
  flag = true
  # repeated letter pair, no overlap
  if !/.*(.{2}).*\1/.match(string)
    flag = false
  end
  # letter which repeats with exactly one letter between
  if !/(.).\1/.match(string)
    flag = false
  end
  if flag == true
    nice += 1
  end
end

p nice
