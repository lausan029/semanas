class Persona
 def bautizar(nuevo_nombre)
 @nombre = nuevo_nombre
 end

 def saludar()
 puts "#{@nombre} dice hola"
 end
end
p1 = Persona.new
p1.bautizar("Jaime")
p2 = Persona.new
p2.bautizar("Francisca")
p2.saludar()