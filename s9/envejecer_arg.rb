class Persona
	#metodo para inicializar todas las instaciaas de la clase Persona
 def initialize(edad)
 @edad = edad
 end
 def envejecer()
 @edad = @edad + 1
 end
 def mostrar_edad()
 puts @edad
 end
end
p1 = Persona.new 5
p1.envejecer
p1.mostrar_edad