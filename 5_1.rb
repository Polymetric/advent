input = File.read('5.input')

strings = input.split("\n")
nice = 0

strings.each do |string|
  flag = true
  # double letters
  if !/(.)\1{1,}/.match(string)
    flag = false
  # three or more vowels
  elsif string.scan(/[aeiou]/).count < 3
    flag = false
  # no 'ab', 'cd', 'pq', 'xy'
  elsif /(ab|cd|pq|xy)/.match(string)
    flag = false
  end
  if flag == true
    nice += 1
  end
end

p nice
