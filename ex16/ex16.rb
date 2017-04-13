filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want to do that, hit CTRL-C (^C)."
puts "If you want to do that, hit RETURN."

$stdin.gets

puts "Opening the file...."
target = open(filename, 'w')

# not really needed, since file.open(name, 'w') automatically truncate the file
puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write this to the file."

target.write("#{line1}\n#{line2}\n#{line3}")

puts "And finally, we close it."
target.close

puts "Do you want to read the file? "
puts "If you don't want to do that, hit CTRL-C (^C)."
puts "If you want to do that, hit RETURN."

$stdin.gets

puts "Reading the file...."
target = open(filename)
puts  target.read
target.close
