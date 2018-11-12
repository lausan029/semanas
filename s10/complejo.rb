class Complejo
	attr_reader :a, :b
	def initialize(a,b)
		@a = a
		@b = b		
	end

	def +(z2)
		Complejo.new(@a + z2.a, @b + z2.b)
		#@a += z2.a
		#@b += z2.b		
	end

	def to_s
		"#{@a} + #{@b}i"
	end
end 

z1 = Complejo.new(2,3)
z2 = Complejo.new(2,3)
z3 = z1 + z2
p z3
