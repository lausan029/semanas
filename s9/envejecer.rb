class PersonaX
 def empezar
 @edad = 1
 end
 def envejecer
 @edad += 1
 end
 def mostrar_edad()
 puts @edad
 end
end
p1 = Persona.new
p1.empezar
p1.envejecer
p1.envejecer
p1.envejecer
p1.mostrar_edad