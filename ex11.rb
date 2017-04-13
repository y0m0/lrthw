print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

print "In which country do you live? "
country = gets.chomp
print "Which city? "
city = gets.chomp
print "What's your address? "
address = gets.chomp

puts "You live in:\n#{address}\n#{city.capitalize}, #{country.upcase}"
