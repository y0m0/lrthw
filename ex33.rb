i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbes now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "
numbers.each { |n| puts n }

# enclose everything in a function that takes a maximum number n to iterate over
def numbers(n)
  numbers = []
  (0..n).each { |x| numbers.push(x) }
  puts "The numbers from function: "
  numbers.each { |x| puts x }
end

numbers(15)

# make a new function that also takes an increment step = i
def numbers_step(n, i)
  numbers = []
  (0..n).step(i).each do |x|
    numbers << x
  end
  puts "The numbers with steps: "
  numbers.each { |x| puts x }
end

numbers_step(10, 2)
