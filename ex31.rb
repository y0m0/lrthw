puts "You enter a dark room with two doors.  Do you go through door #1 or door #2?"
prompt = ">> "
print prompt
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake.  What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."

  print prompt
  bear = $stdin.gets.chomp

  if bear == "1"
    puts "The bear tries to eat your face off, do you want to 'run' or 'fight'?"
    print prompt
    bear_cake = gets.chomp
    if bear_cake == "run"
      puts "Sounds like a good idea!"
    elsif bear_cake == "fight"
      puts "You slap the bear in the face and he suddenly start to cry and give up his cake!"
    else
      puts "you got devoured while thinking.... nice one!"
    end

  elsif bear == "2"
    puts "The bear eats your legs off.  Good job!"
  else
    puts "Well, doing %s is probably better.  Bear runs away." % bear
  end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulhu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."

  print prompt
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind of jello.  Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck.  Good job!"
  end

else
  puts "You stumble around and fall on a knife and die.  Good job!"
end
