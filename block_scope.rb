@v = 'Top level context'
c = lambda { |i| puts "#{i} - #{self.class} - #{self} - #{@v}"}

class Test
  def initialize
    @v = 'Test instance context'
  end
  def say(block)
    puts @v
    b = lambda { |i| puts "#{i} - #{self.class} - #{self} - #{@v}"}
    block.call(self.class)
    b.call(self.class)
    b
  end
end

c.call self.class
b = Test.new.say(c)
b.call self.class
