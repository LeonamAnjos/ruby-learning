class Animal
  def eat(arg)
    puts "Eating #{arg}"
  end
end

class Cat < Animal
end

class Dog < Animal
  def eat(arg)
    super arg
    puts " and #{arg}"
  end

  def eat(arg1, arg2)
    super arg1
    puts " and #{arg2}"
  end

end

c = Cat.new
d = Dog.new


c.eat("fish")
d.eat("meat") #ERROR
d.eat("ration", "chiquen")
