class AbstractKlass
  def welcome
    puts "#{hello} #{name}"
  end
end

class ConcreteKlass < AbstractKlass
  def hello
    "Hello"
  end

  def name
    "Ruby learners"
  end
end

ConcreteKlass.new.welcome
