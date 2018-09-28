nombre_usuario = "Nicolas Gomez" 	#creacion de variables

puts nombre_usuario 	#imprimir por consola

edad = 50
text = "lorem"

puts edad + 10 		#se puede imprimir una operacion numerica y concatenar textos
puts text + " ipsum"

puts 10 / 3.0 	#las operaciones entre numeros dan enteros hasta que aluguno de los numeros sea decimal

puts 10.to_f / 3.to_i	#los numeros son objetos y pueden ser flotantes o enteros

#interpolacion
puts "Hola #{nombre_usuario}, \"Bienvenido\""

# puts nombre_usuario.methods // todos los metodos de un objeto

puts "Ingresa un Numero"
num1 = gets.chomp.to_i	#Ingreso de datos por consola, solo cadena de texto
puts "El numero ingresado fue #{num1}. Gracias"
puts "Ingresa otro numero"
num2 = gets.chomp.to_f
puts "La suma de estos numeros es #{num1+num2}" # si no se cambia el tipo de dato a numero saldria como texto
puts "La resta de estos numeros es #{num1-num2}"
puts "La division de estos numeros es #{num1/num2}"
puts "La multiplicacion de estos numeros es #{num1*num2}"
puts "El residuo de estos numeros es #{num1%num2}"
puts "La potencia de estos numeros es #{num1**num2}"

if num1>num2	#los condiciones se pueden usar sin parentesis y corchetes
	puts "El numero uno es mayor que el numero dos"
	elsif num1==num2
		puts "Los dos numeros son iguales"
else
	puts "El numero uno es menor que el numero dos"
end

puts "ingresa tu calificacion: de 0 a 5"
clf = gets.chomp.to_i

case clf  # case = switch en otros lenguajes de programacion
	when 5
		puts "Exelente"
	when 4
		puts "Sobresaliente"
	when 3
		puts "Aceptable"
	when 2
		puts "Insuficiente"
	when 1,0
		puts "Deficiente"	
	else
		puts "Nota no valida"
end

frutas = ['uvas','fresas','peras','duraznos','anon']  # arreglos o arrays

# puts frutas[0]

frutas.each do |fruta|  # recorre el arreglo desde su primer lugar hasta el ultimo lugar
	puts fruta
end

puts frutas.sort.join(', ')
puts frutas.include?('uvas')

(1..5).each do |num|	# Rangos = for en otros lenguajes de programacion 
	puts "El numero vale #{num}"
end

i = 0

#while i<10		
#	puts "I vale #{i}"
#	i = i+1;
#end

begin
	puts "I vale #{i}"
	i = i+1
end while i<10

5.times do 		# Rango - 1
	puts "Hola"
end

5.upto(10) do |v|	# Rango - 2
	puts v
end

10.downto(5) do |x|		# Rango - 3
	puts x
end

persona = { "Nombre" => "Nicolas", "Edad" => 21 }	# Hashes = objetos en otros lenguajes de programacion

puts persona['Nombre']
puts persona['Edad']

persona.each do |clave,valor|
	puts "La clave #{clave} y el valor es #{valor}"
end