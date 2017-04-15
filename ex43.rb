class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end

# Main engine for the game
class Engine
  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    # define the current_scene by calling Map.opening_scenea
    current_scene = @scene_map.opening_scene()
    # this is the last_scene, when we reach that we finish the game and win
    last_scene = @scene_map.next_scene('win')

    # play as long as the current scene is not the last_scene
    while current_scene != last_scene
      # save the next scene name by calling current_scene.enter()
      next_scene_name = current_scene.enter
      # move to the next_scene by changing the current_scene
      current_scene = @scene_map.next_scene(next_scene_name)
    end
    # play the last scene
    current_scene.enter
  end
end

# Whenever the Player fails and die the death scene is called
class Death < Scene

  @@quips = [
    "You died. You kinda suck at this.",
    "Your mom would be proud... if she were smarter.",
    "Such a luser",
    "I have a small puppy that's better at this."
  ]
  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end

## This is the initial scene of the game
## To continue the player must defeat the Gothon with a joke!
class CentralCorridor < Scene
  def enter()
    puts <<~ENTER
    The Gothons of Planet Percal #25 have invaded your ship and destroyed
    your entire crew.  You are the last surviving member and your last
    mission is to get the neutron destruct bomb from the Weapons Armory,
    put it in the bridge, and blow the ship up after getting into an
    escape pod.

    You're running down the central corridor to the Weapons Armory when
    a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume
    flowing around his hate filled body.  He's blocking the door to the
    Armory and about to pull a weapon to blast you.

    ENTER
    print "> "

    action = $stdin.gets.chomp

    if action.include?("shoot")
      puts <<~SHOOT
      Quick on the draw you yank out your blaster and fire it at the Gothon.
      His clown costume is flowing and moving around his body, which throws
      off your aim.  Your laser hits his costume but misses him entirely.  This
      completely ruins his brand new costume his mother bought him, which
      makes him fly into an insane rage and blast you repeatedly in the face until
      you are dead. Then he eats you.

      SHOOT
      return 'death'

    elsif action.include?("dodge")
      puts <<~DODGE
      Like a world class boxer you dodge, weave, slip and slide right
      as the Gothon's blaster cranks a laser past your head.
      In the middle of your artful dodge your foot slips and you
      bang your head on the metal wall and pass out.
      You wake up shortly after only to die as the Gothon stomps on
      your head and eats you.

      DODGE
      return 'death'

    elsif action.include?("joke")
      puts <<~JOKE
      Lucky for you they made you learn Gothon insults in the academy.
      You tell the one Gothon joke you know:
      "Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr."
      The Gothon stops, tries not to laugh, then busts out laughing and can't move.
      While he's laughing you run up and shoot him square in the head
      putting him down, then jump through the Weapon Armory door.

      JOKE
      return 'laser_weapon_armory'

    else
      puts "Action is not recognized!"
      return 'central_corridor'
    end
  end
end

## This is the place where the player can obtain
## the neutron bomb, but is has to guess the right code
## to unlock it
class LaserWeaponArmory < Scene
  def enter()
    puts <<~ENTER
    You do a dive roll into the Weapon Armory, crouch and scan the room
    for more Gothons that might be hiding. It's dead quiet, too quiet.
    You stand up and run to the far side of the room and find the
    neutron bomb in its container. There's a keypad lock on the box
    and you need the code to get the bomb. If you get the code
    wrong 10 times then the lock closes forever.....
    The code is 3 digits.

    ENTER
    passcode = "#{rand(9)}#{rand(9)}#{rand(9)}"
    try = 0
    print "[Passcode]> "
    guess = $stdin.gets.chomp
    guess = passcode if guess == "cheat"

    while passcode != guess && try < 9
      puts 'WRONG CODE!'
      try += 1
      print "[Passcode]> "
      guess = $stdin.gets.chomp
    end

    if guess == passcode
      puts <<~RIGHT_CODE
      The container clicks open and the seal breaks, letting gas out.
      You grab the neutron bomb and run as fast as you can to the
      bridge where you must place it in the right spot.

      RIGHT_CODE
      return 'the_bridge'
    else
      puts <<~WRONG_CODE
      The lock buzzes one last time and then you hear a sickening
      melting sound as the mechanism is fused together.
      You decide to sit there, and finally the Gothons blow up the
      ship, everything goes black and you die.

      WRONG_CODE
      return 'death'
    end
  end
end

## The player has to choose how to use the bomb
class TheBridge < Scene
  def enter()
    puts <<~ENTER
    You burst onto the Bridge with the netron destruct bomb
    under your arm and surprise 5 Gothons who are trying to
    take control of the ship.  Each of them has an even uglier
    clown costume than the last.  They haven't pulled their
    weapons out yet, as they see the active bomb under your
    arm and don't want to set it off.

    ENTER
    print "> "

    action = $stdin.gets.chomp

    if action.include?("throw")
      puts <<~THROW
      In a panic you throw the bomb at the group of Gothons
      and make a leap for the door.  Right as you drop it a
      Gothon shoots you right in the back killing you.
      As you die you see another Gothon frantically try to disarm
      the bomb. You die knowing they will probably blow up when
      it goes off.

      THROW
      return 'death'

    elsif action.include?("place")
      puts <<~PLACE
      You point your blaster at the bomb under your arm
      and the Gothons put their hands up and start to sweat.
      You inch backward to the door, open it, and then carefully
      place the bomb on the floor, pointing your blaster at it.
      You then jump back through the door, punch the close button
      and blast the lock so the Gothons can't get out.
      Now that the bomb is placed you remember that the fastest
      route to the escape pods is trough the Hangar.

      PLACE
      return 'the_hangar'
    else
      puts "DOES NOT COMPUTE!"
      return "the_bridge"
    end
  end
end

## Big boss fight
class TheHangar < Scene
  def enter
    puts <<~ENTER
    You enter the Hangar and suddenly feel a shiver down your
    back and realize that you are not alone....
    You turn around and see a Ghoton way bigger then the others
    you have encountered until now. Its staring and you.
    Out of nowhere he suddenly charges at you.
    You have no choice, you have to fight him!

    ENTER
    puts <<~FIGHT
    In this fight you can either "shoot" or "defend"
    If you shoot, a d10 is rolled and if you score
    more then 5 you hit the Gothan.
    If you defend you get back a small amount of healt.
    Kill the Ghotan!

    FIGHT
    player = Player.new()
    gothan = Ghotan.new()
    choice = nil

    while gothan.life > 0
      if player.life <= 0
        puts "With a swift move he grabs you and crush your body with his incredible strength."
        puts "You are dead...."
        return 'death'
      end
      puts "Your life is: #{player.life}"
      puts "The Gothan life is: #{gothan.life}"
      print "> "
      choice = $stdin.gets.chomp
      if choice == "shoot"
        if rand(1..10) > 9
          player.attack(gothan)
          puts "You got him!"
        else
          puts "Damn! You missed!"
        end
      elsif choice == "defend"
        player.defend
        puts "You recovered some life"
      else
        puts "You better do something next time!"
      end
      if rand(1..10) > 1
        gothan.attack(player)
        puts "The Gothan hit you!"
      else
        puts "You were lucky, the Gothan missed"
      end
      puts "-" * 10
    end

    puts <<~WIN
    With only one shoot left in your old lasergun
    you manage to hit the Gothan right in beetween
    the eyes. He suddenly stops and collapse to ground.
    You try to recover from the wounds and run for the
    escape pods room before its too late!

    WIN
    return 'escape_pod'
  end
end

## This is were the Player can escape to safety
## but only if he manage to guess which escape pod is the correct one
class EscapePod < Scene
  def enter()
    puts <<~ENTER
    You rush through the ship desperately trying to make it to
    the escape pod before the whole ship explodes.  It seems like
    hardly any Gothons are on the ship, so your run is clear of
    interference.  You get to the chamber with the escape pods, and
    now need to pick one to take.  Some of them could be damaged
    but you don't have time to look.  There's 5 pods, which one
    do you take?

    ENTER

    good_pod = rand(1..5)
    print "[pod #]> "
    guess = $stdin.gets.chomp
    guess = good_pod if guess == "cheat"

    if guess.to_i != good_pod
      puts <<~WRONG
      You jump into pod #{guess} and hit the eject button.
      The pod escapes out into the void of space, then
      implodes as the hull ruptures, crushing your body
      into jam jelly.

      WRONG
      return 'death'
    else
      puts <<~GOOD
      You jump into pod #{guess} and hit the eject button.
      The pod easily slides out into space heading to
      the planet below.  As it flies to the planet, you look
      back and see your ship implode then explode like a
      bright star, taking out the Gothon ship at the same time.

      GOOD

      return 'win'
    end
  end
end

## End game message
class Victory < Scene
  def enter
    puts "You won! Good job!"
  end
end

## Define the Map structure
## and initialize all the scenes into an hash
## each scene is then calleb by its 'key' name by the Engine.play fuction
class Map
  @@scenes = {
    'central_corridor' => CentralCorridor.new,
    'laser_weapon_armory' => LaserWeaponArmory.new,
    'the_bridge' => TheBridge.new,
    'the_hangar' => TheHangar.new,
    'escape_pod' => EscapePod.new,
    'death' => Death.new,
    'win' => Victory.new
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    @@scenes[scene_name]
  end

  def opening_scene
    next_scene(@start_scene)
  end
end

## Define the Player class
class Player
  attr_accessor :life

   def initialize
     @life = 20
   end

  def attack(enemy)
    @enemy = enemy
    enemy.life -= 5
  end

  def defend
    @life += 5
  end
end

## Define the Final boss class
class Ghotan
  attr_accessor :life
  def initialize
    @life = 20
  end

  def attack(enemy)
    @enemy = enemy
    enemy.life -=5
  end
end


# Run the game
a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play
