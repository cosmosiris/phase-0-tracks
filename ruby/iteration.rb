# Release 1: declare an array and a hash"
array = ["fork", "knife", "spoon", "chopstick"]
hash = {
  :fork => 5,
  :knife => 7,
  :spoon => 11,
  :chopstick => 6
}
puts "Release 1: Iterate through array and hash using .each and .map!"
puts "iterate through array using.each"
puts "array before:"
puts array
puts
puts "array after:"
array.each do |parameter|
  puts parameter
end
puts

puts "iterate through hash using .each"
puts "hash before:"
puts hash
puts
puts "hash after:"
hash.each do |key, value|
  p "There are #{value} #{key}s in the drawer."
end
puts

puts "iterate through array using .map"
puts "array before:"
puts array
puts
puts "array after:"
array.map! do |parameter|
  p parameter + "!"
end
puts

puts "Release 2: Use the Documentation"
array = [1, 2, 3, 4, 5, 6, 7, 8]
hash = {
  :one => 1,
  :two => 2,
  :three => 3,
  :four => 4,
  :five => 5,
  :six => 6,
  :seven => 7,
  :eight => 8
}

puts "Sample calls"
puts "1"
p array.delete_if {|x| x < 5}
p hash.delete_if {|x, y| y < 5}
puts

puts "2"
p array.select { |x| x.even? }
p hash.select { |x, y| y.even?}
puts

puts "3"
p array.keep_if { |x| x.even? }
p hash.keep_if { |x, y| y.even? }
puts

puts "4"
p array.drop_while {|x| x < 5 }
p hash.drop_while { |x, y| y < 5 }
puts
