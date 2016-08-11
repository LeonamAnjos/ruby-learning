Person = Struct.new(:first_name, :last_name) do
  def name
    "#{first_name} #{last_name}"
  end

  def name=(n)
    self.first_name, self.last_name = n.split(' ')
  end
end

p = Person.new('Nome', 'Sobrenome')
puts p.first_name
puts p.last_name
puts p.name


p.name = 'Arnaldo César Coelho'
puts p.first_name
puts p.last_name
puts p.name
