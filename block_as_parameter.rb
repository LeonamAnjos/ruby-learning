class Array
  def even(&code)
    i = 0
    while i < self.size
      code.call( self[i] ) if i % 2 == 0
      i += 1
    end
  end
end

[1,2,3,4,5,6].even {|i| puts i}
