Algoritmo sin_titulo
	Escribir "Numero??"
	Leer num
	numero_azar = azar(10)
	Mientras numero_azar != num Hacer
		Escribir "Perdiste, era el ", numero_azar
		Escribir "Numero??"
		Leer num
	Fin Mientras
	Escribir "Ganaste"
FinAlgoritmo
