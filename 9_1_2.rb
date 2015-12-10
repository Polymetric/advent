# fun with nested hashes
distances = Hash.new { |h,k| h[k] = Hash.new }

File.read('9.input').each_line do |line|
  # fun with regex
  /(\w+) to (\w+) = (\d+)/.match line
  # more fun with nested hashes
  distances[$1][$2] = distances[$2][$1] = $3.to_i
end

puts distances.keys.permutation.map { |path|
  p path.each_cons(2).reduce(0) do |distance, (current_town, next_town)|
    distance + distances[current_town][next_town]
  end
}.minmax
