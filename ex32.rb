the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# traditional for loop style
for number in the_count
  puts "This is count #{number}"
end

# the_count loop ruby style
the_count.each { |n| puts "This is count #{n}" }

# ruby style for loops
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# ruby for loop with different syntax
fruits.each { |i| puts "I got #{i}" }

# build a lits
elements = []

# use range operator to do 0 to 5 counts
(0..5).each do |i|
  puts "Adding #{i} to the list."
  # push the i variable to the end of the list
  # elements.push(i)
  elements << i
end

# print them out
elements.each { |i| puts "Element was: #{i}"}
