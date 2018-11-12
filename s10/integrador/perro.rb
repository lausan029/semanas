require_relative 'mamifero'
class Perro < Mamifero
	def habla
		"guau"
	end
end

p Perro.ancestors
p Perro.new.is_a? Perro
p Perro.new.is_a? Mamifero
p Perro.new.is_a? Fixnum
p Perro.new.habla
p Mamifero.new.vertebrado
p Perro.new.vertebrado