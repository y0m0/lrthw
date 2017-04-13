people = 30
cars = 40
trucks = 15

# if number of car greater then number of people
if cars > people
  puts "We should take the cars."
# else if number of cars less then number of people
elsif cars < people
  puts "We should not take the cars."
# if number of cars equal number of people
else
  puts "We can't decide."
end

# if number of tracks greater then number of cars
if trucks > cars
  puts "That's too many trucks."
# if number of trucks less then number of cars
elsif trucks < cars
  puts "Maybe we could take the trucks."
# if number of trucks equal number of cars
else
  puts "We still can't decide."
end

# if number of people greater then number of trucks
if people > trucks
  puts "Alright, let's just take the trucks."
# if number of people less then or equal to number of trucks
else
  puts "Fine, let's stay home then."
end


if people > trucks && people < cars
  puts "we should definetely take the trucks."
else
  puts "we might want to recount the people"
end
