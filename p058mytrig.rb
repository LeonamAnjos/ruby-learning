# p058mytrig.rb
module Trig
  PI = 3.1416

  module_function
  # class methods
  def sin(x)
    # ...
  end
  def cos(x)
    # ...
  end

  def priv
    var1
  end

  def var1
    @var1 ||= 2
  end

end
