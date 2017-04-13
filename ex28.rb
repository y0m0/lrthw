
puts true && true
puts true
puts "---"

puts false && true
puts false
puts "---"

puts 1 == 1 && 2 == 1
puts false
puts "---"

puts "test" == "test"
puts true
puts "---"

puts 1 == 1 || 2 != 1
puts true
puts "---"

puts true && 1 == 1
puts true
puts "---"

puts false && 0 != 0
puts false
puts "---"

puts true || 1 == 1
puts true
puts "---"

puts "test" == "testing"
puts false
puts "---"

puts 1 != 0 && 2 == 1
puts false
puts "---"

puts "test" != "testing"
puts true
puts "---"

puts "test" == 1
puts false
puts "---"

puts !(true && false)
puts true
puts "---"

puts !(1 == 1 && 0 != 1)
puts false
puts "---"

puts !(10 == 1 || 1000 == 1000)
puts false
puts "---"

puts !(1 != 10 || 3 == 4)
puts false
puts "---"

puts !("testing" == "testing" && "Zed" == "Cool Guy")
puts true
puts "---"

puts 1 == 1 && (!("testing" == 1 || 1 == 0))
puts true
puts "---"

puts "chunky" == "bacon" && (!(3 == 4 || 3 == 3))
puts false
puts "---"

puts 3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))
puts false
puts "---"

puts "test" && 1
puts 1 && "test"
puts false || 1
puts true || 1
puts false && 1
