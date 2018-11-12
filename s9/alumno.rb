class Alumno
	attr_accessor :nombre,:notas
 def initialize()
 @notas = [2,1,2]
 @nombre = "Humberto"
 end
end

p Alumno.new.nombre
p Alumno.new.notas