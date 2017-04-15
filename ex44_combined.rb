class Parent
  def implicit
    puts "PARENT implicit"
  end

  def override
    puts "PARENT override"
  end

  def altered
    puts "PARENT altered"
  end
end

class Child < Parent
  def override
    puts "CHILD override"
  end

  def altered
    puts "CHILD, BEFORE PARENT altered"
    super
    puts "CHILD, AFTER PARENT altered"
  end
end

dad = Parent.new
son = Child.new

print "dad.implicit is: "
dad.implicit
print "son.implicit is: "
son.implicit
puts "-" * 10
print "dad.override is: "
dad.override
print "son.override is: "
son.override
puts "-" * 10
print "dad.altered is: "
dad.altered
puts "son.altered is: "
son.altered
