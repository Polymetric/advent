require 'json'
require 'pp'

input = File.read("12.input")

mp = JSON.parse(input)
$sum = 0
def dfs(mp)
    return if mp.is_a? Hash and mp.values.include?('red')

    (mp.is_a?(Array) ? mp : mp.values).each { |y| dfs(y) } if mp.class.method_defined? :each
    $sum += mp if mp.is_a? Integer
end
dfs(mp)
p $sum
