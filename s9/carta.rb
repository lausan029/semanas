class Carta
	attr_accessor :num, :pinta
	def initialize(num, pinta)
		@num = num
		@pinta = pinta
	end
end

mano = []

5.times do 
	mano <<  Carta.new(rand(1..13),rand(1..4))
end
p mano