## Animal is-a object look at the extra credit
class Animal

  def speak(sound)
    puts sound
  end
end

## Dog is-a Animal
class Dog < Animal
attr_reader :name
  def initialize(name)
    ## Dog has-a name
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ## cat has-a name
    @name = name
  end
end

## Person is-a object
class Person

  def initialize(name)
    ## Person has-a name
    @name = name
    ## Person has-a pet of some kind
    @pet = nil
    # Person has-many friends
    @friends = []
    @address = {}
  end

  attr_accessor :pet, :friends, :address

  def description
    puts "Person name: #{@name}"
    if pet != nil
      puts "#{@name} has pet called: #{pet.name}"
    end
    puts "#{@name} has many friends: "
    friends.each { |friend| puts friend }
    puts "#{@name} lives: "
    address.each do |k, v|
      puts "#{k}: #{v}"
    end
  end
end

## Employee is-a Person
class Employee < Person

  def initialize(name, salary)
    ## Employee has-a Person name
    super(name)
    ## Employee has-a salary
    @salary = salary
  end

end

## Fish is-a object
class Fish
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def swim
    "swims away!"
  end
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## mary has-a pet satan
mary.pet = satan

## frank is-a Employee, frank has-a name frank and has-a salary 120000
frank = Employee.new("Frank", 120000)

## frank has-a pet rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new("Flipper")

## crouse is-a Salmon
crouse = Salmon.new("crouse")

## harry is-a Halibut
harry = Halibut.new("harry")


puts flipper.name + " " + flipper.swim
rover.speak("bau bau!")
satan.speak("miao miao!")

jerry = Person.new("Jerry")
jerry.pet = rover
jerry.friends = ["Jimmy", "Mary", "Frank"]
jerry.address = {"Address" => "123 Main St.",
                 "City" => "Copenhagen",
                 "State" => "Denmark"
               }

jerry.description
