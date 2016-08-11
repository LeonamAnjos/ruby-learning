class Test
	def t
		SubTest.new
	end

	def n
		nil
	end
end

class SubTest
	def a
		'Method a'
	end
end

t = Test.new
st = SubTest.new


puts "1: #{t&.t&.a}"
puts "2: #{t&.n&.a}"
puts "3: #{t.try!(:t).try!(:a)}"
puts "4: #{t.try!(:n).try!(:a)}"

