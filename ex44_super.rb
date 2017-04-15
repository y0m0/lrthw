class Parent
  def initialize(name)
    @name = name
  end
end

class Child < Parent
  def initialize(stuff)
    @stuff = stuff
    super
  end
end

dad = Parent.new('mike')
son = Child.new('jon')

puts son.inspect
