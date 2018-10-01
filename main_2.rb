persona = { Nombre: "Nicolas", Edad: 21 }	# los simbols son constantes y no se pueden cambiar
puts persona.length			# numero de llaves de un objeto
puts persona.has_key?(:Edad)	# pregunta si hay una llave y retorna falso o verdadero
puts persona.keys		# muestra todas las llaves de un objeto
puts persona[:Nombre]

def cuadrado(num)	# def = function en otros lenguajes de programacion
	return num*num
end
puts "Ingresa un numero"
num0 = gets.chomp.to_f
puts "El valor es #{cuadrado(num0)}"

# splat(*) hace que reciba o envie varios parametros y los convierte en un arreglo para la funcion
def hola_gente(*personas)	
	personas.each do |persona|
		puts "Hola #{persona}"
	end
end
gente = ['Nicolas','Juancho','Luisito','Miguel','Ricardo']
hola_gente(*gente)

# keywords arguments permiten cambiar el orden de el ingreso de parametros usando simbolos(:) e indicar el 
# parametro ingresado y permiten iniciar valores si no se envia el parametro faltante
def suma(num1:0,num2:0)
	return num1 + num2
end
puts suma(num2:44,num1:55)

# Las clases definen el comportamiento de objetos (instancias) como atributos, metodos o funciones, eventos, etc
class Persona
	attr_accessor :nombre, :edad
	def initialize(n,e)
		self.nombre = n
		self.edad = e
	end
	def saludar
		puts "Hola"
	end
end
persona_1 = Persona.new("Nicolas",21)
persona_2 = Persona.new("Ricardo",44)
puts persona_1.nombre
puts persona_1.saludar 

# Herencia, hereda los atributos y metodos del padre
class Alumno < Persona
	attr_accessor :codigo
	def estudiar
		puts "Estoy estudiando"
	end
	def saludar
		super		# ejecuta los metodos del padre sin necesidad de hacerlos otra vez
		puts "Profe"
	end
end
alumno_1 = Alumno.new("Guillermo",21)
puts alumno_1.nombre
puts alumno_1.estudiar
puts alumno_1.saludar