class Perro
 attr_accessor :edad
 def initialize(edad)
 @edad = edad
 end
end
perro1 = Perro.new 11
puts perro1.edad
perro1.edad = 8
puts perro1.edad